<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class User extends Base {

    var $table = "t_user";
    //fields in table (excluding Primary Key)
    var $fields = array(
        'username',
        'password',
        'email',
        'avatar',
        'phone',
        'fullname',
        'city',
        'address',
        'region_name',
        'gender',
        'date_register',
        'birthday',
        'desc',
        'website',
        'last_login_time',
        'last_login_ip',
        'last_country_code',
        'last_country_name',
        'last_latitude',
        'last_longitude',
        'last_currency_code',
        'group_id',
        'status'
    );

    /**
     * @Desc get user
     * @param string $con: condition
     * @param string $sort: field want to sort    
     * @param string $order: DESC OR ASC
     * @param int $page: number of page
     * @return array
     */
    function getUser($con = "", $sort = false, $order = false, $page = 1) {
        $page = ($page > 1 ) ? $page : 1;

        $start = ($page - 1) * ($this->num_per_page);

        if ($sort && $order) {
            return $this->get("*", $con, "$sort $order", $start, $this->num_per_page);
        } else {
            return $this->get("*", $con, " id ASC ", $start, $this->num_per_page);
        }
        return false;
    }

    /**
     * @Desc function login
     * @param string $username: username
     * @param string $pass: password     
     * @return array
     */
    function login($username, $pass) {
        $password = createMd5Password($pass);

        $con = " AND `username` = '$username' AND `password` = '$password' ";
        $user = $this->getRecord('*', $con);
        if (is_array($user) && count($user) > 0) {
            // set session
            $_SESSION['user'] = $user;
            $this->updateInfoByIP($user['id']);
            return $user;
        }
        return false;
    }

    /**
     * @Desc class update info by IP: example: ip, country, city...
     * @param int $user_id: user id      
     * @return boolean
     */
    function updateInfoByIP($user_id) {
        $userIpInfo = unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip=' . getUserIp()));
        $arrayUpdate = array(
            'last_login_time' => date("y-m-d H:i:s", time()),
            'last_login_ip' => getUserIp(),
            'city' => $userIpInfo['geoplugin_city'],
            'region_name' => $userIpInfo['geoplugin_regionName'],
            'last_country_code' => $userIpInfo['geoplugin_countryCode'],
            'last_country_name' => $userIpInfo['geoplugin_countryName'],
            'last_latitude' => $userIpInfo['geoplugin_latitude'],
            'last_longitude' => $userIpInfo['geoplugin_longitude'],
            'last_currency_code' => $userIpInfo['geoplugin_currencyCode']
        );
        $this->save($user_id, $arrayUpdate);
        return true;
    }

    /**
     * @Desc function get user by username
     * @param string $username: username      
     * @return array
     */
    function getUserByUsername($username) {
        $con = " AND `username` = '$username' AND status = 1 ";
        $result = $this->getRecord("*", $con);
        if (is_array($result) && count($result) > 0) {
            return $result;
        }
        return false;
    }

    /**
     * @Desc function get user by email
     * @param string $username: username      
     * @return array
     */
    function getUserByEmail($email) {
        $con = " AND `email` = '$email' AND status = 1 ";
        $result = $this->getRecord("*", $con);
        if (is_array($result) && count($result) > 0) {
            return $result;
        }
        return false;
    }

    /**
     * @Desc function block user
     * @param int $uid: username      
     * @return boolean
     */
    function blockUser($uid) {
        $this->read($uid);
        $this->status = 0;
        $this->update($uid, array('status'));
        return true;
    }

    /**
     * @Desc function block user
     * @param int $uid: username      
     * @return boolean
     */
    function unBlockUser($uid) {
        $this->read($uid);
        $this->status = 1;
        $this->update($uid, array('status'));
        return true;
    }

    /**
     * @Desc function remove user
     * @param int $uid: username      
     * @return boolean
     */
    function deleteUser($uid) {
        $this->remove($uid);
        return true;
    }

}

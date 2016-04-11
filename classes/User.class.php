<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2016
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
     * @Desc get user by username and password in database and set to SESSION
     * @param string $username: username
     * @param string $password: password     
     * @return array
     */
    function login($username, $password) {
        $md5_password = createMd5Password($password);
        $user = DB::for_table($this->table)
                ->where_equal('username', $username)
                ->where_equal('password', $md5_password)
                ->find_one();

        if ($user) {
            // set user infomation to SESSION
            $_SESSION['user'] = $user;
            $this->updateInfoByIP($user->id);
            return $user;
        }
        return false;
    }

    /**
     * @Desc class update info by IP: example: ip, country, city...
     * @param int $id: user id      
     * @return boolean
     */
    function updateInfoByIP($id) {
        $userIpInfo = unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip=' . getUserIp()));

        $user = DB::for_table($this->table)->find_one($id);
        $user->last_login_time = date("y-m-d H:i:s", time());
        $user->last_login_ip = getUserIp();
        $user->city = $userIpInfo['geoplugin_city'];
        $user->region_name = $userIpInfo['geoplugin_regionName'];
        $user->last_latitude = $userIpInfo['geoplugin_latitude'];
        $user->last_longitude = $userIpInfo['geoplugin_longitude'];
        $user->last_currency_code = $userIpInfo['geoplugin_currencyCode'];
        $user->save();
    }

    /**
     * @Desc get user by username
     * @param string $username: username      
     * @return array
     */
    function getUserByUsername($username) {
        return DB::for_table($this->table)
                        ->where_equal('username', $username)
                        ->where_equal('status', 1)
                        ->find_one();
    }

    /**
     * @Desc get user by email
     * @param string $email: user email      
     * @return array
     */
    function getUserByEmail($email) {
        return DB::for_table($this->table)
                        ->where_equal('email', $email)
                        ->where_equal('status', 1)
                        ->find_one();
    }

    /**
     * @Desc update field 'status' set to 0 in the database
     * @param int $id: user ID      
     * @return boolean
     */
    function blockUser($id) {
        $user = DB::for_table($this->table)->find_one($id);
        $user->status = 0;
        return $user->save();
    }

    /**
     * @Desc update field 'status' set to 1 in the database
     * @param int $id: user ID
     * @return boolean
     */
    function unBlockUser($id) {
        $user = DB::for_table($this->table)->find_one($id);
        $user->status = 1;
        return $user->save();
    }

    /**
     * @Desc remove user from database
     * @param int $id: user ID
     * @return boolean
     */
    function deleteUser($id) {
        $user = DB::for_table($this->table)->find_one($id);
        return $user->delete();
    }

} // end class

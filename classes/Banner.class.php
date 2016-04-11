<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class Banner extends Base {

    var $fields = array(
        'cat_id',
        'name',
        'desc',
        'link',
        'img',
        'position',
        'ordering',
        'date_created',
        'status'
    ); //fields in table (excluding Primary Key)	
    var $table = "t_banner";

    /**
     * @Desc function get all banner      
     * @return array|boolean
     */
    function getAll() {
        global $allBanner;
        if (isset($allBanner) && count($allBanner) > 0) {
            return $allBanner;
        }
        $allBanner = DB::for_table($this->table)->find_many();
        if ($allBanner && count($allBanner) > 0) {
            return $allBanner;
        }

        return false;
    }

    /**
     * @Desc function get banner 
     * @param int $id: banner ID     
     * @return array|boolean
     */
    function getBannerById($id) {
        $banner = Db::for_table($this->table)->where_equal('id', $id)->find_one();
        if ($banner)
            return $banner;

        return false;
    }

    /**
     * @Desc function get banner by position
     * @param string $pos: name of position     
     * @return array|boolean
     */
    function getBannerByPosition($pos) {
        $allBanner = $this->getAll();
        $result = array();
        foreach ($allBanner as $key => $value) {
            if ($value['position'] == $pos && $value['status'] == 1) {
                array_push($result, $value);
            }
        }
        return $result;
    }

}

// end class
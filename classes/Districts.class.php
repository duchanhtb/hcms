<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class Districts extends Base {

    var $fields = array(
        "province_id",
        "name"
    ); //fields in table (excluding Primary Key)
    var $table = "m_districts";

    /**
     * @Desc get all district
     * @return array|boolean
     */
    function getAllDistrict() {
        global $allDistrict;
        if (isset($allDistrict) && count($allDistrict) > 0) {
            return $allDistrict;
        }

        $allDistrict = DB::for_table($this->table)->find_many();
        if ($allDistrict && count($allDistrict) > 0) {
            return $allDistrict;
        }

        return false;
    }

    /**
     * @Desc get district by province
     * @param string $province_id: id of province
     * @return array
     */
    function getDistrictByProvinceId($province_id) {
        $arrDistrict = DB::for_table($this->table)->where_equal('province_id', $province_id)->find_many();
        if ($arrDistrict && count($arrDistrict) > 0)
            return $arrDistrict;

        return false;
    }

}

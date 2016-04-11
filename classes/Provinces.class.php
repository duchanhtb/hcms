<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class Provinces extends Base {

    var $fields = array(
        "name",
        "country_id"
    ); //fields in table (excluding Primary Key)	
    var $table = "m_provinces";
    var $table_district = 'm_districts';

    /**
     * @Desc get all province
     * @return array
     */
    function getAllProvince() {
        return DB::for_table($this->table)->order_by_asc('name')->find_many();
    }

    /**
     * @Desc get all province with districts
     * @return array
     */
    function getAllProvinceWithDistrict() {
        $Districts = new Districts();
        $allDistrict = $Districts->getAllDistrict();
        $result = array();
        
        $allDistrict = DB::for_table($this->table_district)->find_many();
        foreach ($allDistrict as $district) {
            $arrDistrict[$district->province_id][] = $district;
        }
       
        $allProvince = DB::for_table($this->table)->order_by_asc('name')->find_many();
        foreach ($allProvince as &$province) {
            $province->district = $arrDistrict[$province->id];
        }
        return $allProvince;
    }
} // end class
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
$column = array(
    "name" => array(
        "title" => "Tên tỉnh",
        "type" => "textarea:noeditor",
        "row" => 1,
        "required" => "Nhâp tên tỉnh",
        "searchable" => true,
        "editlink" => true,
        "show_on_list" => true
    ),
    "country_id" => array(
        "title" => "Country",
        "type" => "combobox",
        "editable" => false,
        "searchable" => true,
        "data" => getCountry(),
        "sufix_title" => "",
        "show_on_list" => true
    ),
);

/**
 * @Desc get country from database 
 * @return array
 */
function getCountry() {
    global $mt_prefix;
    $arrCountry = DB::for_table($mt_prefix . 'country')->order_by_asc('name')->find_many();

    $result = array();
    foreach ($arrCountry as $country) {
        $result[$country->id] = $country->name;
    }
    return $result;
}

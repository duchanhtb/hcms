<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
$column = array(
    "name" => array(
        "title"         => "Tên Quận/Huyện",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "required"      => "Nhâp tên Quận/Huyện",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "province_id" => array(
        "title"         => "Tỉnh thành",
        "type"          => "combobox",
        "editable"      => false,
        "searchable"    => true,
        "data"          => getProvince(),
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
);

function getProvince() {
    global $mt_prefix;
    $table = $mt_prefix."provinces";
    $result = array();
    
    $allProvince = DB::for_table($table)->order_by_asc('name')->find_many();
    foreach($allProvince as $province){
        $result[$province->id] = $province->name;
    }
    
    return $result;
}
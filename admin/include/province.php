<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
$column = array(
    "name" => array(
        "title"         => "Tên tỉnh",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "required"      => "Nhâp tên tỉnh",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "country_id" => array(
        "title"         => "Country",
        "type"          => "combobox",
        "editable"      => false,
        "searchable"    => true,
        "data"          => getCountry(),
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
);


function getCountry(){
    $miniCountry = new Country();
    $arrCountry = $miniCountry->get();
    
    $result = array();
    foreach($arrCountry as $key=>$value){
        $result[$value['id']] = $value['name'];
    }
    
    return $result;
}
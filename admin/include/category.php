<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */

global $tbl_prefix;

$column = array( 
    "product_num" => array(
        "title"         => "Số lượng SP",
        "type"          => "input:function",
        "function"      => 'countProduct',
        "editable"      => false,
        "searchable"    => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "name" => array(
        "title"         => "Tên danh mục",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "required"      => "Nhập tên danh mục",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "img" => array(
        "title"         => "Ảnh",
        "type"          => "input:image",
        "editable"      => false,
        "required"      => "Nhập ảnh danh mục",
        "show_on_list"  => true
    ),
    "parent_id" => array(
        "title"         => "Danh mục cha",
        "type"          => "combobox",
        "data"          => getCategory(),
        "editable"      => false,
        "searchable"    => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "description" => array(
        "title"         => "Miêu tả",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "sufix_title"   => "",
        "label"         => "abc123",
        "show_on_list"  => false
    ),    
    "ordering" => array(
        "title"         => "Thứ tự",
        "type"          => "input:int10",
        "editable"      => true,
        "sufix_title"   => "",
        "std"           => getMaxId($tbl_prefix.'category'),
        "show_on_list"  => true
    ),
    "home" => array(
        "title"         => "Trang chủ",
        "type"          => "checkbox",
        "label"         => "Có",
        "unlabel"       => "Không",
        "editable"      => true,
        "show_on_list"  => true,
        "searchable"    => true,
        "sufix_title"   => ""
    ),
    "status" => array(
        "title"         => "Hiển thị",
        "type"          => "checkbox",
        "label"         => "Có",
        "unlabel"       => "Không",
        "editable"      => true,
        "show_on_list"  => true,
        "sufix_title"   => ""
    ),
);


function countProduct($id, $act = 'list'){
    global $tbl_prefix;
    $html = '';
    $table = $tbl_prefix.'product_relationship';
    
    // get child category
    $arrIn = array();
    array_push($arrIn, $id);
    $childCat = Db::for_table($tbl_prefix.'category')->where_equal('parent_id', $id)->find_many();
    if(count($childCat) > 0 ){
        foreach ($childCat as $cat){
            array_push($arrIn, $cat->id);
        }
    }
    
    switch ($act) {
        case "add":
            return 0;
            break;
        case "edit":
            return Db::for_table($table)->where_in('category_id', $arrIn)->count();
            break;
        default:
            return Db::for_table($table)->where_in('category_id', $arrIn)->count();          
            break;
    }
    return $html;
}
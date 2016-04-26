<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */

global $tbl_prefix;

$column = array(
    "parent_id" => array(
        "title"         => "Danh mục cha",
        "type"          => "combobox",
        "data"          => getNewsCategory(),
        "editable"      => false,
        "searchable"    => true,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "name" => array(
        "title"         => "Tên danh mục",
        "type"          => "input:text",
        "required"      => "Nhập tên danh mục",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "description" => array(
        "title"         => "Miêu tả",
        "type"          => "textarea:noeditor",
        "row"           => 3,
        "sufix_title"   => "",
        "show_on_list"  => false
    ),
    "ordering" => array(
        "title"         => "Thứ tự",
        "type"          => "input:int10",
        "editable"      => true,
        "std"           => getMaxId($tbl_prefix.'news_category'),
        "sufix_title"   => "",
        "show_on_list"  => true
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


/* get news category ( t_news_category)
  -------------------------------------------------------------------------- */

function getNewsCategory() {
    global $tbl_prefix;
    $table = $tbl_prefix.'news_category';
    $arr_category = array(0 => trans('home'));    

    $categories = DB::for_table($table)
            ->select('id')
            ->select('name')
            ->select('parent_id')
            ->order_by_asc('parent_id')
            ->find_many();
    
    foreach ($categories as $category) {
        if ($category->parent_id == 0) {
            $name = $category->name;
            $id = $category->id;
            $arr_category[$id] = $name;

            // sub1
            foreach ($categories as $sub1_category) {
                if ($sub1_category->parent_id == $category->id) {
                    $name = '-----' . $sub1_category->name;
                    $id = $sub1_category->id;
                    $arr_category[$id] = $name;

                    // sub2
                    foreach ($categories as $sub2_category) {
                        if ($sub2_category->parent_id == $sub1_category->id) {
                            $name = '----------' . $sub2_category->name;
                            $id = $sub2_category->id;
                            $arr_category[$id] = $name;

                            // sub3
                            foreach ($categories as $sub3_category) {
                                if ($sub3_category->parent_id == $sub2_category->id) {
                                    $name = '---------------' . $sub3_category->name;
                                    $id = $sub3_category->id;
                                    $arr_category[$id] = $name;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return $arr_category;
}

function addDrashRecursive($arr, $parent_id = 0, $id, $drash = '----') {
    $result = array();
    if (count($arr) > 0) {
        foreach ($arr as $key => $value) {
            if ($value[$id]) {
                
            }
        }
    }
    return $result;
}

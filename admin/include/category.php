<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */

global $tbl_prefix;

$column = array(     
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
    "product_num" => array(
        "title"         => "Số lượng SP",
        "type"          => "input:function",
        "function"      => 'countProduct',
        "editable"      => false,
        "searchable"    => false,
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


/**
 * @Desc count product in category
 * @param $id: category ID
 * @param string $act action type
 * @return int
 */
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
            return '<center>( '.Db::for_table($table)->where_in('category_id', $arrIn)->count().' )</center>';          
            break;
    }
    return $html;
}




/**
 * @Desc get list category (with dash before sub category name)
 * @param 
 * @return array
 */
function getCategory() {    
    global $tbl_prefix;
    $table = $tbl_prefix.'category';
    $arr_category = array(0 => trans('home'));    

    $categories = DB::for_table($table)
            ->select('id')
            ->select('name')
            ->select('parent_id')
            ->order_by_asc('name')
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
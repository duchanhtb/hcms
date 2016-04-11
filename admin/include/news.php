<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */

global $tbl_prefix;

$column = array(
    "cat_id" => array(
        "title"         => "Danh mục",
        "type"          => "checkbox:relate:int",
        "editable"      => false,
        "searchable"    => true,
        "relate"        => "t_news_category.name.id",
        "other_type"    => "category",
        "required"      => "Chọn danh mục",
        "show_on_list"  => true
    ),
    "title" => array(
        "title"         => "Tiêu đề",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "required"      => "Nhập tiêu đề",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "img" => array(
        "title"         => "Ảnh miêu tả",
        "type"          => "input:image",
        "editable"      => false,
        "required"      => "Chọn ảnh cho bài viết",
        "show_on_list"  => true
    ),
    "brief" => array(
        "title"         => "Nội dung tóm tắt",
        "type"          => "textarea:noeditor",
        "row"           => 3,
        "required"      => "Nhập nội dung tóm tắt",
        "searchable"    => false,
        "editlink"      => false,
        "show_on_list"  => false
    ),
    "content" => array(
        "title"         => "Nội dung",
        "type"          => "textarea",
        "required"      => "Nhập nội dung",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => false
    ),
    "date_created" => array(
        "title"         => "Ngày đăng",
        "type"          => "datetime:current",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => false
    ),
    "ordering" => array(
        "title"         => "Thứ tự",
        "type"          => "input:int10",
        "editable"      => true,
        "std"           => getMaxId($tbl_prefix.'news'),
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
    )
);



/**
 * @desc get news category ( from table t_news_category)
 */
function getNewsCategory() {
    global $tbl_prefix;     
    $table = $tbl_prefix.'news_category';
    $arr_category = array(0 => 'Trang chủ');
    
    $allCategory = DB::for_table($table)->order_by_asc('name')->find_many();
    
    foreach ($allCategory as $category) {
        if ($category->parent_id == 0) {
            $name = $category->name;
            $id = $category->id;
            $arr_category[$id] = $name;

            // sub1
            foreach ($allCategory as $category1) {
                if ($category1->parent_id == $category->id) {
                    $name = '-----' . $category1->name;
                    $id = $category1->id;
                    $arr_category[$id] = $name;

                    // sub2
                    foreach ($allCategory as $category2) {
                        if ($category2->parent_id == $category1->id) {
                            $name = '----------' . $category2->name;
                            $id = $category2->id;
                            $arr_category[$id] = $name;

                            // sub3
                            foreach ($allCategory as $category3) {
                                if ($category3->parent_id == $category3->id) {
                                    $name = '---------------' . $category3->name;
                                    $id = $category3->id;
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

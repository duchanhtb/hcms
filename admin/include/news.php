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


/* get news category ( t_news_category)
  -------------------------------------------------------------------------- */

function getNewsCategory() {
    global $oDb;
    $arr_category = array();
    $arr_category[0] = 'Trang chủ';

    $sql = "SELECT `id`, `name`, `parent_id` FROM t_news_category WHERE 1 ";
    $sql .= 'ORDER BY name ASC ';

    $rs = $oDb->query($sql);
    $allCat = $oDb->fetchAll($rs);
    foreach ($allCat as $key => $value) {
        if ($value['parent_id'] == 0) {
            $name = $value['name'];
            $id = $value['id'];
            $arr_category[$id] = $name;

            // sub1
            foreach ($allCat as $key1 => $value1) {
                if ($value1['parent_id'] == $value['id']) {
                    $name = '-----' . $value1['name'];
                    $id = $value1['id'];
                    $arr_category[$id] = $name;

                    // sub2
                    foreach ($allCat as $key2 => $value2) {
                        if ($value2['parent_id'] == $value1['id']) {
                            $name = '----------' . $value2['name'];
                            $id = $value2['id'];
                            $arr_category[$id] = $name;

                            // sub3
                            foreach ($allCat as $key3 => $value3) {
                                if ($value3['parent_id'] == $value2['id']) {
                                    $name = '---------------' . $value3['name'];
                                    $id = $value3['id'];
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

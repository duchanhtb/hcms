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
        "title"         => "Tên banner",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "searchable"    => true,
        "editlink"      => true,
        "sufix_title"   => "Ví dụ: Sản phẩm mới",
        "required"      => "Nhập tên nào",
        "show_on_list"  => true
    ),
    "desc" => array(
        "title"         => "Miêu tả",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "searchable"    => true,
        "editlink"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "link" => array(
        "title"         => "Liên kết",
        "type"          => "input:text",
        "required"      => "Nhập đường dẫn liên kết",
        "editable"      => false,
        "editlink"      => false,
        "searchable"    => true,
        "std"           => "#",
        "sufix_title"   => "<em>Ví dụ: " . base_url() . 'giothieu.html</em>',
        "show_on_list"  => false
    ),
    "img" => array(
        "title"         => "Ảnh",
        "type"          => "input:image",
        "required"      => "Nhập ảnh",
        "editable"      => false,
        "sufix_title"   => "<em>Kích thước 600x360 nếu là popup</em>",
        "show_on_list"  => true
    ),
    "position" => array(
        "title"         => "Vị trí",
        "type"          => "combobox",
        "data"          => array('slide' => 'slide', 'popup' => 'popup', 'partners' => 'Đối tác'),
        "editable"      => false,
        "searchable"    => true,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "ordering" => array(
        "title"         => "Thứ tự",
        "type"          => "input:int10",
        "editable"      => true,
        "sufix_title"   => "",
        "std"           => getMaxId($tbl_prefix.'banner'),
        "show_on_list"  => true
    ),
    "date_created" => array(
        "title"         => "Ngày tạo",
        "type"          => "datetime:current",
        "editable"      => false,
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
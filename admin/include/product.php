<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */

global $tbl_prefix;

$column = array(
    /*
    "cat_id" => array(
        "title"         => "Danh mục",
        "type"          => "combobox",
        "data"          => getCategory(),
        "editable"      => false,
        "searchable"    => true,
        "required"      => "Chọn danh  mục sản phẩm",
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
     * 
     */
    "cat_id" => array(
        "title"         => "Danh mục",
        "type"          => "checkbox:relate:table",
        "relate"        => "t_product_relationship:product_id=t_product.id:category_id=t_category.id.name",
        "editable"      => false,
        "searchable"    => true,
        "required"      => "Chọn danh  mục sản phẩm",
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "name" => array(
        "title"         => "Tên SP",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "required"      => "Nhâp tên sản phẩm",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "code" => array(
        "title"         => "Mã SP",
        "type"          => "input:text",
        "required"      => "Nhâp mã sản phẩm",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => false
    ),
    "price" => array(
        "title"         => "Giá",
        "type"          => "input:price",
        "required"      => "Nhâp giá sản phẩm",
        "searchable"    => true,
        "editable"      => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
    "default_img" => array(
        "title"         => "Ảnh mặc định",
        "type"          => "input:image",
        "editable"      => false,
        "required"      => "Đăng mặc định",
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "images" => array(
        "title"         => "Ảnh demo Full",
        "type"          => "input:multiimages",
        "table"         => array(
            'table_name'    => 't_product_images',
            'primary_key'   => 'id',
            'images_url'    => 'url',
            'relate_id'     => 'product_id'
        ),
        "editable"      => false,
        "required"      => true,
        "sufix_title"   => "<em>Đăng ảnh sản phẩm</em>",
        "show_on_list"  => true
    ),
    "attribute" => array(
        "title"         => "Thuộc tính",
        "type"          => "input:attribute",
        "required"      => true,
        "sufix_title"   => "<em>Thuộc tính sản phẩm</em>",
        "show_on_list"  => false
    ),
    "description" => array(
        "title"         => "Miêu tả sản phẩm",
        "type"          => "textarea",
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
        "sufix_title"   => "",
        "std"         => getMaxId($tbl_prefix.'product'),
        "show_on_list"  => true
    ),
    "status" => array(
        "title"         => "Hiển thị",
        "type"          => "checkbox",
        "label"         => "Có",
        "unlabel"       => "Không",
        "editable"      => true,
        "show_on_list"  => true,
        "searchable"    => true,
        "sufix_title"   => ""
    ),
    "author" => array(
        "title"         => "Người đăng",
        "type"          => "input:hidden",
        "editable"      => false,
        "editlink"      => false,
        "show_on_list"  => false,
        "searchable"    => true,
        "std"           => $_SESSION['admin']['name']
    ),
);
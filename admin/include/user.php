<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
$column = array(
    "fullname" => array(
        "title"         => "Họ tên",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "required"      => "Nhập họ tên",
        "searchable"    => true,
        "editlink"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "email" => array(
        "title"         => "Email ",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "required"      => "Nhập email",
        "searchable"    => true,
        "editlink"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "phone" => array(
        "title"         => "Số điện thoại",
        "type"          => "input:text",
        "required"      => "Nhập số điện thoại",
        "searchable"    => true,
        "editlink"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "date" => array(
        "title"         => "Ngày tháng",
        "type"          => "input:text",
        "required"      => "Nhập ngày tháng",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    /* ,    
      "status"	=> array(
      "title"		=> "Hiển thị",
      "type"		=> "checkbox",
      "label"		=> "Có",
      "unlabel"         => "Không",
      "editable"	=> true,
      "show_on_list"    => true,
      "sufix_title"     => ""
      )
     */
);

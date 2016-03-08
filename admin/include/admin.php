<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2014
 */

// check permission
if ((int)@$_SESSION['admin']['level'] < 3) {
    redirect("index.php?f=restrict");
}

$column = array(
    "name" => array(
        "title"         => "Tên đăng nhập",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "searchable"    => true,
        "editlink"      => true,
        "required"   => "Nhập tên đăng nhập",
        "show_on_list"  => true
    ),
    "pass" => array(
        "title"         => "Mật khẩu",
        "type"          => "input:password",
        "required"      => "Nhập mật khẩu",
        "editable"      => false,
        "editlink"      => false,
        "searchable"    => false,
        "show_on_list"  => false
    ),
    "email" => array(
        "title"         => "Email",
        "type"          => "input:text",
        "required"      => "Nhập email",
        "editable"      => false,
        "show_on_list"  => true
    ),
    "level" => array(
        "title"         => "Cấp độ",
        "type"          => "combobox",
        "data"          => array(3 => 'Supper Admin', 2 => 'Admin', 1 => 'User', 1 => 'Mod'),
        "editable"      => false,
        "searchable"    => true,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "last_login_time" => array(
        "title"         => "Đăng nhập",
        "type"          => "datetime:current",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "last_login_ip" => array(
        "title"         => "Ip đăng nhập",
        "type"          => "input:text",
        "editable"      => false,
        "sufix_title"   => "",
        "std"           => getUserIp(),
        "show_on_list"  => true
    ),
    "date_created" => array(
        "title"         => "Ngày tạo",
        "type"          => "datetime:current",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => false
    )
);

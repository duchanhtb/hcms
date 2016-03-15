<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */

// check permission
if ((int)@$_SESSION['admin']['level'] < 3) {
    redirect("index.php?f=restrict");
}


$column = array(
    "name" => array(
        "title"         => trans('page_name'),
        "type"          => "input:text",
        "editable"      => false,
        "required"      => trans('enter_page_name'),
        "sufix_title"   => "",
        "show_on_list"  => true,
        "editable"      => false,
        "editlink"      => true,
        "function"      => 'pageLink'
    ),
    "layout" => array(
        "title"         => "Layout",
        "type"          => "input:text",
        "editable"      => false,
        "required"      => "Bạn chưa nhập layout",
        "sufix_title"   => "",
        "show_on_list"  => true,
        "editable"      => false,
        "editlink"      => false
    ),
    "meta_title" => array(
        "title"         => "Title",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "editable"      => false,
        "sufix_title"   => "<em>Dùng cho thẻ HTML meta title</em>",
        "show_on_list"  => false,
        "editable"      => false,
        "editlink"      => false
    ),
    "meta_description" => array(
        "title"         => "Title",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "editable"      => false,
        "sufix_title"   => "<em>Dùng cho thẻ HTML meta desciption</em>",
        "show_on_list"  => false,
        "editable"      => false,
        "editlink"      => false
    ),
    "act" => array(
        "title"         => "Cắm module",
        "type"          => "input:function",
        "function"      => "pageAction",
        "editable"      => false,
        "required"      => "Bạn chưa nhập layout",
        "sufix_title"   => "",
        "show_on_list"  => true,
        "editable"      => false,
        "editlink"      => false
    ),
);


function pageAction($id, $act){
    $link = "page.php?id=".$id;
    switch ($act){
        case "list":
            return '<a href="'.$link.'"><img src="images/icon-module.png" alt="add module"></a>';
            break;
        
        case "add":
        case "edit":
            return '<img src="images/icon-module.png" alt="add module">';
            break;
    }
}
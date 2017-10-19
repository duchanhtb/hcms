<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
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
        "type"          => "combobox",
        "data"          => getPageLayout(),
        "sufix_title"   => "Chọn layout",
        "std"           => 'home.html',
        "show_on_list"  => true,
    ),
    "meta_title" => array(
        "title"         => "Tiêu đề",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "editable"      => false,
        "sufix_title"   => "<em>Dùng cho thẻ HTML meta title</em>",
        "show_on_list"  => false,
        "editable"      => false,
        "editlink"      => false
    ),
    "meta_description" => array(
        "title"         => "Miêu tả",
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



/**
 * @Desc custom function for admin  
 * @param int $id: page id
 * @param string $act: action
 * @return html
 */
function pageAction($id, $act){
    $link = "page.php?id=".$id;
    switch ($act){
        case "list":
            return '<a href="'.$link.'"><img src="images/icon-module.png" alt="add module"></a>';
            break;
        
        case "add":
        case "edit":
            return 'Không cần điền';
            break;
    }
}


/**
 * @Desc custom function for admin  
 * @param string $page: page name
 * @return html
 */
function pageLink($page_id, $act = 'list') {
    switch($act){
        case "add":
        case "edit":
            return $page_id;
            break;
        
        
        case "list":
        default :
            $miniPage = new Page();
            $miniPage->read($page_id);
            
            return '<a href="page.php?id=' . $page_id . '">' .  $miniPage->name . '</a>';
            break;
            
    }
    
}


/**
 * @Desc get all file from layout folder
 * @param
 * @return array
 */
function getPageLayout(){
    global $skin;
    $result = array();
    $dir = ROOT_PATH.SKIN_FOLDER.DS.$skin.DS.'layout';
    $arrFile = CFile::getFileDir($dir);
    foreach($arrFile as $file){
        $result[$file] = $file;
    }
    
    return $result;
}
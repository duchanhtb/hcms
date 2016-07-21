<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');
/**
 * @author duchanh
 * @copyright 2012
 * @desc file configuration
 */
session_start();
ob_start();
ini_set('safe_mode', '0');
date_default_timezone_set('Asia/Saigon');


/* Config skin 
  ---------------------------------------------------- */
$skin = 'default';

/* Config layout 
  ---------------------------------------------------- */
$layout = 'home';


/* * ******** GLOBAL VARIBLE FOR SEO *********** */
global $title, $keywords, $description, $lang, $imagesSize;
$title = 'Trang chủ';
$keywords = 'Trang chủ';
$description = 'Trang chủ';

/* include constant file
  ---------------------------------------------------- */
include('constant.php');


/* include function file
  ---------------------------------------------------- */
include(ROOT_PATH . "function.php");

/* include constant file
  ---------------------------------------------------- */
include(ROOT_PATH . 'autoload.php');



/* add images size
  ---------------------------------------------------- */
add_image_size('thumb-150', 150, 150, true); // $folder, $width, $height, $crop
add_image_size('thumb-480', 480, 9999, false); // $folder, $width, $height, $crop
add_image_size('thumb-480-crop', 480, 480, true); // $folder, $width, $height, $crop



/* cms debug ON/OFF
  ---------------------------------------------------- */
ini_set('error_log', ROOT_PATH.'error.log');
if (CMS_DEBUG) {    
    ini_set("display_error", "on");
    ini_set('error_reporting', E_ALL);
} else {
    ini_set("display_error", "off");
    ini_set('error_reporting', 0);
}



$sitePath = getSiteUrl();
/* Config for localhost 
  ---------------------------------------------------- */
if (strpos(strtolower($sitePath), "localhost/cms") > 0) {
    $base_url = "http://localhost/cms/";
    // database
    $dbinfo['dbHost'] = "localhost";
    $dbinfo['dbUser'] = "root";
    $dbinfo['dbPass'] = "";
    $dbinfo['dbName'] = "cms";
    $dbinfo['dbSesName'] = "";
    $dbinfo['dbHostRead'] = "localhost";
}


if (strpos(strtolower($sitePath), "local-cms.com") > 0) {
    $base_url = "http://local-cms.com/";
    // database
    $dbinfo['dbHost'] = "localhost";
    $dbinfo['dbUser'] = "root";
    $dbinfo['dbPass'] = "";
    $dbinfo['dbName'] = "cms";
    $dbinfo['dbSesName'] = "";
    $dbinfo['dbHostRead'] = "localhost";
}



/* Config for web
  ---------------------------------------------------- */
if (strpos(strtolower($sitePath), "hcms.com") > 0) {
    // config duong dan cua site
    $base_url = "http://hcms.com/";
    // database
    $dbinfo['dbHost'] = "localhost";
    $dbinfo['dbUser'] = "thanhtru_cms";
    $dbinfo['dbPass'] = "Xc3JRBVZ92pGCRVT";
    $dbinfo['dbName'] = "thanhtru_cms";
    $dbinfo['dbSesName'] = "";
    $dbinfo['dbHostRead'] = "localhost";
}


/* Config for web
  ---------------------------------------------------- */
if (strpos(strtolower($sitePath), "nguyenduchanh.com/cms") > 0) {
    // config duong dan cua site
    $base_url = "http://nguyenduchanh.com/cms/";
    // database
    $dbinfo['dbHost'] = "localhost";
    $dbinfo['dbUser'] = "thanhtru_cms";
    $dbinfo['dbPass'] = "Xc3JRBVZ92pGCRVT";
    $dbinfo['dbName'] = "thanhtru_cms";
    $dbinfo['dbSesName'] = "";
    $dbinfo['dbHostRead'] = "localhost";
}



/* Setting DB connection class
  ---------------------------------------------------- */
DB::config($dbinfo);

/* Config language
  ---------------------------------------------------- */
$language = isset($_REQUEST['language']) ? $_REQUEST['language'] : '';
if ($language) {
    $_SESSION['language'] = $language;
} else if (!isset($_SESSION['language'])) {
    $_SESSION['language'] = 'vi';
}
<?php

/**
 * @author duchanh
 * @copyright 2012
 */
$start_time = microtime(true);
define('ALLOW_ACCESS', TRUE);
include_once('config.php');
include_once('CmsAdmin.php');

// check permission
if (((int) $_SESSION['admin']['id'] == 0) || ((int) $_SESSION['admin']['level'] < 1)) {
    $ref = curPageURL();
    $_SESSION['ref'] = $ref;
    @header("Location: login.php");
    exit;
}

$CmsAdmin = new CmsAdmin();
$CmsAdmin->run();
$end_time = microtime(true);

$total_time = ($end_time - $start_time);
if(SHOW_QUERY_INFO == 'on' || (isset($_SESSION['query']) && $_SESSION['query'] == 1)){
    $arrLogQuery = DB::get_query_log();    
    echo '<pre>';
    foreach($arrLogQuery as $query){
    echo '<p style="text-align:left; padding: 0 10px; margin: 5px 0px; font-size:14px;">'.trim($query) .'</p>';
    }
    echo '<p style="text-align:left; padding: 0 10px; margin: 5px 0px; font-size:14px;">Time executed: <strong style="color:red; ">'.$total_time.'</strong>s</p>';
    echo '</pre>';
}
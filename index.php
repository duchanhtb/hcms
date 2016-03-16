<?php

/**
 * @author duchanh
 * @copyright 2012
 */
$start_time = microtime(true);
define('ALLOW_ACCESS',TRUE);
if (substr_count(@$_SERVER['HTTP_ACCEPT_ENCODING'], 'gzip')) ob_start("ob_gzhandler"); else ob_start();


/********* load file config **********/
include("config.php");

/********* Run cms **********/
$cms = new cms();
$cms->run();


if(isset($_REQUEST['query'])){
    $_SESSION['query'] = $_REQUEST['query'];
}
$end_time = microtime(true);
$total_time = ($end_time - $start_time);
if(SHOW_QUERY_INFO == 'on' || (isset($_SESSION['query']) && $_SESSION['query'] == 1)){
    $arrLogQuery = array_merge($oDb->listQuery, DB::get_query_log());    
    echo '<pre>';
    foreach($arrLogQuery as $query){
    echo '<p style="text-align:left; padding: 0 10px; margin: 5px 0px; font-size:14px;">'.trim($query) .'</p>';
    }
    echo '<p style="text-align:left; padding: 0 10px; margin: 5px 0px; font-size:14px;">Time executed: <strong style="color:red; ">'.$total_time.'</strong>s</p>';
    echo '</pre>';
}
if($oDb)@$oDb->close();

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

$end_time = microtime(true);
$total_time = ($end_time - $start_time);
<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');



$a = CFile::getFileDir(MODULE_PATH);
var_dump($a);

$b = list_module();
var_dump($b);
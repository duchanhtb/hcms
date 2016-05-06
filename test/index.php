<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');

$path = 'E:\Dropbox\www\cms\uploads\media\2015_10_09/chrysanthemum.jpg';

$folder = CFile::getRelativePath($path);
var_dump($folder);
var_dump(ROOT_PATH);

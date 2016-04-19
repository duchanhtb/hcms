<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
$column = array(
    "file" => array(
        "title"         => "Tệp tin",
        "type"          => "input:file",
        "required"      => "Nhâp tệp tin",
        "searchable"    => true,
        "editlink"      => true,
        "show_on_list"  => true
    ),
);
<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');

$a = DB::for_table('t_category')->where_like('name', '%gia đình%')->find_many();
var_dump($a);
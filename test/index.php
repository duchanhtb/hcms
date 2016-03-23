<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');


// Lấy chuỗi nằm giữa 2 dấu [ và ]
$link = "chi-tiet.html";
var_dump(pathinfo($link));


<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');

$a = array(
    'type'  => "3",
    'url'  => "google.com",
    'title'  => "day la trang web google",
);

        echo json_encode($a);
?>
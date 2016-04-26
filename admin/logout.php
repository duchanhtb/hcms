<?php

/**
 * @author duchanh
 * @copyright 2012
 */
define('ALLOW_ACCESS', TRUE);
include('config.php');
unset($_SESSION['admin']);
@header("Location: login.php");
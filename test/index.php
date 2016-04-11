<?php

define('ALLOW_ACCESS', TRUE);
include('../config.php');

require_once (INC_PATH . 'lib/AES/AES.class.php');


$Cart = new Cart();
$Cart->addProductToCart(17);
var_dump($Cart->getCartInfo());

$Product = new Product();
$a = $Product->getProductCartInfo();

var_dump($Product->getTotalCartPrice());
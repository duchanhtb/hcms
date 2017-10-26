<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class cart_header extends Module {

    function __construct() {
        $this->tpl = 'cart_header.html';
        parent::__construct();
    }
    
    
    
    function draw(){
        
        $ProductOrder = new ProductOrder();
        $total = $ProductOrder->countTotalProduct();
        $this->xtpl->assign('total', $total);
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
    
}
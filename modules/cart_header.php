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
        
        $miniCart = new Cart();
        $cart = $miniCart->getCartInfo();
        $total = 0;
        if(count($cart) > 0 ){
            foreach($cart as $pid => $num){
                $total += $num;
            }
        }
        
        $this->xtpl->assign('total', $total);
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
    
}
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class checkout extends Module {

    function __construct() {
        $this->tpl = 'checkout.html';
        parent::__construct();
    }
    
    
    
    function draw(){
        
        // load module cart
        $cart_header = loadModule('cart_header');
        $this->xtpl->assign('cart_header', $cart_header);
        
        
        $path = '<ul class="path">
                    <li><a href="'.  base_url().'">Trang chủ</a></li>';

        // filter by category
        $path .=    '<li>&rsaquo;</li>
                     <li><a href="'.  base_url().'tat-ca-san-pham.html">Sản phẩm</a></li>
                     <li>&rsaquo;</li>
                     <li><a href="'.  base_url().'checkout.html"></a>Giỏ hàng</li>';
        $path .= '</ul>';
        // create path
        $this->xtpl->assign('path', $path);
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
    
}
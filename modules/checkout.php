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
        // register script
        register_script('jquery-3-2-1', 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js');              
        register_script('product', $this->skin_path . 'assets/js/product.js');
        
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
        
        $miniCart = new Cart();
        $total = $miniCart->countTotalProduct();
        $this->xtpl->assign('total', $total);
        
        $productObj = new Product();
        $productCart = $productObj->getProductCartInfo();
        if($productCart){
            foreach($productCart as $product){
                $this->xtpl->assign('id', $product->id);
                $this->xtpl->assign('name', $product->name);
                $this->xtpl->assign('number', $product->number);
                $this->xtpl->assign('img', base_url() . $product->default_img);
                $this->xtpl->assign('price', formatPrice($product->price));
                $this->xtpl->assign('total_price', formatPrice($product->total_price));
                $this->xtpl->assign('description', $product->description);
                $this->xtpl->assign('link', createLink('san-pham', array('id' => $product->id, 'title' => $product->name)));
                $this->xtpl->parse('main.product');
            }
            
            $this->xtpl->assign('total_price', formatPrice($productObj->total_price));
        }
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
    
}
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class product_detail extends Module {

    function __construct() {
        $this->tpl = 'product_detail.html';
        parent::__construct();
    }

    /**
     * @desc render html module
     */
    function draw() {
        // register script and style     
        register_style('jquery-ui', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css');
        register_script('jquery-3-2-1', 'https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js');
        register_script('jquery-ui', 'http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js');        
        register_script('product', $this->skin_path . 'assets/js/product.js');

        $id = Input::get('id', 'int', 0);
        if ($id) {
            $product = DB::for_table('t_product')
                    ->find_one($id);

            // update hits view
            $product->set('hits', $product->hits + 1);
            $product->save();

            // assign prouduct detail infomation
            $this->xtpl->assign('id', $product->id);
            $this->xtpl->assign('name', $product->name);
            $this->xtpl->assign('img', base_url() . $product->default_img);
            $this->xtpl->assign('price', formatPrice($product->price));
            $this->xtpl->assign('description', $product->description);
            $this->xtpl->assign('link', createLink('san-pham', array('id' => $product->id, 'title' => $product->name)));

            $attributes = $product->attribute;
            if ($attributes) {
                $attributes = unserialize($attributes);
                foreach ($attributes as $att) {
                    $this->xtpl->assign('att_name', $att['name']);
                    $this->xtpl->assign('att_value', $att['value']);
                    $this->xtpl->parse('main.att');
                }
            }

            // product image
            $productImages = DB::for_table('t_product_images')
                    ->select('url')
                    ->where_equal('product_id', $id)
                    ->order_by_desc('ordering')
                    ->find_many();

            foreach ($productImages as $images) {
                $this->xtpl->assign('full', base_url() . $images->url);
                $this->xtpl->assign('thumb', getThumbnail('thumb-150', $images->url));
                $this->xtpl->parse('main.small');
            }

            addTitle($product->name);


            // set path
            $path = '<ul class="path">
                    <li><a href="' . base_url() . '">Trang chủ</a></li>';
            $cid = DB::for_table('t_product_relationship')
                            ->select('category_id')
                            ->where_equal('product_id', $id)
                            ->find_one()->category_id;


            $category = DB::for_table('t_category')->find_one($cid);

            $path.= '<li>&rsaquo;</li>
                    <li><a href="' . base_url() . 'tat-ca-san-pham.html">Sản phẩm</a></li>
                    <li>&rsaquo;</li>
                    <li><a href="'.  createLink('danh-muc', ['id' => $cid, 'title' => $category->name]).'">' . $category->name . '</a></li>
                    <li>&rsaquo;</li>
                    <li>' . $product->name . '</li>';
            $path .= '</ul>';
            // create path
            $this->xtpl->assign('path', $path);
        }

        // load module cart
        $cart_header = loadModule('cart_header');
        $this->xtpl->assign('cart_header', $cart_header);


        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

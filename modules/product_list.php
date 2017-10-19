<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class product_list extends Module {

    function __construct() {
        $this->tpl = 'product.html';
        parent::__construct();
    }

    /**
     * @desc default function
     */
    function draw() {
        addTitle('Danh sách sản phẩm');
        addDescription('Hệ thống quản trị nội dung HCMS');

        $table_name = 't_product';
        $listProduct = DB::for_table($table_name);
        
        
        $path = '<ul class="path">
                    <li><a href="'.  base_url().'">Trang chủ</a></li>';

        // filter by category
        $cid = Input::get('id', 'int', 0);
        if ($cid) {
            $category = DB::for_table('t_category')->find_one($cid);
            
            $listProductIds = DB::for_table('t_product_relationship')
                    ->select('product_id')
                    ->where_equal('category_id', $cid)
                    ->find_many();
            $productIds = [];
            foreach ($listProductIds as $pOjb) {
                $productIds[] = $pOjb->product_id;
            }

            $listProduct = $listProduct->where_in('id', $productIds);
            
            $path.= '<li>&rsaquo;</li>
                    <li><a href="'.  base_url().'tat-ca-san-pham.html">Sản phẩm</a></li>
                    <li>&rsaquo;</li>
                    <li>' . $category->name . '</li>';
                
        }else{
            $path .= '<li>&rsaquo;</li>
                      <li><a href="'.  base_url().'tat-ca-san-pham.html">Sản phẩm</a></li>';
        }
        $path .= '</ul>';
        // create path
        $this->xtpl->assign('path', $path);

        // pagging
        $limit = 12;
        $total_row = $listProduct->count();
        $total_page = ceil($total_row / $limit);

        $current_page = Input::get('p', 'int', 1);
        $offset = ($current_page - 1) * $limit;
        $listProduct = $listProduct->limit($limit)->offset($offset)->find_many();
        $paging = paging($current_page, $total_page, curPageURL());
        $this->xtpl->assign('paging', $paging);


        // assign
        foreach ($listProduct as $product) {

            // get info category
            $arrListCatId = [];
            $listCategory = DB::for_table('t_product_relationship')
                    ->where_equal('product_id', $product->id)
                    ->find_many();

            foreach ($listCategory as $cat) {
                $arrListCatId[] = $cat->category_id;
            }

            // assign prouduct detail infomation
            $this->xtpl->assign('name', $product->name);
            $this->xtpl->assign('img', getThumbnail('thumb-150', $product->default_img));
            $this->xtpl->assign('price', formatPrice($product->price));            
            $this->xtpl->assign('category', $this->createLinkCategory($arrListCatId));
            
            $param = [
                'id' => $product->id, 
                'title' => $product->name,
            ];
            $this->xtpl->assign('link', createLink('san-pham', $param));
            
            $this->xtpl->parse('main.product');
        }
        
        
        // load module cart
        $cart_header = loadModule('cart_header');
        $this->xtpl->assign('cart_header', $cart_header);
        
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

  

    /**
     * @desc create link for category
     */
    function createLinkCategory($arrListCatId) {
        $html = '';
        if (count($arrListCatId) <= 0) {
            return $html;
        }

        $table = 't_category';

        foreach ($arrListCatId as $cid) {
            $category = DB::for_table($table)
                    ->where_equal('id', $cid)
                    ->find_one();

            $param = [
                'id' => $cid, 
                'title' => $category->name
            ];
            $html .= ' <a href="' . createLink('danh-muc', $param) . '">' . $category->name . '</a>,';
        }
        return trim($html, ',');
    }
   

}

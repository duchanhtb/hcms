<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class Product extends Base {

    var $fields = array(
        'cat_id',
        'name',
        'code',
        'price',
        'default_img',
        'description',
        'ordering',
        'date_created',
        'hits',
        'status',
        'meta_title',
        'meta_keyword',
        'meta_description'
    ); //fields in table (excluding Primary Key)	
    var $table = "t_product";
    var $table_product_images = "t_product_images";
    var $table_product_relationship = 't_product_relationship';
    var $cookie_prefix = 'hcms_';
    
    
    var $total_price;

    /**
     * @Desc get product by list Id
     * @param array $arrListId: list product ID
     * @param string $sort: sort field, the default is the primary key
     * @param string $order: DESC or ASC
     * @param int $page: 
     * @return array
     */
    function getProductByListId($arrListId = array(), $sort = false, $order = false) {
        $result = false;
        $sort = ($sort != false) ? $sort : $this->pk;  // sort field defaul is primary key
        $order = ($order != false) ? $order : 'DESC';
        
        $arrProduct = DB::for_table($this->table);
        // filter by list ID
        if (count($arrListId) > 0) {
            $arrProduct = $arrProduct->where_in('id', $arrListId);
        }

        // sort
        if ($sort && $order) {
            $arrProduct = (strtoupper($order) == 'ASC') ? $arrProduct->order_by_asc($sort) : $arrProduct->order_by_desc($sort);
        }

        $result = $arrProduct->find_many();
        

        // get images
        foreach ($result as &$product) {
            $miniProdutImages = new ProductImages();
            $product->images = $miniProdutImages->getProductImageByProductId($product->id);
        }
        return $result;
    }

    /**
     * @Desc get product by category 
     * @param string $cat_id: category id
     * @param string $sort: field wanna sort
     * @param string $order: DESC or ASC
     * @param int $page: 
     * @return array
     */
    function getProductByCategory($cat_id, $sort = false, $order = false, $page = 1) {
        $page = ($page > 1) ? $page : 1;
        $limit = $this->num_per_page;
        $offset = ($page - 1) * ($this->num_per_page);


        $arrProduct = DB::for_table($this->table)
                ->table_alias('tb1')
                ->select('tb1.*')
                ->select('tb2.category_id')
                ->join($this->table_product_relationship, array('tb1.id', '=', 'tb2.product_id'), 'tb2')
                ->where_equal('tb2.category_id', $cat_id);

        // sort
        if ($sort && $order) {
            $arrProduct = (strtoupper($order) == 'ASC') ? $arrProduct->order_by_asc($sort) : $arrProduct->order_by_desc($sort);
        }

        // pagging
        if ($limit && $offset) {
            $arrProduct = $arrProduct->limit($limit)->offset($offset);
        }

        $result = $arrProduct->find_many();

        // get images
        foreach ($result as &$product) {
            $miniProdutImages = new ProductImages();
            $product->images = $miniProdutImages->getProductImageByProductId($product->id);
        }

        return $result;
    }

    /**
     * @Desc set total cart price
     * @return array
     */
    function setTotalCartPrice($total_price) {
        $this->total_price = $total_price;
    }

    /**
     * @Desc get total cart price
     * @return array
     */
    function getTotalCartPrice() {
        return $this->total_price;
    }

    /**
     * @Desc get product from cart infomation
     * @return array
     */
    function getProductCartInfo($cart_info = false) {
        if (!$cart_info) {
            $miniCart = new Cart();
            $cart = $miniCart->getCartInfo();            
        }

        if (!$cart)
            return false;
        foreach ($cart as $id => $num) {
            $arrId[] = $id;
        }

        // get product
        if ($arrId) {
            $arrProduct = $this->getProductByListId($arrId, 'id', 'DESC');
        }        

        // calculate price
        $total_cart_price = 0;
        foreach ($arrProduct as &$product) {
            $product->number = $cart[$product->id];
            $product->total_price = ($product->number) * ($product->price);
            $total_cart_price += $product->total_price;
        }

        $this->setTotalCartPrice($total_cart_price);

        return $arrProduct;
    }

    /**
     * @Desc update hits field in database, the value up to 1
     * @param int $id: id of news
     * @return boolean
     */
    function hits($id) {
        $product = DB::for_table($this->table)->where_equal('id', $id)->find_one();
        $product->set('hits', $product->hits + 1);
        $product->save();

        // set infomation to cookie
        $this->setProductCookie($id);

        return true;
    }

    /**
     * @Desc set id product viewd to cookie
     * @param int $id: id of product
     * @return void
     */
    function setProductCookie($id) {
        $key = $this->cookie_prefix . 'product';
        $list_product_id = isset($_COOKIE[$key]) ? $_COOKIE[$key] : false;

        if ($list_product_id) {
            $arrProduct = explode(',', $list_product_id);
            $check = false;
            foreach ($arrProduct as $pid) {
                if ($pid == $id) {
                    $check = true;
                    break;
                }
            }
            if ($check == false) {
                $arrProduct[] = $id;
                $list_product_id = trim(implode(',', $arrProduct), ',');
                setcookie($key, $list_product_id);
            }
        } else {
            setcookie($key, $id);
        }
    }

    /**
     * @Desc get product info from id were set on cookie 
     * @param 
     * @return array/NULL
     */
    function getProductCookie() {
        $key = $this->cookie_prefix . 'product';
        $list_product_id = $_COOKIE[$key];
        $arrProduct = explode(',', $list_product_id);

        $result = false;

        if (count($arrProduct) <= 0)
            return $result;

        $ProductImages = new ProductImages();
        foreach ($arrProduct as $id) {
            $product = DB::for_table($this->table)->find_one($id);
            $product->images = $ProductImages->getProductImageByProductId($id);
            $result[] = $product;
        }

        return $result;
    }

}// end class

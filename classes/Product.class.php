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

    /**
     * @Desc get product 
     * @param string $con: condition
     * @param string $sort: field wanna sort, the default is the primary key
     * @param string $order: DESC or ASC
     * @param int $page: 
     * @return array
     */
    function getProduct($con = '', $sort = '', $order = 'DESC', $page = 1) {
        global $oDb;

        $result = array();
        $page = ($page > 1 ) ? abs($page) : 1; // minimum page value is "1"
        $sort = (trim($sort) != '') ? trim($sort) : $this->pk;  // sort field defaul is primary key
        $start = ($page - 1) * ($this->num_per_page); // start record in sql statement

        $id = $this->pk;
        $result = array();
        $sql = "SELECT * FROM $this->table WHERE 1 $con ORDER BY `$sort` $order LIMIT $start, $this->num_per_page";

        $rc = $oDb->query($sql);
        $rs = $oDb->fetchAll($rc);


        foreach ($rs as $key => $value) {
            $miniProdutImages = new ProductImages();
            $value['images'] = $miniProdutImages->getProductImageById($value['id']);
            $result[$value['id']] = $value;
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
    function getProductByCategory($cat_id, $sort = 'id', $order = 'desc', $page = 1) {
        global $oDb;
        if ($page < 1) {
            $page = 1;
        }
        $start = ($page - 1) * ($this->num_per_page);

        $Category = new Category();
        $tbl_category = $Category->table;
        $sql = "SELECT * 
                    FROM $this->table
                    WHERE cat_id
                    IN (
                    SELECT id
                    FROM $tbl_category
                    WHERE id = $cat_id
                    OR parent_id = $cat_id ) AND status = 1 LIMIT $start, $this->num_per_page ";
        $rc = $oDb->query($sql);
        $result = $oDb->fetchAll($rc);

        $list_id = '';
        if (count($result) > 0) {
            foreach ($result as $key => $value) {
                $list_id .= $value['id'] . ',';
            }
            $list_id = trim($list_id, ',');
        }

        if ($list_id) {
            $miniProdutImages = new ProductImages();
            $list_image = $miniProdutImages->getProductImageDefault($list_id);

            foreach ($result as &$value) {
                if (isset($list_image[$value['id']])) {
                    $value['thumb'] = getSmallImages($list_image[$value['id']]['images'], 'thumb');
                    $value['images'] = $list_image[$value['id']]['images'];
                    $value['thumb50'] = getSmallImages($list_image[$value['id']]['images'], 'thumb50');
                    $value['thumb300'] = getSmallImages($list_image[$value['id']]['images'], 'thumb300');
                } else {
                    $value['thumb'] = '';
                    $value['images'] = '';
                    $value['thumb50'] = '';
                    $value['thumb300'] = '';
                }
            }
        }
        return $result;
    }

    /**
     * @Desc get relate product 
     * @return array
     */
    function getRelateProduct($id) {
        $this->read($id);
        $cat_id = $this->cat_id;
        return $this->getProductByCategory($cat_id, 'name', 'asc', 1);
    }

    /**
     * @Desc get cart info           
     * @return array
     */
    function getProductCartInfo($cart_info = false) {
        $cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : false;
        if ($cart_info) {
            $cart = $cart_info;
        }
        $list_id = '';
        $product_cart = null;
        if (isset($cart) && count($cart) > 0) {
            foreach ($cart as $id => $num) {
                $list_id .= $id . ',';
            }
            $list_id = trim($list_id, ',');

            $con = " AND " . $this->pk . " IN ($list_id) ";
            $product_cart = $this->getProduct($con, " name ", " DESC ");
            $total_cart_price = 0;
            foreach ($product_cart as $key => &$value) {
                $value['number'] = $cart[$value[$this->pk]];
                $value['cart_price'] = $cart[$value[$this->pk]] * $value['price'];
                $total_cart_price += $value['cart_price'];
            }
            $this->total_cart_price = $total_cart_price;
        }
        return $product_cart;
    }

    /**
     * @Desc get total cart price
     * @param array $arr_product: array of product
     * @return boolean
     */
    function getTotalCartPrice($arr_product) {
        $total_cart_price = 0;
        foreach ($arr_product as $key => $value) {
            $value['number'] = $cart[$value[$this->pk]];
            $value['cart_price'] = $cart[$value[$this->pk]] * $value['price'];
            $total_cart_price += $value['cart_price'];
        }
        return $total_cart_price;
    }

    /**
     * @Desc update hit product
     * @param int $id: id of news
     * @return boolean
     */
    function hits($id) {
        global $oDb;
        $this->setProductCookie($id);
        $sql = " UPDATE `$this->table` SET `hits` = `hits` + 1 WHERE `$this->table`.`$this->pk` = $id LIMIT 1 ";
        return $oDb->query($sql);
    }

    /**
     * @Desc set id product viewd to cookie
     * @param int $id: id of product
     * @return void
     */
    function setProductCookie($id) {
        $cookie_product = isset($_COOKIE['hcms_product']) ? $_COOKIE['hcms_product'] : '';
        if ($cookie_product) {
            $arrProductView = explode(',', $cookie_product);
            $check = false;
            foreach ($arrProductView as $pid) {
                if ($pid == $id) {
                    $check = true;
                    break;
                }
            }
            if ($check == false) {
                $arrProductView[] = $id;
                $list_product = trim(implode(',', $arrProductView), ',');
                setcookie("hcms_product", $list_product);
            }
        } else {
            setcookie("hcms_product", $id);
        }
    }

    /**
     * @Desc get product info from id were set on cookie 
     * @param 
     * @return array/NULL
     */
    function getProductCookie() {
        $cookie_product = $_COOKIE['hcms_product'];
        $arrProductView = explode(',', $cookie_product);

        $list_id = '';
        foreach ($arrProductView as $pid => $v) {
            $list_id .= $pid . ',';
        }
        if ($list_id) {
            $list_id = trim($list_id, ',');
            $con = " AND " . $this->pk . " IN ($list_id) ";
            return $this->getProduct($con);
        }

        return false;
    }

    function countProduct() {
        global $oDb;
        $arr = array();
        $sql = "SELECT  cat_id,  count(*) as tt FROM `$this->table` GROUP BY cat_id ";
        $rc = $oDb->query($sql);
        $result = $oDb->fetchAll($rc);
        foreach ($result as $key => $value) {
            $arr[$value['cat_id']] = $value['tt'];
        }
        return $arr;
    }
}
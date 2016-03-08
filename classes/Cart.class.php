<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class Cart extends Base {

    var $fields = array(
        "list_product",
        "fullname",
        "phone",
        "email",
        "note",
        "payment_type",
        "status",
        "date_created"
    ); //fields in table (excluding Primary Key)
    var $table = "t_cart";

    /**
     * @Desc add product to cart 
     * @param int $pid: product id      
     * @return array
     */
    function addProductToCart($pid, $amount = 1) {
        global $_SESSION;
        $cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : array();
        if (count($cart) > 0 && isset($cart[$pid])) {
            $_SESSION['cart'][$pid] += $amount;
        } else {
            $_SESSION['cart'][$pid] = $amount;
        }

        return $_SESSION['cart'];
    }

    /**
     * @Desc delte product cart
     * @param int $pid: product id      
     * @return array
     */
    function delProductCart($pid) {
        global $_SESSION;
        if (isset($_SESSION['cart'][$pid])) {
            unset($_SESSION['cart'][$pid]);
        }
    }

    /**
     * @Desc flush product cart
     * @param none
     * @return none
     */
    function flushCart() {
        isset($_SESSION['cart']);
    }

    function sendMailCart() {
        $xtpl = new XTemplate('html_sendmail_cart.html');

        $arrayInput = array(
            "fullname",
            "phone",
            "email",
            "note",
        );

        foreach ($arrayInput as $field) {
            $xtpl->assign($field, Input::get($field));
        }


        $miniProduct = new Product();
        $cart = $miniProduct->getProductCartInfo();
        if (count($cart) > 0) {
            foreach ($cart as $key => $value) {
                $link_product = createLink('product_detail', array($this->pk => $value[$this->pk], 'name' => $value['name']));
                $xtpl->assign('link', $link_product);
                $xtpl->assign('name', $value['name']);
                $xtpl->assign('number', $value['number']);
                $xtpl->assign('price', $value['cart_price']);
                $xtpl->parse('main.row');
            }
        }

        $xtpl->parse('main');
        $content = $xtpl->out('main');

        $to = array(
            'name' => Input::get('fullname', 'txt', ''),
            'email' => Input::get('email', 'txt', '')
        );

        $subject = 'Đặt hàng thành công tại HCMS.com';

        if (isset($to['email']) && checkValidEmail($to['email'])) {
            sendMail($to, false, $subject, $content);
        }
    }

    /**
     * @Desc inset cart from session
     * @return boolean
     */
    function insetCart() {
        foreach ($this->fields as $field) {
            $this->$field = Input::get("$field", 'txt', '');
        }
        $this->date_created = date('Y-m-d H:i:s', time());

        $cart = isset($_SESSION['cart']) ? $_SESSION['cart'] : null;
        if (count($cart) > 0) {
            $list_product = json_encode($cart);
        } else {
            $list_product = '';
        }
        $this->list_product = $list_product;
        return $this->insert();
    }

}
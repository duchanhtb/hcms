<?php

/**
 * @author duchanh
 * @copyright 2012
 */
define('ALLOW_ACCESS', TRUE);
include("config.php");

class ajax {

    function ajax() {
        $cmd = Input::get('cmd', 'txt', '');

        switch ($cmd) {
            case "contact":
                $this->contact();
                break;

            case "update_payment":
                $this->update_payment();
                break;

            case "add_to_cart":
                $this->addtoCart();
                break;

            case "order":
                $this->insertOrder();
                break;

            case "update_cart":
                $this->updateCart();
                break;

            case "delAllCart":
                $this->delAllCart();
                break;

            case "te_product_cart":
                $this->delCart();
                break;

            case "updateCartNumber":
                $this->updateCartNumber();
                break;
        }
    }

    /**     
     * @desc save contact infomation
     */
    function contact() {
        if (isset($_POST)) {
            $code = Input::get('code', 'txt', '');
            if ($code != $_SESSION['security_code']) {
                echo 'WRONG_CODE';
                exit();
            }


            $fullname = Input::get('fullname', 'txt', '');
            if ($fullname == '') {
                echo 'EMPTY_FULLNAME';
                exit();
            }

            $company = Input::get('company', 'txt', '');
            $address = Input::get('address', 'txt', '');


            $email = Input::get('email', 'txt', '');
            if ($email == '') {
                echo 'EMPTY_EMAIL';
                exit();
            }
            if (!checkValidEmail($email)) {
                echo 'WRONG_EMAIL';
                exit();
            }

            $phone = Input::get('phone', 'txt', '');
            $mobile = Input::get('mobile', 'txt', '');
            $yahoo = Input::get('yahoo', 'txt', '');
            $skype = Input::get('skype', 'txt', '');
            $fax = Input::get('fax', 'txt', '');
            $title = Input::get('title', 'txt', '');

            $content = Input::get('content', 'txt', '');
            if ($content == '') {
                echo 'EMPTY_CONTENT';
                exit();
            }


            $Contact = new Contact();
            $contactRecord = DB::for_table($Contact->table)->create();
            
            $contactRecord->fullname = $fullname;
            $contactRecord->company = $company;
            $contactRecord->address = $address;
            $contactRecord->email = $email;
            $contactRecord->phone = $phone;
            $contactRecord->mobile = $mobile;
            $contactRecord->yahoo = $yahoo;
            $contactRecord->skype = $skype;
            $contactRecord->fax = $fax;
            $contactRecord->title = $title;
            $contactRecord->content = $content;
            $contactRecord->date = date('Y-m-d H:i:s', time());
            $contactRecord->status = 1;
            $contactRecord->save();
            $id = $contactRecord->id();
            if ($id > 0) {
                $html_sendmail = '
                <div>
                <h3>Liên hệ từ</h3>
                <table>
                    <tbody><tr>
                        <td></td>
                        <td>Họ tên</td>
                        <td>:</td>
                        <td>' . $fullname . '</td>
                    </tr>                   
                    <tr>
                        <td></td>
                        <td>Email</td>
                        <td>:</td>
                        <td><a target="_blank" href="mailto:' . $email . '">' . $email . '</a></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>N?i dung</td>
                        <td>:</td>
                        <td>' . $content . '</td>
                    </tr>
                </tbody></table></div>';

                $from = array(
                    'email' => 'contact@nguyenduchanh.com',
                    'name' => 'Nguyen Duc Hanh'
                );
                $to = array(
                    'email' => 'hanhcoltech@gmail.com',
                    'name' => 'Nguyen Duc Hanh'
                );
                $reply = $from;

                sendMail($from, $to, $reply, 'Liên hệ từ Nguyen Duc Hanh', $html_sendmail);
                echo "SS";
            }
        }
    }

    
    /**     
     * @desc add product to cart, only in SESSION
     * @param int $pid product id
     * @param num $number number want to add for this product
     */
    function addtoCart() {
        $id = Input::get('pid', 'int', 0);
        $num = Input::get('num', 'int', 1);
        $miniCart = new Cart();
        $miniCart->addProductToCart($id, $num);
        $total = $miniCart->countTotalProduct();
        $result = array(
            'status' => 200,
            'msg' => 'Thành công',
            'total_product' => $total
        );

        echo json_encode($result);
    }

    
    /**     
     * @desc update product cart
     * @param int $pid product id
     * @param num $num number product update
     */
    function updateCart() {
        global $_SESSION;
        $arr_id = $_REQUEST['pid'];
        $arr_num = $_REQUEST['num'];
        foreach ($arr_id as $key => $pid) {
            $miniCart = new Cart();
            $miniCart->addProductToCart($pid, $arr_num[$key]);
        }
        $link_redirect = createLink('cart');
        redirect($link_redirect);
    }

    
    /**     
     * @desc delete all cart
     * @param nothing
     */
    function delAllCart() {
        $miniCart = new Cart();
        $miniCart->delProductCart();
        echo 'SS';
    }

    /**     
     * @desc delete cart
     * @param int $pid product id
     */
    function delCart() {
        $pid = Input::get('pid', 'int', 0);
        if ($pid) {
            $miniCart = new Cart();
            $miniCart->delProductCart();
            unset($_SESSION['cart'][$pid]);
            echo 'SS';
        }
    }

    
    /**     
     * @desc update product cart number
     * @param int $pid product id
     * @param int $num product number
     */
    function updateCartNumber() {
        $pid = Input::get('pid', 'int', 0);
        $num = Input::get('num', 'int', 1);
        $_SESSION['cart'][$pid] = $num;
        echo 'ss';
    }

}

new ajax();

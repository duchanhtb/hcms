<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class shipping extends Module {

    function __construct() {
        $this->tpl = 'shipping.html';
        parent::__construct();
    }

    function draw() {
        
        addTitle('Giao Hàng');
        
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
                     <li><a href="'.  base_url().'checkout.html">Giỏ hàng</a></li>
                     <li>&rsaquo;</li>
                     <li><a href="'.  base_url().'shipping.html"></a>Đặt hàng</li>';
        $path .= '</ul>';
        // create path
        $this->xtpl->assign('path', $path);

        if ($_POST) {
            $error = false;
            $fullname = $_POST['fullname'];
            if (!$fullname) {
                $this->xtpl->assign('error_fullname', 'Xin hãy cho biết tên bạn');
                $error = true;
            }else{
                $this->xtpl->assign('fullname', $fullname);
            }
            
            
            $email = $_POST['email'];
            if (!$email) {
                $this->xtpl->assign('error_email', 'Xin hãy cho biết email');
                $error = true;
            }else if(!checkValidEmail($email)){
                $this->xtpl->assign('error_email', 'Xin hãy nhập đúng email');
                $error = true;
            }else{
                $this->xtpl->assign('email', $email);
            }
            
            
            
            $phone = $_POST['phone'];
            if (!$phone) {
                $this->xtpl->assign('error_phone', 'Xin hãy cho biết số điện thoại');
                $error = true;
            }else{
                $this->xtpl->assign('phone', $phone);
            }
            

            $address = $_POST['address'];
            $this->xtpl->assign('address', $address);
            $this->xtpl->assign('address', $address);
            
            $content = $_POST['content'];
            $this->xtpl->assign('content', $content);
            $this->xtpl->assign('content', $content);
            
            if (!$error) {
                $miniProduct = new Product();
                $cart = $miniProduct->getProductCartInfo();
                if ($cart && count($cart) > 0) {

                    $html_sendmail = '               
                    <div>
                    <h3>Cảm ơn ' . $fullname . '!</h3>
                    <h3>Bạn vừa đặt hàng thành công trên website '.$_SERVER['SERVER_NAME'].', dưới đây là thông tin đặt hàng của bạn.</h3>
                    <h3>Chúng tôi sẽ liên hệ và báo giá vận chuyển cụ thể với bạn trong thời gian sớm nhất.</h3>
                    <table width="800" style="font-family: Arial, sans-serif; text-align: center; width: 800px; border-collapse: collapse; border: 1px solid #dfdfdf;">
                        <tbody>
                        <tr style="background-color: #076735;">
                            <th style="padding: 15px; border: 1px solid #dfdfdf; color: #fff;">STT</th>
                            <th style="padding: 15px; border: 1px solid #dfdfdf; color: #fff;">Tên sản phẩm</th>
                            <th style="padding: 15px; border: 1px solid #dfdfdf; color: #fff;">Số lượng</th>
                            <th style="padding: 15px; border: 1px solid #dfdfdf; color: #fff;">Tổng</th>
                        </tr>';

                    $i = 1;
                    foreach ($cart as $key => $value) {
                        
                        if ($key % 2 != 0) {
                            $bg = 'style="background-color:#f2f2f2"';
                        } else {
                            $bg = '';
                        }

                        if ($value['price']) {
                            $price_html = '<div>Giá: <strong>' . formatPrice($value['price']) . '</strong> VNĐ</div>';
                        }
                        $thumb = base_url() . $value['default_img'];
                        $html_sendmail .= '
                            <tr ' . $bg . '>
                                <td style="padding: 15px; border: 1px solid #dfdfdf;">' . ($key + 1) . '</td>
                                <td style="padding: 15px; border: 1px solid #dfdfdf; text-align: left;">
                                    <img src="' . $thumb . '" style="height: 80px; float: left; margin-right: 10px; border: 1px solid #ccc;">
                                    <h3 style="margin: 0px 0px 5px 0px;">' . $value['name'] . '</h3>
                                    ' . $price_html . '
                                </td>
                                <td style="padding: 15px; border: 1px solid #dfdfdf;"><strong>' . $value['number'] . '</strong></td>
                                <td style="padding: 15px; border: 1px solid #dfdfdf;"><strong>' . formatPrice($value['total_price']) . '</strong>  ₫</td>
                            </tr>';
                        $i++;
                    }
                    $html_sendmail .= '<tr style="background-color: #076735;">
                                        <td colspan="4" align="right" style="padding: 15px; color: #fff;">Tổng tiền: 
                                        <strong>' . formatPrice($miniProduct->getTotalCartPrice()) . '</strong>  ₫</td>
                                      </tr>';
                    $html_sendmail .= '</tbody></table></div>';
                    
                    $to = array(
                        'email' => $email,
                        'name' => $fullname
                    );

                    $subject = 'Thông tin đặt hàng tại '.$_SERVER['SERVER_NAME'];
                    $ok = sendMail($to, false, $subject, $html_sendmail);
                }
                
               
                $ProductOrder = new ProductOrder();
                $cart = $ProductOrder->getCartInfo();
                
                if($cart){
                    $ProductOrder->list_product = json_encode($cart);
                    $ProductOrder->fullname = $fullname;
                    $ProductOrder->phone = $phone;
                    $ProductOrder->email = $email;
                    $ProductOrder->address = $address;
                    $ProductOrder->note = $content;
                    $ProductOrder->date_created = date('Y-m-d H:i:s');
                    $ProductOrder->insert();
                    $ProductOrder->flushCart();
                }
                
                $this->xtpl->parse('main.msg');
                $this->xtpl->parse('main');
                return $this->xtpl->out('main');
            } else {
                $this->xtpl->parse('main.checkout');
                $this->xtpl->parse('main.bar');
                $this->xtpl->parse('main');
                return $this->xtpl->out('main');
            }
        } else {
            $this->xtpl->parse('main.checkout');
            $this->xtpl->parse('main.bar');
            $this->xtpl->parse('main');
            return $this->xtpl->out('main');
        }
       
    }

}

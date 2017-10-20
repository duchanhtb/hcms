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
    
    
    
    function draw(){
        
        if ($_POST) {
            $error = false;
            $fullname = $_POST['fullname'];
            if (!$fullname) {
                $this->xtpl->assign('error_fullname', 'Xin hãy cho biết tên bạn');
                $error = true;
            }
            $email = $_POST['email'];
            if (!$email) {
                $this->xtpl->assign('error_email', 'Xin hãy cho biết email');
                $error = true;
            }
            $phone = $_POST['phone'];
            if (!$phone) {
                $this->xtpl->assign('error_phone', 'Xin hãy cho biết số điện thoại');
                $error = true;
            }

            $address = $_POST['address'];
            $content = $_POST['content'];

            if (!$error) {
                

                 $miniProduct = new miniProduct();
                $cart = $miniProduct->getProductCartInfo();
                //var_dump($cart);
                if ($cart && count($cart) > 0) {
                    
                    $html_sendmail = '               
                    <div>
                    <h3>Cảm ơn ' . $fullname . '!</h3>
                    <h3>Bạn vừa đặt hàng thành công trên website tana101.com, dưới đây là thông tin đặt hàng của bạn.</h3>
                    <h3>Chúng tôi sẽ liên hệ và báo giá vận chuyển cụ thể với bạn trong thời gian sớm nhất.</h3>
                    <table width="800" style="font-family: Arial, sans-serif; text-align: center; width: 800px; border-collapse: collapse; border: 1px solid #ddd;">
                        <tbody>
                        <tr style="background-color: #076735;">
                            <th style="padding: 15px; border: 1px solid #ddd; color: #fff;">STT</th>
                            <th style="padding: 15px; border: 1px solid #ddd; color: #fff;">Tên sản phẩm</th>
                            <th style="padding: 15px; border: 1px solid #ddd; color: #fff;">Số lượng</th>
                            <th style="padding: 15px; border: 1px solid #ddd; color: #fff;">Tổng</th>
                        </tr>';
                  
                    $i = 1;
                    foreach ($cart as $key => $value) {
                        if ($i == count($cart))
                            break;
                        
                        if ($key % 2 != 0) {
                            $bg = 'style="background-color:#f2f2f2"';
                        } else {
                            $bg = '';
                        }

                        if ($value['price']) {
                            $price_html = '<div>Giá: <strong>' . formatPrice($value['price']) . '</strong> VNĐ</div>';
                        }
                        $thumb = base_url() . $value['thumb'];
                        $html_sendmail .= '
                            <tr ' . $bg . '>
                                <td style="padding: 15px; border: 1px solid #ddd;">' . ($key + 1) . '</td>
                                <td style="padding: 15px; border: 1px solid #ddd; text-align: left;">
                                    <img src="' . $thumb. '" style="height: 80px; float: left; margin-right: 10px; border: 1px solid #ccc;">
                                    <h3 style="margin: 0px 0px 5px 0px;">' . $value['name'] . '</h3>
                                    ' . $price_html . '
                                </td>
                                <td style="padding: 15px; border: 1px solid #ddd;"><strong>' . $value['number'] . '</strong></td>
                                <td style="padding: 15px; border: 1px solid #ddd;"><strong>' . formatPrice($value['cart_price']) . '</strong> VNĐ</td>
                            </tr>';
                        $i++;
                    }
                    $html_sendmail .= '<tr style="background-color: #076735;">
                                        <td colspan="3" align="right" style="padding: 15px; color: #fff;">Tổng tiền</td>
                                        <td style="padding: 15px; border: 1px solid #ddd; color: #fff;"><strong>' . formatPrice($cart['total_cart_price']) . '</strong> VNĐ</td>
                                      </tr>';
                    $html_sendmail .= '</tbody></table></div>';
                }
                

                $to = array(
                    'email' => $email,
                    'name' => $fullname
                );

                $subject = "Thông tin đặt hàng tại  nhà may Tân Á 101 Khâm Thiên";
                $ok = sendMail($to, false, $subject, $html_sendmail);
                
                
                $cart = $_SESSION['cart'];
                $miniOrder = new miniOrder();
                $miniOrder->product_info = json_encode($cart);
                $miniOrder->fullname = $fullname;
                $miniOrder->phone = $phone;
                $miniOrder->email = $email;
                $miniOrder->address = $address;
                $miniOrder->note = $content;
                $miniOrder->insert();
                unset($_SESSION['cart']);
            }
            $this->xtpl->parse('main.msg');
            $this->xtpl->parse('main');
            return $this->xtpl->out('main');
        } else {
            $this->xtpl->parse('main.checkout');
            $this->xtpl->parse('main');
            return $this->xtpl->out('main');
        }
        
        
        
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
    
}
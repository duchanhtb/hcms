<?php

/**
 * @author duchanh
 * @copyright 2012
 */

define('ALLOW_ACCESS',TRUE);
include("config.php");

class ajax {    
    function ajax(){
        $cmd = Input::get('cmd','txt','');
        
         switch($cmd){                    
            case "contact":                        
                $this->contact();          	                       
            break;
            
            case "register_email":                        
                $this->register_email();          	                       
            break;
            
            case "update_payment":                        
                $this->update_payment();          	                       
            break;
            
            case "buynow":                        
                $this->buynow();          	                       
            break;
            
            case "faqs":                        
                $this->faqs();          	                       
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
            
            case "del_cart":                        
                $this->delCart();          	                       
            break;
            
            case "comment":                        
                $this->productComment();          	                       
            break;
            
            case "get_product_comment":                        
                $this->getProductComment();          	                       
            break;
            
            case "updateCartNumber":                        
                $this->updateCartNumber();          	                       
            break;
            
            case "get_faqs":                        
                $this->get_faqs();          	                       
            break;
            
            case "reply_faqs":                        
                $this->reply_faqs();          	                       
            break;
         }
    }
    
    function contact(){
        if(isset($_POST)){
            $code = Input::get('code','txt','');
            if($code!=$_SESSION['security_code']){
                echo 'WRONG_CODE';
                exit();
            }
            
            
            $fullname = Input::get('fullname','txt','');
            if($fullname==''){
                echo 'EMPTY_FULLNAME';
                exit();
            }
            
            $company    = Input::get('company','txt','');
            $address    = Input::get('address','txt','');
            
            
            $email = Input::get('email','txt','');
            if($email==''){
                echo 'EMPTY_EMAIL';
                exit();
            }            
            if(!checkValidEmail($email)){
                echo 'WRONG_EMAIL';
                exit();
            }
            
            $phone      = Input::get('phone','txt','');
            $mobile     = Input::get('mobile','txt','');
            $yahoo      = Input::get('yahoo','txt','');
            $skype      = Input::get('skype','txt','');
            $fax        = Input::get('fax','txt','');
            $title      = Input::get('title','txt','');
            
            $content = Input::get('content','txt','');
            if($content==''){
                echo 'EMPTY_CONTENT';
                exit();
            }            
            
            
            $Contact = new Contact();
            $Contact->fullname  = $fullname;
            $Contact->company   = $company;
            $Contact->address   = $address;
            $Contact->email     = $email;
            $Contact->phone     = $phone;
            $Contact->mobile    = $mobile;
            $Contact->yahoo     = $yahoo;
            $Contact->skype     = $skype;
            $Contact->fax       = $fax;
            $Contact->title     = $title;
            $Contact->content   = $content;
            $Contact->date      = date('Y-m-d H:i:s',time());
            $Contact->status    = 1;
            $id = $Contact->insert();
            if($id>0){                
                $html_sendmail = '
                <div>
                <h3>Liên hệ từ</h3>
                <table>
                    <tbody><tr>
                        <td></td>
                        <td>Họ tên</td>
                        <td>:</td>
                        <td>'.$fullname.'</td>
                    </tr>                   
                    <tr>
                        <td></td>
                        <td>Email</td>
                        <td>:</td>
                        <td><a target="_blank" href="mailto:'.$email.'">'.$email.'</a></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>N?i dung</td>
                        <td>:</td>
                        <td>'.$content.'</td>
                    </tr>
                </tbody></table></div>';
                
                $from = array(
                    'email' => 'contact@nguyenduchanh.com',
                    'name'  => 'Nguyen Duc Hanh'
                );
                $to = array(
                    'email' => 'hanhcoltech@gmail.com',
                    'name'  => 'Nguyen Duc Hanh'
                );
                $reply = $from;
                
                sendMail($from,$to,$reply,'Liên hệ từ Nguyen Duc Hanh',$html_sendmail);
                echo "SS";
            }
        }
    }
    
    
    
    function addtoCart(){
        global $_SESSION;
        $id = Input::get('pid','int',0);
        $num = Input::get('num','int',1);
        $Product = new Product();
        $a  = $Product->addProductToCart($id);
        
    }
    
    function updateCart(){
        global $_SESSION;
        $arr_id = $_REQUEST['pid'];
        $arr_num = $_REQUEST['num'];
        foreach($arr_id as $key=>$pid){            
            $_SESSION['cart'][$pid] = $arr_num[$key];
        }
        $link_redirect = createLink('cart');
        redirect($link_redirect);
    }
    
    
    
    function delAllCart(){
        global $_SESSION;
        unset($_SESSION['cart']);
        echo 'SS';
    }
    
    function delCart(){
        global $_SESSION;
        $pid = Input::get('pid','int',0);
        if($pid){
            unset($_SESSION['cart'][$pid]);
            echo 'SS';    
        }
    }
    
    
    function updateCartNumber(){
        $pid = Input::get('pid','int',0);
        $num = Input::get('num','int',1);
        $_SESSION['cart'][$pid] = $num;
        echo 'ss';
        
    }
    
    
    
    
    // ham tra ve ket qua tim kiem search product code
    function searchAutoComplete(){
        $q = strtoupper(trim($_REQUEST['q']));
        $limit = $_REQUEST['limit'];
        if($q){
            $Product = new Product();
            $result = $Product->searchAutoComplete($q,$limit);
            if($result){
                foreach($result as $key=>$value){
                    $suggest = $value['name'];
                    echo "$suggest.<span style=\"float:right\"><img src=".$value['thumb']." width=\"50\" height=\"50\"></span>\n" ;
                }
            }
        }
    }
    
    
    function register_email(){
        global $oDb;
        $email = Input::get('email','txt','');
        if($email=='' || $email=='Email'){
            echo 'EMPTY_EMAIL';
            exit();
        }
        if(!checkValidEmail($email)){
            echo 'WRONG_EMAIL';
            exit();
        }
        $name = Input::get('name','txt','');
        $date = date('Y-m-d H:i:s',time());
        
        $sql = "INSERT INTO `t_email` (`id`, `name`, `email`,`date`) VALUES (NULL, '$name', '$email','$date')";
        $oDb->query($sql);
        echo 'SUCSESS';
        exit();
        
    }
    
    
    function buynow(){
        $pid = Input::get('pid','int',0);
        $number =   Input::get('number','int',1);
        if($pid){
            $Product = new Product();
            for($i=0;$i<$number;$i++){
                $Product->addProductToCart($pid);    
            }
        }
        $link_redirect = createLink('cart');
        redirect($link_redirect);
                
    }
    
  
    
}

new ajax();
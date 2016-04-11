<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
$column = array(
    "list_product" => array(
        "title"         => "Danh sách sp",
        "type"          => "input:function",
        "function"      => 'order',
        "editable"      => false,
        "searchable"    => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "fullname" => array(
        "title"         => "Tên KH",
        "type"          => "textarea:noeditor",
        "row"           => 1,
        "searchable"    => false,
        "editlink"      => true,
        "required"      => "Nhâp tên khách hàng",
        "show_on_list"  => true
    ),
    "phone" => array(
        "title"         => "Điện thoại",
        "type"          => "input:text",
        "required"      => "Nhập số điện thoại",
        "editable"      => false,
        "searchable"    => false,
        "editlink"      => true,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "email" => array(
        "title"         => "Email",
        "type"          => "input:text",
        "required"      => "Nhập email",
        "editable"      => false,
        "sufix_title"   => "",
        "searchable"    => false,
        "show_on_list"  => true
    ),
    "address" => array(
        "title"         => "Địa chỉ",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "required"      => "Nhập địa chỉ",
        "editable"      => false,
        "sufix_title"   => "",
        "searchable"    => false,
        "show_on_list"  => true
    ),
    "note" => array(
        "title"         => "Ghi chú",
        "type"          => "textarea:noeditor",
        "row"           => 2,
        "required"      => "Nhập ghi chú",
        "editable"      => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "payment_type" => array(
        "title"         => "Kiểu thanh toán",
        "type"          => "input:text",
        "required"      => "Nhập kiểu thanh toán",
        "editable"      => false,
        "searchable"    => false,
        "sufix_title"   => "",
        "show_on_list"  => true
    ),
    "date_created" => array(
        "title"         => "Ngày tạo",
        "type"          => "datetime:current",
        "required"      => "Nhập ngày tháng",
        "editable"      => false,
        "sufix_title"   => "",
        "searchable"    => false,
        "show_on_list"  => true
    ),
    "status" => array(
        "title"         => "Tình trạng",
        "type"          => "combobox",
        "data"          => array(0 => 'Chưa xử lý', 1 => 'Đang chuyển', 2 => 'Hoàn thành'),
        "editable"      => true,
        "sufix_title"   => "",
        "show_on_list"  => true
    )
);

/**
 * @Desc get product from list id (for order)
 * @param string $list_id_json: the json id
 * @param string $act: action, list/add/edit
 * @return html
 */
function order($id, $act = 'list') {
    $html = '';
    $style = '<style>
        ul.order-product{
            padding: 10px 0;          
        }
        ul.order-product li{
            list-style: none;
        }
        ul.order-product img{
            width: 80px;
            margin-right: 10px;
            float: left;
            border: 1px solid #ddd;
            padding: 5px;
        }
        .order-info{
             padding-left: 80px;
        }
        .order-info h3{
            margin: 0px 0px 5px 0px;
            font-weight: normal !important;
        }</style>';
    switch ($act) {
        case "add":
        case "edit":
            return "Không cần nhập mục này";
            break;
        default:
            $miniCart = new Cart();
            $miniCart->read($id);
            $list_id_json = $miniCart->list_product;
            $arrListId = json_decode($list_id_json, true);
            if (count($arrListId) <= 0){
                return '';
            }
            $html .= $style;
            foreach ($arrListId as $id => $num) {
                $miniProduct = new Product();
                $miniProduct->read($id);
                
                $html .= '<ul class="order-product">   
                            <li>
                                <a href="?f=product&search-input='. $miniProduct->name .'&search-column=name" target="_blank"><img src="'. getThumbnail('thumb-150', $miniProduct->default_img).'"></a>
                                <div class="order-info">
                                    <h3><a href="?f=product&search-input='. $miniProduct->name .'&search-column=name" target="_blank">'. $miniProduct->name . '</a></h3>
                                    <div>Số lượng: <strong>'. formatPrice($num) .'</strong></div>
                                </div>
                                <div style="clear:both"></div>
                            </li>
                          </ul>';
            }            
            break;
    }
    return $html;
}
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
$column = array(
    "list_product" => array(
        "title" => "Danh sách sp",
        "type" => "input:function",
        "function" => 'order',
        "editable" => false,
        "searchable" => false,
        "sufix_title" => "",
        "show_on_list" => true
    ),
    "info" => array(
        "title" => "Danh sách sp",
        "type" => "input:function",
        "function" => 'orderInfo',
        "editable" => false,
        "searchable" => false,
        "sufix_title" => "",
        "editable" => true,
        "show_on_list" => true
    ),
    "status" => array(
        "title" => "Tình trạng",
        "type" => "combobox",
        "data" => array(0 => 'Chưa xử lý', 1 => 'Đang chuyển', 2 => 'Hoàn thành'),
        "editable" => true,
        "sufix_title" => "",
        "show_on_list" => true
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
            if (count($arrListId) <= 0) {
                return '';
            }
            $html .= $style;
            foreach ($arrListId as $id => $num) {
                $miniProduct = new Product();
                $miniProduct->read($id);

                $html .= '<ul class="order-product">   
                            <li>
                                <a href="?f=product&search-input=' . $miniProduct->name . '&search-column=name" target="_blank"><img src="' . getThumbnail('thumb-150', $miniProduct->default_img) . '"></a>
                                <div class="order-info">
                                    <h3><a href="?f=product&search-input=' . $miniProduct->name . '&search-column=name" target="_blank">' . $miniProduct->name . '</a></h3>
                                    <div>Số lượng: <strong style="font-size:120%;">' . formatPrice($num) . '</strong></div>
                                </div>
                                <div style="clear:both"></div>
                            </li>
                          </ul>';
            }
            break;
    }
    return $html;
}

function orderInfo($id, $act = 'list') {
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
            if (count($arrListId) <= 0) {
                return '';
            }
            $html = '<table><tbody>';

            // fullname
            if ($miniCart->fullname) {
                $html .= '<tr>';
                $html .= '<td>Tên KH:</td><td>' . $miniCart->fullname . '</td>';
                $html .= '</tr>';
            }
            // fullname
            if($miniCart->phone){
                $html .= '<tr>';
                $html .= '<td>Điện thoại:</td><td>' . $miniCart->phone . '</td>';
                $html .= '</tr>';
            }
            // email
            if($miniCart->email){
                $html .= '<tr>';
                $html .= '<td>Email:</td><td>' . $miniCart->email . '</td>';
                $html .= '</tr>';
            }
            // address
            if($miniCart->address){
                $html .= '<tr>';
                $html .= '<td>Địa chỉ:</td><td>' . $miniCart->address . '</td>';
                $html .= '</tr>';
            }
            // note
            if($miniCart->note){
                $html .= '<tr>';
                $html .= '<td>Ghi chú:</td><td>' . $miniCart->note . '</td>';
                $html .= '</tr>';
            }
            // date created
            if($miniCart->date_created){
                $html .= '<tr>';
                $html .= '<td>Ngày tạo:</td><td>' . $miniCart->date_created . '</td>';
                $html .= '</tr>';
            }
            
            $html .= '</tbody></table>';
            break;
    }
    return $html;
}

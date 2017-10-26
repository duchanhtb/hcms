<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');
/**
 * @author duchanh
 * @copyright 2012
 */
/* define admin folder 
  ---------------------------------------------------- */

defined('ADMIN_FOLDER') or define('ADMIN_FOLDER', 'admin');

/* config file
  ---------------------------------------------------- */
include('../config.php');

/* core admin cms
  ---------------------------------------------------- */
include_once('CmsTable.php');

/* admin function
  ---------------------------------------------------- */
include_once('admin.function.php');

/* define admin path
  ---------------------------------------------------- */
define('ADMIN_PATH', ROOT_PATH . DS . ADMIN_FOLDER . DS);

/* admin images uri
  ---------------------------------------------------- */
define('ADMIN_IMAGES', admin_url() . 'images/');

/* admin js uri
  ---------------------------------------------------- */
define('ADMIN_JS', admin_url() . 'js/');

/* admin css uri
  ---------------------------------------------------- */
define('ADMIN_CSS', admin_url() . 'css/');


/* config for left menu of admin
  $arrMenu[] = 	array(
  "name", 		'the name of menu'
  "id", 			'the php_file_name.php in "include" folder '
  "type", 		'if the value is heading, the 'id' unnecessary'
  "desc", 		'description for tooltip'
  )
  ---------------------------------------------------- */

$mt_prefix = 'm_';
$tbl_prefix = "t_";
$arrMenu[] = array("name" => trans('guide'),
    "type" => 'heading',
    "id" => '',
    'desc' => 'Tài liệu hướng dẫn sử dụng HCMS'
);
$arrMenu[] = array("name" => trans('how_to_use'),
    "id" => 'home',
    'desc' => 'Cách sử dụng hệ thống quản trị nội dung HCMS'
);
$arrMenu[] = array("name" => trans('product'),
    "type" => 'heading',
    "id" => '',
    'desc' => 'Phần sản phẩm'
);
$arrMenu[] = array("name" => trans('category'),
    "id" => 'category',
    "table" => $tbl_prefix . 'category:id',
    "desc" => 'Quản trị danh mục sản phẩm (nhóm sản phẩm)'
);
$arrMenu[] = array("name" => trans('product'),
    "id" => 'product',
    "table" => $tbl_prefix . 'product:id',
    "desc" => 'Quản trị sản phẩm, các thông tin liên quan tới sản phẩm như tên, giá cả, mã sản phẩm...'
);
$arrMenu[] = array("name" => trans('product_order'),
    "id" => 'product_order',
    "table" => $tbl_prefix . 'product_orders:id',
    "desc" => 'Quản lý order'
);
$arrMenu[] = array("name" => trans('news'),
    "type" => 'heading',
    "id" => '',
);
$arrMenu[] = array("name" => trans('category'),
    "id" => 'news_category',
    "table" => $tbl_prefix . 'news_category:id',
    "desc" => 'Quản trị danh mục tin tức, nhóm tin'
);
$arrMenu[] = array("name" => trans('news'),
    "id" => 'news',
    "table" => $tbl_prefix . 'news:id',
    "desc" => 'Quản trị tin tức, bài viết'
);

if ((int)@$_SESSION['admin']['level'] >= 3) {
    $arrMenu[] = array("name" => trans('admin'),
        "type" => 'heading',
        "id" => '',
        "desc" => 'Quản lý admin quản trị CMS'
    );

    $arrMenu[] = array("name" => trans('user_admin'),
        "id" => 'admin',
        "table" => $mt_prefix . 'admin:id',
        "desc" => 'Quản lý người dùng admin'
    );
    
    $arrMenu[] = array("name" => trans('setting'),
        "id" => 'options',
        "desc" => 'Cài đặt các thông tin liên quan tới website như email, số đt, dường đẫn tới facebook...'
    );
    $arrMenu[] = array("name" => trans('page'),
        "id" => 'page',
        "table" => $mt_prefix . 'page:id',
        "desc" => 'Quản trị các trang, Title và Keywords, Descriptions cho mỗi trang. Google và các máy tìm kiếm khác dựa vào những từ khóa này để đưa và hệ thống search engine của họ'
    );
}

$arrMenu[] = array("name" => trans('other_menu'),
    "type" => 'heading',
);
$arrMenu[] = array("name" => trans('language'),
    "id" => 'language',
    "table" => $mt_prefix . 'language:id',
    "desc" => 'Quản lý ngôn ngữ'
);
$arrMenu[] = array("name" => 'Media',
    "id" => 'media',
    "desc" => 'Quản trị ảnh đã uploaded lên server, dễ dàng thêm mới, sửa, xóa ảnh. Lưu ý khi xóa hoặc đổi tên thì ảnh ở ngoài trang chủ sẽ không hiện ra.'
);
$arrMenu[] = array("name" => trans('banner'),
    "id" => 'banner',
    "table" => $tbl_prefix . 'banner:id',
    "desc" => 'Quản lý ảnh banner'
);
$arrMenu[] = array("name" => trans('locate'),
    "type" => 'heading',
);
$arrMenu[] = array("name" => trans('province'),
    "id" => 'province',
    "table" => $mt_prefix.'provinces:id',
    "desc" => 'Quản trị các tỉnh thành Việt Nam.'
);
$arrMenu[] = array("name" => trans('district'),
    "id" => 'district',
    "table" => $mt_prefix.'districts:id',
    "desc" => 'Quản trị các quận huyện Việt Nam.'
);

$arrMenu[] = array("name" => trans('test'),
    "id" => 'test',
    "table" => $tbl_prefix.'test:id',
    "desc" => 'Test map.'
);
$admin_title = getAdminTitle($arrMenu);

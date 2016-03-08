<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class module_product extends Module {

    function module_product() {
        $this->file = 'product.html';
        parent::module();
    }

    function draw() {
        //var_dump($_REQUEST);
        global $skin, $title, $keywords, $description, $lang, $pathway;
        $xtpl = new XTemplate($this->tpl);
        $Product = new Product();
        $Category = new Category();
        $allProductCategory = $Category->getCatByType(2);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $con = " AND status = 1 ";

        // filter by category
        $cid = Input::get('cid', 'int', 0);
        $list_cid = '';
        if ($cid) {
            $list_cid = $Category->getListSubCategory($allProductCategory, $cid);
            $list_cid = trim($list_cid, ',');

            $title = $Category->getCategoryInfo($allProductCategory, $cid, 'name');
            $keywords = $Category->getCategoryInfo($allProductCategory, $cid, 'meta_keyword');
            $description = $Category->getCategoryInfo($allProductCategory, $cid, 'meta_description');
        } else {
            $title = $lang['product'];
            $keywords = $lang['product'];
            $description = $lang['product'];
        }

        $min = Input::get('min', 'int', 0);
        $max = Input::get('max', 'int', 0);
        if ($min >= 0 && $max > 0) {
            $con .= "AND price >= $min AND price <= $max ";
        }

        $type = Input::get('type', 'txt', '');

        if ($type == 'new' || $type == 'discount' || $type == 'bestsell' || $type == 'search' || $type == 'saleoff') {
            if ($list_cid) {
                $con .= " AND cat_id IN($list_cid) ";
            }
            switch ($type) {
                case "new":
                    $con .= " AND new = 1 ";
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Sản phẩm mới';
                    $title = $type_name;
                    break;

                case "bestsell":
                    $con .= " AND best_seller = 1 ";
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Sản phẩm bán chạy';
                    $title = $type_name;
                    break;

                case "discount":
                    $con .= " AND discount = 1 ";
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Sản phẩm giảm giá';
                    $title = $type_name;
                    break;


                case "saleoff":
                    $con .= " AND saleoff = 1 ";
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Sản phẩm khuyến mãi';
                    $title = $type_name;
                    break;


                case "search":
                    // keyword
                    $keyword = Input::get("keyword", "txt", "");
                    if ($keyword != "" && strtolower($keyword) != "tìm kiếm trên forbaby.vn") {
                        $con .= " AND ( `id` = '$keyword' OR `name` LIKE '%$keyword%' OR `description` LIKE '%$keyword%' ) ";
                    }
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Tìm kiếm';
                    $title = $type_name;
                    break;

                default:
                    $con = "";
                    $sort = 'ordering';
                    $order = 'DESC';
                    $type_name = 'Sản phẩm';
                    $title = $type_name;
                    break;
            }


            $pathway = array(
                0 => array(
                    'type' => '',
                    'link' => 'javascript:void(0)',
                    'name' => $title
                )
            );

            $p = Input::get("p", "int", 1);
            $total_row = $Product->count($con);
            $total_page = ceil($total_row / $Product->num_per_page);
            $paging = paging($p, $total_page, curPageURL());
            $list_product = $Product->getProduct($con, $sort, $order, $p);
            if (count($list_product) > 0 && $list_product) {
                $i = 0;
                $style_class = '';
                $html_cateogry_info = '<h2><a href="javascript:void(0)">' . $type_name . '</a></h2>';
                $html_cateogry_info .= '<ul class="grid first clearfix">';
                if ($type_name == 'Tìm kiếm' && $keyword != '') {
                    $html_cateogry_info = '<h1>Có ' . $total_row . ' kết quả phù hợp với từ khóa <span class="yellow">"' . $keyword . '"</span> của bạn</h1>';
                    $html_cateogry_info .= '<ul class="grid first clearfix">';
                }
                foreach ($list_product as $key => $value) {
                    if ($i % 4 == 0) {
                        $style_class = 'class="first"';
                    } else if (($i + 1) % 4 == 0) {
                        $style_class = 'class="last"';
                    } else {
                        $style_class = '';
                    }

                    $product_link = createLink('product_detail', array('id' => $value['id'], 'name' => $value['name']));
                    $product_thumb = base_url() . $value['thumb'];

                    $product_type_html = '';
                    if ($value['new']) {
                        $product_type_html = '<span class="new">new</span>';
                    }
                    if ($value['discount']) {
                        $product_type_html = '<span class="sales">sales</span>';
                    }

                    $html_cateogry_info .=
                            '<li ' . $style_class . '>
                        ' . $product_type_html . '
                        <a href="' . $product_link . '" title="' . $value['name'] . '">
                            <img src="' . $product_thumb . '" alt="' . $value['name'] . '" title="' . $value['name'] . '" />
                            <span>' . $value['name'] . '</span>
                        </a>
                        <span class="price">Giá: <b>' . formatPrice($value['price']) . '</b> VNĐ</span>
                    </li>';

                    if (($i + 1) % 4 == 0) {
                        $ul_class = "";
                        if (($i + 4) >= count($list_product)) {
                            $ul_class = "last";
                        }
                        $html_cateogry_info .= '</ul><ul class="grid ' . $ul_class . ' clearfix">';
                    }

                    $i++;
                }
                $xtpl->assign('html_cateogry_info', $html_cateogry_info);
            } else {
                $html_cateogry_info = '';
                if (Input::get('keyword') != '') {
                    $html_cateogry_info = '<h1>Không có kết quả nào phù hợp với từ khóa <span class="yellow">"' . $keyword . '"</span> của bạn</h1>';
                }

                $xtpl->assign('html_cateogry_info', $html_cateogry_info);
                $xtpl->assign('dpl2', 'none');
            }




            $xtpl->assign('paging', $paging);
            $xtpl->parse('main.category');
        } else if ((string) $list_cid == (string) $cid) { // danh muc cap thap nhat        
            $con .= " AND cat_id = " . $cid;

            $Product->num_per_page = 20;
            $p = Input::get("p", "int", 1);
            $total_row = $Product->count($con);
            $total_page = ceil($total_row / $Product->num_per_page);
            $paging = paging($p, $total_page, curPageURL());


            $category_name = $Category->getCategoryInfo($allProductCategory, $cid, 'name');
            $category_link = createLink('product', array('cid' => $cid, 'name' => $category_name));

            $link_sort_abc = createLink('product', array('cid' => $cid, 'name' => $category_name)) . "&sort=az";
            $link_sort_new = createLink('product', array('cid' => $cid, 'name' => $category_name)) . "&sort=newest";
            $link_sort_priceup = createLink('product', array('cid' => $cid, 'name' => $category_name)) . "&sort=price_up";
            $link_sort_pricedown = createLink('product', array('cid' => $cid, 'name' => $category_name)) . "&sort=price_down";
            $link_sort_discount = createLink('product', array('cid' => $cid, 'name' => $category_name)) . "&sort=discount";
            $html_cateogry_info = '<div class="filter clearfix">                    
                    <div class="sortData">
                        <b>Sắp xếp theo:</b>
                        <a href="' . $link_sort_abc . '">A - Z</a>
                        <a href="' . $link_sort_new . '">Mới nhất</a>
                        <a href="' . $link_sort_priceup . '">Giá tăng dần</a>
                        <a href="' . $link_sort_pricedown . '">Giá giảm dần</a>
                        <a href="' . $link_sort_discount . '">Hàng giảm giá</a>
                        <div class="result">Có <b>' . $total_row . '</b> kết quả tương ứng</div>
                    </div>
                    
                </div>';

            $html_cateogry_info .=
                    '<a href="' . $category_link . '" class="more"><span>Xem thêm</span></a>
                     <h2><a href="' . $category_link . '">' . $category_name . '</a></h2>';




            $order = Input::get('order', 'txt', 'DESC');
            $sort = Input::get('sort', 'txt', 'ordering');

            $sort_type = Input::get('sort', 'txt', '');
            switch ($sort) {
                case "az":
                    $sort = 'name';
                    $order = 'ASC';
                    break;

                case "newest":
                    $sort = 'id';
                    $order = 'DESC';
                    break;

                case "price_down":
                    $sort = 'price';
                    $order = 'DESC';
                    break;

                case "price_up":
                    $sort = 'price';
                    $order = 'ASC';
                    break;

                default:
                    $sort = 'ordering';
                    $order = 'DESC';
                    break;
            }

            //var_dump($con);           
            $list_product = $Product->getProduct($con, $sort, $order, $p);
            if (count($list_product) > 0 && $list_product) {

                $i = 0;
                $style_class = '';
                $html_cateogry_info .= '<ul class="grid first clearfix">';
                foreach ($list_product as $key => $value) {

                    if ($i % 4 == 0) {
                        $style_class = 'class="first"';
                    } else if (($i + 1) % 4 == 0) {
                        $style_class = 'class="last"';
                    } else {
                        $style_class = '';
                    }

                    $product_link = createLink('product_detail', array('id' => $value['id'], 'name' => $value['name']));
                    $product_thumb = base_url() . $value['thumb'];

                    $product_type_html = '';
                    if ($value['new']) {
                        $product_type_html = '<span class="new">new</span>';
                    }
                    if ($value['discount']) {
                        $product_type_html = '<span class="sales">sales</span>';
                    }

                    $html_cateogry_info .=
                            '<li ' . $style_class . '>
                        ' . $product_type_html . '
                        <a href="' . $product_link . '" title="' . $value['name'] . '">
                            <img src="' . $product_thumb . '" alt="' . $value['name'] . '" title="' . $value['name'] . '" />
                            <span>' . $value['name'] . '</span>
                        </a>
                        <span class="price">Giá: <b>' . formatPrice($value['price']) . ' ₫</b></span>
                    </li>';

                    if (($i + 1) % 4 == 0) {
                        $ul_class = "";
                        if (($i + 4) > count($list_product)) {
                            $ul_class = "last";
                        }

                        $html_cateogry_info .= '</ul><ul class="grid ' . $ul_class . ' clearfix">';
                    }

                    $i++;
                }
            } else {
                $html_cateogry_info = '';
                $xtpl->assign('dpl', 'none');
            }


            $xtpl->assign('html_cateogry_info', $html_cateogry_info);
            $xtpl->assign('paging', $paging);

            $xtpl->parse('main.category');


            $parent_cat = $Category->getParentCat($allProductCategory, $cid);
            $pparent_cat = $Category->getParentCat($allProductCategory, $parent_cat['id']);
            if (count($pparent_cat) > 0 && $pparent_cat) {
                $wft = array(
                    'type' => 'link',
                    'link' => createLink('product', array('cid' => $pparent_cat['id'], 'name' => $pparent_cat['name'])),
                    'name' => $pparent_cat['name']
                );
                $pathway[] = $wft;
            }
            if (count($parent_cat) > 0 && $parent_cat) {
                $wft = array(
                    'type' => 'link',
                    'link' => createLink('product', array('cid' => $parent_cat['id'], 'name' => $parent_cat['name'])),
                    'name' => $parent_cat['name']
                );
                $pathway[] = $wft;
            }
            $wft = array(
                'type' => '',
                'link' => 'javascript:void(0)',
                'name' => $category_name
            );
            $pathway[] = $wft;
        } else {
            $subCat = $Category->getSubCat($allProductCategory, $cid);
            foreach ($subCat as $key => $value) {
                $con = '';
                $category_link = createLink('product', array('cid' => $value['id'], 'name' => $value['name']));
                $html_cateogry_info = '<a href="' . $category_link . '" class="more"><span>Xem thêm</span></a>
                     <h2><a href="' . $category_link . '">' . $value['name'] . '</a></h2>';

                $list_sub_c = $Category->getListSubCategory($allProductCategory, $value['id']);
                $list_sub_c = trim($list_sub_c, ',');
                $con = " AND status = 1 AND cat_id IN ($list_sub_c) ";


                $Product->num_per_page = 4;
                $arrProduct = $Product->getProduct($con, 'ordering', 'desc', 1);

                if (count($arrProduct) > 0 && $arrProduct) {
                    $i = 0;
                    $style_class = '';
                    foreach ($arrProduct as $key => $value) {

                        if ($i == 0) {
                            $style_class = 'class="first"';
                        } else if ($i == 3) {
                            $style_class = 'class="last"';
                        }
                        $i++;

                        $xtpl->assign('style_class', $style_class);

                        $product_type_html = '';
                        if ($value['new']) {
                            $product_type_html = '<span class="new">new</span>';
                        }
                        if ($value['discount']) {
                            $product_type_html = '<span class="sales">sales</span>';
                        }

                        $xtpl->assign('product_type_html', $product_type_html);


                        $product_link = createLink('product_detail', array('id' => $value['id'], 'name' => $value['name']));
                        $xtpl->assign('product_link', $product_link);

                        $product_thumb = base_url() . $value['thumb'];
                        $xtpl->assign('product_thumb', $product_thumb);
                        $xtpl->assign('product_name', $value['name']);

                        $xtpl->assign('product_price', formatPrice($value['price']));

                        $xtpl->assign('dpl', '');
                        $xtpl->parse('main.category.product');
                    }
                } else {
                    $xtpl->assign('html_cateogry_info', '');
                    $html_cateogry_info = '';
                    $xtpl->assign('dpl', 'none');
                }
                $xtpl->assign('html_cateogry_info', $html_cateogry_info);
                $xtpl->parse('main.category');
            }


            $category_name = $Category->getCategoryInfo($allProductCategory, $cid, 'name');
            $parent_cat = $Category->getParentCat($allProductCategory, $cid);
            $pparent_cat = $Category->getParentCat($allProductCategory, $parent_cat['id']);
            if (count($pparent_cat) > 0 && $pparent_cat) {
                $wft = array(
                    'type' => 'link',
                    'link' => createLink('product', array('cid' => $pparent_cat['id'], 'name' => $pparent_cat['name'])),
                    'name' => $pparent_cat['name']
                );
                $pathway[] = $wft;
            }
            if (count($parent_cat) > 0 && $parent_cat) {
                $wft = array(
                    'type' => 'link',
                    'link' => createLink('product', array('cid' => $parent_cat['id'], 'name' => $parent_cat['name'])),
                    'name' => $parent_cat['name']
                );
                $pathway[] = $wft;
            }
            $wft = array(
                'type' => '',
                'link' => 'javascript:void(0)',
                'name' => $category_name
            );
            $pathway[] = $wft;
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
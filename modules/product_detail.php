<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class product_detail extends Module {

    function product_detail() {
        $this->file = 'product_detail.html';
        parent::module();
    }

    function remove_numbers($string) {
        $vowels = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
        $string = str_replace($vowels, '', $string);
        return trim($string);
    }

    function draw() {
        global $skin, $title, $keywords, $description, $pathway;
        $xtpl = new XTemplate($this->tpl);
        $Category = new Category();
        $Product = new Product();
        $ProductImages = new ProductImages();



        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $id = Input::get('id', 'int', 0);
        if ($id) {

            $xtpl->assign('link_help_dathang', createLink('news_detail', array('id' => 88, 'title' => "tro giup dat hang")));
            $xtpl->assign('link_help_thanhtoan', createLink('news_detail', array('id' => 89, 'title' => "tro giup thanh toan")));
            $xtpl->assign('cur_link', curPageURL());
            $xtpl->assign('cur_page', curPageURL());

            $allCat = $Category->getCatByType(2);
            $Product->read($id);
            $Product->hits($id);
            $cat_id = $Product->cat_id;

            $product_name = $Product->name;
            $category_name = $Category->getCategoryInfo($allCat, $cat_id, 'name');
            $xtpl->assign('category_name', $category_name);
            $xtpl->assign('name', $Product->name);

            if ($Product->code != '') {
                $xtpl->assign('product_code', $Product->code);
            } else {
                $xtpl->assign('dpl_product_code', 'none');
            }


            $xtpl->assign('id', $id);

            $price = formatPrice($Product->price);
            $xtpl->assign('price', $price);
            $price_promotion = $Product->price_promotion;
            if ($price_promotion > 0) {
                $xtpl->assign('class_price', 'old-price');
                $price_promotion = formatPrice($price_promotion);
                $xtpl->assign('price_promotion', $price_promotion);
            } else {
                $xtpl->assign('dpl_km', 'none');
                $xtpl->assign('class_price', 'price');
            }


            $persent_off = round($price - $price_promotion) * 100 / $price;
            $xtpl->assign('persent_off', $persent_off);

            $in_stock = ($Product->in_stock == 1) ? 'Còn hàng' : 'Hết hàng';
            $xtpl->assign('in_stock', $in_stock);
            $xtpl->assign('description', $Product->description);

            $specifications = explode(',', trim($Product->specifications));

            $html_specifications = '';
            if ($specifications && count($specifications > 0)) {
                foreach ($specifications as $row) {
                    if ($row != '') {
                        $row = explode(':', $row);
                        $html_specifications .= '<tr><td class="col1">' . $row['0'] . '</td>';
                        $html_specifications .= '<td class="col2">' . $row['1'] . '</td></tr>';
                    }
                }
            }

            $xtpl->assign('specifications', $html_specifications);


            if ($Product->other_info) {
                $other_info = '<li><h3>Thông tin thêm</h3></li><li>' . $Product->other_info . '.</li>';
                $xtpl->assign('other_info', $other_info);
            }

            $xtpl->assign('hits', $Product->hits);
            $xtpl->assign('date', date('d/m/Y', strtotime($Product->date)));
            $xtpl->assign('product_id', $Product->id);

            $xtpl->assign('link_add_cart', createLink('cart', array('pid' => $Product->id, 'number' => 1)));

            // share  social net word           
            $xtpl->assign('link_share_facebook', 'https://www.facebook.com/share.php?src=bm&u=' . curPageURL());
            $xtpl->assign('link_share_twitter', 'http://twitter.com/home/?status=' . curPageURL() . '<--' . $Product->name);
            $xtpl->assign('link_share_google', 'http://www.google.com/bookmarks/mark?op=edit&bkmk=' . curPageURL() . '&title=' . $Product->name);


            $listProductImages = $ProductImages->getProductImage($id);
            $listProductImages = $listProductImages[$id];
            if (count($listProductImages) > 0) {
                $i = 0;
                $img300 = base_url() . getSmallImages($listProductImages[0]['images'], 'thumb300');
                $img = base_url() . $listProductImages[0]['images'];
                $xtpl->assign('img300', $img300);
                $xtpl->assign('images', $img);

                if (count($listProductImages) > 1) {
                    foreach ($listProductImages as $key => $value) {
                        if ($i == 0) {
                            $xtpl->assign('class', 'class="first"');
                            $xtpl->assign('active', 'active');
                        } else {
                            $xtpl->assign('class', '');
                            $xtpl->assign('active', '');
                        }

                        $xtpl->assign('thumb', base_url() . getSmallImages($value['images'], 'thumb'));
                        $xtpl->assign('thumb50', base_url() . getSmallImages($value['images'], 'thumb50'));
                        $xtpl->assign('img_full', base_url() . $value['images']);
                        $xtpl->parse('main.images');
                        $i++;
                    }
                }
            }


            // other product
            $cid = $Product->cat_id;
            $con = " AND status = 1 AND cat_id = $cid AND id != $id ";
            $Product->num_per_page = 5;
            $otherProduct = $Product->getProduct($con, 'ordering', 'desc', 1);
            if (count($otherProduct) > 0) {
                foreach ($otherProduct as $key => $value) {
                    $link_other = createLink('product_detail', array('id' => $value['id'], 'name' => $value['name']));
                    $xtpl->assign('link_other', $link_other);

                    $xtpl->assign('name_other', $value['name']);

                    $thumb_other = base_url() . $value['thumb'];
                    $xtpl->assign('thumb_other', $thumb_other);

                    $price_other = formatPrice($value['price']);
                    $xtpl->assign('price_other', $price_other);

                    $xtpl->parse('main.other_product');
                }
                $xtpl->assign('link_more', createLink('product', array('cid' => $cid, 'name' => 'san pham khac')));
            }


            // product commment
            $Comment = new Comment();
            $Comment->num_perpage = 10;
            $listComment = $Comment->getComment($id, 2, 'id');
            if (count($listComment) > 0) {
                foreach ($listComment as $key => $value) {
                    $xtpl->assign('title', $value['title']);
                    $xtpl->assign('username', $value['username']);
                    $xtpl->assign('date', date('H:i d/m/Y', strtotime($value['date'])));
                    $xtpl->assign('content', $value['content']);
                    $xtpl->parse('main.comment');
                }
            } else {
                $xtpl->assign('none_comment', '<p style="color:red"><em>Hãy là người đầu tiên nhận xét về sản phẩm này...</em></p>');
            }



            $category_name = $this->remove_numbers($category_name);
            $product_name = $this->remove_numbers($product_name);
            $miniNew = new News();
            $miniNew->num_per_page = 6;
            $news_lienquan = $miniNew->getNews("AND status = 1 AND (`title` LIKE '%$category_name%' OR `title` LIKE '%$product_name%')", 'rand()', 'desc', 1);
            if ($news_lienquan && count($news_lienquan) > 0) {
                foreach ($news_lienquan as $k => $v) {
                    $xtpl->assign('title_lienquan', $v['title']);
                    $xtpl->assign('link_detail_lienquan', createLink('news_detail', array('id' => $v['id'], 'title' => $v['title'])));
                    $xtpl->parse('main.news');
                }
            } else {
                $xtpl->assign('none_newlienquan', 'none');
            }




            $title = ($Product->meta_title != '') ? $Product->meta_title : $Product->name;
            $keywords = $Product->meta_keyword;
            $description = $Product->meta_description;
        }



        $allCat = $Category->getCatByType(2);
        $cid = $Product->cat_id;
        $category_name = $Category->getCategoryInfo($allCat, $cid, 'name');
        $parent_cat = $Category->getParentCat($allCat, $cid);
        $pparent_cat = $Category->getParentCat($allCat, $parent_cat['id']);
        $ppparent_cat = $Category->getParentCat($allCat, $pparent_cat['id']);

        if (count($ppparent_cat) > 0 && $ppparent_cat) {
            $wft = array(
                'type' => 'link',
                'link' => createLink('product', array('cid' => $ppparent_cat['id'], 'name' => $ppparent_cat['name'])),
                'name' => $ppparent_cat['name']
            );
            $pathway[] = $wft;
        }
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
            'type' => 'link',
            'link' => createLink('product', array('cid' => $cid, 'name' => $category_name)),
            'name' => $category_name
        );
        $pathway[] = $wft;

        $wft = array(
            'type' => '',
            'link' => 'javascript:void(0)',
            'name' => $Product->name
        );
        $pathway[] = $wft;

        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
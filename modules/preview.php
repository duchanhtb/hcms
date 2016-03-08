<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class preview extends Module {

    function preview() {
        $this->file = 'preview.html';
        parent::module();
    }

    function draw() {
        global $skin, $title, $keywords, $description;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $id = Input::get('id', 'int', 0);
        if ($id) {
            $Product = new Product();
            $Product->read($id);
            $title = $Product->name;
            $keywords = $Product->meta_keyword;
            $description = $Product->meta_description;

            $ProductImages = new ProductImages();
            $listProductImages = $ProductImages->getProductImage($id);
            $listProductImages = $listProductImages[$id];

            $start = Input::get('start', 'int', 0);
            $img = $listProductImages[$start]['images'];
            $xtpl->assign('img', base_url() . $img);
            $xtpl->assign('name', $Product->name);

            foreach ($listProductImages as $key => $value) {
                $xtpl->assign('thumb', base_url() . getSmallImages($value['images'], 'thumb300'));
                $xtpl->assign('link', createLink('preview', array('id' => $id, 'name' => $Product->name, 'start' => $key)));
                $xtpl->parse('main.thumb');
            }

            $xtpl->assign('link_back', createLink('service', array('cid' => $Product->cat_id, 'name' => $Product->name)));
        }

        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
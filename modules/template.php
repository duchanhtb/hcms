<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class template extends Module {

    function template() {
        $this->file = 'template.html';
        parent::module();
    }

    function draw() {
        global $skin, $title, $keywords, $description;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $left_service = loadmodule('module_left_service');
        $xtpl->assign('left_service', $left_service);

        $left_support = loadmodule('module_left_support');
        $xtpl->assign('left_support', $left_support);

        $id = Input::get('id', 'int', 0);
        if ($id) {
            $Product = new Product();
            $Product->hits($id);
            $Product->read($id);

            $ProductImages = new ProductImages();
            $listProductImages = $ProductImages->getProductImage($id);
            $listProductImages = $listProductImages[$id];

            //var_dump($listProductImages);
            $xtpl->assign('name', $Product->name);
            $xtpl->assign('code', $Product->code);
            $xtpl->assign('img', base_url() . $listProductImages[0]['images']);
            $xtpl->assign('price', formatPrice($Product->price));
            $xtpl->assign('link_demo', base_url());
            $xtpl->assign('link_images', createLink('preview', array('id' => $id, 'name' => $Product->name)));
            $xtpl->assign('features', $Product->features);
            $xtpl->assign('description', $Product->description);

            $title = ($Product->meta_title != '') ? $Product->meta_title : $Product->name;
            $keywords = $Product->meta_keyword;
            $description = $Product->meta_description;
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}
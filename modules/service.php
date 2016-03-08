<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class service extends Module {

    function service() {

        $cid = Input::get('cid', 'int', 0);
        if ($cid > 0) {
            $this->file = 'list_service.html';
        } else {
            $this->file = 'service.html';
        }

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

        $cid = Input::get('cid', 'int', 0);
        if ($cid > 0) {
            $Category = new Category();
            $Category->read($cid);
            $xtpl->assign('category_name', $Category->name);
            $title = $Category->name;
            $keywords = $Category->meta_keyword;
            $description = $Category->meta_description;

            $Product = new Product();
            $Product->num_per_page = 9;
            $p = Input::get('p', 'int', 1);
            //$start = ($p-1)*($Product->num_per_page);
            $arrTpl = $Product->getProduct('AND status = 1 AND cat_id = ' . $cid, 'ordering', 'desc', $p);
            foreach ($arrTpl as $key => $value) {
                $link_detail = createLink('template', array('id' => $value['id'], 'name' => $value['name']));
                $xtpl->assign('link_detail', $link_detail);
                $xtpl->assign('img', base_url() . $value['thumb300']);
                $xtpl->assign('name', $value['name']);
                $xtpl->parse('main.tpl');
            }
        } else {
            
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
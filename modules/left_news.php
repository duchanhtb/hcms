<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class left_news extends Module {

    function left_news() {
        $this->file = 'left_news.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $this->table = 't_news_category';
        $allCat = $this->get('*', 'AND status = 1 ', 'ordering DESC');
        $cid = Input::get('cid', 'int', 0);
        foreach ($allCat as $key => $value) {
            $xtpl->assign('link', createLink('news', array('cid' => $value['id'], 'name' => $value['name'])));
            $xtpl->assign('name', $value['name']);
            if ($value['id'] == $cid) {
                $xtpl->assign('clss', 'class="active"');
            } else {
                $xtpl->assign('clss', '');
            }
            $xtpl->parse('main.cat');
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

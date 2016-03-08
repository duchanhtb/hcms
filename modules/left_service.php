<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class left_service extends Module {

    function left_service() {
        $this->file = 'left_service.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $cid = Input::get('cid', 'int', 0);
        $Category = new Category();
        $allCat = $Category->getAll();

        foreach ($allCat as $key => $value) {
            if ($value['parent_id'] != 0)
                continue;
            $xtpl->assign('link', createLink('service', array('cid' => $value['id'], 'name' => $value['name'])));
            $xtpl->assign('name', $value['name']);

            foreach ($allCat as $k => $v) {
                if ($v['parent_id'] == $value['id']) {
                    $xtpl->assign('sub_link', createLink('service', array('cid' => $v['id'], 'name' => $v['name'])));
                    $xtpl->assign('sub_name', $v['name']);

                    if ($v['id'] == $cid) {
                        $xtpl->assign('clss', 'class="active"');
                    } else {
                        $xtpl->assign('clss', '');
                    }
                    $xtpl->parse('main.cat.sub');
                }
            }
            $xtpl->parse('main.cat');
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

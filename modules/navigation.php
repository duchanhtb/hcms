<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class navigation extends Module {

    function navigation() {
        $this->file = 'navigation.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $page = Input::get('page', 'txt', '');
        if ($page == '' || $page == 'home') {
            $xtpl->assign('active_home', 'class="active"');
        }

        $xtpl->assign('link_spdv', createLink('service'));
        if ($page == 'service') {
            $xtpl->assign('active_spdv', 'class="active"');
        }

        $xtpl->assign('link_news', createLink('news'));
        if ($page == 'news' || $page == 'news_detail') {
            $xtpl->assign('active_news', 'class="active"');
        }

        $xtpl->assign('link_duan', createLink('project'));
        if ($page == 'project') {
            $xtpl->assign('active_project', 'class="active"');
        }


        $xtpl->assign('link_intro', createLink('aboutus'));
        if ($page == 'aboutus') {
            $xtpl->assign('active_aboutus', 'class="active"');
        }

        $xtpl->assign('link_contact', createLink('contact'));
        if ($page == 'contact') {
            $xtpl->assign('active_contact', 'class="last active"');
        } else {
            $xtpl->assign('active_contact', 'class="last"');
        }

        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

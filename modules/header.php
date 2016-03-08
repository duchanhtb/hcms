<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class header extends Module {

    function header() {
        $this->file = 'header.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $xtpl->assign('hotline', get_option('hotline'));
        $xtpl->assign('link_news', createLink('news'));
        $xtpl->assign('link_partner', createLink('partner'));
        $xtpl->assign('link_dealer', createLink('dealer'));
        $xtpl->assign('link_recruitment', createLink('recruitment'));

        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

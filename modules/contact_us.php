<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class contact_us extends Module {

    function contact_us() {
        $this->file = 'contact_us.html';
        parent::module();
    }

    function draw() {
        global $skin, $title, $keywords, $description, $pathway;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $xtpl->assign('address', get_option('address'));
        $xtpl->assign('hotline', get_option('hotline'));
        $xtpl->assign('email', get_option('email'));
        $xtpl->assign('tel', get_option('tel'));
        $xtpl->assign('fax', get_option('fax'));
        $xtpl->assign('time_work', get_option('time_work'));
        $xtpl->assign('rand', rand(1, 100));

        $title = 'Thông tin liên hệ';
        $description = $keywords = "Liên hệ với chúng tôi";

        $pathway = array(
            0 => array(
                'type' => '',
                'link' => 'javascript:void(0)',
                'name' => 'Thông tin liên  hệ'
            )
        );

        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
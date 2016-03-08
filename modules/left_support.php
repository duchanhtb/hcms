<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class left_support extends Module {

    function left_support() {
        $this->file = 'left_support.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $yahoo = get_option('yahoo');
        $yahoo = explode(',', $yahoo);
        foreach ($yahoo as $value) {
            $value = trim($value);
            $info = explode(':', $value);
            $xtpl->assign('yahoo_name', trim($info[0]));
            $xtpl->assign('yahoo_nick', trim($info[1]));
            $xtpl->parse('main.yahoo');
        }

        $skype = get_option('skype');
        $skype = explode(',', $skype);
        foreach ($skype as $value) {
            $value = trim($value);
            $info = explode(':', $value);
            $xtpl->assign('skype_name', trim($info[0]));
            $xtpl->assign('skype_nick', trim($info[1]));
            $xtpl->parse('main.skype');
        }


        $phone = get_option('phone');
        $phone = explode(',', $phone);
        foreach ($phone as $value) {
            $value = trim($value);
            $info = explode(':', $value);
            $xtpl->assign('phone_name', trim($info[0]));
            $xtpl->assign('phone_num', trim($info[1]));
            $xtpl->parse('main.phone');
        }

        $xtpl->assign('email', get_option('email'));

        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

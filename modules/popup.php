<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class popup extends Module {

    function popup() {
        $this->file = 'popup.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);



        global $_SESSION;
        $show_popup = isset($_SESSION['popup']) ? $_SESSION['popup'] : NULL;
        if ($show_popup == NULL && count($popup) > 0) {
            $popup = $popup[0];
            $xtpl->assign('img', base_url() . $popup['img']);
            $xtpl->assign('link', $popup['link']);
            $xtpl->assign('name', $popup['name']);

            $_SESSION['popup'] = 1;
        } else {
            return '';
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class dichvu extends Module {

    function dichvu() {
        $this->file = 'dichvu.html';
        parent::module();
    }

    function draw() {
        global $skin, $title, $keywords, $description, $pathway;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);


        $module_file = ROOT_PATH . '/modules/module_left_category.php';
        if (file_exists($module_file)) {
            include_once($module_file);
            $module = new module_left_category();
            $left_category = $module->draw();
            $xtpl->assign('left', $left_category);
        }


        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
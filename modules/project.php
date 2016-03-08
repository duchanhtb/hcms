<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class project extends Module {

    function project() {
        $this->file = 'project.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $this->table = 't_project';
        $con = 'AND status = 1';
        $this->num_per_page = 15;
        $p = Input::get('p', 'int', 1);
        $total_row = $this->count($con);
        $total_page = ceil($total_row / $this->num_per_page);
        $paging = paging($p, $total_page, curPageURL());
        $xtpl->assign('paging', $paging);

        $start = ($p - 1) * ($this->num_per_page);
        $num_get = $this->num_per_page;

        $project = $this->get('*', $con, 'ordering DESC', $start, $num_get);
        foreach ($project as $key => $value) {
            $xtpl->assign('link', $value['link']);
            $xtpl->assign('name', $value['name']);
            $xtpl->assign('img', base_url() . $value['img']);
            $xtpl->parse('main.project');
        }

        $xtpl->parse('main');
        return $xtpl->out('main');
    }
}
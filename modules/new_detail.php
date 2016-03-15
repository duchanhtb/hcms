<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class new_detail extends Module {

    function new_detail() {
        $this->tpl = 'new_detail.html';
        parent::module();
    }

    function draw() {

        addTitle('Danh sách tin tức');
        addDescription('Hệ thống quản trị nội dung HCMS');

        $id = Input::get('id', 'int', '');
        if ($id) {
            $table_name = 't_news';
            $newDetail = DB::for_table($table_name)
                    ->where_equal('id', $id)
                    ->find_one();
            
            $this->xtpl->assign('title', $newDetail->title);
            $this->xtpl->assign('content', $newDetail->content);
            $this->xtpl->assign('date', date('H:i d/m/Y', strtotime($newDetail->date_created)));
        }


        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

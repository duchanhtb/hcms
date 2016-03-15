<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class module_home extends Module {

    function module_home() {
        $this->tpl = 'home.html';
        parent::module();
    }

    function draw() {
        
        
        addTitle('Danh sách tin tức');        
        addDescription('Hệ thống quản trị nội dung HCMS');
        
        $table_name = 't_news';
        $listNews = DB::for_table($table_name)->find_many();
        foreach($listNews as $new){
            $this->xtpl->assign('title', $new->title);
            $this->xtpl->assign('img', getThumbnail('thumb-150', $new->img));
            $this->xtpl->assign('brief', $new->brief);
            $this->xtpl->assign('link', createLink('chi-tiet', array('id' => $new->id, 'title' => $new->title)));
            $this->xtpl->parse('main.new');
        }
        
        
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

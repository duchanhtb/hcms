<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class news_detail extends Module {

    function __construct() {
        $this->tpl = 'new_detail.html';
        parent::__construct();
    }

    
    /**     
     * @desc render html module
     */
    function draw() {        
        $id = Input::get('id', 'int', '');
        if ($id) {
            $table_name = 't_news';
            $newDetail = DB::for_table($table_name)
                    ->where_equal('id', $id)
                    ->find_one();
            
            $this->xtpl->assign('title', $newDetail->title);
            $this->xtpl->assign('content', $newDetail->content);
            $this->xtpl->assign('date', date('H\h:i - d/m/Y', strtotime($newDetail->date_created)));
            
            addTitle($newDetail->title);
            addDescription($newDetail->brief);
            
            // update hits view
            $newDetail->set('hits', $newDetail->hits + 1);
            $newDetail->save();
        }


        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

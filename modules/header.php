<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class header extends Module {

    function __construct() {
        $this->tpl = 'header.html';
        parent::__construct();
    }

    
    /**     
     * @desc render html module
     */
    function draw() {
        $page = Input::get('page', 'txt', '');
        if($page == 'tin-tuc' || $page == 'chi-tiet'){
            $this->xtpl->assign('active_tt', 'active');
        }else{
            $this->xtpl->assign('active_sp', 'active');
        }
        register_style('main-css', $this->skin_path.'assets/css/main.css?='.rand());
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

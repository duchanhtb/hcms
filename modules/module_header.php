<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class module_header extends Module {

    function __construct() {
        $this->tpl = 'header.html';
        parent::module();
    }

    
    /**     
     * @desc render html module
     */
    function draw() {
        register_style('main-css', $this->skin_path.'assets/css/main.css');
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

}

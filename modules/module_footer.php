<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class module_footer extends Module {

    function __construct() {
        $this->tpl = 'footer.html';
        parent::module();
    }

    
    /**     
     * @desc render html module
     */
    function draw() {
        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
}
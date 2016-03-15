<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class module_footer extends Module {

    function module_footer() {
        $this->tpl = 'footer.html';
        parent::module();
    }

    function draw() {        
        

        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }
}
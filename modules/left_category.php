<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc module list html of introduction
 */
class left_category extends Module {

    function left_category() {
        $this->file = 'left_category.html';
        parent::module();
    }

    function draw() {
        global $skin;
        $xtpl = new XTemplate($this->tpl);

        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

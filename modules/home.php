<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class home extends Module {

    function home() {
        $this->file = 'home.html';
        parent::module();
    }

    function draw() {
        $xtpl = new XTemplate($this->tpl);

        $xtpl->parse('main');
        return $xtpl->out('main');
    }

}

<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class Module extends Base {

    var $file = '';
    var $tpl = '';
    
    function module() {
        global $skin;
        $this->tpl = SKIN_FOLDER . "/" . $skin . "/" . MODULE_FOLDER . "/" . $this->file;
    }

}

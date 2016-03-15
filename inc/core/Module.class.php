<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class Module extends Base {

    var $tpl;
    var $xtpl;
    var $skin_path;
    var $skin_url;
    var $link_home;
    var $base_url;
    
    function module() {
        global $skin;
        $tpl_path = SKIN_FOLDER . "/" . $skin . "/" . MODULE_FOLDER . "/" . $this->tpl;
        
        $this->skin_url = $this->skin_path = base_url().SKIN_FOLDER.'/'.$skin.'/';
        $this->link_home = $this->base_url = base_url();                
        
        $this->xtpl = new XTemplate($tpl_path);
        
        $arrAssignReplace = array(
            'skin_url' => $this->skin_url,
            'skin_path' => $this->skin_path,
            'link_home' => base_url(),
            'base_url'  => base_url()
        );
        
        foreach($arrAssignReplace as $key=>$value){
            $this->xtpl->assign($key, $value);
        }
    }

}

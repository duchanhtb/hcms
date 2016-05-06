<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc render html for admin
 */
class CmsAdmin {

    /**
     * @desc construct function
     * @param nothing
     * @return nothing
     */
    function __construct() {

        /* main style for admin
          ------------------------------------------------- */
        admin_register_style('main-style', admin_url() . 'css/style.css');

        /* sticky images tooltip
          ------------------------------------------------- */
        admin_register_style('sticky-tooltip', admin_url() . 'css/stickytooltip.css');



        /* main jquery
          ------------------------------------------------- */
        admin_register_script('jquery', admin_url() . 'js/jquery-2.2.3.js');

        /* lazy load
          ------------------------------------------------- */
        admin_register_script('lazyload', admin_url() . 'js/jquery.lazyload.js', false, true);

        /* tooltip for left menu
          ------------------------------------------------- */
        admin_register_script('tooltip', admin_url() . 'js/tooltip.js', false, true);

        /* language
          ------------------------------------------------- */
        admin_register_script('language', admin_url() . 'js/lang.php', false, true);

        /* Sticky tooltip
          ------------------------------------------------- */
        admin_register_script('stickytooltip', admin_url() . 'js/stickytooltip.js', false, true);

        
        /* jquery.browser
          ------------------------------------------------- */
        admin_register_script('jquery-browser', admin_url() . 'js/jquery.browser.min.js', false, true);
        
        /* Main custom js
          ------------------------------------------------- */
        admin_register_script('main-script', admin_url() . 'js/main.js', false, true);

        //admin_register_style('simple-modal',admin_url().'css/basic.css');
        //admin_register_script('simplemodal',admin_url().'js/jquery.simplemodal.js');
    }

    /**
     * @desc main function
     * @param nothing
     * @return nothing
     */
    function run() {
        
        $content = $this->adminContent();
        
        // render debug bar if CMS_DEBUG is true
        $this->adminDebug();
        
        $header = $this->adminHeader();
        $footer = $this->adminFooter();

        echo $header . $content . $footer;
    }

    /**
     * @desc render html header
     * @param nothing
     * @return nothing
     */
    function adminHeader() {
        return admin_header();
    }

    
    /**
     * @desc render html footer
     * @param nothing
     * @return nothing
     */
    function adminFooter() {
        return admin_footer();
    }

    
    /**
     * @desc render html content
     * @param nothing
     * @return nothing
     */
    function adminContent() {
        $html_last_login = '';

        if (isset($_SESSION['admin']['last_login_time']) && $_SESSION['admin']['last_login_time'] != '') {
            $html_last_login = ', ' . trans('last_login') . ': ' . date('H:i:s - d/m/Y', strtotime($_SESSION['admin']['last_login_time']));
        }
        $code_php_info = md5('HCMS' . date('Y-m-d H', time()));
        $html = '
        <div class="quick_menu">
            <span class="phpinfo"><a href="phpinfo.php?code=' . $code_php_info . '" target="_blank"><img title="phpinfo" alt="phpinfo" src="images/info-icon-16x16.png"></a></span>
            <span class="time_server">' . trans('server_time') . ': <span id="cms_clock" class="txt_time cms_clock" title="H:i:s">hh:mm:ss</span> - <span class="txt_time" title="d/m/Y">' . date('d/m/Y', time()) . '</span></span>
            ' . trans('hello') . ':&nbsp;
            <strong>' . $_SESSION['admin']['name'] . '</strong>' . $html_last_login . ' &nbsp; | <a href="index.php?f=changepass">' . trans('change_password') . '</a> | <a href="logout.php" onClick="return confirm(\'' . trans('confirm_logout') . '\');">' . trans('logout') . '</a>
        </div>';

        $html .= '
        <table width="100%">
        <tbody>
        <tr>
            <td width="150" valign="top" class="menu" align="center">
                <div class="nav">
        	        <ol style="text-align:left;">
        	            ' . show_admin_menu() . '
        	        </ol>
                </div>
            </td>
            <td class="content main_content_panel" valign="top">
            	' . show_admin_content() . '
            </td>
        </tr>
        </tbody>
        </table>';

        return $html;
    }
    
    
    /**
     * @desc render Debug Bar html
     * @param nothing
     * @return nothing
     */
    function adminDebug(){
        if(CMS_DEBUG){
            include(ROOT_PATH.'debug.php');
        }
    }

}

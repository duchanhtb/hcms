<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 * @desc class core of HCMS
 */

/**
 * @Desc class core of HCMS 
 * @return 
 */
class cms {

    var $skin;
    var $default_page;
    var $title;
    var $description;
    var $keywords;

    /**
     * @Desc construct function
     * @return 
     */
    function cms() {
        global $skin, $layout;
        $this->skin = $skin;
        $this->layout = $layout;
        $this->default_page = 'home';
        self::cms_rewrite();
    }

    /**
     * @Desc CMS may have many skin, this function get skin is using
     * @return string: name of the skin
     */
    function getSkin() {
        return $this->skin;
    }

    /**
     * @Desc get cache of the module from cache
     * @param string $module: name of the module
     * @return string: html
     */
    function getCache($file_name) {
        $cache_dir = ROOT_PATH . CACHE_FOLDER . DS;
        $cache_file = $cache_dir . $file_name . '.html';

        if (file_exists($cache_file)) { // if cache file exists
            $cacheSetting = getCacheSetting();
            $cache_time = $cacheSetting['cache_time'];

            $time = filemtime($cache_file);
            $diff_time = time() - intval($time);

            // if db just change, reload cache else get html from cache
            $reloadCache = $cacheSetting['reload_cache'];
            if ($reloadCache || ($diff_time >= $cache_time)) {
                return '';
            }

            return file_get_contents($cache_file);
        } 
        
        return false;
    }

    /**
     * @Desc set cache for module, useful for the module that was less interactive with the database
     * @param string $module: name of the module
     * @return true
     */
    function setCache($file_name, $content) {
        $cache_dir = ROOT_PATH . CACHE_FOLDER. DS;
        
        // create cache folder if not exists
        if (!is_dir($cache_dir)) {
            mkdir($cache_dir, 0777, true);
        }

        $cache_file = $cache_dir . $file_name . '.html';
        
        $fp = @fopen($cache_file, 'w');
        @fwrite($fp, trim($content));
        @fclose($fp);

        return trim($content);
    }

    /**
     * @Desc get position module in the layout
     * @param string $html_layout: html of the layout 
     * @return array
     */
    function getPositionLayout($html_layout) {
        preg_match_all('/<!--pos_(.*?)-->/', $html_layout, $arrPos);
        return $arrPos[1];
    }

    /**
     * @Desc get html layout
     * @return string: path to the skin path
     */
    function getHtmlLayout() {
        // get layout
        $file_skin_htm = ROOT_PATH . SKIN_FOLDER. "/" . $this->skin . "/layout/" . $this->layout . '.htm';
        $file_skin_html = ROOT_PATH . SKIN_FOLDER ."/" . $this->skin . "/layout/" . $this->layout . '.html';

        if (file_exists($file_skin_htm) && is_readable($file_skin_htm)) {
            $html = file_get_contents($file_skin_htm);
        } else if (file_exists($file_skin_html) && is_readable($file_skin_html)) {
            $html = file_get_contents($file_skin_html);
        } else {
            $html = "layout not exists";
        }

        return $html;
    }

    /**
     * @Desc add template to html
     * @return string: html
     */
    function addTemplateHtml($html) {
        $style = '
        .hcms-module-close{
            transition: all 0.3s ease-out 0s;
            position: absolute;
            top: 0px;
            right: 0px;
            display: none;
            background: #000;
            width: 22px;
            height: 22px;
            color: #fff !important;
            line-height: 21px;
            text-align: center;
            font-size: 20px;
            text-decoration: none;
            -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=50)";
            filter: alpha(opacity=50);
            -moz-opacity:0.5;
            -khtml-opacity: 0.5;
            opacity: 0.5;            
        }
        .hcms-module-close:hover{
            -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: alpha(opacity=100);
            -moz-opacity: 1;
            -khtml-opacity: 1;
            opacity: 1;
        }
        .hcms-module{
            border:1px solid #FFCC66;
        border-top: none;
            position:relative !important;
        }
        .hcms-module-wrap{
            border: 1px solid #fafafa;
        }
        .hcms-module-wrap .hcms-module-header{
            display:block;
            background-color: #FFFF99;
            border: 1px solid #FFCC66;
            color: #000000;
            opacity: 0.9;
            padding: 2px;
            text-align:center;
            text-transform:uppercase;
            font-family: arial, sans-serif;
            font-size: 10px;
        }
        .hcms-module:hover .hcms-module-close{
            display:block !important;
        }';


        add_inline_style('cms-template', $style);

        $arrPost = $this->getPositionLayout($html);

        foreach ($arrPost as $pos) {
            $tpl_replace = '<div class="hcms-module-wrap"><span class="hcms-module-header">'
                    . $pos . '</span><!--pos_' . $pos . '--></div>';
            $html = str_replace('<!--pos_' . $pos . '-->', $tpl_replace, $html);
        }
        return $html;
    }

    
    /**
     * @Desc main function of the CMS
     * @return echo html code of the website
     */
    function run() {
        global $title, $keywords, $description;

        // if show template, don't set cache
        $tpl = Input::get('tpl', 'int', 0);

        
        // check if cache file exists
        $url = curPageURL();
        $url_query_string = str_replace(base_url(), '', $url);
        
        $page_cache_file = ($url_query_string != '') ? md5($url_query_string) : md5($this->default_page);
        $html = $this->getCache($page_cache_file);
        if($tpl != 1 && $html != '' && CACHE_STATUS == 'on'){
            echo $html;
            exit;
        }
        
        $page = Input::get("page", "txt", $this->default_page);
        $miniPage = new Page();
        $pageInfo = $miniPage->getPageInfo($page);
        if (isset($pageInfo['layout']) && $pageInfo['layout'] != '') {
            $pathPath = pathinfo($pageInfo['layout']);
            $this->layout = $pathPath['filename'];
        }

        $html = $this->getHtmlLayout();

        // show position of module
        if ($tpl == 1) {
            $html = $this->addTemplateHtml($html);
        }
        
        if (is_array($pageInfo) && count($pageInfo) > 0) {
            $title = $pageInfo['meta_title'];
            $keywords = $pageInfo['meta_keyword'];
            $description = $pageInfo['meta_description'];
            $position = $pageInfo['position'];

            foreach ($position as $key => $arrModule) {
                if (!is_array($arrModule) || count($arrModule) <= 0) {
                    continue;
                };

                $html_pos = '';
                $eq = 0;
                $checkExsits = array();
                foreach ($arrModule as $value) {
                    $module_file = MODULE_PATH . $value . '.php';
                    if (!file_exists($module_file)) { // if file of the module exists
                        continue;
                    }

                    // load module file
                    include_once($module_file);
                    $module = new $value();

                    $html_module = $module->draw();

                    if ($tpl == 1 && isset($_SESSION['admin']['level']) && $_SESSION['admin']['level'] > 1) {
                        if (isset($checkExsits[$value]))
                            $eq++;
                        $button_delete = '<a onclick="parent.deletePositionModule(\'' . $page . '\',\'' . $key . '\',\'' . $value . '\',\'' . $eq . '\')" class="hcms-module-close" href="javascript:void(0)">×</a>';
                        $html_module = '<div class="hcms-module">' . $button_delete . $html_module . '</div>';
                        $checkExsits[$value] = true;
                    }

                    $html_pos .= $html_module;
                }
                $html = str_replace('<!--' . $key . '-->', $html_pos, $html);
            }

            $skin_path = base_url() . SKIN_FOLDER. '/' . $this->skin . '/';
            $html = str_replace('{skin_path}', $skin_path, $html);
            $html = str_replace('{cms_header}', cms_header(), $html);
            $html = str_replace('{cms_footer}', cms_footer(), $html);
            $html = str_replace('{link_home}', base_url(), $html);
            $html = str_replace('{cur_page}', curPageUrl(), $html);
            $html = str_replace('{title}', $title, $html);
            $html = str_replace('{description}', $description, $html);
            $html = str_replace('{keywords}', $keywords, $html);

            // call language function 
            $html = $this->cmsLanguage($html);

            // set db status 
            if(CACHE_STATUS == 'on'){
                $this->setCache($page_cache_file, $html);
                cacheSetting(false);
            }
            

            echo $html;
        }else {
            show_404_page();
        }
        
        // if setting, show log sql
        $this->showLogSql();
    }

    /**
     * @Desc replace language code from string
     * @param string $html: html of the website that have language code 
     * @return string: html of the website
     */
    function cmsLanguage($html) {
        // language
        $lang = getLanguage();

        $arr_lang_key = array();
        $arr_lang_value = array();
        foreach ($lang as $key => $value) {
            $arr_lang_key[] = '<!--lang.' . $key . "-->";
            $arr_lang_value[] = $value;
        }
        $html = str_replace($arr_lang_key, $arr_lang_value, $html);
        return $html;
    }

    /**
     * @Desc get page position, each page have a layout, example position in layout: <!--pos_content-->
     * @param string $page: page name
     * @return array
     */
    function getPositionPage($page) {
        $miniPage = new Page();
        $pageInfo = $miniPage->getPageInfo($page);
        if (isset($pageInfo['layout']) && $pageInfo['layout'] != '') {
            $this->layout = $pageInfo['layout'];
        }

        // get layout
        $file_skin_htm = ROOT_PATH . SKIN_FOLDER. "/" . $this->skin . "/layout/" . $this->layout;
        $file_skin_html = ROOT_PATH . SKIN_FOLDER. "/" . $this->skin . "/layout/" . $this->layout;
        

        if (file_exists($file_skin_htm) && is_readable($file_skin_htm)) {
            $html = file_get_contents($file_skin_htm);
        } else if (file_exists($file_skin_html) && is_readable($file_skin_html)) {
            $html = file_get_contents($file_skin_html);
        } else {
            $html = "layout not exists";
        }

        // show position of module
        $arrPost = $this->getPositionLayout($html);
        return $arrPost;
    }
    
    
    public static function cms_rewrite(){
        
        // set page request
        $current_link = str_replace(base_url(), '', curPageURL());
        if ($current_link && substr($current_link, strlen($current_link) - 4, 4) == 'html') {
            $current_link = trim($current_link, '/');
         
            $pathinfo = pathinfo($current_link);
            if(!$pathinfo['dirname'] || $pathinfo['dirname'] == '.'){
                $_REQUEST['page'] = $pathinfo['filename'];
            }else{
                
                $dirname = explode('/', $pathinfo['dirname']);
                if(isset($dirname[0]) && $dirname[0] != '') $_REQUEST['page'] = $dirname[0];
                if(isset($dirname[1]) && $dirname[1] != '') $_REQUEST['alias'] = $dirname[1];
                
                
                $id = $pathinfo['filename'];
                $_REQUEST['id'] = alphaID($id, true);
            }
            
        }
        //var_dump($_REQUEST);
        
    }// end function
    
    
    function showLogSql(){
        global $oDb;
        $show_query = Input::get('query', 'int', 0);
        if($show_query) $_SESSION['query'] = $show_query;
       
        if(SHOW_QUERY_INFO == 'on' || (isset($_SESSION['query']) && $_SESSION['query'] == 1)){
            $arrLogQuery = array_merge($oDb->listQuery, DB::get_query_log());    
            echo '<pre>';
            foreach($arrLogQuery as $query){
                echo '<p style="text-align:left; padding: 0 10px; margin: 5px 0px; font-size:14px;">'.trim($query) .'</p>';
            }
            echo '</pre>';
        }
        if($oDb)@$oDb->close();
    }

}

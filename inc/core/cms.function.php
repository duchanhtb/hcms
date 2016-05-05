<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @Desc this function call by Idiorm class
 * @return nothing
 */
function cmsLogQuery($sql, $duration) {
    global $cmsLogQuery;    
    $cmsLogQuery[] = array('sql' => $sql, 'duration' => $duration);
}

/**
 * @Desc register javascript and css for header
 * @return string
 */
function cms_header() {
    global $graph_tags, $cms_style, $cms_inline_style, $cms_script, $title, $keywords, $description, $html_header;

    $html = '';
    // title
    if ($title) {
        $html .= "<title>$title</title>" . PHP_EOL;
    } else {
        $html .= "<title>" . getCmsTitle() . "</title>" . PHP_EOL;
    }

    //keyword
    if ($keywords != '') {
        $html .= '<meta name="keywords" content="' . $keywords . '" >' . PHP_EOL;
    } else {
        $html .= '<meta name="keywords" content="' . getCmsKeywords() . '" >' . PHP_EOL;
    }

    //description
    if ($description != '') {
        $html .= '<meta name="description" content="' . $description . '" >' . PHP_EOL;
    } else {
        $html .= '<meta name="description" content="' . getCmsDescription() . '" >' . PHP_EOL;
    }

    // graph tags
    if (is_array($graph_tags) && count($graph_tags) > 0) {
        foreach ($graph_tags as $handle => $graph) {
            $html .= '<meta property="og:' . $graph['property'] . '" content="' . $graph['content'] . '" />' . PHP_EOL;
        }
    }

    // favicon
    if (get_option('favicon')) {
        $html .= '<link rel="shortcut icon" type="image/x-icon" href="' . base_url() . get_option('favicon') . '">' . PHP_EOL;
    }

    // style
    if (is_array($cms_style) && count($cms_style) > 0) {
        foreach ($cms_style as $handle => $style) {
            $ver = (isset($style['ver']) && $style['ver'] != '') ? '?ver=' . $style['ver'] : '';
            $media = isset($style['meida']) ? $style['meida'] : 'all';
            $html .= '<link rel="stylesheet" href="' . $style['src'] . $ver . '" media="' . $media . '" />' . PHP_EOL;
        }
    }

    // script
    if ($cms_script && count($cms_script) > 0) {
        foreach ($cms_script as $handle => $script) {
            if ($script['in_footer'] == true)
                continue;
            $ver = isset($style['ver']) ? '?ver=' . $style['ver'] : '';
            $media = isset($style['meida']) ? $style['meida'] : 'all';
            $html .= '<script src="' . $script['src'] . '" type="text/javascript" name="' . $handle . '"></script>' . PHP_EOL;
        }
    }

    ///////////////// inline css ////////////////////
    $inline_css = '';
    $link_google_fonts = false;
    // body
    $body_inline_css = '';
    if (get_option('body-background-color') != '') {
        $body_inline_css .= "\tbackground-color: " . get_option("body-background-color") . ";" . PHP_EOL;
    }
    if (get_option('body-background-image') != '') {
        $body_inline_css .= "\tbackground-image: url('" . base_url() . get_option("body-background-image") . "');" . PHP_EOL;
        $repeat = get_option('body-background-repeat');
        switch ($repeat) {
            case 'x':
                $body_inline_css .= "\tbackground-repeat: repeat-x;" . PHP_EOL;
                break;

            case 'y':
                $body_inline_css .= "\tbackground-repeat: repeat-y;" . PHP_EOL;
                break;

            case 'yes':
                $body_inline_css .= "\tbackground-repeat: repeat;" . PHP_EOL;
                break;

            case 'no':
                $body_inline_css .= "\tbackground-attachment: fixed;" . PHP_EOL;
                $body_inline_css .= "\tbackground-repeat: no-repeat;" . PHP_EOL;
            default :
                break;
        }
    }
    if (get_option('primary-color') != '') {
        $body_inline_css .= "\tcolor: " . get_option("primary-color") . ";" . PHP_EOL;
    }
    if (get_option('body-font') != '') {
        if (!in_array(get_option("body-font"), hcms_windows_fonts())) {
            $link_google_fonts[get_option("heading-font")] = 'https://fonts.googleapis.com/css?family=' . get_option("body-font");
        }
        $body_inline_css .= "\tfont-family: " . str_replace("|", ",", get_option("body-font")) . ";" . PHP_EOL;
    }
    if (get_option('body-size') != '') {
        $body_inline_css .= "\tfont-size: " . trim(get_option("body-size")) . "px;" . PHP_EOL;
    }

    if ($body_inline_css) {
        $inline_css .= "body{" . PHP_EOL . $body_inline_css . "}" . PHP_EOL;
    }


    // heading
    if (get_option('heading-font') != '') {
        if (!in_array(get_option("heading-font"), hcms_windows_fonts())) {
            $link_google_fonts[get_option("heading-font")] = 'https://fonts.googleapis.com/css?family=' . get_option("heading-font");
        }
        $inline_css .= "h1,h2,h3,h4,h5,h6{" . PHP_EOL . "\tfont-family: " . get_option('heading-font') . ";" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h1-size') != '') {
        $inline_css .= "h1{" . PHP_EOL . "\tfont-size: " . trim(get_option('h1-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h2-size') != '') {
        $inline_css .= "h2{" . PHP_EOL . "\tfont-size: " . trim(get_option('h2-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h3-size') != '') {
        $inline_css .= "h3{" . PHP_EOL . "\tfont-size: " . trim(get_option('h3-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h4-size') != '') {
        $inline_css .= "h4{" . PHP_EOL . "\tfont-size: " . trim(get_option('h4-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h5-size') != '') {
        $inline_css .= "h5{" . PHP_EOL . "\tfont-size: " . trim(get_option('h5-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }
    if (get_option('h6-size') != '') {
        $inline_css .= "h6{" . PHP_EOL . "\tfont-size: " . trim(get_option('h6-size')) . "px;" . PHP_EOL . "}" . PHP_EOL;
    }



    // nav font
    if (get_option('mainnav-font') != '') {
        $inline_css .= "nav {" . PHP_EOL . "\tfont-family: " . get_option('mainnav-font') . ";" . PHP_EOL . "}" . PHP_EOL;
    }

    // link color
    if (get_option('link-color') != '') {
        $inline_css .= "a {color: " . get_option('link-color') . "}" . PHP_EOL;
    }
    if (get_option('link-hover-color') != '') {
        $inline_css .= 'a:hover {color: ' . get_option('link-hover-color') . '}' . PHP_EOL;
    }
    if (is_array($cms_inline_style) && count($cms_inline_style)) {
        foreach ($cms_inline_style as $data) {
            $inline_css .= $data . PHP_EOL;
        }
    }

    if ($link_google_fonts) {
        $html .= '<!-- google fonts -->' . PHP_EOL;
        foreach ($link_google_fonts as $link_google_font)
            $html .= '<link rel="stylesheet" href="' . $link_google_font . '" media="all" />' . PHP_EOL;
    }

    // custom css
    if (get_option('custom-css') != '') {
        $inline_css .= get_option('custom-css') . PHP_EOL;
    }

    if ($inline_css) {
        $html .= PHP_EOL;
        $html .= '<style type="text/css">' . PHP_EOL;
        $html .= $inline_css;
        $html .= '</style>' . PHP_EOL;
    }

    if($html_header){
        $html .= PHP_EOL;
        $html.= $html_header.PHP_EOL;
    }
    
    return $html;
}

/**
 * @Desc register javascript for footer
 * @return string
 */
function cms_footer() {
    global $cms_script, $html_footer;
     
    $html = '';
    if($cms_script && count($cms_script)){
        foreach ($cms_script as $handle => $script) {
            if ($script['in_footer'] == false)
                continue;
            $ver = (isset($style['ver']) && $style['ver'] != '') ? '?ver=' . $style['ver'] : '';
            $html .= '<script src="' . $script['src'] . '" type="text/javascript" name="' . $handle . '"></script>' . PHP_EOL;
        }
    }
    

    if($html_footer){
        $html .= PHP_EOL;
        $html.= $html_footer.PHP_EOL;
    }

    return $html;
}

/**
 * @Desc get cms title
 * @return string
 */
function getCmsTitle() {
    $page = Input::get('page', 'txt', 'home');
    $Page = new Page();
    $pageInfo = $Page->getPageInfo($page);
    return $pageInfo->meta_title;
}

/**
 * @Desc get cms title
 * @return string
 */
function getCmsKeywords() {
    $page = Input::get('page', 'txt', 'home');
    $Page = new Page();
    $pageInfo = $Page->getPageInfo($page);
    return $pageInfo->meta_keyword;
}

/**
 * @Desc get cms title
 * @return string
 */
function getCmsDescription() {
    $page = Input::get('page', 'txt', 'home');
    $Page = new Page();
    $pageInfo = $Page->getPageInfo($page);
    return $pageInfo->meta_description;
}

/**
 * @Desc translate multi language
 * @param string $key: key of word in the database or string input. Example $lang[language] = 'Ngôn ngữ' in Vietnamese / $language['language'] = Language in English
 * @param array $replace: using for replace. Example the string language is: 
 * 		  	language['test'] = "Những %s đã chọn phải lớn hơn %s ký tự".
 * 			the array input: array('mật khẩu', '10').
 * 			the string after replace will be: Những mật khẩu đã chọn phải lớn hơn 10 ký tự 
 * @return string
 */
function trans($key, $replace = false) {
    $lang = getLanguage();
    if (isset($lang[$key])) {
        $arrStr = explode('%s', $lang[$key]);
        if (count($replace) > 0 && count($arrStr) > 1) {
            $str = '';
            foreach ($arrStr as $k => $value) {
                if (isset($replace[$k])) {
                    $str .= $arrStr[$k] . $replace[$k];
                } else {
                    $str .= $arrStr[$k];
                }
            }
            return $str;
        } else {
            return $lang[$key];
        }
    }
    return $key;
}

/**
 * @Desc add title for header
 * @global type $title
 * @param type $title_content
 * @return none
 */
function addTitle($title_content) {
    global $title;
    $title = $title_content;
}

/**
 * @Desc add keywords for headear
 * @global type $keywords
 * @param type $keyword_content
 * @return none
 */
function addKeywords($keyword_content) {
    global $keywords;
    $keywords = $keyword_content;
}

/**
 * @Desc add description for headear
 * @global type $description
 * @param type $description_content
 * @return none
 */
function addDescription($description_content) {
    global $description;
    $description = $description_content;
}

/**
 * @Desc register css to header
 * @param string $handle: unique id
 * @param string $src: url to css
 * @param mix $ver: version
 * @param string $media: media attribute of css, default is all
 * @return nothing
 */
function register_style($handle, $src, $ver = false, $media = 'all') {
    global $cms_style;
    $cms_style[$handle] = array(
        'src' => $src,
        'ver' => $ver,
        'media' => $media,
    );
}

/**
 * @Desc remove css from header
 * @param string $handle: unique id
 * @return nothing
 */
function remove_style($handle) {
    global $cms_style;
    unset($cms_style[$handle]);
}

/**
 * @Desc add inline style to cms header
 * @param string $handle: unique id
 * @param string $data: css without <style> ... </style> tags
 * @return nothing
 */
function add_inline_style($handle, $data) {
    global $cms_inline_style;
    $cms_inline_style[$handle] = $data;
}

/**
 * @Desc register javascript 
 * @param string $handle: unique id
 * @param string $src: url to script file
 * @param mix $ver: version
 * @param boolean $in_footer: set true if add to the footer
 * @return string
 */
function register_script($handle, $src, $ver = false, $in_footer = false) {
    global $cms_script;
    $cms_script[$handle] = array(
        'src' => $src,
        'ver' => $ver,
        'in_footer' => $in_footer,
    );
}

/**
 * @Desc The Open Graph protocol
 * @param string $property: property, example title, type, url, images
 * @param string $content: content of property
 * @return none
 */
function addGraphTags($handle, $property, $content) {
    global $graph_tags;
    $graph_tags[$handle] = array(
        'property' => $property,
        'content' => $content,
    );
}

/**
 * @Desc show error 404 
 * @return 
 */
function show_404_page() {
    echo '
        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
            <title>404 Page Not Found</title>
            <meta name="description" content="" />
            <meta name="keywords" content="" />
        </head>
        <body style="text-align:center; background:#fff">
            <div style="width:60%; margin: 0 auto; position: relative;">
                <img border="0" src="' . base_url() . 'uploads/404.png" alt="404 page" width="800">
                <div style="color:#262625;font-weight:bold;font-size:14px;margin-bottom:20px">'.mb_strtoupper(trans('404_msg')).'</div>
                <div style="text-align: center; width: 100%">
                <a style="color: #262625; font-weight: bold" href="' . base_url() . '">'.trans('back_to_website').'.!</a></div>
        	</div>
        </body>
        </html>';
}

/**
 * @Desc get language from table m_language
 * @return array
 */
function getLanguage() {
    global $lang;
    $cur_lang = $_SESSION['language'];
    if (is_array($lang) && count($lang) > 0) {
        return $lang;
    } else {
        $table = 'm_language';
        $arrLanguage = DB::for_table($table)->find_many();
        foreach ($arrLanguage as $language) {
            $lang[$language->key] = $language->$cur_lang;
        }
    }
    return $lang;
}

/**
 * Thực hiện việc set và update sesion cho các bản
 *
 * @param str $name
 * @param unknow type $value
 * @return true
 */
function SetSession($name, $value) {
    $_SESSION['HCMS_' . $name] = $value;
    return true;
}

/**
 * Thực hiện việc get dữ liệu từ sesion
 *
 * @param unknown_type $name
 * @return session value
 */
function GetSession($name) {
    return isset($_SESSION['HCMS_' . $name]) ? $_SESSION['HCMS_' . $name] : '';
}

/**
 * luu trang thai database vua thay doi vao file, neu la 1 thi reload lai cache, 0 thi bo qua
 *
 * @param boolean $change: true neu db vua thay doi, false neu vua set cache xong
 * @return nothing
 */
function cacheSetting($changed) {
    $arrSetting = array('reload_cache' => 0, 'cache_time' => 604800); // cache one week
    if ($changed == true) {
        $arrSetting['reload_cache'] = 1;
    }
    $cache_file = ROOT_PATH . CACHE_FOLDER . DS . 'setting.json';
    $fp = @fopen($cache_file, 'w');
    @fwrite($fp, json_encode($arrSetting));
    @fclose($fp);
}

/**
 *  function doc content tu file /cache/reload.txt
 *
 * @return int
 */
function getCacheSetting() {
    $cache_file = ROOT_PATH . CACHE_FOLDER . DS . 'setting.json';
    $setting = file_get_contents($cache_file);
    if ($setting) {
        return json_decode($setting, true);
    }
    return false;
}

/**
 * get current url on address bar
 *
 * @return string
 */
function getSiteUrl() {
    $ffc_ar = explode("/", $_SERVER['PHP_SELF']);
    $ffc_ar_count = count($ffc_ar);
    $ffc_ar2 = array();
    for ($i = 0; $i < $ffc_ar_count - 1; $i++) {
        $ffc_ar2[$i] = $ffc_ar[$i];
    }
    $ffc_webFolderName = implode("/", $ffc_ar2);
    if (strpos($_SERVER['SERVER_SOFTWARE'], "IIS")) {
        $sPhysicPath = substr($_SERVER['SCRIPT_FILENAME'], 0, strrpos($_SERVER['SCRIPT_FILENAME'], '\\') + 1);
    } else {
        $sPhysicPath = substr($_SERVER['SCRIPT_FILENAME'], 0, strrpos($_SERVER['SCRIPT_FILENAME'], '/') + 1);
    }
    $sProtocol = ( strpos($_SERVER['SERVER_PROTOCOL'], "HTTPS") ) ? "https" : "http";
    $sProtocol .= "://";
    $sHostName = $_SERVER['HTTP_HOST'];
    $sitePath = $sProtocol . $sHostName . $ffc_webFolderName . "/";
    return $sitePath;
}

/**
 * Thực hiện việc load module
 *
 * @param str $name: module name excluding extension php
 * @return HTML code
 */
function loadModule($name) {
    $module_path = MODULE_PATH . "$name.php";
    if (file_exists($module_path)) {
        include_once($module_path);
        $module = new $name();
        return $module->draw();
    }

    return $lang['module_not_exists'];
}

/**
 * @Desc format price add dot after 3 charactor of number
 * @param $price: number 
 * @return number
 */
function formatPrice($price) {
    return number_format($price, 0, '', '.');
}

/**
 * @Desc get root url from website 
 * @param 
 * @return address of the page
 */
function base_url() {
    global $base_url;
    return $base_url;
}

/**
 * @Desc add images size 
 * @param folder, width, height, crop
 * @return global varible
 */
function add_image_size($folder, $width, $height, $crop = false) {
    global $imagesSize;
    if (!isset($imagesSize[$folder])) {
        $imagesSize[$folder] = array('width' => $width, 'height' => $height, 'crop' => $crop);
    }
    return $imagesSize;
}

/**
 * @Desc paging ajax
 * @param $current_page: number current page
 * @param $total_page: total pages we have
 * @param $func_callback: function javascript call when click to the page
 * @param $item_each_page: number items wanna display on a page
 * @param $searchTxt: 
 * @return HTML paging
 */
function paging_ajax($current_page, $total_page, $func_callback, $item_each_page, $searchTxt = "") {
    if ($total_page <= 1) {
        return "";
    }

    $data = '<ul class="pagination clearfix">';
    if ($total_page <= 10) {
        if ($current_page > 1) {
            $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . ($current_page - 1) . ',' . $item_each_page . ',\'' . $searchTxt . '\')"></a></li>';
        }

        for ($i = 1; $i <= $total_page; $i++) {
            if ($i == $current_page) {
                $data .= '<li class="active"><a href="#null">' . $i . '</a></li>';
            } else {
                $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . $i . ',' . $item_each_page . ',\'' . $searchTxt . '\')">' . $i . '</a></li>';
            }
        }
        if ($current_page != $total_page) {
            $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . ($current_page + 1) . ',' . $item_each_page . ',\'' . $searchTxt . '\')"></a></li>';
        }
    }

    if ($total_page > 10) {
        $minpage = ($current_page - 5) > 1 ? ($current_page - 5) : 1;
        $maxpage = ($current_page + 5) < $total_page ? ($current_page + 5) : $total_page;
        if ($current_page > 1) {
            $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . ($current_page -
                    1) . ',' . $item_each_page . ',\'' . $searchTxt . '\')"></li>';
        }

        for ($i = $minpage; $i <= $maxpage; $i++) {
            if ($i == $current_page) {
                $data .= '<li class="active"><a href="#null">' . $i . '</a></li>';
            } else {
                $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . $i . ',' . $item_each_page .
                        ',\'' . $searchTxt . '\')">' . $i . '</a></li>';
            }
        }

        if ($current_page != $maxpage) {
            $data .= '<li><a href="#null" onclick="' . $func_callback . '(' . ($current_page +
                    1) . ',' . $item_each_page . ',\'' . $searchTxt . '\')"></li>';
        }
    }
    $data .= '</ul>';
    return $data;
}

/**
 * @Desc function return HTML paging
 * @param $current_page: nunber current of the page
 * @param $total_page: total page we have
 * @param $linkpage: link page we have example: http://hanhnguyen.co.cc/?page=
 * @return HTML paging
 */
function paging($current_page, $total_page, $linkpage, $class = 'paging') {

    // language
    $lang = getLanguage();


    if ($linkpage == false) {
        $linkpage = curPageURL();
    }
    $linkpage = removeQuerystringVar($linkpage, 'p');

    if (parse_url($linkpage, PHP_URL_QUERY) == NULL) {
        $linkpage .= '?p=';
    } else {
        $linkpage .= '&p=';
    }


    if ($total_page <= 1) {
        return "";
    }

    $data = '<ul class="' . $class . '">';
    if ($total_page <= 10) {
        if ($current_page > 1) {
            $data .= '<li class="btn-back"><a href="' . $linkpage . ($current_page - 1) .
                    '">&lt;&lt; ' . $lang['previous'] . '</a></li>';
        }

        for ($i = 1; $i <= $total_page; $i++) {
            if ($i == $current_page) {
                $data .= '<li class="active"><a href="javascript:void(0)">' . $i .
                        '</a></li>';
            } else {
                $data .= '<li><a href="' . $linkpage . $i . '" >' . $i . '</a></li>';
            }
        }

        if ($current_page != $total_page) {
            $data .= '<li class="btn-next"><a href="' . $linkpage . ($current_page + 1) .
                    '">' . $lang['next'] . ' &gt;&gt;</a></li>';
        }
    }

    if ($total_page > 10) {
        $minpage = ($current_page - 4) > 1 ? ($current_page - 4) : 1;
        $maxpage = ($current_page + 4) < $total_page ? ($current_page + 4) : $total_page;

        if ($current_page > 1) {
            $data .= '<li class="btn-back"><a href="' . $linkpage . ($current_page - 1) .
                    '">&lt;&lt; ' . $lang['previous'] . '</a></li>';
        }

        for ($i = $minpage; $i <= $maxpage; $i++) {
            if ($i == $current_page) {
                $data .= '<li class="active"><a href="javascript:void(0)">' . $i .
                        '</a></li>';
            } else {
                $data .= '<li><a href="' . $linkpage . $i . '" >' . $i . '</a></li>';
            }
        }

        if ($current_page != $maxpage) {
            $data .= '<li class="btn-next"><a href="' . $linkpage . ($current_page + 1) . '">' . $lang['next'] . ' &gt;&gt;</a>';
        }
    }
    $data .= '</ul>';
    return $data;
}

/**
 * @Desc remove varible of the url example http://hanhnguyen.co.cc?page=1 and we want to remove string 'page=1';
 * @param $url: url include varible to remove
 * @param $key: varible we wanna remove 
 * @return URL after remove varible
 */
function removeQuerystringVar($url, $key) {
    $url = preg_replace('/(?:&|(\?))' . $key . '=[^&]*(?(1)&|)?/i', "$1", $url);
    return rtrim(rtrim($url, '&'), '?');
}

/**
 * @Desc create link of cms, when we want to rewrite link, we only change this function
 * @param $page: page of the cms 
 * @param $param: array parram example array('id'=>1,'name'=>2)
 * @return URL
 */

/**
 * @Desc create link of cms, when we want to rewrite link, we only change this function
 * @param $page: page of the cms 
 * @param $param: array parram example array('id'=>1,'name'=>2)
 * @return URL
 */
function createLink($page, $param = false, $rewrite = true) {
    $link = base_url();
    if ($rewrite == false) {
        $link .= '?page=' . $page;
        foreach ($param as $key => $value) {
            $link .= '&' . $key . '=' . $value;
        }
        return $link;
    }
    $link .= $page;
    if (isset($param['subpage']) && $param['subpage'] != '') {
        $link .= '/' . $page['subpage'];
    }
    if ($param && $param['id'] > 0 && $param['title'] != '') {
        $id_endcode = alphaID($param['id'], false);
        $link .= '/' . title_url($param['title']) . '/' . $id_endcode;
    }
    return $link . '.html';
}

/**
 * @Desc get page from url. Example: url is http://cnan.com/recipe/abc123/U5K5.html -> page is recipe
 * @return string
 */
function getPage() {
    $current_page = curPageURL();
    $current_page = str_replace(base_url(), '', $current_page);
    $current_page = explode('.', $current_page);
    $current_page = $current_page[0];

    if ($current_page) {
        $current_page = explode('/', $current_page);
        if (is_array($current_page) && count($current_page) > 0) {
            return $current_page[0];
        }
    }
    return 'home';
}

/**
 * @Desc get page from url. Example: url is http://cnan.com/recipe/timkiem.html -> subpage is timkiem
 * @return string
 */
function getSubPage() {
    $current_page = curPageURL();
    $current_page = str_replace(base_url(), '', $current_page);
    $current_page = explode('.', $current_page);
    $current_page = $current_page[0];

    if ($current_page) {
        $current_page = explode('/', $current_page);
        if (count($current_page) > 0 && isset($current_page[1])) {
            return $current_page[1];
        }
    }
    return '';
}

/**
 * @Desc get id from url, example url = http://cnan.com/congthuc/cach-kho-ca/XuT14.html => id = alpha('XuT14',true);
 * @param
 * @return int
 */
function getCmsId() {
    $current_page = curPageURL();
    $current_page = str_replace(base_url(), '', $current_page);
    if ($current_page) {
        $current_page = explode('/', $current_page);
        if (is_array($current_page) && count($current_page) > 0) {
            $max_key = max(array_keys($current_page));
            $max_value = $current_page[$max_key];
            $max_value = explode('.', $max_value);
            $max_value = $max_value[0];
            if ($max_value) {
                return alphaID($max_value, true);
            }
        }
    }
    return NULL;
}

/**
 * @Desc redrect to the adress
 * @param $url: address we want to redirect 
 * @return nothing
 */
if(!function_exists('redirect')){
    function redirect($url) {
        @header("location: $url");
    }
}


/**
 * @Desc get cur url in address bar of the browser
 * @return URL
 */
function curPageURL() {
    $pageURL = 'http';
    if (isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] == "on") {
        $pageURL .= "s";
    }
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "80") {
        $pageURL .= $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];
    } else {
        $pageURL .= $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"];
    }
    $pageURL = removeQuerystringVar($pageURL, 'ref');
    return $pageURL;
}

/**
 * @Desc endcode id
 * @param $input: id want to endcode
 * @param $key_seed: string end code
 * @return string
 */
function EncryptData($input, $key_seed = 'KEY_ENCRYPT_DECRYPT_HANHCMS') {
    $input = trim($input);
    $block = mcrypt_get_block_size('tripledes', 'ecb');
    $len = strlen($input);
    $padding = $block - ($len % $block);
    $input .= str_repeat(chr($padding), $padding);
    $key = substr(md5($key_seed), 0, 24);
    $iv_size = mcrypt_get_iv_size(MCRYPT_TRIPLEDES, MCRYPT_MODE_ECB);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    $encrypt_data = mcrypt_encrypt(MCRYPT_TRIPLEDES, $key, $input, MCRYPT_MODE_ECB, $iv);
    return base64_encode($encrypt_data);
}

/**
 * @Desc decode id
 * @param $input: id want to decode
 * @param $key_seed: string end code
 * @return string
 */
function DecryptData($input, $key_seed = 'KEY_ENCRYPT_DECRYPT_HANHCMS') {
    $input = base64_decode($input);
    $key = substr(md5($key_seed), 0, 24);
    $text = mcrypt_decrypt(MCRYPT_TRIPLEDES, $key, $input, MCRYPT_MODE_ECB, '12345678');
    $block = mcrypt_get_block_size('tripledes', 'ecb');
    $packing = ord($text{strlen($text) - 1});
    if ($packing and ( $packing < $block)) {
        for ($P = strlen($text) - 1; $P >= strlen($text) - $packing; $P--) {
            if (ord($text{$P}) != $packing) {
                $packing = 0;
            }
        }
    }
    $text = substr($text, 0, strlen($text) - $packing);
    return $text;
}

/**
 * @Desc convert string to url
 * @param string $str: string to conver
 * @param string $separator: drash url is this-is-url
 * @param true|false $lowercase
 * @return string
 */
function url_title($str, $separator = 'dash', $lowercase = false) {
    if ($separator == 'dash') {
        $search = '_';
        $replace = '-';
    } else {
        $search = '-';
        $replace = '_';
    }

    $trans = array('&\#\d+?;' => '', '&\S+?;' => '', '\s+' => $replace, '[^a-z0-9\-\._]' =>
        '', $replace . '+' => $replace, $replace . '$' => $replace, '^' . $replace => $replace,
        '\.+$' => '');

    $str = strip_tags($str);
    foreach ($trans as $key => $val) {
        $str = preg_replace("#" . $key . "#i", $val, $str);
    }

    if ($lowercase === true) {
        $str = strtolower($str);
    }
    return trim(stripslashes($str));
}

/**
 * @Desc convert string to url
 * @param string $str: string to convert
 * @param string $separator: drash url is this-is-url
 * @param true|false $lowercase
 * @return string
 */
function codau_to_khongdau($str) {
    $vietChar = 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ|é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ|ó|ò|ỏ|õ|ọ|ơ|ớ|ờ|ở|ỡ|ợ|ô|ố|ồ|ổ|ỗ|ộ|ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự|í|ì|ỉ|ĩ|ị|ý|ỳ|ỷ|ỹ|ỵ|đ|Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ|É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ|Ó|Ò|Ỏ|Õ|Ọ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự|Í|Ì|Ỉ|Ĩ|Ị|Ý|Ỳ|Ỷ|Ỹ|Ỵ|Đ';
    $engChar = 'a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|e|e|e|e|e|e|e|e|e|e|e|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|u|u|u|u|u|u|u|u|u|u|u|i|i|i|i|i|y|y|y|y|y|d|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|E|E|E|E|E|E|E|E|E|E|E|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|U|U|U|U|U|U|U|U|U|U|U|I|I|I|I|I|Y|Y|Y|Y|Y|D';
    $arrVietChar = explode("|", $vietChar);
    $arrEngChar = explode("|", $engChar);
    return str_replace($arrVietChar, $arrEngChar, $str);
}

/**
 * @Desc convert title to url
 * @param string $str: string to convert
 * @return string
 */
function title_url($str) {
    $str = strtolower(url_title(codau_to_khongdau($str)));
    return str_replace('.', '', $str);
}

/**
 * @Desc list module name in module folder
 * @return array
 */
function list_module() {
    $arrModule = array();
    $arrFile = scandir(MODULE_PATH, 0);
    if (count($arrFile) > 0) {
        foreach ($arrFile as $key => $value) {
            if ($key == 0 || $key == 1) {
                continue;
            }
            if (!strpos($value, '.php')) {
                continue;
            }

            $arrModule[] = substr($arrFile[$key], 0, -4);
        }
    }
    return $arrModule;
}

/**
 * @Desc insert media infomation to the database
 * @param string $path: path to the file
 * @param int $object_id: id of product, news, etc...
 * @param string $type: news, product, etc...
 * @param array $other_info: additional information of the file
 * @return int
 */
function insertMedia($path, $object_id = '0', $object_type = '', $other_info = '') {

    $path = trim($path, '.');
    if ($path == '') {
        return '';
    }

    $object_type = ($object_type != '') ? $object_type : $_REQUEST['f'];

    /** other information * */
    // size
    $size = filesize(ROOT_PATH . $path);
    if (!isset($other_info['size']))
        $other_info['size'] = $size;

    // with and height with images
    if (@is_array(getimagesize(ROOT_PATH . $path))) {
        $data = getimagesize(ROOT_PATH . $path);
        $width = $data[0];
        $height = $data[1];
        $other_info['wh'] = $width . 'x' . $height;
    }

    // file info
    $file_info = pathinfo(ROOT_PATH . $path);
    $other_info['ext'] = $file_info['extension'];
    $other_info['name'] = $file_info['basename'];

    $Media = new Media();
    $mediaRecord = DB::for_table($Media->table)->create();
    $mediaRecord->path = $path;
    $mediaRecord->object_id = $object_id;
    $mediaRecord->object_type = $object_type;
    $mediaRecord->type = mime_content_type(ROOT_PATH . $path);
    $mediaRecord->other_info = json_encode($other_info);
    $mediaRecord->date = date('Y-m-d H:i:s');
    $mediaRecord->user_id = @$_SESSION['admin']['id'];
    $mediaRecord->username = @$_SESSION['admin']['name'];

    $id = $mediaRecord->save();
    $_SESSION['media'][] = $id; // add to session, using this session to update object_id in the table
    return $id;
}

/**
 * @Desc delete media in the database and remove file
 * @param mix $media: id in the table or path to the file
 * @return int
 */
function deleteMedia($media) {
    global $imagesSize;
    $Media = new Media();
    if (is_int($media)) { // if $media variable is the id in the database
        $id = $media;
        $Media->read($id);
        $path = $Media->path;
        $path = ROOT_PATH . trim($path, '.');

        // delete origion file
        if (file_exists($path)) {
            @unlink($path); // delete file  
        }

        // delete thumb file
        foreach ($imagesSize as $folder => $wh) {
            $path_info = pathinfo($path);
            $thumb = $path_info['dirname'] . '/' . $folder . '/' . $path_info['basename'];
            // delete origion file
            if (file_exists($thumb)) {
                @unlink($thumb); // delete file  
            }
        }
        $Media->remove($id);
    } else { // if $media variable is the path in the database
        $path = $media;
        $mediaObj = $Media->getMediaByPath($path);
        $path = ROOT_PATH . trim($mediaObj->path);
        // delete origion file
        if (file_exists($path)) {
            @unlink($path);
        }

        // delete thumb file
        foreach ($imagesSize as $folder => $wh) {
            $path_info = pathinfo($path);
            $thumb = $path_info['dirname'] . '/' . $folder . '/' . $path_info['basename'];
            // delete origion file
            if (file_exists($thumb)) {
                @unlink($thumb); // delete file  
            }
        }

        $id = $mediaObj->id;
        $Media->remove($id);
    }
    $upload_path = ROOT_PATH . 'uploads/';
    RemoveEmptySubFolders($upload_path);
    return true;
}

/**
 * @Desc remove empty folder
 * @param string $path: path to the folder
 * @return none
 */
function RemoveEmptySubFolders($path) {
    $empty = true;
    foreach (glob($path . DIRECTORY_SEPARATOR . "*") as $file) {
        $empty &= is_dir($file) && RemoveEmptySubFolders($file);
    }
    return $empty && rmdir($path);
}

/**
 * @Desc hack mime type function
 * @param string $filename: path to the file
 * @return string
 */
if (!function_exists('mime_content_type')) {

    function mime_content_type($filename) {

        $mime_types = array(
            'txt' => 'text/plain',
            'htm' => 'text/html',
            'html' => 'text/html',
            'php' => 'text/html',
            'css' => 'text/css',
            'js' => 'application/javascript',
            'json' => 'application/json',
            'xml' => 'application/xml',
            'swf' => 'application/x-shockwave-flash',
            'flv' => 'video/x-flv',
            // images
            'png' => 'image/png',
            'jpe' => 'image/jpeg',
            'jpeg' => 'image/jpeg',
            'jpg' => 'image/jpeg',
            'gif' => 'image/gif',
            'bmp' => 'image/bmp',
            'ico' => 'image/vnd.microsoft.icon',
            'tiff' => 'image/tiff',
            'tif' => 'image/tiff',
            'svg' => 'image/svg+xml',
            'svgz' => 'image/svg+xml',
            // archives
            'zip' => 'application/zip',
            'rar' => 'application/x-rar-compressed',
            'exe' => 'application/x-msdownload',
            'msi' => 'application/x-msdownload',
            'cab' => 'application/vnd.ms-cab-compressed',
            // audio/video
            'mp3' => 'audio/mpeg',
            'qt' => 'video/quicktime',
            'mov' => 'video/quicktime',
            // adobe
            'pdf' => 'application/pdf',
            'psd' => 'image/vnd.adobe.photoshop',
            'ai' => 'application/postscript',
            'eps' => 'application/postscript',
            'ps' => 'application/postscript',
            // ms office
            'doc' => 'application/msword',
            'rtf' => 'application/rtf',
            'xls' => 'application/vnd.ms-excel',
            'ppt' => 'application/vnd.ms-powerpoint',
            // open office
            'odt' => 'application/vnd.oasis.opendocument.text',
            'ods' => 'application/vnd.oasis.opendocument.spreadsheet',
        );

        $ext = strtolower(@array_pop(@explode('.', $filename)));
        if (array_key_exists($ext, $mime_types)) {
            return $mime_types[$ext];
        } elseif (function_exists('finfo_open')) {
            $finfo = finfo_open(FILEINFO_MIME);
            $mimetype = finfo_file($finfo, $filename);
            finfo_close($finfo);
            return $mimetype;
        } else {
            return 'application/octet-stream';
        }
    }

}


/**
 * @Desc get default windows fonts
 * @param nothing
 * @return array
 */
if (!function_exists('hcms_windows_fonts')) {

    function hcms_windows_fonts() {
        $fonts = "Arial,Arial Black,Arial Bold,Arial Bold Italic,Arial Italic,Comic Sans MS,Courier New,Courier New Bold,Courier New Bold Italic,Courier New Italic,Estrangelo Edessa,Franklin Gothic Medium,Franklin Gothic Medium,Italic,Gautami,Georgia,Georgia Bold,Georgia Bold Italic,Georgia Italic Impact,Latha,Lucida Console,Lucida Sans Unicode,Microsoft Sans Serif,Modern MS Sans Serif,MS Serif,Mv Boli,Palatino Linotype,Palatino Linotype Bold,Palatino Linotype Bold Italic,Palatino Linotype Italic,Roman,Script,Small Fonts,Symbol,Symbol,Tahoma,Tahoma Bold,Times New Roman,Times New Roman Bold,Times New Roman Bold Italic,Times New Roman Italic,Trebuchet MS,Trebuchet MS Bold,Trebuchet MS Bold Italic,Trebuchet MS Italic,Tunga,Verdana,Verdana Bold,Verdana Bold Italic Verdana Italic,Webdings,WingDings,WST_Czech,WST_Engl,WST_Fren,WST_Germ,WST_Ital,WST_Span,WST_Swed";
        return explode(',', $fonts);
    }

}
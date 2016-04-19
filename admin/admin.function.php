<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * function for CMS admin
 * @author duchanh
 * @copyright 2015
 */

/**
 * @Desc get admin url
 * @param 
 * @return string
 */
function admin_url() {
    return base_url() . ADMIN_FOLDER . '/';
}

/**
 * @Desc get ajax url
 * @param 
 * @return string
 */
function ajax_url() {
    return admin_url() . 'ajax.php';
}

/**
 * @Desc register css to header
 * @param string $handle: unique id
 * @param string $src: url to css
 * @param mix $ver: version
 * @param string $media: media attribute of css, default is all
 * @return nothing
 */
function admin_register_style($handle, $src, $ver = false, $media = 'all') {
    global $admin_style;
    $admin_style[$handle] = array(
        'src' => $src,
        'ver' => $ver,
        'media' => $media,
    );
}

/**
 * @Desc register javascript 
 * @param string $handle: unique id
 * @param string $src: url to script file
 * @param mix $ver: version
 * @param boolean $in_footer: set true if add to the footer
 * @return string
 */
function admin_register_script($handle, $src, $ver = false, $in_footer = false) {
    global $admin_script;
    $admin_script[$handle] = array(
        'src' => $src,
        'ver' => $ver,
        'in_footer' => $in_footer,
    );
}

/**
 * @Desc admin footer
 * @param 
 * @return footer html
 */
function admin_header() {
    global $admin_style, $admin_script, $admin_title;
    $arrScriptGlobal = array(
        'type' => Input::get('f', 'txt', 'media'),
        'base_url' => base_url(),
        'admin_url' => base_url() . ADMIN_FOLDER . '/',
        'ajax_url' => admin_url() . 'ajax.php',
        'session_id' => session_id(),
        'current_lang' => $_SESSION['language']
    );

    $html = '<!DOCTYPE html>
    <html>
    <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>' . $admin_title . ' - Administration</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">
    <script type="text/javascript">';
    foreach ($arrScriptGlobal as $key => $value) {
        $html .= $key . ' = "' . $value . '";' . PHP_EOL;
    }
    $html .= '
    </script>';

    if ($admin_style && count($admin_style) > 0) {
        foreach ($admin_style as $handle => $style) {
            $ver = (isset($style['ver']) && $style['ver'] != '') ? '?ver=' . $style['ver'] : '';
            $media = isset($style['meida']) ? $style['meida'] : 'all';
            $html .= '<link rel="stylesheet" href="' . $style['src'] . $ver . '" media=' . $media . ' />' . PHP_EOL;
        }
    }

    if ($admin_script && count($admin_script) > 0) {
        foreach ($admin_script as $handle => $script) {
            if ($script['in_footer'] == true)
                continue;
            $ver = (isset($style['ver']) && $style['ver'] != '') ? '?ver=' . $style['ver'] : '';
            $html .= '<script src="' . $script['src'] . '" type="text/javascript" name="' . $handle . '"></script>' . PHP_EOL;
        }
    }
    $html .='
    </head>
    <body>';

    return trim($html);
}

/**
 * @Desc admin header
 * @param 
 * @return footer html
 */
function admin_footer() {
    global $admin_script;
    $html = '';
    if ($admin_script && count($admin_script) >= 0) {
        foreach ($admin_script as $handle => $script) {
            if ($script['in_footer'] == false)
                continue;
            $ver = (isset($style['ver']) && $style['ver'] != '') ? '?ver=' . $style['ver'] : '';
            $html .= '<script src="' . $script['src'] . '" type="text/javascript" name="' . $handle . '"></script>' . PHP_EOL;
        }
    }

    $html .= '
    <script type="text/javascript">
    $(document).ready(function(){
        // show function clock with time on server
        cmsClock("#cms_clock", "' . date("m/d/Y H:i:s", time() + 2) . '");
        
    });
    </script>
    
    </body>
    </html>';

    return trim($html);
}

/**
 * @Desc render admin menu 
 * @param 
 * @return echo HTML menu
 */
function show_admin_menu() {
    global $arrMenu;
    $html = '';
    if ((int) $_SESSION['admin']['level'] >= 1) {
        /*         * ************* render list menu admin ***************** */
        foreach ($arrMenu as $value) {
            $type = isset($value['type']) ? $value['type'] : "";
            switch ($type) {
                case "heading":
                    $html .= '<li class="heading"><a href="javascript:void(0)"><strong style="font-size: 120%;">' . $value['name'] . '</strong></a></li>' . PHP_EOL;
                    break;

                default:
                    $html .= '<li><a href="index.php?f=' . $value['id'] . '" ' . getClassMenu($value) . '>&#151; ' . $value['name'] . '</a></li>' . PHP_EOL;
                    break;
            }
        }
    }
    return $html;
}

/**
 * @Desc render admin content
 * @param
 * @return echo HTML admin content
 */
function show_admin_content() {
    global $arrMenu;
    /*     * ************* content admin ***************** */
    
    $func = Input::get('f', 'txt', '');
    if($func == ''){
        redirect("index.php?f=home");
    }
    
    $html = '';
    if ($func && file_exists(ADMIN_PATH . "include/$func.php")) {
        
        // include file
        include_once(ADMIN_PATH . "include/$func.php");
        $func_info = getSubArrayValue($arrMenu, 'id', $func);
        
        switch ($func) {
            case 'options':
                $cmsOptions = new cmsOptions($of_options);
                $cmsOptions->name = $func_info['name'];
                $html .= $cmsOptions->main();
                break;

            case 'media':
                // show media
                $Media = new Media();
                $html .= $Media->showList();
                break;

            case 'home':
                $html .= '
                <style>
                body{
                    overflow: hidden;
                }
                #hcms_document{
                	border: none;
                }
                </style>
                <iframe id="hcms_document" width="100%" src="https://docs.google.com/document/d/1_4fMRIxQX9niPgbC-13jDJeDnqVF4oAiigb3HVTAk20/pub?embedded=true"></iframe>
                <script type="text/javascript">
                    document.body.style.overflow = "hidden";
                    $("#hcms_document").attr("height", window.innerHeight - 50);
                </script>';
                break;

            case 'changepass':
                $html .= $html_changepass;
                break;
            
            case 'restrict':
                $html .= $html_restrict;
                break;
            
            default:
                if (isset($func_info['table']) && $func_info['table'] != '') {
                    $func_table = explode(":", $func_info['table']);
                    $cmsTable = new CmsTable($func_table[0], $column, $func_table[1]);
                    $cmsTable->name = $func_info['name'];
                    if (isset($func_info['suffix_sql'])) {
                        $cmsTable->suffix_sql = $func_info['suffix_sql'];
                    }
                    $html .= $cmsTable->eventHander();
                }
                break;
        }
    }
    return $html;
}

/**
 * @Desc check yahoo status
 * @param string $yid: yahoo id example: hanhnguyen_rav
 * @return true|false
 */
function getAdminTitle($arrConfig) {
    $f = Input::get('f','txt','');
    if ($f) {
        foreach ($arrConfig as $key => $value) {
            if (isset($value['id']) && $f == $value['id']) {
                return $value['name'];
            }
        }
    }
    return 'HCMS';
}


/**
 * @Desc get current address
 * @return string
 */
function getAddress() {
    $adr = ( isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') ? 'https://' : 'http://';
    $adr .= isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : getenv('HTTP_HOST');
    $adr .= isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : getenv('REQUEST_URI');
    return $adr;
}

/**
 * @Desc get ip address
 * @return string
 */
function getIP() {
    return isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : getenv('REMOTE_ADDR');    
}



/**
 * @Desc convert string to price
 * @param string $str: the input string
 * @return int (with comma)
 */
function price($str) {
    $output = preg_replace("/[^0-9]/", "", $str);
    $arr = str_split($output);
    $count = 0;
    $result = "";
    for ($i = sizeof($arr) - 1; $i >= 0; $i--) {
        if ($arr[$i] != "") {
            $count++;
            $result = $arr[$i] . $result;
            if (($count >= 3) && ($i > 0)) {
                $count = 0;
                $result = "," . $result;
            }
        }
    }
    return $result;
}

/**
 * @Desc I don't remember
 * @param string $date: 
 * @param int $num_day:
 * @param string $format:
 * @return date time
 */
function cal_date($date, $num_day, $format = 'Y-m-d H:i:s') {
    $newdate = strtotime($num_day . ' day', strtotime($date));
    $newdate = date($format, $newdate);
    return $newdate;
}

/**
 * @Desc get images table
 * @param string $table_info: table infomation
 * @param int $rid: record id
 * @return array
 */
function getImagesTable($table_info, $rid) {
    if (!$rid) {
        return false;
    }
    global $oDb;
    $table_name = $table_info['table_name'];
    $primary_key = $table_info['primary_key'];
    $url = $table_info['images_url'];
    $relate_id = $table_info['relate_id'];
    $sql = "SELECT `$primary_key`, `$url`  FROM  `$table_name` WHERE `$relate_id` = $rid ";
    $query = $oDb->query($sql);
    $result = $oDb->fetchAll($query);
    return $result;
}

/**
 * @Desc convert string to price
 * @param string $str: the input string
 * @return int (with comma)
 */
function deleteImagesTable($table_info, $id) {
    if (!$id) {
        return;
    }
    global $oDb;
    $table_name = $table_info['table_name'];
    $primary_key = $table_info['primary_key'];
    $url = $table_info['images_url'];
    $sql = "SELECT `$primary_key`, `$url` FROM  `$table_name` WHERE `$primary_key` = $id ";
    $query = $oDb->query($sql);
    $images = $oDb->fetchArray($query);
    $image_path = ROOT_PATH . trim($images[$url], '.');

    // delete origin images
    if (@file_exists($image_path)) {
        @unlink($image_path);
        deleteMedia(trim($images[$url], '.'));
    }
    // delete thumbnail
    global $imagesSize;
    foreach ($imagesSize as $folder => $images_config) {
        $path_info = pathinfo($image_path);
        $thumb_path = $path_info['dirname'] . '/' . $folder . '/' . $path_info['basename'];
        if (@file_exists($thumb_path)) {
            @unlink($thumb_path);
        }
    }

    // delete in database
    $sql = "DELETE FROM `$table_name` WHERE `$table_name`.`$primary_key` = $id LIMIT 1 ";
    $oDb->query($sql);
    return true;
}



/**
 * @Desc get list category (with dash before sub category name)
 * @param 
 * @return array
 */
function getCategory() {
    global $oDb;
    $arr_category = array();
    $arr_category[0] = 'Trang chủ';

    $sql = "SELECT `id`, `name`, `parent_id` FROM t_category WHERE 1 ";
    $sql .= 'ORDER BY `name` ASC ';

    $rs = $oDb->query($sql);
    $allCat = $oDb->fetchAll($rs);
    foreach ($allCat as $key => $value) {
        if ($value['parent_id'] == 0) {
            $name = $value['name'];
            $id = $value['id'];
            $arr_category[$id] = $name;

            // sub1
            foreach ($allCat as $key1 => $value1) {
                if ($value1['parent_id'] == $value['id']) {
                    $name = '-----' . $value1['name'];
                    $id = $value1['id'];
                    $arr_category[$id] = $name;

                    // sub2
                    foreach ($allCat as $key2 => $value2) {
                        if ($value2['parent_id'] == $value1['id']) {
                            $name = '----------' . $value2['name'];
                            $id = $value2['id'];
                            $arr_category[$id] = $name;

                            // sub3
                            foreach ($allCat as $key3 => $value3) {
                                if ($value3['parent_id'] == $value2['id']) {
                                    $name = '---------------' . $value3['name'];
                                    $id = $value3['id'];
                                    $arr_category[$id] = $name;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return $arr_category;
}



/**
 * @Desc get class for admin menu, class="mnu_select tooltip" or class="tooltip"  
 * @param string $menu: menu name
 * @return string
 */
function getClassMenu($menu) {
    $f = Input::get('f', 'txt', '');
    $menu_select = '';
    $class_tooltip = '';
    $title_tooltip = '';
    if ($f == $menu['id']) {
        $menu_select = 'mnu_select';
    }
    if (trim($menu['desc']) != '' && isset($menu['desc'])) {
        $class_tooltip = 'tooltip';
        $title_tooltip = 'title="&ldquo;  ' . $menu['desc'] . '&bdquo;"';
    }
    
    $class_name = $menu_select." ".$class_tooltip;
    
    if ($class_name) {
        return "class='$class_name' $title_tooltip";
    } else {
        return '';
    }
}


/**
 * @Desc get max value of primary key
 * @param string $table: table in the database
 * @param string $id_field: the id of the table
 * @return int
 */
function getMaxId($table, $id_field = 'id') {
    return DB::for_table($table)->max($id_field) + 1;
}

/* return value of array.
  example:
  $arr[] = array(a=>b);
  $arr[] = array(c=>d, n=>m);
  $arr[] = array(e=>f);

  $result = getSubArrayValue($arr, 'c', 'd'); // return array(c=>d, 'n'=>m);
  -------------------------------------------------------------------------- */

function getSubArrayValue($arr, $sub_key, $sub_value) {
    foreach ($arr as $value) {
        if (isset($value[$sub_key]) && $value[$sub_key] == $sub_value) {
            return $value;
            break;
        }
    }
    return NULL;
}

/**
 * @Desc convert bytes to size (Kb, Mb, Gb)
 * @param int $bytes: input byetes
 * @return Kb/Mb/Gb
 */
if (!function_exists('bytesToSize')) {

    function bytesToSize($bytes) {
        $sizes = array(
            0 => 'Byte',
            1 => 'Kb',
            2 => 'Mb',
            3 => 'Gb',
            4 => 'Tb'
        );
        if ($bytes == 0)
            return '0 Byte';
        $i = intval(floor(log($bytes) / log(1024)));
        return round($bytes / pow(1024, $i), 2) . ' ' . $sizes[$i];
    }

    ;
}

/**
 * @Desc download images from copy content to host
 * @param string $str: the input string
 * @return int (with comma)
 */
function downloadImagesFromHTML($html) {
    include_once(INC_PATH.'lib/simple_html_dom.php');
    
    $html = str_get_html($html);
    
    foreach($html->find('img') as $e){
        $src =  $e->src;
        // check if image exists on this hosting
        if (strpos($src, base_url()) === false) {
            
            $file_name = CFile::getFileName($src);
            $file_name = CFile::removeSpecialChar($file_name);
            
            $type = Input::get('f', 'txt', 'media');
            $dir = "../uploads/images/" . $type . "/" . date('Y_m_d') . '/';

            // create folder
            if (!is_dir($dir)) {
                mkdir($dir, 0775, true);
            }

            // download file
            $file_path = trim($dir, '.') . $file_name;            
            CFile::downloadFile($src, ROOT_PATH . $file_path);

            // insert to the media
            insertMedia($file_path);

            // update dom attribute
            $e->src = base_url(). trim($file_path, '/');
        }
    }
    
    $content = $html->save();
    return $content;
}


/**
 * @Desc remove commar and dot in string
 * @param string $str: the input string
 * @return int (without comma, dots)
 */
function cleanNumber($a) {
    $a = str_replace( ',', '', $a );
    $a = str_replace( '.', '', $a );
    return $a;
}
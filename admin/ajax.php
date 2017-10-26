<?php

/**
 * @author duchanh
 * @copyright 2012
 */
define('ALLOW_ACCESS', TRUE);
include("config.php");

/**
 * @Desc Class Ajax for admin CMS
 */
class ajax {

    /**
     * @Desc function construct
     */
    function __construct() {
        $cmd = Input::get('cmd', 'txt', '');
        switch ($cmd) {
            case "delete_default_images":
                $this->delete_default_images();
                break;

            case "delete_file":
                $this->delete_file();
                break;

            case "save_images":
                $this->save_images();
                break;

            case "update_media_info":
                $this->update_media_info();
                break;

            case "delete_media":
                $this->delete_media();
                break;
           
            case "switchval":
                $this->switchval();
                break;

            case "of_ajax_post_action":
                $this->of_ajax_post_action();
                break;
          
            
            case "update_page_info":
                $this->update_page_info();
                break;

            case "delete_module":
                $this->delete_module();
                break;
            
            case "get_google_image":
                $this->get_google_image();
                break;
            
            case "save_google_image":
                $this->save_google_image();
                break;
            
            case "reload_media_content":
                $this->reload_media_content();
                break;
            
            case "modal_file_upload":
                $this->modal_file_upload();
                break;
            
            
        }
    }
    
    
    /**
     * @desc render html that display file type allow upload
     * @return echo "html"
     */
    function modal_file_upload(){
        include_once(INC_PATH . "core/CFile.class.php");
        
        $html =  '<div id="wrap_ajax-modal"><table id="table-ajax-modal">';
        $html .= '<tr class="header"><th>'.trans('file_type').'</th><th>&nbsp;</th></tr>';
        foreach (CFile::$file_type_allowed as $ext => $icon){
            $html .= '<tr><td>*.'.$ext.'</td><td><img src="'.  admin_url().'images/media/'.$icon.'"></td></tr>';
        }
        $html .= '</table></div>';
        
        echo $html;
    }

    
    /**
     * @desc delete module in page
     * @param string $page page name
     * @param string $pos position
     * @param string $module module name
     * @param int $eq 
     * @return echo "ss"
     */
    function delete_module() {
        $page = Input::get('page', 'txt', '');
        $pos = Input::get('pos', 'txt', '');
        $module = Input::get('module', 'txt', '');
        $eq = Input::get('eq', 'int', 0);
        $miniPage = new Page();
        $pageInfo = $miniPage->getPageInfoAdmin($page);
        $position = $pageInfo->position;
        if ($position) {
            $position = json_decode($position, true);
            if (isset($position[$pos][$eq])) {
                unset($position[$pos][$eq]);
            }
        }
        $position[$pos] = array_values($position[$pos]);
        $miniPage->position = json_encode($position);
        $miniPage->update($pageInfo->id, array('position'));
        echo 'ss';
    }

    
    /**
     * @desc update page position
     * @param string $page page name
     * @return echo 'ss'
     */
    function update_page_info() {
        $page = Input::get('page', 'txt', '');
        $miniPage = new Page();
        $pageInfo = $miniPage->getPageInfoAdmin($page);
        $page_id = $pageInfo->id;
        $pos_update = json_encode($_POST['position']);
        $miniPage->position = $pos_update;
        $miniPage->update($page_id, array('position'));
        echo 'ss';
    }

    /**
     * @desc update options, add new if not exists
     * @param string $type action type save|reset
     * @return nothing
     */
    function of_ajax_post_action() {
        $type = Input::get('type', 'txt', 0);
        $func = Input::get('f', 'txt', 'options');
        include("include/$func.php");
        
        switch ($type) {
            case 'save':
                $data = Input::get('data', 'txt', '');
                if (!$data) {
                    return;
                }
                parse_str(html_entity_decode($data), $data);

                // call update options
                update_multi_options($data);
                echo '1';

                break;

            case 'reset':                
                $data = array();
                foreach ($of_options as $key => $value) {
                    if (isset($value['id']) && isset($value['std'])) {
                        $data[$value['id']] = $value['std'];
                    }
                }
                update_multi_options($data);
                echo '1';
                break;
                
            case 'backup_options':
                $miniOptions = new cmsOptions($of_options);
                $smof_data = $miniOptions->getOptionData();
                
                $backup_data = base64_encode(serialize($smof_data));
                update_option('hcms_of_backup', $backup_data);
                update_option('hcms_of_backup_time', date('Y-m-d H:i:s', time()));
                echo '1';
                break;
            
            
            case 'restore_options':
                $backup_data = get_option('hcms_of_backup');
                $smof_data = unserialize(base64_decode($backup_data));
                update_multi_options($smof_data);
                echo '1';
                break;
            
            
            case 'import_options':
                $data = Input::get('data', 'txt', '');
                $smof_data = unserialize(base64_decode($data));
                update_multi_options($smof_data);
                echo '1';
                break;
            
          
        }
    }
    
   

    /**
     * @Desc delete media by list ID
     * @param string $list_id list ID, each ID separate by a comma ','
     * @return echo 'ss'
     */
    function delete_media() {
        $list_id = Input::get('list_id', 'txt', '');
        if ($list_id) {
            $listID = explode(',', $list_id);
            foreach ($listID as $media_id) {
                deleteMedia((int) $media_id);
            }
        }
        echo 'ss';
    }

    /**
     * @Desc update media infomation include alt, name, des...
     * @return echo 'ss'
     */
    function update_media_info() {
        $id = Input::get('id', 'int', 0);
        if (!$id) {
            return false;
        }
        $Media = new Media();
        $Media->read($id);
        $other_info = $Media->other_info;
        $other_info = json_decode($other_info, true);


        $title = Input::get('title', 'txt', '');
        $caption = Input::get('caption', 'txt', '');
        $alt = Input::get('alt', 'txt', '');
        $desc = Input::get('desc', 'txt', '');

        $other_info['title'] = $title;
        $other_info['caption'] = $caption;
        $other_info['alt'] = $alt;
        $other_info['desc'] = $desc;
        $other_info = json_encode($other_info);
        $Media->other_info = $other_info;
        $Media->update($id, array('other_info'));
        echo 'ss';
    }

    /**
     * @Desc delete defautt images
     * @param 
     * @return nothing
     */
    function delete_default_images() {
        $src = Input::get('src', 'txt', '');
        if ($src) {
            $image_path = '..' . trim($src, '.');
            if (@file_exists($image_path)) {
                @unlink($image_path);
                deleteMedia($src);
            }
        }
    }

    /**
     * @Desc delete file
     * @param 
     * @return ss
     */
    function delete_file() {
        $id = Input::get('id', 'int', 0);
        $f = Input::get('f', 'txt', '');
        switch ($f) {
            case "media":
                if ($id) {
                    deleteMedia($id);
                }
                break;

            default:
                if ($id && $f) {
                    include_once("include/$f.php");
                    foreach ($column as $field => $value) {
                        if ($value['type'] == 'input:multiimages') {
                            $table_info = $value['table'];
                            break;
                        }
                    }
                    if ($table_info) {
                        deleteImagesTable($table_info, $id);
                    }
                }
                break;
        }
        echo 'ss';
    }
    
    
    // reload media content
    function reload_media_content(){
        $Media = new Media();
        echo $Media->showList(true);
    }

}

new ajax();
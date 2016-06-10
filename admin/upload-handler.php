<?php

/**
 * @author duchanh
 * @copyright 2015
 * @desc process upload file with type = images
 */
define('ALLOW_ACCESS', TRUE);
include("config.php");
include_once(INC_PATH . "core/CFile.class.php");
include_once(INC_PATH . "core/Images.class.php");

@session_start();

// disable error
//ini_set("html_errors", "0");
ini_set("display_error", "on");
ini_set('error_reporting',E_ALL);



// create directory for upload if it not exists
$type = Input::get('type', 'txt', '');
if (!$type) {
    echo '';
    exit;
}


// check CKeditor upload
$funcNum = Input::get('CKEditorFuncNum', 'txt', '');
// Optional: instance name (might be used to load a specific configuration file or anything else).
$CKEditor = Input::get('CKEditor', 'txt', '');
if($funcNum && $CKEditor){
    // Optional: might be used to provide localized messages.
    $langCode = Input::get('langCode', 'txt', '');
    
    // Check the upload
    if (!isset($_FILES["upload"]) || !is_uploaded_file($_FILES["upload"]["tmp_name"]) || $_FILES["upload"]["error"] != 0) {
        $message = trans('invalid_file_upload');
        $url = '';
        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
        exit(0);
    }
    
    $path_upload = CFile::getPathUpload($type);

    if ($_FILES['upload']['name'] != 'none' && $_FILES['upload']['name'] != '') {
        $file_name = CFile::removeSpecialChar($_FILES['upload']['name']); 
        CFile::uploadFile($_FILES['upload']['tmp_name'], $file_name, $path_upload);
        $file_path = $path_upload . $file_name;
        // if file upload is images create thumbnail
        if (@is_array(getimagesize($file_path))) {
            // create thumbnail
            CFile::createImageThumbnail($file_path);
        }
        
        // insert to the t_media table
        $relative_path = CFile::getRelativePath($file_path);
        insertMedia($relative_path, 0, $type);
        $url = base_url() . $relative_path;
        $message = '';
        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
    } else {
        $message = 'File tải lên không hợp lệ';
        echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
    }
    die;
}


// Check the upload
if (!isset($_FILES["userfile"]) || !is_uploaded_file($_FILES["userfile"]["tmp_name"]) || $_FILES["userfile"]["error"] != 0) {
    $arrResult = array(
        'status' => 'error',
        'msg' => 'invalid upload'
    );
    echo json_encode($arrResult);
    exit(0);
}

// get path upload
$path_upload = CFile::getPathUpload($type);

if ($_FILES['userfile']['name'] != 'none' && $_FILES['userfile']['name'] != '') {
    $file_name = CFile::removeSpecialChar($_FILES['userfile']['name']); 
    $file_name = CFile::uploadFile($_FILES['userfile']['tmp_name'], $file_name, $path_upload);    
    $is_ok = ($file_name != 'none') ? true : false;
    $file_path = $path_upload . $file_name;
    
    // insert to media if upload sucsess
    if ($is_ok) {
        // insert to the t_media table
        $relative_path = CFile::getRelativePath($file_path);
        $media_id = insertMedia($relative_path, 0, $type);
        
        
        // resize if very large images
        if(defined('MAX_SIZE_IMAGE') && @is_array(getimagesize($file_path))){
            $image = new Image($file_path);
            list($width, $height) = explode('x', MAX_SIZE_IMAGE);
            $image->resize($width, $height);
            $file_upload_info = pathinfo($file_path);
            $image->save($file_upload_info['filename'], $file_upload_info['dirname'], $file_upload_info['extension']);
        }
        
        // Create thumb if file upload is a images
        if (@is_array(getimagesize($file_path))) {            
            // create thumbnail
            CFile::createImageThumbnail($file_path);
        }
        
        // insert to table and add to SECSSION
        
        $file_include = "include/$type.php";
        if (file_exists($file_include)) {
            include_once("include/$type.php");
        }
        
        $id = 0;
        $type_upload = Input::get('type_upload', 'txt', '');
        if ($type != 'media' && $type_upload != 'single' && isset($column)) { // if not upload default images
            foreach ($column as $image_field => $col) {
                if ($col['type'] == 'input:multiimages') {
                    $table_info = $col['table'];
                    $table_name = $table_info['table_name'];
                    $primary_key = $table_info['primary_key'];
                    $images_url = $table_info['images_url'];
                    $relate_id = $table_info['relate_id'];
                    // insert to db

                    $tableRecord = DB::for_table($table_name)->create();
                    $tableRecord->$images_url = $relative_path;
                    $tableRecord->save();
                    $id = $tableRecord->id();
                    $arrId = isset($_SESSION['multiimages'][$image_field]) ? $_SESSION['multiimages'][$image_field] : array();

                    $arrId[] = $id;
                    $_SESSION['multiimages'][$image_field] = $arrId;
                    break;
                }
            }
        }
        if ($id == 0) $id = $media_id;
        
        $arrResult = array(
            'status'    => 'success',
            'id'        => $id,
            'thumb'     => getThumbnail('thumb-150', $relative_path),
            'icon'      => admin_url() .'images/media/'.CFile::getFileIcon($relative_path),
            'filename'  => CFile::getFileName($relative_path),
            'src'       => $relative_path
        );
        
    } else {
        $arrResult = array(
            'status'    => 'error',
            'msg'       => 'invalid file upload'
        );
    }

    echo json_encode($arrResult);
} else {
    $arrResult = array(
        'status' => 'error',
        'id' => 0,
        'src' => ADMIN_FOLDER . '/images/not-available.png',
        'msg' => 'This images not available'
    );
    echo json_encode($arrResult);
}


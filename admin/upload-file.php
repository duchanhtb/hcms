<?php

/** for upload file with type:file
 * @author duchanh
 * @copyright 2015
 */
define('ALLOW_ACCESS', TRUE);
include("config.php");
include_once(INC_PATH . "core/CFile.class.php");

// disable error
ini_set("html_errors", "0");


// Check the upload
if (!isset($_FILES["userfile"]) || !is_uploaded_file($_FILES["userfile"]["tmp_name"]) || $_FILES["userfile"]["error"] != 0) {
    echo "ERROR:invalid upload";
    exit(0);
}

// create folder to upload if not exists
$dir = "../uploads/files/";
if (!is_dir($dir)) {
    mkdir($dir, 0775, true);
}

if ($_FILES['userfile']['name'] != 'none' && $_FILES['userfile']['name'] != '') {

    $aTypeUpload = CFile::$file_type_allowed;

    // remove special char
    $file_name = CFile::removeSpecialChar($_FILES['userfile']['name']);

    // do upload
    $file_name = CFile::uploadFile($_FILES['userfile']['tmp_name'], $file_name, $dir, $aTypeUpload);

    if ($file_name == 'none') {
        $result = array(
            'status' => 'error',
            'msg' => 'This file cannot be accepted to upload'
        );
        echo json_encode($result);
        exit;
    }

    $file_path = trim($dir, '.') . $file_name;

    // insert to the media
    $type = Input::get('type', 'txt', '');
    insertMedia($file_path, 0, $type);

    $result = array(
        'status' => 'sucsess',
        'path' => $file_path,
        'url' => base_url() . $file_path,
        'filename' => CFile::getFileName($file_path),
        'icon' => admin_url() . 'images/media/' . CFile::getFileIcon($file_path)
    );
    echo json_encode($result);
} else {
    $result = array(
        'status' => 'error',
        'msg' => "Error when upload this file"
    );
    echo json_encode($result);
}
<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class CFile {

    public static $file_type_allowed = array(
        // document    
        'pdf' => 'pdf.png',
        'doc' => 'word.png',
        'docx' => 'word.png',
        'ppt' => 'powerpoint.png',
        'pptx' => 'powerpoint.png',
        'xls' => 'excel.png',
        'xlsx' => 'excel.png',
        // zip
        'zip' => 'compressed.png',
        '7zip' => 'compressed.png',
        'gz' => 'compressed.png',
        'tar' => 'compressed.png',
        'rar' => 'compressed.png',
        'iso' => 'compressed.png',
        '7zip' => 'compressed.png',
        // txt
        'txt' => 'text.png',
        'sql' => 'text.png',
        // movie        
        'flv' => 'video.png',
        'mov' => 'video.png',
        'mp3' => 'video.png',
        'mp4' => 'video.png',
        'mkv' => 'video.png',
        'avi' => 'video.png',
        'swf' => 'flash.png',
        // images
        'jpg' => 'image.png',
        'jpeg' => 'image.png',
        'gif' => 'image.png',
        'png' => 'image.png',
        'ico' => 'image.png',
        // web text
        'js' => 'html.png',
        'xml' => 'html.png',
        'html' => 'html.png',
        'htm' => 'html.png',
        'tpl' => 'html.png',
        'ini' => 'developer.png'
    );

    /**
     * 	Scope: Public
     * 	Level: Instance
     * 	Constructor
     */
    function CFile() {
        
    }

    /**
     * 	Scope: Public
     * 	Level: Class
     */
    public static function getFileDir($dir, $ext = false) {
        $result = array();

        if (!is_dir($dir)) {
            return false;
        }
        if ($files_dir = opendir($dir)) {
            while (($file = readdir($files_dir)) !== false) {
                if ($file == '.' || $file == '..')
                    continue;

                if ($ext != false) {
                    if (stristr($file, $ext) !== false) {
                        $result[] = $file;
                    }
                } else {
                    $result[] = $file;
                }
            }
        }

        return $result;
    }

    /**
     * 	Scope: Public
     * 	Level: Class
     */
    public static function uploadFile($temp_file, $file_name, $folder, $aTypeUpload = "") {

        $sOriginalFileName = $file_name;
        $sExtension = substr($file_name, ( strrpos($file_name, '.') + 1));
        $sExtension = strtolower($sExtension);
        $iCounter = 0;
        $sServerDir = $folder;
        while (true) {
            // Compose the file path.
            $sFilePath = $sServerDir . $file_name;

            // If a file with that name already exists.
            if (is_file($sFilePath)) {
                $iCounter++;
                $file_name = CFile::removeExtension($sOriginalFileName) . '_' . $iCounter . '.' . $sExtension;
            } else {
                move_uploaded_file($temp_file, $sFilePath);

                if (is_file($sFilePath)) {
                    $oldumask = umask(0);
                    chmod($sFilePath, 0777);
                    umask($oldumask);
                }
                clearstatcache();
                break;
            }
            clearstatcache();
        }
        return $file_name;
    }

    /**
     * 	Scope: Public
     * 	Level: Class
     */
    public static function removeExtension($fileName) {
        return substr($fileName, 0, strrpos($fileName, '.'));
    }

    /**
     * 	Scope: Public
     *  @example CFile::unzip('/var/www/html/xxx.zip', 'var/www/html/')
     */
    public static function unzip() {
        $iParNum = func_num_args();
        $aPar = func_get_args();

        $sPackagePath = $aPar[0]; // absolute path to zip file
        $sDesDir = $aPar[1]; // Path/Path2/Path3/

        CFile::makeDirFromString($sDesDir);
        $vZip = zip_open($sPackagePath);

        if ($vZip) {
            while ($vZipEntry = zip_read($vZip)) {

                $sFileName = zip_entry_name($vZipEntry);

                if (strrpos($sFileName, "/") != ( strlen($sFileName) - 1 )) {
                    $sFilePath = $sDesDir . $sFileName;
                    $sDirPath = substr($sFilePath, 0, strrpos($sFilePath, "/"));
                    CFile::makeDirFromString($sDirPath);
                    zip_entry_open($vZip, $vZipEntry, "r");
                    $sSize = zip_entry_filesize($vZipEntry) + 1;
                    $vBuf = zip_entry_read($vZipEntry, $sSize);
                    $vFp = fopen($sFilePath, "a+");
                    fwrite($vFp, $vBuf);
                    fclose($vFp);
                    zip_entry_close($vZipEntry);
                }
            }
            zip_close($vZip);
        }
    }

    /**
     * 	Scope: Public
     *  @example CFile::makeDirFromString('/var/www/html/abc/xxx')
     */
    public static function makeDirFromString() {
        $iParNum = func_num_args();
        $aPar = func_get_args();

        if ($iParNum == 1)
            $sPath = $aPar[0];# Path1/Path2/Path3/

        $aPath = explode("/", $sPath);
        $sNewPath = "";
        foreach ($aPath as $v) {
            $sNewPath .= $v;
            if (!in_array($v, array("", ".", "..")) && !is_dir($sNewPath)) {
                mkdir($sNewPath, 0775);
            }
            $sNewPath .= "/";
        }
        return true;
    }

    /**
     * 	Scope: Public
     */
    public static function copyDir() {
        $iParNum = func_num_args();
        $aPar = func_get_args();

        $sSrcDir = $aPar[0]; // Path1/Path2/Path3
        $sDesDir = $aPar[1]; // Path1/Path2/Path3
        if ($iParNum == 3)
            $sFPatern = $aPar[2]; // File name pattern (perl)

        $vDirHandle = opendir($sSrcDir);
        $aFiles = array();
        $aDirs = array();
        $aNotChosenFiles = array(".", "..");
        $aNotChosenDirs = array(".", "..");
        while (false !== ( $sFileName = readdir($vDirHandle) )) {
            if (is_dir($sSrcDir . "/" . $sFileName) && !in_array($sFileName, $aNotChosenDirs)) {
                $aDirs[] = $sFileName;
            } else if (!in_array($sFileName, $aNotChosenFiles)) {
                if ($iParNum == 3) {
                    if (preg_match($sFPattern, $sFileName)) {
                        $aFiles[] = $sFileName;
                    }
                } else {
                    $aFiles[] = $sFileName;
                }
            }
        }

        if (count($aFiles) > 0) {
            foreach ($aFiles as $k => $v) {
                CFile::makeDirFromString($sDesDir);
                copy($sSrcDir . "/" . $v, $sDesDir . "/" . $v);
            }
        }

        foreach ($aDirs as $v) {
            if ($iParNum == 3)
                CFile::copyDir($sSrcDir . "/" . $v, $sDesDir . "/" . $v, $sFPatern);
            else
                CFile::copyDir($sSrcDir . "/" . $v, $sDesDir . "/" . $v);
        }
    }

    /**
     * 	Scope: Public
     */
    public static function removeDir() {
        $iParNum = func_num_args();
        $aPar = func_get_args();

        $sSrcDir = $aPar[0]; // Path1/Path2/Path3
        if ($iParNum == 2)
            $sFPatern = $aPar[1]; // File name pattern (perl)

        $vDirHandle = opendir($sSrcDir);
        $aFiles = array();
        $aDirs = array();
        $aNotChosenFiles = array(".", "..");
        $aNotChosenDirs = array(".", "..");
        while (false !== ( $sFileName = readdir($vDirHandle) )) {
            if (is_dir($sSrcDir . "/" . $sFileName) && !in_array($sFileName, $aNotChosenDirs)) {
                $aDirs[] = $sFileName;
            } else if (!in_array($sFileName, $aNotChosenFiles)) {
                if ($iParNum == 2) {
                    if (preg_match($sFPattern, $sFileName)) {
                        $aFiles[] = $sFileName;
                    }
                } else {
                    $aFiles[] = $sFileName;
                }
            }
        }

        if (count($aFiles) > 0) {
            foreach ($aFiles as $k => $v) {
                unlink($sSrcDir . "/" . $v);
            }
        }

        foreach ($aDirs as $v) {
            if ($iParNum == 2)
                CFile::removeDir($sSrcDir . "/" . $v, $sFPatern);
            else
                CFile::removeDir($sSrcDir . "/" . $v);
        }

        closedir($vDirHandle);
        rmdir($sSrcDir);
    }

    /**
     * @Desc function remove VNI string. example ê->e, â->a, ẹ->e
     * @param string $str: the input string
     * @return string
     */
    public static function removeSpecialChar($str) {
        // chuyen co dau sang khong dau
        $vietChar = 'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ|é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ|ó|ò|ỏ|õ|ọ|ơ|ớ|ờ|ở|ỡ|ợ|ô|ố|ồ|ổ|ỗ|ộ|ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự|í|ì|ỉ|ĩ|ị|ý|ỳ|ỷ|ỹ|ỵ|đ|Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ|É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ|Ó|Ò|Ỏ|Õ|Ọ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự|Í|Ì|Ỉ|Ĩ|Ị|Ý|Ỳ|Ỷ|Ỹ|Ỵ|Đ';
        $engChar = 'a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|e|e|e|e|e|e|e|e|e|e|e|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|u|u|u|u|u|u|u|u|u|u|u|i|i|i|i|i|y|y|y|y|y|d|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|E|E|E|E|E|E|E|E|E|E|E|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|U|U|U|U|U|U|U|U|U|U|U|I|I|I|I|I|Y|Y|Y|Y|Y|D';
        $arrVietChar = explode("|", $vietChar);
        $arrEngChar = explode("|", $engChar);
        $str = str_replace($arrVietChar, $arrEngChar, $str);

        // url title 
        $separator = 'dash';
        $lowercase = false;
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
        $str = trim(stripslashes($str));

        // return value
        return strtolower($str);
    }
    
    /**
     * 	@desc get filetype icon     
     * 	@param string $path path of file
     */
    public static function getFileIcon($path){
        $fileType = self::$file_type_allowed;        
        $path_info = pathinfo($path);
        foreach($fileType as $ext=>$icon){
            if($ext == $path_info['extension']) return $icon;
        }
        return 'fileicon.png';
    }

    /**
     * @Desc get file name of string: example: the input is "/var/www/html/abc.txt" the output is abc.txt 
     * @param string $str: table in the database
     * @return string
     */
    public static function getFileName($str) {
        $path_info = pathinfo($str);
        $ext = $path_info['extension'];
        $filename = $path_info['filename'];
        return $filename . '.' . $ext;
    }

    /**
     * @Desc function download file from url
     * @param string $file_url: filename include extension
     * @param string $save_to: part save file
     * @return boolean
     */
    public static function downloadFile($file_url, $save_to) {

        $save_to = @trim($save_to, '..');
        $path_info = pathinfo($save_to);
        $dir_name = $path_info['dirname'];
        if (!is_writable($dir_name)) {
            return false;
        }

        if (!is_dir($dir_name)) {
            mkdir($dir_name, 0777, true);
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_POST, 0);
        curl_setopt($ch, CURLOPT_URL, $file_url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $file_content = curl_exec($ch);
        curl_close($ch);

        if (!$file_content) {
            return false;
        }

        $downloaded_file = fopen($save_to, 'w');
        fwrite($downloaded_file, $file_content);
        fclose($downloaded_file);

        return true;
    }
    
    
    /**
     * @Desc function create folder to upload if not exists
     * @param string $f: function
     */
    public static function createImageThumbnail($img_path){
        global $imagesSize;
        $file_info = pathinfo($img_path);
        $dirname = $file_info['dirname'];
        
        foreach ($imagesSize as $folder => $wh) {
            $thumb_width = $wh['width']; // width
            $thumb_height = $wh['height']; // height 
            $crop = (isset($wh['crop']) && $wh['crop'] == true) ? 'crop' : 'fit'; // crop
            $thumb_dir = $dirname .'/'. $folder . '/';
            
            // create thumb folder
            if (!is_dir($thumb_dir)) mkdir($thumb_dir, 0775, true);
            
            // create Thumb Images
            $thumb_path = $thumb_dir . $file_info['basename'];
            $image = new Image($img_path);
            $image->createThumb($thumb_path, $thumb_width, $thumb_height, $crop);
        }
    }
    
    
    public static function getPathUpload($f){
        $f = ($f!= '') ? $f : 'media';
        $upload_folder = 'uploads';
        $path = ROOT_PATH.$upload_folder.'/'.$f.'/'.date('Y_m_d').'/';
        if(!is_dir($path)) mkdir($path, 0775, true);
        return $path;
    }
    
    
    public static function getRelativePath($full_path){
        $relative_path =  str_replace(ROOT_PATH, '', $full_path);
        return str_replace("\\", "/", $relative_path);
    }
            
            

}

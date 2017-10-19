<?php

// if(!defined('ALLOW_ACCESS')) exit('No direct script access allowed');

/**
 * @author DucHanh
 * @copyright 2012
 */
//////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// COMMON FUNCTION //////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////

/**
 * @Desc Break string from start to $length charactor, (only break on space letter)
 * @param $str: string to break
 * @param $length: number of charactor
 * @param $minword: min charactor of word
 * @return string
 */
function _substr($str, $length, $minword = 3) {
    $str = strip_tags($str);
    $sub = '';
    $len = 0;

    foreach (explode(' ', $str) as $word) {
        $part = (($sub != '') ? ' ' : '') . $word;
        $sub .= $part;
        $len += strlen($part);
        if (strlen($word) > $minword && strlen($sub) >= $length) {
            break;
        }
    }
    return $sub . (($len < strlen($str)) ? '...' : '');
}

/**
 * @Desc get id of youtube
 * @param $ytURL: link of video from youtube example: http://www.youtube.com/watch?v=aQPIPaH4eAE 
 * @return string example: aQPIPaH4eAE
 */
function get_youtube_id($ytURL) {
    $ytvIDlen = 11; // This is the length of YouTube's video IDs
    // The ID string starts after "v=", which is usually right after
    // "youtube.com/watch?" in the URL
    $idStarts = strpos($ytURL, "?v=");

    // In case the "v=" is NOT right after the "?" (not likely, but I like to keep my
    // bases covered), it will be after an "&":
    if ($idStarts === false)
        $idStarts = strpos($ytURL, "&v=");
    // If still FALSE, URL doesn't have a vid ID
    if ($idStarts === false)
        die("YouTube video ID not found. Please double-check your URL.");

    // Offset the start location to match the beginning of the ID string
    $idStarts += 3;

    // Get the ID string and return it
    $ytvID = substr($ytURL, $idStarts, $ytvIDlen);

    return $ytvID;
}

/**
 * @Desc remove  whitespace from between html tag
 * @param string $html: html string
 * @return string
 */
function compressHtml($html) {
    return preg_replace('~>\\s+<~m', '><', $html);
}

/**
 * @Desc create hash password
 * @param $password: password before hash
 * @return password hash
 */
function createMd5Password($password) {
    return md5(PASS_ENDCODE . $password);
}

/**
 * @Desc check string if that it a email
 * @param $email: string want to check is a email
 * @return true|false
 */
function checkValidEmail($email) {
    $result = true;
    if (!@eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$", $email)) {
        $result = false;
    }
    return $result;
}

/**
 * @Desc get IP address of user 
 * @return IP address
 */
function getUserIp() {
    if (trim($_SERVER["REMOTE_ADDR"]) == "::1") {
        return '127.0.0.1';
    }
    return trim($_SERVER["REMOTE_ADDR"]);
}

/**
 * @Desc send mail to a user
 * @param $to: email want to send
 * @param $subject: Subject of email
 * @param $content: the content of mail
 * @return true|false
 */
function sendMail($to, $reply = false, $subject, $content) {
    /*
     * if you using gmail and can not send mail via SMTP please visit three link below
     * https://www.google.com/settings/u/1/security/lesssecureapps
     * https://accounts.google.com/b/0/DisplayUnlockCaptcha
     * https://security.google.com/settings/security/activity?hl=en&pli=1
     */

    require_once (INC_PATH . 'lib/PHPMailer/PHPMailerAutoload.php');


    //$hex_password = "2291817227dceab849837be0ce62b3e3";

    $smtp_name = get_option('smtp-name');
    $smtp_email = get_option('smtp-email');
    $smtp_password = get_option('smtp-password');

    $smtp_port = (get_option('smtp-port') != '') ? get_option('smtp-port') : 465;

    if ($smtp_name && $smtp_email && $smtp_password) {
        $form = array(
            'name' => $smtp_name,
            'email' => $smtp_email,
            'password' => $smtp_password,
        );
    } else {
        require_once (INC_PATH . 'lib/AES/AES.class.php');

        $hex_name = "38f129991c2a6b3b886a62e61ab13bd6";
        $hex_email = "e3f73c65c8cd19443af8c929d2a0031c1b440648402d0ae2cf46b07e163a1ec0";
        $hex_pwd = "2291817227dceab849837be0ce62b3e3";

        $AES = new AES(AES_KEY);

        $form = array(
            'name' => $AES->decrypt(hex2bin($hex_name)),
            'email' => $AES->decrypt(hex2bin($hex_email)),
            'password' => $AES->decrypt(hex2bin($hex_pwd))
        );
    }

    if (!$reply) {
        $reply = $form;
    }

    $mail = new PHPMailer(); // create a new object
    $mail->IsSMTP(); // enable SMTP
    $mail->SMTPDebug = false; // debugging: 1 = errors and messages, 2 = messages only
    $mail->SMTPAuth = true; // authentication enabled
    $mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for Gmail
    $mail->CharSet = 'UTF-8';
    $mail->Host = "smtp.gmail.com";
    $mail->Port = $smtp_port; // or 587
    $mail->IsHTML(true);
    $mail->Username = $form['email'];
    $mail->Password = $form['password'];
    $mail->SetFrom($form['email'], $form['name']);
    $mail->AddReplyTo($reply['email'], $reply['name']);

    $mail->Subject = $subject;
    $mail->Body = $content;
    $mail->MsgHTML($content);
    $mail->AddAddress($to['email'], $to['name']);
    if (!$mail->Send()) {
        return "Mailer Error: " . $mail->ErrorInfo;
    } else {
        return "Message has been sent";
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// END USER FUNCTION ////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////// OTHER FUNCTION ////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////

/**
 * @Desc get value from t_option
 * @param string $option_name: the option name
 * @return string
 */
function get_option($option_name) {
    global $allOptions;

    if (isset($allOptions) && count($allOptions) > 0) {
        if (isset($allOptions[$option_name]))
            return $allOptions[$option_name];
        else
            return "";
    }else {
        $table = 'm_options';
        $allOptions = array();
        $options = DB::for_table($table)->find_many();
        foreach ($options as $option) {
            $allOptions[$option->name] = $option->value;
        }
        return isset($allOptions[$option_name]) ? $allOptions[$option_name] : false;
    }
}

/**
 * @Desc add options, do nothing if options exists
 * @param string $option_name, option name
 * @param string $option_value, option value
 * @return boolean
 */
function add_option($option_name, $option_value) {
    $table = 'm_options';
    $option = DB::for_table($table)->create();
    $option->name = $option_name;
    $option->value = $option_value;
    return $option->save();
}

/**
 * @Desc update option, add news if not exists
 * @param string $option_name, option name
 * @param string $option_value, option value
 * @return boolean
 */
function update_option($option_name, $option_value) {
    $table = 'm_options';
    $option = DB::for_table($table)->where_equal('name', $option_name)->find_one();
    if ($option) {
        $option->value = $option_value;
        return $option->save();
    } else {
        $option = DB::for_table($table)->create();
        $option->name = $option_name;
        $option->value = $option_value;
        return $option->save();
    }
}

/**
 * @Desc update multi option, add news if not exists
 * @param string $option_name, option name
 * @param string $option_value, option value
 * @return boolean
 */
function update_multi_options($arrValue) {
    // clean all data in table
    $table = 'm_options';
    //DB::for_table($table)->raw_execute("TRUNCATE TABLE `$table`");

    foreach ($arrValue as $option_name => $option_value) {
        $option = DB::for_table($table)
                ->where_equal('name', $option_name)
                ->find_one();
        
        if($option){
            $option->value = $option_value;
        }else{
            $option = DB::for_table($table)->create();
            $option->name = $option_name;
            $option->value = $option_value;
        }
        $option->save();
    }

    return true;
}

/**
 * @Desc get small images and create thumbnail if not exists
 * @param string $folder: example thumb-150
 * @param mix $path_or_id: path of the images or id in the t_media
 * @return string
 */
function getThumbnail($folder, $path_or_id) {
    $path = '';
    $no_image = 'uploads/noimage.jpg';

    if (is_int($path_or_id)) {
        $id = $path_or_id;
        $Media = new Media();
        $Media->read($id);
        $path = $Media->path;
    } else {
        $path = trim($path_or_id, '.');
    }

    $http_prefix = substr($path, 0, 4);
    if ($http_prefix == 'http')
        return $path;

    if ($folder == 'origin') {
        return base_url() . $path;
    }

    global $imagesSize;
    $size_info = $imagesSize[$folder];
    $with = $size_info['width'];
    $height = $size_info['height'];
    $crop = $size_info['crop'];
    $absolutePath = ROOT_PATH.$path;
    if ($path && @is_array(getimagesize($absolutePath))) {
        $thumb = base_url() . createThumbnail($folder, $path, $with, $height, $crop);
        return $thumb;
    }else if($path && !@is_array(getimagesize($absolutePath))){
        return admin_url() .'images/media/'.CFile::getFileIcon($path);
    }else{
        return base_url() . createThumbnail($folder, $no_image, $with, $height, $crop);
    }
    
}

/**
 * @Desc create thumbnail if not exists
 * @param string $folder: folder of the thumbnail
 * @param $path: path of the origin images
 * @return array
 */
function createThumbnail($folder, $path, $width, $height, $crop = false) {
    if ($path) {
        // remove base_url
        $img_path = str_replace(base_url(), '', $path);
        $img_path = trim($img_path, '.');
        $img_path = ROOT_PATH . $img_path;

        if (!file_exists($img_path)) {
            $img_path = ROOT_PATH . 'uploads/noimage.jpg';
            $thumb_path = ROOT_PATH . 'uploads/' . $folder . '/noimage.jpg';
            $crop = ($crop == true) ? 'crop' : 'fit';
            $imageThumb = new Image($img_path);
            $imageThumb->createThumb($thumb_path, $width, $height, $crop);
            return str_replace(ROOT_PATH, '/', $thumb_path);
        }

        // create Folder
        $path_info = pathinfo($img_path);
        $filename = $path_info['basename'];
        $file_folder = $path_info['dirname'];
        $thumb_dir = $file_folder . '/' . $folder . '/';
        if (!is_dir($thumb_dir)) {
            mkdir($thumb_dir, 0775, true);
        }

        // create images if not exists;
        $thumb_path = $thumb_dir . $filename;
        if (!file_exists($thumb_path)) {
            $crop = ($crop == true) ? 'crop' : 'fit';
            $imageThumb = new Image($img_path);
            $imageThumb->createThumb($thumb_path, $width, $height, $crop);
        }
        return str_replace(ROOT_PATH, '/', $thumb_path);
    }
    return 'uploads/noimage.jpg';
}

/**
 * @Desc get small image example thumb, thumb300
 * @param $link_img: link img full
 * @param $type: type wanna get
 * @return array
 */
function getSmallImages($link_img, $type = 'thumb', $crop = false) {
    if ($link_img) {
        // remove base_url
        $img_path = str_replace(base_url(), '', $link_img);
        $img_path = trim($img_path, '.');
        $img_path = '..' . $img_path;

        if (!file_exists($img_path)) {
            return 'uploads/noimage.jpg';
        }

        // create Folder 
        $last_pos_slash = strrpos($img_path, '/');
        $first = substr($img_path, 0, $last_pos_slash - strlen($img_path) + 1);
        $filename = substr($img_path, $last_pos_slash + 1, strlen($img_path));
        $thumb_dir = $first . $type . '/';
        if (!is_dir($thumb_dir)) {
            mkdir($thumb_dir, 0775, true);
        }
        $thumb_path = $thumb_dir . $filename;
        // create images if not exists;
        if (!file_exists($thumb_path)) {
            $size = intval(str_replace('thumb', '', $type));
            $size = ($size > 0 ) ? $size : 150;
            $crop = ($crop == true) ? 'crop' : 'fit';
            $imageThumb = new Image($img_path);
            $imageThumb->createThumb($thumb_path, $size, $size, $crop);
        }
        $last_pos_slash = strrpos($link_img, '/');
        $first = substr($link_img, 0, $last_pos_slash - strlen($link_img) + 1);
        $filename = substr($link_img, $last_pos_slash + 1, strlen($link_img));
        return $first . $type . '/' . $filename;
    }
    return 'uploads/noimage.jpg';
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
 * Translates a number to a short alhanumeric version
 *
 * Translated any number up to 9007199254740992
 * to a shorter version in letters e.g.:
 * 9007199254740989 --> PpQXn7COf
 *
 * specifiying the second argument true, it will
 * translate back e.g.:
 * PpQXn7COf --> 9007199254740989
 *
 * this function is based on any2dec && dec2any by
 * fragmer[at]mail[dot]ru
 * see: http://nl3.php.net/manual/en/function.base-convert.php#52450
 *
 * If you want the alphaID to be at least 3 letter long, use the
 * $pad_up = 3 argument
 *
 * In most cases this is better than totally random ID generators
 * because this can easily avoid duplicate ID's.
 * For example if you correlate the alpha ID to an auto incrementing ID
 * in your database, you're done.
 *
 * The reverse is done because it makes it slightly more cryptic,
 * but it also makes it easier to spread lots of IDs in different
 * directories on your filesystem. Example:
 * $part1 = substr($alpha_id,0,1);
 * $part2 = substr($alpha_id,1,1);
 * $part3 = substr($alpha_id,2,strlen($alpha_id));
 * $destindir = "/".$part1."/".$part2."/".$part3;
 * // by reversing, directories are more evenly spread out. The
 * // first 26 directories already occupy 26 main levels
 *
 * more info on limitation:
 * - http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-talk/165372
 *
 * if you really need this for bigger numbers you probably have to look
 * at things like: http://theserverpages.com/php/manual/en/ref.bc.php
 * or: http://theserverpages.com/php/manual/en/ref.gmp.php
 * but I haven't really dugg into this. If you have more info on those
 * matters feel free to leave a comment.
 *
 * The following code block can be utilized by PEAR's Testing_DocTest
 * <code>
 * // Input //
 * $number_in = 2188847690240;
 * $alpha_in  = "SpQXn7Cb";
 *
 * // Execute //
 * $alpha_out  = alphaID($number_in, false, 8);
 * $number_out = alphaID($alpha_in, true, 8);
 *
 * if ($number_in != $number_out) {
 * 	 echo "Conversion failure, ".$alpha_in." returns ".$number_out." instead of the ";
 * 	 echo "desired: ".$number_in."\n";
 * }
 * if ($alpha_in != $alpha_out) {
 * 	 echo "Conversion failure, ".$number_in." returns ".$alpha_out." instead of the ";
 * 	 echo "desired: ".$alpha_in."\n";
 * }
 *
 * // Show //
 * echo $number_out." => ".$alpha_out."\n";
 * echo $alpha_in." => ".$number_out."\n";
 * echo alphaID(238328, false)." => ".alphaID(alphaID(238328, false), true)."\n";
 *
 * // expects:
 * // 2188847690240 => SpQXn7Cb
 * // SpQXn7Cb => 2188847690240
 * // aaab => 238328
 *
 * </code>
 *
 * @author	Kevin van Zonneveld <kevin@vanzonneveld.net>
 * @author	Simon Franz
 * @author	Deadfish
 * @author  SK83RJOSH
 * @copyright 2008 Kevin van Zonneveld (http://kevin.vanzonneveld.net)
 * @license   http://www.opensource.org/licenses/bsd-license.php New BSD Licence
 * @version   SVN: Release: $Id: alphaID.inc.php 344 2009-06-10 17:43:59Z kevin $
 * @link	  http://kevin.vanzonneveld.net/
 *
 * @param mixed   $in	  String or long input to translate
 * @param boolean $to_num  Reverses translation when true
 * @param mixed   $pad_up  Number or boolean padds the result up to a specified length
 * @param string  $pass_key Supplying a password makes it harder to calculate the original ID
 *
 * @return mixed string or long
 */
function alphaID($in, $to_num = false, $pad_up = false, $pass_key = 'HCMS') {
    $out = '';
    $index = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    $base = strlen($index);

    if ($pass_key !== null) {
        // Although this function's purpose is to just make the
        // ID short - and not so much secure,
        // with this patch by Simon Franz (http://blog.snaky.org/)
        // you can optionally supply a password to make it harder
        // to calculate the corresponding numeric ID

        for ($n = 0; $n < strlen($index); $n++) {
            $i[] = substr($index, $n, 1);
        }

        $pass_hash = hash('sha256', $pass_key);
        $pass_hash = (strlen($pass_hash) < strlen($index) ? hash('sha512', $pass_key) : $pass_hash);

        for ($n = 0; $n < strlen($index); $n++) {
            $p[] = substr($pass_hash, $n, 1);
        }

        array_multisort($p, SORT_DESC, $i);
        $index = implode($i);
    }

    if ($to_num) {
        // Digital number  <<--  alphabet letter code
        $len = strlen($in) - 1;

        for ($t = $len; $t >= 0; $t--) {
            $bcp = bcpow($base, $len - $t);
            $out = $out + strpos($index, substr($in, $t, 1)) * $bcp;
        }

        if (is_numeric($pad_up)) {
            $pad_up--;

            if ($pad_up > 0) {
                $out -= pow($base, $pad_up);
            }
        }
    } else {
        // Digital number  -->>  alphabet letter code
        if (is_numeric($pad_up)) {
            $pad_up--;

            if ($pad_up > 0) {
                $in += pow($base, $pad_up);
            }
        }

        for ($t = ($in != 0 ? floor(log($in, $base)) : 0); $t >= 0; $t--) {
            $bcp = bcpow($base, $t);
            $a = floor($in / $bcp) % $base;
            $out = $out . substr($index, $a, 1);
            $in = $in - ($a * $bcp);
        }
    }

    return $out;
}

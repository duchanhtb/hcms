<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');


// define DIRECTORY_SEPARATOR
define('DS', DIRECTORY_SEPARATOR);

// define ROOT_PATH
define('ROOT_PATH', dirname(__FILE__) . DS);

// define ROOT PATH
define("USING_MEMCACHE", "0");

// define ROOT PATH
define("INC_PATH", ROOT_PATH . 'inc' . DS);

// define skin folder
define("SKIN_FOLDER", 'skin');

// define module folder
define("MODULE_FOLDER", 'modules');

// define cache folder
define("CACHE_FOLDER", 'cache');

// define set cache status (on/off)
define("CACHE_STATUS", 'off');

// define Module PATH
define("MODULE_PATH", ROOT_PATH . MODULE_FOLDER . DS);

// calculator query in class database
define("SHOW_QUERY_INFO", "off");

// define string encode password
define('PASS_ENDCODE', 'HANHCMS');

define('AES_KEY', 'abcdefghijuklmno0123456xxx012345');

// max width and height images
define('MAX_SIZE_IMAGE', '1280x1024');

// DEBUG
define("CMS_DEBUG", true);
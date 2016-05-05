<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');


/* Load core class and function
  ---------------------------------------------------- */
$autoLoad = array(
    'core/Base.class.php',
    'core/Db.class.php',
    'core/Cms.class.php',
    'core/Images.class.php',
    'core/Module.class.php',
    'core/Xtemplate.class.php',
    'core/Input.class.php',
    'core/Images.class.php',
    'core/Media.class.php',
    'core/CFile.class.php',
    'core/cmsOptions.class.php',    
    'core/cms.function.php',    
);

foreach ($autoLoad as $path) {
    include_once(INC_PATH . $path);
}

/* load external library
  ---------------------------------------------------- */
include_once("vendor/autoload.php");


/* include in classes folder
  ---------------------------------------------------- */
$modelsDir = ROOT_PATH . 'classes';
$arrModels = CFile::getFileDir($modelsDir, '.php');
foreach ($arrModels as $model) {
    $model_path = $modelsDir . '/' . $model;
    if (!file_exists($model_path))
        continue;
    include_once($model_path);
}
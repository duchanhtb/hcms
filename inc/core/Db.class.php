<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

include("Idiorm.class.php");


class DB extends ORM{
    
    const CHARSET = 'utf8';
    
    public static function config($dbInfo) {
        
        self::configure(array(
            'connection_string' => 'mysql:host='.$dbInfo['dbHost'].';dbname='.$dbInfo['dbName'].';charset='. self::CHARSET,
            'username' => $dbInfo['dbUser'],
            'password' => $dbInfo['dbPass'],
            'logging'   => true
        ));
    }
    
    
    public static function table($table_name, $connection_name = self::DEFAULT_CONNECTION){
            self::_setup_db($connection_name);
            return new self($table_name, array(), $connection_name);
    }
}
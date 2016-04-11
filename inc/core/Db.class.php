<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

include("Idiorm.class.php");

/**
 * @author duchanh
 * @copyright 2016
 * @desc Database class extends ORM class
 * link document: https://idiorm.readthedocs.org/en/latest/
 */
class DB extends ORM {

    const CHARSET = 'utf8';

    /**
     * @Desc setting connection and charset
     * @param array $dbInfo: connection infomation: host, username, password
     * @return nothing
     */
    public static function config($dbInfo) {

        self::configure(array(
            'connection_string' => 'mysql:host=' . $dbInfo['dbHost'] . ';dbname=' . $dbInfo['dbName'] . ';charset=' . self::CHARSET,
            'username' => $dbInfo['dbUser'],
            'password' => $dbInfo['dbPass'],
            'logging' => true
        ));
    }

    /**
     * @Desc rewrite for_table function in ORM class
     * @param string $table_name: the table name
     * @return object
     */
    public static function table($table_name, $connection_name = self::DEFAULT_CONNECTION) {
        self::_setup_db($connection_name);
        return new self($table_name, array(), $connection_name);
    }

}

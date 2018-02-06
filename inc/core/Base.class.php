<?php

if (!defined('ALLOW_ACCESS')) {
	exit('No direct script access allowed');
}

/**
 * @author duchanh
 * @copyright 2015
 */
class Base {

	var $pk = 'id';
	var $pk_auto = true; //Primary key auto increment
	var $fields = array(); //fields in table (excluding Primary Key)
	var $table = ""; //table name
	var $error = '';
	var $num_per_page = 50;

	/**
	 * @desc constructor
	 * @return
	 */
	function __construct() {
		foreach ($this->fields as $field) {
			$this->$field = '';
		}
		$this->error = '';
	}

	/**
	 * @desc insert function
	 * @return insert id
	 */
	function insert() {
		$record = DB::for_table($this->table)->create();
		foreach ($this->fields as $field) {
			if ($this->$field) {
				$record->$field = $this->$field;
			}

		}
		$record->save();
		return $record->id();
	}

	/**
	 * @desc update function
	 * @param $id: primary key of record
	 * @param $update_fields: update field example array('price','name')
	 * @return nothing
	 */
	function update($id = 0, $update_fields = '') {
		$record = DB::for_table($this->table)
			->where_equal($this->pk, $id)
			->find_one();

		if ($record) {
			foreach ($this->fields as $field) {
				if ($this->$field) {
					$record->$field = $this->$field;
				}

			}

			return $record->save();
		}
		return;
	}

	/**
	 * read data by primary key
	 *
	 * @param $id: the primary key
	 * @return object
	 */
	function read($id = 0) {
		if ($id < 0) {
			return false;
		}
		$pk = $this->pk;
		if ($id != 0) {
			$this->$pk = $id;
		}

		$record = DB::for_table($this->table)
			->where_equal($pk, $id)
			->find_one();

		if ($record) {
			foreach ($this->fields as $field) {
				$this->$field = $record->$field;
			}
		}
		return true;
	}

	/**
	 * @desc delete record by id
	 *
	 * @param $id: the primary key
	 * @return boolean
	 */
	function remove($id = 0) {
		$record = DB::for_table($this->table)
			->where_equal($this->pk, $id)
			->find_one();
		return $record->delete();
	}

	/**
	 * @desc clearn value from memcache
	 *
	 * @param
	 * @return boolean
	 */
	function cleanValues() {
		//stripslahes
		foreach ($this->fields as $field) {
			$this->$field = stripslashes($this->$field);
		}
	}
}
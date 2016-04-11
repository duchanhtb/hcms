<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class Category extends Base {

    var $fields = array(
        "id",
        "parent_id",
        "name",
        "img",
        "home",
        "status",
        "ordering",
        "description",
        "meta_keyword",
        "meta_description"
    ); //fields in table (excluding Primary Key)
    var $table = "t_category";

    /**
     * @Desc get category with condition 
     * @param string $sort: field want to sort 
     * @param string $order: DESC or ASC
     * @return array
     */
    function getAll($sort = "ordering", $order = "DESC") {
        global $allCategory;
        if (is_array($allCategory) && count($allCategory) > 0) {
            return $allCategory;
        }
        $allCategory = DB::for_table($this->table);
        if ($sort && $order == 'ASC') {
            $allCategory = $allCategory->order_by_asc($sort);
        }
        if ($sort && $order == 'ASC') {
            $allCategory = $allCategory->order_by_desc($sort);
        }

        return $allCategory->find_many();
    }

    /**
     * @Desc get list sub id of category
     * @param array $allCategory: array of category
     * @param int $parent_id: parent id  
     * @return string example: 1,5,23,3
     */
    function getListSubCategory($allCategory, $parent_id = 0) {
        $list_id = $parent_id . ',';
        if (!is_array($allCategory) || count($allCategory) <= 0) {
            return false;
        }

        $temp_array = $allCategory;
        foreach ($allCategory as $key => $category) {
            if ($category->parent_id == $parent_id) {
                unset($temp_array[$key]);
                $list_id .= $this->getListSubCategory($temp_array, $category->id);
            }
        }
        return $list_id;
    }

    /**
     * @Desc get list id of category
     * @param array $allCategory: array of category
     * @param int $parent_id: parent id, default value is 0  
     * @return array
     */
    function getSubCat($allCategory, $parent_id = 0) {

        // the function will return this variable
        $result = array();
        if (!is_array($allCategory) || count($allCategory) <= 0)
            return false;

        // temple array 
        $temp_array = $allCategory;
        foreach ($allCategory as $category) {
            if ($category->parent_id == $parent_id && $category->status == 1) {
                array_push($result, $value);
            } else {
                continue;
            }
        }
        return $result;
    }

    /**
     * @Desc get parent id of category
     * @param array $allCategory: array of category
     * @param int $parent_id: parent id  
     * @return array
     */
    function getParentCat($allCategory, $cid) {
        // check array input
        if (!is_array($allCategory) || count($allCategory) <= 0) {
            return array(); // return empry array 
        }

        foreach ($allCategory as $category) {
            $subCat = $this->getSubCat($allCategory, $category->id);
            foreach ($subCat as $scat) {
                if ($scat->id == $cid) {
                    return $value;
                }
            }
        }
        return false;
    }

    /**
     * @Desc get category info based on category id
     * @param array $allCategory: array of category
     * @param int $cid: id of category 
     * @package string $field: fiend want to get, example: name
     * @return mix
     */
    function getCategoryInfo($allCategory, $cid, $field = 'name') {
        // check input array
        if (!is_array($allCategory) || count($allCategory) <= 0) {
            return false; // return nothing if dirty input
        }

        foreach ($allCategory as $category) {
            if ($category->id == $cid) {
                return $category->$field;
            }
        }

        return false;
    }

}

// end class
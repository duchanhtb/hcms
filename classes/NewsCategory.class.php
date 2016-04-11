<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class NewsCategory extends Base {

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
    var $table = "t_news_category";

    /**
     * @Desc get category with condition 
     * @param string $sort: field want to sort 
     * @param string $order: DESC or ASC
     * @param string $con: condition     
     * @return array
     */
    function getAll($sort = 'ordering', $order = "DESC") {
        global $allNewsCategory;
        if (is_array($allNewsCategory) && count($allNewsCategory) > 0) {
            return $allNewsCategory;
        }

        $allNewsCategory = DB::for_table($this->table);

        if ($sort && $order == 'ASC') {
            $allNewsCategory->order_by_asc($sort);
        }
        if ($sort && $order == 'DESC') {
            $allNewsCategory->order_by_desc($sort);
        }

        return $allNewsCategory->find_many();
    }

    /**
     * @Desc get list id of category
     * @param array $allNewsCategory: array of category
     * @param int $parent_id: parent id  
     * @return string example: 1,5,23,3
     */
    function getListSubCategory($allNewsCategory, $parent_id = 0) {
        $list_id = $parent_id . ',';
        if (is_array($allNewsCategory) && count($allNewsCategory) > 0) {
            $temp_array = $allNewsCategory;
            foreach ($allNewsCategory as $key => $category) {
                if ($category->parent_id == $parent_id) {
                    unset($temp_array[$key]);
                    $list_id .= $this->getListSubCategory($temp_array, $category->id);
                }
            }
        }
        //$list_id = trim($list_id); 
        return $list_id;
    }

    /**
     * @Desc get list id of category
     * @param array $allNewsCategory: array of category
     * @param int $parent_id: parent id  
     * @return string example: 1,5,23,3
     */
    function getSubCat($allNewsCategory, $parent_id = 0, $status = false) {
        $result = array();
        if (is_array($allNewsCategory) && count($allNewsCategory) > 0) {
            $temp_array = $allNewsCategory;
            foreach ($allNewsCategory as $key => $category) {
                if ($category->parent_id == $parent_id) {
                    if ($status === false) {
                        array_push($result, $category);
                    } else {
                        if ($category->status == 1) {
                            array_push($result, $category);
                        } else {
                            continue;
                        }
                    }
                }
            }
        }

        return $result;
    }

    /**
     * @Desc get parent id of category
     * @param array $allNewsCategory: array of category
     * @param int $parent_id: parent id  
     * @return string example: 1,5,23,3
     */
    function getParentCat($allNewsCategory, $cid) {
        if (is_array($allNewsCategory) && count($allNewsCategory) > 0) {
            foreach ($allNewsCategory as $key => $category) {
                $subCat = $this->getSubCat($allNewsCategory, $category->id);
                foreach ($subCat as $k => $sub) {
                    if ($sub->id == $cid) {
                        return $category;
                    }
                }
            }
        }

        return false;
    }

    /**
     * @Desc get category info based on cateogry id
     * @param array $allNewsCategory: array of category
     * @param int $cid: id of category 
     * @package string $field: fiend want to get
     * @return string
     */
    function getCategoryInfo($allNewsCategory, $cid, $field = 'name') {
        if (count($allNewsCategory) > 0) {
            foreach ($allNewsCategory as $category) {
                if ($category->id == $cid) {
                    return $category->$field;
                }
            }
        }
        return "";
    }

}

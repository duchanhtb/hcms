<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class Page extends Base {

    var $fields = array(
        'name',
        'layout',
        'position',
        'parent',
        'meta_title',
        'meta_keyword',
        'meta_description'
    ); //fields in table (excluding Primary Key)
    var $table = "m_page";

    /**
     * @Desc get layout of page
     * @param $page: name of page 
     * @return string (name of layout)
     */
    function getLayout($page) {
        $page = $this->getRecord("*", " AND `name` = '$page' ");
        return $page['layout'];
    }

    /**
     * @Desc get all of page     
     * @return array
     */
    function getAll() {
        return $this->get('*');
    }

    /**
     * @Desc get page with conditions
     * @param string $con: conditions 
     * @param string $sort: field want to sort
     * @param string $order: DESC or ASC 
     * @param int $page: page 
     * @return array
     */
    function getPage($con, $sort, $order, $page) {
        $page = ($page > 1 ) ? $page : 1;
        $start = ($page - 1) * ($this->num_per_page);

        if ($sort && $order) {
            return $this->get("*", $con, "$sort $order", $start, $this->num_per_page);
        } else {
            return $this->get("*", $con, " `name` DESC ", $start, $this->num_per_page);
        }
        return false;
    }

    /**
     * @Desc get page infomation
     * @param string $name: name of page      
     * @return array
     */
    function getPageInfo($name) {
        $pageInfo = $this->getRecord("*", " AND `name` = '$name' ");
        $allPage = $this->getAll();        
        
        if (is_array($pageInfo) && count($pageInfo) > 0) {
            $pos = $pageInfo['position'];
            $parentInfo = $this->getParent($allPage, $pageInfo['parent']);            
            $pos_parent = $parentInfo['position'];
            $pos = json_decode($pos, true);
            $pos_parent = json_decode($pos_parent, true);

            $new_post = array_merge_recursive((array) $pos_parent, (array) $pos);
            $pageInfo['position'] = $new_post;

            return $pageInfo;
        }

        return false;
    }

    /**
     * @Desc get page infomation using for admin
     * @param string $name: name of page      
     * @return array
     */
    function getPageInfoAdmin($name) {
        return $this->getRecord("*", " AND `name` = '$name' ");
    }

    /**
     * @Desc get parent page
     * @param array $allPage: all pages array 
     * @param int $id_parent: field want to sort      
     * @return array
     */
    function getParent($allPage, $id_parent) {
        foreach ($allPage as $key => $value) {
            if ($value['id'] == $id_parent) {
                return $value;
            }
        }
        return null;
    }

}

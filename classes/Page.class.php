<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
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
        $page = DB::for_table($this->table)->where_equal('name', $page)->find_one();
        if ($page)
            return $page->layout;

        return false;
    }

    /**
     * @Desc get all page in the database
     * @return array
     */
    function getAll() {
        global $allPage;
        if (is_array($allPage))
            return $allPage;

        $allPage = DB::for_table($this->table)->find_many();
        return $allPage;
    }

    /**
     * @Desc get page infomation
     * @param string $name: name of page      
     * @return array
     */
    function getPageInfo($name) {
        $page = DB::for_table($this->table)
                ->where_equal('name', $name)
                ->find_one();

        $allPage = $this->getAll();

        if ($page) {
            $position = $page->position;
            $parentPage = $this->getParent($allPage, $page->parent);
            $parent_position = $parentPage->position;
            $pos = json_decode($position, true);
            $pos_parent = json_decode($parent_position, true);
            
            $new_post = array_merge_recursive((array) $pos_parent, (array) $pos);
            $page->position = $new_post;

            return $page;
        }

        return false;
    }

    /**
     * @Desc get page infomation using for admin
     * @param string $name: name of page      
     * @return array
     */
    function getPageInfoAdmin($name) {
        return DB::for_table($this->table)
                        ->where_equal('name', $name)
                        ->find_one();
    }

    /**
     * @Desc get parent page
     * @param array $allPage: all pages array 
     * @param int $id_parent: field want to sort      
     * @return array
     */
    function getParent($allPage, $id_parent) {
        foreach ($allPage as $page) {
            if ($page->id == $id_parent) {
                return $page;
            }
        }
        return false;
    }

}

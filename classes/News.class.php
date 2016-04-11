<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2016
 * @desc class about news
 */
class News extends Base {

    var $fields = array(
        'cat_id',
        'title',
        'brief',
        'content',
        'author',
        'date_created',
        'date_edit',
        'img',
        'hits',
        'home',
        'status',
        'ordering',
        'meta_title',
        'meta_keyword',
        'meta_description',
        'type'
    ); //fields in table (excluding Primary Key)	
    var $table = "t_news";

    /**
     * @Desc get news by category
     * @param int $cat_id: category id
     * @param string $sort: sort field
     * @param string $order: DESC or ASC
     * @param int $page: paging
     * @return array
     */
    function getNewsByCategory($cat_id, $sort = 'ordering', $order = 'DESC', $page = 1) {
        $page = ($page > 1) ? $page : 1;
        $num_per_page = ($this->num_per_page > 0 ) ? $this->num_per_page : 20;
        $offset = ($page - 1) * ($this->num_per_page);

        $listNews = DB::for_table($this->table)->where_like('cat_id', "%$cat_id%");
        if ($sort && $order == 'ASC') {
            $listNews = $listNews->order_by_asc($sort);
        }
        if ($sort && $order == 'DESC') {
            $listNews = $listNews->order_by_desc($sort);
        }
        $listNews = $listNews->limit($this->num_per_page)->offset($offset)->find_many();

        return $listNews;
    }

    /**
     * @Desc update hits news
     * @param int $id: id of the table
     * @return boolean
     */
    function hits($id) {
        $news = DB::for_table($this->table)->where_equal('id', $id)->find_one();
        $news->set('hits', $news->hits + 1);
        return $news->save();
    }

    /**
     * @Desc get other news
     * @param int $cat_id: category id
     * @param int $cur_id: curent id
     * @param int $number: number want to get     
     * @return array
     */
    function getOtherNews($cat_id, $current_id, $get_number = 5) {

        $listNews = DB::for_table($this->table)
                ->where_not_equal('id', $current_id)
                ->where_like('cat_id', "%$cat_id%")
                ->order_by_desc('ordering')
                ->limit($get_number)->offset(0)
                ->find_many();

        return $listNews;
    }

}

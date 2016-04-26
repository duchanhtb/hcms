<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 * @desc module list html of introduction
 */
class module_home extends Module {

    function __construct() {
        $this->tpl = 'home.html';
        parent::module();
    }

    /**     
     * @desc render html module
     */
    function draw() {

        addTitle('Danh sách tin tức');
        addDescription('Hệ thống quản trị nội dung HCMS');

        $table_name = 't_news';
        $listNews = DB::for_table($table_name);
        $id = Input::get('id', 'int', 0);

        // filter by category
        if ($id) {
            $listNews = $listNews->where_like('cat_id', "%$id%");
        }

        // pagging
        $limit = 10;
        $total_row = $listNews->count();
        $total_page = ceil($total_row / $limit);

        $current_page = Input::get('p', 'int', 1);
        $offset = ($current_page - 1) * $limit;
        $listNews = $listNews->limit($limit)->offset($offset)->find_many();
        $paging = paging($current_page, $total_page, curPageURL());
        $this->xtpl->assign('paging', $paging);


        // assign
        foreach ($listNews as $new) {
            $this->xtpl->assign('title', $new->title);
            $this->xtpl->assign('img', getThumbnail('thumb-150', $new->img));
            $this->xtpl->assign('brief', $new->brief);
            $this->xtpl->assign('link', createLink('chi-tiet', array('id' => $new->id, 'title' => $new->title)));
            $this->xtpl->assign('category', $this->createLinkCategory(explode(',', $new->cat_id)));
            $this->xtpl->parse('main.new');
        }


        $this->xtpl->parse('main');
        return $this->xtpl->out('main');
    }

    /**     
     * @desc create link for category
     */
    function createLinkCategory($arrListCatId) {
        $html = '';
        if (count($arrListCatId) <= 0) {
            return $html;
        }

        $table = 't_news_category';

        foreach ($arrListCatId as $cid) {
            $category = DB::for_table($table)
                    ->where_equal('id', $cid)
                    ->find_one();

            $html .= ' <a href="' . createLink('danh-muc', array('id' => $cid, 'title' => $category->name)) . '">' . $category->name . '</a>,';
        }
        return trim($html, ',');
    }

}

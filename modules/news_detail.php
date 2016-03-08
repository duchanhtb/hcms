<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class news_detail extends Module {

    function news_detail() {
        $this->file = 'news_detail.html';
        parent::module();
    }

    function draw() {
        global $skin, $title, $keywords, $description, $lang, $pathway;
        $xtpl = new XTemplate($this->tpl);
        $News = new News();

        $skin_path = base_url() . 'skin/' . $skin . '/';
        $xtpl->assign('link_home', base_url());
        $xtpl->assign('skin_path', $skin_path);

        $left = loadmodule('module_left_news');
        $xtpl->assign('left', $left);

        $id = Input::get('id', 'int', 0);
        if ($id) {
            $arrWeek = array(
                1 => 'Thứ hai ',
                2 => 'Thứ ba ',
                3 => 'Thứ tư ',
                4 => 'Thứ năm ',
                5 => 'Thứ sáu ',
                6 => 'Thứ bảy ',
                7 => 'Chủ nhật ',
            );

            $News->read($id);
            $News->hits($id); // update view                    

            $cat_id = $News->cat_id;
            $NewsCategory = new NewsCategory();
            $NewsCategory->read($cat_id);
            $xtpl->assign('category_name', $NewsCategory->name);
            $xtpl->assign('link_category', createLink('news', array('cid' => $cat_id, 'name' => $NewsCategory->name)));


            $content = $News->content;
            $xtpl->assign('title', $News->title);
            $xtpl->assign('date', date('d/m/Y, H:i ', strtotime($News->date)));
            $xtpl->assign('week', $arrWeek[date('N', strtotime($News->date))]);

            $xtpl->assign('hits', $News->hits);
            $xtpl->assign('author', $News->author);
            $xtpl->assign('date_edit', date('d/m/Y', strtotime($News->date_edit)));
            $xtpl->assign('content', $content);
            $xtpl->assign('cur_link', curPageURL());

            // share  social net word           
            $xtpl->assign('link_share_facebook', 'http://www.facebook.com/share.php?src=bm&u=' . curPageURL());
            $xtpl->assign('link_share_twitter', 'http://twitter.com/home/?status=' . curPageURL() . '<--' . $News->title);
            $xtpl->assign('link_share_google', 'http://www.google.com/bookmarks/mark?op=edit&bkmk=' . curPageURL() . '&title=' . $News->title);

            $cid = $News->cat_id;
            $News->num_per_page = 5;
            $otherNews = $News->getNews(" AND status = 1 AND cat_id = $cid AND id != $id ", 'ordering', 'desc', 1);
            if (count($otherNews) > 0) {
                foreach ($otherNews as $key => $value) {
                    $link = createLink('news_detail', array('id' => $value['id'], 'title' => $value['title']));
                    $xtpl->assign('other_link', $link);
                    $xtpl->assign('other_hits', $value['hits']);
                    $xtpl->assign('other_title', $value['title']);
                    $xtpl->assign('other_title', $value['title']);
                    $xtpl->assign('other_date', date('H:i:s d/m/Y', strtotime($value['date'])));
                    $xtpl->assign('other_brief', $value['brief']);
                    $xtpl->parse('main.other');
                }
            } else {
                $xtpl->assign('display', 'none');
            }



            $xtpl->parse('main');

            $title = $News->title;
            $keywords = $News->meta_keyword;
            $description = $News->meta_description;
        } else {
            $title = $lang['msg_content_update'];
            $keywords = $lang['msg_content_update'];
            $description = $lang['msg_content_update'];
            $xtpl->assign('none', '<p>' . $lang['msg_content_update'] . '<p>');
            $xtpl->parse('main');
        }

        return $xtpl->out('main');
    }
}
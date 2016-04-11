<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2015
 */
class ProductImages extends Base {

    var $fields = array(
        'product_id',
        'url',
        'ordering'
    ); //fields in table (excluding Primary Key)
    var $table = "t_product_images";

    /**
     * @Desc get product images by product Id 
     * @param int $pid: product ID
     * @return array
     */
    function getProductImageByProductId($pid) {
        return DB::for_table($this->table)->where_equal('product_id', $pid)->order_by_desc('id')->find_many();
    }

    /**
     * @Desc get product images by list Id example "1,2,3,4"
     * @param string $pid sperate by comma (,)
     * @return array
     */
    function getProductImageByListProductId($listId) {
        $arrId = explode(',', $listId);
        return DB::for_table($this->table)->where_in('product_id', $arrId)->order_by_desc('id')->find_many();
    }

    /**
     * @Desc delete product that have product_id = -1;
     * @return array
     */
    function deleteImageUndendity($pid = '-1') {
        $this->deleteProductImage($pid);
    }

    /**
     * @Desc set product images that have product_id = -1;
     * @param int $pid: product id 
     * @param int $tmp_id the temporary id
     * @return array
     */
    function setProductId($pid, $tmp_id = '-1') {
        $images = DB::for_table($this->table)->where_equal('product_id', $tmp_id);
        if (!$images)
            return;
        foreach ($images as $image) {
            $imgObj = DB::for_table($this->table)->find_one($image->id);
            $imgObj->product_id = $pid;
            $imgObj->save();
        }
    }

    /**
     * @Desc delete product images
     * @param int $pid: product id 
     * @return array
     */
    function deleteProductImage($pid) {
        $images = DB::for_table($this->table)->where_equal('product_id', $pid)->find_many();
        if (is_array($images) && count($images) > 0) {
            foreach ($images as $image) {
                $this->deleteImage($image->id);
            }
        }
    }

    /**
     * @Desc delete product images
     * @param int $id: id
     * @return boolean
     */
    function deleteImage($id) {
        global $imagesSize;
        $imgObj = DB::for_table($this->table)->find_one($id);
        if (!$imgObj)
            return;

        // delete origin images
        $image_path = ROOT_PATH . $imgObj->images;
        if (file_exists($image_path)) {
            @unlink($image_path);
        }

        // delete thumb
        foreach ($imagesSize as $folder => $wh) {
            $image = $imgObj->images;
            $path_info = pathinfo($image);
            $basename = $path_info['basename'];
            $dirname = $path_info['dirname'];
            $thumb_path = ROOT_PATH . $dirname . '/' . $folder . '/' . $basename;
            if (file_exists($thumb_path)) {
                @unlink($thumb_path);
            }
        }

        // delete record in database
        $imgObj->delete();
    }

}// end class
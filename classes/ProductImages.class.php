<?php

if (!defined('ALLOW_ACCESS'))
    exit('No direct script access allowed');

/**
 * @author duchanh
 * @copyright 2012
 */
class ProductImages extends Base {

    var $fields = array(
        'product_id',
        'images',
        'ordering'
    ); //fields in table (excluding Primary Key)
    var $table = "t_product_images";

    /**
     * @Desc get product images by list Id
     * @param string $pid
     * @return array
     */
    function getProductImageById($pid) {
        return $this->get("*", " AND product_id = $pid ", " `id` DESC ");
    }

    /**
     * @Desc get product images
     * @param string $product_id: list product_id example "1,2,3,4";
     * @return array
     */
    function getProductImageByListID($list_pid) {
        if ($list_pid != "") {
            $result = array();
            $arrayId = explode(',', $list_pid);
            foreach ($arrayId as $pid) {
                $result[$pid] = array();
            }

            $listProductImages = $this->get("*", " AND product_id IN ($list_pid) ", " id DESC ");
            if (count($listProductImages) > 0) {
                foreach ($listProductImages as $key => $value) {
                    $product_id = $value['product_id'];
                    array_push($result[$product_id], $listProductImages[$key]);
                }
            }
            return $result;
        }
        return NULL;
    }

    /**
     * @Desc get product images default
     * @param string $list_id: list product_id example "1,2,3,4";
     * @return array
     */
    function getProductImageDefault($list_id) {
        $image = array();
        $result = $this->get("product_id,images", " AND product_id IN ($list_id) ", " ID ASC ");
        if (count($result) > 0) {
            foreach ($result as $key => $value) {
                $image[$value['product_id']] = array('images' => $value['images']);
            }
        }

        return $image;
    }

    /**
     * @Desc delete product that have product_id <= 0     
     * @return array
     */
    function deleteImageUndendity() {
        global $oDb;
        $this->deleteProductImage(-1);
    }

    /**
     * @Desc set product images that have product_id = -1;
     * @param int $pid: product id 
     * @return array
     */
    function setProductId($pid) {
        global $oDb;
        $sql = "UPDATE `$this->table` SET `product_id` = $pid WHERE `product_id` = -1 ";
        $oDb->query($sql);
    }

    /**
     * @Desc set product images that have product_id = -1;
     * @param int $pid: product id 
     * @return array
     */
    function deleteProductImage($pid) {
        $list_image = $this->get(" id ", " AND `product_id` = $pid ");
        if (is_array($list_image) && count($list_image) > 0) {
            foreach ($list_image as $key => $value) {
                $this->deleteImage($value['id']);
            }
        }
    }

    /**
     * @Desc delete product images
     * @param int $id: id
     * @return boolean
     */
    function deleteImage($id) {
        $this->read($id);
        $thumb_path = '..' . $this->thumb_path;
        if (file_exists($thumb_path)) {
            @unlink($thumb_path);
        }

        $thumb50_path = '..' . $this->thumb50_path;
        if (file_exists($thumb50_path)) {
            @unlink($thumb50_path);
        }

        $thumb300_path = '..' . $this->thumb300_path;
        if (file_exists($thumb300_path)) {
            @unlink($thumb300_path);
        }

        $images_path = '..' . $this->images_path;
        if (file_exists($images_path)) {
            @unlink($images_path);
        }
        return $this->remove($id);
    }
}
<?php

if (!defined('ALLOW_ACCESS')) {
	exit('No direct script access allowed');
}

/**
 * @author duchanh
 * @copyright 2015
 */
class ProductOrder extends Base {

	var $fields = array(
		"list_product",
		"fullname",
		"phone",
		"email",
		"address",
		"note",
		"payment_type",
		"status",
		"date_created",
	); //fields in table (excluding Primary Key)
	var $table = "t_product_orders";
	var $key = 'hcms_cart_order';

	/**
	 * @Desc Add product to cart
	 * @param int $pid: product ID
	 * @param int $amount: number product
	 * @return array
	 */
	function addProductToCart($pid, $amount = 1) {
		$key = $this->key;
		$cart = isset($_SESSION[$key]) ? $_SESSION[$key] : false;
		$cart[$pid] = $amount;
		$_SESSION[$key] = $cart;
		return $cart;
	}

	/**
	 * @Desc get total product from secssion
	 * @return array
	 */
	function getCartInfo() {
		return $_SESSION[$this->key];
	}

	/**
	 * @Desc get product information from secssion
	 * @return json
	 */
	function getProductCartInfo() {
		$miniProduct = new Product();
		$arrProduct = $miniProduct->getProductCartInfo();
		if (count($arrProduct) > 0) {
			foreach ($arrProduct as $product) {
				$link_product = createLink('product_detail', array('id' => $product->id, 'name' => $product->name));
				$xtpl->assign('link', $link_product);
				$xtpl->assign('name', $product->name);
				$xtpl->assign('number', $product->number);
				$xtpl->assign('total_price', $product->total_price);
				$xtpl->parse('main.row');
			}
		}
	}

	/**
	 * @Desc count total product from session
	 * @return int
	 */
	function countTotalProduct() {
		$cart = $_SESSION[$this->key];
		$total = 0;
		if (count($cart) > 0) {
			foreach ($cart as $pid => $num) {
				$total += $num;
			}
		}
		return $total;
	}

	/**
	 * @Desc delte product cart
	 * @param int $pid: product id
	 * @return array
	 */
	function delProductCart($pid) {
		if (isset($_SESSION[$this->key][$pid])) {
			unset($_SESSION[$this->key][$pid]);
		}
	}

	/**
	 * @Desc flush product cart
	 * @param none
	 * @return none
	 */
	function flushCart() {
		unset($_SESSION[$this->key]);
	}

	/**
	 * @Desc flush product cart
	 * @param none
	 * @return none
	 */
	function sendMailCart() {
		$xtpl = new XTemplate(ROOT_PATH . 'skin/default/layout/html_sendmail_cart.html');

		$arrayInput = array(
			"fullname",
			"phone",
			"email",
			"note",
		);

		foreach ($arrayInput as $field) {
			$xtpl->assign($field, Input::get($field));
		}

		$miniProduct = new Product();
		$arrProduct = $miniProduct->getProductCartInfo();
		if (count($arrProduct) > 0) {
			foreach ($arrProduct as $product) {
				$link_product = createLink('product_detail', array('id' => $product->id, 'name' => $product->name));
				$xtpl->assign('link', $link_product);
				$xtpl->assign('name', $product->name);
				$xtpl->assign('number', $product->number);
				$xtpl->assign('total_price', $product->total_price);
				$xtpl->parse('main.row');
			}
		}

		$xtpl->parse('main');
		$content = $xtpl->out('main');

		$to = array(
			'name' => Input::get('fullname', 'txt', ''),
			'email' => Input::get('email', 'txt', ''),
		);

		$subject = 'Đặt hàng thành công tại HCMS.com';

		if (isset($to['email']) && checkValidEmail($to['email'])) {
			sendMail($to, false, $subject, $content);
		}
	}

	/**
	 * @Desc get cart from SESSION and insert to database
	 * @return boolean
	 */
	function insetCart() {
		$product = DB::for_table($this->table)->create();

		foreach ($this->fields as $field) {
			$product->$field = Input::get("$field", 'txt', '');
		}
		$product->date_created = date('Y-m-d H:i:s', time());

		$cart = isset($_SESSION[$this->key]) ? $_SESSION[$this->key] : false;
		if (count($cart) > 0) {
			$list_product = json_encode($cart);
		} else {
			$list_product = '';
		}
		$product->list_product = $list_product;
		$product->save();
		return true;
	}

}

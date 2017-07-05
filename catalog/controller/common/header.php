<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('extension/analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');
		$data['text_about_us'] = $this->language->get('text_about_us');
		$data['text_about_balloony'] = $this->language->get('text_about_balloony');
		$data['text_location_map'] = $this->language->get('text_location_map');
		$data['text_our_staff'] = $this->language->get('text_our_staff');
		$data['text_contact_us'] = $this->language->get('text_contact_us');


		$data['home'] = $this->url->link('common/home');
		$data['home_supply'] = $this->url->link('common/home/index_supply');
		$data['home_events'] = $this->url->link('product/event/events_main');

		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		//$data['edit'] = $this->url->link('account/edit', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');



		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		// $data['categories'] = array();

		 $categories = $this->model_catalog_category->getCategories(0);


		list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();


		if(isset($this->session->data['serviceType'] ) && $this->session->data['serviceType'] =='events'){
			$preLinks=[
				[
					'category_id'=>'0',
					'name'  =>$data['text_home'],
					'href'  =>$data['home_events'],
				]
			];
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsLeftId]);
			$data['leftCategories']=array_merge($preLinks,$leftCategoriesList);

			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsRightId]);
		}else{
			$preLinksEvent=[

				['category_id'=>'0',
					'name'  =>$data['text_home'],
					'href'  =>$data['home_supply'],
				],
				[   'category_id'=>'0',
					'name'  =>$data['text_about_us'],
					'href'=>$this->url->link('information/information','information_id=7'),
					'children'=>[
						['name'=>$data['text_about_balloony'],'href'=>$this->url->link('information/information','information_id=7')],
						['name'=>$data['text_location_map'],'href'=>$this->url->link('information/information','information_id=8')],
						['name'=>$data['text_our_staff'],'href'=>$this->url->link('information/information','information_id=9')]

],
				]
			];
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildren([$productsLeftId]);//print_r to see results for left side
			$data['leftCategories'] = array_merge($preLinksEvent,$leftCategoriesList);
			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildren([$productsRightId]);
		}


		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');



		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);


	}


//	public function getMenu(){
//
//		$categories = array();
//
//		$categories_1 = $this->model_catalog_category->getCategories(0);
//		//var_dump($categories_1); die();
//
//		foreach ($categories_1 as $category_1) {
//			$level_2_data = array();
//
//			$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
//
//			foreach ($categories_2 as $category_2)
//			{
//				$level_3_data = array();
//
//				$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
//
//				foreach ($categories_3 as $category_3)
//				{
//
//					//start add by me level4
//					$level_4_data = array();
//					$categories_4 = $this->model_catalog_category->getCategories($category_3['category_id']);
//
//					foreach ($categories_4 as $category_4)
//					{
//						//start add by me level5
//						$level_5_data = array();
//						$categories_5 = $this->model_catalog_category->getCategories($category_4['category_id']);
//						foreach ($categories_5 as $category_5)
//						{
//							//start add by me level6
//							$level_6_data = array();
//							$categories_6 = $this->model_catalog_category->getCategories($category_5['category_id']);
//							foreach ($categories_6 as $category_6)
//							{
//								$level_6_data[] = array(
//									'name' => $category_4['name'],
//									'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id'] . '_' . $category_4['category_id'] . '_' . $category_5['category_id'] . '_' . $category_6['category_id'])
//								);
//
//
//							}
//							//end add by me level6
//
//							$level_5_data[] = array(
//								'name' => $category_4['name'],
//								'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id'] . '_' . $category_4['category_id'] . '_' . $category_5['category_id'])
//							);
//
//
//
//						}
//						//end add by me level5
//
//
//						$level_4_data[] = array(
//							'name' => $category_4['name'],
//							'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id'] . '_' . $category_4['category_id'])
//						);
//					}
//					$level_3_data[] = array(
//						'name'     => $category_3['name'],
//						'children' => $level_4_data,
//						'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id'])
//					);
//					//end add by me level4
//				}
//
//				$level_2_data[] = array(
//					'name'     => $category_2['name'],
//					'children' => $level_3_data,
//					'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'])
//				);
//			}
//
//			$categories[] = array(
//				'name'     => $category_1['name'],
//				'children' => $level_2_data,
//				'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'])
//			);
//		}
//
//		return $categories;
//	}


	function dd($array){

		echo '<ol>';
		foreach($array as $key=>$oneItem){

			if(is_array($oneItem)){
				echo '<li class="arrayContainer" >'.$key.'<div>';
				$this->dd($oneItem);
				echo '</div></li>';
			}else{
				echo '<li class="oneItem" >'.$key.'____'.$oneItem.'</li>';
			}

		}
		echo '</ol>';

	}

}

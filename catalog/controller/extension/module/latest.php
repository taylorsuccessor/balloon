
<?php
class ControllerExtensionModuleLatest extends Controller {
	public function index($setting) {
		$this->load->language('extension/module/latest');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_view_more'] = $this->language->get('text_view_more');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		$filter_data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']

		);

		$results = $this->model_catalog_product->getProducts($filter_data);

		if ($results) {
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

		}
		return $this->load->view('extension/module/latest', $data);

	}




	public function index_event($setting) {
		$this->load->language('extension/module/latest');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_view_more'] = $this->language->get('text_view_more');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');

		$data['products'] = array();

		$filter_data = array(
			'sort'  => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit']
		);

		//added by assem

		list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();

		$this->model_catalog_product->getLatestProducts();

		if(isset($this->session->data['serviceType'] ) && $this->session->data['serviceType'] =='events'){
			$preLinks=[
				[   'name'  =>$data['text_home'],
					'href'  =>$data['home_events'],
				]
			];
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsLeftId]);
			$data['leftCategories']=array_merge($preLinks,$leftCategoriesList);

			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsRightId]);
		}else{
			$preLinksEvent=[
				[   'name'  =>$data['text_home'],
					'href'  =>$data['home_supply'],
				],
				[   'name'  =>$data['text_about_us'],
					'href'=>$this->url->link('information/information&information_id=7','id=fff'),
					'children'=>[
						['name'=>$data['text_about_balloony'],'href'=>'?route=information/information&information_id=7'],
						['name'=>$data['text_location_map'],'href'=>'?route=information/information&information_id=8'],
						['name'=>$data['text_our_staff'],'href'=>'?route=information/information&information_id=9']
					],

				]
			];
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildren([$productsLeftId]);//print_r to see results for left side
			$data['leftCategories'] = array_merge($preLinksEvent,$leftCategoriesList);
			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildren([$productsRightId]);
		}

		//


		if ($data['leftCategories']) {
			foreach ($data['leftCategories'] as $result2) {
				if ($result2['image']) {
					$image = $this->model_tool_image->resize($result2['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result2['price'], $result2['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result2['special']) {
					$special = $this->currency->format($this->tax->calculate($result2['special'], $result2['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result2['special'] ? $result2['special'] : $result2['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result2['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result2['product_id'],
					'thumb'       => $image,
					'name'        => $result2['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result2['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result2['product_id'])
				);
			}

			return $this->load->view('extension/module/latest_service', $data);
		}
	}
}

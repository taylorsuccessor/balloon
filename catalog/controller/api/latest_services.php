
<?php
class ControllerApiLatestServices extends Controller
{
	public function index()
	{
		$this->load->language('extension/module/latest');
		
        $this->load->model('extension/module');
		$module_id = 35;
        $setting = $this->model_extension_module->getModule($module_id);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_view_more'] = $this->language->get('text_view_more');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$this->load->model('catalog/product');

		$this->load->model('tool/image');




		$this->load->model('catalog/category');
		list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();

		$parentCategriesId=[];

		if(isset($this->session->data['serviceType'] ) && $this->session->data['serviceType'] =='events'){

			$parentCategriesId=[$eventsLeftId,$eventsRightId];
			$data['serviceType']='events';
		}else{

			$parentCategriesId=[$productsLeftId,$productsRightId];
			$data['serviceType']='products';

		}



		$data['products'] = array();

		$filter_data = array(
			'sort' => 'p.date_added',
			'order' => 'DESC',
			'start' => 0,
			'limit' => $setting['limit'],
			'parentCategories'=>array_merge($parentCategriesId,$this->getCategriesId($parentCategriesId))

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
					'product_id' => $result['product_id'],
					'thumb' => $image,
					'name' => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
					'price' => $price,
					'special' => $special,
					'tax' => $tax,
					'rating' => $rating,
					'href' => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}

		}
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($data['products']));

	}

	public function getCategriesId($parentIdArray){

		$categories=$this->model_catalog_category->getCategoryChildren($parentIdArray);

		return $this->getChildCategoryIds($categories);

	}
	private 		function getChildCategoryIds($categories){

		$ids=[];
		foreach($categories as $category){
			$ids[]=$category['category_id'];
			if(isset($category['children'])){
				$ids=array_merge($ids,$this->getChildCategoryIds($category['children']));
			}
		}
		return $ids;
	}


}


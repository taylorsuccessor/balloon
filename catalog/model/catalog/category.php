<?php
class ModelCatalogCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

	public function getCategoryFilters($category_id) {
		$implode = array();

		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}

		$filter_group_data = array();

		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");

			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();

				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");

				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']
					);
				}

				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);
				}
			}
		}

		return $filter_group_data;
	}

	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return 0;
		}
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row['total'];
	}




	public function getCategoryChildrenWithProducts($parentIdArray){
		$category_id=$parentIdArray[count($parentIdArray)- 1 ];


		$categories = $this->getCategories($category_id);


		$final_categories = array();
		foreach ($categories as $category)
		{
			$newParentIdArray=$parentIdArray;
			$newParentIdArray[count($parentIdArray)]=$category['category_id'];

			$level_data = array(
				'category_id'=>$category['category_id'],
				'name' => $category['name'],
				'image'=> HTTP_SERVER.'/image/'.$category['image'],
				'href' => $this->url->link('product/category', 'path=' . join('_',$newParentIdArray))
			);

			$children=$this->getCategoryChildrenWithProducts($newParentIdArray);


			if(count($children) ){
				foreach($children as $child){

					$level_data['children'][] =$child;
				}

			}

$this->load->model('catalog/product');
$this->load->model('tool/image');

			$products = $this->model_catalog_product->getProducts(['filter_category_id'=>$category['category_id']]);



			if(count($products)){

				$productsLinks=[];
				foreach($products as $product){
					$productsLinks[] = array(
						'product_id'=>$product['product_id'],
						'name' => $product['name'],
						'href' => $this->url->link('product/product', 'product_id=' . $product['product_id'])
					);
				}
				if(isset($level_data['children'])){
					$level_data['children']=array_merge($productsLinks,$level_data['children']);
				}else{
					$level_data['children']=	$productsLinks;

				}
			}



			$final_categories[]=$level_data;
		}






		return $final_categories;

	}

	public function getCategoryChildren($parentIdArray){
      $this->load->model('tool/image');

		$final_categories = array();

		$categories = $this->getCategories($parentIdArray[count($parentIdArray)- 1]);



		foreach ($categories as $category)
		{
			$tempParentIdArray=array_merge($parentIdArray,[$category['category_id']]);


			$level_data = array(
				'category_id'=>$category['category_id'],
				'name' => $category['name'],
				'image'=>  HTTP_SERVER.'/image/'.$category['image'],
				'href' => $this->url->link('product/category', 'path=' . join('_',$tempParentIdArray))
			);

			$children=$this->getCategoryChildren($tempParentIdArray);

			if(count($children)){
				$level_data['children'] =$children;
			}

			$final_categories[]=$level_data;
		}
		return $final_categories;

	}

	function getMainMenuCategory(){
		$categories = $this->getCategories(0);
		$eventsLeftId=-1;
		$eventsRightId=-1;
		$productsLeftId=-1;
		$productsRightId=-1;

		foreach($categories as $category){
			$category_name=str_replace(' ','',strtolower($category['name']));
			$eventsLeftId=($category_name == 'eventsleft')? $category['category_id']:$eventsLeftId;
			$eventsRightId=($category_name == 'eventsright')? $category['category_id']:$eventsRightId;
			$productsLeftId=($category_name == 'productsleft')? $category['category_id']:$productsLeftId;
			$productsRightId=($category_name == 'productsright')? $category['category_id']:$productsRightId;
		}

		return [$eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId];

	}


	public function getCategoryApi($parentIdArray){
		$category_id=$parentIdArray[count($parentIdArray)- 1 ];


		$categories = $this->getCategories($category_id);


		$final_categories = array();
		foreach ($categories as $category)
		{
			$newParentIdArray=$parentIdArray;
			$newParentIdArray[count($parentIdArray)]=$category['category_id'];

			$level_data = array(
				'category_id'=>$category['category_id'],
				'name' => $category['name'],
			);

			$final_categories[]=$level_data;
		}
		return $final_categories;
	}

	public function getSubCategoryApi($parentIdArray){
		$this->load->model('tool/image');

		$final_categories = array();

		$categories = $this->getCategories($parentIdArray[count($parentIdArray)- 1]);



		foreach ($categories as $category)
		{
			$tempParentIdArray=array_merge($parentIdArray,[$category['category_id']]);


			$level_data = array(
				'category_id'=>$category['category_id'],
				'name' => $category['name'],
			);

			$children=$this->getCategoryChildren($tempParentIdArray);

			if(count($children)){
				$level_data['children'] =$children;
			}

			$final_categories[]=$level_data;
		}
		return $final_categories;
	}

	public function getCategoryWithProductsApi($parentIdArray){
		$category_id=$parentIdArray[count($parentIdArray) -1 ];


		$categories = $this->getCategories($category_id);


		$final_categories = array();
		foreach ($categories as $category)
		{
			$newParentIdArray=$parentIdArray;
			$newParentIdArray[count($parentIdArray)]=$category['category_id'];

			$level_data = array(
				'category_id'=>$category['category_id'],
				'name' => $category['name']
			);

			$children=$this->getCategoryChildrenWithProducts($newParentIdArray);

			if(count($children) ){
				foreach($children as $child){

					$level_data['children'][] =$child;
				}

			}

			$this->load->model('catalog/product');
			$this->load->model('tool/image');

			$products = $this->model_catalog_product->getProducts(['filter_category_id'=>$category['category_id']]);

			if(count($products)){

				$productsLinks=[];
				foreach($products as $product){
					$productsLinks[] = array(
						'product_id'=>$product['product_id'],
						'name' => $product['name'],
					);
				}
				if(isset($level_data['children'])){
					$level_data['children']=array_merge($productsLinks,$level_data['children']);
				}else{
					$level_data['children']=	$productsLinks;

				}
			}



			$final_categories[]=$level_data;
		}






		return $final_categories;

	}



}
<?php
class ControllerApiCategory extends Controller {
	public function index() {
			// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		// $data['categories'] = array();

		 $categories = $this->model_catalog_category->getCategories(0);


		list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();


		if(isset($this->session->data['serviceType'] ) && $this->session->data['serviceType'] =='events'){
			
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsLeftId]);
			$data['leftCategories']=$leftCategoriesList;

			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsRightId]);
		    $this->response->addHeader('Content-Type: application/json');
		    $this->response->setOutput(json_encode($data));
		}else{
			
			$leftCategoriesList = $this->model_catalog_category->getCategoryChildren([$productsLeftId]);//print_r to see results for left side
			$data['leftCategories'] = $leftCategoriesList;
			$data['rightCategories'] = $this->model_catalog_category->getCategoryChildren([$productsRightId]);
            $this->response->addHeader('Content-Type: application/json');
		    $this->response->setOutput(json_encode($data));
		}

	}
}

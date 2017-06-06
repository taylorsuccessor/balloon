<?php

class ControllerApiServices extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        // $data['categories'] = array();

        $categories = $this->model_catalog_category->getCategories(0);


        list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();


        if(isset($this->request->get['ajaxRequest'])){
            $leftCategoriesList = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsLeftId]);
            $data['leftCategories']=$leftCategoriesList;

            $data['rightCategories'] = $this->model_catalog_category->getCategoryChildrenWithProducts([$eventsRightId]);
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($data));
        }

    }
}

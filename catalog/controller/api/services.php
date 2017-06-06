<?php

class ControllerApiServices extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

         $Allcategories = array();

        $categories = $this->model_catalog_category->getCategories(0);


        list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();


        if(isset($this->request->get['ajaxRequest'])){
            $leftCategoriesList = $this->model_catalog_category->getCategoryApi([$eventsLeftId]);

            foreach($leftCategoriesList as $left){
                $Allcategories[] = $left;
            }

            $rightCategoriesList = $this->model_catalog_category->getCategoryApi([$eventsRightId]);
            foreach($rightCategoriesList as $right){
                $Allcategories[] = $right;
            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($Allcategories));
        }

    }
}

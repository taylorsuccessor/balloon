<?php
class ControllerApiServicesSubcategory extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $Allcategories = array();

        $categories = $this->model_catalog_category->getCategories(0);


        //list($eventsLeftId,$eventsRightId,$productsLeftId,$productsRightId)=$this->model_catalog_category->getMainMenuCategory();

        $eventsLeftId = $this->request->get['category_id'];
        if(isset($this->request->get['ajaxRequest'])){
            $leftCategoriesList = $this->model_catalog_category->getSubCategoryApi([$eventsLeftId]);

            foreach($leftCategoriesList as $left){
                $Allcategories[] = $left;
            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($Allcategories));
        }

    }
}

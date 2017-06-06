<?php
class ControllerApiServicesSubcategory extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');

        $Allcategories = array();

        $categories = $this->model_catalog_category->getCategories(0);


        if(isset($this->request->get['category_id']))
        {
            $eventsLeftId = $this->request->get['category_id'];
        }elseif(!isset($this->request->get['category_id']))
        {
            $eventsLeftId =0;
        }
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

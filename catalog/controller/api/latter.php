<?php
class ControllerApilatter extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');




        $latters = array();

        if(isset($this->request->get['ajaxRequest'])){
            $category_id_latters = 153;
            $products_latters = $this->model_catalog_product->getAllProductsInCategory($category_id_latters);

            foreach($products_latters as $products_latter){
                if($products_latter['image']) {
                    $products_latter['image']= HTTP_SERVER.'/image/'.$products_latter['image'];
                }
                $latters[]= $products_latter;

            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($latters));
        }

    }
}

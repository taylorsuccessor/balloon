<?php
class ControllerApiNumber extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');




        $number = array();

        if(isset($this->request->get['ajaxRequest'])){
            $category_id_number = 213;
            $products_numbers = $this->model_catalog_product->getAllProductsInCategory($category_id_number);

            foreach($products_numbers as $products_number){

                if($products_number['image']) {
                    $products_number['image']= HTTP_SERVER.'/image/'.$products_number['image'];
                }
                $number[] = $products_number;
            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($number));
        }

    }
}

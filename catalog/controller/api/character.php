<?php

class ControllerApiCharacter extends Controller {
    public function index() {
        // Menu
        $this->load->model('catalog/category');

        $this->load->model('catalog/product');




        $character = array();

        if(isset($this->request->get['ajaxRequest'])){
            $category_id_character  = 212;
            $products_characters = $this->model_catalog_product->getAllProductsInCategory($category_id_character);

            foreach($products_characters as $products_character){

                if($products_character['image']) {
                    $products_character['image']= HTTP_SERVER.'/image/'.$products_character['image'];
                }
                $character[] = $products_character;
            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($character));
        }

    }
}

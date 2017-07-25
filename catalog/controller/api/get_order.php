<?php
class ControllerApiGetOrder extends Controller {

    public function index() {
        // Menu

        $this->load->model('catalog/product');

        if(isset($this->request->get['customer_session']) && !empty($this->request->get['customer_session']))
        {
            $customer_session =   $this->request->get['customer_session'];
        }

        $order_id = $this->model_catalog_product->getOrderId($customer_session);
        foreach($order_id as $o_id){
            $data['orderId'] = $o_id['order_id'];
        }

        if(isset($this->request->get['ajaxRequest']))
        {
            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($data));
        }



    }
}
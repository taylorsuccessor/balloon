<?php
class ControllerApiContactInfo extends Controller {

    public function index() {

        $data['store'] = $this->config->get('config_name');
        $data['address'] = nl2br($this->config->get('config_address'));
        $data['geocode'] = $this->config->get('config_geocode');
        $data['email'] = $this->config->get('config_email');
        $data['telephone'] = $this->config->get('config_telephone');
        $data['fax'] = $this->config->get('config_fax');
        $data['open'] = nl2br($this->config->get('config_open'));

        if(isset($this->request->get['ajaxRequest']))
        {
            echo json_encode($data);die();
        }

        $this->response->setOutput($this->load->view('information/contact', $data));
    }



}

<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 20/04/2017
 * Time: 12:12 PM
 */
class ControllerCommonHomeEvent extends Controller{

    public function index() {

        die(var_dump('this page doesnot used'));


        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));

        if (isset($this->request->get['route'])) {
            $this->document->addLink($this->config->get('config_url'), 'canonical');
        }

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
        $data['indexLink'] = $this->url->link('common/home-event');
        $data['partySupplies'] = $this->url->link('common/home/newIndex');

        $this->response->setOutput($this->load->view('common/home_event', $data));
    }

    public function newIndex() {
        $data=[];
        $data['indexLink'] = $this->url->link('common/home-event');
        $data['partySupplies'] = $this->url->link('common/home/newIndex');



    }



}
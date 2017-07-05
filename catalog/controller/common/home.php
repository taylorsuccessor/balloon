
<?php
class ControllerCommonHome extends Controller {
	public  function index() {

		$data=[];

		$data['eventsLink'] = $this->url->link('product/event/events_main');
		$data['eventsLinkEn'] = $this->url->link('product/event/events_main&langevent=en-gb');
		$data['eventsLinkAr'] = $this->url->link('product/event/events_main&langevent=ar');

		$data['partySuppliesLink'] = $this->url->link('common/home/index_supply');
		//$this->load->language('common/index_intro');
		$data['partySuppliesLinkEn'] = $this->url->link('common/home/index_supply&lang=en-gb');
		$data['partySuppliesLinkAr'] = $this->url->link('common/home/index_supply&lang=ar');

		if (isset($this->request->get['lang'])) {

			$this->session->data['language'] = $this->request->get['lang'];
		}
		$this->load->language('common/index_intro');
		$data['text_language_en'] = $this->language->get('text_language_en');
		$data['text_language_ar'] = $this->language->get('text_language_ar');
		$data['header'] = $this->load->controller('common/header');
		$data['indexLink'] = $this->url->link('common/home');

		//$data['text_balloons_party_supply'] = $this->language->get('text_balloons_party_supply');
		$this->response->setOutput($this->load->view('common/index_intro', $data));

	}

	/**
	 *
     */
	public function index_supply() {
		$this->session->data['serviceType']='products';
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
		$data['indexLink'] = $this->url->link('common/home');
		$data['partySupplies'] = $this->url->link('common/home/newIndex');
		//$this->load->language('common/index_intro');
		//$data['text_balloons_party_supply'] = $this->language->get('text_balloons_party_supply');
		$this->response->setOutput($this->load->view('common/home', $data));


	}


}

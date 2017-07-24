<?php
class ControllerCommonNewsletter extends Controller {
	private $error = array();

	public function index() {

		if(!isset($this->request->post['email']) ) return false;

		$this->load->model('checkout/newsletter');

    if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
    {
	    $this->model_checkout_newsletter->addNewEmail($this->request->post['email']);
	    if(isset($this->session->data['serviceType'] ) && $this->session->data['serviceType'] =='events')
		{
			
			$this->redirect($this->url->link('product/event/events_main', '', true),['message'=>'success']);
		}
		else
		{

			$this->redirect($this->url->link('common/home/index_supply', '', true),['message'=>'success']);
			
		}

	}elseif(($this->request->server['REQUEST_METHOD'] == 'POST') && !$this->validate())
	{
		if(isset($this->request->get['ajaxRequest'])){
				header('Content-Type: application/json');
				echo json_encode(['message'=>$this->error]);exit();
			}
	}
		
	}



	public function cancelNewsletter(){

		if(!isset($this->request->get['hash']) || !isset($this->request->get['status'])) return false;


		$this->load->model('checkout/newsletter');

		$this->model_checkout_newsletter->changeSubscribe($this->request->get['hash'],$this->request->get['status']);

		$this->response->redirect($this->url->link('common/home', '', true));

	}
	protected function validate() {
		if ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
			$this->error['email'] = $this->language->get('error_email');
		}
		return !$this->error;
	}

}
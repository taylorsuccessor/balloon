<?php
abstract class Controller {
	protected $registry;

	public function __construct($registry) {
		$this->registry = $registry;
	}

	public function __get($key) {
		return $this->registry->get($key);
	}

	public function __set($key, $value) {
		$this->registry->set($key, $value);
	}

	public function view($route,$data=array(),$selectedData='all'){



		//if( !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
			if( isset($this->request->get['ajaxRequest']) && $this->request->get['ajaxRequest'] ==1){
				$newData=array();
			if($selectedData != 'all' && count($selectedData)> 0){
				foreach($selectedData as $oneSelect){
					if(array_key_exists($oneSelect,$data)){
						$newData[$oneSelect]=$data[$oneSelect];
					}
				}
			}else{
				$newData=$data;

			}
//			if (isset($this->request->server['HTTP_ORIGIN'])) {
//				$this->response->addHeader('Access-Control-Allow-Origin: ' . $this->request->server['HTTP_ORIGIN']);
//				$this->response->addHeader('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
//				$this->response->addHeader('Access-Control-Max-Age: 1000');
//				$this->response->addHeader('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
//			}
//
//			$this->response->addHeader('Content-Type: application/json');
//		 	$this->response->setOutput(json_encode($newData));exit();
			header('Content-Type: application/json');
			echo json_encode($newData);exit();

			//header('HTTP/1.1 401 Unauthorized', true, 401);


		}else{

			return	$this->load->view($route, $data);
		}


	}

public function redirect($link,$data){

	if( isset($this->request->get['ajaxRequest']) && $this->request->get['ajaxRequest'] ==1) {
		header('Content-Type: application/json');
		echo json_encode($data);die();

	}else{

		$this->response->redirect($link);
	}


	}
}
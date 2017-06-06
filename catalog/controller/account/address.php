<?php
class ControllerAccountAddress extends Controller {
	private $error = array();

	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/address', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}
		$this->load->language('account/address');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('account/address');

		$this->getList();
		//$this->getForm();
	}

	public function add() {


		$this->load->model('catalog/custom_field');
		$this->request->post=$this->model_catalog_custom_field->fixRequest($this->request->post);

//die(var_dump($this->request->post));

		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/address', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/address');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->load->model('account/address');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_account_address->addAddress($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_add');

			// Add to activity log
			if ($this->config->get('config_customer_activity')) {
				$this->load->model('account/activity');

				$activity_data = array(
					'customer_id' => $this->customer->getId(),
					'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
				);

				$this->model_account_activity->addActivity('address_add', $activity_data);
			}

			$this->redirect($this->url->link('account/success'),['status'=>'success']);

		}elseif(($this->request->server['REQUEST_METHOD'] == 'POST') && !$this->validateForm()){

			if(isset($this->request->get['ajaxRequest'])){
				header('Content-Type: application/json');
				echo json_encode(['status'=>$this->error]);exit();
			}
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->model('catalog/custom_field');
		$this->request->post=$this->model_catalog_custom_field->fixRequest($this->request->post);
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/address', '', true);
			$this->response->redirect($this->url->link('account/login', '', true));
		}
		$this->load->language('account/address');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
		$this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

		$this->load->model('account/address');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {

			$this->model_account_address->editAddress($this->request->get['address_id'], $this->request->post);

			// Default Shipping Address
			if (isset($this->session->data['shipping_address']['address_id']) && ($this->request->get['address_id'] == $this->session->data['shipping_address']['address_id'])) {
				$this->session->data['shipping_address'] = $this->model_account_address->getAddress($this->request->get['address_id']);

				unset($this->session->data['shipping_method']);
				unset($this->session->data['shipping_methods']);
			}

			// Default Payment Address
			if (isset($this->session->data['payment_address']['address_id']) && ($this->request->get['address_id'] == $this->session->data['payment_address']['address_id'])) {
				$this->session->data['payment_address'] = $this->model_account_address->getAddress($this->request->get['address_id']);

				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);
			}

			$this->session->data['success'] = $this->language->get('text_edit');

			// Add to activity log
			if ($this->config->get('config_customer_activity')) {
				$this->load->model('account/activity');

				$activity_data = array(
					'customer_id' => $this->customer->getId(),
					'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
				);	

				$this->model_account_activity->addActivity('address_edit', $activity_data);

			}
			$this->redirect($this->url->link('account/success'),['status'=>'success']);

			//$this->response->redirect($this->url->link('account/address', '', true));
		}elseif (isset($this->request->get['ajaxRequest']) && !$this->validateForm()){
			header('Content-Type: application/json');
			echo json_encode(['status'=>$this->error]);exit();
		}


		$this->getForm();
	}

	public function delete() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/address', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}

		$this->load->language('account/address');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('account/address');

		if (isset($this->request->get['address_id']) && $this->validateDelete()) {
			$this->model_account_address->deleteAddress($this->request->get['address_id']);

			// Default Shipping Address
			if (isset($this->session->data['shipping_address']['address_id']) && ($this->request->get['address_id'] == $this->session->data['shipping_address']['address_id'])) {
				unset($this->session->data['shipping_address']);
				unset($this->session->data['shipping_method']);
				unset($this->session->data['shipping_methods']);
			}

			// Default Payment Address
			if (isset($this->session->data['payment_address']['address_id']) && ($this->request->get['address_id'] == $this->session->data['payment_address']['address_id'])) {
				unset($this->session->data['payment_address']);
				unset($this->session->data['payment_method']);
				unset($this->session->data['payment_methods']);
			}

			$this->session->data['success'] = $this->language->get('text_delete');

			// Add to activity log
			if ($this->config->get('config_customer_activity')) {
				$this->load->model('account/activity');

				$activity_data = array(
					'customer_id' => $this->customer->getId(),
					'name'        => $this->customer->getFirstName() . ' ' . $this->customer->getLastName()
				);
				
				$this->model_account_activity->addActivity('address_delete', $activity_data);
			}
			$this->response->redirect($this->url->link('account/address', '', true));
		}

		$this->getList();
	}

	protected function getList() {
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('account/address', '', true)
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_address_book'] = $this->language->get('text_address_book');
		$data['text_empty'] = $this->language->get('text_empty');

		$data['button_new_address'] = $this->language->get('button_new_address');
		$data['button_edit'] = $this->language->get('button_edit');
		$data['button_delete'] = $this->language->get('button_delete');
		$data['button_back'] = $this->language->get('button_back');
        //start add byme
        $data['text_user_profile'] = $this->language->get('text_user_profile');
        $data['text_my_account'] = $this->language->get('text_my_account');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_my_orders'] = $this->language->get('text_my_orders');
		$data['text_password'] = $this->language->get('text_password');

		$data['text_address_list'] = $this->language->get('text_address_list');


        $data['edit'] = $this->url->link('account/edit', '', true);
        $data['address'] = $this->url->link('account/address', '', true);
        $data['orders'] = $this->url->link('account/order', '', true);
		$data['password'] = $this->url->link('account/password', '', true);

       //end added by me



		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		$data['addresses'] = array();

		$results = $this->model_account_address->getAddresses(isset($this->request->get['address_id'])? $this->request->get['address_id']:'');

		foreach ($results as $result) {
			$data['custom_field']=$result['custom_field'];

			if ($result['custom_field']) {
				foreach ($result['custom_field'] as $custom_value) {
					
					$format =  $custom_value;
					break;
				}
			} else {
				$format = '{firstname} {lastname}' . "\n" . '{company}' . "\n" . '{address_1}' . "\n" . '{address_2}' . "\n" . '{city} {postcode}' . "\n" . '{zone}' . "\n" . '{country}';
			}
			$find = array(
				'{firstname}',
				'{lastname}',
				'{company}',
				'{address_1}',
				'{address_2}',
				'{city}',
				'{postcode}',
				'{zone}',
				'{zone_code}',
				'{country}'
			);

			$replace = array(
				'firstname' => $result['firstname'],
				'lastname'  => $result['lastname'],
				'company'   => $result['company'],
				'address_1' => $result['address_1'],
				'address_2' => $result['address_2'],
				'city'      => $result['city'],
				'postcode'  => $result['postcode'],
				'zone'      => $result['zone'],
				'zone_code' => $result['zone_code'],
				'country'   => $result['country']
			);

			$data['addresses'][] = array(
				'address_id' => $result['address_id'],
				'address'    => str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format)))),
				'update'     => $this->url->link('account/address/edit', 'address_id=' . $result['address_id'], true),
				'delete'     => $this->url->link('account/address/delete', 'address_id=' . $result['address_id'], true)
			);


		}

		$data['add'] = $this->url->link('account/address/add', '', true);
		$data['back'] = $this->url->link('account/account', '', true);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');


		$this->load->model('catalog/custom_field');
		$data=$this->model_catalog_custom_field->fixNamesRequest($data);
//var_dump($data['addressData']);die();

		$oAllAddressResults = $this->model_account_address->getAddresses();
		$aAllAddressResults=[];
		foreach ($oAllAddressResults as $result) {
//			$aAllAddressResults[$result['address_id']]=$result['custom_field'];
			$aAllAddressResults[$result['address_id']]=$result['custom_field'];
		}

		$data['allAddressResults']=$this->model_catalog_custom_field->convertAddressesCustomFieldsToName($aAllAddressResults);
        $AddressesResults=[];
		foreach($data['allAddressResults'] as $address_id=>&$oneAddressData){
			$oneAddressData['address_id']=$address_id;
			$AddressesResults[]=$oneAddressData;
		}
		$data['addressesResults']=$AddressesResults;
		$this->response->setOutput($this->view('account/address_list', $data,['addresses','addressData','addressesResults']));

	}

	protected function getForm() {
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('account/address', '', true)
		);

		if (!isset($this->request->get['address_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_edit_address'),
				'href' => $this->url->link('account/address/add', '', true)
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_edit_address'),
				'href' => $this->url->link('account/address/edit', 'address_id=' . $this->request->get['address_id'], true)
			);
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit_address'] = $this->language->get('text_edit_address');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_no'] = $this->language->get('text_no');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_loading'] = $this->language->get('text_loading');
        
        $data['text_delivery_address'] = $this->language->get('text_delivery_address');
        $data['text_edit_address'] = $this->language->get('text_edit_address');

		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_company'] = $this->language->get('entry_company');
		$data['entry_address_1'] = $this->language->get('entry_address_1');
		$data['entry_address_2'] = $this->language->get('entry_address_2');
		$data['entry_postcode'] = $this->language->get('entry_postcode');
		$data['entry_city'] = $this->language->get('entry_city');
		$data['entry_country'] = $this->language->get('entry_country');
		$data['entry_zone'] = $this->language->get('entry_zone');
		$data['entry_default'] = $this->language->get('entry_default');
        //added by gholeh
		$data['entry_area'] = $this->language->get('entry_area');
        $data['entry_governorate'] = $this->language->get('entry_governorate');
        $data['entry_block'] = $this->language->get('entry_block');
        $data['entry_street'] = $this->language->get('entry_street');
        $data['entry_avenue'] = $this->language->get('entry_avenue');
        $data['entry_building_number'] = $this->language->get('entry_building_number');
        $data['entry_floor_number'] = $this->language->get('entry_floor_number');
        $data['entry_flat_number'] = $this->language->get('entry_flat_number');	
        //end add by gholeh

		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_back'] = $this->language->get('button_back');
		$data['button_upload'] = $this->language->get('button_upload');

        $data['text_user_profile'] = $this->language->get('text_user_profile');
		$data['text_my_account'] = $this->language->get('text_my_account');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_my_orders'] = $this->language->get('text_my_orders');
		$data['text_password'] = $this->language->get('text_password');
        $data['text_address_book'] = $this->language->get('text_address_book');


        $data['edit'] = $this->url->link('account/edit', '', true);
        $data['address'] = $this->url->link('account/address', '', true);
        $data['orders'] = $this->url->link('account/order', '', true);
		$data['password'] = $this->url->link('account/password', '', true);

		if (isset($this->error['firstname'])) {
			$data['error_firstname'] = $this->error['firstname'];
		} else {
			$data['error_firstname'] = '';
		}

		if (isset($this->error['lastname'])) {
			$data['error_lastname'] = $this->error['lastname'];
		} else {
			$data['error_lastname'] = '';
		}

		if (isset($this->error['address_1'])) {
			$data['error_address_1'] = $this->error['address_1'];
		} else {
			$data['error_address_1'] = '';
		}

		

		if (isset($this->error['city'])) {
			$data['error_city'] = $this->error['city'];
		} else {
			$data['error_city'] = '';
		}

		if (isset($this->error['postcode'])) {
			$data['error_postcode'] = $this->error['postcode'];
		} else {
			$data['error_postcode'] = '';
		}

		if (isset($this->error['country'])) {
			$data['error_country'] = $this->error['country'];
		} else {
			$data['error_country'] = '';
		}

		if (isset($this->error['zone'])) {
			$data['error_zone'] = $this->error['zone'];
		} else {
			$data['error_zone'] = '';
		}

		if (isset($this->error['custom_field'])) {
			$data['error_custom_field'] = $this->error['custom_field'];
		} else {
			$data['error_custom_field'] = array();
		}
		
		if (!isset($this->request->get['address_id'])) {
			$data['action'] = $this->url->link('account/address/add', '', true);
		} else {
			$data['action'] = $this->url->link('account/address/edit', 'address_id=' . $this->request->get['address_id'], true);
		}

		if (isset($this->request->get['address_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$address_info = $this->model_account_address->getAddress($this->request->get['address_id']);
		}

		if (isset($this->request->post['firstname'])) {
			$data['firstname'] = $this->request->post['firstname'];
		} elseif (!empty($address_info)) {
			$data['firstname'] = $address_info['firstname'];
		} else {
			$data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
			$data['lastname'] = $this->request->post['lastname'];
		} elseif (!empty($address_info)) {
			$data['lastname'] = $address_info['lastname'];
		} else {
			$data['lastname'] = '';
		}

		if (isset($this->request->post['company'])) {
			$data['company'] = $this->request->post['company'];
		} elseif (!empty($address_info)) {
			$data['company'] = $address_info['company'];
		} else {
			$data['company'] = '';
		}

		if (isset($this->request->post['address_1'])) {
			$data['address_1'] = $this->request->post['address_1'];
		} elseif (!empty($address_info)) {
			$data['address_1'] = $address_info['address_1'];
		} else {
			$data['address_1'] = '';
		}



        

		if (isset($this->request->post['address_2'])) {
			$data['address_2'] = $this->request->post['address_2'];
		} elseif (!empty($address_info)) {
			$data['address_2'] = $address_info['address_2'];
		} else {
			$data['address_2'] = '';
		}

		if (isset($this->request->post['postcode'])) {
			$data['postcode'] = $this->request->post['postcode'];
		} elseif (!empty($address_info)) {
			$data['postcode'] = $address_info['postcode'];
		} else {
			$data['postcode'] = '';
		}

		if (isset($this->request->post['city'])) {
			$data['city'] = $this->request->post['city'];
		} elseif (!empty($address_info)) {
			$data['city'] = $address_info['city'];
		} else {
			$data['city'] = '';
		}

		if (isset($this->request->post['country_id'])) {
			$data['country_id'] = (int)$this->request->post['country_id'];
		}  elseif (!empty($address_info)) {
			$data['country_id'] = $address_info['country_id'];
		} else {
			$data['country_id'] = $this->config->get('config_country_id');
		}

		if (isset($this->request->post['zone_id'])) {
			$data['zone_id'] = (int)$this->request->post['zone_id'];
		}  elseif (!empty($address_info)) {
			$data['zone_id'] = $address_info['zone_id'];
		} else {
			$data['zone_id'] = '';
		}

		$this->load->model('localisation/country');

		$data['countries'] = $this->model_localisation_country->getCountries();

		// Custom fields
		$this->load->model('account/custom_field');

		$data['custom_fields'] = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

		if (isset($this->request->post['custom_field'])) {
			$data['address_custom_field'] = $this->request->post['custom_field'];
		} elseif (isset($address_info)) {
			$data['address_custom_field'] = $address_info['custom_field'];
		} else {
			$data['address_custom_field'] = array();
		}

		if (isset($this->request->post['default'])) {
			$data['default'] = $this->request->post['default'];
		} elseif (isset($this->request->get['address_id'])) {
			$data['default'] = $this->customer->getAddressId() == $this->request->get['address_id'];
		} else {
			$data['default'] = false;
		}

		$data['back'] = $this->url->link('account/address', '', true);

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');


		$this->response->setOutput($this->load->view('account/address_form', $data));
	}

	protected function validateForm() {
		
		$this->load->model('localisation/country');


		// $country_info = $this->model_localisation_country->getCountry($this->request->post['country_id']);

		// if ($country_info && $country_info['postcode_required'] && (utf8_strlen(trim($this->request->post['postcode'])) < 2 || utf8_strlen(trim($this->request->post['postcode'])) > 10)) {
		// 	$this->error['postcode'] = $this->language->get('error_postcode');
		// }

		// if ($this->request->post['country_id'] == '' || !is_numeric($this->request->post['country_id'])) {
		// 	$this->error['country'] = $this->language->get('error_country');
		// }

//		if (!isset($this->request->post['zone_id']) || $this->request->post['zone_id'] == '' || !is_numeric($this->request->post['zone_id'])) {
//			$this->error['zone'] = $this->language->get('error_zone');
//		}



		// Custom field validation
		$this->load->model('account/custom_field');

		$custom_fields = $this->model_account_custom_field->getCustomFields($this->config->get('config_customer_group_id'));

		foreach ($custom_fields as $custom_field) {
			if (($custom_field['location'] == 'address') && $custom_field['required'] && empty($this->request->post['custom_field'][$custom_field['custom_field_id']])) {
				$this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
			} elseif (($custom_field['location'] == 'address') && ($custom_field['type'] == 'text') && !empty($custom_field['validation']) && !filter_var($this->request->post['custom_field'][$custom_field['custom_field_id']], FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => $custom_field['validation'])))) {
                $this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
            }
		}

		return !$this->error;
	}

	protected function validateDelete() {
		if ($this->model_account_address->getTotalAddresses() == 1) {
			$this->error['warning'] = $this->language->get('error_delete');
		}

		if ($this->customer->getAddressId() == $this->request->get['address_id']) {
			$this->error['warning'] = $this->language->get('error_default');
		}

		return !$this->error;
	}
}

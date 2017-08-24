<?php
class ControllerProductEvent extends Controller {
	private $error = array();

	public function events_main() {
		$this->session->data['serviceType']='events';
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		$this->load->language('product/event_main');



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

		// added by assem

		$data['text_events_book'] = $this->language->get('text_events_book');
		$data['text_accepted_payments'] = $this->language->get('text_accepted_payments');
		$data['placeholder_first_name'] = $this->language->get('placeholder_first_name');
		$data['placeholder_last_name'] = $this->language->get('placeholder_last_name');

		$data['placeholder_email'] = $this->language->get('placeholder_email');
		$data['placeholder_location'] = $this->language->get('placeholder_location');
		$data['placeholder_mobile'] = $this->language->get('placeholder_mobile');
		$data['placeholder_entertainment'] = $this->language->get('placeholder_entertainment');
		$data['placeholder_book_now'] = $this->language->get('placeholder_book_now');


      /*  if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            $customer_id = $this->model_account_customer->addCustomer($this->request->post);

            // Clear any previous login attempts for unregistered accounts.
            $this->model_account_customer->deleteLoginAttempts($this->request->post['email']);

            $this->customer->login($this->request->post['email'], $this->request->post['password']);

            unset($this->session->data['guest']);


            // Add to activity log
            if ($this->config->get('config_customer_activity')) {
                $this->load->model('account/activity');

                $activity_data = array(
                    'customer_id' => $customer_id,
                    'name'        => $this->request->post['firstname'] . ' ' . $this->request->post['lastname']
                );

                $this->model_account_activity->addActivity('register', $activity_data);
            }

            $this->response->redirect($this->url->link('account/success'));
        }

      */



		$data['categories']=$this->getEventsCategory();



        if ($this->customer->isLogged()) {
			$this->load->model('account/customer');

			$customer_info = $this->model_account_customer->getCustomer($this->customer->getId());

			$data['firstname'] = $customer_info['firstname'];
			$data['lastname'] = $customer_info['lastname'];
			$data['email'] = $customer_info['email'];
			$data['telephone'] = $customer_info['telephone'];
			$data['location'] = '';
			$data['category'] = '';

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

            if (isset($this->error['email'])) {
                $data['error_email'] = $this->error['email'];
            } else {
                $data['error_email'] = '';
            }

            if (isset($this->error['telephone'])) {
                $data['error_telephone'] = $this->error['telephone'];
            } else {
                $data['error_telephone'] = '';
            }



           // print_r($this->session->data);

        } elseif (isset($this->session->data['guest']) && $this->validate()) {
			$data['firstname']=$this->session->data['guest']['firstname'];
			$data['lastname']=$this->session->data['guest']['lastname'] ;
			$data['email']=$this->session->data['guest']['email'] ;
			$data['telephone']=$this->session->data['guest']['telephone'];
			//$data['location']=$this->session->data['guest']['location'];
			$data['category']=$this->session->data['guest']['category'] ;

            }elseif(!isset($data['firstname'])&&!isset($data['lastname']) &&!isset($data['email']) && !isset($data['telephone'])  ) {

			$data['firstname'] = '';
    	    $data['lastname'] = '';
		    $data['email'] = '';
			$data['telephone'] = '';
			$data['location'] = '';
			$data['category'] = '';


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

            if (isset($this->error['email'])) {
                $data['error_email'] = $this->error['email'];
            } else {
                $data['error_email'] = '';
            }

            if (isset($this->error['telephone'])) {
                $data['error_telephone'] = $this->error['telephone'];
            } else {
                $data['error_telephone'] = '';
            }



        }

        $data['action'] = $this->url->link('product/events_main', '', true);


//		$this->load->model('localisation/country');
//		$data['countries']=$this->model_localisation_country->getCountries();





        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {


		$this->session->data['guest']['firstname'] = $this->request->post['firstname'];
		$this->session->data['guest']['lastname']  = $this->request->post['lastname'];
		$this->session->data['guest']['email']     = $this->request->post['email'];
		$this->session->data['guest']['telephone'] = $this->request->post['telephone'];
		//$this->session->data['guest']['location']  = $this->request->post['location'];
		$this->session->data['guest']['category']  = $this->request->post['category'];


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

            if (isset($this->error['email'])) {
                $data['error_email'] = $this->error['email'];
            } else {
                $data['error_email'] = '';
            }

            if (isset($this->error['telephone'])) {
                $data['error_telephone'] = $this->error['telephone'];
            } else {
                $data['error_telephone'] = '';
            }

            if(isset($this->request->get['ajaxRequest'])) {
                $this->redirect($this->url->link('product/event'), ['status' => 'success']);
            }

            return $this->response->redirect($this->url->link('product/event', 'category_id=' . $this->request->post['category'], true));

        }elseif(($this->request->server['REQUEST_METHOD'] == 'POST') && !$this->validate()){

            if(isset($this->request->get['ajaxRequest'])){
                header('Content-Type: application/json');
                echo json_encode(['status'=>$this->error]);exit();
            }
        }

        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['action'] = $this->url->link('product/events_main', '', true);


        $this->response->setOutput($this->load->view('product/events_main', $data));
    }



           function validate() {

                if (isset($this->request->post['firstname']) && ((utf8_strlen(trim($this->request->post['firstname'])) < 1) || (utf8_strlen(trim($this->request->post['firstname'])) > 32))) {
                    $this->error['firstname'] = $this->language->get('error_firstname');
                }

                if (isset($this->request->post['lastname']) && ((utf8_strlen(trim($this->request->post['lastname'])) < 1) || (utf8_strlen(trim($this->request->post['lastname'])) > 32))) {
                    $this->error['lastname'] = $this->language->get('error_lastname');
                }

                if (isset($this->request->post['email']) && ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL))) {
                    $this->error['email'] = $this->language->get('error_email');
                }

                if (isset($this->request->post['email']) && ((utf8_strlen($this->request->post['telephone']) < 3) || (utf8_strlen($this->request->post['telephone']) > 32))) {
                    $this->error['telephone'] = $this->language->get('error_telephone');
                }


                $this->load->model('account/custom_field');
                $customer_group_id=0;
                $custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

//                foreach ($custom_fields as $custom_field) {
//                    if ($custom_field['required'] && empty($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']])) {
//                        $this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
//                    } elseif (($custom_field['type'] == 'text') && !empty($custom_field['validation']) && !filter_var($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']], FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => $custom_field['validation'])))) {
//                        $this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
//                    }
//                }


         $data['action'] = $this->url->link('product/events_main', '', true);

        return !$this->error;
    }



    public function getEventDateOptionIdAndTimeId()
    {

        $eventDateOptionId = 0;
        $eventTimeOptionId = 0;
        $total_option_value = [];


        $this->load->model('catalog/product');
        foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {

            if (str_replace(' ', '', strtolower($option['name'])) == 'eventdate') {
                $eventDateOptionId = $option['product_option_id'];
            }
            if (str_replace(' ', '', strtolower($option['name'])) == 'eventtime') {
                $eventTimeOptionId = $option['product_option_id'];

                foreach ($option['product_option_value'] as $option_value) {
                    $total_option_value[$option_value['product_option_value_id']] = $option_value['name'];
                }
            }
        }


        return [$eventDateOptionId, $eventTimeOptionId, $total_option_value];

    }


    public function getEventReservation($product_id)
    {
		$cart_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "cart  WHERE product_id='".$product_id."' ");
		list($eventDateOptionId,$eventTimeOptionId,$option_value)=$this->getEventDateOptionIdAndTimeId();

        $existReservation = [];
        foreach ($cart_query->rows as $cart) {

            $options = json_decode($cart['option'], true);
            $date = '';
            $time = '';
            foreach ($options as $optionId => $option) {
                if ($eventDateOptionId == $optionId) {
                    $date = $option;
                }
                if ($eventTimeOptionId == $optionId) {
                    $time = $option;
                }

            }
            $existReservation[$date]['reserved'] = false;
            $existReservation[$date]['times'][] = $time;
//			if(isset($option->eventDate) && isset($option->eventPeriod)){
//
//				$existReservation[$option->eventDate]['period'][]=$option->eventPeriod;
//			}


        }
        foreach ($existReservation as $date => &$times) {
            if (count($times['times']) >= count($option_value)) {
                $times['reserved'] = true;
            }
        }

//print_r($existReservation);
        return [$existReservation, $option_value];

    }

    public function getProductPeriodList($product_id)
    {

        $product_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option_value  WHERE product_id='" . $product_id . "' ");

        $productPeriodList = [];
        foreach ($product_option_value_query->rows as $option) {

            $productPeriodList[$option['product_option_id']] = $option['product_option_value_id'];

        }


    }

    public function index()
    {


        $data['leftMenu'] = $this->getLeftMenu();


        //die(var_dump($this->request->get['product_id']));
        if (!isset($this->request->get['product_id'])) {

            $category_id = (isset($this->request->get['category_id'])) ? $this->request->get['category_id'] : 0;
$product_id=0;



            function findFirstProductId($categoriesOrProducts, $category_id, $correctCategory = false)
            {


                $product_id = 0;
                foreach ($categoriesOrProducts as $oneCategoryOrProduct) {


                    if (isset($oneCategoryOrProduct['product_id']) && $oneCategoryOrProduct['product_id'] > 0) {

                        if ($correctCategory) {
                            return $product_id;
                        }
                    }

                    if (isset($oneCategoryOrProduct['children']) && count($oneCategoryOrProduct['children'])) {
                        $product_id = findProductId($oneCategoryOrProduct['children'], $category_id, $correctCategory);

                    }
                }
                return $product_id;
            }

            $this->load->model('catalog/product');





                $filter_data = array(
                    'filter_category_id' => $category_id,
                );


                $results = $this->model_catalog_product->getProducts($filter_data);
                if(count($results)){
                    foreach($results as $product){$product_id= $product['product_id'];}
                }
            else{
                $product_id = findFirstProductId($data['leftMenu'], 0,  false);
            }





            $this->request->get['product_id'] = $product_id;
        }




        list($existReservation, $total_option_value) = $this->getEventReservation((int)$this->request->get['product_id']);


//foreach($existReservation as $date=>$times){
//	$times['times'];
//	$times['reserved'];
//}

        $this->load->language('product/product');

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),

            'href' => $this->url->link('common/home')
        );

        $this->load->model('catalog/category');

        if (isset($this->request->get['path'])) {
            $path = '';

            $parts = explode('_', (string)$this->request->get['path']);

            $category_id = (int)array_pop($parts);

            foreach ($parts as $path_id) {
                if (!$path) {
                    $path = $path_id;
                } else {
                    $path .= '_' . $path_id;
                }

                $category_info = $this->model_catalog_category->getCategory($path_id);

                if ($category_info) {
                    $data['breadcrumbs'][] = array(
                        'text' => $category_info['name'],
                        'href' => $this->url->link('product/category', 'path=' . $path)
                    );
                }
            }
//            if (isset($this->session->data['success'])) {
//                $data['success'] = $this->session->data['success'];
//
//                unset($this->session->data['success']);
//            } else {
//                $data['success'] = '';
//            }




            // Set the last category breadcrumb
            $category_info = $this->model_catalog_category->getCategory($category_id);

            if ($category_info) {
                $url = '';

                if (isset($this->request->get['sort'])) {
                    $url .= '&sort=' . $this->request->get['sort'];
                }

                if (isset($this->request->get['order'])) {
                    $url .= '&order=' . $this->request->get['order'];
                }

                if (isset($this->request->get['page'])) {
                    $url .= '&page=' . $this->request->get['page'];
                }

                if (isset($this->request->get['limit'])) {
                    $url .= '&limit=' . $this->request->get['limit'];
                }

                $data['breadcrumbs'][] = array(
                    'text' => $category_info['name'],
                    'href' => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url)
                );
            }
        }

        $this->load->model('catalog/manufacturer');

        if (isset($this->request->get['manufacturer_id'])) {

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_brand'),
                'href' => $this->url->link('product/manufacturer')
            );

            $url = '';

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $manufacturer_info = $this->model_catalog_manufacturer->getManufacturer($this->request->get['manufacturer_id']);

            if ($manufacturer_info) {
                $data['breadcrumbs'][] = array(
                    'text' => $manufacturer_info['name'],
                    'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $this->request->get['manufacturer_id'] . $url)
                );
            }
        }

        if (isset($this->request->get['search']) || isset($this->request->get['tag'])) {
            $url = '';

            if (isset($this->request->get['search'])) {
                $url .= '&search=' . $this->request->get['search'];
            }

            if (isset($this->request->get['tag'])) {
                $url .= '&tag=' . $this->request->get['tag'];
            }

            if (isset($this->request->get['description'])) {
                $url .= '&description=' . $this->request->get['description'];
            }

            if (isset($this->request->get['category_id'])) {
                $url .= '&category_id=' . $this->request->get['category_id'];
            }

            if (isset($this->request->get['sub_category'])) {
                $url .= '&sub_category=' . $this->request->get['sub_category'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_search'),
                'href' => $this->url->link('product/search', $url)
            );
        }

        if (isset($this->request->get['product_id'])) {
            $product_id = (int)$this->request->get['product_id'];
        } else {
            $product_id = 0;
        }


//        if (isset($this->session->data['success'])) {
//            $data['success'] = $this->session->data['success'];
//
//            unset($this->session->data['success']);
//        } else {
//            $data['success'] = '';
//        }

        $this->load->model('catalog/product');

        $product_info = $this->model_catalog_product->getProduct($product_id);

        if ($product_info) {
            $url = '';

            if (isset($this->request->get['path'])) {
                $url .= '&path=' . $this->request->get['path'];
            }

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['manufacturer_id'])) {
                $url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
            }

            if (isset($this->request->get['search'])) {
                $url .= '&search=' . $this->request->get['search'];
            }

            if (isset($this->request->get['tag'])) {
                $url .= '&tag=' . $this->request->get['tag'];
            }

            if (isset($this->request->get['description'])) {
                $url .= '&description=' . $this->request->get['description'];
            }

            if (isset($this->request->get['category_id'])) {
                $url .= '&category_id=' . $this->request->get['category_id'];
            }

            if (isset($this->request->get['sub_category'])) {
                $url .= '&sub_category=' . $this->request->get['sub_category'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $product_info['name'],

                'href' => $this->url->link('product/product', $url . '&product_id=' . $this->request->get['product_id'])
            );

            $this->document->setTitle($product_info['meta_title']);
            $this->document->setDescription($product_info['meta_description']);
            $this->document->setKeywords($product_info['meta_keyword']);
            $this->document->addLink($this->url->link('product/product', 'product_id=' . $this->request->get['product_id']), 'canonical');
            $this->document->addScript('catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js');
            $this->document->addStyle('catalog/view/javascript/jquery/magnific/magnific-popup.css');
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment.js');
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
            $this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

            $data['heading_title'] = $product_info['name'];

            $data['text_select'] = $this->language->get('text_select');
            $data['text_manufacturer'] = $this->language->get('text_manufacturer');
            $data['text_model'] = $this->language->get('text_model');
            $data['text_reward'] = $this->language->get('text_reward');
            $data['text_points'] = $this->language->get('text_points');
            $data['text_stock'] = $this->language->get('text_stock');
            $data['text_discount'] = $this->language->get('text_discount');
            $data['text_tax'] = $this->language->get('text_tax');
            $data['text_option'] = $this->language->get('text_option');
            $data['text_minimum'] = sprintf($this->language->get('text_minimum'), $product_info['minimum']);
            $data['text_write'] = $this->language->get('text_write');
            $data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
            $data['text_note'] = $this->language->get('text_note');
            $data['text_tags'] = $this->language->get('text_tags');
            $data['text_related'] = $this->language->get('text_related');
            $data['text_payment_recurring'] = $this->language->get('text_payment_recurring');
            $data['text_loading'] = $this->language->get('text_loading');

            //added by assem

            $data['text_event_booking'] = $this->language->get('text_event_booking');
            $data['text_booked'] = $this->language->get('text_booked');
            $data['text_available'] = $this->language->get('text_available');
            $data['text_pick_event_time'] = $this->language->get('text_pick_event_time');
            $data['text_button_proceed'] = $this->language->get('text_button_proceed');






            //


            $data['entry_qty'] = $this->language->get('entry_qty');
            $data['entry_name'] = $this->language->get('entry_name');
            $data['entry_review'] = $this->language->get('entry_review');
            $data['entry_rating'] = $this->language->get('entry_rating');
            $data['entry_good'] = $this->language->get('entry_good');
            $data['entry_bad'] = $this->language->get('entry_bad');

            $data['button_cart'] = $this->language->get('button_cart');
            $data['button_wishlist'] = $this->language->get('button_wishlist');
            $data['button_compare'] = $this->language->get('button_compare');
            $data['button_upload'] = $this->language->get('button_upload');
            $data['button_continue'] = $this->language->get('button_continue');

            $data['text_price'] = $this->language->get('text_price');
            $data['text_total'] = $this->language->get('text_total');
            $data['text_price'] = $this->language->get('text_price');

            $data['text_date'] = $this->language->get('text_date');
            $data['text_time'] = $this->language->get('text_time');
            $data['text_services'] = $this->language->get('text_services');
            $data['text_timing'] = $this->language->get('text_timing');
            $data['text_selected_items'] = $this->language->get('text_selected_items');




            $this->load->model('catalog/review');

            $data['tab_description'] = $this->language->get('tab_description');
            $data['tab_attribute'] = $this->language->get('tab_attribute');

            $data['tab_review'] = sprintf($this->language->get('tab_review'), $product_info['reviews']);

            $data['product_id'] = (int)$this->request->get['product_id'];
            $data['manufacturer'] = $product_info['manufacturer'];
            $data['manufacturers'] = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']);
            $data['model'] = $product_info['model'];
            $data['reward'] = $product_info['reward'];
            $data['points'] = $product_info['points'];
            $data['description'] = html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8');

            if ($product_info['quantity'] <= 0) {
                $data['stock'] = $product_info['stock_status'];
            } elseif ($this->config->get('config_stock_display')) {
                $data['stock'] = $product_info['quantity'];
            } else {
                $data['stock'] = $this->language->get('text_instock');
            }

            $this->load->model('tool/image');

            if ($product_info['image']) {
                $data['popup'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height'));
            } else {
                $data['popup'] = '';
            }

            if ($product_info['image']) {
                $data['thumb'] = $this->model_tool_image->resize($product_info['image'], $this->config->get($this->config->get('config_theme') . '_image_thumb_width'), $this->config->get($this->config->get('config_theme') . '_image_thumb_height'));
            } else {
                $data['thumb'] = '';
            }

            $data['images'] = array();

            $results = $this->model_catalog_product->getProductImages($this->request->get['product_id']);

            foreach ($results as $result) {
                $data['images'][] = array(
                    'popup' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_popup_width'), $this->config->get($this->config->get('config_theme') . '_image_popup_height')),
                    'thumb' => $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_additional_width'), $this->config->get($this->config->get('config_theme') . '_image_additional_height'))
                );
            }

            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $data['price'] = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $data['price'] = false;
            }

            if ((float)$product_info['special']) {
                $data['special'] = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
            } else {
                $data['special'] = false;
            }

            if ($this->config->get('config_tax')) {
                $data['tax'] = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
            } else {
                $data['tax'] = false;
            }

            $discounts = $this->model_catalog_product->getProductDiscounts($this->request->get['product_id']);

            $data['discounts'] = array();

            foreach ($discounts as $discount) {
                $data['discounts'][] = array(
                    'quantity' => $discount['quantity'],
                    'price' => $this->currency->format($this->tax->calculate($discount['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency'])
                );
            }

            $data['options'] = array();


            foreach ($this->model_catalog_product->getProductOptions($this->request->get['product_id']) as $option) {
                $product_option_value_data = array();

                foreach ($option['product_option_value'] as $option_value) {
                    if (!$option_value['subtract'] || ($option_value['quantity'] > 0)) {
                        if ((($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) && (float)$option_value['price']) {
                            $price = $this->currency->format($this->tax->calculate($option_value['price'], $product_info['tax_class_id'], $this->config->get('config_tax') ? 'P' : false), $this->session->data['currency']);
                        } else {
                            $price = false;
                        }

                        $product_option_value_data[] = array(
                            'product_option_value_id' => $option_value['product_option_value_id'],
                            'option_value_id' => $option_value['option_value_id'],
                            'name' => $option_value['name'],
                            'image' => $this->model_tool_image->resize($option_value['image'], 50, 50),
                            'price' => $price,
                            'price_prefix' => $option_value['price_prefix']
                        );
                    }
                }
//die(var_dump($option));
                //$option['product_option_value']=$product_option_value_data;
                $data['options'][] = $option;
            }


            if ($product_info['minimum']) {
                $data['minimum'] = $product_info['minimum'];
            } else {
                $data['minimum'] = 1;
            }

            $data['review_status'] = $this->config->get('config_review_status');

            if ($this->config->get('config_review_guest') || $this->customer->isLogged()) {
                $data['review_guest'] = true;
            } else {
                $data['review_guest'] = false;
            }

            if ($this->customer->isLogged()) {
                $data['customer_name'] = $this->customer->getFirstName() . '&nbsp;' . $this->customer->getLastName();
            } else {
                $data['customer_name'] = '';
            }

            $data['reviews'] = sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']);
            $data['rating'] = (int)$product_info['rating'];

            // Captcha
            if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
                $data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'));
            } else {
                $data['captcha'] = '';
            }

            $data['share'] = $this->url->link('product/product', 'product_id=' . (int)$this->request->get['product_id']);

            $data['attribute_groups'] = $this->model_catalog_product->getProductAttributes($this->request->get['product_id']);

            $data['products'] = array();

            $results = $this->model_catalog_product->getProductRelated($this->request->get['product_id']);

            foreach ($results as $result) {
                if ($result['image']) {
                    $image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
                } else {
                    $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_related_width'), $this->config->get($this->config->get('config_theme') . '_image_related_height'));
                }

                if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                    $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                } else {
                    $price = false;
                }

                if ((float)$result['special']) {
                    $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                } else {
                    $special = false;
                }

                if ($this->config->get('config_tax')) {
                    $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
                } else {
                    $tax = false;
                }

                if ($this->config->get('config_review_status')) {
                    $rating = (int)$result['rating'];
                } else {
                    $rating = false;
                }

                $data['products'][] = array(
                    'product_id' => $result['product_id'],
                    'thumb' => $image,
                    'name' => $result['name'],
                    'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                    'price' => $price,
                    'special' => $special,
                    'tax' => $tax,
                    'minimum' => $result['minimum'] > 0 ? $result['minimum'] : 1,
                    'rating' => $rating,
                    'href' => $this->url->link('product/product', 'product_id=' . $result['product_id'])
                );
            }

            $data['tags'] = array();

            if ($product_info['tag']) {
                $tags = explode(',', $product_info['tag']);

                foreach ($tags as $tag) {
                    $data['tags'][] = array(
                        'tag' => trim($tag),
                        'href' => $this->url->link('product/search', 'tag=' . trim($tag))
                    );
                }
            }

            $data['recurrings'] = $this->model_catalog_product->getProfiles($this->request->get['product_id']);

            $this->model_catalog_product->updateViewed($this->request->get['product_id']);

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');


			$this->load->model('catalog/custom_option');
			$data=$this->model_catalog_custom_option->addOptionsValues($data);


            $data['existReservation'] = $existReservation;
            $data['eventTimesList'] = $total_option_value;

            $data['product_id']=$this->request->get['product_id'];
            $data['eventSummaryLink']=$this->url->link('product/event_summary_final', '');


            $data['optionsWithName']=$this->model_catalog_custom_option->getOptions($this->request->get['product_id']);
            $finalOptions=[];

            foreach($data['optionsWithName'] as $option)
            {
                if(isset($option['values'])){
                foreach($option['values']['en'] as $optionItem){

                    $finalOptions[$option['alias']][]=['id'=>$optionItem['value'],'name'=>$optionItem['name']];
                }
                }
            $data['all_options']=$finalOptions;
            }
			//return $this->response->setOutput($this->view('product/event', $data,['all_options']));

            $data['eventBooking']=$this->url->link('product/event&directtoevent&product_id=', '');
            if(isset($this->request->get['directtoevent']))
            {
                return $this->response->setOutput($this->view('product/event', $data,['all_options']));

            }
            return $this->response->setOutput($this->view('product/product', $data,['all_options']));

        } else {
            $url = '';

            $data['existReservation'] = $existReservation;
            $data['eventTimesList'] = $total_option_value;


            $data['product_id']=$this->request->get['product_id'];
            $data['eventSummaryLink']=$this->url->link('product/event_summary', '');

            $data['product_id'] = $this->request->get['product_id'];
            return $this->response->setOutput($this->view('product/event', $data, ['options']));

        }


        if (isset($this->request->get['path'])) {
                $url .= '&path=' . $this->request->get['path'];
            }

            if (isset($this->request->get['filter'])) {
                $url .= '&filter=' . $this->request->get['filter'];
            }

            if (isset($this->request->get['manufacturer_id'])) {
                $url .= '&manufacturer_id=' . $this->request->get['manufacturer_id'];
            }

            if (isset($this->request->get['search'])) {
                $url .= '&search=' . $this->request->get['search'];
            }

            if (isset($this->request->get['tag'])) {
                $url .= '&tag=' . $this->request->get['tag'];
            }

            if (isset($this->request->get['description'])) {
                $url .= '&description=' . $this->request->get['description'];
            }

            if (isset($this->request->get['category_id'])) {
                $url .= '&category_id=' . $this->request->get['category_id'];
            }

            if (isset($this->request->get['sub_category'])) {
                $url .= '&sub_category=' . $this->request->get['sub_category'];
            }

            if (isset($this->request->get['sort'])) {
                $url .= '&sort=' . $this->request->get['sort'];
            }

            if (isset($this->request->get['order'])) {
                $url .= '&order=' . $this->request->get['order'];
            }

            if (isset($this->request->get['page'])) {
                $url .= '&page=' . $this->request->get['page'];
            }

            if (isset($this->request->get['limit'])) {
                $url .= '&limit=' . $this->request->get['limit'];
            }

            $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_error'),
                'image' => $category_info['image'],

                'href' => $this->url->link('product/product', $url . '&product_id=' . $product_id)
            );

            $this->document->setTitle($this->language->get('text_error'));

            $data['heading_title'] = $this->language->get('text_error');

            $data['text_error'] = $this->language->get('text_error');

            $data['button_continue'] = $this->language->get('button_continue');

            $data['continue'] = $this->url->link('common/home');

            $this->response->addHeader($this->request->server['SERVER_PROTOCOL'] . ' 404 Not Found');

            $data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            $this->response->setOutput($this->load->view('error/not_found', $data));
        }


    public function review()
    {
        $this->load->language('product/product');

        $this->load->model('catalog/review');

        $data['text_no_reviews'] = $this->language->get('text_no_reviews');

        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }

        $data['reviews'] = array();

        $review_total = $this->model_catalog_review->getTotalReviewsByProductId($this->request->get['product_id']);

        $results = $this->model_catalog_review->getReviewsByProductId($this->request->get['product_id'], ($page - 1) * 5, 5);

        foreach ($results as $result) {
            $data['reviews'][] = array(
                'author' => $result['author'],
                'text' => nl2br($result['text']),
                'rating' => (int)$result['rating'],
                'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
            );
        }

        $pagination = new Pagination();
        $pagination->total = $review_total;
        $pagination->page = $page;
        $pagination->limit = 5;
        $pagination->url = $this->url->link('product/product/review', 'product_id=' . $this->request->get['product_id'] . '&page={page}');

        $data['pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($review_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($review_total - 5)) ? $review_total : ((($page - 1) * 5) + 5), $review_total, ceil($review_total / 5));

        $this->response->setOutput($this->load->view('product/review', $data));
    }

    public function write()
    {
        $this->load->language('product/product');

        $json = array();

        if ($this->request->server['REQUEST_METHOD'] == 'POST') {
            if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
                $json['error'] = $this->language->get('error_name');
            }

            if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
                $json['error'] = $this->language->get('error_text');
            }

            if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
                $json['error'] = $this->language->get('error_rating');
            }

            // Captcha
            if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
                $captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

                if ($captcha) {
                    $json['error'] = $captcha;
                }
            }

            if (!isset($json['error'])) {
                $this->load->model('catalog/review');

                $this->model_catalog_review->addReview($this->request->get['product_id'], $this->request->post);



              //  $json['success'] = $this->language->get('text_success');



            }
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function getRecurringDescription()
    {
        $this->load->language('product/product');
        $this->load->model('catalog/product');

        if (isset($this->request->post['product_id'])) {
            $product_id = $this->request->post['product_id'];
        } else {
            $product_id = 0;
        }

        if (isset($this->request->post['recurring_id'])) {
            $recurring_id = $this->request->post['recurring_id'];
        } else {
            $recurring_id = 0;
        }

        if (isset($this->request->post['quantity'])) {
            $quantity = $this->request->post['quantity'];
        } else {
            $quantity = 1;
        }

        $product_info = $this->model_catalog_product->getProduct($product_id);
        $recurring_info = $this->model_catalog_product->getProfile($product_id, $recurring_id);

        $json = array();

        if ($product_info && $recurring_info) {
            if (!$json) {
                $frequencies = array(
                    'day' => $this->language->get('text_day'),
                    'week' => $this->language->get('text_week'),
                    'semi_month' => $this->language->get('text_semi_month'),
                    'month' => $this->language->get('text_month'),
                    'year' => $this->language->get('text_year'),
                );

                if ($recurring_info['trial_status'] == 1) {
                    $price = $this->currency->format($this->tax->calculate($recurring_info['trial_price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    $trial_text = sprintf($this->language->get('text_trial_description'), $price, $recurring_info['trial_cycle'], $frequencies[$recurring_info['trial_frequency']], $recurring_info['trial_duration']) . ' ';
                } else {
                    $trial_text = '';
                }

                $price = $this->currency->format($this->tax->calculate($recurring_info['price'] * $quantity, $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);

                if ($recurring_info['duration']) {
                    $text = $trial_text . sprintf($this->language->get('text_payment_description'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
                } else {
                    $text = $trial_text . sprintf($this->language->get('text_payment_cancel'), $price, $recurring_info['cycle'], $frequencies[$recurring_info['frequency']], $recurring_info['duration']);
                }

               // $json['success'] = $text;



            }
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function getLeftMenu()
    {

        $this->load->model('catalog/category');
        $mainCategoriesIds = $this->model_catalog_category->getMainMenuCategory();

        $leftCategories = $this->model_catalog_category->getCategoryChildrenWithProducts([$mainCategoriesIds[0]]);
        $rightCategories = $this->model_catalog_category->getCategoryChildrenWithProducts([$mainCategoriesIds[1]]);

        return array_merge($leftCategories, $rightCategories);


    }

    public function getEventsCategory()
    {

        $this->load->model('catalog/category');
        $mainCategoriesIds = $this->model_catalog_category->getMainMenuCategory();

        $leftCategories = $this->model_catalog_category->getCategoryChildren([$mainCategoriesIds[0]]);
        $rightCategories = $this->model_catalog_category->getCategoryChildren([$mainCategoriesIds[1]]);

        return array_merge($leftCategories, $rightCategories);


    }


    /*

    public function addEventToSession(){
        $product_id=$this->request->post['product_id'];
        $this->load->model('catalog/custom_option');
        $this->request->post=$this->model_catalog_custom_option->fixRequest($this->request->post);


        $this->load->model('catalog/product');
        $product_info = $this->model_catalog_product->getProduct($product_id);



        $price=(isset($product_info['special']))? $product_info['special']:$product_info['price'];
        [
            'eventdate'=>$this->request->get['eventdate'],
            'eventdate'=>$this->request->get['eventdate'],
            'product_id'=>$product_id,
            'price'=>$price,
        ]
        //{option: Object, quantity: "1", product_id: "51", eventtime: "131", eventdate: "2017-05-17"}


//echo json_encode($this->model_catalog_custom_option->getOptions(51));die();
        echo json_encode($this->request->post);die();
        $this->session->data['events']=['event 1 ','event 2 ','event 3',['sub array 1','sub array2 ']];
    }
    public function getEventsFromSession(){
die(var_dump($this->session->data['events']));
    }

    public function deleteEventFromSession(){

    }
    */

}

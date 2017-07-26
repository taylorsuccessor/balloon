<?php
require_once(DIR_KNET.'e24PaymentPipe.inc.php');
class  ControllerApiPayKnet extends Controller {
    public function index() {
        $this->load->language('extension/payment/knet');

        $this->load->model('checkout/order');
       if(isset($this->request->post['order_id']) && !empty($this->request->post['order_id']))
       {
           $order_id=$this->request->post['order_id'];
       }
        $order_info =$this->model_checkout_order->getOrder($order_id);

        $trackID = date('YmdHis');

        $host = "https://" . $_SERVER['HTTP_HOST'];
        $successUrl = $host . '/success.php';
        $errorUrl = $host . '/error.php';
        $payment = new e24PaymentPipe;
        $payment->setErrorUrl($errorUrl);
        $payment->setResponseURL($successUrl);
        $payment->setLanguage($this->language->get('lang_code'));
        $payment->setCurrency($this->language->get('currency_code')); //USD
        $payment->setResourcePath(DIR_KNET);
        $payment->setAlias($this->config->get('knet_alias'));
        $payment->setAction("1"); // 1 = Purchase
        $payment->setAmt($order_info['total']);
        $payment->setTrackId($trackID);
        $payment->performPaymentInitialization();


        if (strlen($payment->getErrorMsg()) > 0)
        {
            $this->session->data['error'] = $payment->getErrorMsg();
            $this->response->redirect($this->url->link('checkout/cart'));
        }
        else
        {
            $this->session->data['order_total'] = $order_info['total'];
            $message = 'PaymentID: ' . $payment->paymentId . "\n";
            $message .= 'TrackID: ' . $trackID . "\n";
            $message .= 'Amount: ' . $order_info['total'] . "\n";
            $message .= 'Time: ' . date('d-m-Y H:i:s') . "\n";
            //Save details in DB before redirecting user to KNET. Else redirect to cart.

            if($order_info)
            {

                $this->load->model('extension/payment/knet');
                $voidOrderStatus = 16;
                $this->model_extension_payment_knet->change_order_status($order_info, $voidOrderStatus, $message);
                if(isset($this->request->get['ajaxRequest']))
                {
                     $payment_id = $payment->paymentPage . '?PaymentID=' . $payment->paymentId;
                      $data['link']=$payment_id;
                    echo json_encode($data);die();
                }
                //header('Location: ' . $payment_id = $payment->paymentPage . '?PaymentID=' . $payment->paymentId);
            }
            else
            {
                $this->response->redirect($this->url->link('checkout/cart'));
            }
        }

    }






}
?>
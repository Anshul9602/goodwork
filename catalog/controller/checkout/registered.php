<?php
class ControllerCheckoutRegistered extends Controller {
	public function index() {
		$this->load->language('checkout/checkout');

		$data['text_select'] = $this->language->get('text_select');
		$data['text_none'] = $this->language->get('text_none');
		$data['text_your_details'] = $this->language->get('text_your_details');
		$data['text_your_account'] = $this->language->get('text_your_account');
		$data['text_your_address'] = $this->language->get('text_your_address');
		$data['text_loading'] = $this->language->get('text_loading');

		$data['entry_firstname'] = $this->language->get('entry_firstname');
		$data['entry_lastname'] = $this->language->get('entry_lastname');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_telephone'] = $this->language->get('entry_telephone');
		$data['entry_fax'] = $this->language->get('entry_fax');
		$data['entry_company'] = $this->language->get('entry_company');
		$data['entry_customer_group'] = $this->language->get('entry_customer_group');
		$data['entry_address_1'] = $this->language->get('entry_address_1');
		$data['entry_address_2'] = $this->language->get('entry_address_2');
		$data['entry_postcode'] = $this->language->get('entry_postcode');
		$data['entry_city'] = $this->language->get('entry_city');
		$data['entry_country'] = $this->language->get('entry_country');
		$data['entry_zone'] = $this->language->get('entry_zone');
		$data['entry_shipping'] = $this->language->get('entry_shipping');

		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_upload'] = $this->language->get('button_upload');

		$data['customer_groups'] = array();

		if (is_array($this->config->get('config_customer_group_display'))) {
			$this->load->model('account/customer_group');

			$customer_groups = $this->model_account_customer_group->getCustomerGroups();

			foreach ($customer_groups as $customer_group) {
				if (in_array($customer_group['customer_group_id'], $this->config->get('config_customer_group_display'))) {
					$data['customer_groups'][] = $customer_group;
				}
			}
		}

$this->load->model('account/customer');
$this->load->model('account/address');

			$address_info = $this->model_account_address->getAddress($this->customer->getAddressId());
			$customer_info = $this->model_account_customer->getCustomer($this->customer->getId());
	
		    $data['firstname'] = $address_info['firstname'];
    		$data['lastname'] = $address_info['lastname'];
	    	$data['email'] = $customer_info['email'];
	    	$data['telephone'] = $customer_info['telephone'];
			$data['address_1'] = $address_info['address_1'];
			$data['address_2'] = $address_info['address_2'];
			$data['postcode'] = $address_info['postcode'];
	
			$data['city'] = $address_info['city'];
			$data['country_id'] = "99"; //$address_info['country_id'];
			$data['zone_id'] = $address_info['zone_id'];
	
		$this->load->model('localisation/country');

		$data['countries'] = $this->model_localisation_country->getCountries();

	
			$data['default'] = $this->customer->getAddressId();
		

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/registered.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/checkout/registered.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/checkout/registered.tpl', $data));
		}
	}

}
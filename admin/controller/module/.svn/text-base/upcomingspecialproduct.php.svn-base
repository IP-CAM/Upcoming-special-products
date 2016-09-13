<?php
/*
 * @support
 * http://www.opensourcetechnologies.com/contactus.html
 * sales@opensourcetechnologies.com
* */
class ControllerModuleUpcomingSpecialProduct extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/upcomingspecialproduct');

		$this->document->setTitle($this->language->get('heading_title'));
		$this->load->model('setting/setting');
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('upcomingspecialproduct', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
									
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_limit'] = $this->language->get('entry_limit');
		$data['entry_image'] = $this->language->get('entry_image');
		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');
		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_days'] = $this->language->get('entry_days');
		$data['entry_prices'] = $this->language->get('entry_prices');
		$data['entry_percentage'] = $this->language->get('entry_percentage');
		$data['entry_text'] = $this->language->get('entry_text');
		$data['entry_date'] = $this->language->get('entry_date');
		$data['entry_category_specific'] = $this->language->get('entry_category_specific');
		$data['entry_module_publish'] = $this->language->get('entry_module_publish');
		$data['entry_module_end'] = $this->language->get('entry_module_end');
		
		$data['text_yes'] = $this->language->get('entry_yes');
		$data['text_no'] = $this->language->get('entry_no');
		

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}



		if (isset($this->error['upcomingspecialproduct_width'])) {
			$data['error_width'] = $this->error['upcomingspecialproduct_width'];
		} else {
			$data['error_width'] = '';
		}
		if (isset($this->error['upcomingspecialproduct_module_publish'])) {
			$data['error_module_publish'] = $this->error['upcomingspecialproduct_module_publish'];
		} else {
			$data['error_module_publish'] = '';
		}

		if (isset($this->error['upcomingspecialproduct_height'])) {
			$data['error_height'] = $this->error['upcomingspecialproduct_height'];
		} else {
			$data['error_height'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('module/upcomingspecialproduct', 'token=' . $this->session->data['token'], 'SSL')
		);
		

		
		$data['action'] = $this->url->link('module/upcomingspecialproduct', 'token=' . $this->session->data['token'], 'SSL');
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		
		
		if (isset($this->request->post['upcomingspecialproduct_show_days'])) {
			$data['upcomingspecialproduct_show_days'] = $this->request->post['upcomingspecialproduct_show_days'];
		} elseif ($this->config->get('upcomingspecialproduct_show_days')) {
			$data['upcomingspecialproduct_show_days'] = $this->config->get('upcomingspecialproduct_show_days');
		} else {
			$data['upcomingspecialproduct_show_days'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_show_prices'])) {
			$data['upcomingspecialproduct_show_prices'] = $this->request->post['upcomingspecialproduct_show_prices'];
		} elseif ($this->config->get('upcomingspecialproduct_show_prices')) {
			$data['upcomingspecialproduct_show_prices'] = $this->config->get('upcomingspecialproduct_show_prices');
		} else {
			$data['upcomingspecialproduct_show_prices'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_show_percentage'])) {
			$data['upcomingspecialproduct_show_percentage'] = $this->request->post['upcomingspecialproduct_show_percentage'];
		} elseif ($this->config->get('upcomingspecialproduct_show_percentage')) {
			$data['upcomingspecialproduct_show_percentage'] = $this->config->get('upcomingspecialproduct_show_percentage');
		} else {
			$data['upcomingspecialproduct_show_percentage'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_special_text'])) {
			$data['upcomingspecialproduct_special_text'] = $this->request->post['upcomingspecialproduct_special_text'];
		} elseif ($this->config->get('upcomingspecialproduct_special_text')) {
			$data['upcomingspecialproduct_special_text'] = $this->config->get('upcomingspecialproduct_special_text');
		} else {
			$data['upcomingspecialproduct_special_text'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_show_date'])) {
			$data['upcomingspecialproduct_show_date'] = $this->request->post['upcomingspecialproduct_show_date'];
		} elseif ($this->config->get('upcomingspecialproduct_show_date')) {
			$data['upcomingspecialproduct_show_date'] = $this->config->get('upcomingspecialproduct_show_date');
		} else {
			$data['upcomingspecialproduct_show_date'] = '';
		}
		
		if (isset($this->request->post['upcomingspecialproduct_limit'])) {
			$data['upcomingspecialproduct_limit'] = $this->request->post['upcomingspecialproduct_limit'];
		} elseif ($this->config->get('upcomingspecialproduct_limit')) {
			$data['upcomingspecialproduct_limit'] = $this->config->get('upcomingspecialproduct_limit');
		} else {
			$data['upcomingspecialproduct_limit'] = '5';
		}

		if (isset($this->request->post['upcomingspecialproduct_width'])) {
			$data['upcomingspecialproduct_width'] = $this->request->post['upcomingspecialproduct_width'];
		} elseif ($this->config->get('upcomingspecialproduct_width')) {
			$data['upcomingspecialproduct_width'] = $this->config->get('upcomingspecialproduct_width');
		} else {
			$data['upcomingspecialproduct_width'] = '200';
		}

		if (isset($this->request->post['upcomingspecialproduct_height'])) {
			$data['upcomingspecialproduct_height'] = $this->request->post['upcomingspecialproduct_height'];
		} elseif ($this->config->get('upcomingspecialproduct_height')) {
			$data['upcomingspecialproduct_height'] = $this->config->get('upcomingspecialproduct_height');
		} else {
			$data['upcomingspecialproduct_height'] = '200';
		}

		if (isset($this->request->post['upcomingspecialproduct_status'])) {
			$data['upcomingspecialproduct_status'] = $this->request->post['upcomingspecialproduct_status'];
		} elseif ($this->config->get('upcomingspecialproduct_status')) {
			$data['upcomingspecialproduct_status'] = $this->config->get('upcomingspecialproduct_status');
		} else {
			$data['upcomingspecialproduct_status'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_category_specific'])) {
			$data['upcomingspecialproduct_category_specific'] = $this->request->post['upcomingspecialproduct_category_specific'];
		} elseif ($this->config->get('upcomingspecialproduct_category_specific')) {
			$data['upcomingspecialproduct_category_specific'] = $this->config->get('upcomingspecialproduct_category_specific');
		} else {
			$data['upcomingspecialproduct_category_specific'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_module_publish'])) {
			$data['upcomingspecialproduct_module_publish'] = $this->request->post['upcomingspecialproduct_module_publish'];
		} elseif ($this->config->get('upcomingspecialproduct_module_publish')) {
			$data['upcomingspecialproduct_module_publish'] = $this->config->get('upcomingspecialproduct_module_publish');
		} else {
			$data['upcomingspecialproduct_module_publish'] = '';
		}
		if (isset($this->request->post['upcomingspecialproduct_module_end'])) {
			$data['upcomingspecialproduct_module_end'] = $this->request->post['upcomingspecialproduct_module_end'];
		} elseif ($this->config->get('upcomingspecialproduct_module_end')) {
			$data['upcomingspecialproduct_module_end'] = $this->config->get('upcomingspecialproduct_module_end');
		} else {
			$data['upcomingspecialproduct_module_end'] = '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/upcomingspecialproduct.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/upcomingspecialproduct')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		if (!$this->request->post['upcomingspecialproduct_module_publish']) {
			$this->error['upcomingspecialproduct_module_publish'] = $this->language->get('error_module_publish');
		}
		if (!$this->request->post['upcomingspecialproduct_width']) {
			$this->error['upcomingspecialproduct_width'] = $this->language->get('error_width');
		}

		if (!$this->request->post['upcomingspecialproduct_height']) {
			$this->error['upcomingspecialproduct_height'] = $this->language->get('error_height');
		}

		return !$this->error;
	}
}


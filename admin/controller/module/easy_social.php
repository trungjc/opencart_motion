<?php
class ControllerModuleEasySocial extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/easy_social');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('easy_social', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		$this->data['facebook_text'] = $this->language->get('facebook_text');
		$this->data['twitter_text'] = $this->language->get('twitter_text');		
		
		$this->data['entry_code'] = $this->language->get('entry_code');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
 		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
		}
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/easy_social', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/easy_social', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		if (isset($this->request->post['easy_facebook_id'])) {
			$this->data['easy_facebook_id'] = $this->request->post['easy_facebook_id'];
		} else {
			$this->data['easy_facebook_id'] = $this->config->get('easy_facebook_id');
		}	
		if (isset($this->request->post['easy_twitter_id'])) {
			$this->data['easy_twitter_id'] = $this->request->post['easy_twitter_id'];
		} else {
			$this->data['easy_twitter_id'] = $this->config->get('easy_twitter_id');
		}			
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['easy_social_module'])) {
			$this->data['modules'] = $this->request->post['easy_social_module'];
		} elseif ($this->config->get('easy_social_module')) { 
			$this->data['modules'] = $this->config->get('easy_social_module');
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/easy_social.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/easy_social')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		/*if (!$this->request->post['easy_facebook_id']) {
			$this->error['code'] = $this->language->get('error_code');
		}
		if (!$this->request->post['easy_twwiter_id']) {
			$this->error['code'] = $this->language->get('error_code');
		}	*/	
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
}
?>
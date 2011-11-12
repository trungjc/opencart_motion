<?php  
class ControllerModuleEasySocial extends Controller {
	protected function index() {
		$this->language->load('module/easy_social');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['facebookId'] = html_entity_decode($this->config->get('easy_facebook_id'));
		$this->data['twitterId'] = html_entity_decode($this->config->get('easy_twitter_id'));
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/easy_social.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/easy_social.tpl';
		} else {
			$this->template = 'default/template/module/easy_social.tpl';
		}
		
		$this->render();
	}
}
?>
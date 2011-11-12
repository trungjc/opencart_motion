<?php  
class ControllerModuleRss extends Controller {
	protected function index() {
		$this->language->load('module/rss');

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['code'] = html_entity_decode($this->config->get('rss_code'));
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/rss.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/rss.tpl';
		} else {
			$this->template = 'default/template/module/rss.tpl';
		}
		
		$this->render();
	}
}
?>
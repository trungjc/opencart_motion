<?php  
class ControllerModuleBrand extends Controller {
	protected function index() {
		$this->language->load('module/brand');
		$this->load->model('catalog/manufacturer');
		
		//Load manufacturers
		$this->data['brands'] = array();

        $data = array(
            'sort'  => "ORDER BY name",

            'order' => "ASC",

            'start' => 0,

            'limit' => 0
        );
		$results = $this->model_catalog_manufacturer->getManufacturers($data);
		foreach ($results as $result) {						
			$this->data['brands'][] = array(
				'brand_id' => $result['manufacturer_id'],
				'name'            => $result['name'],
				'sort_order'      => $result['sort_order'],
				'store_id'        => $result['store_id'],
				'selected'        => isset($this->request->post['selected']) && in_array($result['manufacturer_id'], $this->request->post['selected'])
			);
		}	
		
      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/brand.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/brand.tpl';
		} else {
			$this->template = 'default/template/module/brand.tpl';
		}
		
		$this->render();
	}
}
?>
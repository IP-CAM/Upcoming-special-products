<?php
/*
 * @support
 * http://www.opensourcetechnologies.com/contactus.html
 * sales@opensourcetechnologies.com
* */
class ControllerModuleUpcomingSpecialProduct extends Controller {
	public function index($setting) {
		$this->load->language('module/upcomingspecialproduct');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_tax'] = $this->language->get('text_tax');

		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		$data['upcoming_price'] =$this->language->get('upcoming_price');
		$data['upcoming_discount'] =$this->language->get('upcoming_discount');
		$data['start_days'] =$this->language->get('start_days');
		$data['start_from'] =$this->language->get('start_from');

		$this->load->model('catalog/upcomingspecialproduct');

		$this->load->model('tool/image');

		$data['products'] = array();
		$data['show_prices']=$this->config->get('upcomingspecialproduct_show_prices');
		$data['show_days']=$this->config->get('upcomingspecialproduct_show_days');
		$data['show_percentage']=$this->config->get('upcomingspecialproduct_show_percentage');
		$data['show_date']=$this->config->get('upcomingspecialproduct_show_date');
		$data['special_text']=$this->config->get('upcomingspecialproduct_special_text');
		$data['module_publish']=$this->config->get('upcomingspecialproduct_module_publish');
		$data['module_end']=$this->config->get('upcomingspecialproduct_module_end');
		$data['category_specific']=$this->config->get('upcomingspecialproduct_category_specific');
		$category_id='';
		if($data['category_specific'])
		{
			if (isset($this->request->get['_route_'])) { 
				$parts = explode('/', $this->request->get['_route_']);

				// remove any empty arrays from trailing
				if (utf8_strlen(end($parts)) == 0) {
					array_pop($parts);
				}
	
				foreach ($parts as $part) {
					$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape($part) . "'");

					if ($query->num_rows) {
						$url = explode('=', $query->row['query']);
						if ($url[0] == 'category_id') {
							if (!isset($this->request->get['path'])) {
								$this->request->get['path'] = $url[1];
							} else {
								$this->request->get['path'] .= '_' . $url[1];
								
							}
							$category_id=$this->request->get['path'];
						}
					}
				}
			}
			else if(isset($this->request->get['path'])) $category_id=$this->request->get['path'];
		}
		$filter_data = array(
			'sort'  => 'pd.name',
			'order' => 'ASC',
			'start' => 0,
			'limit' => $this->config->get('upcomingspecialproduct_limit'),
			'category_id'=>$category_id
		);
		//var_dump($filter_data);
		$setting=array();
		$setting['width']=$this->config->get('upcomingspecialproduct_width');
		$setting['height']=$this->config->get('upcomingspecialproduct_height');
		if(!$data['module_end']) $data['module_end']=date('Y-m-d');
		if(strtotime($data['module_publish'])<=strtotime(date('Y-m-d')) and strtotime($data['module_end'])>=strtotime(date('Y-m-d')))
		$results = $this->model_catalog_upcomingspecialproduct->getUpcomingSpecialProducts($filter_data);
		else $results='';
		//var_dump($results);

		if ($results) {
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = sprintf($data['upcoming_price'],$this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'))));
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = $result['rating'];
				} else {
					$rating = false;
				}
				$date_start=$result['date_start'];
				$date_end=$result['date_end'];
				$datediff = strtotime($result['date_start']) - strtotime(date('Y-m-d'));
				if($data['show_days'] and $datediff>0)
				$days=sprintf($data['start_days'],floor($datediff/(60*60*24)));
				else 
				$days='';
				
				if(!$data['show_date'])
				{
					$date_start='';
					$date_end='';
				}
				if($data['show_percentage'])
				{
					$percentage=sprintf($data['upcoming_discount'],round(($result['price']-$result['special'])*100/$result['price'],2),$price);
				}
				else $percentage='';
				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id']),
					'date_start'  => $date_start,
					'date_end'    => $date_end,
					'percentage'  => $percentage,
					'days'        => $days,	
					'start_from'  => sprintf($data['start_from'],date('d M',strtotime($date_start)),date('d M',strtotime($date_end))),
				);
			}

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/upcomingspecialproduct.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/module/upcomingspecialproduct.tpl', $data);
			} else {
				return $this->load->view('default/template/module/upcomingspecialproduct.tpl', $data);
			}
		}
	}
}

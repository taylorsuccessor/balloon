<?php
class ModelCatalogCustomOption extends Model {

	public static  $languages=[];
 public  $options=array();

	public function fixRequest($requestArray){

		$this->convertOptionArrayToOneName($requestArray);
		$this->convertOneNameToOptionArray($requestArray);


return $requestArray;
	}

	public function addOptionsValues($inputArray){

		$inputArray=array_merge($inputArray,$this->getAllOptionsValuesToArrayIndependent($inputArray['product_id']));

		return $inputArray;
	}


	public function setLanguages()
	{


			$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "language`  ");

			if ($query->rows) {
				foreach ($query->rows as $language) {
					self::$languages[$language['language_id']]=explode('-',$language['code'])[0];
				}
			}

	}
	public function getLanguages()
	{

		if (self::$languages == []) {
			$this->setLanguages();
		}

		return self::$languages;

	}

	public function getEnLanuguageId(){
		return array_search('en',$this->getLanguages());
	}



	public function setOptions($product_id){

		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "option_description`  inner join " . DB_PREFIX . "product_option
		 on (`" . DB_PREFIX . "option_description`.option_id = " . DB_PREFIX . "product_option.option_id)
		 where `" . DB_PREFIX . "option_description`.language_id='".$this->getEnLanuguageId()."' and  " . DB_PREFIX . "product_option.product_id='".$product_id."'");
		$productOptions=[];
		$allOptions=[];
		$tempOption=[];
		if ($query->rows) {
			foreach ($query->rows as $option) {
				$allOptions[$option['option_id']]=[
					'option_id'=>$option['option_id'],
					'product_option_id'=>$option['product_option_id'],
					'name'=>$option['name'],
					'alias'=>strtolower(preg_replace(['/[^a-zA-Z0-9]/'],'',$option['name'])),

				];
			}
		}



		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "option_value_description` inner join `" . DB_PREFIX . "product_option_value` on
		  `" . DB_PREFIX . "option_value_description`.option_value_id =  `" . DB_PREFIX . "product_option_value`.option_value_id where `" . DB_PREFIX . "product_option_value`.product_id='".$product_id."'
		 ");
		$array_product_option_id=[];

		if ($query->rows) {

			foreach ($query->rows as $option_value) {
				$array_product_option_id[$option_value['option_id']]=$option_value['product_option_id'];
				$productOptions[$option_value['product_option_id']]['option_id']=$option_value['option_id'];
				$productOptions[$option_value['product_option_id']]['values'][self::$languages[$option_value['language_id']]][]=[
					'value'=>$option_value['product_option_value_id'],
					'name'=>$option_value['name'],
				];

			}
		}


		foreach($productOptions as &$oneProductOptions){

			$oneProductOptions['alias']=$allOptions[$oneProductOptions['option_id']]['alias'];
			$oneProductOptions['name']=$allOptions[$oneProductOptions['option_id']]['name'];
		}

		foreach($allOptions as $option_id=>$generalOption){
if(!isset($array_product_option_id[$option_id]) || !isset($productOptions[$array_product_option_id[$option_id]])){
	$productOptions[$generalOption['product_option_id']]=[
		'name'=>$generalOption['name'],
		'alias'=>$generalOption['alias'],
	];

}
		}
		$this->options= $productOptions;

	}



	public function getOptions($product_id){
		if(count($this->options) ==0 ){
			$this->setOptions($product_id);
		}

		return $this->options;

	}

	public function convertOptionArrayToOneName(&$requestArray){
		$originOptions=$this->getOptions($requestArray['product_id']);
		if(isset($requestArray['option']) && is_array($requestArray['option'])){

			foreach($requestArray['option'] as $option_id=>$option_value){
				if(isset($originOptions[$option_id])){
					$requestArray[$originOptions[$option_id]['alias']]=$option_value;
				}
			}

		}

	}

	public function convertOneNameToOptionArray(&$requestArray){
		$originOptions=$this->getOptions($requestArray['product_id']);
			foreach($originOptions as $option_id=>$option){
				if(isset($requestArray[$option['alias']])){
					$requestArray['option'][$option_id]=$requestArray[$option['alias']];
				}
			}

	}

	public function getAllOptionsValuesToArrayIndependent($product_id){

		$originOptions=$this->getOptions($product_id);

		$option_values=[];
		foreach($originOptions as $option_id=>$option){
			$option_values[$option['alias'].'_values']=isset($option['values'])?$option['values']:'';

		}

		return $option_values;


	}

}
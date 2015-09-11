<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class content_main extends CI_Controller {
	
	protected $kelas = 'content_main';
	function __construct(){
        parent::__construct();
		$this->load->model('main_menu_model');
		$this->load->model('artikel_model');
    }
	public function index($parentLv3=0,$idLv3=0){
		$content['lv2'] = $this->main_menu_model->getLv2($parentLv3);
		$content['lv3'] = $this->main_menu_model->getLv3($parentLv3);
		$content['lv1'] = $this->main_menu_model->getLv1($parentLv3);
		$content['id'] = $parentLv3;
		$content['idLv3'] = $idLv3;
		if($idLv3 > 0){
			$content['data'] = $this->artikel_model->getByKategoriId($idLv3);
		}else{
			$content['data'] = $this->artikel_model->getByKategoriId($parentLv3);
		}
		$this->load->view('front/content_main', $content);
	}
}
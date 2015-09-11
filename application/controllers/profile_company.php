<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class profile_company extends CI_Controller {
	
	protected $kelas = 'profile_company';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}else{
			$this->load->model('profil_model');
		}
    }
	public function index(){
		$index = array(
			'title' => 'Profile Website',
			'link' => $this->kelas, 
			'data' => $this->profil_model->get(),
			);
		$js = array(
			'urlSave' => base_url($this->kelas . "/simpan"),
			);
		$content['content'] = $this->load->view($this->kelas .'/index',$index,true);
		$content['js'] = $this->load->view($this->kelas .'/js',$js,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		$this->profil_model->profil_save();
	}
}
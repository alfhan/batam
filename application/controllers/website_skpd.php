<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class website_skpd extends CI_Controller {
	
	protected $kelas = 'website_skpd';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}else{
			$this->load->model('website_skpd_model');
		}
    }
	public function index(){
		$index = array(
			'title' => 'Website SKPD',
			'link' => $this->kelas, 
			'data' => $this->website_skpd_model->get(),
			);
		$js = array(
			'urlDelete' => base_url($this->kelas . "/hapus"),
			);
		$content['content'] = $this->load->view($this->kelas .'/index',$index,true);
		$content['js'] = $this->load->view($this->kelas .'/js',$js,true);
		$this->load->view('newindex',$content);
	}
	public function form($id=0)
	{
		$index = array(
			'title' => 'Form Website SKPD',
			'link' => $this->kelas, 
			'parent_id' => $this->website_skpd_model->get(),
			);
		if($id > 0){
			$index['data'] = $this->website_skpd_model->getById($id);
		}
		$content['content'] = $this->load->view($this->kelas .'/form',$index,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		if($_POST['id'] > 0){
			$this->db->where(array('id'=>$_POST['id']));
			$this->db->update('website_skpd',$_POST);
		}else{
			$this->db->insert('website_skpd',$_POST);
		}
		echo "<script>alert('Success');window.close();</script>";
	}
	public function hapus(){
		$this->website_skpd_model->delete();
	}
}
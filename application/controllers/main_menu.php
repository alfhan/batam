<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class main_menu extends CI_Controller {
	
	protected $kelas = 'main_menu';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}else{
			$this->load->model('main_menu_model');
		}
    }
	public function index(){
		$index = array(
			'title' => 'Main Menu',
			'link' => $this->kelas, 
			'data' => $this->main_menu_model->get(),
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
			'title' => 'Form Main Menu',
			'link' => $this->kelas, 
			'parent_id' => $this->main_menu_model->get(),
			);
		if($id > 0){
			$index['data'] = $this->main_menu_model->getById($id);
		}
		$content['content'] = $this->load->view($this->kelas .'/form',$index,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		if($_POST['id'] > 0){
			$this->db->where(array('id'=>$_POST['id']));
			$this->db->update('main_menu',$_POST);
		}else{
			$this->db->insert('main_menu',$_POST);
		}
		echo "<script>alert('Success');window.close();</script>";
	}
	public function hapus(){
		$this->main_menu_model->delete();
	}
}
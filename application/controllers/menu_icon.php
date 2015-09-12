<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class menu_icon extends CI_Controller {
	
	protected $kelas = 'menu_icon';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}else{
			$this->load->model('menu_icon_model');
		}
    }
	public function index(){
		$index = array(
			'title' => 'Menu Icon',
			'link' => $this->kelas, 
			'data' => $this->menu_icon_model->get(),
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
			'title' => 'Form Menu Icon',
			'link' => $this->kelas, 
			'parent_id' => $this->menu_icon_model->get(),
			);
		if($id > 0){
			$index['data'] = $this->menu_icon_model->getById($id);
		}
		$content['content'] = $this->load->view($this->kelas .'/form',$index,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		if($_POST['id'] > 0){
			$this->db->where(array('id'=>$_POST['id']));
			$this->db->update('menu_icon',$_POST);
		}else{
			$this->db->insert('menu_icon',$_POST);
		}
		echo "<script>alert('Success');window.close();</script>";
	}
	public function hapus(){
		$this->menu_icon_model->delete();
	}
}
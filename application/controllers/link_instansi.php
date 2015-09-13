<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class link_instansi extends CI_Controller {
	
	protected $kelas = 'link_instansi';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}else{
			$this->load->model('link_instansi_model');
		}
    }
	public function index(){
		$index = array(
			'title' => 'Link Instansi',
			'link' => $this->kelas, 
			'data' => $this->link_instansi_model->get(),
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
			'title' => 'Form Link Instansi',
			'link' => $this->kelas, 
			'parent_id' => $this->link_instansi_model->get(),
			);
		if($id > 0){
			$index['data'] = $this->link_instansi_model->getById($id);
		}
		$content['content'] = $this->load->view($this->kelas .'/form',$index,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		if($_POST['id'] > 0){
			$this->db->where(array('id'=>$_POST['id']));
			$this->db->update('link_instansi',$_POST);
		}else{
			$this->db->insert('link_instansi',$_POST);
		}
		echo "<script>alert('Success');window.close();</script>";
	}
	public function hapus(){
		$this->link_instansi_model->delete();
	}
}
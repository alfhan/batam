<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class the_module extends CI_Controller {
	
	protected $kelas = 'the_module';
	function __construct(){
        parent::__construct();
		if($this->session->userdata('login') === FALSE){	
            redirect(base_url());
		}
  }
	public function index(){
		$this->load->model('the_module_model');
		$index = array(
			'title' => 'Module',
			'link' => $this->kelas, 
			'data' => $this->the_module_model->getAll(),
			);
		$content['content'] = $this->load->view($this->kelas .'/index',$index,true);
		$this->load->view('newindex',$content);
	}
	public function simpan(){
		$this->load->model('the_module_model');
		$this->the_module_model->save();
	}
	public function hapus(){
		$this->load->model('the_module_model');
		$this->the_module_model->delete();
	}
	public function hapus_detail(){
		$this->load->model('the_module_model');
		$this->db->where(array('id'=>$_POST['id']));
		$this->db->delete('the_module_detail');
	}
	public function detail($id)
	{
		$this->load->model('the_module_model');
		$index = array(
			'title' => 'Detail Module',
			'link' => $this->kelas, 
			'data' => $this->the_module_model->getDetail($id),
			'id'=>$id,
			);
		$content['content'] = $this->load->view($this->kelas .'/detail',$index,true);
		$content['js'] = $this->load->view($this->kelas .'/detail_js',$index,true);
		$this->load->view('newindex',$content);
	}
	public function detail_form($id=0,$moduleId=0)
	{
		$this->load->model('the_module_model');
		$index = array(
			'title' => 'Detail Module Form',
			'link' => $this->kelas, 
			'module_id' => $moduleId, 
			);
		if($id > 0){
			$index['data'] = $this->the_module_model->getDetailForm($id);
		}
		$content['content'] = $this->load->view($this->kelas .'/detail_form',$index,true);
		$this->load->view('newindex',$content);
	}
	public function manual_save()
	{
		unset($_POST['_wysihtml5_mode']);
		if(!empty($_POST['id'])){
			unset($_POST['selected']);
			$this->db->where(array('id'=>$_POST['id']));
			$this->db->update('the_module_detail',$_POST);
		}else{
			$_POST['tanggal'] = date("Y-m-d");
			$this->db->insert('the_module_detail',$_POST);
		}
		echo "<script>alert('Success');window.open('".site_url('the_module/detail')."/$_POST[module_id]','_self')</script>";
	}
}
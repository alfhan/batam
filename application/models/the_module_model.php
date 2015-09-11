<?php
class the_module_model extends MY_Model {

    private $table = 'the_module';
    private $detail = 'the_module_detail';
	
	function __construct(){
        parent::__construct();
		$this->group_id = $this->session->userdata('group');
		$this->upt_id = $this->session->userdata('upt');
  }
	
	public function getAll(){
		return $this->db->get($this->table)->result_array();
	}
	public function getDetail($id)
	{
		$this->db->where(array('module_id'=>$id));
		return $this->db->get($this->detail)->result_array();
	}
	public function getDetailForm($id)
	{
		$this->db->where(array('id'=>$id));
		return $this->db->get($this->detail)->row_array();
	}
	public function save(){
		$this->simpan($this->table);
	}
	
	public function datagrid(){
		$this->grid($this->table);
	}
	
	public function delete(){
		$this->hapus($this->table);
	}
	
	public function getWhere($where){
		$query = "select * from {$this->table} where $where";
		return $this->db->query($query)->row_array();
	}
}
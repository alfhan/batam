<?php
class menu_icon_model extends MY_Model {

    private $table = 'menu_icon';
	
	function __construct(){
        parent::__construct();
  	}
	public function get(){
		return $this->db->get($this->table)->result_array();
	}
	public function getById($id)
	{
		$this->db->where(array('id'=>$id));
		return $this->db->get($this->table)->row_array();
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
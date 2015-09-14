<?php
class website_skpd_model extends MY_Model {

    private $table = 'website_skpd';
	
	function __construct(){
        parent::__construct();
  	}
	public function getLv2($value='')
	{
		$sql = "select * from {$this->table} where parent_id = (select parent_id from {$this->table} where id = '$value')";
		return $this->db->query($sql)->result_array();
	}
	public function getLv3($value='')
	{
		return $this->db->get_where($this->table,array('parent_id'=>$value))->result_array();
	}
	public function getLv1($value='')
	{
		$sql = "select * from {$this->table} where id = (select parent_id from {$this->table} where id = '$value')";
		return $this->db->query($sql)->row_array();
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
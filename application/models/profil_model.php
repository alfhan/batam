<?php
class profil_model extends MY_Model {

    protected $table = 'profil';
	
	function __construct(){
        parent::__construct();
    }
	public function get(){
		$result = $this->db->get($this->table);
		return $result->row();
	}
	public function email_setting($value='')
	{
		return $this->db->get_where('email_setting',array('id'=>1))->row_array();
	}
	public function profil_save(){
		/*$config['upload_path'] = './'.FILE_PERUSAHAAN;
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size']	= '1024';
		$config['max_width']  = '1380';
		$config['max_height']  = '1024';
		$config['encrypt_name']  = true;
		$config['remove_spaces']  = true;

		$this->load->library('upload', $config);
		$this->upload->do_upload('foto');
		$data_foto = $this->upload->data();
		$return = $this->upload->display_errors();*/
		@$tmp_name = $_FILES['foto']['tmp_name'];
		$foto = $tmp_name ? $this->image_resize_logo($tmp_name) : false;
		@$tmp_gbr = $_FILES['gambar']['tmp_name'];
		$gambar = $tmp_gbr ? $this->image_resize_gambar($tmp_gbr) : false;
		$data = array(
			'nama' => $this->input->post('nama'),
			'alamat' => $this->input->post('alamat'),
			'kabkota' => $this->input->post('kabkota'),
			'telp' => $this->input->post('telepon'),
			'email' => $this->input->post('email'),
			'fb' => $this->input->post('fb'),
			'twitter' => $this->input->post('twitter'),
			'foto' => $foto,
			'gambar' => $gambar,
			);
		if(!$foto){
			unset($data['foto']);
		}
		$id = $this->input->post('id');
		if(empty($id) or $id == ''){
			$this->db->insert($this->table,$data);
		}elseif($id > 0){
			$this->db->update($this->table,$data,array('id'=>$id));
		}
	}
	public function image_resize_logo($images)
    {
    	$this->load->library('image_lib');
		$config['image_library'] = 'gd2';
		$config['source_image'] = $images;
		/*$config['create_thumb'] = TRUE;*/
		$config['maintain_ratio'] = false;
		$config['width']         = 65;
		$config['height']       = 85;
		$config['new_image'] = "asset/images/logo.jpg";
		$this->image_lib->initialize($config);
		$this->image_lib->clear();
	    $this->image_lib->initialize($config);
	    $this->image_lib->resize();
		if ( ! $this->image_lib->resize()){
        	return $this->image_lib->display_errors();
		}else{
			return 'logo.jpg';
		}
    }
    public function image_resize_gambar($images)
    {
    	$this->load->library('image_lib');
		$config['image_library'] = 'gd2';
		$config['source_image'] = $images;
		/*$config['create_thumb'] = TRUE;*/
		$config['maintain_ratio'] = false;
		$config['width']         = 1290;
		$config['height']       = 506;
		$config['new_image'] = "asset/images/gambar.jpg";
		$this->image_lib->initialize($config);
		$this->image_lib->clear();
	    $this->image_lib->initialize($config);
	    $this->image_lib->resize();
		if ( ! $this->image_lib->resize()){
        	return $this->image_lib->display_errors();
		}else{
			return 'logo.jpg';
		}
    }
}
<?php

class Gejala_model extends CI_Model {

	public function get_gejala()
	{

		// return $this->db->get('gejala')->result();
		//ini menggunakan query standar
		//jadi silahkan ppilih mau yg mana sama saja
		//bye
		return $this->db->query("SELECT * FROM tbl_gejala JOIN kelompok_gejala on kelompok_gejala.id = tbl_gejala.kelompok_gejala_id")->result();
		//jadi ini query bawaan CI
		// return $this->db->select('*')
		// 		 ->from('gejala')
		// 		 ->join('kelompok_gejala','kelompok_gejala.id = gejala.kelompok_gejala_id')
		// 		 ->get()
		// 		 ->result();
	}


		//perhatikan baik2 kalau coding,,jangan ada spasi kayak tadi
		// $query=$this->db->query("select * from tbl_gejala");
		// return $query->result_array();


	public function insert_gejala(){
		$kelompok_gejala_id= $this->input->post('kelompok_gejala_id');
		$kd_gejala= $this->input->post('kd_gejala');
		$gejala= $this->input->post('gejala');
		$nama_obat= $this->input->post('nama_obat');
	
		$query = $this->db->query(" INSERT INTO tbl_gejala (kelompok_gejala_id,kd_gejala, gejala, nama_obat)
									VALUES
									('$kelompok_gejala_id','$kd_gejala','$gejala','$nama_obat') ");
		
		return $query;
	}

	public function edit(){
		$this->load->view('gejala_edit');
	}

	function get_list_by_id($id){
         $sql = "select id,kd_gejala,gejala from tbl_gejala where id in (".$id.")";
         return $this->db->query($sql);
     }

	public function getById($id){
		return	$query =  $this->db->query(" select * from tbl_gejala where id='$id' ")->row_array();
	}

	function get_by_kelompok($kelompok){
        $this->db->select('*');
        $this->db->from('tbl_gejala');
         $this->db->where('kelompok_gejala_id',$kelompok);
        return $this->db->get();
    }

	public function edit_gejala(){
		$id= $this->input->post('id');
		$kelompok_gejala_id= $this->input->post('kelompok_gejala_id');
		$kd_gejala= $this->input->post('kd_gejala');
		$gejala= $this->input->post('gejala');
		$nama_obat= $this->input->post('nama_obat');

		$query = $this->db->query(" UPDATE tbl_gejala SET kelompok_gejala_id='$kelompok_gejala_id', kd_gejala='$kd_gejala', gejala='$gejala',nama_obat='$nama_obat'
									WHERE id='$id' ");
		return $query;
	}

	public function hapus_gejala($id){
		$query = $this->db->query(" DELETE FROM tbl_gejala WHERE id='$id' ");
		return $query;
	}
}

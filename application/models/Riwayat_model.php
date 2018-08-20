<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Riwayat_model extends CI_Model {

	public function listHistory($id){
        return $this->db->select('*')
                        ->from('riwayat a')
                        ->join('tbl_gejala b', 'b.id = a.gejala_id')
                        ->where('a.user_id', $id)
                        ->get()
                        ->result_array();
    }


    function listHasil($id){
        return $this->db->select('*')
                        ->from('diagnosa')
                        ->where('user_id', $id)
                        ->get()
                        ->result_array();


       
    }

}

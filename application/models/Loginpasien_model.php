<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Loginpasien_model extends CI_Model {
	

	public function checkLogin($username, $password){
		return $this->db->query(" SELECT * FROM pasien WHERE username='$username' AND password='$password' ")->row();
	}

	
}
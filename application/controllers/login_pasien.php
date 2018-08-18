<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login_pasien extends CI_Controller {
	
	function __construct(){
		parent::__construct();
		$this->load->model('Loginpasien_model'); 
	}

	public function index()
	{
		// if($this->session->userdata('is_login')==TRUE){redirect('Dashboard/login_pasien');}
		$this->load->view('user/login_pasien');		
	}

	public function login(){
		if (isset($_POST['submit'])) {
			$username = $this->input->post('username');
			$password = md5($this->input->post('password'));

			$check =$this->Loginpasien_model->checkLogin($username, $password);

			if(!$check)  {
				redirect('login_pasien');
			}else{
				$data = array(
					'username' => $username,
					'password' => $password,
					'is_login' => TRUE,
					'nama' => $check->nama,
					);
				$this->session->set_userdata($data);
				redirect('Dashboard/diagnosa');
			}
		}
	}

	public function logout(){
		$data = array('$username','$password','is_login','nama');
		$this->session->unset_userdata($data);
		redirect('login_pasien');
	}
}


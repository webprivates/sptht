<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	function __construct(){
	parent::__construct();
	$this->load->model(array('Kelompok_model','Nilai_model','Gejala_model', 'Riwayat_model'));
	}
	// function __construct(){
	// 	parent::__construct();
	// 	if($this->session->userdata('is_login')== FALSE){redirect('admin');}
	// 	$this->load->model('Penyakit_model');
	// }


	public function admin()
	{
		$data['contents'] = 'admin/dashboard';
		$this->load->view('templates/index',$data);
	}

	public function user()
	{
		$data['contents'] = 'user/home';
		$this->load->view('templates/user/index',$data);
	}

	public function diagnosa()
	{
		// $this->load->view('user/course');
		if (!$this->input->post('gejala')) 
		{
			// $data['contentuser'] = 'user/diagnosa'; //nama file yang akan jadi kontent di template
			$data['listKelompok'] = $this->Kelompok_model->get_list_data();
			$this->load->view('user/course', $data);

		}else{
			// $this->load->view('user/hasil_diagnosa',$data);
			// $data["contentuser"]="user/hasil_diagnosa";
			$user_login = $this->session->userdata('user_id');

			$gejala = implode(",", $this->input->post("gejala"));
			$data["listGejala"] = $this->Gejala_model->get_list_by_id($gejala);
			//hitung
			$listPenyakit = $this->Nilai_model->get_by_gejala($gejala);
			$tbl_penyakit = array();
			$i=0;
			foreach($listPenyakit->result() as $value){
				$listGejala = $this->Nilai_model->get_gejala_by_penyakit($value->penyakit_id,$gejala);
				$combineCF=0;
				$CFBefore=0;
				$j=0;
				foreach($listGejala->result() as $value2){
					$j++;
					if($j==1)
						$combineCF=$value2->mb;
					else
					$combineCF =$combineCF + ($value2->mb * (1 - $combineCF));
				}
				if($combineCF>=0.5)
				{
					$tbl_penyakit[$i]=array('kd_penyakit'=>$value->kd_penyakit,
											'nm_penyakit'=>$value->nm_penyakit,
											'kepercayaan'=>$combineCF*100,
											'nama_obat'=>$value->nama_obat,
											'user_id' =>$user_login);
					$i++;
				}
			}

			$insert_data = array();
			foreach ($this->input->post("gejala") as $g) {
				$insert_data[] = array(
								'user_id' => $user_login,
								'gejala_id' => $g
							);
			}
			$this->db->insert_batch('riwayat', $insert_data);
			function cmp($a, $b)
			{
				return ($a["kepercayaan"] > $b["kepercayaan"]) ? -1 : 1;
			}
			
			usort($tbl_penyakit, "cmp");
			$data["listPenyakit"] = $tbl_penyakit;
			$data_hasil = array(
				'user_id' =>$tbl_penyakit[0]['user_id'],
				'kode' =>$tbl_penyakit[0]['kd_penyakit'],
				'nama' =>$tbl_penyakit[0]['nm_penyakit'],
				'kepercayaan' =>$tbl_penyakit[0]['kepercayaan'],
				'nama_obat' =>$tbl_penyakit[0]['nama_obat'],
			);
			$this->db->insert('diagnosa', $data_hasil);
			// $this->load->view('user/course', $data);
			$this->load->view('user/hasil_diagnosa',$data);

		}

	}

	public function riwayat(){
		$id = $this->session->userdata('user_id');
		

		$data['listHistory'] = $this->Riwayat_model->listHistory($id);
		$data['listHasil'] = $this->Riwayat_model->listHasil($id);
		$this->load->view('user/riwayat', $data);
	}

	public function about()
	{
		$this->load->view('user/about-us');
	}

	public function contact()
	{
		$this->load->view('user/contact');
	}
}



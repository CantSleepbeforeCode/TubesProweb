<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	 public function __construct() {
		 parent::__construct();
		 $this->load->model('loginModel');
	 }

	var $isLogin = true;

	public function index() {
		$dataDoc['judul'] = 'Login';
		if(isset($_SESSION['gagal'])) {
			$dataDoc['gagal'] = "gagal";
		}
		$this->load->view('admin/login.php', $dataDoc);
	}

	public function aksiLogin() {
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$where = array(
			'username' => $username,
			'password' => md5($password)
		);

		$cek = $this->loginModel->cek_login("admin",$where)->num_rows();

		if($cek > 0) {
			$data = $this->loginModel->cek_login("admin",$where)->row();

			$data_session = array(
				'id_admin' => $data->id_admin,
				'username' => $username,
				'hak_akses' => $data->hak_akses
			);

			$this->session->set_userdata($data_session);
			if($data->hak_akses == "penulis") {
				redirect(base_url("admin/game"));
			} else if($data->hak_akses == "panitia_lomba") {
				redirect(base_url("admin/lomba"));
			}
		} else {
			$this->session->set_flashdata('gagal','true');
			redirect(base_url("admin/"));
		}
	}

	public function logout() {
		$this->session->sess_destroy();
		redirect(base_url("admin"));
	}
}

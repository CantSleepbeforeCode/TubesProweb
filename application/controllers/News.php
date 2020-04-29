<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {
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
		 $this->load->model('GameModel');
		 $this->load->helper(array('form', 'url'));

		 if($this->session->userdata('username') == NULL) {
			redirect(base_url("login"));
		}
     }

     public function index() {
		$dataDoc['game'] = $this->GameModel->tampilPostinganGame()->result();
		$dataDoc['judul'] = 'Halaman Admin';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/news.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
    }
    
    public function addNews() {	
		$dataDoc['judul'] = 'Tambah Data News';
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/add-news');
		$this->load->view('templates/footer_admin.php');
	}
}
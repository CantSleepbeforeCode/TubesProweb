<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller {
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
		 $this->load->helper('url');
		 $this->load->model('GameModel');
	 }

	public function index() {
		$dataDoc['judul'] = 'Halaman Home';
		$dataDoc['dataRating5'] = $this->GameModel->getGamebyRating5()->result();
		$dataDoc['dataRating'] = $this->GameModel->getGamebyRating()->result();
		$this->load->view('templates/header.php', $dataDoc);
		$this->load->view('esport/landing');
		$this->load->view('templates/footer.php');

	}
}

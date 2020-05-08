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
		 $this->load->model('TurnamenModel');
	 }

	public function index() {
		$dataDoc['judul'] = 'Halaman Home';
		$dataDoc['dataRating5'] = $this->GameModel->getGamebyRating5()->result();
		$dataDoc['dataRating'] = $this->GameModel->getGamebyRating()->result();
		$dataDoc['dataGameNews'] = $this->GameModel->tampilPostinganBeritaGame()->result();
		$dataDoc['dataTurnamen'] = $this->TurnamenModel->getAllTurnamen()->result();
		$this->load->view('templates/header.php', $dataDoc);
		$this->load->view('esport/landing');
		$this->load->view('templates/footer.php');
	}

	public function detailGame($id) {
		$dataDoc['judul'] = 'Detail Game';
		$dataDoc['dataGame'] = $this->GameModel->getByIdGame($id);
		$this->load->view('templates/header.php', $dataDoc);
		$this->load->view('esport/detail-game', $dataDoc);
		$this->load->view('templates/footer.php');
	}

	public function detailBeritaGame($id) {
		$dataDoc['judul'] = 'Detail Berita Game';
		$dataDoc['dataBerita'] = $this->GameModel->getByIdGameNews($id);
		$this->load->view('templates/header.php', $dataDoc);
		$this->load->view('esport/detail-berita-game', $dataDoc);
		$this->load->view('templates/footer.php');
	}

	public function detailTurnamen($id) {
        $dataDoc['judul'] = 'Detail Turnamen';
		$dataDoc['dataTurnamen'] = $this->TurnamenModel->getByIdTurnamen($id);
		$this->load->view('templates/header.php', $dataDoc);
		$this->load->view('esport/detail-turnamen', $dataDoc);
		$this->load->view('templates/footer.php');
	}
	
	public function aksiDaftarGame($idTurnamen) {
		$namaTim = $this->input->post('namaTim');
		$anggota1 = $this->input->post('anggota_1');
		$anggota2 = $this->input->post('anggota_2');
		$anggota3 = $this->input->post('anggota_3');
		$anggota4 = $this->input->post('anggota_4');
		if(isset($_POST['anggota_5'])) {
			$anggota5 = $this->input->post('anggota_5');
		} else {
			$anggota5 = "";
		}
		$nohp = $this->input->post('nohp');
		$email = $this->input->post('email');
		$foto = "logo_tim_".$namaTim.".jpg";
		$strFoto = str_replace(' ', '_', $foto);
		$gambar = "assets/img/turnamen-tim/".$strFoto;

		$config['file_name'] 			= $strFoto;
		$config['upload_path']          = 'assets/img/turnamen-tim/';
		$config['allowed_types']        = 'jpg|png|jpeg';

		$this->load->library('upload', $config);

		if(!$this->upload->do_upload('fileLogo')) {
			$dataDoc['error'] = $this->upload->display_errors();
			$dataDoc['judul'] = 'Detail Turnamen';
			$dataDoc['dataTurnamen'] = $this->TurnamenModel->getByIdTurnamen($idTurnamen);
			$this->load->view('templates/header.php', $dataDoc);
			$this->load->view('esport/detail-turnamen', $dataDoc);
			$this->load->view('templates/footer.php');
		} else {
			$data = array(
				'nama_tim' => $namaTim,
				'nama_anggota_1' => $anggota1,
				'nama_anggota_2' => $anggota2,
				'nama_anggota_3' => $anggota3,
				'nama_anggota_4' => $anggota4,
				'nama_anggota_5' => $anggota5,
				'nohp' => $nohp,
				'email' => $email,
				'status' => 'pending',
				'logo_tim' => $gambar,
				'id_turnamen' => $idTurnamen
			);

			$this->TurnamenModel->tambahTim($data, 'tim');

			$dataDoc['berhasil'] = "ok";
			$dataDoc['judul'] = 'Detail Turnamen';
			$dataDoc['dataTurnamen'] = $this->TurnamenModel->getByIdTurnamen($idTurnamen);
			$this->load->view('templates/header.php', $dataDoc);
			$this->load->view('esport/pembayaran', $dataDoc);
			$this->load->view('templates/footer.php');
		}
	}
}

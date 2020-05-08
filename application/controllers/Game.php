<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Game extends CI_Controller {
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
		$this->load->view('admin/penulis/landing.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}

	public function addGame() {	
		$dataDoc['judul'] = 'Tambah Data Game';
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/add-game');
		$this->load->view('templates/footer_admin.php');
	}

	public function AksiTambahGame() {
		$nama = $this->input->post('nama');
		$developer = $this->input->post('developer');
		$genre = $this->input->post('genre');
		$rating = $this->input->post('rating');
		$deskripsi = $this->input->post('content');
		$id = $this->session->userdata('id_admin');
		$foto = "game_".$nama.".jpg";
		$strFoto = str_replace(' ', '_', $foto);
		$gambar = "assets/img/postingan-game/".$strFoto;

		$config['file_name'] 			= $strFoto;
		$config['upload_path']          = './assets/img/postingan-game/';
		$config['allowed_types']        = 'jpg|png|jpeg';

		$this->load->library('upload', $config);

		if(!$this->upload->do_upload('gambar')) {
			$dataDoc['status'] = "error";
			$dataDoc['error'] = $this->upload->display_errors();
			$dataDoc['judul'] = 'Tambah Data Game';
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/penulis/add-game', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		} else {
			$data = array(
				'judul' => $nama,
				'developer' => $developer,
				'genre' => $genre,
				'deskripsi' => $deskripsi,
				'rating' => $rating,
				'foto' => $gambar,
				'id_admin' => $id
			);

			$this->GameModel->tambahPostinganGame($data, 'game');

			$dataDoc['status'] = "ok";
			$dataDoc['judul'] = 'Tambah Data Game';
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/penulis/add-game', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		}
	}

	public function AksiEditGame() {
		date_default_timezone_set("Asia/Kuala_Lumpur");
		$nama = $this->input->post('nama');
		$developer = $this->input->post('developer');
		$genre = $this->input->post('genre');
		$rating = $this->input->post('rating');
		$strFoto = str_replace(' ', '_', $nama);
		$gambar = "assets/img/postingan-game/game_".$strFoto.".jpg";
		$deskripsi = $this->input->post('content');
		$id = $this->input->post('id');
		
		$dataLama = $this->GameModel->getByIdGame($id);

		if(!$_FILES['gambar']['name'] == "") {
			$foto = "game_".$dataLama->judul.".jpg";
			$strFoto = str_replace(' ', '_', $foto);
			unlink("./assets/img/postingan-game/".$strFoto);

			$config['file_name'] 			= 'game_'.$nama.'.jpg';
			$config['upload_path']          = './assets/img/postingan-game/';
			$config['allowed_types']        = 'jpg|png|jpeg';

			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('gambar')) {
				$dataDoc['status'] = "error";
				$dataDoc['error'] = $this->upload->display_errors();
				$dataDoc['judul'] = 'Ubah Data Game';
				$this->load->view('templates/header_admin.php', $dataDoc);
				$this->load->view('admin/penulis/edit-game', $dataDoc);
				$this->load->view('templates/footer_admin.php');
			} else {
				$data = array(
					'judul' => $nama,
					'developer' => $developer,
					'genre' => $genre,
					'deskripsi' => $deskripsi,
					'tanggal_edit' => date("Y-m-d h:i:sa"),
					'rating' => $rating,
					'foto' => $gambar,
				);

				$this->GameModel->editPostinganGambarGame($data, 'game', $id);
				$this->session->set_flashdata('flash', 'diedit');
				redirect('admin/landing');
			}
		} else {
			$data = array(
				'judul' => $nama,
				'developer' => $developer,
				'genre' => $genre,
				'deskripsi' => $deskripsi,
				'tanggal_edit' => date("Y-m-d h:i:sa"),
				'rating' => $rating
			);
			$oldfile = str_replace(' ', '_', "./assets/img/postingan-game/game_".$dataLama->judul.".jpg");
			$newfile = str_replace(' ', '_', "./assets/img/postingan-game/game_".$nama.".jpg");
			rename($oldfile, $newfile);
			$this->GameModel->editPostinganGame($data, 'game', $id);
			$this->session->set_flashdata('flash', 'diedit');
			redirect('admin/landing');
		}		
	}

	public function hapusGame($id) {
		$data = $this->GameModel->getByIdGame($id);
		$foto = "game_".$data->judul;
		$foto = str_replace(' ', '_', $foto);

		unlink("./assets/img/postingan-game/".$foto.".jpg");

		$this->GameModel->hapusDataGame($id);
		$this->session->set_flashdata('flash', 'dihapus');
		redirect('admin/landing');
	}

	public function ubahGame($id) {
		$dataDoc['judul'] = 'Ubah Data Game';
		$dataDoc['data'] = $this->GameModel->getByIdGame($id);
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/edit-game', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}
}

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
		$dataDoc['game_news'] = $this->GameModel->tampilPostinganBeritaGame()->result();
		$dataDoc['judul'] = 'Halaman Berita Acara';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/news.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
    }
    
    public function addNews() {	
		$dataDoc['games'] = $this->GameModel->tampilPostinganGame()->result();
		$dataDoc['judul'] = 'Tambah Data Berita Game';
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/add-news');
		$this->load->view('templates/footer_admin.php');
	}

	public function AksiTambahBerita() {
		$nama = $this->input->post('nama');
		$id_game = $this->input->post('game');
		$deskripsi = $this->input->post('content');
		$id = $this->session->userdata('id_admin');
		$foto = "berita_game_".$nama.".jpg";
		$strFoto = str_replace(' ', '_', $foto);
		$gambar = "assets/img/postingan-berita-game/".$strFoto;

		$config['file_name'] 			= $strFoto;
		$config['upload_path']          = './assets/img/postingan-berita-game/';
		$config['allowed_types']        = 'jpg|png|jpeg';

		$this->load->library('upload', $config);

		if(!$this->upload->do_upload('gambar')) {
			$dataDoc['status'] = "error";
			$dataDoc['error'] = $this->upload->display_errors();
			$dataDoc['judul'] = 'Tambah Data Berita Game';
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/penulis/add-news', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		} else {
			$data = array(
				'judul' => $nama,
				'deskripsi' => $deskripsi,
				'foto' => $gambar,
				'id_admin' => $id,
				'id_game' => $id_game
			);

			$this->GameModel->tambahPostinganGame($data, 'game_news');

			$dataDoc['status'] = "ok";
			$dataDoc['judul'] = 'Tambah Data Berita Game';
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/penulis/add-news', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		}
	}

	public function ubahBeritaGame($id) {
		$dataDoc['judul'] = 'Ubah Data Berita Game';
		$dataDoc['games'] = $this->GameModel->tampilPostinganGame()->result();
		$dataDoc['data'] = $this->GameModel->getByIdGameNews($id);
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/penulis/edit-news', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}

	public function AksiEditBerita() {
		date_default_timezone_set("Asia/Kuala_Lumpur");
		$nama = $this->input->post('nama');
		$id_game = $this->input->post('game');
		$strFoto = str_replace(' ', '_', $nama);
		$gambar = "assets/img/postingan-berita-game/".$strFoto;
		$deskripsi = $this->input->post('content');
		$id = $this->input->post('id');
		
		$dataLama = $this->GameModel->getByIdGameNews($id);

		if(!$_FILES['gambar']['name'] == "") {
			$foto = "berita_game_".$dataLama->judul.".jpg";
			$strFoto = str_replace(' ', '_', $foto);
			unlink("./assets/img/postingan-berita-game/".$strFoto);

			$config['file_name'] 			= 'berita_game_'.$nama.'.jpg';
			$config['upload_path']          = './assets/img/postingan-berita-game/';
			$config['allowed_types']        = 'jpg|png|jpeg';

			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('gambar')) {
				$dataDoc['status'] = "error";
				$dataDoc['error'] = $this->upload->display_errors();
				$dataDoc['judul'] = 'Ubah Data Berita Game';
				$this->load->view('templates/header_admin.php', $dataDoc);
				$this->load->view('admin/penulis/edit-news', $dataDoc);
				$this->load->view('templates/footer_admin.php');
			} else {
				$data = array(
					'judul' => $nama,
					'deskripsi' => $deskripsi,
					'tanggal_edit' => date("Y-m-d h:i:sa"),
					'foto' => $gambar,
					'id_game' => $id_game
				);

				$this->GameModel->editPostinganGambarBeritaGame($data, 'game_news', $id);
				$this->session->set_flashdata('flash', 'diedit');
				redirect('admin/news');
			}
		} else {
			$data = array(
				'judul' => $nama,
				'deskripsi' => $deskripsi,
				'tanggal_edit' => date("Y-m-d h:i:sa"),
				'id_game' => $id_game
			);
			$oldfile = str_replace(' ', '_', "./assets/img/postingan-berita-game/berita_game_".$dataLama->judul.".jpg");
			$newfile = str_replace(' ', '_', "./assets/img/postingan-berita-game/berita_game_".$nama.".jpg");
			rename($oldfile, $newfile);
			$this->GameModel->editPostinganBeritaGame($data, 'game_news', $id);
			$this->session->set_flashdata('flash', 'diedit');
			redirect('admin/news');
		}
	}

	public function hapusBeritaGame($id) {
		$data = $this->GameModel->getByIdGameNews($id);
		$foto = "berita_game_".$data->judul;
		$foto = str_replace(' ', '_', $foto);

		unlink("./assets/img/postingan-berita-game/".$foto.".jpg");

		$this->GameModel->hapusDataBeritaGame($id);
		$this->session->set_flashdata('flash', 'dihapus');
		redirect('admin/news');
	}
}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Turnamen extends CI_Controller {
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
		 $this->load->model('TurnamenModel');
		 $this->load->helper(array('form', 'url'));

		 if($this->session->userdata('username') == NULL) {
			redirect(base_url("login"));
		}
     }

     public function index() {
		$dataDoc['turnamen'] = $this->TurnamenModel->getAllTurnamen()->result();
		$dataDoc['judul'] = 'Halaman Admin';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/lomba/landing.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}
	
	public function tambahTurnamen() {
		$dataDoc['judul'] = 'Tambah Turnamen';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/lomba/add-turnamen.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}

	public function AksiTambahData($idAdmin) {
		$judul = $this->input->post('judul');
		$penyelenggara = $this->input->post('penyelenggara');
		$platform = $this->input->post('platform');
		$slot = $this->input->post('slot');
		$slotPeserta = $this->input->post('slot_peserta');
		$deadline = $this->input->post('tgl_deadline');
		$tglMulai = $this->input->post('tgl_mulai');
		$tglBerakhir = $this->input->post('tgl_berakhir');
		$jam = $this->input->post('jam_mulai');
		$deskripsi = $this->input->post('content');

		$foto = "turnamen_".$judul.".jpg";
		$strFoto = str_replace(' ', '_', $foto);
		$gambar = "assets/img/postingan-turnamen/".$strFoto;

		$config['file_name'] 			= $strFoto;
		$config['upload_path']          = './assets/img/postingan-turnamen/';
		$config['allowed_types']        = 'jpg|png|jpeg';

		$this->load->library('upload', $config);

		if(!$this->upload->do_upload('gambar')) {
			$this->session->set_flashdata('flash', 'gagal');
			$dataDoc['judul'] = 'Tambah Turnamen';
			$dataDoc['error'] = $this->upload->display_errors();
			$dataDoc['id_admin'] = $this->session->userdata('id_admin');
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/lomba/add-turnamen.php', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		} else {
			$data = array(
				'judul' => $judul,
				'penyelenggara' => $penyelenggara,
				'platform' => $platform,
				'jumlah_tim' => $slot,
				'jumlah_anggota' => $slotPeserta,
				'deskripsi_lomba' => $deskripsi,
				'deadline_pendaftaran' => $deadline,
				'tanggal_pelaksanaan' => $tglMulai,
				'tanggal_berakhir' => $tglBerakhir,
				'jam_mulai' => $jam,
				'foto_sampul' => $gambar,
				'id_admin' => $idAdmin
			);

			$this->TurnamenModel->tambahTurnamen($data, 'turnamen');

			$this->session->set_flashdata('flash', 'berhasil');
			$dataDoc['judul'] = 'Tambah Turnamen';
			$dataDoc['id_admin'] = $this->session->userdata('id_admin');
			$this->load->view('templates/header_admin.php', $dataDoc);
			$this->load->view('admin/lomba/add-turnamen.php', $dataDoc);
			$this->load->view('templates/footer_admin.php');
		}

	}

	public function verifikasiTim() {
		$dataDoc['tim'] = $this->TurnamenModel->getTimPending()->result();
		$dataDoc['judul'] = 'Verifikasi Tim';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/lomba/verifikasi-tim.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}

	public function verifikasiDataTim($id_tim) {
		$data = array('status' => 'lunas');
		$this->TurnamenModel->verifikasiTim($data, 'tim', $id_tim);
		$this->session->set_flashdata('flash', 'berhasil');
		redirect('admin/turnamen/verifikasi-tim');
	}

	public function ubahTurnamen($idTurnamen) {
		$dataDoc['judul'] = 'Ubah Data Turnamen';
		$dataDoc['id_admin'] = $this->session->userdata('id_admin');
		$dataDoc['data'] = $this->TurnamenModel->getByIdTurnamen($idTurnamen);
		$this->load->view('templates/header_admin.php', $dataDoc);
		$this->load->view('admin/lomba/edit-turnamen.php', $dataDoc);
		$this->load->view('templates/footer_admin.php');
	}

	public function AksiEditTurnamen($idTurnamen) {
		$judul = $this->input->post('judul');
		$penyelenggara = $this->input->post('penyelenggara');
		$platform = $this->input->post('platform');
		$slot = $this->input->post('slot');
		$slotPeserta = $this->input->post('slot_peserta');
		$deadline = $this->input->post('tgl_deadline');
		$tglMulai = $this->input->post('tgl_mulai');
		$tglBerakhir = $this->input->post('tgl_berakhir');
		$jam = $this->input->post('jam_mulai');
		$deskripsi = $this->input->post('content');

		$foto = "turnamen_".$judul.".jpg";
		$strFotoUp = str_replace(' ', '_', $foto);
		$gambar = "assets/img/postingan-turnamen/".$strFotoUp;

		$dataLama = $this->TurnamenModel->getByIdTurnamen($idTurnamen);
		
		if(!$_FILES['gambar']['name'] == "") {
			$foto = "turnamen_".$dataLama->foto_sampul.".jpg";
			$strFoto = str_replace(' ', '_', $foto);
			unlink("./assets/img/postingan-turnamen/".$strFoto);

			$config['file_name'] 			= $strFotoUp;
			$config['upload_path']          = './assets/img/postingan-turnamen/';
			$config['allowed_types']        = 'jpg|png|jpeg';

			$this->load->library('upload', $config);

			if(!$this->upload->do_upload('gambar')) {
				$this->session->set_flashdata('flash', 'gagal');
				redirect('admin/turnamen');
			} else {
				$data = array(
					'judul' => $judul,
					'penyelenggara' => $penyelenggara,
					'platform' => $platform,
					'jumlah_tim' => $slot,
					'jumlah_anggota' => $slotPeserta,
					'deskripsi_lomba' => $deskripsi,
					'deadline_pendaftaran' => $deadline,
					'tanggal_pelaksanaan' => $tglMulai,
					'tanggal_berakhir' => $tglBerakhir,
					'jam_mulai' => $jam,
					'foto_sampul' => $gambar
				);
	
				$this->TurnamenModel->editTurnamen($data, 'turnamen', $idTurnamen);
	
				$this->session->set_flashdata('flash', 'berhasil');
				$dataDoc['judul'] = 'Ubah Data Turnamen';
				$dataDoc['id_admin'] = $this->session->userdata('id_admin');
				redirect('admin/turnamen');
			}
		} else {
			$data = array(
				'judul' => $judul,
				'penyelenggara' => $penyelenggara,
				'platform' => $platform,
				'jumlah_tim' => $slot,
				'jumlah_anggota' => $slotPeserta,
				'deskripsi_lomba' => $deskripsi,
				'deadline_pendaftaran' => $deadline,
				'tanggal_pelaksanaan' => $tglMulai,
				'tanggal_berakhir' => $tglBerakhir,
				'jam_mulai' => $jam
			);

			$oldfile = str_replace(' ', '_', "./assets/img/postingan-turnamen/turnamen_".$dataLama->judul.".jpg");
			$newfile = str_replace(' ', '_', "./assets/img/postingan-turnamen/turnamen_".$judul.".jpg");
			rename($oldfile, $newfile);

			$this->TurnamenModel->editTurnamen($data, 'turnamen', $idTurnamen);

			$this->session->set_flashdata('flash', 'berhasil');
			$dataDoc['judul'] = 'Ubah Data Turnamen';
			$dataDoc['id_admin'] = $this->session->userdata('id_admin');
			redirect('admin/turnamen');
		}
	}
}
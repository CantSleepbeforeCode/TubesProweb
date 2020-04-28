<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class GameModel extends CI_Model {

    public function tampilPostinganGame() {
        return $this->db->get('view_postingan_game');
    }

    public function getByIdGame($id) {
		$this->db->where('id_game', $id);
		return $this->db->get('view_postingan_game')->row();
    }
    
    public function getGamebyRating5() {
		$this->db->where('rating', "5");
		return $this->db->get('view_postingan_game');
    }
    
    public function getGamebyRating() {
        $this->db->where('rating <', "5");
        $this->db->order_by('rating', 'ASC');
		return $this->db->get('view_postingan_game');
	}

    public function tambahPostinganGame($data,$table) {
        $this->db->insert($table,$data);
    }
    
    public function editPostinganGambarGame($data, $table, $id) {
        $this->db->where('id_game', $id);
        $this->db->update($table, $data);
    }

    public function editPostinganGame($data, $table, $id) {
        $this->db->where('id_game', $id);
        $this->db->update($table, $data);
    }

    public function hapusDataGame($id) {
        $this->db->where('id_game', $id);
        $this->db->delete('game');
    }
}

?>
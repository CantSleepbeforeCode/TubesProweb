<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class TurnamenModel extends CI_Model {
    public function getAllTurnamen() {
        return $this->db->get('view_turnamen');
    }

    public function getByIdTurnamen($id) {
        $this->db->where('id_turnamen', $id);
        return $this->db->get('view_turnamen')->row();
    }

    public function tambahTim($data,$table) {
        $this->db->insert($table,$data);
    }

    public function getTimPending() {
        $this->db->where('status', 'pending');
        return $this->db->get('view_tim');
    }

    public function verifikasiTim($data, $table, $id) {
        $this->db->where('id_tim', $id);
        $this->db->update($table, $data);
    }

    public function tambahTurnamen($data,$table) {
        $this->db->insert($table,$data);
    }

    public function editTurnamen($data, $table, $id) {
        $this->db->where('id_turnamen', $id);
        $this->db->update($table, $data);
    }
}

?>
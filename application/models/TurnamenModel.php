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
}

?>
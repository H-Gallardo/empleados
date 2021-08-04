<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Empleados extends CI_Model {

  function __construct(){
    parent::__construct();
  }

  function getTiposDoc(){

    $this->db->select('tipo_documento.*');
    $this->db->from('tipo_documento');
    $query= $this->db->get();

		if ($query->num_rows()!=0)
		{
			return $query->result_array();
		}
		else
		{
			return array();
		}
  }

  function getProvincias(){
    $this->db->select('provincia.*');
    $this->db->from('provincia');
    $query= $this->db->get();

		if ($query->num_rows()!=0)
		{
			return $query->result_array();
		}
		else
		{
			return array();
		}
  }

  function guardar($data){

    log_message('DEBUG','#SIST. EMPLEADOS|EMPLEADOS|GUARDAR| guardar($data) >> '.json_encode($data));

    $resp = $this->db->insert('empleados', $data);

    if($resp == false) {
      log_message('ERROR','#SIST. EMPLEADOS|EMPLEADOS|GUARDAR|| >> ERROR: No se pudo insertar registro en BD');
      return false;
    }else {
      return true;
    }
  }

}
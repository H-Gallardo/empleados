<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Empleado extends CI_Controller {

  public function __construct()
  {
      parent::__construct();
      $this->load->model('Empleados');
  }

  public function index ()
  {
    $this->load->view('header');
    $data['tipo_doc'] = $this->Empleados->getTiposDoc();
    $data['provincia'] = $this->Empleados->getProvincias();
    $this->load->view('alta_empleados', $data);
    $this->load->view('footer');
  }

  function guardar()
  {
    $response = $this->Empleados->Guardar($this->input->post('data'));
    echo json_encode($response);
  }

}
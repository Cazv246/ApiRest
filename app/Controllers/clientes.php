<?php

namespace App\Controllers;

use App\Models\ClienteModel;
use CodeIgniter\RESTful\ResourceController;

class Clientes extends ResourceController
{
    protected $modelName = 'App\Models\clienteModel';
    protected $format    = 'json';

    public function index()
    {
        return $this->respond($this->model->getClientes());
    }

    public function show($id = null)
    {
        $data = $this->model->getCliente($id);
        if ($data) {
            return $this->respond($data);
        } else {
            return $this->failNotFound('Cliente no encontrado');
        }
    }
}

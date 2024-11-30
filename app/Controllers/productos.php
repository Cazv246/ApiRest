<?php

namespace App\Controllers;

use App\Models\ProductoModel;
use CodeIgniter\RESTful\ResourceController;

class Productos extends ResourceController
{
    protected $modelName = 'App\Models\productoModel';
    protected $format    = 'json';

    public function index()
    {
        return $this->respond($this->model->getProductos());
    }

    public function show($id = null)
    {
        $data = $this->model->getProducto($id);
        if ($data) {
            return $this->respond($data);
        } else {
            return $this->failNotFound('Producto no encontrado');
        }
    }
}

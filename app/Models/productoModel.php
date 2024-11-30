<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductoModel extends Model
{
    protected $table = 'Productos';
    protected $primaryKey = 'ProductoId';
    protected $allowedFields = ['Nombre', 'Precio','Modelo','Marca','Cuotas','ClienteID']; 

    public function getProductos()
    {
        return $this->findAll();
    }

    public function getProducto($id)
    {
        return $this->find($id);
    }
}

<?php

namespace App\Models;

use CodeIgniter\Model;

class ClienteModel extends Model
{
    protected $table = 'Clientes';
    protected $primaryKey = 'Clienteid';
    protected $allowedFields = ['Nombre', 'Apellido','Apellido','Edad','Ciudad','EstadoCivil']; 

    public function getClientes()
    {
        return $this->findAll();
    }

    public function getCliente($id)
    {
        return $this->find($id);
    }
}

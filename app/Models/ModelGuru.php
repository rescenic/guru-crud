<?php

namespace App\Models;

use CodeIgniter\Model;

class ModelGuru extends Model
{
    protected $table = "guru";
    protected $primaryKey = "id";
    protected $allowedFields = ['nama', 'email', 'bidang', 'alamat'];

    function cari($katakunci)
    {
        $builder = $this->table("guru");
        $arr_katakunci = explode(" ", $katakunci);
        for ($x = 0; $x < count($arr_katakunci); $x++) {
            $builder->orLike('nama', $arr_katakunci[$x]);
            $builder->orLike('email', $arr_katakunci[$x]);
            $builder->orLike('alamat', $arr_katakunci[$x]);
        }
        return $builder;
    }
}

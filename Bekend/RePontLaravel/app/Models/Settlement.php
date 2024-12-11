<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Settlement extends Model
{
    use HasFactory;
    public $table = 'settlements';
    public $timestamps = false;
    protected $primaryKey = 'zipcode';
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Machine extends Model
{
    use HasFactory;
    public $table = 'machines';
    public $timestamps = false;

    public function zipcode()
    {
        return $this->belongsTo(Settlement::class, 'zipcode');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Masa extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'masas';
    protected $fillable = ['tahun_masa', 'kd_masa'];
    protected $primaryKey = 'kd_masa';
}

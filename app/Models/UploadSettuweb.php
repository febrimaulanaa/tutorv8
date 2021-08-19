<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UploadSettuweb extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'nama',
        'rekap',
        'kompetensi',
        'rat',
        'sat',
        'kisitugastutorial',
        'materi',
        'materi2',
        'materi3',
        'materi4',
        'materi5',
        'materi6',
        'materi7',
        'materi8',
        'catatan',
        'kisi',
        'kisi2',
        'kisi3',
        'pedoman',
        'pedoman2',
        'pedoman3',
        'tandaterima',
        'tandaterima2',
        'tandaterima3',
        'nilaitertinggi',
        'nilaiterendah',
        'sspertemuan',
    ];
}

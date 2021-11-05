<?php

namespace App\Models;

use App\Models\AnnouncedPuResult;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PollingUnit extends Model
{
    use HasFactory;

    public function announcedpuresult()
    {
        return $this->hasMany(AnnouncedPuResult::class, 'polling_unit_id', 'id');
    }
}

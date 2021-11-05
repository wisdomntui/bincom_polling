<?php

namespace App\Models;

use App\Models\PollingUnit;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AnnouncedPuResult extends Model
{
    use HasFactory;

    public function pollingunit()
    {
        return $this->belongsTo(PollingUnit::class, 'polling_unit_id', 'id');
    }
}

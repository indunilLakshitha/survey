<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CdRecords extends Model
{
    protected $fillable=['cd_no','map_no','created_at','updated_at','user_id'];
}

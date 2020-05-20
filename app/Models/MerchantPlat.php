<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;

use Illuminate\Database\Eloquent\Model;

class MerchantPlat extends Model
{
	use HasDateTimeFormatter;
    protected $table = 'merchant_plats';
    protected $guarded = [];
    public function plat(){
        return $this->belongsTo(Plat::class,'plat_id','id');
    }
}

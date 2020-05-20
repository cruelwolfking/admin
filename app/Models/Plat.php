<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;

use Illuminate\Database\Eloquent\Model;

class Plat extends Model
{
	use HasDateTimeFormatter;

    public function getExtraJsonAttribute($extra)
    {
        return array_values(json_decode($extra, true) ?: []);
    }

    public function setExtraJsonAttribute($extra)
    {
        $this->attributes['extra_json'] = json_encode(array_values($extra));
    }

}

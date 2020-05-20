<?php

namespace App\MerchantAdmin\Controllers;


use App\MerchantAdmin\Pages\MyPlatPage;
use App\Models\AdminUser;
use App\Models\MerchantPlat;
use App\Models\Plat;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Illuminate\Http\Request;

class MerchantPlatController
{

    public function index(Content $content)
    {
        return $content->body(new MyPlatPage());
    }

    public function plats(){
        return Plat::all();
    }

    public function indexlist(){
       return MerchantPlat::query()->with('plat')->where('merchant_id',Admin::user()->id)->paginate(20);
    }

    public function store(Request $request)
    {
        $data =[
            'merchant_id'=>Admin::user()->id,
            'site_title'=>$request->post('site_title'),
            'plat_id'=>$request->post('plat_id'),
            'extra_json'=>json_encode($request->post('extra_json'))
        ];
        if($request->post('id') !== null){
            $res = MerchantPlat::query()->where('id',$request->post('id'))->update($data);

        }else{
            $res = MerchantPlat::create($data);
        }

        if ($res){
            return response()->json([
                'code'=>200,
                'msg'=>'success'
            ]);
        }else{
            return response()->json([
                'code'=>500,
                'msg'=>'fail'
            ]);
        }
    }


    public function delete($id){
        MerchantPlat::query()->where('id',$id)->delete();
        return response()->json([
            'code'=>200,
            'msg'=>'success'
        ]);
    }

    public function changeStatus(Request $request){
        $plat = MerchantPlat::query()->where('id',$request->post('id'))->first();
        $plat->status = !$plat->status;
        $plat->save();
        return response()->json([
            'code'=>200,
            'msg'=>'success'
        ]);
    }

    //机器人人工激活操作

    public function robotHandle(){

    }
}

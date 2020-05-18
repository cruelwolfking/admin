<?php

namespace App\Admin\Forms;

use App\Models\AdminUser;
use Dcat\Admin\Widgets\Form;
use Symfony\Component\HttpFoundation\Response;

class MerchantRecharge extends Form
{
    // 增加一个自定义属性保存用户ID
    protected $id;

    // 构造方法的参数必须设置默认值
    public function __construct($id = null)
    {
        $this->id = $id;
        parent::__construct();
    }

    /**
     * Handle the form request.
     *
     * @param array $input
     *
     * @return Response
     */
    public function handle(array $input)
    {

        // return $this->error('Your error message.');
        $merchant = AdminUser::query()->where('id',$input['id'])->first();
        if($input['recharge_type'] == 0){
            $merchant->amount = $merchant->amount + $input['money'];
            $merchant->save();
        }else{
            $res = $merchant->amount - $input['money'];
            $merchant->amount = $res <0 ?? 0;
            $merchant->save();
        }


        return $this->success('充值成功', '/adminUser');
    }

    /**
     * Build a form here.
     */
    public function form()
    {
        $this->radio('recharge_type','操作')->options([0=>'充值',1=>'扣款'])->default(0);
        $this->number('money','金额')->required();
        $this->hidden('id')->value($this->id);
    }

    /**
     * The data of the form.
     *
     * @return array
     */
    public function default()
    {
        return [
            'recharge_type'  => 0,
            'money' => 0,

        ];

    }
}

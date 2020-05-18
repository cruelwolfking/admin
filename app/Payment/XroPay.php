<?php


namespace App\PayChannels\XroPay;

use App\Models\Order;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Jenssegers\Agent\Agent;

class XroPay implements \App\PayChannels\Api
{
    protected $notify;
    protected $return;
    public function index($config,array $params)
    {
        // TODO: Implement index() method.
        $price = $params['amount']; # 从 URL 获取充值金额 price
        $name = $params['shop_title'];  # 订单商品名称
        $pay_type = 'alipay';     # 付款方式
        $order_id =$params['order_no'];    # 自己创建的本地订单号
        $notify_url = env('APP_URL').'/api/notify/XroPay/'.$config->id;   # 回调通知地址
        $secret = $config->md5_key;     # app secret, 在个人中心配置页面查看
        $api_url = $config->base_host.'/api/pay/'.$config->merchant_no;   # 付款请求接口，在个人中心配置页面查看
        $sign = self::sign(array($name, $pay_type, $price, $order_id, $notify_url, $secret));
        $response = Http::asForm()->post($api_url, [
            'name' => $name,
            'pay_type' =>$pay_type,
            'price'=>$price,
            'order_id'=>$order_id,
            'notify_url'=>$notify_url,
            'sign'=>$sign
        ]);
        Log::info($response->body());
        $agent  = new Agent();
        if($response['status']=='ok'){
            $data=[
                'code'=>200,
                'data'=>[
                    'pay_url'=>$response['info']['qr'],
                    'order_no'=>$order_id,
                    'expires_time'=>$response['expires_in'],
                    'is_mobile'=>$agent->isMobile()
                ],
                'msg'=>''
            ];
            DB::table('orders')->where('order_no',$order_id)->update(['out_trade_no'=>$response['aoid']]);
        }else{
            $data=[
                'code'=>500,
                'data'=>[
                ],
                'msg'=>$response['status']
            ];
        }
        return \Illuminate\Support\Facades\Response::json($data);
    }

    public function notify($config,array $params)
    {
        $sign = self::sign(array($params['aoid'], $params['order_id'], $params['pay_price'], $params['pay_time'], $config->md5_key));
        # 对比签名
        DB::beginTransaction();
        try{
            $res = Order::query()->where('out_trade_no',$params['aoid'])->sharedLock()->first();
            if($sign == $params['sign']) {
                # 签名验证成功，更新数据
                //查看金额是否一致
                if($params['pay_price'] == $res->amount){
                    if($res->api_notify_url != null && $res->api_notify_status == 0){
                        $data =  [
                            'order_no' => $res->order_no,
                            'amount' =>$res->amount,
                            'pay_time'=>$params['pay_time'],
                            'merchant_id'=>$res->merchant_id,
                            'notify_url'=>$res->api_notify_url,
                        ];
                        $merchant = DB::table('setting')->where('merchant_id',$res->merchant_id)->first();
                        $sign = sort($data).$merchant->merchant_key;
                        $data['sign']=$sign;
                        $response = Http::asForm()->post($res->api_notify_url,$data);
                        if($response =='ok'){
                            $res->pay_status =1;
                            $res->pay_time =$params['pay_time'];
                            $res->notify_status =1;
                            $res->api_notify_status =1;
                            $res->save();
                            echo 'ok';
                        }else{
                            echo 'fail';
                        }

                    }else{
                        $res->pay_status =1;
                        $res->pay_time =$params['pay_time'];
                        $res->notify_status =1;
                        $res->save();
                        //查看是否需要同步上分
                        echo 'ok';
                    }

                }else{
                    $res->pay_status =2;
                    $res->pay_time =$params['pay_time'];
                    $res->notify_status =1;
                    $res->notify_param = json_encode($params);
                    $res->remarks = '金额效验失败';
                    $res->save();
                }

            } else {
                # 签名验证错误
                $res->pay_status =2;
                $res->pay_time =$params['pay_time'];
                $res->notify_status =1;
                $res->notify_param = json_encode($params);
                $res->remarks = '异步回调验签失败';
                $res->save();
                header("HTTP/1.0 405 Method Not Allowed");
                exit();
            };
            DB::commit();
        }catch (\Exception $exception){
            Log::error('xropay 错误：'.['params'=>$params,'errInfo'=>$exception->getLine().' on '.$exception->getFile().' because '.$exception->getMessage()]);
            DB::rollBack();
        }


    }

    protected function sign($data_arr) {
        return md5(join('',$data_arr));
    }
}
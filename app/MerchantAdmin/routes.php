<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->get('/plat_list', 'MerchantPlatController@plats');
    $router->resource('/merchant-plats', 'MerchantPlatController');
    $router->get('/merchant/plats', 'MerchantPlatController@indexlist');//自己平台列表
    $router->post('/merchant/changeStatus', 'MerchantPlatController@changeStatus');//启用/关闭
    $router->post('/merchant/robotHandle', 'MerchantPlatController@robotHandle');//机器人启用/关闭
    $router->get('/merchant/delete/{id}', 'MerchantPlatController@delete');
});

<?php
/**
 * Created by PhpStorm.
 * User: mac
 * Date: 2020-05-20
 * Time: 23:01
 */

namespace App\MerchantAdmin\Pages;

use Illuminate\Contracts\Support\Renderable;
use Dcat\Admin\Admin;

class MyPlatPage implements  Renderable
{
    // 定义页面所需的静态资源，这里会按需加载
    public static $js = [
        '//vuejs.org/js/vue.min.js',
        //'//unpkg.com/view-design/dist/iview.min.js',
        'https://unpkg.com/element-ui/lib/index.js',
        'https://unpkg.com/axios/dist/axios.min.js',
    ];
    public static $css = [
        //'//unpkg.com/view-design/dist/styles/iview.css',
        'https://unpkg.com/element-ui/lib/theme-chalk/index.css',
    ];

    public function script()
    {
        return <<<JS
        console.log('所有JS脚本都加载完了');
JS;
    }

    public function render()
    {
        // 在这里可以引入你的js或css文件
        Admin::js(static::$js);
        Admin::css(static::$css);

        // 需要在页面执行的JS代码
        // 通过 Admin::script 设置的JS代码会自动在所有JS脚本都加载完毕后执行
        Admin::script($this->script());

        return view('pages.MyPlatPage')->render();
    }

}
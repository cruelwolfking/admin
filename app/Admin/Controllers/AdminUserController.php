<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\AdminUser;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class AdminUserController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new AdminUser(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->username;
           // $grid->password;
            $grid->name;
            $grid->avatar->image('','50','50');
            //$grid->remember_token;
            $grid->amount;
            $grid->havedJoin->using([0=>'尚未加入',1 => '已加入', 2 => '尚未加入'])->label([
                'default' => 'primary', // 设置默认颜色，不设置则默认为 default
                0 => 'primary',
                1 => 'success',
            ]);
            $grid->join_money;
            $grid->rate;
            $grid->join_type->display(function ($v){
                if($v == 1){
                    return '<span >按费率</span>';
                }else{
                    return '<span>月付</span>';
                }
            });
            $grid->expire_time;
            $grid->status->switch();
            $grid->updated_at->sortable();
        
            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
        
            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new AdminUser(), function (Show $show) {
            $show->id;
            $show->username;
            $show->password;
            $show->name;
            $show->avatar;
            $show->remember_token;
            $show->amount;
            $show->havedJoin;
            $show->join_money;
            $show->rate;
            $show->join_type;
            $show->expire_time;
            $show->created_at;
            $show->updated_at;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new AdminUser(), function (Form $form) {
            $form->display('id');
            $form->text('username');
            $form->text('name');
            $form->image('avatar');
            $form->number('amount');
            $form->radio('havedJoin')->options([0=>"未加入",1=>"已加入"]);
            $form->number('join_money');
            $form->number('rate');
            $form->radio('join_type')->options([1=>"收费率",2=>"月付"]);
            $form->datetime('expire_time');

            $form->password('password', trans('admin.password'))
                ->required()
                ->minLength(5)
                ->maxLength(20);
            $form->password('password_confirmation', trans('admin.password_confirmation'))->same('password');

            $form->ignore(['password_confirmation']);
            $form->display('created_at');
            $form->display('updated_at');
        })->saving(function (Form $form) {
            if ($form->password && $form->model()->get('password') != $form->password) {
                $form->password = bcrypt($form->password);
            }

            if (! $form->password) {
                $form->deleteInput('password');
            }
        });;
    }
}

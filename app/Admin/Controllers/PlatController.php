<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Plat;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class PlatController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Plat(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->name;
            $grid->extra_json;
            $grid->status->switch();
            $grid->created_at;
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
        return Show::make($id, new Plat(), function (Show $show) {
            $show->id;
            $show->name;
            $show->extra_json;
            $show->status;
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
        return Form::make(new Plat(), function (Form $form) {
            $form->display('id');
            $form->text('name');
            $form->table('extra_json', function (Form\NestedForm $table) {
                $table->text('key');
                $table->text('value');
                $table->text('desc');
            });

            $form->radio('status')->options([0=>'否',1=>'是'])->default(1);
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}

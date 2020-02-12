<?php

use kartik\grid\DataColumn;
use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefCpmk */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Referensi CPMK';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel CPMK</h1>
    </div>

    <div class="panel-body">

        <p align="right">
            <?= Html::a('Tambah Cpmk', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>
        <?php
        // foreach ($searchModel as $value) {
        // echo "<pre>";
        // print_r($searchModel);
        // exit;
        // }
        ?>
        <?= GridView::widget([

            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id',
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_ref_mata_kuliah',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refMataKuliah']->nama; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'kode',
                    'value' => function ($dataProvider) {
                        return $dataProvider->kode; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],

                // 'kode',
                'isi:ntext',
                // 'status',
                //'created_at',
                //'updated_at',
                //'created_user',
                //'updated_user',
                // [
                //     'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                //     'attribute' => 'ref_cpl.kode',
                //     'value' => function ($dataProvider) {
                //         return $dataProvider['refCpl']->kode; // $data['name'] for array data, e.g. using SqlDataProvider.
                //     },
                // ],
                ['class' => 'yii\grid\ActionColumn'],
                // [
                    // 'class' => 'kartik\grid\ActionColumn',
                    // 'template' => '{all}',
                    // 'buttons' => [
                    //     'all' => function ($url, $model, $key) {
                    //         $view = Html::a(
                    //             '<i class="mdi mdi-table-border"></i>',
                    //             ['/ref-cpmk/view', 'id' => $model->id,'idcpl' => $model['refCpl']->id],
                    //             [
                    //                 'class' => 'btn-sm btn btn-dark',
                    //                 'data' => [
                    //                     'toggle' => 'tooltip',
                    //                     'title' => 'Lihat',
                    //                 ],
                    //             ]
                    //         );

                    //         $update = Html::a(
                    //             '<i class="mdi mdi-grease-pencil"></i>',
                    //             ['/ref-cpmk/update', 'id' => $model->id],
                    //             [
                    //                 'class' => 'btn-sm btn btn-primary',
                    //                 'data' => [
                    //                     'toggle' => 'tooltip',
                    //                     'title' => 'Perbarui',
                    //                 ],
                    //             ]
                    //         );

                    //         $delete = Html::a(
                    //             '<i class="mdi mdi-trash-can"></i>',
                    //             ['/ref-cpmk/delete', 'id' => $model->id],
                    //             [
                    //                 'class' => 'btn-sm btn btn-danger',
                    //                 'data' => [
                    //                     'toggle' => 'tooltip',
                    //                     'title' => 'Hapus',
                    //                     'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                    //                     'method' => 'post',
                    //                 ],
                    //             ]
                    //         );
                    //         return "<div class='btn-group'>
                    //             {$view}
                    //             {$update}
                    //             {$delete}
                    //         </div>";
                    //     },
                    // ],
                // ],
            ],
        ]); ?>
    </div>
</div>
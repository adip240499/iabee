<?php

use backend\models\FileUpload;
use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;
use phpDocumentor\Reflection\Types\Null_;
use PHPUnit\Framework\Constraint\IsNull;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\MataKuliahTayang */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Mata Kuliah Tayang';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Data</h1>
    </div>
    <div class="panel-body">
        <?php
        if (Yii::$app->User->can('administrator')) {
        ?>
            <p align="right">
                <?= Html::a('Tambah', ['create'], ['class' => 'btn btn-success']) ?>
            </p>
        <?php
        }
        ?>
        <?php Pjax::begin(); ?>
        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel'  => $searchModel,
            'columns'      => [
                ['class' => 'yii\grid\SerialColumn'],

                [
                    'class'     => 'yii\grid\DataColumn',      // can be omitted, as it is the default
                    'attribute' => 'id_tahun_ajaran',
                    'value'     => function ($dataProvider) {
                        return $dataProvider['tahunAjaran']->tahun; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                'semester',
                [
                    'class'     => 'yii\grid\DataColumn',      // can be omitted, as it is the default
                    'attribute' => 'id_ref_mata_kuliah',
                    'value'     => function ($dataProvider) {
                        return $dataProvider['refMataKuliah']->nama; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class'     => 'yii\grid\DataColumn',      // can be omitted, as it is the default
                    'attribute' => 'id_ref_kelas',
                    'value'     => function ($dataProvider) {
                        return $dataProvider['refKelas']->kelas; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],

                [
                    'class'    => 'kartik\grid\ActionColumn',
                    'template' => '{all}',
                    'header'   => 'Import KRS',
                    'visible'  => !Yii::$app->user->can("dosen"),
                    'buttons'  => [
                        'all' => function ($url, $model, $key) {
                            if (FileUpload::findOne(['id_mata_kuliah_tayang' => $model->id, 'jenis' => 'krs'])) {
                                $krs = Html::a(
                                    '<span class="glyphicon glyphicon-eye-open"> KRS</span>',
                                    ['/krs', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-primary',
                                    ]
                                );
                            } else {
                                $krs = Html::a(
                                    '<i class="glyphicon glyphicon-eye-open"> KRS</i>',
                                    ['/krs', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-warning',
                                    ]
                                );
                            }
                            return "<div class='btn-group'>
                                {$krs}
                            </div>";
                        },
                    ],
                ],
                [
                    'class' => 'kartik\grid\ActionColumn',
                    'template' => '{all}',
                    'header'   => 'Import Nilai',
                    // 'visible' => !Yii::$app->assign->is(["Pimpinan"]),
                    'buttons' => [
                        'all' => function ($url, $model, $key) {
                            if (!(FileUpload::findOne(['id_mata_kuliah_tayang' => $model->id, 'jenis' => 'krs']))) {
                                $nilai = Html::a(
                                    '<i class="glyphicon glyphicon-eye-open"> Nilai</i>',
                                    ['#'],
                                    [
                                        'class'        => 'btn-sm btn btn-danger',
                                        'title'        => 'Kartu Rencana Studi Belum di UPLOAD ADMINISTRATOR',
                                    ]
                                );
                            } else if (FileUpload::findOne(['id_mata_kuliah_tayang' => $model->id, 'jenis' => 'nilai'])) {
                                $nilai = Html::a(
                                    '<span class="glyphicon glyphicon-eye-open"> Nilai</span>',
                                    ['/data-utama', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-primary',
                                    ]
                                );
                            } else {
                                $nilai = Html::a(
                                    '<i class="glyphicon glyphicon-eye-open"> Nilai</i>',
                                    ['/data-utama', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-warning',
                                    ]
                                );
                            }
                            return "<div class='btn-group'>
                                {$nilai}
                            </div>";
                        },
                    ],
                ],


                // ['class' => 'yii\grid\ActionColumn'],
                [
                    'class' => 'kartik\grid\ActionColumn',
                    'options' => [
                        'style' => 'min-width: 100px',
                    ],
                    'template' => '{view} {update} {delete}',
                    'dropdown' => false,
                    'vAlign' => 'middle',
                    // 'urlCreator' => function($action, $model, $key, $index) {
                    //     $url = Url::to([$action, 'id' => $key]);
                    //     return $url;
                    // },
                    'buttons' => [
                        'view' => function ($url, $model) {
                            return Html::a('<i class="fa fa-eye"></i>', $url, [
                                'data-original-title' => 'Lihat',
                                'title'               => 'Lihat',
                                'data-toggle'         => 'tooltip',
                                'class'               => 'btn btn-primary btn-xs',
                                // 'role'                => 'modal-remote',
                            ]);
                        },
                        'update' => function ($url, $model) {
                            return Html::a('<i class="fa fa-pencil"></i>', $url, [
                                'data-original-title' => 'Perbarui',
                                'title'               => 'Perbarui',
                                'data-toggle'         => 'tooltip',
                                'class'               => 'btn btn-warning btn-xs',
                                // 'role'                => 'modal-remote',
                            ]);
                        },
                        'delete' => function ($url, $model) {
                            return Html::a('<i class="fa fa-trash"></i>', $url, [
                                'data-original-title'  => 'Hapus',
                                'title'                => 'Hapus',
                                'data-toggle'          => 'tooltip',
                                'class'                => 'btn btn-danger btn-xs',
                                'role'                 => 'modal-remote',
                                'data-confirm'         => false,
                                'data-method'          => false, // for overide yii data api
                                'data-request-method'  => 'post',
                                'data-confirm-title'   => 'Konfirmasi',
                                'data-confirm-message' => 'Apakah anda yakin akan menghapus data ini?',
                            ]);
                        }
                    ],
                    'visibleButtons' =>
                    [
                        'update' => Yii::$app->user->can('administrator'),
                        'delete' => Yii::$app->user->can('administrator'),
                    ]
                ],
            ],
        ]); ?>

        <?php Pjax::end(); ?>
    </div>
</div>
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
        <p align="right">
            <?= Html::a('Tambah', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php Pjax::begin(); ?>
        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_tahun_ajaran',
                    'value' => function ($dataProvider) {
                        return $dataProvider['tahunAjaran']->tahun; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                'semester',
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_ref_mata_kuliah',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refMataKuliah']->nama; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_ref_kelas',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refKelas']->kelas; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class' => 'kartik\grid\ActionColumn',
                    'template' => '{all}',
                    'header'   => 'Import KRS',
                    // 'visible' => !Yii::$app->assign->is(["Pimpinan"]),
                    'buttons' => [
                        'all' => function ($url, $model, $key) {
                            if (FileUpload::findOne(['id_mata_kuliah_tayang' => $model->id, 'jenis' => 'nilai'])) {
                                $krs = Html::a(
                                    '<span class="glyphicon glyphicon-eye-open"> KRS</span>',
                                    ['/data-utama', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-primary',
                                    ]
                                );
                            } else {
                                $krs = Html::a(
                                    '<i class="glyphicon glyphicon-eye-open"> KRS</i>',
                                    ['/data-utama', 'jk' => $model->id],
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
                            if (FileUpload::findOne(['id_mata_kuliah_tayang' => $model->id, 'jenis' => 'nilai'])) {
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


                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>

        <?php Pjax::end(); ?>
    </div>
</div>
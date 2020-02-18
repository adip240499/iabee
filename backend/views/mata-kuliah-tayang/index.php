<?php

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
                    // 'visible' => !Yii::$app->assign->is(["Pimpinan"]),
                    'buttons' => [
                        'all' => function ($url, $model, $key) {
                            $view = Html::a(
                                '<i class="mdi mdi-table-border"></i>',
                                ['view', 'id' => $model->id],
                                [
                                    'class' => 'btn-sm btn btn-dark',
                                    'data' => [
                                        'toggle' => 'tooltip',
                                        'title' => 'Lihat',
                                    ],
                                ]
                            );
                            $file_nilai = 1;
                            if (!empty($file_nilai)) {
                                $update = Html::a(
                                    '<span class="glyphicon glyphicon-eye-open"> Nilai</span>',
                                    ['/data-utama', 'jk' => $model->id],
                                    [
                                        'class' => 'btn-sm btn btn-primary',
                                    ]
                                );
                            } else {
                                $update = Html::a(
                                    '<i class="glyphicon glyphicon-eye-open"> Nilai</i>',
                                    ['mata-kuliah-tayang/file-nilai'],
                                    [
                                        'class' => 'btn-sm btn btn-warning',
                                    ]
                                );
                            }


                            $delete = Html::a(
                                'Delete',
                                ['delete', 'id' => $model->id],
                                [
                                    'class' => 'btn-sm btn btn-danger',
                                    'data' => [
                                        'toggle' => 'tooltip',
                                        'title' => 'Hapus',
                                        'confirm' => Yii::t('yii', 'Are you sure you want to delete this item?'),
                                        'method' => 'post',
                                    ],
                                ]
                            );

                            // $update = !$model->is_end ? $update : '';

                            return "<div class='btn-group'>
                                {$update},
                                {$delete}
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
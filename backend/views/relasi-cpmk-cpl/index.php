<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RelasiCpmkCpl */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Relasi CPMK CPL';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Relasi</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Tambah Relasi', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>
        <?php
        // echo '<pre>';
        // print_r($dataProvider['refCpmk']);
        // exit;
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id',
                // 'id_ref_cpmk',
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_ref_cpmk',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refMataKuliah']->nama; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'kode',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refCpmk']->kode; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'isi',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refCpmk']->isi; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                // 'id_ref_cpl',
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'id_ref_cpl',
                    'value' => function ($dataProvider) {
                        return $dataProvider['refCpl']->kode; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                // 'status',
                // 'created_at',
                //'updated_at',
                //'created_user',
                //'updated_user',

                ['class' => 'yii\grid\ActionColumn'],
            ],

        ]);
        ?>
    </div>
</div>
<?php

use yii\helpers\Html;
use yii\grid\GridView;
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
                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>

        <?php Pjax::end(); ?>
    </div>
</div>
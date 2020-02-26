<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefMahasiswa */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Referensi Mahasiswa';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Mahasiswa</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Tambah Mahasiswa', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id',
                'nim',
                'nama',
                'angkatan',
                // 'status',
                [
                    'class' => 'yii\grid\DataColumn', // can be omitted, as it is the default
                    'attribute' => 'status',
                    'value' => function ($dataProvider) {
                        if ($dataProvider->status == 1) {
                            return 'Aktif';
                        } elseif ($dataProvider->status == 9) {
                            return 'DO';
                        } elseif ($dataProvider->status == 8) {
                            return 'Lulus';
                        } elseif ($dataProvider->status == 7) {
                            return 'Undur Diri';
                        } elseif ($dataProvider->status == 6) {
                            return 'Hilang';
                        } elseif ($dataProvider->status == 5) {
                            return 'Meninggal Dunia';
                        }
                        // return $dataProvider->status; // $data['name'] for array data, e.g. using SqlDataProvider.
                    },
                ],
                //'created_at',
                //'updated_at',
                //'created_user',
                //'updated_user',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>
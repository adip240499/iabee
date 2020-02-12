<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefMataKuliah */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Referensi Mata Kuliah';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Mata Kuliah</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Tambah Mata Kuliah', ['create'], ['class' => 'btn btn-success']) ?>
        </p>
        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id',
                'kode',
                'nama',
                'sks',
                // 'status',
                //'created_at',
                //'updated_at',
                //'created_user',
                //'updated_user',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>
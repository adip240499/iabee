<?php

use yii\helpers\Html;
// use yii\grid\GridView;
use kartik\grid\GridView;


/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefKelas */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Referensi Kelas';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Kelas</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Tambah Kelas', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'kelas',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>
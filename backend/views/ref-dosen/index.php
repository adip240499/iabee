<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefDosen */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dosen Pengajar';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Tabel Dosen</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Create Ref Dosen', ['create'], ['class' => 'btn btn-success']) ?>
        </p>

        <?php // echo $this->render('_search', ['model' => $searchModel]); 
        ?>

        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                // 'id',
                'kode_dosen',
                'nip',
                'nama_dosen',
                'status',
                //'created_at',
                //'updated_at',
                //'created_user',
                //'updated_user',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>
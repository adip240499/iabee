<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Krs */

// $this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Krs', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'View';
\yii\web\YiiAsset::register($this);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Data</h1>
    </div>
    <div class="panel-body">
        <p align="right">
            <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
            <?= Html::a('Delete', ['delete', 'id' => $model->id], [
                'class' => 'btn btn-danger',
                'data' => [
                    'confirm' => 'Are you sure you want to delete this item?',
                    'method' => 'post',
                ],
            ]) ?>
        </p>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                // 'id',
                'id_ref_mahasiswa',
                'id_mata_kuliah_tayang',
                // 'created_at',
                // 'updated_at',
                // 'created_user',
                // 'updated_user',
            ],
        ]) ?>
    </div>
</div>
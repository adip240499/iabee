<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RefKelas */

$this->title = $model->kelas;
$this->params['breadcrumbs'][] = ['label' => 'Referensi Kelas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Data Kelas <?= Html::encode($this->title) ?></h1>
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
                'kelas',
            ],
        ]) ?>
    </div>
</div>
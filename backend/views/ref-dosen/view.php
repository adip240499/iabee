<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RefDosen */

// $this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Dosen Pengajar', 'url' => ['index']];
$this->params['breadcrumbs'][] = 'View';
\yii\web\YiiAsset::register($this);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title"><?= Html::encode($this->title) ?></h1>
    </div>
    <div class="panel-body">
        <?php
        if (Yii::$app->User->can('administrator')) {
        ?>
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
        <?php
        }
        ?>

        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                // 'id',
                'kode_dosen',
                'nip',
                'nama_dosen',
                'status',
                // 'created_at',
                // 'updated_at',
                // 'created_user',
                // 'updated_user',
            ],
        ]) ?>
    </div>
</div>
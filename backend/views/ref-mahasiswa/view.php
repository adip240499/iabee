<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\RefMahasiswa */

$this->title = $model->nim;
$this->params['breadcrumbs'][] = ['label' => 'Mahasiswa', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Data <?php echo $model->nama ?></h1>
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
        <?php
            if ($model->status==1) {
                $status = 'Aktif';
            }elseif ($model->status==9) {
                $status = 'Tidak Aktif';
            }elseif ($model->status==8) {
                $status = 'Lulus';
            }elseif ($model->status==7) {
                $status = 'Undur Diri';
            }elseif ($model->status==6) {
                $status = 'Hilang';
            }
        ?>
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'nim',
                'nama',
                'angkatan',
                [                                                  // the owner name of the model
                    'label' => 'Status',
                    'value' => $status,
                ],
            ],
        ]) ?>
    </div>
</div>
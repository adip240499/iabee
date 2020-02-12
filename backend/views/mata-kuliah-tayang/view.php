<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\MataKuliahTayang */

// $this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Mata Kuliah Tayang', 'url' => ['index']];
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
                [                                                  // the owner name of the model
                    'label' => 'Tahun Ajaran',
                    'value' => $model['tahunAjaran']->tahun,
                ],
                'semester',
                [                                                  // the owner name of the model
                    'label' => 'Mata Kuliah',
                    'value' => $model['refMataKuliah']->nama,
                ],
                [                                                  // the owner name of the model
                    'label' => 'Kelas',
                    'value' => $model['refKelas']->kelas,
                ],
                [                                                  // the owner name of the model
                    'label' => 'Dosen Pengajar',
                    'value' => $model['refDosen']->nama_dosen,
                ],
            ],
        ]) ?>
    </div>
</div>
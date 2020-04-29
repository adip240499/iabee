<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\RelasiCpmkCpl */

$this->title = 'Tambah Relasi CPMK CPL';
$this->params['breadcrumbs'][] = ['label' => 'Relasi CPMK CPL', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title">Relasi Baru</h1>
    </div>
    <div class="panel-body">
        <?= $this->render('_form', [
            'model' => $model,
            'model1' => $model1,
        ]) ?>
    </div>
</div>
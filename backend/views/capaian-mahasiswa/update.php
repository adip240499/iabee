<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\CapaianMahasiswa */

$this->title = 'Update Capaian Mahasiswa: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Capaian Mahasiswas', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="capaian-mahasiswa-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

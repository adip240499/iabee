<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\CapaianMahasiswa */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="capaian-mahasiswa-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_ref_cpmk')->textInput() ?>

    <?= $form->field($model, 'id_ref_mahasiswa')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nilai')->textInput() ?>

    <?= $form->field($model, 'semester')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <?= $form->field($model, 'created_user')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'updated_user')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

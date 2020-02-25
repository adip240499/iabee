<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RefMahasiswa */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ref-mahasiswa-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nim')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'angkatan')->textInput() ?>

    <?= $form->field($model, 'status')->dropDownList(
        [
            '1' => 'Aktif',
            '9' => 'Tidak Aktif',
            '8' => 'Lulus',
            '7' => 'Undur Diri',
            '6' => 'Hilang',
        ]
    ) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
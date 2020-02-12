<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RefKelas */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ref-kelas-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kelas')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

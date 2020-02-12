<?php

use backend\models\RefCpl;
use backend\models\RefCpmk;
use backend\models\searchs\RefMataKuliah;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\web\JsExpression;
use yii\web\View;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RelasiCpmkCpl */
/* @var $form yii\widgets\ActiveForm */

?>

<div class="relasi-cpmk-cpl-form">

    <?php $form = ActiveForm::begin(); ?>


    <!-- <?= $form->field($model, 'id_ref_cpmk')->textInput() ?> -->
    <?php
    $datas = RefCpmk::find()
        ->joinWith(['refMataKuliah'])
        ->all();
    $cpmk = ArrayHelper::map($datas, 'id', 'refMataKuliah.nama', 'kode');

    echo $form->field($model, 'id_ref_cpmk')->widget(Select2::classname(), [
        'data' => $cpmk,
        'options' => [
            'placeholder' => '- Pilih -'
        ],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]);
    $datas = RefCpl::find()
        // ->joinWith(['refMataKuliah'])
        ->all();
    $cpl = ArrayHelper::map($datas, 'id', 'isi','kode');

    echo $form->field($model, 'id_ref_cpl')->widget(Select2::classname(), [
        'data' => $cpl,
        'options' => [
            'placeholder' => '- Pilih -'
        ],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]);
    ?>


    <!-- <?= $form->field($model, 'id_ref_cpl')->textInput() ?> -->

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
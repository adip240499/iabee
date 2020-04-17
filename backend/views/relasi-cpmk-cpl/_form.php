<?php

use backend\models\RefCpl;
use backend\models\RefCpmk;
use backend\models\RefMataKuliah as ModelsRefMataKuliah;
use backend\models\searchs\RefMataKuliah;
use kartik\widgets\DepDrop;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;
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
        ->asArray()
        ->all();
    // $cpmk = ArrayHelper::map($datas, 'id', 'kode', 'refMataKuliah.nama');

    // foreach ($cpmk as $key) {
    //     $row = $cpmk 
    // }
    
    $mk = ModelsRefMataKuliah::findAll(['status'=>1]);
    $mk = ArrayHelper::map($mk, 'id', 'nama');

    echo $form->field($model1, 'id_ref_mata_kuliah')->dropDownList($mk, ['id'=>'nama-id']);

    echo $form->field($model, 'id_ref_cpmk')->widget(DepDrop::classname(), [
        'options' => [
            'placeholder' => '- Pilih -'
        ],
        'pluginOptions' => [
            'depends'=>['nama-id'],
            'url'=>Url::to(['/relasi-cpmk-cpl/cpmk']),
            'allowClear' => true

        ],
    ]);

    $datas = RefCpl::find()
        ->all();
    $cpl = ArrayHelper::map($datas, 'id', 'isi', 'kode');

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
        <?= Html::button(
            'Back',
            array(
                'name' => 'btnBack',
                'class' => 'btn btn-danger',
                'onclick' => "history.go(-1)",
            )
        ); ?>
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
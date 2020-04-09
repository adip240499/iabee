<?php


use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\select2\Select2;

?>

<div style="margin: 0 12px 20px;">
    <?php $form = ActiveForm::begin([
        // 'action'    => Url::to(['download', 'dl' => 1])
    ]); ?>
    <?php
    // echo "<pre>";
    // print_r($mahasiswa);
    // exit;
    echo $form->field($model, 'angkatan')->widget(Select2::classname(), [
        'data' => $angkatan,
        'options' => [
            // 'id'    => 'id_tahun_ajaran',
            // 'name'  => 'id_tahun_ajaran',
            'placeholder' => '- Pilih -'
        ],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]);

    ?>
    <?php ActiveForm::end(); ?>
</div>
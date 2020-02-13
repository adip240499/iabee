<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\Json;
use yii\bootstrap\ActiveForm;
use kartik\widgets\FileInput;
use kartik\export\ExportMenu;
use kartik\widgets\SwitchInput;



/* @var $this yii\web\View */
/* @var $searchModel backend\models\searchs\RefKelas */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Import Nilai';
$this->params['breadcrumbs'][] = $this->title;
// $id_tahun_ajaran = Yii::$app->request->post('id_tahun_ajaran');
// $id_ref_semester = Yii::$app->request->post('id_ref_semester');
// $id_ref_mata_kuliah = Yii::$app->request->post('id_ref_mata_kuliah');
// $id_ref_kelas = Yii::$app->request->post('id_ref_kelas');
$url = Url::to(['', 'update' => $update]);
$urlOn = Url::to(['', 'update' => 1, $update]);
$urlOf = Url::to(['', 'update' => 0, $update]);


?>
<!-- <div class="row">
    <div class="col-md-6">
        <div class="box box-default">
            <div class="box-body ">
                <form action="data-utama">
                    <div class="form-group">
                        <label>Tahun Ajaran</label>
                        <select class="form-control select2" name="id_ref_mata_kuliah" style="width: 100%;">
                            <option selected="selected" disabled>- Pilih -</option>
                            <option value="1">2019/2020</option>
                            <option value="2">2020/2021</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <label>Semester</label>
                        <select class="form-control select2" name="id_ref_kelas" style="width: 100%;">
                            <option selected="selected" disabled>- Pilih -</option>
                            <option value="1">Ganjil</option>
                            <option value="2">Genap</option>
                        </select>
                    </div>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="box box-default">
            <div class="box-body ">
                <div class="form-group">
                    <label>Mata Kuliah</label>
                    <select class="form-control select2" name="id_tahun_ajaran" style="width: 100%;">
                        <option selected="selected" disabled>- Pilih -</option>
                        <option value="EE1">EExxx - Pemrograman Dasar</option>
                        <option value="EE2">EExxx - Pemrograman Lanjut</option>
                        <option value="EE3">EExxx - Basis Data</option>
                        <option value="EE4">EExxx - Kecerdasan Buatan</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Kelas</label>
                    <select class="form-control select2" name="id_tahun_ajaran" style="width: 100%;">
                        <option selected="selected" disabled>- Pilih -</option>
                        <option value="1">A</option>
                        <option value="2">B</option>
                        <option value="3">C</option>
                    </select>
                </div>
                <div class="form-group">
                    <div class="col-lg-12 ml-auto">
                        <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-download"></i> Download Template</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div> -->


<div class="import-nilai-index panel panel-default">
    <div class="panel-heading">
        <h1><?= Html::encode($this->title) ?></h1>
        <p>
            <?php echo Html::a('<i class="fa fa-download"></i> Template Excel', ['landing-download'], [
                'class' => 'btn btn-success btn-flat',
                'role'=> 'modal-remote',
            ]) ?>
            <?php

            $query = \backend\models\RefCpmk::find()
                ->where(['id_ref_mata_kuliah' => 2]);
            $dataProvider = new yii\data\ActiveDataProvider([
                'query' => $query,
                'pagination' => false,
                'sort' => [
                    'defaultOrder' => [
                        'kode' => SORT_ASC,
                    ]
                ],
            ]);
            // echo "<pre>";print_r($dataProvider);exit;

            echo ExportMenu::widget([
                'dataProvider' => $dataProvider,
                'columns'      => [
                    [
                        'attribute' => 'kode',
                        'label'     => 'Kode CPMK',
                    ],
                    'id_ref_mata_kuliah',
                    'id',
                    'isi',
                ],
                'dropdownOptions' => [
                    'label' => 'Ref CPMK',
                    'class' => 'btn btn-default',
                    'itemsBefore' => [
                        '',
                    ],
                ],
                'showConfirmAlert' => false,
                'showColumnSelector' => false,
                'exportConfig' => [
                    ExportMenu::FORMAT_TEXT => false,
                    // ExportMenu::FORMAT_PDF => true,
                    ExportMenu::FORMAT_HTML => false,
                    ExportMenu::FORMAT_EXCEL => false,
                    // ExportMenu::FORMAT_EXCEL_X => false,
                    ExportMenu::FORMAT_CSV => false,
                ],
                'target' => '_blank',
            ]);

            $query = \backend\models\RefMahasiswa::find();
            $dataMahasiswa = new yii\data\ActiveDataProvider([
                'query' => $query,
                'pagination' => false,
                'sort' => [
                    'defaultOrder' => [
                        'nim' => SORT_ASC,
                    ]
                ],
            ]);
            echo ExportMenu::widget([
                'dataProvider' => $dataMahasiswa,
                'columns'      => [
                    [
                        'attribute' => 'nim',
                        'label'     => 'NIM',
                    ],
                    'nama',
                    'angkatan',
                ],
                'dropdownOptions' => [
                    'label' => 'Mahasiswa',
                    'class' => 'btn btn-default',
                    'itemsBefore' => [
                        '',
                    ],
                ],
                'showConfirmAlert' => false,
                'showColumnSelector' => false,
                'exportConfig' => [
                    ExportMenu::FORMAT_TEXT => false,
                    // ExportMenu::FORMAT_PDF => true,
                    ExportMenu::FORMAT_HTML => false,
                    ExportMenu::FORMAT_EXCEL => false,
                    // ExportMenu::FORMAT_EXCEL_X => false,
                    ExportMenu::FORMAT_CSV => false,
                ],
                'target' => '_blank',
            ]);
            ?>
        </p>
    </div>

    <div class="panel-body">
        <span style="font-size: 12px;">Jika Data Sudah Ada :</span>
        <?php echo SwitchInput::widget([
            'name'          => 'update',
            'value'            => $update,
            'pluginOptions' => [
                'size'     => 'small',
                'onText'   => 'Perbarui',
                'offText'  => 'Lewati',
                'onColor'  => 'danger',
                'offColor' => 'primary',
            ],
            'pluginEvents' => [
                'switchChange.bootstrapSwitch' => "function(e, s) {
					if (s) {
						$('#form-main').attr('action', '$urlOn');
					} else {
						$('#form-main').attr('action', '$urlOf');
					}
				}",
            ],
        ]); ?>

        <?php $form = ActiveForm::begin([
            'id'      => 'form-main',
            'action'  => $url,
            'options' => [
                'enctype' => 'multipart/form-data',
            ]
        ]) ?>
        <?php echo $form->field($model, 'file')->widget(FileInput::classname(), [
            'pluginOptions' => [
                'showRemove' => true,
                'uploadLabel' => 'Import',
            ],
            'options' => [
                'accept' => '.xlsx',
            ]
        ]) ?>

        <?php ActiveForm::end() ?>
    </div>
</div>
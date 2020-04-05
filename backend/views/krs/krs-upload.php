<?php

/**
 * @link http://www.diecoding.com/
 * @author Die Coding (Sugeng Sulistiyawan) <diecoding@gmail.com>
 * @copyright Copyright (c) 2018
 */

use backend\models\FileUpload;
use backend\models\MataKuliahTayang;
use backend\models\RefCpmk;
use backend\models\searchs\RefMahasiswa;
use yii\helpers\BaseUrl;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\Json;

$this->title = 'Tampilan Nilai Mata Kuliah';
$this->params['breadcrumbs'][] = $this->title;
$jk = Yii::$app->getRequest()->getQueryParam('jk');


$css = <<< CSS
.form-control[disabled], .form-control[readonly], fieldset[disabled] .form-control {
    background: none;
    outline: none;
    border: none;
}
CSS;
$this->registerCss($css);

?>

<div class="panel panel-default">
    <div class="panel-body">
        <div class="row">
            <div div class="col-md-6">
                <?php echo Html::a('<i class="fa fa-arrow-left"></i> Kembali ke Halaman Unggah File', ['/data-utama'], ['class' => 'btn-social btn btn-']) ?>
            </div>
            <div class="col-md-6" align="right">
                <?php
                echo Html::a('<i class="fa fa-eye"></i> Download File Upload', ['file-upload', 'jk' => $jk], [
                    'class' => 'btn btn-success btn-flat',
                ]);
                ?>
            </div>
        </div>

        <hr>
        <div class="row">
            <div class="col-md-12">
                <h4 class="text-center">UNIVERSITAS SEBELAS MARET</h4>
                <div class="form-group ">
                    <label id="fakultas" class="col-sm-2 control-label">Fakultas</label>
                    <div class="col-sm-10">
                        <input value="Teknik" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="program_studi" class="col-sm-2 control-label">Program Studi</label>

                    <div class="col-sm-10">
                        <input value="Teknik Elektro" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="tahun_ajaran" class="col-sm-2 control-label">Tahun Ajaran</label>

                    <div class="col-sm-10">
                        <input value="<?php echo $data['tahun_ajaran']->tahun ?>" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="semester" class="col-sm-2 control-label">Semester</label>

                    <div class="col-sm-10">
                        <input value="<?php echo $data['tayang']->semester ?>" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="mata_kuliah" class="col-sm-2 control-label">Mata Kuliah</label>

                    <div class="col-sm-10">
                        <input value="<?php echo $data['mata_kuliah']->nama ?>" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="kelas" class="col-sm-2 control-label">Kelas</label>

                    <div class="col-sm-10">
                        <input value="<?php echo $data['kelas']->kelas ?>" class="form-control" readonly>
                    </div>
                </div>
                <div class="form-group ">
                    <label id="dosen" class="col-sm-2 control-label">Pengampu</label>

                    <div class="col-sm-10">
                        <input value="<?php echo $data['dosen']->nama_dosen ?>" class="form-control" readonly>
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <br>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th colspan="1"></th>
                            <th class="text-center" colspan="7">DATA MAHASISWA</th>
                        </tr>
                        <tr>
                            <th class="text-center">NO</th>
                            <!-- <th class="text-center">#</th> -->
                            <!-- <th class="text-center">KEY</th> -->

                            <th class="text-center">NIM</th>
                            <th class="text-center">NAMA</th>
                            <?php
                            if (!FileUpload::findOne(['id_mata_kuliah_tayang' => $jk, 'jenis' => 'nilai'])) {
                            ?>
                                <th class="text-center">Action</th>
                            <?php
                            }
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($data['krs'] as $data) {
                        ?>
                            <tr>
                                <td class="text-center"><?php echo $no++ ?></td>
                                <td><?php echo $data['refMahasiswa']->nim ?></td>
                                <td><?php echo $data['refMahasiswa']->nama ?></td>
                                <?php
                                if (!FileUpload::findOne(['id_mata_kuliah_tayang' => $jk, 'jenis' => 'nilai'])) {
                                ?>
                                    <td class="text-center">
                                        <a href="<?php echo Url::to(['/krs/delete-mahasiswa', 'jk' => $jk, 'js' => $data->id_ref_mahasiswa]); ?>"><i class="fa fa-trash btn btn-danger btn-xs"></i></a>
                                    </td>
                                <?php
                                }
                                ?>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
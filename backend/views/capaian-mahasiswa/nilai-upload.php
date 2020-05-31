<?php

/**
 * @link http://www.diecoding.com/
 * @author Die Coding (Sugeng Sulistiyawan) <diecoding@gmail.com>
 * @copyright Copyright (c) 2018
 */

use backend\models\MataKuliahTayang;
use backend\models\RefCpmk;
use backend\models\RefMahasiswa;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\Json;

$this->title = 'Tampilan Nilai Mata Kuliah';
$this->params['breadcrumbs'][] = $this->title;
$jk        = Yii::$app->getRequest()->getQueryParam('jk');
$mk_tayang = MataKuliahTayang::findOne($jk);
$cpmks     = RefCpmk::find()
    ->where(['id_ref_mata_kuliah' => $mk_tayang->id_ref_mata_kuliah])
    ->all();
$total_cpmk = count($cpmks);

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
                echo Html::a('<i class="fa fa-eye"></i> Download File Upload', ['/data-utama/file-upload', 'jk' => $jk], [
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
                        <input value="TEKNIK" class="form-control" readonly>
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
                        <tr></tr>
                        <tr>
                            <th colspan="1"></th>
                            <th class="text-center" colspan="2">DATA MAHASISWA</th>
                            <th class="text-center" colspan="5">DATA NILAI</th>
                        </tr>
                        <tr>
                            <th class="text-center">NO</th>
                            <th class="text-center">NIM</th>
                            <th class="text-center">NAMA</th>
                            <?php
                            for ($i = 1; $i <= $total_cpmk; $i++) {
                                echo "<th class='text-center'>CPMK {$i}</th>";
                            }
                            ?>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;

                        foreach ($data['capaian'] as $key => $data) {
                            $mahasiswa = RefMahasiswa::findOne(['id' => $key]);
                        ?>
                            <tr>
                                <td class="text-center"><?php echo $no++ ?></td>
                                <td class="text-left"><?php echo $mahasiswa->nim ?></td>
                                <td class="text-left"><?php echo $mahasiswa->nama ?></td>
                                <?php
                                foreach ($data as $value) {
                                ?>
                                    <td class="text-center"><?php echo $value['nilai'] ?></td>
                                <?php
                                }
                                ?>
                                <td class="text-center">
                                    <?php
                                    // echo Html::a('<i class="fa fa-pencil"></i>', ['/capaian-mahasiswa/edit', 'jk' => $jk,'js'=>$key], [
                                    //     'class' => 'btn btn-primary btn-xs',
                                    // ]);
                                    ?>
                                    <?php
                                    echo Html::a('<i class="fa fa-trash"></i>', ['/capaian-mahasiswa/delete', 'jk' => $jk, 'js' => $key], [
                                        'class' => 'btn btn-danger btn-xs',
                                        'data-original-title'  => 'Hapus',
                                        'title'                => 'Hapus',
                                        'data-toggle'          => 'tooltip',
                                        'role'                 => 'modal-remote',
                                        'data-confirm'         => false,
                                        'data-method'          => false, // for overide yii data api
                                        'data-request-method'  => 'post',
                                        'data-confirm-title'   => 'Konfirmasi',
                                        'data-confirm-message' => 'Apakah anda yakin akan menghapus data ini?',
                                    ]);
                                    ?>
                                </td>
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
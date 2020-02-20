<?php

/**
 * @link http://www.diecoding.com/
 * @author Die Coding (Sugeng Sulistiyawan) <diecoding@gmail.com>
 * @copyright Copyright (c) 2018
 */

use backend\models\searchs\RefMahasiswa;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\helpers\Json;

$this->title = 'Tampilan Nilai Mata Kuliah';
$this->params['breadcrumbs'][] = $this->title;


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
        <?php echo Html::a('<i class="fa fa-arrow-left"></i> Kembali ke Halaman Unggah File', ['/data-utama'], ['class' => 'btn-social btn btn-']) ?>
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
        <br>
        <div class="row">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th colspan="1"></th>
                            <th class="text-center" colspan="2">DATA MAHASISWA</th>
                            <th class="text-center" colspan="5">DATA NILAI</th>
                        </tr>
                        <tr>
                            <th class="text-center">NO</th>
                            <!-- <th class="text-center">#</th> -->
                            <!-- <th class="text-center">KEY</th> -->

                            <th class="text-center">NIM</th>
                            <th class="text-center">NAMA</th>
                            <?php
                            $count = count($data['capaian'][0]['capaianMahasiswa']);
                            for ($i = 0; $i < $count; $i++) {
                                $no = 1 + $i;
                            ?>
                                <th class="text-center">CPMK<?php echo $no ?></th>
                            <?php
                            }
                            ?>

                            <!-- <th class="text-center">CPMK2</th>
                            <th class="text-center">CPMK3</th>
                            <th class="text-center">CPMK4</th>
                            <th class="text-center">CPMK5</th> -->
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($data['capaian'] as $data) {

                            $mahasiswa = RefMahasiswa::findOne(['id' => $data->id_ref_mahasiswa]);
                            // echo '<pre>';
                            // print_r($mahasiswa);
                            // exit;
                        ?>

                            <tr>
                                <td class="text-center"><?php echo $no++ ?></td>
                                <td><?php echo $mahasiswa->nim ?></td>
                                <td><?php echo $mahasiswa->nama ?></td>
                                <?php
                                foreach ($data['capaianMahasiswa'] as $value) {
                                ?>
                                    <td class="text-center"><?php echo $value->nilai ?></td>
                                <?php
                                }
                                ?>
                                <td class="text-center">
                                    <a href=""><i class="fa fa-edit"></i></a>
                                    <a href=""><i class="fa fa-trash"></i></a>
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
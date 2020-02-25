<?php

/**
 * @link http://www.diecoding.com/
 * @author Die Coding (Sugeng Sulistiyawan) <diecoding@gmail.com>
 * @copyright Copyright (c) 2018
 */

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
                echo Html::a('<i class="fa fa-eye"></i> Lihat File Upload', ['/data-utama/file-upload', 'jk' => $jk], [
                    'class' => 'btn btn-primary btn-flat',
                    // 'role' => 'modal-remote',
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
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        foreach ($data['capaian'] as $data) {

                            // $mahasiswa = RefMahasiswa::findOne(['id' => $data->id_ref_mahasiswa]);
                            // $mata_kuliah = MataKuliahTayang::findOne(['id' => $data->id_mata_kuliah_tayang]);
                            // $cpmks = RefCpmk::find()->where(['id_ref_mata_kuliah' => $mata_kuliah->id_ref_mata_kuliah])->all();
                            // foreach ($cpmks as $key => $value) {
                            //     $cpmk[] = $value->id;
                            // }
                            // echo '<pre>';
                            // print_r($data);
                            // exit;
                        ?>

                            <tr>
                                <td class="text-center"><?php echo $no++ ?></td>
                                <td><?php echo $data['refMahasiswa']->nim ?></td>
                                <td><?php echo $data['refMahasiswa']->nama ?></td>
                                <?php
                                // echo '<pre>';
                                // print_r($data['capaianMahasiswa'][10]->id_ref_cpmk);
                                // exit;
                                // if ($data['capaianMahasiswa'][0]->id_ref_cpmk == $cpmk[0]) {
                                    foreach ($data['capaianMahasiswa'] as $key => $value) {
                                        // echo '<pre>';
                                        // print_r($value);
                                        // exit;
                                ?>
                                        <td class="text-center"><?php echo $value->nilai ?></td>
                                <?php
                                        // }
                                    // }
                                }
                                ?>
                                <td class="text-center">
                                    <a href="<?php echo Url::to(['capaian-mahasiswa/update', 'jk' => $jk, 'js' => $data->id_ref_mahasiswa]); ?>"><i class="fa fa-edit"></i></a>
                                    <a href="<?php echo Url::to(['/capaian-mahasiswa/delete', 'jk' => $jk, 'js' => $data->id_ref_mahasiswa]); ?>"><i class="fa fa-trash"></i></a>
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
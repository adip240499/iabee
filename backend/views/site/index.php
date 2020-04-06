<?php

/* @var $this yii\web\View */

$this->title = 'Dashboard';
?>
<div class="site-index">
    <div class="body-content">
        <section class="content">
            <div class="row">
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="info-box bg-green" title="Data Mahasiswa">
                                <span class="info-box-icon"><i class="fa fa-users"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Data Mahasiswa</span>
                                    <span class="info-box-number"><?php echo $data['all'] ?></span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="ref-mahasiswa" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                            <div class="info-box bg-aqua" title="Data Dosen">
                                <span class="info-box-icon"><i class="fa fa-building-o"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Data Dosen</span>
                                    <span class="info-box-number"><?php echo $data['dosen'] ?></span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="ref-dosen" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                            <div class="info-box bg-red" title="Data Tahun Ajaran">
                                <span class="info-box-icon"><i class="fa fa-calendar"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Data Tahun Ajaran</span>
                                    <span class="info-box-number"><?php echo $data['tahun'] ?></span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="ref-tahun-ajaran" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="info-box bg-aqua" title="Data Kelas">
                                <span class="info-box-icon"><i class="fa fa-building-o"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Data Mata Kuliah</span>
                                    <span class="info-box-number"><?php echo $data['mk'] ?></span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="ref-mata-kuliah" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                            <div class="info-box bg-yellow" title="Data Admin">
                                <span class="info-box-icon"><i class="fa fa-user-secret"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Data Admin</span>
                                    <span class="info-box-number"><?php echo $data['admin'] ?></span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="#" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                            <div class="info-box bg-blue" title="Log Database">
                                <span class="info-box-icon"><i class="fa fa-database"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Log Database</span>
                                    <span class="info-box-number">0</span>
                                    <div class="progress">
                                        <div class="progress-bar" style="width:100%"></div>
                                    </div>
                                    <span class="progress-description">
                                        <a class="small-box-footer" href="/setup/log/index" style="color: #fff;">Lihat Detail <i class="fa fa-arrow-circle-right"></i></a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="box box-solid">
                        <div class="box-body text-center">

                                        <h1 id="clock"> </h1>
                        </div>
                        <div class="box-footer text-center">
                            <b><i class="fa fa-calendar"></i> <?php echo date('D, d M Y')?></b>
                        </div>
                    </div>

                    <div class="box box-solid">
                        <div class="box-body text-center">
                            <div align="center">
                                <img class="img-circle" style="width: 80px; height: 80px;" src="data:image/png;base64,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">
                            </div>
                        </div>
                        <div class="box-body no-padding">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td width="90px">NIP</td>
                                        <td width="1px">:</td>
                                        <td><?php echo ucfirst(Yii::$app->user->identity->nip) ?></td>
                                    </tr>
                                    <tr>
                                        <td>Nama</td>
                                        <td>:</td>
                                        <td><b><?php echo ucfirst(Yii::$app->user->identity->nama) ?></b></td>
                                    </tr>
                                    <tr>
                                        <td>Jabatan</td>
                                        <td>:</td>
                                        <td><?php echo ucfirst(Yii::$app->user->identity->auth_active) ?></td>
                                    </tr>
                                    <tr>
                                        <td>Username</td>
                                        <td>:</td>
                                        <td><?php echo (Yii::$app->user->identity->username) ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- <div class="box-footer text-center">
                            <a class="btn btn-danger" href="/site/change-password">Ubah Kata Sandi</a> <a class="btn btn-danger" href="/site/change-photo">Ubah Foto</a> <br>
                            <br>
                        </div> -->
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </section>
    </div>
</div>
<script>
    function digitalClock() {
        var d = new Date();
        var h = d.getHours();
        var m = d.getMinutes();
        var s = d.getSeconds();
        var hrs;
        var mins;
        var tsecs;
        var secs;
        hrs = h;
        mins = m;
        secs = s;
        var ctime = hrs + ":" + mins + ":" + secs;
        document.getElementById("clock").firstChild.nodeValue = ctime;
    }
    window.onload = function() {
        digitalClock();
        setInterval('digitalClock()', 1000);
    }
</script>
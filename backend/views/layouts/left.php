<?php

use yii\helpers\Html;

$css = <<< CSS
.skin-blue .main-sidebar, .skin-blue .left-side {
    background-color: #00252d;
}

.skin-blue .sidebar-menu > li.active > a,
.skin-blue .sidebar-menu > li:hover > a,
.skin-blue .sidebar-menu > li.menu-open > a {
    background: #010f13;
}

.skin-blue .sidebar-menu > li.active > a {
    border-left-color: #ffff;
}

.skin-blue .sidebar-menu > li > .treeview-menu {
    background: #01404e;
}

.skin-blue .sidebar-menu .treeview-menu > li.active > a,
.skin-blue .sidebar-menu .treeview-menu > li > a:hover {
    /* border-left-color: #3c8dbc; */
    background: #013342;
}
CSS;
$this->registerCss($css);

?>

<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p><?php echo (Yii::$app->user->identity->username) ?></p>

                <a href="#"><i class="fa fa-circle text-success"></i> Dosen</a>
            </div>
        </div>
        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
                'items' => [
                    ['label' => 'Dashboard', 'icon' => 'dashboard', 'url' => Yii::$app->homeUrl],
                    // ['label' => 'Import Nilai', 'icon' => 'ioxhost', 'url' => ['/data-utama']],
                    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
                    ['label' => 'Mata Kuliah Tayang', 'icon' => 'black-tie', 'url' => ['/mata-kuliah-tayang']],
                    [
                        'label' => 'CP Lulusan',
                        'icon' => 'black-tie',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Referensi CPL', 'icon' => 'file-code-o', 'url' => ['/ref-cpl'],],
                            [
                                'label' => 'Monev CPL',
                                'icon' => 'file-code-o',
                                'url' => ['#'],
                                'items' => [
                                    // [
                                    //     'label' => 'CPL Individual', 'icon' => 'file-code-o',
                                    //     'options' => ['role' => 'modal-remote'], 'url' => ['/monev-cpl/landing-individual'],
                                    // ],
                                    ['label' => 'CPL individu', 'icon' => 'file-code-o', 'url' => ['/monev-cpl/individual' . $nim = '?jk=8'],],
                                    ['label' => 'CPL Semester', 'icon' => 'file-code-o', 'url' => ['/monev-cpl/semester'],],
                                    ['label' => 'CPL Angkatan', 'icon' => 'file-code-o', 'url' => ['/monev-cpl/angkatan'],],
                                    ['label' => 'CPL Lulusan', 'icon' => 'file-code-o', 'url' => ['/monev-cpl/index' . $nim = '?jk=8'],],
                                ]
                            ],
                        ],
                    ],
                    [
                        'label'   => 'CP Mata Kuliah',
                        'icon'    => 'black-tie',
                        'url'     => '#',
                        'items'   => [
                            ['label' => 'Mata Kuliah', 'icon' => 'file-code-o', 'url' => ['/ref-mata-kuliah'],],
                            ['label' => 'CPMK', 'icon' => 'file-code-o', 'url' => ['/ref-cpmk'],],
                            ['label' => 'Relasi CPMK to CPL', 'icon' => 'file-code-o', 'url' => ['/relasi-cpmk-cpl']],
                        ],
                    ],
                    [
                        'label' => 'Data Pendukung',
                        'icon' => 'black-tie',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Mahasiswa', 'icon' => 'file-code-o', 'url' => ['/ref-mahasiswa'],],
                            ['label' => 'Dosen Pengajar', 'icon' => 'file-code-o', 'url' => ['/ref-dosen'],],
                            ['label' => 'Tahun Ajaran', 'icon' => 'file-code-o', 'url' => ['/ref-tahun-ajaran'],],
                            ['label' => 'Kelas', 'icon' => 'file-code-o', 'url' => ['/ref-kelas'],],
                        ],
                    ],
                    ['label' => 'Setup User', 'icon' => 'user', 'url' => ['/user'], 'visible' => !Yii::$app->assign->is(["dosen"])],
                    ['label' => 'Tentang', 'icon' => 'optin-monster', 'url' => ['#']],
                ],
            ]
        ) ?>
        <ul class="sidebar-menu tree" data-widget="tree">
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Hak Akses</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php foreach (Yii::$app->assign->listAssign as $assign) { ?>
                        <li>
                            <?php
                            $label = "{$assign} ";
                            echo Html::a($label, ['/site/set-assign'], [
                                'style' => $assign == Yii::$app->assign->active ? 'font-weight: bold; color: #ffff; background-color: #013342;' : '',
                                'data' => [
                                    'method' => 'post',
                                    'params' => [
                                        'assign' => $assign,
                                    ]
                                ]
                            ]) ?>
                        </li>
                    <?php } ?>
                </ul>
            </li>
        </ul>

    </section>

</aside>
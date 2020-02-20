<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?= $directoryAsset ?>/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>Adip Safiudin</p>

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
                    ['label' => 'Mata Kuliah Tayang', 'icon' => 'black-tie', 'url' => ['/mata-kuliah-tayang'],],
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
                                    ['label' => 'CPL Lulusan', 'icon' => 'file-code-o', 'url' => ['/monev-cpl/lulusan'],],
                                ]
                            ],
                        ],
                    ],
                    // [
                    //     'label' => 'Kartu Rencana Studi',
                    //     'icon' => 'black-tie',
                    //     'url' => '#',
                    //     'items' => [
                    //         ['label' => 'Kartu Rencana Studi', 'icon' => 'file-code-o', 'url' => ['/krs'],],
                    //         ['label' => 'Mata Kuliah Tayang', 'icon' => 'file-code-o', 'url' => ['/mata-kuliah-tayang'],],
                    //     ],
                    // ],

                    [
                        'label' => 'CP Mata Kuliah',
                        'icon' => 'black-tie',
                        'url' => '#',
                        'items' => [
                            ['label' => 'Mata Kuliah', 'icon' => 'file-code-o', 'url' => ['/ref-mata-kuliah'],],
                            ['label' => 'CPMK', 'icon' => 'file-code-o', 'url' => ['/ref-cpmk'],],
                            ['label' => 'Relasi CPMK to CPL', 'icon' => 'file-code-o', 'url' => ['/relasi-cpmk-cpl'], 'visible' => !Yii::$app->user->isGuest],
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
                    ['label' => 'Setup User', 'icon' => 'user', 'url' => ['#']],
                    ['label' => 'Tentang', 'icon' => 'optin-monster', 'url' => ['#']],

                ],
            ]
        ) ?>

    </section>

</aside>
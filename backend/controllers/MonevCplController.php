<?php

namespace backend\controllers;

// use backend\models\searchs\CapaianMahasiswa;

use backend\models\RefMahasiswa;
use backend\models\searchs\CapaianMahasiswa;
use backend\models\searchs\RefCpl;
use backend\models\searchs\RefCpmk;
use backend\models\searchs\RelasiCpmkCpl;
use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use backend\models\searchs\RefKelas;
use backend\models\searchs\RefMataKuliah;
use backend\models\searchs\RefTahunAjaran;
use backend\models\MataKuliahTayang;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class MonevCplController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {

        return $this->render('/monev-cpl/index');
    }

    public function actionIndividual()
    {
        $id_mahasiswa = Yii::$app->getRequest()->getQueryParam('jk');

        if (!empty($id_mahasiswa)) {
            $cpl = RefCpl::find()->all();
            $total_cpl = count($cpl);

            for ($i = 1; $i <= $total_cpl; $i++) {
                // $cpl[$i]        = RelasiCpmkCpl::find()->where(['id_ref_cpl' => $i])->all();
                $individu[$i] = CapaianMahasiswa::find()
                    ->joinWith(['relasiCpmkCpls'])
                    ->where([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                    ->andWhere([CapaianMahasiswa::tableName() . '.id_ref_mahasiswa' => $id_mahasiswa])
                    ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                    ->average(CapaianMahasiswa::tableName() . '.nilai');
                // $jumlah_cpl[$i] = count($cpl[$i]) * 100;
                // $nilai_cpl[$i]  = $nilai[$i] / $jumlah_cpl[$i] * 100;
                // $data[$i]       = $nilai_cpl[$i];
            }
            $mahasiswa = RefMahasiswa::findOne(["id" => $id_mahasiswa]);
            return $this->render(
                '/monev-cpl/individual',
                [
                    'data' => $individu,
                    'mahasiswa' => $mahasiswa,
                ]
            );
        }

        // $cpl = RefCpl::find()->all();
        // $total_cpl = count($cpl);

        // for ($i = 1; $i <= $total_cpl; $i++) {
        // $cpl[$i]        = RelasiCpmkCpl::find()->where(['id_ref_cpl' => $i])->all();
        // $individu[$i] = CapaianMahasiswa::find()
        //     ->joinWith(['relasiCpmkCpls'])
        //     ->where([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
        //     ->andWhere([CapaianMahasiswa::tableName() . '.nim_ref_mahasiswa' => 'I0717037'])
        //     ->average(CapaianMahasiswa::tableName() . '.nilai');
        // $jumlah_cpl[$i] = count($cpl[$i]) * 100;
        // $nilai_cpl[$i]  = $nilai[$i] / $jumlah_cpl[$i] * 100;
        // $data[$i]       = $nilai_cpl[$i];
        // }

        // $nilai = RefMahasiswa::find()
        //     ->joinWith(['relasiCpmkCpls'])
        //     ->where([RefMahasiswa::tableName() . '.angkatan' => '2015'])
        //     ->andWhere([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => 4])
        //     ->average(CapaianMahasiswa::tableName() . '.nilai');
        // ->all();
        // $relasis        = RelasiCpmkCpl::find()
        //     ->where(["id_ref_cpl" => 10])
        //     ->all();
        // foreach ($relasis as $relasi) {
        //     $capaians        = CapaianMahasiswa::find()
        //         ->where(["id_ref_cpmk" => $relasi])
        //         ->sum("nilai");
        // }
        // $capaians        = CapaianMahasiswa::find()
        //     ->joinWith(["relasiCpmkCpl", "capaianMahasiswa.id_ref_cpmk=relasiCpmkCpl.id_ref_cpmk"])
        //     ->where(["nim_ref_mahasiswa" => "I0717037"])
        //     ->all();


        // $nilai = CapaianMahasiswa::find()
        //     ->joinWith(['relasiCpmkCpls'])
        // ->joinWith(['refCpmk'])
        // ->select(['*', 'sum(nilai) as nilai'])
        // ->where([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => 2])
        // ->andWhere([CapaianMahasiswa::tableName() . '.nim_ref_mahasiswa' => 'I0717037'])
        // ->sum(CapaianMahasiswa::tableName() . '.nilai');
        // ->all();

        // $nilai = CapaianMahasiswa::find()
        // ->joinWith(['relasiCpmkCpls'])
        // ->where([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => 2])
        // ->andWhere([CapaianMahasiswa::tableName() . '.nim_ref_mahasiswa' => 'I0717037'])
        // ->average(CapaianMahasiswa::tableName() . '.nilai');


        // echo "<pre>";
        // print_r($nilai);
        // exit;



        // foreach ($capaians as $capaian) {
        //     $relasi        = RelasiCpmkCpl::find()->where(["id_ref_cpmk" => $capaian->id_ref_cpmk])->orderBy('id_ref_cpl')->all();
        // }

        return $this->render(
            '/monev-cpl/individual',
            [
                'data' => $individu,
            ]
        );
    }

    public function actionAngkatan()
    {
        $tahun = Yii::$app->getRequest()->getQueryParam('jk');

        $cpl = RefCpl::find()->all();
        $total_cpl = count($cpl);

        for ($i = 1; $i <= $total_cpl; $i++) {
            $angkatan[] = RefMahasiswa::find()
                ->joinWith(['relasiCpmkCpls'])
                ->where([RefMahasiswa::tableName() . '.angkatan' => $tahun])
                ->andWhere([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                ->average(CapaianMahasiswa::tableName() . '.nilai');
        }
        return $this->render(
            '/monev-cpl/angkatan',
            [
                'data' => $angkatan,
                'angkatan' => $tahun
            ]
        );
    }

    public function actionSemester()
    {
        $tahun = Yii::$app->getRequest()->getQueryParam('js');
        $sem = Yii::$app->getRequest()->getQueryParam('jk');

        $cpl = RefCpl::find()->all();
        $total_cpl = count($cpl);

        for ($i = 1; $i <= $total_cpl; $i++) {
            $semester[] = CapaianMahasiswa::find()
                ->joinWith(['relasiCpmkCpls'])
                ->where([CapaianMahasiswa::tableName() . '.tahun' => $tahun])
                ->andWhere([CapaianMahasiswa::tableName() . '.semester' => $sem])
                ->andWhere([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                ->average(CapaianMahasiswa::tableName() . '.nilai');
        }
        return $this->render(
            '/monev-cpl/semester',
            [
                'data' => $semester,
                'tahun' => $tahun,
                'semester' => $sem
            ]
        );
    }


    public function actionLandingIndividual()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new CapaianMahasiswa();
        if ($model->load(Yii::$app->request->post())) {

            // echo "<pre>";
            // print_r($model->nim_ref_mahasiswa);
            // exit;
            return $this->redirect([
                'individual',
                // 'nama'     => $nama,
                'jk' => $model->id_ref_mahasiswa,
            ]);
        }
        $mahasiswa = CapaianMahasiswa::find()
            ->joinWith(['refMahasiswa'])
            ->all();
        $data['mahasiswa'] = ArrayHelper::map($mahasiswa, 'refMahasiswa.id', 'refMahasiswa.nama');

        return [
            'title'   => 'Portal Individual',
            'content' => $this->renderAjax('landing-individual', [
                'mahasiswa'    => $data['mahasiswa'],
                'model'            => $model
            ]),
            'footer'  => '<div class="col-12 text-right">' .
                Html::button(
                    'Batal',
                    [
                        'class'        => 'btn btn-secondary',
                        'data-dismiss' => 'modal',
                    ]
                ) . ' ' .
                Html::button(
                    'Submit',
                    [
                        'class'  => 'btn btn-success',
                        'type'   => 'submit',
                    ]
                ) .
                '</div>'
        ];
    }

    public function actionLandingAngkatan()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new CapaianMahasiswa();
        if ($model->load(Yii::$app->request->post())) {

            // echo "<pre>";
            // print_r($model->nim_ref_mahasiswa);
            // exit;
            return $this->redirect([
                'angkatan',
                // 'nama'     => $nama,
                'jk' => $model->id_ref_mahasiswa,
            ]);
        }
        $mahasiswa = CapaianMahasiswa::find()
            ->joinWith(['refMahasiswa'])
            ->groupBy('angkatan')
            ->all();
        $data['angkatan'] = ArrayHelper::map($mahasiswa, 'refMahasiswa.angkatan', 'refMahasiswa.angkatan');

        return [
            'title'   => 'Portal Angkatan',
            'content' => $this->renderAjax('landing-angkatan', [
                'angkatan'    => $data['angkatan'],
                'model'            => $model
            ]),
            'footer'  => '<div class="col-12 text-right">' .
                Html::button(
                    'Batal',
                    [
                        'class'        => 'btn btn-secondary',
                        'data-dismiss' => 'modal',
                    ]
                ) . ' ' .
                Html::button(
                    'Submit',
                    [
                        'class'  => 'btn btn-success',
                        'type'   => 'submit',
                    ]
                ) .
                '</div>'
        ];
    }

    public function actionLandingSemester()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new CapaianMahasiswa();
        if ($model->load(Yii::$app->request->post())) {

            // echo "<pre>";
            // print_r($model->nim_ref_mahasiswa);
            // exit;
            return $this->redirect([
                'semester',
                // 'nama'     => $nama,
                'jk' => $model->semester,
                'js' => $model->tahun,
            ]);
        }
        $data = CapaianMahasiswa::find()->all();
        $tahun = ArrayHelper::map($data, 'tahun', 'tahun');
        $semester = ArrayHelper::map($data, 'semester', 'semester');

        return [
            'title'   => 'Portal Semester',
            'content' => $this->renderAjax('landing-semester', [
                'tahun'    => $tahun,
                'semester' => $semester,
                'model'            => $model
            ]),
            'footer'  => '<div class="col-12 text-right">' .
                Html::button(
                    'Batal',
                    [
                        'class'        => 'btn btn-secondary',
                        'data-dismiss' => 'modal',
                    ]
                ) . ' ' .
                Html::button(
                    'Submit',
                    [
                        'class'  => 'btn btn-success',
                        'type'   => 'submit',
                    ]
                ) .
                '</div>'
        ];
    }
}

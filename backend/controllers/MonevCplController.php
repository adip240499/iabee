<?php

namespace backend\controllers;

use backend\models\RefMahasiswa;
use backend\models\searchs\CapaianMahasiswa;
use backend\models\searchs\RefCpl;
use backend\models\searchs\RelasiCpmkCpl;
use Yii;
use yii\db\Query;
use yii\web\Controller;
use yii\web\Response;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
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
        $id_mahasiswa = Yii::$app->getRequest()->getQueryParam('jk');
        if (!$id_mahasiswa) {
            $id_mahasiswa = 76;
        }
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
                '/monev-cpl/index',
                [
                    'data'         => $individu,
                    'mahasiswa'    => $mahasiswa,
                    'id_mahasiswa' => $id_mahasiswa
                ]
            );
        }
        return $this->render(
            '/monev-cpl/index',
            [
                'data' => $individu,
            ]
        );
    }

    public function actionIndividual()
    {
        $id_mahasiswa = Yii::$app->getRequest()->getQueryParam('jk');
        if (!$id_mahasiswa) {
            $id_mahasiswa = 76;
        }

        if (!empty($id_mahasiswa)) {
            $cpl = RefCpl::find()->all();
            $total_cpl = count($cpl);

            for ($i = 1; $i <= $total_cpl; $i++) {
                $individu[$i] = CapaianMahasiswa::find()
                    ->joinWith(['relasiCpmkCpls'])
                    ->where([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                    ->andWhere([CapaianMahasiswa::tableName() . '.id_ref_mahasiswa' => $id_mahasiswa])
                    ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                    ->average(CapaianMahasiswa::tableName() . '.nilai');
            }
            $mahasiswa = RefMahasiswa::findOne(["id" => $id_mahasiswa]);
            return $this->render(
                '/monev-cpl/individual',
                [
                    'data' => $individu,
                    'mahasiswa' => $mahasiswa,
                    'id_mahasiswa' => $id_mahasiswa
                ]
            );
        }
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
                ->andWhere([RefMahasiswa::tableName() . '.status' => 1])
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
            $semester[] = RefMahasiswa::find()
                ->joinWith(['capaianMahasiswas.relasiCpmkCpls'])
                ->where([CapaianMahasiswa::tableName() . '.tahun' => $tahun])
                ->andWhere([CapaianMahasiswa::tableName() . '.semester' => $sem])
                ->andWhere([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                ->andWhere([RefMahasiswa::tableName() . '.status' => 1])
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
            ->andWhere([RefMahasiswa::tableName() . '.status' => 1])
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
        $model    = new RefMahasiswa();
        if ($model->load(Yii::$app->request->post())) {

            // echo "<pre>";
            // print_r($model->nim_ref_mahasiswa);
            // exit;
            return $this->redirect([
                'angkatan',
                // 'nama'     => $nama,
                'jk' => $model->angkatan,
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
                'angkatan' => $data['angkatan'],
                'model'    => $model
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
        $data = CapaianMahasiswa::find()
            ->joinWith('refMahasiswa')
            ->where([RefMahasiswa::tableName() . '.status' => 1])
            ->all();
        $tahun = ArrayHelper::map($data, 'tahun', 'tahun');
        $semester = ArrayHelper::map($data, 'semester', 'semester');

        return [
            'title'   => 'Portal Semester',
            'content' => $this->renderAjax('landing-semester', [
                'tahun'    => $tahun,
                'semester' => $semester,
                'model'    => $model
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

    //LULUSAN
    public function actionAngkatanLulusan()
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
                ->andWhere([RefMahasiswa::tableName() . '.status' => 8])
                ->average(CapaianMahasiswa::tableName() . '.nilai');
        }
        return $this->render(
            '/monev-cpl/angkatan-lulusan',
            [
                'data' => $angkatan,
                'angkatan' => $tahun
            ]
        );
    }

    public function actionSemesterLulusan()
    {
        $tahun = Yii::$app->getRequest()->getQueryParam('js');
        $sem = Yii::$app->getRequest()->getQueryParam('jk');

        $cpl = RefCpl::find()->all();
        $total_cpl = count($cpl);

        for ($i = 1; $i <= $total_cpl; $i++) {
            $semester[] = RefMahasiswa::find()
                ->joinWith(['capaianMahasiswas.relasiCpmkCpls'])
                ->where([CapaianMahasiswa::tableName() . '.tahun' => $tahun])
                ->andWhere([CapaianMahasiswa::tableName() . '.semester' => $sem])
                ->andWhere([RelasiCpmkCpl::tableName() . '.id_ref_cpl' => $i])
                ->andWhere([CapaianMahasiswa::tableName() . '.status' => 1])
                ->andWhere([RefMahasiswa::tableName() . '.status' => 8])
                ->average(CapaianMahasiswa::tableName() . '.nilai');
        }
        return $this->render(
            '/monev-cpl/semester-lulusan',
            [
                'data' => $semester,
                'tahun' => $tahun,
                'semester' => $sem
            ]
        );
    }


    public function actionLandingIndividualLulusan()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new CapaianMahasiswa();
        if ($model->load(Yii::$app->request->post())) {
            return $this->redirect([
                'index',
                'jk' => $model->id_ref_mahasiswa,
            ]);
        }
        $mahasiswa = CapaianMahasiswa::find()
            ->joinWith(['refMahasiswa'])
            ->where([RefMahasiswa::tableName() . '.status' => 8])
            ->all();
        $data['mahasiswa'] = ArrayHelper::map($mahasiswa, 'refMahasiswa.id', 'refMahasiswa.nama');

        return [
            'title'   => 'Portal Individual',
            'content' => $this->renderAjax('landing-individual-lulusan', [
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

    public function actionLandingAngkatanLulusan()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new RefMahasiswa();
        if ($model->load(Yii::$app->request->post())) {
            return $this->redirect([
                'angkatan-lulusan',
                'jk' => $model->angkatan,
            ]);
        }
        $mahasiswa = CapaianMahasiswa::find()
            ->joinWith(['refMahasiswa'])
            ->where([RefMahasiswa::tableName() . '.status' => 8])
            ->groupBy('angkatan')
            ->all();
        $data['angkatan'] = ArrayHelper::map($mahasiswa, 'refMahasiswa.angkatan', 'refMahasiswa.angkatan');

        return [
            'title'   => 'Portal Angkatan',
            'content' => $this->renderAjax('landing-angkatan-lulusan', [
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

    public function actionLandingSemesterLulusan()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model    = new CapaianMahasiswa();
        if ($model->load(Yii::$app->request->post())) {
            return $this->redirect([
                'semester-lulusan',
                'jk' => $model->semester,
                'js' => $model->tahun,
            ]);
        }
        $data = CapaianMahasiswa::find()
            ->joinWith('refMahasiswa')
            ->where([RefMahasiswa::tableName() . '.status' => 8])
            ->all();
        $tahun = ArrayHelper::map($data, 'tahun', 'tahun');
        $semester = ArrayHelper::map($data, 'semester', 'semester');

        return [
            'title'   => 'Portal Semester',
            'content' => $this->renderAjax('landing-semester-lulusan', [
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

    public function actionMahasiswaList($q = null, $id = null)
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        $out = ['results' => ['id' => '', 'text' => '']];
        if (!is_null($q)) {
            $mahasiswa = CapaianMahasiswa::find()
                ->distinct()
                ->select(['capaian_mahasiswa.id', 'capaian_mahasiswa.id_ref_mahasiswa', 'ref_mahasiswa.id id', 'ref_mahasiswa.nama text'])
                ->joinWith(['refMahasiswa'])
                ->where([RefMahasiswa::tableName() . '.status' => 1])
                ->andWhere(['like', RefMahasiswa::tableName() . '.nama', $q])
                ->limit(500)
                ->asArray()
                ->all();

            $out['results'] = array_values($mahasiswa);
        } elseif ($id > 0) {
            $out['results'] = ['id' => $id, 'text' => RefMahasiswa::find($id)->nama];
        }
        return $out;
    }

    public function actionMahasiswaListAlumni($q = null, $id = null)
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        $out = ['results' => ['id' => '', 'text' => '']];
        if (!is_null($q)) {
            $mahasiswa = CapaianMahasiswa::find()
                ->select(['capaian_mahasiswa.id', 'capaian_mahasiswa.id_ref_mahasiswa', 'ref_mahasiswa.id id', 'ref_mahasiswa.nama text'])
                ->joinWith(['refMahasiswa'])
                ->where([RefMahasiswa::tableName() . '.status' => 8])
                ->andWhere(['like', RefMahasiswa::tableName() . '.nama', $q])
                ->limit(10)
                ->asArray()
                ->all();

            $out['results'] = array_values($mahasiswa);
        } elseif ($id > 0) {
            $out['results'] = ['id' => $id, 'text' => RefMahasiswa::find($id)->nama];
        }
        return $out;
    }
}

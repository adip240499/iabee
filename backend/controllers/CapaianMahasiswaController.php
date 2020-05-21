<?php

namespace backend\controllers;

use Yii;
use backend\models\CapaianMahasiswa;
use backend\models\Krs;
use backend\models\MataKuliahTayang;
use backend\models\RefCpmk;
use backend\models\RefDosen;
use backend\models\RefKelas;
use backend\models\RefMahasiswa;
use backend\models\RefMataKuliah;
use backend\models\RefTahunAjaran;
use backend\models\searchs\CapaianMahasiswa as CapaianMahasiswaSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;

/**
 * CapaianMahasiswaController implements the CRUD actions for CapaianMahasiswa model.
 */
class CapaianMahasiswaController extends Controller
{
    /**
     * {@inheritdoc}
     */
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
                // 'actions' => [
                //     'delete' => ['POST'],
                // ],
            ],
        ];
    }

    /**
     * Lists all CapaianMahasiswa models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CapaianMahasiswaSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single CapaianMahasiswa model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new CapaianMahasiswa model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new CapaianMahasiswa();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing CapaianMahasiswa model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing CapaianMahasiswa model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete()
    {
        $id_mata_kuliah_tayang = Yii::$app->getRequest()->getQueryParam('jk');
        $id_mahasiswa           = Yii::$app->getRequest()->getQueryParam('js');

        $mata_kuliah_tayang = MataKuliahTayang::find()
            ->joinWith('refCpmks')
            ->where([MataKuliahTayang::tableName() . '.id' => $id_mata_kuliah_tayang])
            ->all();


        $count = count($mata_kuliah_tayang[0]['refCpmks']);


        foreach ($mata_kuliah_tayang as $key => $value) {
            foreach ($value['refCpmks'] as $key => $value) {
                // echo '<pre>';
                // print_r($value->id);
                // exit;
                $exist = CapaianMahasiswa::findOne(['id_ref_mahasiswa' => $id_mahasiswa, 'id_ref_cpmk' => $value->id]);
                $exist->status = 0;
                $exist->save();
            }
        }

        // if ($model) {
        //     $model->status  = 0;
        //     $model->save();
        // }
        return $this->redirect(['nilai-upload', 'jk' => $id_mata_kuliah_tayang]);
    }

    /**
     * Finds the CapaianMahasiswa model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return CapaianMahasiswa the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = CapaianMahasiswa::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionNilaiUpload()
    {
        $jk                   = Yii::$app->getRequest()->getQueryParam('jk');
        $data['tayang']       = MataKuliahTayang::findOne(['id' => $jk]);
        $data['mata_kuliah']  = RefMataKuliah::findOne($data['tayang']->id_ref_mata_kuliah);
        $data['kelas']        = RefKelas::findOne($data['tayang']->id_ref_kelas);
        $data['tahun_ajaran'] = RefTahunAjaran::findOne($data['tayang']->id_tahun_ajaran);
        $data['dosen']        = RefDosen::findOne($data['tayang']->id_ref_dosen);

        // $data['capaian']      = Krs::find()
        //     ->select([
        //         'krs.id', 'krs.id_mata_kuliah_tayang', 'krs.id_ref_mahasiswa',
        //         'ref_mahasiswa.id id_rm',
        //         'capaian_mahasiswa.id id_cm', 'capaian_mahasiswa.id_ref_cpmk',
        //         'capaian_mahasiswa.id_ref_mahasiswa',
        //         'ref_cpmk.id id_rc', 'ref_cpmk.id_ref_mata_kuliah'
        //     ])
        //     ->joinWith(
        //         [
        //                 'refMahasiswa'.
        //                 '.capaianMahasiswas'.
        //                 '.refCpmk' => function ($query) {
        //                 $query->where(['ref_cpmk.id_ref_mata_kuliah' => 42]);
        //             }
        //         ]
        //     )
        //     ->asArray()
        //     ->all();

        $data['capaian']      = RefMahasiswa::find()
            ->select([
                'ref_mahasiswa.id',
                'capaian_mahasiswa.id id_cm', 'capaian_mahasiswa.id_ref_cpmk',
                'capaian_mahasiswa.id_ref_mahasiswa',
                'ref_cpmk.id id_rc', 'ref_cpmk.id_ref_mata_kuliah'
            ])
            ->joinWith(
                [
                    'capaianMahasiswas.' .
                        'refCpmk' => function ($query) {
                        $query->where(['id_ref_mata_kuliah' => 42]);
                    }
                ]
            )
            ->andWhere([RefCpmk::tableName() . '.id_ref_mata_kuliah' => 42])
            ->asArray()
            ->all();

        //query backup
        // $data['capaian'] = Krs::find()
        //             ->alias('k')
        //             ->select(['*'])
        //             ->join('INNER JOIN', 'ref_mahasiswa m', 'k.id_ref_mahasiswa = m.id')
        //             ->join('INNER JOIN', 'capaian_mahasiswa cm', 'm.id = cm.id_ref_mahasiswa')
        //             ->join('INNER JOIN', 'ref_cpmk rc', 'rc.id = cm.id_ref_cpmk')
        //             ->where([
        //                 'rc.id_ref_mata_kuliah' => 106
        //             ])
        //             ->asArray()
        //             ->all();

        // $data['capaian'] = (new \yii\db\Query())
        //     ->select('*')
        //     ->from('krs k')
        //     ->leftJoin('ref_mahasiswa m', 'k.id_ref_mahasiswa = m.id')
        //     ->leftJoin('capaian_mahasiswa cm', 'm.id = cm.id_ref_mahasiswa')
        //     ->leftJoin('ref_cpmk rc', 'rc.id = cm.id_ref_cpmk')
        //     ->where([
        //         'rc.id_ref_mata_kuliah' => '42'
        //     ])
        //     ->all();

        // Query masih belum benar
        echo '<pre>';
        print_r($data['capaian']);
        exit;
        return $this->render('nilai-upload', [
            'data' => $data,
        ]);
    }
    public function actionTranskip()
    {
        $data['transkip'] = RefMataKuliah::find()
            ->select([
                'ref_mata_kuliah.id', 'ref_mata_kuliah.kode', 'ref_mata_kuliah.nama',

                'ref_cpmk.id id_cpmk', 'ref_cpmk.kode kode_cpmk', 'ref_cpmk.id_ref_mata_kuliah',

                'capaian_mahasiswa.id id_capaian', 'capaian_mahasiswa.nilai', 'capaian_mahasiswa.id_ref_cpmk',
                'capaian_mahasiswa.id_ref_mahasiswa id_mhs', 'capaian_mahasiswa.nilai',
            ])
            ->joinWith(['refCpmks.' . 'capaianMahasiswas' => function ($query) {
                $query->where(['id_ref_mahasiswa' => 105]);
            }])
            ->all();
        return $this->render('transkip-nilai', [
            'data' => $data,
        ]);
    }

    public function actionDownloadTranskip()
    {
        $data['transkip'] = RefMataKuliah::find()
            ->select([
                'ref_mata_kuliah.id', 'ref_mata_kuliah.kode', 'ref_mata_kuliah.nama',

                'ref_cpmk.id id_cpmk', 'ref_cpmk.kode kode_cpmk', 'ref_cpmk.id_ref_mata_kuliah',

                'capaian_mahasiswa.id id_capaian', 'capaian_mahasiswa.nilai', 'capaian_mahasiswa.id_ref_cpmk',
                'capaian_mahasiswa.id_ref_mahasiswa id_mhs', 'capaian_mahasiswa.nilai',
            ])
            ->joinWith(['refCpmks.' . 'capaianMahasiswas' => function ($query) {
                $jk                   = Yii::$app->getRequest()->getQueryParam('jk');
                $query->where(['id_ref_mahasiswa' => $jk]);
            }])
            ->all();
        $jk          = Yii::$app->getRequest()->getQueryParam('jk');
        $data['mahasiswa'] = RefMahasiswa::findOne(['id' => $jk]);

        $nama = 'Transkip Nilai_' .
            $data['mahasiswa']->nim . '_' .
            $data['mahasiswa']->nama;

        $base        = Yii::getAlias('@backend/modules/import/templates/template-transkip.xlsx');
        $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($base);
        $worksheet   = $spreadsheet->getActiveSheet();

        $worksheet->setCellValue('C4', $data['mahasiswa']->nama);  //Kode MK
        $worksheet->setCellValue('C5', $data['mahasiswa']->nim);  //Kode MK
        $worksheet->setCellValue('C6', $data['mahasiswa']->angkatan);  //Kode MK

        $no = 1;
        foreach ($data['transkip'] as $key => $data) {

            $row = 11 + $key;
            $worksheet->setCellValue('A' . $row, $no++);  //Kode MK
            $worksheet->setCellValue('B' . $row, $data->kode);  //Kode MK
            $worksheet->setCellValue('C' . $row, $data->nama);  //Nama MK 

            foreach ($data['refCpmks'] as $key => $value) {
                $huruf = ['D', 'E', 'F', 'G', 'H'];
                $worksheet->setCellValue($huruf[$key] . $row, $value['capaianMahasiswas'][0]->nilai);  //NILAI MK
            }
        }
        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');

        $path = Yii::getAlias("@backend/uploads/transkip_nilai");

        $base = "{$path}/Transkip_Nilai.xlsx";
        @unlink($base);
        $writer->save($base);

        return Yii::$app->response->sendFile(
            $base,
            $nama . '.xlsx'
        );
    }
}

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
use yii\db\ActiveQuery;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;
use yii\web\Response;

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
     * Updates an existing CapaianMahasiswa model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($jk, $js)
    {
        $model = $this->findModel($jk, $js);
        if ($models = (Yii::$app->request->post())) {

            foreach ($model['capaian'] as $key => $value) {
                $key = $key + 1;
                $data = CapaianMahasiswa::findOne([$value->id]);
                $data->updated_user = Yii::$app->user->identity->username;
                $data->nilai = $models["cpmk{$key}"];
                $data->save();
            }
            Yii::$app->session->setFlash('warning', [['Update', 'Data Berhasil Diperbarui']]);
            return $this->redirect(['nilai-upload', 'jk' => $jk]);
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
                // $exist->status = 0;
                $exist->delete();
                Yii::$app->session->setFlash('erro', [['Delete', 'Data Berhasil Dihapus']]);
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
    protected function findModel($jk, $js)
    {
        $data['tayang']       = MataKuliahTayang::findOne(['id' => $jk]);
        $model['mahasiswa']    = RefMahasiswa::findOne(['id' => $js]);
        $data['mata_kuliah']  = RefMataKuliah::findOne($data['tayang']->id_ref_mata_kuliah);
        $data['kelas']        = RefKelas::findOne($data['tayang']->id_ref_kelas);
        $data['tahun_ajaran'] = RefTahunAjaran::findOne($data['tayang']->id_tahun_ajaran);
        $data['dosen']        = RefDosen::findOne($data['tayang']->id_ref_dosen);

        $model['capaian']      = CapaianMahasiswa::find()
            ->select([
                'capaian_mahasiswa.*',
            ])
            ->joinWith(
                [
                    'refCpmk' => function ($query) {
                        $jk                   = Yii::$app->getRequest()->getQueryParam('jk');
                        $data['tayang']       = MataKuliahTayang::findOne(['id' => $jk]);
                        $data['mata_kuliah']  = RefMataKuliah::findOne($data['tayang']->id_ref_mata_kuliah);
                        $query->where(['ref_cpmk.id_ref_mata_kuliah' => $data['mata_kuliah']->id]);
                    }
                ]
            )
            ->andWhere([CapaianMahasiswa::tableName() . '.tahun' => $data['tahun_ajaran']->tahun])
            ->andWhere([CapaianMahasiswa::tableName() . '.kelas' => $data['kelas']->kelas])
            ->andWhere([CapaianMahasiswa::tableName() . '.semester' => $data['tayang']->semester])
            ->andWhere([CapaianMahasiswa::tableName() . '.id_ref_mahasiswa' => $js])
            // ->asArray()
            ->all();
        if (($model['capaian']) !== null) {
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

        $data['capaian']      = CapaianMahasiswa::find()
            ->select([
                'capaian_mahasiswa.*',
            ])
            ->joinWith(
                [
                    'refCpmk' => function ($query) {
                        $jk                   = Yii::$app->getRequest()->getQueryParam('jk');
                        $data['tayang']       = MataKuliahTayang::findOne(['id' => $jk]);
                        $data['mata_kuliah']  = RefMataKuliah::findOne($data['tayang']->id_ref_mata_kuliah);
                        $query->where(['ref_cpmk.id_ref_mata_kuliah' => $data['mata_kuliah']->id]);
                    }
                ]
            )
            ->andWhere([CapaianMahasiswa::tableName() . '.tahun' => $data['tahun_ajaran']->tahun])
            ->andWhere([CapaianMahasiswa::tableName() . '.kelas' => $data['kelas']->kelas])
            ->andWhere([CapaianMahasiswa::tableName() . '.semester' => $data['tayang']->semester])
            ->asArray()
            ->all();

        $data['capaian'] = ArrayHelper::index($data['capaian'], null, 'id_ref_mahasiswa');

        // Query masih belum benar
        // echo '<pre>';
        // print_r($data['capaian']);
        // exit;
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

    public function actionDeleteMultiple()
    {
        $request = Yii::$app->request;
        Yii::$app->response->format = Response::FORMAT_JSON;
        $js = $request->post('js');
        $jk = $request->post('jk');

        $mata_kuliah_tayang = MataKuliahTayang::find()
            ->joinWith('refCpmks')
            ->where([MataKuliahTayang::tableName() . '.id' => $jk])
            ->all();
        // $count = count($mata_kuliah_tayang[0]['refCpmks']);

        foreach ($js as $id_mahasiswa) {
            foreach ($mata_kuliah_tayang as $key => $value) {
                foreach ($value['refCpmks'] as $key => $value) {
                    CapaianMahasiswa::deleteAll(['id_ref_mahasiswa' => $id_mahasiswa, 'id_ref_cpmk' => $value->id]);
                }
            }
        }
    }
}

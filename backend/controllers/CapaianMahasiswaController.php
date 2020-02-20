<?php

namespace backend\controllers;

use Yii;
use backend\models\CapaianMahasiswa;
use backend\models\Krs;
use backend\models\MataKuliahTayang;
use backend\models\RefDosen;
use backend\models\RefKelas;
use backend\models\RefMataKuliah;
use backend\models\RefTahunAjaran;
use backend\models\searchs\CapaianMahasiswa as CapaianMahasiswaSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

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
                'actions' => [
                    'delete' => ['POST'],
                ],
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
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        if ($model) {
            $model->status  = 0;
            $model->save();
        }
        return $this->redirect(['index']);
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
        $jk             = Yii::$app->getRequest()->getQueryParam('jk');
        $data['tayang']       = MataKuliahTayang::findOne(['id' => $jk]);
        $data['mata_kuliah']  = RefMataKuliah::findOne($data['tayang']->id_ref_mata_kuliah);
        $data['kelas']        = RefKelas::findOne($data['tayang']->id_ref_kelas);
        $data['tahun_ajaran'] = RefTahunAjaran::findOne($data['tayang']->id_tahun_ajaran);
        $data['dosen']        = RefDosen::findOne($data['tayang']->id_ref_dosen);
        $data['capaian']      = Krs::find()
            ->select('*')
            ->joinWith('capaianMahasiswa')
            // ->joinWith('refMahasiswa')
            ->where([Krs::tableName() . '.id_mata_kuliah_tayang' => $jk])
            ->where([CapaianMahasiswa::tableName() . '.status' => 1])
            ->groupBy(Krs::tableName().'.id_ref_mahasiswa')
            // ->where([CapaianMahasiswa::tableName() . '.id_mata_kuliah_tayang' => $jk])
            ->all();
        // $connection = Yii::$app->getDb();
        // $command = $connection->createCommand("
        // SELECT * 
        // FROM `krs` 
        // LEFT JOIN `ref_mahasiswa` ON `krs`.`id_ref_mahasiswa` = `ref_mahasiswa`.`id` 
        // LEFT JOIN `capaian_mahasiswa` ON `ref_mahasiswa`.`id` = `capaian_mahasiswa`.`id_ref_mahasiswa` 
        // WHERE `krs`.`id_mata_kuliah_tayang`=".$jk);

        // $result = $command->queryAll();

        // echo '<pre>';
        // print_r($result);
        // exit;
        return $this->render('nilai-upload', [
            'data' => $data,
            // 'result' => $result
        ]);
    }
}

<?php

namespace backend\controllers;

use Yii;
use backend\models\Krs;
use backend\models\searchs\Krs as KrsSearch;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\Response;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;
use backend\models\searchs\RefKelas;
use backend\models\searchs\RefMataKuliah;
use backend\models\MataKuliahTayang;
use backend\models\searchs\RefTahunAjaran;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use backend\models\UploadFileImporter;
use yii\helpers\Html;


/**
 * KrsController implements the CRUD actions for Krs model.
 */
class KrsController extends Controller
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


	public function actionIndex($update = 0)
	{
		$model = new UploadFileImporter();
		if ($model->load(Yii::$app->request->post())) {

			$model->file = UploadedFile::getInstances($model, 'file');

			if ($model->file) {
				$xlsx = $model->file[0]->tempName;
				$reader = new Xlsx();
				$spreadsheet = $reader->load($xlsx);
				$spreadsheetData = $spreadsheet->getActiveSheet()->toArray();

				$fakultas         = $spreadsheet->getActiveSheet()->getCell('C4')->getValue();
				$program_studi    = $spreadsheet->getActiveSheet()->getCell('C5')->getValue();
				$tahun_ajaran     = $spreadsheet->getActiveSheet()->getCell('C6')->getValue();
				$semester         = $spreadsheet->getActiveSheet()->getCell('C7')->getValue();
				$kode_mata_kuliah = $spreadsheet->getActiveSheet()->getCell('C8')->getValue();
				$mata_kuliah      = $spreadsheet->getActiveSheet()->getCell('C9')->getValue();
				$kelas            = $spreadsheet->getActiveSheet()->getCell('C10')->getValue();
				$dosen            = $spreadsheet->getActiveSheet()->getCell('C11')->getValue();
				$encrypt            = $spreadsheet->getActiveSheet()->getCell('B12')->getValue();


				// $id_cpmk1         = $spreadsheet->getActiveSheet()->getCell('H7')->getValue();
				// $id_cpmk2         = $spreadsheet->getActiveSheet()->getCell('H8')->getValue();
				// $id_cpmk3         = $spreadsheet->getActiveSheet()->getCell('H9')->getValue();
				// $id_cpmk4         = $spreadsheet->getActiveSheet()->getCell('H10')->getValue();

				if (count($spreadsheetData) > 1) {
					for ($i = 0; $i < 14; $i++) {
						unset($spreadsheetData[$i]);
					}

					// echo "<pre>";
					// print_r($spreadsheetData);
					// exit;

					return $this->render('view', [
						'model'  			=> $spreadsheetData,
						'update'			=> $update,
						'fakultas' 			=> $fakultas,
						'program_studi' 	=> $program_studi,
						'tahun_ajaran' 		=> $tahun_ajaran,
						'semester' 			=> $semester,
						'kode_mata_kuliah' 	=> $kode_mata_kuliah,
						'mata_kuliah' 		=> $mata_kuliah,
						'kelas' 			=> $kelas,
						'dosen' 			=> $dosen,
						'encrypt' 			=> $encrypt,
						// 'id_cpmk1'			=> $id_cpmk1,
						// 'id_cpmk2'			=> $id_cpmk2,
						// 'id_cpmk3'			=> $id_cpmk3,
						// 'id_cpmk4'			=> $id_cpmk4,
					]);
				} else {
					Yii::$app->session->setFlash('error', 'Minimal terdapat 1 record data.');

					return $this->refresh();
				}
			} else {
				Yii::$app->session->setFlash('error', 'Gagal mengunggah file.');
			}
		}

		$model->file = null;
		return $this->render('index', [
			'model'  => $model,
			'update' => $update,
		]);
	}

    /**
     * Lists all Krs models.
     * @return mixed
     */
    public function actionLandingDownload()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $model	= new MataKuliahTayang();
        $data['tahun_ajaran'] = ArrayHelper::map(RefTahunAjaran::find()->all(), 'id', 'tahun');
		$data['kelas']        = ArrayHelper::map(RefKelas::find()->all(), 'id', 'kelas');
		$data['mata_kuliah']  = ArrayHelper::map(RefMataKuliah::find()->all(), 'id', 'nama');

		return [
			'title'   => 'Portal Download Template',
			'content' => $this->renderAjax('landing-download', [
				'tahun_ajaran'	=> $data['tahun_ajaran'],
				'kelas'			=> $data['kelas'],
				'mata_kuliah'	=> $data['mata_kuliah'],
				'model'			=> $model
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

    /**
     * Displays a single Krs model.
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
     * Creates a new Krs model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Krs();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Krs model.
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
     * Deletes an existing Krs model.
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
     * Finds the Krs model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Krs the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Krs::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

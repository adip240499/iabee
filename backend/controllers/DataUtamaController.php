<?php

namespace backend\controllers;

use backend\models\CapaianMahasiswa as ModelsCapaianMahasiswa;
use backend\models\MataKuliahTayang;
use backend\models\RefMataKuliah as ModelsRefMataKuliah;
use backend\models\RefTahunAjaran as ModelsRefTahunAjaran;
use backend\models\searchs\CapaianMahasiswa;
use backend\models\searchs\RefKelas;
use backend\models\searchs\RefCpmk;
use backend\models\searchs\RefMataKuliah;
use backend\models\searchs\RefTahunAjaran;
use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\web\UploadedFile;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use backend\models\UploadFileImporter;
use yii\base\Model;
use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

/**
 * RefCplController implements the CRUD actions for RefCpl model.
 */
class DataUtamaController extends Controller
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

	// public function actionForm()
	// {
	// 	$model	= new MataKuliahTayang();
	// 	$data['tahun_ajaran'] 	= ArrayHelper::map(RefTahunAjaran::find()->all(), 'id', 'tahun');
	// 	$data['kelas'] 			= ArrayHelper::map(RefKelas::find()->all(), 'id', 'kelas');
	// 	$data['mata_kuliah'] 	= ArrayHelper::map(RefMataKuliah::find()->all(), 'id', 'nama');

	// 	return $this->render('form', [
	// 		'tahun_ajaran'	=> $data['tahun_ajaran'],
	// 		'kelas'			=> $data['kelas'],
	// 		'mata_kuliah'	=> $data['mata_kuliah'],
	// 		'model'			=> $model
	// 	]);
	// }

	public function actionLandingDownload()
	{
		Yii::$app->response->format = Response::FORMAT_JSON;
		$model	= new MataKuliahTayang();
		if ($model->load(Yii::$app->request->post())) {
			$mata_kuliah = RefMataKuliah::findOne($model->id_ref_mata_kuliah);
			$kelas       = RefKelas::findOne($model->id_ref_kelas);
			$tahun       = RefTahunAjaran::findOne($model->id_tahun_ajaran);


			$nama = 'nilai_' .
				$mata_kuliah->kode . '_' .
				$mata_kuliah->nama . '_' .
				$kelas->kelas . '_Tahun_' .
				$tahun->tahun . '_' .
				date('YmdHis');

			$base        = Yii::getAlias('@backend/modules/import/templates/template.xlsx');
			$spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($base);
			$worksheet   = $spreadsheet->getActiveSheet();

			$worksheet->setCellValue('C6', $tahun->tahun);  //Tahun Ajaran
			$worksheet->setCellValue('C7', $model->semester);  //Semester
			$worksheet->setCellValue('C8', $mata_kuliah->kode);  //Kode Mata Kuliah
			$worksheet->setCellValue('C9', $mata_kuliah->nama);  //Nama Mata Kuliah
			$worksheet->setCellValue('C10', $kelas->kelas);  //Kelas
			$worksheet->setCellValue('C11', 'Pengampu Belum diambil');  //Pengampu

			$encrypt	= \Yii::$app->encrypter->encrypt($model->id_ref_mata_kuliah);
			$worksheet->setCellValue('B12', $encrypt);  //id mata kuliah

			$writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
			$writer->save('write.xlsx');
			$download = 'write.xlsx';

			return $this->redirect([
				'download',
				'nama'     => $nama,
				'download' => $download,
			]);
		}

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

	public function actionDownload($nama, $download)
	{
		return Yii::$app->response->sendFile(
			$download,
			$nama . '.xlsx'
		);
	}

	// public function actionDepDropMataKuliah()
	// {
	// 	Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

	// 	$parents = Yii::$app->request->post('depdrop_parents');
	// 	if ($parents) {
	// 		$out = [];

	// 		$models = MataKuliahTayang::find()
	// ->joinWith(['refMataKuliah'])
	// 			->where(['id_tahun_ajaran' => $parents[0]])
	// 			->groupBy('ref_mata_kuliah.id')
	// 			->all();
	// 		foreach ($models as $model) {
	// 			$out[] = [
	// 				'id'   => $model['refMataKuliah']->id,
	// 				'name' => $model['refMataKuliah']->nama,
	// 			];
	// 		}
	// 		return ['output' => $out, 'selected' => ''];
	// 	}
	// 	return ['output' => '', 'selected' => ''];
	// }

	public function actionProsesAjax($update = 0)
	{
		$request = Yii::$app->request;
		Yii::$app->response->format = Response::FORMAT_JSON;

		$update        = $update == 1;

		$data          = $request->post('data');
		$encrypt       = $request->post('encrypt');

		$decrypt = \Yii::$app->encrypter->decrypt($encrypt);
		$cpmks   = RefCpmk::find()
			->where(['id_ref_mata_kuliah' => $decrypt])
			->all();

		$count = count($cpmks);
		for ($i = 0; $i < $count; $i++) {
			$id_cpmk[] = $cpmks[$i]->id;  //CPMK
		}

		if (!$cpmks) {
			return [
				'code' => 401,
				'description' => 'Token Error',
				'data' => [
					'class' => 'danger',
					'html'  => "<td><span class='label label-warning'>Error Token</span></td>
						<td colspan='30'>Tolong Download Template Kembali</td>",
				],
			];
		}

		$hr     = "<td></td>";
		if (!empty($data)) {
			$no   = $data[0];
			$nim  = strtoupper(trim($data[1]));
			$nama = $data[2];

			for ($i = 0; $i < $count; $i++) {
				$j = $i + 3;
				$cpmk[] = $data[$j];  //CPMK
			}

			if (!$nim) {
				$required = "<td><span class='label label-danger'>Wajib Diisi</span></td>";
				$html = "<td><span class='label label-danger'>Error</span></td>";
				$html .= "<td>{$no}</td>";

				$html .= $hr;

				if (!$no)
					$html .= $required;
				else
					$html .= "<td>{$no}</td>";

				if (!$nim)
					$html .= $required;
				else
					$html .= "<td>{$nim}</td>";

				// if (!$nama)
				// 	$html .= $required;
				// else
				// 	$html .= "<td>{$nama}</td>";

				for ($i = 0; $i < $count; $i++) {
					if (!$cpmk[$i])
						$html .= $required;
					else
						$html .= "<td>{$cpmk[$i]}</td>";
				}

				return [
					'code' => 200,
					'description' => 'Error Validasi',
					'data' => [
						'class' => 'danger',
						'html'  => $html,
					],
				];
			}

			if ($count == 5) {
				$html = [
					$hr,
					// "<td>{$no}</td>",
					"<td>{$nim}</td>",
					"<td>{$nama}</td>",
					"<td>{$cpmk[0]}</td>",
					"<td>{$cpmk[1]}</td>",
					"<td>{$cpmk[2]}</td>",
					"<td>{$cpmk[3]}</td>",
					"<td>{$cpmk[4]}</td>",
					$hr
				];
			} elseif ($count == 4) {
				$html = [
					$hr,
					// "<td>{$no}</td>",
					"<td>{$nim}</td>",
					"<td>{$nama}</td>",
					"<td>{$cpmk[0]}</td>",
					"<td>{$cpmk[1]}</td>",
					"<td>{$cpmk[2]}</td>",
					"<td>{$cpmk[3]}</td>",
					$hr
				];
			} elseif ($count == 3) {
				$html = [
					$hr,
					// "<td>{$no}</td>",
					"<td>{$nim}</td>",
					"<td>{$nama}</td>",
					"<td>{$cpmk[0]}</td>",
					"<td>{$cpmk[1]}</td>",
					"<td>{$cpmk[2]}</td>",
					$hr
				];
			} elseif ($count == 2) {
				$html = [
					$hr,
					// "<td>{$no}</td>",
					"<td>{$nim}</td>",
					"<td>{$nama}</td>",
					"<td>{$cpmk[0]}</td>",
					"<td>{$cpmk[1]}</td>",
					$hr
				];
			} elseif ($count == 1) {
				$html = [
					$hr,
					// "<td>{$no}</td>",
					"<td>{$nim}</td>",
					"<td>{$nama}</td>",
					"<td>{$cpmk[0]}</td>",
					$hr
				];
			}

			$status = $desc = '';
			$statust = $desct = '';

			$transaction  = Yii::$app->db->beginTransaction();
			try {
				$desc   .= $desct;
				$status .= $statust;
				$flag = true;

				for ($i = 0; $i < $count; $i++) {
					$newData = false;
					$data    = $exist = CapaianMahasiswa::findOne(['nim_ref_mahasiswa' => $nim, 'id_ref_cpmk' => $id_cpmk[$i]]);
					if (!$data) {
						$newData = true;
						$data    = new CapaianMahasiswa();
					} else {
						$desct   = 'Skip nim ';
						$statust = "<span class='label label-warning'>Skip Nilai</span><br>";
					}
					if ($update || $newData) {
						$data->id_ref_cpmk       = $id_cpmk[$i];                 // ID CPMK dalam bentuk array
						$data->nim_ref_mahasiswa = $nim;
						$data->nilai             = $cpmk[$i];
						$flag                    = $flag && $data->save(false);

						if ($update && $exist) {
							$desct   = 'Update Nilai ';
							$statust = "<span class='label label-warning'>Update Nilai</span><br>";
						}
					}
				}


				$desc   .= $desct;
				$status .= $statust;

				if ($flag) {
					$transaction->commit();

					// Yii::$app->assign->addAssign('Wali Murid', Yii::$app->id, $user->id);
					// Yii::$app->assign->addAssign('Siswa', Yii::$app->id, $user->id);

					$class   = $status ? 'warning' : 'success';
					$html[0] = $status ? "<td>{$status}</td>" : "<td><span class='label label-success'>Sukses</span></td>";
				} else {
					$transaction->rollBack();

					$desc    = 'Roll Back Error Save';
					$class   = 'danger';
					$html[0] = "<td><span class='label label-danger'>Error Save</span></td>";
				}
			} catch (\yii\db\Exception $e) {
				$transaction->rollBack();

				$desc    = 'Roll Back Error Save';
				$class   = 'danger';
				$html[0] = "<td><span class='label label-danger'>Error Save</span></td>";
			}
			$htmlString = '';
			foreach ($html as $value) {
				$htmlString .= $value;
			}

			return [
				'code' => 200,
				'description' => $desc,
				'data' => [
					'class' => $class,
					'html'  => $htmlString,
				],
			];
		}

		return [
			'code' => 401,
			'description' => 'No Data',
			'data' => [
				'class' => 'danger',
				'html'  => "<td><span class='label label-warning'>Error</span></td>
					<td colspan='30'>No Data</td>",
			],
		];
	}
}
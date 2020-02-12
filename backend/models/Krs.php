<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "krs".
 *
 * @property int $id
 * @property int|null $id_ref_mahasiswa
 * @property int|null $id_mata_kuliah_tayang
 * @property int|null $status
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property string|null $created_user
 * @property string|null $updated_user
 *
 * @property RefMahasiswa $refMahasiswa
 * @property MataKuliahTayang $mataKuliahTayang
 */
class Krs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'krs';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'id_ref_mahasiswa', 'id_mata_kuliah_tayang', 'status'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['created_user', 'updated_user'], 'string', 'max' => 255],
            [['id'], 'unique'],
            [['id_ref_mahasiswa'], 'exist', 'skipOnError' => true, 'targetClass' => RefMahasiswa::className(), 'targetAttribute' => ['id_ref_mahasiswa' => 'id']],
            [['id_mata_kuliah_tayang'], 'exist', 'skipOnError' => true, 'targetClass' => MataKuliahTayang::className(), 'targetAttribute' => ['id_mata_kuliah_tayang' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_ref_mahasiswa' => 'Id Ref Mahasiswa',
            'id_mata_kuliah_tayang' => 'Id Mata Kuliah Tayang',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_user' => 'Created User',
            'updated_user' => 'Updated User',
        ];
    }

    /**
     * Gets query for [[RefMahasiswa]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getRefMahasiswa()
    {
        return $this->hasOne(RefMahasiswa::className(), ['id' => 'id_ref_mahasiswa']);
    }

    /**
     * Gets query for [[MataKuliahTayang]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMataKuliahTayang()
    {
        return $this->hasOne(MataKuliahTayang::className(), ['id' => 'id_mata_kuliah_tayang']);
    }
}

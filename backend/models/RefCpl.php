<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "ref_cpl".
 *
 * @property int $id
 * @property string|null $kode
 * @property string|null $isi
 * @property string|null $ringkasan
 * @property int|null $status
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property string|null $created_user
 * @property string|null $updated_user
 *
 * @property RelasiCpmkCpl[] $relasiCpmkCpls
 */
class RefCpl extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_cpl';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['isi', 'ringkasan'], 'string'],
            [['status'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['kode'], 'string', 'max' => 8],
            [['created_user', 'updated_user'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'kode' => 'Kode',
            'isi' => 'Isi',
            'ringkasan' => 'Ringkasan',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_user' => 'Created User',
            'updated_user' => 'Updated User',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRelasiCpmkCpls()
    {
        return $this->hasMany(RelasiCpmkCpl::className(), ['id_ref_cpl' => 'id']);
    }
}

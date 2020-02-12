<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "ref_tahun_ajaran".
 *
 * @property int $id
 * @property string|null $tahun
 * @property int|null $status
 * @property string|null $created_at
 * @property string|null $updated_at
 * @property string|null $created_user
 * @property string|null $updated_user
 *
 * @property MataKuliahTayang[] $mataKuliahTayangs
 */
class RefTahunAjaran extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'ref_tahun_ajaran';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['status'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['tahun', 'created_user', 'updated_user'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tahun' => 'Tahun',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_user' => 'Created User',
            'updated_user' => 'Updated User',
        ];
    }

    /**
     * Gets query for [[MataKuliahTayangs]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMataKuliahTayangs()
    {
        return $this->hasMany(MataKuliahTayang::className(), ['id_tahun_ajaran' => 'id']);
    }
}

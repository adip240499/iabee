<?php

namespace backend\models\searchs;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\CapaianMahasiswa as CapaianMahasiswaModel;

/**
 * CapaianMahasiswa represents the model behind the search form of `backend\models\CapaianMahasiswa`.
 */
class CapaianMahasiswa extends CapaianMahasiswaModel
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'id_ref_cpmk', 'status'], 'integer'],
            [['nim_ref_mahasiswa', 'semester', 'created_at', 'updated_at', 'created_user', 'updated_user'], 'safe'],
            [['nilai'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = CapaianMahasiswaModel::find()->where(['status'=>1]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'id_ref_cpmk' => $this->id_ref_cpmk,
            'nilai' => $this->nilai,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'nim_ref_mahasiswa', $this->nim_ref_mahasiswa])
            ->andFilterWhere(['like', 'semester', $this->semester])
            ->andFilterWhere(['like', 'created_user', $this->created_user])
            ->andFilterWhere(['like', 'updated_user', $this->updated_user]);

        return $dataProvider;
    }
}

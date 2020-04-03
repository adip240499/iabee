<?php

use yii\helpers\Html;

$this->title = "Profil";
$this->params['breadcrumbs'][] = $this->title;

?>

<div class="panel panel-default">
    <div class="panel-body">
        <img class="profile-user-img img-responsive img-circle" src="<?php /* echo $model->getUserPhoto()*/ ?>" alt="">

        <h3 class="profile-username text-center"><?php echo $model->nama ?></h3>

        <p class="text-muted text-center"><?php echo $model->username ?> | <?php /*echo Yii::$app->assign->getAssign() */?></p>

        <hr>

        <div class="text-center">

            <?php echo Html::a('Ubah Kata Sandi', ['change-password'], ['class' => 'btn btn-danger']) ?>
            <?php echo Html::a('Ubah Foto', ['change-photo'], ['class' => 'btn btn-danger']) ?>

        </div>
    </div>
    <br>
    <br>
</div>
<?php
use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\widgets\ActiveForm;
?>

Номер сообщения: #<?=$id; ?>
<?php $form = ActiveForm::begin(['action' => 'index.php?r=message/send','enableAjaxValidation' => true,'options' => ['data-pjax' => true, ]]); ?>
<?= $form->field($formModel,'message_id')->textInput(); ?>
<?=Html::submitButton('Отправить', ['class' => 'btn btn-success']); ?>
<?php ActiveForm::end(); ?>

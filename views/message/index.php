<?php
use yii\grid\GridView;
use yii\helpers\Html;
use yii\bootstrap\Modal;
use app\models\User;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use yii\widgets\Pjax;
?>

<?php if(Yii::$app->session->hasFlash('success')) : ?>
<?=Yii::$app->session->getFlash('success'); ?>
<?php endif; ?>

<?php if(Yii::$app->session->hasFlash('error')) : ?>
<?=Yii::$app->session->getFlash('error'); ?>
<?php endif; ?>


<?php Modal::begin([
    'header' => '<h4>Добавление сообщения</h4>',
    'toggleButton' => [
        'label' => 'Добавить',
        'class' => 'btn btn-success',
    ],
]); ?>


<?php //Начало формы ?>
<?php Pjax::begin(['id' => 'new_message']) ?>
<?php $form = ActiveForm::begin(['options' => ['data-pjax' => true]]); ?>
<?=$form->field($formModel, 'receiver')->widget(Select2::classname(), [
    'data' => $users,
    'language' => 'ru',
    'options' => ['placeholder' => 'Выберите получателя'],
    'pluginOptions' => [
        'allowClear' => true
    ],
]); ?>
<?=$form->field($formModel,'subject'); ?>
<?=$form->field($formModel,'text')->textarea(); ?>
<?=Html::submitButton('Отправить', ['class' => 'btn btn-success']); ?>
<?php ActiveForm::end(); ?>
<?php Pjax::end() ?>
<?php //Конец формы ?>
<?php Modal::end();?>

<?php Pjax::begin(['id' => 'messages']) ?>
<?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            [
                'label' => 'Тема',
                'enableSorting' => true,
                'value' => function($model) {
                    return  $model->subject;
                },
            ],
            [
                'label' => 'Текст',
                'value' => function($model) {
                    return  $model->text;
                },
            ],
            [
                'label' => 'Статус',
                'value' => function($model) {
                   switch ($model->status) {
                        case 0:
                            $result = 'Новое';
                            break;
                        case 1:
                            $result = 'Отправлен';
                            break;
                        case 2:
                            $result = 'Ошибка';
                            break;
                        default:
                            $result = 'Ошибка, проверьте статус';
                            break;
                    }
                    return $result;
                },
            ],
            [
                'label' => 'Получатель',
                'value' => function($model) {
                    $user = User::findIdentity($model->receiver);
                    return  $user->username;
                },
            ],
            ['class' => 'yii\grid\ActionColumn',
                'template' => '{variants} {delete}',
                'buttons' => [
                    'variants' => function($url, $model, $key) {
                        return Html::a(
                            '<span class="glyphicon glyphicon-envelope"></span>',
                            $url,['class' => 'send_message','id' => $model->id]);
                    },
                    'delete' => function ($url, $model, $key) {
                        return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                            'data-method' => 'post',
                            'data-pjax' => '1',
                        ]);
                    },
                ]
            ],
        ],
    ]);
?>
<?php Pjax::end() ?>

<?php //Модалка для отправки сообщения ?>

<?php
Modal::begin([
    'header' => '<h4>Отправка сообщения</h4>',
    'toggleButton' => false,
    'id' => 'send_modal'
]); ?>
<div id="send_content">
<?=Html::input('hidden',null,null,['id' => 'send_message_id']); ?>
<?=Html::button('Отправить по СМС',['class' => 'btn send_sms']); ?>
<?=Html::button('Отправить по E-mail',['class' => 'btn btn-info send_email']); ?>
</div>
<?php Modal::end();?>
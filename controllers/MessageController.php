<?php
/**
 * Created by PhpStorm.
 * User: k0nsul
 * Date: 23.05.18
 * Time: 14:21
 */

namespace app\controllers;

use Yii;
use app\models\MessageForm;
use yii\web\Controller;
use app\models\User;
use app\models\Message;
use yii\data\ActiveDataProvider;
use app\models\Sent;

class MessageController extends Controller
{
    /**
     * @return string
     */
    public function actionIndex() {
        if(Yii::$app->user->isGuest) {
           $this->redirect('/index.php?r=site/login');
        }
        if(\Yii::$app->request->post()) {
            $model = new Message();
            if($model->load(Yii::$app->request->post())) {
                if($model->validate()) {
                    $model->status = 0;
                    $model->user_id = Yii::$app->user->id;
                    $model->save();
                    Yii::$app->session->setFlash('success','Сообщение сохранено!');
                    #return $this->refresh();
                } else {
                    Yii::$app->session->setFlash('error','Ошибка!');
                }
            }
        }
        //Список сообщений
        $messages = Message::find()->where(['user_id' => Yii::$app->user->id])->orderBy('id',SORT_DESC);

        //Форма создания сообщения
        $formModel = new Message();

        //Магия для gridView
        $dataProvider = new ActiveDataProvider([
            'query' => $messages,
            'pagination' => [
                'pageSize' => 10,
            ],
            'sort' => [
                'defaultOrder' => [
                    'id' => SORT_DESC,
                ]
            ],
        ]);
        //$users - для select2 выбора получателя
        return $this->render('index',['dataProvider' => $dataProvider,'formModel' => $formModel,'users' => User::findAll()]);
    }

    /**
     * @param int $id
     * @throws \Throwable
     * @throws \yii\db\StaleObjectException
     */
    public function actionDelete($id = 0) {
        $message = Message::find()->where(['id' => (int)$id,'user_id' => Yii::$app->user->id])->one();
        if($message)
        {
            $message->delete();
        }
        $this->actionIndex();
    }

    /**
     * @return string
     */
    public function actionSend() {
        if(\Yii::$app->request->post()) {
            $message = Message::findOne(Yii::$app->request->post('message_id'));
            if($message) {
                $string = "Сообщение с номером: {$message->id}\n";
                $string .= "Отправлено:".date('Y-m-d H:i:s')."\n";
                $string .= "Тип сообщения:".Yii::$app->request->post('type')."\n";
                $string .= "Тема сообщения: {$message->subject}\n";
                $string .= "Текст сообщения: {$message->text}\n";
                $filename = date('Y-m-d_H:i:s').'-'.uniqid().'.txt';
                $h = fopen(Yii::getAlias('@webroot').'/sent/'.$filename,'w');
                if($h) {
                    fwrite($h,$string);
                    fclose($h);
                    $message->status = 1;
                    $message->save(false);
                    return 'Сообщение успешно отправлено!';
                } else {
                    $message->status = 2;
                    $message->save(false);
                    return 'Ошибка открытия файла';
                }

            } else {
                return 'Сообщение не найдено';
            }
        }

    }
    /**
     * @param $array
     */
    public function debug($array) {
        echo '<pre>' . print_r($array) . '</pre>';
    }
}
<?php
/**
 * Created by PhpStorm.
 * User: k0nsul
 * Date: 23.05.18
 * Time: 17:20
 */

namespace app\models;


use yii\db\ActiveRecord;

class Message extends ActiveRecord
{
    /**
     * @return array
     */
    public function attributeLabels()
    {
        return [
            'subject' => 'Тема сообщения',
            'text' => 'Текст сообщения',
            'receiver' => 'Получатель',
        ];
    }
    /**
     * @return array
     */
    public function rules() {
        return [
            [['subject','text','receiver'],'required'],
            ['subject', 'string', 'min' => 3],
            ['text', 'string', 'min' => 15]
        ];
    }
}
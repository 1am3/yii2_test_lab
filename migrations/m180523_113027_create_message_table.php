<?php

use yii\db\Migration;

/**
 * Handles the creation of table `message`.
 */
class m180523_113027_create_message_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('message', [
            'id' => $this->primaryKey(),
            'subject' => \yii\db\mysql\Schema::TYPE_STRING,
            'text' => \yii\db\mysql\Schema::TYPE_TEXT,
            'status' => \yii\db\mysql\Schema::TYPE_INTEGER,
            'user_id' => \yii\db\mysql\Schema::TYPE_INTEGER,
            'receiver' => \yii\db\mysql\Schema::TYPE_INTEGER
        ]);

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('message');
    }
}

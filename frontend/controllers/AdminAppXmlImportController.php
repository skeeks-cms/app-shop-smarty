<?php
/**
 * Created by PhpStorm.
 * User: Ekilei
 * Date: 28.09.2017
 * Time: 14:57
 */

namespace frontend\controllers;

use common\models\Product;
use skeeks\cms\modules\admin\actions\AdminAction;
use yii\data\ActiveDataProvider;
use common\components\XmlProductImport;

class AdminAppXmlImportController extends \skeeks\cms\modules\admin\controllers\AdminModelEditorController
{
    public function init()
    {
        $this->name                     = "XML Импорт товаров";
        $this->modelShowAttribute       = "id";
        $this->modelClassName           = Product::className();

        parent::init();
    }

    public function actions()
    {
        return
            [
                'index' =>
                    [
                        'class' => AdminAction::className(),
                        'name' => 'Импорт из XML',
                        "icon" => "glyphicon glyphicon-th-list",
                        "priority" => 10,
                        "callback" => [$this, 'importActionXML'],
                    ],
            ];
    }

    public function importActionXML()
    {
        $xml = new XmlProductImport();
        $res = $xml->import();
        return $this->render($this->action->id,['res' => $res]);
    }
}
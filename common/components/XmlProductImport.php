<?php
namespace common\components;

use Yii;
use skeeks\cms\base\Component;

class XmlProductImport extends Component
{
    static public function import()
    {
        if (\Yii::$app->request->get('run') || \Yii::$app->request->post())
        {
            var_dump(\Yii::$app->appSettings->getXmlProductImport());

        }
    }
}
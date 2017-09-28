<?php
namespace common\components;

use yii\base\InvalidConfigException;
use Yii;
use skeeks\cms\base\Component;
use yii\db\Exception;

class XmlProductImport extends Component
{
    static public function import()
    {
        if (\Yii::$app->request->get('run') || \Yii::$app->request->post())
        {
            $view = Yii::$app->getView();
            if(!\Yii::$app->appSettings->getXmlProductImport())
            {
                $view->registerJs("alert('Не указан файл');");
                return 'error';
            }
            $file = \Yii::$app->appSettings->getXmlProductImport();
            $content = file_get_contents($file);
            if(!$content)
            {
                $view->registerJs("alert('Неверный путь к файлу');");
                return 'error';
            }
            $sxe = simplexml_load_string($content);
            if (!$sxe)
            {
                foreach(libxml_get_errors() as $error)
                {
                    return 'error: '.$error->message;
                }
            }

            return 'done!';
        }
    }
}
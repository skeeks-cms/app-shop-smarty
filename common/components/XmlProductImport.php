<?php
namespace common\components;

use common\helpers\CatalogTreeHelper;
use skeeks\cms\models\CmsTree;
use skeeks\cms\models\Tree;
use yii\base\InvalidConfigException;
use Yii;
use skeeks\cms\base\Component;
use yii\db\ActiveRecord;
use yii\db\Exception;

class XmlProductImport extends Component
{
    private $category;

    public function import()
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
            $shop = $sxe->shop;
            $offers = $shop->offers;

            $catalog = Tree::find()
                ->where(['code' => 'catalog'])->andWhere(['level' => 1])->one();

            $tree = [];

            foreach($sxe->shop->categories->category as $item) {
                $params = [];
                $params['name'] = (string) ''.$item->name;

                if((int) $item->pid) {
                    $params['pid'] = $tree[(int) $item->pid];
                }
                else {
                    $params['pid'] = $catalog->id;
                }
                $tree[(int)$item->id] = $this->checkTree($params);
            }

            var_dump($offers);

            return 'done!';
        }
    }

    private function checkTree($params)
    {
        $model = Tree::find()
            ->andWhere(['name' => $params['name']])
            ->andWhere(['tree_type_id' => '5'])
            ->andWhere(['pid' => $params['pid']])
            ->one();
        if(!$model)
        {
            $childTree = new Tree();
            $parent = Tree::find()->where(['id' => $params["pid"]])->one();
            $childTree->priority = Tree::PRIORITY_STEP;
            $childTree->name = $params['name'];

            //Элемент с большим приоритетом
            if ($treeChildrens = $parent->getChildren()->orderBy(['priority' => SORT_DESC])->one())
            {
                $childTree->priority = $treeChildrens->priority + Tree::PRIORITY_STEP;
            }
            if($parent && $parent->processAddNode($childTree))
            {
                return $childTree->id;
            }
            return false;
        }
        return $model->id;
    }
}
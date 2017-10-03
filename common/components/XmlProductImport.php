<?php
namespace common\components;

use common\helpers\CatalogTreeHelper;
use common\models\Product;
use skeeks\cms\models\CmsContent;
use skeeks\cms\models\CmsContentElement;
use skeeks\cms\models\CmsTree;
use skeeks\cms\models\Tree;
use yii\base\InvalidConfigException;
use Yii;
use skeeks\cms\base\Component;
use yii\db\ActiveRecord;
use yii\db\Exception;
use skeeks\cms\shop\models\ShopProduct;
use skeeks\cms\models\CmsContentPropertyEnum;
use skeeks\cms\models\CmsContentProperty;

class XmlProductImport extends Component
{
    private $category;
    private $counter = 0;
    private $count = 0;
    private $total = 0;
    private $limit = 500;

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

            foreach($sxe->shop->categories->category as $item)
            {
                set_time_limit(10);
                $params = [];
                $params['name'] = (string) $item->name;

                if((int) $item->pid)
                {
                    $params['pid'] = $tree[(int) $item->pid];
                }
                else
                {
                    $params['pid'] = $catalog->id;
                }
                $tree[(int)$item->id] = $this->checkTree($params);
            }

            $this->total = count($offers->offer);

            //var_dump($offers);
            foreach ($offers->offer as $offer)
            {
                set_time_limit(10);
                if($this->limit == $this->count) return 'Импорт завершен не полностью: '.$this->counter.' из '.$this->total.'.';
                $this->counter++;
                //var_dump((string)$offer->name);
                $params = [];
                $params['name'] = (string) $offer->name;
                $params['page'] = (string) $offer->page;
                $params['price'] = (int) $offer->price;
                $params['desc'] = (string) $offer->description;
                $params['brand'] = (string) $offer->vendor;
                $params['article'] = (string) $offer->vendorCode;
                $params['country'] = (string) $offer->country_of_origin;
                $params['barcode'] = (string) $offer->barcode;
                $params['amount'] = (string) $offer->amount;
                $params['weight'] = (string) $offer->weight;
                $params['file'] = (string) $offer->file;
                $params['image'] = (string) $offer->picture;
                $params['tree_id'] = $tree[(int)$offer->categoryId];
                $params['vendorCode'] = (string)$offer->vendorCode;
                $this->checkProduct($params);

                //break; // пока будем тормозить на первом же товаре
            }

            return 'done!';
        }
    }

    /**
     * @param $params
     * @return bool|int
     */
    private function checkTree($params)
    {
        $type_id = \skeeks\cms\models\CmsTreeType::find()->where(['code' => 'catalog'])->one()->id;
        if(!$type_id) throw new Exception('no catalog type');
        $model = Tree::find()
            ->andWhere(['name' => $params['name']])
            ->andWhere(['tree_type_id' => $type_id])
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
                return (int) $childTree->id;
            }
            return (bool) false;
        }
        return (int) $model->id;
    }

    /**
     * @param $params
     */
    private function checkProduct($params)
    {
        $prod_id = \skeeks\cms\models\CmsContent::find()->where(['code' => 'product'])->one()->id;
        if(!$prod_id) throw new Exception('no product type');
        $model = CmsContentElement::find()
            ->andWhere(['name' => $params['name']])
            ->andWhere(['content_id' => $prod_id])
            ->andWhere(['tree_id' => $params['tree_id']])
            ->one();
        if($model) return;
        $model = new CmsContentElement();
        $model->name = $params['name'];
        $model->content_id = $prod_id;
        $model->tree_id = $params['tree_id'];
        $model->code = $params['page'];
        $model->description_full = $params['desc'];

        if($model->save())
        {
            // свойства элемента
            $model->relatedPropertiesModel->setAttribute('file',$params['file']);
            $model->relatedPropertiesModel->setAttribute('weight',$params['weight']);
            $model->relatedPropertiesModel->setAttribute('amount',$params['amount']);
            $model->relatedPropertiesModel->setAttribute('barcode',$params['barcode']);
            $model->relatedPropertiesModel->setAttribute('stockSaleId',$params['vendorCode']);
            $model->relatedPropertiesModel->save();

            // связка элемент-товар
            $shopProduct = new ShopProduct();
            $shopProduct->id = $model->id;
            $shopProduct->baseProductPriceValue = $params['price'];
            $shopProduct->baseProductPriceCurrency = "RUB";
            $shopProduct->save();

            // привыязываем картинку
            if($params['image'])
            {
                $file = \Yii::$app->storage->upload($params['image'], [
                    'name' => $model->name
                ]);
                $model->link('image',$file);
                $model->save();
            }

            // установка страны
            $country_id = CmsContent::findOne(['code' => 'country','content_type' => 'info'])->primaryKey;
            $country = CmsContentElement::findOne([
                'name' => $params['country'],
                'content_id' => $country_id,
            ]);
            if(!$country)
            {
                $country = new CmsContentElement();
                $country->content_id = $country_id;
                $country->name = $params['country'];
                $country->save();
            }
            $model->relatedPropertiesModel->setAttribute('country',$country->primaryKey);

            // установка бренда
            $brand_id = CmsContent::findOne(['code' => 'brand','content_type' => 'info'])->primaryKey;
            $brand = CmsContentElement::findOne([
                'content_id' => $brand_id,
                'name' => $params['brand'],
            ]);
            if(!$brand)
            {
                $brand = new CmsContentElement();
                $brand->content_id = $brand_id;
                $brand->name = $params['brand'];
                $brand->save();
            }
            $model->relatedPropertiesModel->setAttribute('brand',$brand->primaryKey);
            $model->relatedPropertiesModel->save();
        }

    }
}
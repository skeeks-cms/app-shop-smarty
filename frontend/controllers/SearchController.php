<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link https://skeeks.com/
 * @copyright (c) 2010 SkeekS
 * @date 04.10.2017
 */
namespace frontend\controllers;

use skeeks\cms\models\CmsContentElement;
use yii\helpers\Json;
use yii\web\Controller;

class SearchController extends Controller
{
    public function actionAutocomplete()
    {
        $term = \Yii::$app->request->get('term');
        if ($term=='') $term='';


        $models = CmsContentElement::find()
            //->select(['id as value', 'name as label'])
            ->where(['like', 'name', $term])
            ->limit(10)
            ->all();

        $data = [];
        if ($models) {
            foreach ($models as $model)
            {
                $tmpdata = [];
                $tmpdata['value'] = $model->id;
                $tmpdata['label'] = $model->name;
                $tmpdata['url'] = $model->url;
                $data[] = $tmpdata;
            }
        }
        //Yii::$app->response->format = Response::FORMAT_JSON;
        //echo json_encode($data, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
        return Json::encode($data);

    }
}

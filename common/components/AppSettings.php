<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 27.10.2015
 */
namespace common\components;
use frontend\assets\SmartyThemeAsset;
use skeeks\cms\base\Component;

use skeeks\cms\components\Cms;
use skeeks\cms\models\CmsContent;
use skeeks\cms\modules\admin\widgets\form\ActiveFormUseTab;
use \Yii;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

/**
 * Class AppSettings
 *
 * @package common\components
 */
class AppSettings extends Component
{
    /**
     * Можно задать название и описание компонента
     * @return array
     */
    static public function descriptorConfig()
    {
        return array_merge(parent::descriptorConfig(), [
            'name'          => 'Настройки портала',
        ]);
    }

    public $xmlProductImport = '';


    public function rules()
    {
        return ArrayHelper::merge(parent::rules(), [
            [['xmlProductImport'], 'string'],
        ]);
    }

    public function attributeLabels()
    {
        return ArrayHelper::merge(parent::attributeLabels(), [
            'xmlProductImport'         => 'Импорт товаров через XML',
        ]);
    }

    public function renderConfigForm(ActiveForm $form)
    {
        echo $form->fieldSet(\Yii::t('app', 'Main'));

        echo $form->field($this, 'xmlProductImport')->textInput()->hint('путь к файлу');

        echo $form->fieldSetEnd();
    }

    public function getXmlProductImport()
    {
        return (string) $this->xmlProductImport;
    }

}
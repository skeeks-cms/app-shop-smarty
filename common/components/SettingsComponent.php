<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 31.03.2016
 */
namespace common\components;
use skeeks\cms\modules\admin\widgets\form\ActiveFormUseTab;
use skeeks\cms\modules\admin\widgets\formInputs\OneImage;
use yii\base\BootstrapInterface;
use yii\helpers\ArrayHelper;
use yii\widgets\ActiveForm;

/**
 * @property $shortTitle
 *
 * Class TemplateHelperComponent
 * @package common\components
 */
class SettingsComponent extends \skeeks\cms\base\Component
{
    public $marginRatio = 1;
    public $stockSaleCSVUrl = "";

    public $shadowText1 = '';
    public $shadowText2 = '';
    public $shadowText3 = '';

    /**
     * Можно задать название и описание компонента
     * @return array
     */
    static public function descriptorConfig()
    {
        return array_merge(parent::descriptorConfig(), [
            'name'          => 'Настройки проекта',
        ]);
    }

    public function rules()
    {
        return ArrayHelper::merge(parent::rules(), [
            [['shadowText1', 'shadowText2', 'shadowText3', 'stockSaleCSVUrl'], 'string'],
            [['marginRatio'], 'number'],
        ]);
    }

    public function attributeLabels()
    {
        return ArrayHelper::merge(parent::attributeLabels(), [
            'marginRatio'                   => 'Коэффициент наценки',
            'stockSaleCSVUrl'               => 'StockSale csv файл',
            'shadowText1'                   => 'Подсказка 1',
            'shadowText2'                   => 'Подсказка 2',
            'shadowText3'                   => 'Подсказка 3',
        ]);
    }

    public function attributeHints()
    {
        return ArrayHelper::merge(parent::attributeHints(), [
            'short_title_en'      => 'Добавляется к заголовку всех страниц сайта',
            'short_title_ru'      => 'Добавляется к заголовку всех страниц сайта',
            'marginRatio'         => 'Базовые цены в момент обновления будут умножены на данный коэффициент',
            'stockSaleCSVUrl'     => 'Ссылка на CSV файл от поставщика StockSale, с товарами и ценами',
        ]);
    }

    /**
     * @param ActiveFormUseTab $form
     */
    public function renderConfigForm(ActiveForm $form)
    {
        echo $form->fieldSet(\Yii::t('app', 'Подсказки в шапке сайта'));
            echo $form->field($this, 'shadowText1')->textarea(['rows' => 4]);
            echo $form->field($this, 'shadowText2')->textarea(['rows' => 4]);
            echo $form->field($this, 'shadowText3')->textarea(['rows' => 4]);
        echo $form->fieldSetEnd();

        echo $form->fieldSet(\Yii::t('app', 'Настройки импорта'));

            echo $form->field($this, 'marginRatio');
            echo $form->field($this, 'stockSaleCSVUrl');


        echo $form->fieldSetEnd();
    }


}
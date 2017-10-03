<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 27.02.2017
 *
 */
return [

    'exportImport' =>
    [
        'items' =>
        [

            [
                "label"     => \Yii::t('skeeks/cms', 'Импорт товаров XML'),
                "img"       => ['\skeeks\cms\modules\admin\assets\AdminAsset', 'images/icons/icon.infoblock.png'],
                "url"       => ["admin-app-xml-import"],
            ],

        ]
    ]
];
<?php
/**
 * AppAsset
 *
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010-2014 SkeekS (Sx)
 * @date 20.10.2014
 * @since 1.0.0
 */
namespace frontend\assets;

use skeeks\cms\base\AssetBundle;

/**
 * Class AppAsset
 *
 * @package frontend\assets
 */
class AppAsset extends AssetBundle
{

    public $basePath = '@webroot';

    public $baseUrl = '@web';

    public $css = [
        'https://fonts.googleapis.com/css?family=Open+Sans',
        'css/animate.css',
        'css/fast.css',
        'css/media.css',
        'css/owl.carousel.min.css',
        'css/owl.theme.default.min.css',
    ];

    public $js = [
        'smarty/js/scripts.js',
        'js/app.js',
        'js/owl.carousel.min.js',
    ];

    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapPluginAsset',
        '\skeeks\sx\assets\Custom',
        '\skeeks\cms\assets\FancyboxAssets',
        '\skeeks\cms\assets\FancyboxThumbsAssets',
        '\frontend\assets\SmartyThemeAsset',
        '\skeeks\cms\modules\admin\assets\JqueryScrollbarAsset',
    ];

}
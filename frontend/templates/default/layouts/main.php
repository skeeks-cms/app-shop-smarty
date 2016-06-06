<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
use yii\helpers\Html;
use frontend\assets\AppAsset;
/* @var $this \yii\web\View */
/* @var $content string */
AppAsset::register($this);

if ($bg = \Yii::$app->request->get('bg')) {
    $this->registerCss(<<<CSS
body
{
    background: url('{$bg}') fixed center center;
}
#sx-center-wrapper
{
    box-shadow: 0px 0px 4px 1px silver;
}

CSS
    );
}
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" prefix="og: http://ogp.me/ns#">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <link rel="icon" href="/favicon.ico?v=<?= @filemtime(\Yii::getAlias('@app/web/favicon.ico'));?>"  type="image/x-icon" />
    <?php $this->head() ?>
</head>
<body class="smoothscroll enable-animation">
    <?php $this->beginBody() ?>

		<!-- wrapper -->
		<div id="wrapper">

            <!-- Top Bar -->
            <div id="topBar" class="hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="sx-item-plus">
                                <a href="#" class="sx-item-plus" style="text-align: center;" data-trigger="hover" data-container="body" data-placement="bottom" data-content="<?= \Yii::$app->settings->shadowText1; ?>">

                                    <img src="/img/icons/top-one-white.png" style="float: left;
        padding-top: 6px;
        margin-right: 15px;
        "> У нас актуальные коллекции <br />
                                    и оригиналы 100%
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="sx-item-plus" style="text-align: center;">
                                <a class="sx-item-plus" style="text-align: center;" data-container="body" data-trigger="hover" data-placement="bottom" data-content="<?= \Yii::$app->settings->shadowText2; ?>">
                                    <div style="padding-top: 7px;">
                                    <img src="/img/icons/top-one-clock.png" style="
        padding-top: 0px;
        margin-right: 15px;
        ">Распродажи</div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="sx-item-plus" style="text-align: right;">
                                <a class="sx-item-plus" style="text-align: center;" data-container="body" data-trigger="hover" data-placement="bottom" data-content="<?= \Yii::$app->settings->shadowText3; ?>">

                                    <div style="padding-top: 7px;">
                                    <img src="/img/icons/delivery-top.png" style="
    padding-top: 0px;
    margin-right: 15px;
    ">Доставка на следующий день</div>
                                </a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Top Bar -->

            <div id="sx-center-wrapper">
            <?= $this->render('@app/views/header'); ?>
                <?= $content; ?>
            </div>
            <?= $this->render('@app/views/footer'); ?>

        </div>
		<!-- /wrapper -->


		<!-- SCROLL TO TOP -->
		<a href="#" id="toTop"></a>


		<!-- PRELOADER -->
		<!--<div id="preloader">
			<div class="inner">
				<span class="loader"></span>
			</div>
		</div>--><!-- /PRELOADER -->



    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
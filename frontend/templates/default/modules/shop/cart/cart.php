<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 22.09.2015
 */
/* @var $this yii\web\View */
?>

<?= $this->render('@app/views/include/breadcrumbs', [
    'title' => 'Корзина №'.\Yii::$app->shop->cart->shopOrder->id,
]); ?>


<?
\frontend\assets\CartAsset::register($this);
\skeeks\cms\shop\widgets\ShopGlobalWidget::widget();
$this->registerJs(<<<JS
    (function(sx, $, _)
    {
        new sx.classes.shop.FullCart(sx.Shop, 'sx-cart-full');
    })(sx, sx.$, sx._);
JS
);
?>
<!--=== Content Part ===-->
<section class="sx-cart-layout bg-printair">
    <? $pjax = \skeeks\cms\modules\admin\widgets\Pjax::begin([
        'id' => 'sx-cart-full',
    ]); ?>
    <div class="row">
        <div class="container sx-border-block">


            <? if (\Yii::$app->shop->shopFuser->isEmpty()) : ?>
                <!-- EMPTY CART -->
                <div class="panel panel-default">
                    <div class="panel-body">
                        <strong>Ваша корзина пуста!</strong><br/>
                        В вашей корзине нет покупок.<br/>
                        Кликните <a href="/" data-pjax="0">сюда</a> для продолжения покупок. <br/>
                        <!--<span class="label label-warning">this is just an empty cart example</span>-->
                    </div>
                </div>
                <!-- /EMPTY CART -->
            <? else: ?>
                <?= \skeeks\cms\shopCartStepsWidget\ShopCartStepsWidget::widget(); ?>
                <hr/>
                <!-- LEFT -->
                <div class="col-lg-9 col-sm-8">
                    <?= \skeeks\cms\shopCartItemsWidget\ShopCartItemsListWidget::widget([
                        'dataProvider' => new \yii\data\ActiveDataProvider([
                            'query'      => \Yii::$app->shop->shopFuser->getShopBaskets(),
                            'pagination' =>
                                [
                                    'defaultPageSize' => 100,
                                    'pageSizeLimit'   => [1, 100],
                                ],
                        ]),

                    ]); ?>
                </div>
                <!-- RIGHT -->
                <div class="col-lg-3 col-sm-4">
                    <? $url = \yii\helpers\Url::to(['/shop/cart/checkout']); ?>
                    <?= $this->render("@app/views/modules/shop/cart/_result", [
                        'submit' => <<<HTML
    <a href="{$url}" class="btn btn-primary btn-lg btn-block size-15" data-pjax="0">
        <i class="fa fa-mail-forward"></i> Оформить
    </a>
HTML
                        ,
                    ]); ?>
                </div>
            <? endif; ?>

        </div>
    </div>
    <? $pjax::end(); ?>
</section>
<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */
if ($bg = $model->relatedPropertiesModel->getAttribute('bg')) {
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
$this->registerJs(<<<JS

    $(document).ready(function(){
			
         $(".recomend-slider").owlCarousel({
			items:4,
			loop:true,
			nav:true 
		 });
    });

JS
);

\frontend\assets\OwnCarouselAsset::register($this); //подключаем чтобы не ломалась верстка если убрать слайдер с брендами
$this->registerJs(<<<JS

new sx.classes.OwnCarousel({

'jsquerySelector' : '.brands-carousel'

});

JS
);
?>
<!-- SLIDER -->
<section class="mslider" style="border: none;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                    'namespace' => 'ContentElementsCmsWidget-slides',
                    'viewFile' => '@app/views/widgets/ContentElementsCmsWidget/slides',
                ]); ?>
            </div>
        </div>
    </div>
</section>
<!-- /SLIDER -->

<section class="recslider">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                    <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
//                    'contentElementClass' => \skeeks\cms\shop\models\ShopCmsContentElement::className(),
                        'namespace' => 'ContentElementsCmsWidget-home-page',
                        'viewFile' => '@app/views/widgets/ContentElementsCmsWidget/recomend-home',
//                    'activeQueryCallback' => function (\yii\db\ActiveQuery $query) use ($model) {
//                        $query->with('shopProduct');
//                        $query->with('shopProduct.baseProductPrice');
//                        $query->with('shopProduct.minProductPrice');
//
//                    }
                    ]); ?>
            </div>
        </div>
    </div>
</section>
  

<? if ($model->description_full) : ?>
    <section class="padding-top-20">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?= $model->description_full; ?>
                </div>
            </div>
        </div>
    </section>
<? endif; ?>


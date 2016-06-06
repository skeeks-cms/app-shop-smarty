<?
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 06.03.2015
 */
/* @var $this \yii\web\View */
/* @var \skeeks\cms\models\Tree $model */
$catalogHelper = \common\helpers\CatalogTreeHelper::instance($model);
$this->registerJs(<<<JS
//inner-wrapper scrollbar-macosx scroll-content scroll-scrollx_visible scroll-scrolly_visible

JS
);
?>

<?= $this->render('@template/include/breadcrumbs', [
    'model' => $model
])?>


<? if ($model->children && $model->level <= 2 && ( \Yii::$app->request->get('mode') != 'products' ) ) : ?>
    <!-- Product page -->
    <section style="padding-top: 20px;">
        <div class="container">

                <div class="col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">

                    <div class="row">
                        <div class="col-lg-12 col-md-12">



                        <? if ($model->description_full) : ?>

                <? $this->registerCss(<<<CSS
.sx-desc-hide
{
    height: 60px;
    overflow: hidden;
}

.sx-btn-trigger
{
    margin-top: 10px;
}
CSS
            );
?>

                <? $this->registerJs(<<<JS
(function(sx, $, _)
{
    sx.classes.Desc = sx.classes.Component.extend({

        _init: function()
        {

        },

        _onDomReady: function()
        {
            var jContainter = $(".sx-desc-full");
            if (jContainter.height() > 60)
            {
                var Jbtn = $("<a>", {
                    'class' : "btn btn-default btn-xs sx-btn-trigger"
                }).text("Подробнее");

                Jbtn.on('click', function()
                {
                    if (jContainter.hasClass('sx-desc-hide'))
                    {
                        jContainter.removeClass('sx-desc-hide');
                        Jbtn.text("Скрыть");
                    } else
                    {
                        jContainter.addClass('sx-desc-hide');
                        Jbtn.text("Подробнее");
                    }

                    return false;
                });

                jContainter.addClass('sx-desc-hide').after(Jbtn);
            }
        },

        _onWindowReady: function()
        {}
    });

    new sx.classes.Desc();

})(sx, sx.$, sx._);
JS
); ?>

                <div class="sx-desc-full">
                    <?= $model->description_full; ?>
                </div>
                <p></p>
                <p></p>
            <? endif; ?>




                            <?= \skeeks\cms\cmsWidgets\treeMenu\TreeMenuCmsWidget::widget([
                                'namespace'         => 'TreeMenuCmsWidget-sub-catalog',
                                'viewFile'          => '@template/widgets/TreeMenuCmsWidget/sub-catalog',
                                'treePid'           => $model->id,
                                'enabledRunCache'   => \skeeks\cms\components\Cms::BOOL_N,
                            ]); ?>

                    </div>

                    </div>

                </div>


                <!-- LEFT -->
                <div class="col-lg-3 col-md-3 col-sm-3 col-lg-pull-9 col-md-pull-9 col-sm-pull-9" style="border: 1px solid rgba(192, 192, 192, 0.35);">

                    <!-- CATEGORIES -->
                    <div class="side-nav  margin-bottom-20 margin-top-20">


                        <?= \common\widgets\LeftMenu::widget([
                            'tree' => \Yii::$app->cms->currentTree
                        ]); ?>

                    </div>

                    <div class="side-nav margin-bottom-20">

                        <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                            'contentElementClass'         => \skeeks\cms\shop\models\ShopCmsContentElement::className(),
                            'namespace'         => 'ContentElementsCmsWidget-catalog-main-left-1',
                            'viewFile' 	        => '@app/views/widgets/ContentElementsCmsWidget/visitedProducts',
                            'label'             => 'Спецпредложения',
                            'pageSize'          => 5,
                            'enabledCurrentTree'=> \skeeks\cms\components\Cms::BOOL_N,
                            'activeQueryCallback' 	=> function(\yii\db\ActiveQuery $query) use ($model)
                            {
                                $query->with('relatedProperties');
                                $query->with('shopProduct');
                                $query->with('shopProduct.baseProductPrice');
                                $query->with('shopProduct.minProductPrice');
                            }
                        ])?>

                        <p></p>
                    </div>

                    <!-- /CATEGORIES -->
                </div>

        </div>
    </section>

<? else : ?>

    <? $pjax = \skeeks\cms\modules\admin\widgets\Pjax::begin(); ?>

    <? if (\Yii::$app->request->get('mode') == 'products')
    {
        $this->registerJs(<<<JS
$("#sx-filters-form").append(
    $("<input>", {
        'type' : 'hidden',
        'name' : 'mode',
        'value' : 'products',
    })
);
JS
);
    }?>
    <?
    $this->registerJs(<<<JS
(function(sx, $, _)
{
    new sx.classes.Pjax({'id': '{$pjax->id}'});

    $('.sx-filters-checkbox-options').addClass('scrollbar-outer');

    jQuery('.scrollbar-inner').scrollbar();
    jQuery('.scrollbar-outer').scrollbar();
    jQuery('.scrollbar-macosx').scrollbar();
    jQuery('.scrollbar-light').scrollbar();
    jQuery('.scrollbar-rail').scrollbar();
})(sx, sx.$, sx._);
JS
);
    ?>


    <?
    $this->registerCss(<<<CSS
.checkbox input[type=checkbox]
{
    left:auto;
}
CSS
);
    ?>



        <!-- Product page -->
        <section style="padding-top: 20px;">
            <div class="container">

                    <div class="col-lg-9 col-md-9 col-sm-9 col-lg-push-3 col-md-push-3 col-sm-push-3">

                        <div class="row">
                            <div class="col-lg-12 col-md-12">



                            <? if ($model->description_full) : ?>

                <? $this->registerCss(<<<CSS
.sx-desc-hide
{
    height: 60px;
    overflow: hidden;
}

.sx-btn-trigger
{
    margin-top: 10px;
}
CSS
            );
?>

                <? $this->registerJs(<<<JS
(function(sx, $, _)
{
    sx.classes.Desc = sx.classes.Component.extend({

        _init: function()
        {

        },

        _onDomReady: function()
        {
            var jContainter = $(".sx-desc-full");
            if (jContainter.height() > 60)
            {
                var Jbtn = $("<a>", {
                    'class' : "btn btn-default btn-xs sx-btn-trigger"
                }).text("Подробнее");

                Jbtn.on('click', function()
                {
                    if (jContainter.hasClass('sx-desc-hide'))
                    {
                        jContainter.removeClass('sx-desc-hide');
                        Jbtn.text("Скрыть");
                    } else
                    {
                        jContainter.addClass('sx-desc-hide');
                        Jbtn.text("Подробнее");
                    }

                    return false;
                });

                jContainter.addClass('sx-desc-hide').after(Jbtn);
            }
        },

        _onWindowReady: function()
        {}
    });

    new sx.classes.Desc();

})(sx, sx.$, sx._);
JS
); ?>

                <div class="sx-desc-full">
                    <?= $model->description_full; ?>
                </div>
                <p></p>
                <p></p>
            <? endif; ?>


<?
$filters = new \skeeks\cms\shop\cmsWidgets\filters\ShopProductFiltersWidget([
    'namespace'             => 'ShopProductFiltersWidget-left',
    'onlyExistsFilters'     => true,
    'viewFile'              => 'slider',
]); ?>

<? $widgetElements = new \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget([
    'namespace' => 'ContentElementsCmsWidget-second',
    'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products',
    'contentElementClass'         => \skeeks\cms\shop\models\ShopCmsContentElement::className(),
    'dataProviderCallback' 	=> function(\yii\data\ActiveDataProvider $activeDataProvider) use ($filters)
    {
        $filters->search($activeDataProvider);

        $activeDataProvider->query->with('relatedProperties');
        $activeDataProvider->query->with('shopProduct');
        $activeDataProvider->query->with('shopProduct.baseProductPrice');
        $activeDataProvider->query->with('shopProduct.minProductPrice');
        //$activeDataProvider->query->joinWith('shopProduct.baseProductPrice as basePrice');
        //$activeDataProvider->query->orderBy(['basePrice' => SORT_ASC]);
    },
]); ?>

<? $resultElements = $widgetElements->run(); ?>
<? $resultFilters  = $filters->run(); ?>

                            <?= $resultElements; ?>


                        </div>
                        </div>

                    </div>

                    <!-- LEFT -->
                <!-- sx-bg-silver-->
                    <div class="col-lg-3 col-md-3 col-sm-3 col-lg-pull-9 col-md-pull-9 col-sm-pull-9" style="border: 1px solid rgba(192, 192, 192, 0.35);">

                        <!-- CATEGORIES -->
                        <div class="side-nav margin-bottom-20 margin-top-10 sx-left-block sx-has-filters">


                            <?= \common\widgets\LeftMenu::widget([
                                'tree' => \Yii::$app->cms->currentTree
                            ]); ?>
                        </div>

                        <div class="side-nav margin-bottom-20 margin-top-20">
                            <?= $resultFilters; ?>
                        </div>

                        <!-- /CATEGORIES -->
                        <div class="side-nav margin-bottom-20">
                            <?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
                                'contentElementClass'         => \skeeks\cms\shop\models\ShopCmsContentElement::className(),
                                'namespace'         => 'ContentElementsCmsWidget-catalog-main-left-1',
                                'viewFile' 	        => '@app/views/widgets/ContentElementsCmsWidget/visitedProducts',
                                'label'             => 'Спецпредложения',
                                'pageSize'          => 5,
                                'enabledCurrentTree'=> \skeeks\cms\components\Cms::BOOL_N,
                                'activeQueryCallback' 	=> function(\yii\db\ActiveQuery $query) use ($model)
                                {
                                    $query->with('relatedProperties');
                                    $query->with('shopProduct');
                                    $query->with('shopProduct.baseProductPrice');
                                    $query->with('shopProduct.minProductPrice');
                                }
                            ]); ?>

                            <p></p>
                        </div>
                    </div>


                </div>
        </section>

    <? \skeeks\cms\modules\admin\widgets\Pjax::end(); ?>
<? endif; ?>
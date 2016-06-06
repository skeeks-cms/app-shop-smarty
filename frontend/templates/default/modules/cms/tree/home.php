<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 24.05.2015
 */
/* @var $this \yii\web\View */
/* @var $model \skeeks\cms\models\Tree */

$man = \skeeks\cms\models\CmsTree::findOne(1053);
$woman = \skeeks\cms\models\CmsTree::findOne(1050);
?>



<!-- SLIDER -->


<section class="padding-top-0 padding-bottom-20" style="border: none;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
					'namespace' => 'ContentElementsCmsWidget-slides',
					'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/slides',
				]); ?>
			</div>
		</div>

		<!--<section class="callout-dark heading-title heading-arrow-bottom padding-top-20 padding-bottom-20">
			<div class="container">

				<div class="text-center">

					<?/*= \skeeks\cms\cmsWidgets\text\TextCmsWidget::widget([
				'namespace'         => 'home-center-text',
				'text'              => <<<HTML

				<h3 class="size-30">SkeekS CMS - SHOP</h3>
				<p>один из ведущих мотосалонов России по продаже новой и б/у мототехники.</p>
HTML
,
			]); */?>



				</div>

			</div>
		</section>
-->
		<!-- INFO BAR -->
		<!--<div class="info-bar info-bar-clean info-bar-bordered nomargin-bottom">
			<div class="container">

				<div class="row">

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-globe"></i>
						<h3>Беслпатная доставка</h3>
						<p>Мы доставляем товары бесплатно.</p>
					</div>

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-usd"></i>
						<h3>Не надо денег</h3>
						<p>Мы бесплатно раздаем весь товар.</p>
					</div>

					<div class="col-sm-4">
						<i class="glyphicon glyphicon-flag"></i>
						<h3>Онлайн поддержка 24/7</h3>
						<p>Звоните в любое время дня и ночи.</p>
					</div>

				</div>

			</div>
		</div>-->
		<!-- /INFO BAR -->

	</div>
</section>
<!-- /SLIDER -->

<section class="padding-top-20 padding-bottom-20" style="border: none;">
	<div class="container">
		<div class="row">
			<div class="col-md-6"><a href="<?= $man->url; ?>"><img src="<?= $man->image->src; ?>" class="img-responsive sx-box-shadow"></a></div>
			<div class="col-md-6"><a href="<?= $woman->url; ?>"><img src="<?= $woman->image->src; ?>"  class="img-responsive sx-box-shadow"></a></div>
		</div>
	</div>
</section>

<section class="padding-top-40 padding-bottom-20" style="border: none;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="size-30 margin-bottom-20">Как заказать?</h1>
				<img src="/img/kak2.png" class="img-responsive"/>
			</div>
		</div>

	</div>
</section>

<section class="padding-top-40 padding-bottom-20" style="border: none;">
	<div class="container">

		<div class="row">


			<div class="col-md-12">
				<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
					'contentElementClass'         => \skeeks\cms\shop\models\ShopCmsContentElement::className(),
					'namespace' => 'ContentElementsCmsWidget-home-page',
					'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products-home',
					'activeQueryCallback' 	=> function(\yii\db\ActiveQuery $query) use ($model)
					{
						$query->with('shopProduct');
						$query->with('shopProduct.baseProductPrice');
						$query->with('shopProduct.minProductPrice');
					}

				]); ?>

			</div>
		</div>

	</div>
</section>

<section class="padding-top-40 padding-bottom-60" style="border: none;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="size-30 margin-bottom-20">Бренды</h1>
				<hr />
				<div style="text-align: center">
					<?= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
						'namespace' => 'ContentElementsCmsWidget-home-brands',
						'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/brands-home',
						'limit' 	=> 20,
					]); ?>
				<!--<img src="/img/brands.png" class="img-responsive"/>-->
				</div>
				<hr />
			</div>
		</div>

	</div>
</section>

<!--<section class="padding-top-20 padding-bottom-0">
	<div class="container">

		<div class="row">


			<div class="col-md-12">
				<?/*= \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget::widget([
					'namespace' => 'ContentElementsCmsWidget-home-page2',
					'viewFile' 	=> '@app/views/widgets/ContentElementsCmsWidget/products-home',
				]); */?>

			</div>
		</div>

	</div>
</section>-->



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

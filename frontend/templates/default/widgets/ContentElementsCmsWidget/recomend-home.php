<?php
/**
 * @author Semenov Alexander <semenov@skeeks.com>
 * @link http://skeeks.com/
 * @copyright 2010 SkeekS (СкикС)
 * @date 25.05.2015
 */
/* @var $this   yii\web\View */
/* @var $widget \skeeks\cms\cmsWidgets\contentElements\ContentElementsCmsWidget */
?>

<? if ($widget->label) : ?>
    <h2 class="size-30 margin-bottom-20"><?= $widget->label; ?></h2>
<? endif; ?>
<? echo \yii\widgets\ListView::widget([
    'dataProvider' => $widget->dataProvider,
    'itemView' => 'recomend-item',
    'emptyText' => '',
    'options' =>
        [
            'class' => 'shop-item-list row list-inline nomargin',
            'tag' => 'ul',
        ],
    'itemOptions' => [
        'tag' => false
    ],
    'layout' => "\n{items}"
]) ?>

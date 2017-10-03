<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\datecontrol\DateControl;

$file = 'Не указан';
if(\Yii::$app->appSettings->getXmlProductImport()) $file = \Yii::$app->appSettings->getXmlProductImport();
?>

<div class="text-center" style="padding: 20px;">
    <p>Путь к файлу: <?= $file ?>
    <a href="<?= \yii\helpers\Url::to(['~sx/cms/admin-settings?component=common%5Ccomponents%5CAppSettings']); ?>" class="">
        Настройки импорта файла
    </a>
    </p>
    <p>За один раз может импортироваться до 500 объектов в связи с таймлимитом сервера, может потребоваться выполнять действие несколько раз.</p>
</div>


<?php $form = ActiveForm::begin(); ?>

<div class="form-group text-center">
    <?= Html::submitButton('Импортировать XML продуктов', ['class' => 'btn btn-lg btn-primary']) ?>
</div>
<?php ActiveForm::end(); ?>

<?= $res; ?>
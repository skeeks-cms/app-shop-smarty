Shop on SkeekS CMS (Yii2)
=========================

[![skeeks!](https://en.cms.skeeks.com/uploads/all/35/fd/33/35fd33aa306823dbaf53a0142d43b3fa.png)](https://en.cms.skeeks.com)  

##Links
* [Web site (SkeekS CMS)](https://cms.skeeks.com)
* [Docs](https://cms.skeeks.com/docs)
* [Author](https://skeeks.com)
* [ChangeLog](https://github.com/skeeks-cms/cms/blob/master/CHANGELOG.md)
* [https://cms.skeeks.com/marketplace/websites/clothing/257-internet-magazin-odejdyi](https://cms.skeeks.com/marketplace/websites/clothing/257-internet-magazin-odejdyi)

##Install

```bash
# Download latest version of composer
curl -sS https://getcomposer.org/installer | COMPOSER_HOME=.composer php
# Installing the base project SkeekS CMS
COMPOSER_HOME=.composer php composer.phar create-project --no-install --prefer-dist skeeks/app-shop-smarty demo.ru
# Going into the project folder
cd demo.ru
# Download latest version of composer in project
curl -sS https://getcomposer.org/installer | COMPOSER_HOME=.composer php
# Extra plug-ins
COMPOSER_HOME=.composer php composer.phar global require fxp/composer-asset-plugin --no-plugins
# Download dependency
COMPOSER_HOME=.composer php composer.phar install -o
# Run the command to initialize the project, the installer executable file and the necessary rights to the directory
php yii cms/init

#Edit the file to access the database, it is located at common/config/db.php

#Installation of ready-dump
php yii dbDumper/mysql/restore
```


##Screenshots
[![skeeks!](https://cms.skeeks.com/uploads/all/3f/6d/14/3f6d14293f59d2553f867c324ca1959e.png)](https://cms.skeeks.com)
[![skeeks!](https://cms.skeeks.com/uploads/all/2d/27/d4/2d27d4cdeeaceb28c54184f3b1886f36.png)](https://cms.skeeks.com)

___

> [![skeeks!](https://gravatar.com/userimage/74431132/13d04d83218593564422770b616e5622.jpg)](https://skeeks.com)  
<i>SkeekS CMS (Yii2) — quickly, easily and effectively!</i>  
[skeeks.com](https://skeeks.com) | [en.cms.skeeks.com](https://en.cms.skeeks.com)


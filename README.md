Shop on SkeekS CMS (Yii2)
=========================

[![skeeks!](https://en.cms.skeeks.com/uploads/all/35/fd/33/35fd33aa306823dbaf53a0142d43b3fa.png)](https://en.cms.skeeks.com)  

[![Latest Stable Version](https://poser.pugx.org/skeeks/app-shop-smarty/v/stable.png)](https://packagist.org/skeeks/app-shop-smarty/app-v3-shop)
[![Total Downloads](https://poser.pugx.org/skeeks/app-shop-smarty/downloads.png)](https://packagist.org/packages/skeeks/app-shop-smarty)
[![Dependency Status](https://www.versioneye.com/php/skeeks:app-shop-smarty/dev-master/badge.png)](https://www.versioneye.com/php/skeeks:app-shop-smarty/dev-master)


Links
-----------
* [Web site (SkeekS CMS)](https://cms.skeeks.com)
* [Marketplace (SkeekS CMS)](https://cms.skeeks.com/marketplace/websites/clothing/257-internet-magazin-odejdyi)
* [Docs (SkeekS CMS)](https://cms.skeeks.com/docs)
* [Author](https://skeeks.com)
* [ChangeLog](https://github.com/skeeks-cms/cms/blob/master/CHANGELOG.md)

Install
-----------

```bash
# Download latest version of composer
curl -sS https://getcomposer.org/installer | COMPOSER_HOME=.composer php
# Installing the base project SkeekS CMS
COMPOSER_HOME=.composer php composer.phar create-project --prefer-dist --stability=dev skeeks/app-shop-smarty demo.ru
# Going into the project folder
cd demo.ru

#Edit the file to access the database, it is located at common/config/db.php

#Installation of ready-dump
php yii migrate -t=migration_install -p=backup/migrations
```









Other
----

sudo -i -u postgres

pgloader mysql://shop:jW4mKYSVRVZPGyNn@localhost/shop_smarty pgsql:///test

pgloader -v -L ~/pgloader.log migrate.load

migrate.load
```
load database
     from      mysql://shop:jW4mKYSVRVZPGyNn@127.0.0.1:3306/shop_smarty
     into pgsql:///test
 ALTER SCHEMA 'shop_smarty' RENAME TO 'public';

```




http://www.linuxandubuntu.com/home/difference-between-postgresql-and-mysql-and-how-to-migrate-from-mysql-to-postgresql


Screenshots
-----------
[![skeeks!](https://cms.skeeks.com/uploads/all/3f/6d/14/3f6d14293f59d2553f867c324ca1959e.png)](https://cms.skeeks.com)
[![skeeks!](https://cms.skeeks.com/uploads/all/2d/27/d4/2d27d4cdeeaceb28c54184f3b1886f36.png)](https://cms.skeeks.com)

___

> [![skeeks!](https://gravatar.com/userimage/74431132/13d04d83218593564422770b616e5622.jpg)](https://skeeks.com)  
<i>SkeekS CMS (Yii2) — quickly, easily and effectively!</i>  
[skeeks.com](https://skeeks.com) | [cms.skeeks.com](https://cms.skeeks.com)


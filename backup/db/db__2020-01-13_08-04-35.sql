-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: app_shop-smarty
-- ------------------------------------------------------
-- Server version 	5.5.62-0ubuntu0.14.04.1-log
-- Date: Mon, 13 Jan 2020 08:04:35 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_assignment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_assignment_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_assignment` VALUES ('root',1,1439037301);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `auth_assignment` with 1 row(s)
--

--
-- Table structure for table `auth_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_item` VALUES ('',2,'Администрирование | Управление шаблоном',NULL,NULL,1465238527,1465238527),('admin',1,'Администратор',NULL,NULL,1439037301,1439037301),('admin-import-stock-sale',2,'Администрирование | Название контроллера',NULL,NULL,1457436808,1457436808),('admin/admin-permission',2,'Администрирование | Управление привилегиями',NULL,NULL,1439297538,1439297538),('admin/admin-role',2,'Администрирование | Управление ролями',NULL,NULL,1439297538,1439297538),('admin/checker',2,'Администрирование | Проверка системы',NULL,NULL,1439297538,1439297538),('admin/clear',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/db',2,'Администрирование | Удаление временных файлов',NULL,NULL,1439297538,1439297538),('admin/email',2,'Администрирование | Тестирование отправки email сообщений с сайта',NULL,NULL,1439297538,1439297538),('admin/gii',2,'Администрирование | Генератор кода',NULL,NULL,1439297538,1439297538),('admin/index',2,'Администрирование | Рабочий стол',NULL,NULL,1443369655,1443369655),('admin/info',2,'Администрирование | Информация о системе',NULL,NULL,1439297538,1439297538),('admin/ssh',2,'Администрирование | Ssh консоль',NULL,NULL,1439297538,1439297538),('approved',1,'Подтвержденный пользователь',NULL,NULL,1443369238,1443369238),('authclient/admin-user-auth-client',2,'Administration | Управление социальными профилями',NULL,NULL,1460840500,1460840500),('authclient/admin-user-auth-client/create',2,'Добавить',NULL,NULL,1511218919,1511218919),('authclient/admin-user-auth-client/delete',2,'Удалить',NULL,NULL,1508388075,1508388075),('authclient/admin-user-auth-client/delete-multi',2,'Удалить',NULL,NULL,1508388075,1508388075),('authclient/admin-user-auth-client/index',2,'Список',NULL,NULL,1508388075,1508388075),('authclient/admin-user-auth-client/update',2,'Редактировать',NULL,NULL,1508388075,1508388075),('backend/admin-backend-showing/create',2,'Добавить',NULL,NULL,1542640328,1542640328),('backend/admin-backend-showing/delete',2,'Удалить',NULL,NULL,1542640329,1542640329),('backend/admin-backend-showing/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1542640329,1542640329),('backend/admin-backend-showing/index',2,'Отображения',NULL,NULL,1542640328,1542640328),('backend/admin-backend-showing/update',2,'Редактировать',NULL,NULL,1542640328,1542640328),('backend/admin-backend-showing/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1542640329,1542640329),('buy-shop-type-price-1',2,'Права на покупку по цене: \'Базовая цена\'',NULL,NULL,1444381054,1444381054),('cms-upa-permission',2,'Доступ к персональной части',NULL,NULL,1560778027,1560778027),('cms.admin-access',2,'Доступ к системе администрирования',NULL,NULL,1439037301,1439037301),('cms.admin-dashboards-edit',2,'Access to edit dashboards',NULL,NULL,1455901159,1455901159),('cms.controll-panel-access',2,'Доступ к панеле управления сайтом',NULL,NULL,1439037301,1439037301),('cms.edit-view-files',2,'The ability to edit view files',NULL,NULL,1446933396,1446933396),('cms.elfinder-additional-files',2,'Доступ ко всем файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-common-public-files',2,'Доступ к общим публичным файлам',NULL,NULL,1439037301,1439037301),('cms.elfinder-user-files',2,'Доступ к личным файлам',NULL,NULL,1439037301,1439037301),('cms.model-create',2,'Возможность создания записей',NULL,NULL,1439037301,1439037301),('cms.model-delete',2,'Удаление записей',NULL,NULL,1439037301,1439037301),('cms.model-delete-own',2,'Удаление своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update',2,'Обновление данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced',2,'Обновление дополнительных данных записей',NULL,NULL,1439037301,1439037301),('cms.model-update-advanced-own',2,'Обновление дополнительных данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.model-update-own',2,'Обновление данных своих записей','isAuthor',NULL,1439037301,1439037301),('cms.root',2,'Возможности суперадминистратора',NULL,NULL,1578902596,1578902596),('cms.user-full-edit',2,'The ability to manage user groups',NULL,NULL,1456999015,1456999015),('cms/admin-clear',2,'Удаление временных файлов',NULL,NULL,1505133076,1505133076),('cms/admin-clear/index',2,'Чистка временных данных',NULL,NULL,1511218870,1511218870),('cms/admin-cms-agent',2,'Администрирование | Управление агентами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-content',2,'Администрирование | Управление контентом',NULL,NULL,1443688294,1443688294),('cms/admin-cms-content-element',2,'Администрирование | Элементы',NULL,NULL,1443686861,1443686861),('cms/admin-cms-content-element__1',2,'Администрирование | Публикации',NULL,NULL,1443633788,1443633788),('cms/admin-cms-content-element__1/activate-multi',2,'Активировать',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/change-tree-multi',2,'Основной раздел',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/copy',2,'Копировать — cms/admin-cms-content-element__1/copy',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/copy/own',2,'Копировать (Только свои) — cms/admin-cms-content-element__1/copy/own','isAuthor',NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/create',2,'Добавить',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/deactivate-multi',2,'Деактивировать',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/delete',2,'Удалить — cms/admin-cms-content-element__1/delete',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/delete-multi',2,'Удалить',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/delete/own',2,'Удалить (Только свои) — cms/admin-cms-content-element__1/delete/own','isAuthor',NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/index',2,'Список',NULL,NULL,1560778110,1560778110),('cms/admin-cms-content-element__1/rp',2,'Свойства',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/update',2,'Редактировать — cms/admin-cms-content-element__1/update',NULL,NULL,1560778111,1560778111),('cms/admin-cms-content-element__1/update/own',2,'Редактировать (Только свои) — cms/admin-cms-content-element__1/update/own','isAuthor',NULL,1560778111,1560778111),('cms/admin-cms-content-element__10',2,'',NULL,NULL,1457270138,1457270138),('cms/admin-cms-content-element__11',2,'',NULL,NULL,1457377781,1457377781),('cms/admin-cms-content-element__11/activate-multi',2,'Активировать',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__11/change-tree-multi',2,'Основной раздел',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__11/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/copy',2,'Копировать',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/copy/own',2,'Копировать (Только свои)','isAuthor',NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/create',2,'Добавить',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/deactivate-multi',2,'Деактивировать',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__11/delete',2,'Удалить',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/delete-multi',2,'Удалить',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__11/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/index',2,'Список',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__11/rp',2,'Свойства',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/update',2,'Редактировать',NULL,NULL,1560778115,1560778115),('cms/admin-cms-content-element__11/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1560778115,1560778115),('cms/admin-cms-content-element__2',2,'Администрирование | Товары',NULL,NULL,1443604421,1443604421),('cms/admin-cms-content-element__3',2,'Администрирование | Брэнды',NULL,NULL,1443604272,1443604272),('cms/admin-cms-content-element__4',2,'Администрирование | Слайды',NULL,NULL,1443606853,1443606853),('cms/admin-cms-content-element__5',2,'Администрирование | Music',NULL,NULL,1444824004,1444824004),('cms/admin-cms-content-element__6',2,'Администрирование | Марка мотоцикла',NULL,NULL,1445101817,1445101817),('cms/admin-cms-content-element__7',2,'Администрирование | Тип мотоцикла',NULL,NULL,1445102054,1445102054),('cms/admin-cms-content-element__8',2,'Администрирование | Мототехника',NULL,NULL,1445115585,1445115585),('cms/admin-cms-content-element__9',2,'',NULL,NULL,1456996531,1456996531),('cms/admin-cms-content-element__9/activate-multi',2,'Активировать',NULL,NULL,1560778113,1560778113),('cms/admin-cms-content-element__9/change-tree-multi',2,'Основной раздел',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/copy',2,'Копировать',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/copy/own',2,'Копировать (Только свои)','isAuthor',NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/create',2,'Добавить',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/deactivate-multi',2,'Деактивировать',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/delete',2,'Удалить',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/delete-multi',2,'Удалить',NULL,NULL,1560778113,1560778113),('cms/admin-cms-content-element__9/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/index',2,'Список',NULL,NULL,1560778113,1560778113),('cms/admin-cms-content-element__9/rp',2,'Свойства',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/update',2,'Редактировать',NULL,NULL,1560778114,1560778114),('cms/admin-cms-content-element__9/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1560778114,1560778114),('cms/admin-cms-content-element/activate-multi',2,'Активировать',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/change-tree-multi',2,'Основной раздел',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/create',2,'Добавить',NULL,NULL,1511218888,1511218888),('cms/admin-cms-content-element/delete',2,'Удалить',NULL,NULL,1511218888,1511218888),('cms/admin-cms-content-element/delete-multi',2,'Удалить',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218888,1511218888),('cms/admin-cms-content-element/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/index',2,'Список',NULL,NULL,1511218888,1511218888),('cms/admin-cms-content-element/rp',2,'Свойства',NULL,NULL,1511218889,1511218889),('cms/admin-cms-content-element/update',2,'Редактировать',NULL,NULL,1511218888,1511218888),('cms/admin-cms-content-element/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218888,1511218888),('cms/admin-cms-content-property',2,'Администрирование | Управление свойствами',NULL,NULL,1443688297,1443688297),('cms/admin-cms-content-property-enum',2,'Администрирование | Управление значениями свойств',NULL,NULL,1444924083,1444924083),('cms/admin-cms-content-property-enum/create',2,'Добавить',NULL,NULL,1511218913,1511218913),('cms/admin-cms-content-property-enum/delete',2,'Удалить',NULL,NULL,1511218913,1511218913),('cms/admin-cms-content-property-enum/delete-multi',2,'Удалить',NULL,NULL,1511218914,1511218914),('cms/admin-cms-content-property-enum/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218913,1511218913),('cms/admin-cms-content-property-enum/index',2,'Список',NULL,NULL,1511218913,1511218913),('cms/admin-cms-content-property-enum/update',2,'Редактировать',NULL,NULL,1511218913,1511218913),('cms/admin-cms-content-property-enum/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218913,1511218913),('cms/admin-cms-content-property/create',2,'Добавить',NULL,NULL,1511218912,1511218912),('cms/admin-cms-content-property/delete',2,'Удалить',NULL,NULL,1511218912,1511218912),('cms/admin-cms-content-property/delete-multi',2,'Удалить',NULL,NULL,1511218912,1511218912),('cms/admin-cms-content-property/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218912,1511218912),('cms/admin-cms-content-property/index',2,'Список',NULL,NULL,1511218911,1511218911),('cms/admin-cms-content-property/update',2,'Редактировать',NULL,NULL,1511218912,1511218912),('cms/admin-cms-content-property/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218912,1511218912),('cms/admin-cms-content-type',2,'Администрирование | Управление контентом',NULL,NULL,1439297538,1439297538),('cms/admin-cms-content-type/create',2,'Добавить',NULL,NULL,1511218910,1511218910),('cms/admin-cms-content-type/delete',2,'Удалить',NULL,NULL,1511218911,1511218911),('cms/admin-cms-content-type/delete-multi',2,'Удалить',NULL,NULL,1511218911,1511218911),('cms/admin-cms-content-type/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218911,1511218911),('cms/admin-cms-content-type/index',2,'Список',NULL,NULL,1511218910,1511218910),('cms/admin-cms-content-type/update',2,'Редактировать',NULL,NULL,1511218911,1511218911),('cms/admin-cms-content-type/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218911,1511218911),('cms/admin-cms-content/create',2,'Добавить',NULL,NULL,1511218914,1511218914),('cms/admin-cms-content/delete',2,'Удалить',NULL,NULL,1511218914,1511218914),('cms/admin-cms-content/delete-multi',2,'Удалить',NULL,NULL,1511218915,1511218915),('cms/admin-cms-content/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218914,1511218914),('cms/admin-cms-content/index',2,'Список',NULL,NULL,1511218914,1511218914),('cms/admin-cms-content/update',2,'Редактировать',NULL,NULL,1511218914,1511218914),('cms/admin-cms-content/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218914,1511218914),('cms/admin-cms-lang',2,'Администрирование | Управление языками',NULL,NULL,1439297538,1439297538),('cms/admin-cms-lang/activate-multi',2,'Активировать',NULL,NULL,1511218906,1511218906),('cms/admin-cms-lang/create',2,'Добавить',NULL,NULL,1511218905,1511218905),('cms/admin-cms-lang/delete',2,'Удалить',NULL,NULL,1511218906,1511218906),('cms/admin-cms-lang/delete-multi',2,'Удалить',NULL,NULL,1511218906,1511218906),('cms/admin-cms-lang/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218906,1511218906),('cms/admin-cms-lang/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218906,1511218906),('cms/admin-cms-lang/index',2,'Список',NULL,NULL,1511218905,1511218905),('cms/admin-cms-lang/update',2,'Редактировать',NULL,NULL,1511218905,1511218905),('cms/admin-cms-lang/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218905,1511218905),('cms/admin-cms-site',2,'Администрирование | Управление сайтами',NULL,NULL,1439297538,1439297538),('cms/admin-cms-site-domain',2,'Управление доменами',NULL,NULL,1530958686,1530958686),('cms/admin-cms-site/activate-multi',2,'Активировать',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/create',2,'Добавить',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/def-multi',2,'По умолчанию',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/delete',2,'Удалить',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/delete-multi',2,'Удалить',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218905,1511218905),('cms/admin-cms-site/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/index',2,'Список',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/update',2,'Редактировать',NULL,NULL,1511218905,1511218905),('cms/admin-cms-site/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218905,1511218905),('cms/admin-cms-tree-type',2,'Администрирование | Настройки разделов',NULL,NULL,1439297538,1439297538),('cms/admin-cms-tree-type-property',2,'Администрирование | Управление свойствами раздела',NULL,NULL,1444824658,1444824658),('cms/admin-cms-tree-type-property-enum',2,'Управление значениями свойств разделов',NULL,NULL,1505133076,1505133076),('cms/admin-cms-tree-type-property-enum/create',2,'Добавить',NULL,NULL,1511218907,1511218907),('cms/admin-cms-tree-type-property-enum/delete',2,'Удалить',NULL,NULL,1511218908,1511218908),('cms/admin-cms-tree-type-property-enum/delete-multi',2,'Удалить',NULL,NULL,1511218908,1511218908),('cms/admin-cms-tree-type-property-enum/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218908,1511218908),('cms/admin-cms-tree-type-property-enum/index',2,'Список',NULL,NULL,1511218907,1511218907),('cms/admin-cms-tree-type-property-enum/update',2,'Редактировать',NULL,NULL,1511218908,1511218908),('cms/admin-cms-tree-type-property-enum/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218908,1511218908),('cms/admin-cms-tree-type-property/create',2,'Добавить',NULL,NULL,1511218906,1511218906),('cms/admin-cms-tree-type-property/delete',2,'Удалить',NULL,NULL,1511218907,1511218907),('cms/admin-cms-tree-type-property/delete-multi',2,'Удалить',NULL,NULL,1511218907,1511218907),('cms/admin-cms-tree-type-property/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218907,1511218907),('cms/admin-cms-tree-type-property/index',2,'Список',NULL,NULL,1511218906,1511218906),('cms/admin-cms-tree-type-property/update',2,'Редактировать',NULL,NULL,1511218906,1511218906),('cms/admin-cms-tree-type-property/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218907,1511218907),('cms/admin-cms-tree-type/activate-multi',2,'Активировать',NULL,NULL,1511218910,1511218910),('cms/admin-cms-tree-type/create',2,'Добавить',NULL,NULL,1511218908,1511218908),('cms/admin-cms-tree-type/delete',2,'Удалить',NULL,NULL,1511218909,1511218909),('cms/admin-cms-tree-type/delete-multi',2,'Удалить',NULL,NULL,1511218910,1511218910),('cms/admin-cms-tree-type/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218909,1511218909),('cms/admin-cms-tree-type/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218910,1511218910),('cms/admin-cms-tree-type/index',2,'Список',NULL,NULL,1511218908,1511218908),('cms/admin-cms-tree-type/update',2,'Редактировать',NULL,NULL,1511218909,1511218909),('cms/admin-cms-tree-type/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218909,1511218909),('cms/admin-cms-user-universal-property',2,'Администрирование | Управление свойствами пользователя',NULL,NULL,1444926976,1444926976),('cms/admin-cms-user-universal-property-enum',2,'Управление значениями свойств пользователя',NULL,NULL,1530958686,1530958686),('cms/admin-cms-user-universal-property/create',2,'Добавить',NULL,NULL,1511218879,1511218879),('cms/admin-cms-user-universal-property/delete',2,'Удалить',NULL,NULL,1511218879,1511218879),('cms/admin-cms-user-universal-property/delete-multi',2,'Удалить',NULL,NULL,1511218879,1511218879),('cms/admin-cms-user-universal-property/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218879,1511218879),('cms/admin-cms-user-universal-property/index',2,'Список',NULL,NULL,1511218878,1511218878),('cms/admin-cms-user-universal-property/update',2,'Редактировать',NULL,NULL,1511218879,1511218879),('cms/admin-cms-user-universal-property/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218879,1511218879),('cms/admin-component-settings',2,'Администрирование | Управление настройками компонентов',NULL,NULL,1443369661,1443369661),('cms/admin-file-manager',2,'Администрирование | Файловый менеджер',NULL,NULL,1439297538,1439297538),('cms/admin-info',2,'Информация о системе',NULL,NULL,1505133076,1505133076),('cms/admin-info/index',2,'Общая информация',NULL,NULL,1510497573,1510497573),('cms/admin-marketplace',2,'Администрирование | Маркетплейс',NULL,NULL,1439297538,1439297538),('cms/admin-message',2,'Администрирование | Управление переводами',NULL,NULL,1456996339,1456996339),('cms/admin-profile',2,'Администрирование | Личный кабинет',NULL,NULL,1443430967,1443430967),('cms/admin-search-phrase',2,'Администрирование | Список переходов',NULL,NULL,1444205747,1444205747),('cms/admin-search-phrase-group',2,'Администрирование | Поисковые фразы',NULL,NULL,1445346545,1445346545),('cms/admin-settings',2,'Администрирование | Управление настройками',NULL,NULL,1439297538,1439297538),('cms/admin-settings/index',2,'Настройки',NULL,NULL,1508388059,1508388059),('cms/admin-storage',2,'Администрирование | Управление серверами',NULL,NULL,1439297538,1439297538),('cms/admin-storage-files',2,'Администрирование | Управление файлами хранилища',NULL,NULL,1439297538,1439297538),('cms/admin-storage-files/create',2,'Добавить',NULL,NULL,1511218881,1511218881),('cms/admin-storage-files/delete',2,'Удалить',NULL,NULL,1511218881,1511218881),('cms/admin-storage-files/delete-multi',2,'Удалить',NULL,NULL,1511218887,1511218887),('cms/admin-storage-files/delete-tmp-dir',2,'Удалить временные файлы',NULL,NULL,1511218887,1511218887),('cms/admin-storage-files/delete-tmp-dir/own',2,'Удалить временные файлы (Только свои)','isAuthor',NULL,1511218887,1511218887),('cms/admin-storage-files/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218886,1511218886),('cms/admin-storage-files/download',2,'Скачать',NULL,NULL,1511218887,1511218887),('cms/admin-storage-files/download/own',2,'Скачать (Только свои)','isAuthor',NULL,1511218888,1511218888),('cms/admin-storage-files/index',2,'Список',NULL,NULL,1511218881,1511218881),('cms/admin-storage-files/index/own',2,'Просмотр списка своих файлов',NULL,NULL,1578902596,1578902596),('cms/admin-storage-files/update',2,'Редактировать',NULL,NULL,1511218881,1511218881),('cms/admin-storage-files/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218881,1511218881),('cms/admin-storage/index',2,'Управление серверами',NULL,NULL,1511218906,1511218906),('cms/admin-tools',2,'Администрирование | Управление шаблоном',NULL,NULL,1446933450,1446933450),('cms/admin-tree',2,'Администрирование | Дерево страниц',NULL,NULL,1439297538,1439297538),('cms/admin-tree-menu',2,'Администрирование | Управление позициями меню',NULL,NULL,1439297538,1439297538),('cms/admin-tree/delete',2,'Удалить',NULL,NULL,1511218881,1511218881),('cms/admin-tree/delete-multi',2,'Удалить',NULL,NULL,1511218881,1511218881),('cms/admin-tree/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218881,1511218881),('cms/admin-tree/index',2,'Дерево',NULL,NULL,1511218881,1511218881),('cms/admin-tree/list',2,'Список',NULL,NULL,1511218881,1511218881),('cms/admin-tree/move',2,'Перенести',NULL,NULL,1542640487,1542640487),('cms/admin-tree/move/own',2,'Перенести (Только свои)','isAuthor',NULL,1542640487,1542640487),('cms/admin-tree/new-children',2,'Создать подраздел',NULL,NULL,1578902596,1578902596),('cms/admin-tree/resort',2,'Сортировать подразделы',NULL,NULL,1578902596,1578902596),('cms/admin-tree/update',2,'Редактировать',NULL,NULL,1511218881,1511218881),('cms/admin-tree/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218881,1511218881),('cms/admin-universal-component-settings',2,'Администрирование | Управление настройками компонента',NULL,NULL,1443708675,1443708675),('cms/admin-user',2,'Администрирование | Управление пользователями',NULL,NULL,1439297538,1439297538),('cms/admin-user-auth-client',2,'Администрирование | Управление социальными профилями',NULL,NULL,1444850797,1444850797),('cms/admin-user-email',2,'Администрирование | Управление email адресами',NULL,NULL,1439297538,1439297538),('cms/admin-user-email/create',2,'Добавить',NULL,NULL,1511218880,1511218880),('cms/admin-user-email/delete',2,'Удалить',NULL,NULL,1511218880,1511218880),('cms/admin-user-email/delete-multi',2,'Удалить',NULL,NULL,1511218880,1511218880),('cms/admin-user-email/index',2,'Список',NULL,NULL,1511218880,1511218880),('cms/admin-user-email/update',2,'Редактировать',NULL,NULL,1511218880,1511218880),('cms/admin-user-phone',2,'Администрирование | Управление телефонами',NULL,NULL,1439297538,1439297538),('cms/admin-user-phone/create',2,'Добавить',NULL,NULL,1511218880,1511218880),('cms/admin-user-phone/delete',2,'Удалить',NULL,NULL,1511218881,1511218881),('cms/admin-user-phone/delete-multi',2,'Удалить',NULL,NULL,1511218881,1511218881),('cms/admin-user-phone/index',2,'Список',NULL,NULL,1511218880,1511218880),('cms/admin-user-phone/update',2,'Редактировать',NULL,NULL,1511218880,1511218880),('cms/admin-user/activate-multi',2,'Активировать',NULL,NULL,1508388069,1508388069),('cms/admin-user/create',2,'Добавить',NULL,NULL,1508388069,1508388069),('cms/admin-user/delete',2,'Удалить',NULL,NULL,1508388070,1508388070),('cms/admin-user/delete-multi',2,'Удалить',NULL,NULL,1508388068,1508388068),('cms/admin-user/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388070,1508388070),('cms/admin-user/inActivate-multi',2,'Деактивировать',NULL,NULL,1508388069,1508388069),('cms/admin-user/index',2,'Список',NULL,NULL,1508388068,1508388068),('cms/admin-user/update',2,'Редактировать',NULL,NULL,1508388070,1508388070),('cms/admin-user/update-advanced',2,'Расширенное редактирование данных пользователя',NULL,NULL,1578902596,1578902596),('cms/admin-user/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388070,1508388070),('cmsAgent/admin-cms-agent',2,'Администрирование | Агенты',NULL,NULL,1461184624,1461184624),('cmsAgent/admin-cms-agent/activate-multi',2,'Активировать',NULL,NULL,1511218930,1511218930),('cmsAgent/admin-cms-agent/create',2,'Добавить',NULL,NULL,1511218929,1511218929),('cmsAgent/admin-cms-agent/delete',2,'Удалить',NULL,NULL,1511218929,1511218929),('cmsAgent/admin-cms-agent/delete-multi',2,'Удалить',NULL,NULL,1511218929,1511218929),('cmsAgent/admin-cms-agent/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218930,1511218930),('cmsAgent/admin-cms-agent/index',2,'Список',NULL,NULL,1511218929,1511218929),('cmsAgent/admin-cms-agent/update',2,'Редактировать',NULL,NULL,1511218929,1511218929),('cmsExport/admin-export-task/create',2,'Добавить',NULL,NULL,1511218917,1511218917),('cmsExport/admin-export-task/delete',2,'Удалить',NULL,NULL,1511218918,1511218918),('cmsExport/admin-export-task/delete-multi',2,'Удалить',NULL,NULL,1511218918,1511218918),('cmsExport/admin-export-task/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218918,1511218918),('cmsExport/admin-export-task/index',2,'Список',NULL,NULL,1511218917,1511218917),('cmsExport/admin-export-task/update',2,'Редактировать',NULL,NULL,1511218917,1511218917),('cmsExport/admin-export-task/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218917,1511218917),('cmsImport/admin-import-task/create',2,'Добавить',NULL,NULL,1511218918,1511218918),('cmsImport/admin-import-task/delete',2,'Удалить',NULL,NULL,1511218919,1511218919),('cmsImport/admin-import-task/delete-multi',2,'Удалить',NULL,NULL,1511218919,1511218919),('cmsImport/admin-import-task/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218919,1511218919),('cmsImport/admin-import-task/index',2,'Список',NULL,NULL,1511218918,1511218918),('cmsImport/admin-import-task/update',2,'Редактировать',NULL,NULL,1511218918,1511218918),('cmsImport/admin-import-task/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218918,1511218918),('cmsMarketplace/admin-composer-update',2,'Обновление платформы',NULL,NULL,1511100231,1511100231),('cmsMarketplace/admin-composer-update/update',2,'Обновление платформы',NULL,NULL,1511218917,1511218917),('cmsMarketplace/admin-marketplace',2,'Администрирование | Маркетплейс',NULL,NULL,1461184734,1461184734),('cmsMarketplace/admin-marketplace/catalog',2,'Каталог',NULL,NULL,1511218916,1511218916),('cmsMarketplace/admin-marketplace/index',2,'Установленные',NULL,NULL,1511218916,1511218916),('cmsMarketplace/admin-marketplace/install',2,'Установить/Удалить',NULL,NULL,1511218916,1511218916),('cmsMarketplace/admin-marketplace/test',2,'test',NULL,NULL,1511218917,1511218917),('cmsMarketplace/admin-marketplace/update',2,'Обновление платформы',NULL,NULL,1511218916,1511218916),('cmsSearch/admin-search-phrase',2,'Администрирование | Список переходов',NULL,NULL,1461145492,1461145492),('cmsSearch/admin-search-phrase-group',2,'Administration | Jump list',NULL,NULL,1461261482,1461261482),('cmsSearch/admin-search-phrase-group/index',2,'Список',NULL,NULL,1511218931,1511218931),('cmsSearch/admin-search-phrase/create',2,'Добавить',NULL,NULL,1511218930,1511218930),('cmsSearch/admin-search-phrase/delete',2,'Удалить',NULL,NULL,1511218931,1511218931),('cmsSearch/admin-search-phrase/delete-multi',2,'Удалить',NULL,NULL,1511218931,1511218931),('cmsSearch/admin-search-phrase/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218931,1511218931),('cmsSearch/admin-search-phrase/index',2,'Список',NULL,NULL,1511218930,1511218930),('cmsSearch/admin-search-phrase/update',2,'Редактировать',NULL,NULL,1511218930,1511218930),('cmsSearch/admin-search-phrase/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218930,1511218930),('dbDumper/admin-backup',2,'Администрирование | Бэкапы',NULL,NULL,1461184657,1461184657),('dbDumper/admin-settings',2,'Администрирование | Настройки',NULL,NULL,1461184653,1461184653),('dbDumper/admin-structure',2,'Администрирование | Структура базы данных',NULL,NULL,1461184648,1461184648),('editor',1,'Редактор (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('form2/admin-form',2,'Администрирование | Управление формами',NULL,NULL,1439297538,1439297538),('form2/admin-form-property',2,'Администрирование | Управление свойствами',NULL,NULL,1445106311,1445106311),('form2/admin-form-send',2,'Администрирование | Сообщения с форм',NULL,NULL,1439297538,1439297538),('form2/admin-form-send/delete',2,'Удалить',NULL,NULL,1511218922,1511218922),('form2/admin-form-send/delete-multi',2,'Удалить',NULL,NULL,1511218923,1511218923),('form2/admin-form-send/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218923,1511218923),('form2/admin-form-send/index',2,'Список',NULL,NULL,1511218921,1511218921),('form2/admin-form-send/view',2,'Посмотреть',NULL,NULL,1511218923,1511218923),('form2/admin-form-send/view/own',2,'Посмотреть (Только свои)','isAuthor',NULL,1511218924,1511218924),('form2/admin-form/create',2,'Добавить',NULL,NULL,1511218919,1511218919),('form2/admin-form/delete',2,'Удалить',NULL,NULL,1511218920,1511218920),('form2/admin-form/delete-multi',2,'Удалить',NULL,NULL,1511218920,1511218920),('form2/admin-form/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218920,1511218920),('form2/admin-form/index',2,'Список',NULL,NULL,1511218919,1511218919),('form2/admin-form/update',2,'Редактировать',NULL,NULL,1511218919,1511218919),('form2/admin-form/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218919,1511218919),('form2/admin-form/view',2,'Результат',NULL,NULL,1511218920,1511218920),('form2/admin-form/view/own',2,'Результат (Только свои)','isAuthor',NULL,1511218920,1511218920),('guest',1,'Неавторизованный пользователь',NULL,NULL,1439037301,1439037301),('kladr/admin-kladr-location',2,'Администрирование | База местоположений',NULL,NULL,1444329702,1444329702),('logDbTarget/admin-log-db-target',2,'Администрирование | Управление логами',NULL,NULL,1445336472,1445336472),('logDbTarget/admin-log-db-target/create',2,'Добавить',NULL,NULL,1542641759,1542641759),('logDbTarget/admin-log-db-target/delete',2,'Удалить',NULL,NULL,1511218924,1511218924),('logDbTarget/admin-log-db-target/delete-multi',2,'Удалить',NULL,NULL,1511218925,1511218925),('logDbTarget/admin-log-db-target/index',2,'Список',NULL,NULL,1511218924,1511218924),('logDbTarget/admin-log-db-target/update',2,'Смотреть',NULL,NULL,1511218924,1511218924),('mailer/admin-test',2,'Администрирование | Тестирование отправки сообщений электронной почты с сайта',NULL,NULL,1461185535,1461185535),('manager',1,'Менеджер (доступ а администрированию)',NULL,NULL,1439037301,1439037301),('measure/admin-measure',2,'Администрирование | Единицы измерений',NULL,NULL,1443604436,1443604436),('measure/admin-measure/create',2,'Добавить',NULL,NULL,1511218925,1511218925),('measure/admin-measure/def-multi',2,'По умолчанию',NULL,NULL,1511218929,1511218929),('measure/admin-measure/delete',2,'Удалить',NULL,NULL,1511218925,1511218925),('measure/admin-measure/delete-multi',2,'Удалить',NULL,NULL,1511218928,1511218928),('measure/admin-measure/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218926,1511218926),('measure/admin-measure/index',2,'Список',NULL,NULL,1511218925,1511218925),('measure/admin-measure/update',2,'Редактировать',NULL,NULL,1511218925,1511218925),('measure/admin-measure/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218925,1511218925),('money/admin-currency',2,'Администрирование | Управление валютами',NULL,NULL,1443782201,1443782201),('money/admin-currency/activate-multi',2,'Активировать',NULL,NULL,1511218916,1511218916),('money/admin-currency/create',2,'Добавить',NULL,NULL,1511218915,1511218915),('money/admin-currency/delete',2,'Удалить',NULL,NULL,1511218915,1511218915),('money/admin-currency/delete-multi',2,'Удалить',NULL,NULL,1511218915,1511218915),('money/admin-currency/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218916,1511218916),('money/admin-currency/index',2,'Список',NULL,NULL,1511218915,1511218915),('money/admin-currency/update',2,'Редактировать',NULL,NULL,1511218915,1511218915),('money/admin-currency/update-all',2,'Обновить все валюты',NULL,NULL,1511218915,1511218915),('money/admin-currency/update-course',2,'Обновить курс',NULL,NULL,1511218916,1511218916),('rbac/admin-permission',2,'Администрирование | Управление привилегиями',NULL,NULL,1461184707,1461184707),('rbac/admin-permission/create',2,'Create',NULL,NULL,1511218867,1511218867),('rbac/admin-permission/delete',2,'Удалить',NULL,NULL,1511218867,1511218867),('rbac/admin-permission/delete-multi',2,'Удалить',NULL,NULL,1511218867,1511218867),('rbac/admin-permission/index',2,'Список',NULL,NULL,1511218862,1511218862),('rbac/admin-permission/update',2,'Редактировать',NULL,NULL,1511218867,1511218867),('rbac/admin-permission/update-data',2,'Обновить привилегии',NULL,NULL,1511218868,1511218868),('rbac/admin-permission/view',2,'Смотреть',NULL,NULL,1511218868,1511218868),('rbac/admin-role',2,'Администрирование | Управление ролями',NULL,NULL,1461184674,1461184674),('rbac/admin-role/create',2,'Create',NULL,NULL,1508388063,1508388063),('rbac/admin-role/delete',2,'Удалить',NULL,NULL,1508388063,1508388063),('rbac/admin-role/delete-multi',2,'Удалить',NULL,NULL,1508388062,1508388062),('rbac/admin-role/index',2,'Список',NULL,NULL,1508388062,1508388062),('rbac/admin-role/update',2,'Update',NULL,NULL,1508388063,1508388063),('rbac/admin-role/view',2,'Смотреть',NULL,NULL,1508388063,1508388063),('reviews2.add.review',2,'Добавление отзывов',NULL,NULL,1442576268,1442576268),('reviews2/admin-message',2,'Администрирование | Управление отзывами',NULL,NULL,1439297538,1439297538),('reviews2/admin-message/create',2,'Добавить',NULL,NULL,1511218932,1511218932),('reviews2/admin-message/delete',2,'Удалить',NULL,NULL,1511218934,1511218934),('reviews2/admin-message/delete-multi',2,'Удалить',NULL,NULL,1511218935,1511218935),('reviews2/admin-message/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218934,1511218934),('reviews2/admin-message/index',2,'Список',NULL,NULL,1511218932,1511218932),('reviews2/admin-message/status-allowed-multi',2,'Принять',NULL,NULL,1511218935,1511218935),('reviews2/admin-message/status-canceled-multi',2,'Отменить',NULL,NULL,1511218935,1511218935),('reviews2/admin-message/status-processed-multi',2,'В обработке',NULL,NULL,1511218935,1511218935),('reviews2/admin-message/update',2,'Редактировать',NULL,NULL,1511218933,1511218933),('reviews2/admin-message/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218933,1511218933),('root',1,'Суперпользователь',NULL,NULL,1439037301,1439037301),('shop-discount-',2,'Группы пользователей, которые могут воспользоваться скидкой: \'\'',NULL,NULL,1444512357,1444512357),('shop-discount-1',2,'Группы пользователей, которые могут воспользоваться скидкой: \'постоянным покупателям\'',NULL,NULL,1444509288,1444509288),('shop-type-price-1',2,'Права на просмотр цены: \'Базовая цена\'',NULL,NULL,1444380984,1444380984),('shop/admin-affiliate',2,'Администрирование | Аффилиаты',NULL,NULL,1443430053,1443430053),('shop/admin-affiliate-plan',2,'Администрирование | Планы коммисий аффилиатов',NULL,NULL,1443633741,1443633741),('shop/admin-affiliate-plan/create',2,'Добавить',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate-plan/delete',2,'Удалить',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-plan/delete-multi',2,'Удалить',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-plan/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218904,1511218904),('shop/admin-affiliate-plan/index',2,'Список',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate-plan/update',2,'Редактировать',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate-plan/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218903,1511218903),('shop/admin-affiliate-tier',2,'Администрирование | Пирамида',NULL,NULL,1443633742,1443633742),('shop/admin-affiliate-tier/create',2,'Добавить',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-tier/delete',2,'Удалить',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-tier/delete-multi',2,'Удалить',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-tier/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218904,1511218904),('shop/admin-affiliate-tier/index',2,'Список',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-tier/update',2,'Редактировать',NULL,NULL,1511218904,1511218904),('shop/admin-affiliate-tier/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218904,1511218904),('shop/admin-affiliate/create',2,'Добавить',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate/delete',2,'Удалить',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate/delete-multi',2,'Удалить',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218903,1511218903),('shop/admin-affiliate/index',2,'Список',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate/update',2,'Редактировать',NULL,NULL,1511218903,1511218903),('shop/admin-affiliate/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218903,1511218903),('shop/admin-basket',2,'Администрирование | Позиции корзины',NULL,NULL,1454592382,1454592382),('shop/admin-bill',2,'Счета по заказам',NULL,NULL,1542639326,1542639326),('shop/admin-buyer',2,'Администрирование | Покупатели',NULL,NULL,1443369404,1443369404),('shop/admin-buyer-1',2,'Администрирование | Покупатели',NULL,NULL,1488291011,1488291011),('shop/admin-buyer-1/create',2,'Добавить',NULL,NULL,1508388692,1508388692),('shop/admin-buyer-1/delete',2,'Удалить',NULL,NULL,1508388692,1508388692),('shop/admin-buyer-1/delete-multi',2,'Удалить',NULL,NULL,1508388691,1508388691),('shop/admin-buyer-1/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388692,1508388692),('shop/admin-buyer-1/index',2,'Список',NULL,NULL,1508388691,1508388691),('shop/admin-buyer-1/update',2,'Редактировать',NULL,NULL,1508388692,1508388692),('shop/admin-buyer-1/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388692,1508388692),('shop/admin-buyer-2',2,'Администрирование | Покупатели',NULL,NULL,1488291014,1488291014),('shop/admin-buyer-user',2,'Администрирование | Покупатели',NULL,NULL,1443717109,1443717109),('shop/admin-buyer-user/delete-multi',2,'Удалить',NULL,NULL,1511218892,1511218892),('shop/admin-buyer-user/index',2,'Список',NULL,NULL,1511218892,1511218892),('shop/admin-buyer-user/update',2,'Редактировать',NULL,NULL,1511218892,1511218892),('shop/admin-buyer-user/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218892,1511218892),('shop/admin-buyer/create',2,'Добавить',NULL,NULL,1511218892,1511218892),('shop/admin-buyer/delete',2,'Удалить',NULL,NULL,1511218893,1511218893),('shop/admin-buyer/delete-multi',2,'Удалить',NULL,NULL,1511218893,1511218893),('shop/admin-buyer/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218893,1511218893),('shop/admin-buyer/index',2,'Список',NULL,NULL,1511218892,1511218892),('shop/admin-buyer/update',2,'Редактировать',NULL,NULL,1511218892,1511218892),('shop/admin-buyer/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218892,1511218892),('shop/admin-cart',2,'Заказы',NULL,NULL,1578902653,1578902653),('shop/admin-cms-content-element',2,'Администрирование | Товары',NULL,NULL,1443453760,1443453760),('shop/admin-cms-content-element__10__10',2,'Элементы',NULL,NULL,1542640357,1542640357),('shop/admin-cms-content-element__10__10/copy',2,'Копировать',NULL,NULL,1542640358,1542640358),('shop/admin-cms-content-element__10__10/copy/own',2,'Копировать (Только свои)','isAuthor',NULL,1542640358,1542640358),('shop/admin-cms-content-element__10__10/delete',2,'Удалить',NULL,NULL,1542640358,1542640358),('shop/admin-cms-content-element__10__10/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1542640358,1542640358),('shop/admin-cms-content-element__10__10/update',2,'Редактировать',NULL,NULL,1542640357,1542640357),('shop/admin-cms-content-element__10__10/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1542640358,1542640358),('shop/admin-cms-content-element__2',2,'Элементы',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2__2',2,'Элементы',NULL,NULL,1542640353,1542640353),('shop/admin-cms-content-element__2__2/copy',2,'Копировать',NULL,NULL,1542640354,1542640354),('shop/admin-cms-content-element__2__2/copy/own',2,'Копировать (Только свои)','isAuthor',NULL,1542640354,1542640354),('shop/admin-cms-content-element__2__2/delete',2,'Удалить',NULL,NULL,1542640354,1542640354),('shop/admin-cms-content-element__2__2/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1542640354,1542640354),('shop/admin-cms-content-element__2__2/update',2,'Редактировать',NULL,NULL,1542640354,1542640354),('shop/admin-cms-content-element__2__2/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1542640354,1542640354),('shop/admin-cms-content-element__2/activate-multi',2,'Активировать',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/change-tree-multi',2,'Основной раздел',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/create',2,'Добавить',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/delete',2,'Удалить',NULL,NULL,1508388687,1508388687),('shop/admin-cms-content-element__2/delete-multi',2,'Удалить',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388687,1508388687),('shop/admin-cms-content-element__2/inActivate-multi',2,'Деактивировать',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/index',2,'Список',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/rp',2,'Свойства',NULL,NULL,1508388686,1508388686),('shop/admin-cms-content-element__2/update',2,'Редактировать',NULL,NULL,1508388687,1508388687),('shop/admin-cms-content-element__2/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388687,1508388687),('shop/admin-cms-content-element/activate-multi',2,'Активировать',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/change-tree-multi',2,'Основной раздел',NULL,NULL,1511218891,1511218891),('shop/admin-cms-content-element/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1511218891,1511218891),('shop/admin-cms-content-element/create',2,'Добавить',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/deactivate-multi',2,'Деактивировать',NULL,NULL,1542640354,1542640354),('shop/admin-cms-content-element/delete',2,'Удалить',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/delete-multi',2,'Удалить',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218890,1511218890),('shop/admin-cms-content-element/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218891,1511218891),('shop/admin-cms-content-element/index',2,'Список',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/rp',2,'Свойства',NULL,NULL,1511218892,1511218892),('shop/admin-cms-content-element/to-offer',2,'Привязать к общему',NULL,NULL,1542640354,1542640354),('shop/admin-cms-content-element/update',2,'Редактировать',NULL,NULL,1511218890,1511218890),('shop/admin-cms-content-element/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218890,1511218890),('shop/admin-content',2,'Администрирование | Настройка контента',NULL,NULL,1443369417,1443369417),('shop/admin-content/create',2,'Добавить',NULL,NULL,1511218898,1511218898),('shop/admin-content/delete',2,'Удалить',NULL,NULL,1511218898,1511218898),('shop/admin-content/delete-multi',2,'Удалить',NULL,NULL,1511218899,1511218899),('shop/admin-content/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218899,1511218899),('shop/admin-content/index',2,'Список',NULL,NULL,1511218898,1511218898),('shop/admin-content/update',2,'Редактировать',NULL,NULL,1511218898,1511218898),('shop/admin-content/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218898,1511218898),('shop/admin-delivery',2,'Администрирование | Службы доставки',NULL,NULL,1443460481,1443460481),('shop/admin-delivery/create',2,'Добавить',NULL,NULL,1508388413,1508388413),('shop/admin-delivery/delete',2,'Удалить',NULL,NULL,1508388414,1508388414),('shop/admin-delivery/delete-multi',2,'Удалить',NULL,NULL,1508388413,1508388413),('shop/admin-delivery/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388414,1508388414),('shop/admin-delivery/index',2,'Список',NULL,NULL,1508388413,1508388413),('shop/admin-delivery/update',2,'Редактировать',NULL,NULL,1508388413,1508388413),('shop/admin-delivery/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388413,1508388413),('shop/admin-discount',2,'Администрирование | Скидки на товар',NULL,NULL,1444469618,1444469618),('shop/admin-discount-coupon',2,'Скидочные купоны',NULL,NULL,1505133076,1505133076),('shop/admin-discount-coupon/create',2,'Добавить',NULL,NULL,1511218896,1511218896),('shop/admin-discount-coupon/delete',2,'Удалить',NULL,NULL,1511218896,1511218896),('shop/admin-discount-coupon/delete-multi',2,'Удалить',NULL,NULL,1511218897,1511218897),('shop/admin-discount-coupon/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218897,1511218897),('shop/admin-discount-coupon/index',2,'Список',NULL,NULL,1511218896,1511218896),('shop/admin-discount-coupon/update',2,'Редактировать',NULL,NULL,1511218896,1511218896),('shop/admin-discount-coupon/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218896,1511218896),('shop/admin-discount/activate-multi',2,'Активировать',NULL,NULL,1542640401,1542640401),('shop/admin-discount/create',2,'Добавить',NULL,NULL,1511218895,1511218895),('shop/admin-discount/deactivate-multi',2,'Деактивировать',NULL,NULL,1542640401,1542640401),('shop/admin-discount/delete',2,'Удалить',NULL,NULL,1511218895,1511218895),('shop/admin-discount/delete-multi',2,'Удалить',NULL,NULL,1511218896,1511218896),('shop/admin-discount/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218895,1511218895),('shop/admin-discount/index',2,'Список',NULL,NULL,1511218895,1511218895),('shop/admin-discount/update',2,'Редактировать',NULL,NULL,1511218895,1511218895),('shop/admin-discount/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218895,1511218895),('shop/admin-discsave',2,'Администрирование | Накопительные скидки',NULL,NULL,1444512070,1444512070),('shop/admin-discsave/create',2,'Добавить',NULL,NULL,1511218897,1511218897),('shop/admin-discsave/delete',2,'Удалить',NULL,NULL,1511218897,1511218897),('shop/admin-discsave/delete-multi',2,'Удалить',NULL,NULL,1511218897,1511218897),('shop/admin-discsave/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218897,1511218897),('shop/admin-discsave/index',2,'Список',NULL,NULL,1511218897,1511218897),('shop/admin-discsave/update',2,'Редактировать',NULL,NULL,1511218897,1511218897),('shop/admin-discsave/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218897,1511218897),('shop/admin-extra',2,'Администрирование | Наценки',NULL,NULL,1444206980,1444206980),('shop/admin-extra/create',2,'Добавить',NULL,NULL,1511218902,1511218902),('shop/admin-extra/delete',2,'Удалить',NULL,NULL,1511218902,1511218902),('shop/admin-extra/delete-multi',2,'Удалить',NULL,NULL,1511218903,1511218903),('shop/admin-extra/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218902,1511218902),('shop/admin-extra/index',2,'Список',NULL,NULL,1511218902,1511218902),('shop/admin-extra/update',2,'Редактировать',NULL,NULL,1511218902,1511218902),('shop/admin-extra/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218902,1511218902),('shop/admin-fuser',2,'Администрирование | Корзины',NULL,NULL,1443369405,1443369405),('shop/admin-fuser/delete',2,'Удалить',NULL,NULL,1511218894,1511218894),('shop/admin-fuser/delete-multi',2,'Удалить',NULL,NULL,1511218894,1511218894),('shop/admin-fuser/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218894,1511218894),('shop/admin-fuser/index',2,'Список',NULL,NULL,1511218893,1511218893),('shop/admin-order',2,'Администрирование | Заказы',NULL,NULL,1443369384,1443369384),('shop/admin-order-change',2,'История изменения заказов',NULL,NULL,1542639326,1542639326),('shop/admin-order-status',2,'Администрирование | Статусы заказов',NULL,NULL,1443629534,1443629534),('shop/admin-order-status/create',2,'Добавить',NULL,NULL,1511218899,1511218899),('shop/admin-order-status/delete',2,'Удалить',NULL,NULL,1511218900,1511218900),('shop/admin-order-status/delete-multi',2,'Удалить',NULL,NULL,1511218900,1511218900),('shop/admin-order-status/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218900,1511218900),('shop/admin-order-status/index',2,'Список',NULL,NULL,1511218899,1511218899),('shop/admin-order-status/update',2,'Редактировать',NULL,NULL,1511218899,1511218899),('shop/admin-order-status/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218899,1511218899),('shop/admin-order/bills',2,'Счета',NULL,NULL,1542640329,1542640329),('shop/admin-order/bills/own',2,'Счета (Только свои)','isAuthor',NULL,1542640329,1542640329),('shop/admin-order/changes',2,'Изменения по заказу',NULL,NULL,1542640329,1542640329),('shop/admin-order/changes/own',2,'Изменения по заказу (Только свои)','isAuthor',NULL,1542640329,1542640329),('shop/admin-order/create',2,'Добавить',NULL,NULL,1511218889,1511218889),('shop/admin-order/create-order',2,'Добавить заказ',NULL,NULL,1511218890,1511218890),('shop/admin-order/delete',2,'Удалить',NULL,NULL,1511218890,1511218890),('shop/admin-order/delete-multi',2,'Удалить',NULL,NULL,1511218890,1511218890),('shop/admin-order/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218890,1511218890),('shop/admin-order/index',2,'Список',NULL,NULL,1511218889,1511218889),('shop/admin-order/payments',2,'Платежи',NULL,NULL,1542640329,1542640329),('shop/admin-order/payments/own',2,'Платежи (Только свои)','isAuthor',NULL,1542640329,1542640329),('shop/admin-order/update',2,'Редактировать',NULL,NULL,1511218889,1511218889),('shop/admin-order/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218889,1511218889),('shop/admin-pay-system',2,'Администрирование | Платежные системы',NULL,NULL,1443433770,1443433770),('shop/admin-pay-system/create',2,'Добавить',NULL,NULL,1508388408,1508388408),('shop/admin-pay-system/delete',2,'Удалить',NULL,NULL,1508388408,1508388408),('shop/admin-pay-system/delete-multi',2,'Удалить',NULL,NULL,1508388408,1508388408),('shop/admin-pay-system/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388408,1508388408),('shop/admin-pay-system/index',2,'Список',NULL,NULL,1508388407,1508388407),('shop/admin-pay-system/update',2,'Редактировать',NULL,NULL,1508388408,1508388408),('shop/admin-pay-system/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388408,1508388408),('shop/admin-payment',2,'Платежи по заказам',NULL,NULL,1542639326,1542639326),('shop/admin-person-type',2,'Администрирование | Типы плательщиков',NULL,NULL,1443433534,1443433534),('shop/admin-person-type-property',2,'Администрирование | Управление свойствами плательщика',NULL,NULL,1443454999,1443454999),('shop/admin-person-type-property/create',2,'Добавить',NULL,NULL,1508388717,1508388717),('shop/admin-person-type-property/delete',2,'Удалить',NULL,NULL,1508388717,1508388717),('shop/admin-person-type-property/delete-multi',2,'Удалить',NULL,NULL,1508388717,1508388717),('shop/admin-person-type-property/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388717,1508388717),('shop/admin-person-type-property/index',2,'Список',NULL,NULL,1508388717,1508388717),('shop/admin-person-type-property/update',2,'Редактировать',NULL,NULL,1508388717,1508388717),('shop/admin-person-type-property/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388717,1508388717),('shop/admin-person-type/create',2,'Добавить',NULL,NULL,1508388714,1508388714),('shop/admin-person-type/delete',2,'Удалить',NULL,NULL,1508388714,1508388714),('shop/admin-person-type/delete-multi',2,'Удалить',NULL,NULL,1508388714,1508388714),('shop/admin-person-type/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1508388714,1508388714),('shop/admin-person-type/index',2,'Список',NULL,NULL,1508388714,1508388714),('shop/admin-person-type/update',2,'Редактировать',NULL,NULL,1508388714,1508388714),('shop/admin-person-type/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1508388714,1508388714),('shop/admin-quantity-notice-email',2,'Администрирование | Уведомления о поступлении товаров по email',NULL,NULL,1488291019,1488291019),('shop/admin-quantity-notice-email/create',2,'Добавить',NULL,NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/delete',2,'Удалить',NULL,NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/delete-multi',2,'Удалить',NULL,NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/index',2,'Список',NULL,NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/update',2,'Редактировать',NULL,NULL,1511218894,1511218894),('shop/admin-quantity-notice-email/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218894,1511218894),('shop/admin-report-order',2,'Администрирование | Отчеты по заказам',NULL,NULL,1446391847,1446391847),('shop/admin-report-product',2,'Администрирование | Отчеты по заказам',NULL,NULL,1454242450,1454242450),('shop/admin-shop-store',2,'Склады',NULL,NULL,1578902653,1578902653),('shop/admin-shop-supplier',2,'Поставщики',NULL,NULL,1578902653,1578902653),('shop/admin-store',2,'Администрирование | Склады',NULL,NULL,1443632538,1443632538),('shop/admin-store__1',2,'Элементы',NULL,NULL,1560778111,1560778111),('shop/admin-store__10',2,'Элементы',NULL,NULL,1542640357,1542640357),('shop/admin-store__11',2,'Элементы',NULL,NULL,1560778115,1560778115),('shop/admin-store__2',2,'Элементы',NULL,NULL,1508388687,1508388687),('shop/admin-store__9',2,'Элементы',NULL,NULL,1560778114,1560778114),('shop/admin-store/activate-multi',2,'Активировать',NULL,NULL,1511218898,1511218898),('shop/admin-store/change-tree-multi',2,'Основной раздел',NULL,NULL,1511218898,1511218898),('shop/admin-store/change-trees-multi',2,'Дополнительные разделы',NULL,NULL,1511218898,1511218898),('shop/admin-store/create',2,'Добавить',NULL,NULL,1511218897,1511218897),('shop/admin-store/delete',2,'Удалить',NULL,NULL,1511218898,1511218898),('shop/admin-store/delete-multi',2,'Удалить',NULL,NULL,1511218898,1511218898),('shop/admin-store/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218898,1511218898),('shop/admin-store/inActivate-multi',2,'Деактивировать',NULL,NULL,1511218898,1511218898),('shop/admin-store/index',2,'Список',NULL,NULL,1511218897,1511218897),('shop/admin-store/rp',2,'Свойства',NULL,NULL,1511218898,1511218898),('shop/admin-store/update',2,'Редактировать',NULL,NULL,1511218898,1511218898),('shop/admin-store/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218898,1511218898),('shop/admin-tax',2,'Администрирование | Список налогов',NULL,NULL,1444292033,1444292033),('shop/admin-tax-rate',2,'Администрирование | Ставки налогов',NULL,NULL,1444297863,1444297863),('shop/admin-tax-rate/create',2,'Добавить',NULL,NULL,1511218901,1511218901),('shop/admin-tax-rate/delete',2,'Удалить',NULL,NULL,1511218901,1511218901),('shop/admin-tax-rate/delete-multi',2,'Удалить',NULL,NULL,1511218901,1511218901),('shop/admin-tax-rate/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218901,1511218901),('shop/admin-tax-rate/index',2,'Список',NULL,NULL,1511218901,1511218901),('shop/admin-tax-rate/update',2,'Редактировать',NULL,NULL,1511218901,1511218901),('shop/admin-tax-rate/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218901,1511218901),('shop/admin-tax/create',2,'Добавить',NULL,NULL,1511218901,1511218901),('shop/admin-tax/delete',2,'Удалить',NULL,NULL,1511218901,1511218901),('shop/admin-tax/delete-multi',2,'Удалить',NULL,NULL,1511218901,1511218901),('shop/admin-tax/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218901,1511218901),('shop/admin-tax/index',2,'Список',NULL,NULL,1511218900,1511218900),('shop/admin-tax/update',2,'Редактировать',NULL,NULL,1511218901,1511218901),('shop/admin-tax/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218901,1511218901),('shop/admin-type-price',2,'Администрирование | Типы цен',NULL,NULL,1443433771,1443433771),('shop/admin-type-price/create',2,'Добавить',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/def-multi',2,'По умолчанию',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/delete',2,'Удалить',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/delete-multi',2,'Удалить',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218900,1511218900),('shop/admin-type-price/index',2,'Список',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/update',2,'Редактировать',NULL,NULL,1511218900,1511218900),('shop/admin-type-price/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218900,1511218900),('shop/admin-user-account',2,'Администрирование | Счета покупателей',NULL,NULL,1443369401,1443369401),('shop/admin-user-account/create',2,'Добавить',NULL,NULL,1511218893,1511218893),('shop/admin-user-account/delete',2,'Удалить',NULL,NULL,1511218893,1511218893),('shop/admin-user-account/delete-multi',2,'Удалить',NULL,NULL,1511218893,1511218893),('shop/admin-user-account/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218893,1511218893),('shop/admin-user-account/index',2,'Список',NULL,NULL,1511218893,1511218893),('shop/admin-user-account/update',2,'Редактировать',NULL,NULL,1511218893,1511218893),('shop/admin-user-account/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218893,1511218893),('shop/admin-vat',2,'Администрирование | VAT_rates',NULL,NULL,1445550781,1445550781),('shop/admin-vat/create',2,'Добавить',NULL,NULL,1511218902,1511218902),('shop/admin-vat/delete',2,'Удалить',NULL,NULL,1511218902,1511218902),('shop/admin-vat/delete-multi',2,'Удалить',NULL,NULL,1511218902,1511218902),('shop/admin-vat/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218902,1511218902),('shop/admin-vat/index',2,'Список',NULL,NULL,1511218902,1511218902),('shop/admin-vat/update',2,'Редактировать',NULL,NULL,1511218902,1511218902),('shop/admin-vat/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218902,1511218902),('shop/admin-viewed-product',2,'Администрирование | Просмотренные товары',NULL,NULL,1443805928,1443805928),('shop/admin-viewed-product/create',2,'Добавить',NULL,NULL,1511218895,1511218895),('shop/admin-viewed-product/delete',2,'Удалить',NULL,NULL,1511218895,1511218895),('shop/admin-viewed-product/delete-multi',2,'Удалить',NULL,NULL,1511218895,1511218895),('shop/admin-viewed-product/delete/own',2,'Удалить (Только свои)','isAuthor',NULL,1511218895,1511218895),('shop/admin-viewed-product/index',2,'Список',NULL,NULL,1511218894,1511218894),('shop/admin-viewed-product/update',2,'Редактировать',NULL,NULL,1511218895,1511218895),('shop/admin-viewed-product/update/own',2,'Редактировать (Только свои)','isAuthor',NULL,1511218895,1511218895),('sshConsole/admin-ssh',2,'Администрирование | Ssh console',NULL,NULL,1461218903,1461218903),('user',1,'Зарегистрированный пользователь',NULL,NULL,1439037301,1439037301),('view-shop-type-price-1',2,'Права на просмотр цен: \'Базовая цена\'',NULL,NULL,1444381054,1444381054),('view-shop-type-price-2',2,'Права на просмотр цен: \'Розничная цена\'',NULL,NULL,1444381952,1444381952),('view-shop-type-price-3',2,'Права на просмотр цен: \'Оптовая цена\'',NULL,NULL,1444381976,1444381976),('view-shop-type-price-5',2,'Права на просмотр цен \'Цена со скидкой\'',NULL,NULL,1449327704,1449327704);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `auth_item` with 669 row(s)
--

--
-- Table structure for table `auth_item_child`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_item_child` VALUES ('root',''),('root','admin'),('admin','admin-import-stock-sale'),('root','admin-import-stock-sale'),('root','admin/admin-permission'),('root','admin/admin-role'),('root','admin/checker'),('root','admin/clear'),('root','admin/db'),('root','admin/email'),('root','admin/gii'),('root','admin/index'),('root','admin/info'),('root','admin/ssh'),('root','approved'),('admin','authclient/admin-user-auth-client'),('root','authclient/admin-user-auth-client'),('root','authclient/admin-user-auth-client/create'),('root','authclient/admin-user-auth-client/delete'),('root','authclient/admin-user-auth-client/delete-multi'),('root','authclient/admin-user-auth-client/index'),('root','authclient/admin-user-auth-client/update'),('root','backend/admin-backend-showing/create'),('backend/admin-backend-showing/delete/own','backend/admin-backend-showing/delete'),('root','backend/admin-backend-showing/delete'),('root','backend/admin-backend-showing/delete/own'),('root','backend/admin-backend-showing/index'),('backend/admin-backend-showing/update/own','backend/admin-backend-showing/update'),('root','backend/admin-backend-showing/update'),('root','backend/admin-backend-showing/update/own'),('root','buy-shop-type-price-1'),('root','cms-upa-permission'),('user','cms-upa-permission'),('admin','cms.admin-access'),('editor','cms.admin-access'),('manager','cms.admin-access'),('root','cms.admin-access'),('root','cms.admin-dashboards-edit'),('admin','cms.controll-panel-access'),('editor','cms.controll-panel-access'),('manager','cms.controll-panel-access'),('root','cms.controll-panel-access'),('root','cms.edit-view-files'),('admin','cms.elfinder-additional-files'),('root','cms.elfinder-additional-files'),('admin','cms.elfinder-common-public-files'),('editor','cms.elfinder-common-public-files'),('manager','cms.elfinder-common-public-files'),('root','cms.elfinder-common-public-files'),('admin','cms.elfinder-user-files'),('editor','cms.elfinder-user-files'),('manager','cms.elfinder-user-files'),('root','cms.elfinder-user-files'),('user','cms.elfinder-user-files'),('admin','cms.model-create'),('editor','cms.model-create'),('manager','cms.model-create'),('root','cms.model-create'),('admin','cms.model-delete'),('cms.model-delete-own','cms.model-delete'),('manager','cms.model-delete'),('root','cms.model-delete'),('editor','cms.model-delete-own'),('root','cms.model-delete-own'),('admin','cms.model-update'),('cms.model-update-own','cms.model-update'),('manager','cms.model-update'),('root','cms.model-update'),('admin','cms.model-update-advanced'),('cms.model-update-advanced-own','cms.model-update-advanced'),('root','cms.model-update-advanced'),('root','cms.model-update-advanced-own'),('editor','cms.model-update-own'),('root','cms.model-update-own'),('root','cms.root'),('root','cms.user-full-edit'),('root','cms/admin-clear'),('root','cms/admin-clear/index'),('root','cms/admin-cms-agent'),('root','cms/admin-cms-content'),('root','cms/admin-cms-content-element'),('admin','cms/admin-cms-content-element__1'),('manager','cms/admin-cms-content-element__1'),('root','cms/admin-cms-content-element__1'),('root','cms/admin-cms-content-element__1/activate-multi'),('root','cms/admin-cms-content-element__1/change-tree-multi'),('root','cms/admin-cms-content-element__1/change-trees-multi'),('cms/admin-cms-content-element__1/copy/own','cms/admin-cms-content-element__1/copy'),('root','cms/admin-cms-content-element__1/copy'),('root','cms/admin-cms-content-element__1/copy/own'),('root','cms/admin-cms-content-element__1/create'),('root','cms/admin-cms-content-element__1/deactivate-multi'),('cms/admin-cms-content-element__1/delete/own','cms/admin-cms-content-element__1/delete'),('root','cms/admin-cms-content-element__1/delete'),('root','cms/admin-cms-content-element__1/delete-multi'),('root','cms/admin-cms-content-element__1/delete/own'),('root','cms/admin-cms-content-element__1/index'),('root','cms/admin-cms-content-element__1/rp'),('cms/admin-cms-content-element__1/update/own','cms/admin-cms-content-element__1/update'),('root','cms/admin-cms-content-element__1/update'),('root','cms/admin-cms-content-element__1/update/own'),('root','cms/admin-cms-content-element__10'),('root','cms/admin-cms-content-element__11'),('root','cms/admin-cms-content-element__11/activate-multi'),('root','cms/admin-cms-content-element__11/change-tree-multi'),('root','cms/admin-cms-content-element__11/change-trees-multi'),('cms/admin-cms-content-element__11/copy/own','cms/admin-cms-content-element__11/copy'),('root','cms/admin-cms-content-element__11/copy'),('root','cms/admin-cms-content-element__11/copy/own'),('root','cms/admin-cms-content-element__11/create'),('root','cms/admin-cms-content-element__11/deactivate-multi'),('cms/admin-cms-content-element__11/delete/own','cms/admin-cms-content-element__11/delete'),('root','cms/admin-cms-content-element__11/delete'),('root','cms/admin-cms-content-element__11/delete-multi'),('root','cms/admin-cms-content-element__11/delete/own'),('root','cms/admin-cms-content-element__11/index'),('root','cms/admin-cms-content-element__11/rp'),('cms/admin-cms-content-element__11/update/own','cms/admin-cms-content-element__11/update'),('root','cms/admin-cms-content-element__11/update'),('root','cms/admin-cms-content-element__11/update/own'),('admin','cms/admin-cms-content-element__2'),('manager','cms/admin-cms-content-element__2'),('root','cms/admin-cms-content-element__2'),('root','cms/admin-cms-content-element__3'),('admin','cms/admin-cms-content-element__4'),('manager','cms/admin-cms-content-element__4'),('root','cms/admin-cms-content-element__4'),('root','cms/admin-cms-content-element__5'),('root','cms/admin-cms-content-element__6'),('root','cms/admin-cms-content-element__7'),('admin','cms/admin-cms-content-element__8'),('manager','cms/admin-cms-content-element__8'),('root','cms/admin-cms-content-element__8'),('root','cms/admin-cms-content-element__9'),('root','cms/admin-cms-content-element__9/activate-multi'),('root','cms/admin-cms-content-element__9/change-tree-multi'),('root','cms/admin-cms-content-element__9/change-trees-multi'),('cms/admin-cms-content-element__9/copy/own','cms/admin-cms-content-element__9/copy'),('root','cms/admin-cms-content-element__9/copy'),('root','cms/admin-cms-content-element__9/copy/own'),('root','cms/admin-cms-content-element__9/create'),('root','cms/admin-cms-content-element__9/deactivate-multi'),('cms/admin-cms-content-element__9/delete/own','cms/admin-cms-content-element__9/delete'),('root','cms/admin-cms-content-element__9/delete'),('root','cms/admin-cms-content-element__9/delete-multi'),('root','cms/admin-cms-content-element__9/delete/own'),('root','cms/admin-cms-content-element__9/index'),('root','cms/admin-cms-content-element__9/rp'),('cms/admin-cms-content-element__9/update/own','cms/admin-cms-content-element__9/update'),('root','cms/admin-cms-content-element__9/update'),('root','cms/admin-cms-content-element__9/update/own'),('root','cms/admin-cms-content-element/activate-multi'),('root','cms/admin-cms-content-element/change-tree-multi'),('root','cms/admin-cms-content-element/change-trees-multi'),('root','cms/admin-cms-content-element/create'),('cms/admin-cms-content-element/delete/own','cms/admin-cms-content-element/delete'),('root','cms/admin-cms-content-element/delete'),('root','cms/admin-cms-content-element/delete-multi'),('root','cms/admin-cms-content-element/delete/own'),('root','cms/admin-cms-content-element/inActivate-multi'),('root','cms/admin-cms-content-element/index'),('root','cms/admin-cms-content-element/rp'),('cms/admin-cms-content-element/update/own','cms/admin-cms-content-element/update'),('root','cms/admin-cms-content-element/update'),('root','cms/admin-cms-content-element/update/own'),('admin','cms/admin-cms-content-property'),('root','cms/admin-cms-content-property'),('admin','cms/admin-cms-content-property-enum'),('root','cms/admin-cms-content-property-enum'),('root','cms/admin-cms-content-property-enum/create'),('cms/admin-cms-content-property-enum/delete/own','cms/admin-cms-content-property-enum/delete'),('root','cms/admin-cms-content-property-enum/delete'),('root','cms/admin-cms-content-property-enum/delete-multi'),('root','cms/admin-cms-content-property-enum/delete/own'),('root','cms/admin-cms-content-property-enum/index'),('cms/admin-cms-content-property-enum/update/own','cms/admin-cms-content-property-enum/update'),('root','cms/admin-cms-content-property-enum/update'),('root','cms/admin-cms-content-property-enum/update/own'),('root','cms/admin-cms-content-property/create'),('cms/admin-cms-content-property/delete/own','cms/admin-cms-content-property/delete'),('root','cms/admin-cms-content-property/delete'),('root','cms/admin-cms-content-property/delete-multi'),('root','cms/admin-cms-content-property/delete/own'),('root','cms/admin-cms-content-property/index'),('cms/admin-cms-content-property/update/own','cms/admin-cms-content-property/update'),('root','cms/admin-cms-content-property/update'),('root','cms/admin-cms-content-property/update/own'),('root','cms/admin-cms-content-type'),('root','cms/admin-cms-content-type/create'),('cms/admin-cms-content-type/delete/own','cms/admin-cms-content-type/delete'),('root','cms/admin-cms-content-type/delete'),('root','cms/admin-cms-content-type/delete-multi'),('root','cms/admin-cms-content-type/delete/own'),('root','cms/admin-cms-content-type/index'),('cms/admin-cms-content-type/update/own','cms/admin-cms-content-type/update'),('root','cms/admin-cms-content-type/update'),('root','cms/admin-cms-content-type/update/own'),('root','cms/admin-cms-content/create'),('cms/admin-cms-content/delete/own','cms/admin-cms-content/delete'),('root','cms/admin-cms-content/delete'),('root','cms/admin-cms-content/delete-multi'),('root','cms/admin-cms-content/delete/own'),('root','cms/admin-cms-content/index'),('cms/admin-cms-content/update/own','cms/admin-cms-content/update'),('root','cms/admin-cms-content/update'),('root','cms/admin-cms-content/update/own'),('admin','cms/admin-cms-lang'),('root','cms/admin-cms-lang'),('root','cms/admin-cms-lang/activate-multi'),('root','cms/admin-cms-lang/create'),('cms/admin-cms-lang/delete/own','cms/admin-cms-lang/delete'),('root','cms/admin-cms-lang/delete'),('root','cms/admin-cms-lang/delete-multi'),('root','cms/admin-cms-lang/delete/own'),('root','cms/admin-cms-lang/inActivate-multi'),('root','cms/admin-cms-lang/index'),('cms/admin-cms-lang/update/own','cms/admin-cms-lang/update'),('root','cms/admin-cms-lang/update'),('root','cms/admin-cms-lang/update/own'),('admin','cms/admin-cms-site'),('root','cms/admin-cms-site'),('root','cms/admin-cms-site-domain'),('root','cms/admin-cms-site/activate-multi'),('root','cms/admin-cms-site/create'),('root','cms/admin-cms-site/def-multi'),('cms/admin-cms-site/delete/own','cms/admin-cms-site/delete'),('root','cms/admin-cms-site/delete'),('root','cms/admin-cms-site/delete-multi'),('root','cms/admin-cms-site/delete/own'),('root','cms/admin-cms-site/inActivate-multi'),('root','cms/admin-cms-site/index'),('cms/admin-cms-site/update/own','cms/admin-cms-site/update'),('root','cms/admin-cms-site/update'),('root','cms/admin-cms-site/update/own'),('admin','cms/admin-cms-tree-type'),('root','cms/admin-cms-tree-type'),('admin','cms/admin-cms-tree-type-property'),('root','cms/admin-cms-tree-type-property'),('admin','cms/admin-cms-tree-type-property-enum'),('root','cms/admin-cms-tree-type-property-enum'),('root','cms/admin-cms-tree-type-property-enum/create'),('cms/admin-cms-tree-type-property-enum/delete/own','cms/admin-cms-tree-type-property-enum/delete'),('root','cms/admin-cms-tree-type-property-enum/delete'),('root','cms/admin-cms-tree-type-property-enum/delete-multi'),('root','cms/admin-cms-tree-type-property-enum/delete/own'),('root','cms/admin-cms-tree-type-property-enum/index'),('cms/admin-cms-tree-type-property-enum/update/own','cms/admin-cms-tree-type-property-enum/update'),('root','cms/admin-cms-tree-type-property-enum/update'),('root','cms/admin-cms-tree-type-property-enum/update/own'),('root','cms/admin-cms-tree-type-property/create'),('cms/admin-cms-tree-type-property/delete/own','cms/admin-cms-tree-type-property/delete'),('root','cms/admin-cms-tree-type-property/delete'),('root','cms/admin-cms-tree-type-property/delete-multi'),('root','cms/admin-cms-tree-type-property/delete/own'),('root','cms/admin-cms-tree-type-property/index'),('cms/admin-cms-tree-type-property/update/own','cms/admin-cms-tree-type-property/update'),('root','cms/admin-cms-tree-type-property/update'),('root','cms/admin-cms-tree-type-property/update/own'),('root','cms/admin-cms-tree-type/activate-multi'),('root','cms/admin-cms-tree-type/create'),('cms/admin-cms-tree-type/delete/own','cms/admin-cms-tree-type/delete'),('root','cms/admin-cms-tree-type/delete'),('root','cms/admin-cms-tree-type/delete-multi'),('root','cms/admin-cms-tree-type/delete/own'),('root','cms/admin-cms-tree-type/inActivate-multi'),('root','cms/admin-cms-tree-type/index'),('cms/admin-cms-tree-type/update/own','cms/admin-cms-tree-type/update'),('root','cms/admin-cms-tree-type/update'),('root','cms/admin-cms-tree-type/update/own'),('admin','cms/admin-cms-user-universal-property'),('root','cms/admin-cms-user-universal-property'),('admin','cms/admin-cms-user-universal-property-enum'),('root','cms/admin-cms-user-universal-property-enum'),('root','cms/admin-cms-user-universal-property/create'),('cms/admin-cms-user-universal-property/delete/own','cms/admin-cms-user-universal-property/delete'),('root','cms/admin-cms-user-universal-property/delete'),('root','cms/admin-cms-user-universal-property/delete-multi'),('root','cms/admin-cms-user-universal-property/delete/own'),('root','cms/admin-cms-user-universal-property/index'),('cms/admin-cms-user-universal-property/update/own','cms/admin-cms-user-universal-property/update'),('root','cms/admin-cms-user-universal-property/update'),('root','cms/admin-cms-user-universal-property/update/own'),('root','cms/admin-component-settings'),('admin','cms/admin-file-manager'),('root','cms/admin-file-manager'),('admin','cms/admin-info'),('root','cms/admin-info'),('root','cms/admin-info/index'),('root','cms/admin-marketplace'),('root','cms/admin-message'),('root','cms/admin-profile'),('admin','cms/admin-search-phrase'),('manager','cms/admin-search-phrase'),('root','cms/admin-search-phrase'),('admin','cms/admin-search-phrase-group'),('manager','cms/admin-search-phrase-group'),('root','cms/admin-search-phrase-group'),('admin','cms/admin-settings'),('root','cms/admin-settings'),('root','cms/admin-settings/index'),('admin','cms/admin-storage'),('root','cms/admin-storage'),('admin','cms/admin-storage-files'),('editor','cms/admin-storage-files'),('manager','cms/admin-storage-files'),('root','cms/admin-storage-files'),('root','cms/admin-storage-files/create'),('admin','cms/admin-storage-files/delete'),('cms/admin-storage-files/delete/own','cms/admin-storage-files/delete'),('root','cms/admin-storage-files/delete'),('root','cms/admin-storage-files/delete-multi'),('admin','cms/admin-storage-files/delete-tmp-dir'),('cms/admin-storage-files/delete-tmp-dir/own','cms/admin-storage-files/delete-tmp-dir'),('manager','cms/admin-storage-files/delete-tmp-dir'),('root','cms/admin-storage-files/delete-tmp-dir'),('editor','cms/admin-storage-files/delete-tmp-dir/own'),('root','cms/admin-storage-files/delete-tmp-dir/own'),('editor','cms/admin-storage-files/delete/own'),('manager','cms/admin-storage-files/delete/own'),('root','cms/admin-storage-files/delete/own'),('admin','cms/admin-storage-files/download'),('cms/admin-storage-files/download/own','cms/admin-storage-files/download'),('manager','cms/admin-storage-files/download'),('root','cms/admin-storage-files/download'),('editor','cms/admin-storage-files/download/own'),('root','cms/admin-storage-files/download/own'),('admin','cms/admin-storage-files/index'),('manager','cms/admin-storage-files/index'),('root','cms/admin-storage-files/index'),('editor','cms/admin-storage-files/index/own'),('root','cms/admin-storage-files/index/own'),('admin','cms/admin-storage-files/update'),('cms/admin-storage-files/update/own','cms/admin-storage-files/update'),('manager','cms/admin-storage-files/update'),('root','cms/admin-storage-files/update'),('editor','cms/admin-storage-files/update/own'),('root','cms/admin-storage-files/update/own'),('root','cms/admin-storage/index'),('root','cms/admin-tools'),('admin','cms/admin-tree'),('editor','cms/admin-tree'),('manager','cms/admin-tree'),('root','cms/admin-tree'),('root','cms/admin-tree-menu'),('admin','cms/admin-tree/delete'),('cms/admin-tree/delete/own','cms/admin-tree/delete'),('root','cms/admin-tree/delete'),('admin','cms/admin-tree/delete-multi'),('root','cms/admin-tree/delete-multi'),('editor','cms/admin-tree/delete/own'),('manager','cms/admin-tree/delete/own'),('root','cms/admin-tree/delete/own'),('root','cms/admin-tree/index'),('admin','cms/admin-tree/list'),('root','cms/admin-tree/list'),('admin','cms/admin-tree/move'),('cms/admin-tree/move/own','cms/admin-tree/move'),('manager','cms/admin-tree/move'),('root','cms/admin-tree/move'),('editor','cms/admin-tree/move/own'),('root','cms/admin-tree/move/own'),('admin','cms/admin-tree/new-children'),('editor','cms/admin-tree/new-children'),('manager','cms/admin-tree/new-children'),('root','cms/admin-tree/new-children'),('admin','cms/admin-tree/resort'),('manager','cms/admin-tree/resort'),('root','cms/admin-tree/resort'),('admin','cms/admin-tree/update'),('cms/admin-tree/update/own','cms/admin-tree/update'),('manager','cms/admin-tree/update'),('root','cms/admin-tree/update'),('editor','cms/admin-tree/update/own'),('root','cms/admin-tree/update/own'),('root','cms/admin-universal-component-settings'),('admin','cms/admin-user'),('root','cms/admin-user'),('root','cms/admin-user-auth-client'),('root','cms/admin-user-email'),('root','cms/admin-user-email/create'),('root','cms/admin-user-email/delete'),('root','cms/admin-user-email/delete-multi'),('root','cms/admin-user-email/index'),('root','cms/admin-user-email/update'),('root','cms/admin-user-phone'),('root','cms/admin-user-phone/create'),('root','cms/admin-user-phone/delete'),('root','cms/admin-user-phone/delete-multi'),('root','cms/admin-user-phone/index'),('root','cms/admin-user-phone/update'),('admin','cms/admin-user/activate-multi'),('root','cms/admin-user/activate-multi'),('admin','cms/admin-user/create'),('root','cms/admin-user/create'),('admin','cms/admin-user/delete'),('cms/admin-user/delete/own','cms/admin-user/delete'),('root','cms/admin-user/delete'),('admin','cms/admin-user/delete-multi'),('root','cms/admin-user/delete-multi'),('root','cms/admin-user/delete/own'),('root','cms/admin-user/inActivate-multi'),('root','cms/admin-user/index'),('admin','cms/admin-user/update'),('cms/admin-user/update/own','cms/admin-user/update'),('root','cms/admin-user/update'),('admin','cms/admin-user/update-advanced'),('root','cms/admin-user/update-advanced'),('root','cms/admin-user/update/own'),('admin','cmsAgent/admin-cms-agent'),('root','cmsAgent/admin-cms-agent'),('root','cmsAgent/admin-cms-agent/activate-multi'),('root','cmsAgent/admin-cms-agent/create'),('root','cmsAgent/admin-cms-agent/delete'),('root','cmsAgent/admin-cms-agent/delete-multi'),('root','cmsAgent/admin-cms-agent/inActivate-multi'),('root','cmsAgent/admin-cms-agent/index'),('root','cmsAgent/admin-cms-agent/update'),('root','cmsExport/admin-export-task/create'),('cmsExport/admin-export-task/delete/own','cmsExport/admin-export-task/delete'),('root','cmsExport/admin-export-task/delete'),('root','cmsExport/admin-export-task/delete-multi'),('root','cmsExport/admin-export-task/delete/own'),('root','cmsExport/admin-export-task/index'),('cmsExport/admin-export-task/update/own','cmsExport/admin-export-task/update'),('root','cmsExport/admin-export-task/update'),('root','cmsExport/admin-export-task/update/own'),('root','cmsImport/admin-import-task/create'),('cmsImport/admin-import-task/delete/own','cmsImport/admin-import-task/delete'),('root','cmsImport/admin-import-task/delete'),('root','cmsImport/admin-import-task/delete-multi'),('root','cmsImport/admin-import-task/delete/own'),('root','cmsImport/admin-import-task/index'),('cmsImport/admin-import-task/update/own','cmsImport/admin-import-task/update'),('root','cmsImport/admin-import-task/update'),('root','cmsImport/admin-import-task/update/own'),('admin','cmsMarketplace/admin-composer-update'),('root','cmsMarketplace/admin-composer-update'),('root','cmsMarketplace/admin-composer-update/update'),('admin','cmsMarketplace/admin-marketplace'),('root','cmsMarketplace/admin-marketplace'),('root','cmsMarketplace/admin-marketplace/catalog'),('root','cmsMarketplace/admin-marketplace/index'),('root','cmsMarketplace/admin-marketplace/install'),('root','cmsMarketplace/admin-marketplace/test'),('root','cmsMarketplace/admin-marketplace/update'),('root','cmsSearch/admin-search-phrase'),('root','cmsSearch/admin-search-phrase-group'),('root','cmsSearch/admin-search-phrase-group/index'),('root','cmsSearch/admin-search-phrase/create'),('cmsSearch/admin-search-phrase/delete/own','cmsSearch/admin-search-phrase/delete'),('root','cmsSearch/admin-search-phrase/delete'),('root','cmsSearch/admin-search-phrase/delete-multi'),('root','cmsSearch/admin-search-phrase/delete/own'),('root','cmsSearch/admin-search-phrase/index'),('cmsSearch/admin-search-phrase/update/own','cmsSearch/admin-search-phrase/update'),('root','cmsSearch/admin-search-phrase/update'),('root','cmsSearch/admin-search-phrase/update/own'),('admin','dbDumper/admin-backup'),('root','dbDumper/admin-backup'),('admin','dbDumper/admin-settings'),('root','dbDumper/admin-settings'),('admin','dbDumper/admin-structure'),('root','dbDumper/admin-structure'),('root','editor'),('admin','form2/admin-form'),('root','form2/admin-form'),('root','form2/admin-form-property'),('admin','form2/admin-form-send'),('editor','form2/admin-form-send'),('manager','form2/admin-form-send'),('root','form2/admin-form-send'),('form2/admin-form-send/delete/own','form2/admin-form-send/delete'),('root','form2/admin-form-send/delete'),('root','form2/admin-form-send/delete-multi'),('root','form2/admin-form-send/delete/own'),('root','form2/admin-form-send/index'),('form2/admin-form-send/view/own','form2/admin-form-send/view'),('root','form2/admin-form-send/view'),('root','form2/admin-form-send/view/own'),('root','form2/admin-form/create'),('form2/admin-form/delete/own','form2/admin-form/delete'),('root','form2/admin-form/delete'),('root','form2/admin-form/delete-multi'),('root','form2/admin-form/delete/own'),('root','form2/admin-form/index'),('form2/admin-form/update/own','form2/admin-form/update'),('root','form2/admin-form/update'),('root','form2/admin-form/update/own'),('form2/admin-form/view/own','form2/admin-form/view'),('root','form2/admin-form/view'),('root','form2/admin-form/view/own'),('root','guest'),('root','kladr/admin-kladr-location'),('admin','logDbTarget/admin-log-db-target'),('root','logDbTarget/admin-log-db-target'),('root','logDbTarget/admin-log-db-target/create'),('root','logDbTarget/admin-log-db-target/delete'),('root','logDbTarget/admin-log-db-target/delete-multi'),('root','logDbTarget/admin-log-db-target/index'),('root','logDbTarget/admin-log-db-target/update'),('admin','mailer/admin-test'),('root','mailer/admin-test'),('root','manager'),('admin','measure/admin-measure'),('root','measure/admin-measure'),('root','measure/admin-measure/create'),('root','measure/admin-measure/def-multi'),('measure/admin-measure/delete/own','measure/admin-measure/delete'),('root','measure/admin-measure/delete'),('root','measure/admin-measure/delete-multi'),('root','measure/admin-measure/delete/own'),('root','measure/admin-measure/index'),('measure/admin-measure/update/own','measure/admin-measure/update'),('root','measure/admin-measure/update'),('root','measure/admin-measure/update/own'),('admin','money/admin-currency'),('root','money/admin-currency'),('root','money/admin-currency/activate-multi'),('root','money/admin-currency/create'),('root','money/admin-currency/delete'),('root','money/admin-currency/delete-multi'),('root','money/admin-currency/inActivate-multi'),('root','money/admin-currency/index'),('root','money/admin-currency/update'),('root','money/admin-currency/update-all'),('root','money/admin-currency/update-course'),('root','rbac/admin-permission'),('root','rbac/admin-permission/create'),('root','rbac/admin-permission/delete'),('root','rbac/admin-permission/delete-multi'),('root','rbac/admin-permission/index'),('root','rbac/admin-permission/update'),('root','rbac/admin-permission/update-data'),('root','rbac/admin-permission/view'),('root','rbac/admin-role'),('root','rbac/admin-role/create'),('root','rbac/admin-role/delete'),('root','rbac/admin-role/delete-multi'),('root','rbac/admin-role/index'),('root','rbac/admin-role/update'),('root','rbac/admin-role/view'),('admin','reviews2.add.review'),('approved','reviews2.add.review'),('editor','reviews2.add.review'),('guest','reviews2.add.review'),('manager','reviews2.add.review'),('root','reviews2.add.review'),('user','reviews2.add.review'),('root','reviews2/admin-message'),('root','reviews2/admin-message/create'),('reviews2/admin-message/delete/own','reviews2/admin-message/delete'),('root','reviews2/admin-message/delete'),('root','reviews2/admin-message/delete-multi'),('root','reviews2/admin-message/delete/own'),('root','reviews2/admin-message/index'),('root','reviews2/admin-message/status-allowed-multi'),('root','reviews2/admin-message/status-canceled-multi'),('root','reviews2/admin-message/status-processed-multi'),('reviews2/admin-message/update/own','reviews2/admin-message/update'),('root','reviews2/admin-message/update'),('root','reviews2/admin-message/update/own'),('root','shop-discount-'),('admin','shop-discount-1'),('approved','shop-discount-1'),('editor','shop-discount-1'),('guest','shop-discount-1'),('manager','shop-discount-1'),('root','shop-discount-1'),('user','shop-discount-1'),('root','shop-type-price-1'),('root','shop/admin-affiliate'),('root','shop/admin-affiliate-plan'),('root','shop/admin-affiliate-plan/create'),('root','shop/admin-affiliate-plan/delete'),('shop/admin-affiliate-plan/delete/own','shop/admin-affiliate-plan/delete'),('root','shop/admin-affiliate-plan/delete-multi'),('root','shop/admin-affiliate-plan/delete/own'),('root','shop/admin-affiliate-plan/index'),('root','shop/admin-affiliate-plan/update'),('shop/admin-affiliate-plan/update/own','shop/admin-affiliate-plan/update'),('root','shop/admin-affiliate-plan/update/own'),('root','shop/admin-affiliate-tier'),('root','shop/admin-affiliate-tier/create'),('root','shop/admin-affiliate-tier/delete'),('shop/admin-affiliate-tier/delete/own','shop/admin-affiliate-tier/delete'),('root','shop/admin-affiliate-tier/delete-multi'),('root','shop/admin-affiliate-tier/delete/own'),('root','shop/admin-affiliate-tier/index'),('root','shop/admin-affiliate-tier/update'),('shop/admin-affiliate-tier/update/own','shop/admin-affiliate-tier/update'),('root','shop/admin-affiliate-tier/update/own'),('root','shop/admin-affiliate/create'),('root','shop/admin-affiliate/delete'),('shop/admin-affiliate/delete/own','shop/admin-affiliate/delete'),('root','shop/admin-affiliate/delete-multi'),('root','shop/admin-affiliate/delete/own'),('root','shop/admin-affiliate/index'),('root','shop/admin-affiliate/update'),('shop/admin-affiliate/update/own','shop/admin-affiliate/update'),('root','shop/admin-affiliate/update/own'),('manager','shop/admin-basket'),('root','shop/admin-basket'),('root','shop/admin-bill'),('manager','shop/admin-buyer'),('root','shop/admin-buyer'),('root','shop/admin-buyer-1'),('root','shop/admin-buyer-1/create'),('root','shop/admin-buyer-1/delete'),('shop/admin-buyer-1/delete/own','shop/admin-buyer-1/delete'),('root','shop/admin-buyer-1/delete-multi'),('root','shop/admin-buyer-1/delete/own'),('root','shop/admin-buyer-1/index'),('root','shop/admin-buyer-1/update'),('shop/admin-buyer-1/update/own','shop/admin-buyer-1/update'),('root','shop/admin-buyer-1/update/own'),('root','shop/admin-buyer-2'),('root','shop/admin-buyer-user'),('root','shop/admin-buyer-user/delete-multi'),('root','shop/admin-buyer-user/index'),('root','shop/admin-buyer-user/update'),('shop/admin-buyer-user/update/own','shop/admin-buyer-user/update'),('root','shop/admin-buyer-user/update/own'),('root','shop/admin-buyer/create'),('root','shop/admin-buyer/delete'),('shop/admin-buyer/delete/own','shop/admin-buyer/delete'),('root','shop/admin-buyer/delete-multi'),('root','shop/admin-buyer/delete/own'),('root','shop/admin-buyer/index'),('root','shop/admin-buyer/update'),('shop/admin-buyer/update/own','shop/admin-buyer/update'),('root','shop/admin-buyer/update/own'),('root','shop/admin-cart'),('editor','shop/admin-cms-content-element'),('manager','shop/admin-cms-content-element'),('root','shop/admin-cms-content-element'),('root','shop/admin-cms-content-element__10__10'),('root','shop/admin-cms-content-element__10__10/copy'),('shop/admin-cms-content-element__10__10/copy/own','shop/admin-cms-content-element__10__10/copy'),('root','shop/admin-cms-content-element__10__10/copy/own'),('root','shop/admin-cms-content-element__10__10/delete'),('shop/admin-cms-content-element__10__10/delete/own','shop/admin-cms-content-element__10__10/delete'),('root','shop/admin-cms-content-element__10__10/delete/own'),('root','shop/admin-cms-content-element__10__10/update'),('shop/admin-cms-content-element__10__10/update/own','shop/admin-cms-content-element__10__10/update'),('root','shop/admin-cms-content-element__10__10/update/own'),('root','shop/admin-cms-content-element__2'),('root','shop/admin-cms-content-element__2__2'),('root','shop/admin-cms-content-element__2__2/copy'),('shop/admin-cms-content-element__2__2/copy/own','shop/admin-cms-content-element__2__2/copy'),('root','shop/admin-cms-content-element__2__2/copy/own'),('root','shop/admin-cms-content-element__2__2/delete'),('shop/admin-cms-content-element__2__2/delete/own','shop/admin-cms-content-element__2__2/delete'),('root','shop/admin-cms-content-element__2__2/delete/own'),('root','shop/admin-cms-content-element__2__2/update'),('shop/admin-cms-content-element__2__2/update/own','shop/admin-cms-content-element__2__2/update'),('root','shop/admin-cms-content-element__2__2/update/own'),('root','shop/admin-cms-content-element__2/activate-multi'),('root','shop/admin-cms-content-element__2/change-tree-multi'),('root','shop/admin-cms-content-element__2/change-trees-multi'),('root','shop/admin-cms-content-element__2/create'),('root','shop/admin-cms-content-element__2/delete'),('shop/admin-cms-content-element__2/delete/own','shop/admin-cms-content-element__2/delete'),('root','shop/admin-cms-content-element__2/delete-multi'),('root','shop/admin-cms-content-element__2/delete/own'),('root','shop/admin-cms-content-element__2/inActivate-multi'),('root','shop/admin-cms-content-element__2/index'),('root','shop/admin-cms-content-element__2/rp'),('root','shop/admin-cms-content-element__2/update'),('shop/admin-cms-content-element__2/update/own','shop/admin-cms-content-element__2/update'),('root','shop/admin-cms-content-element__2/update/own'),('root','shop/admin-cms-content-element/activate-multi'),('root','shop/admin-cms-content-element/change-tree-multi'),('root','shop/admin-cms-content-element/change-trees-multi'),('root','shop/admin-cms-content-element/create'),('root','shop/admin-cms-content-element/deactivate-multi'),('root','shop/admin-cms-content-element/delete'),('shop/admin-cms-content-element/delete/own','shop/admin-cms-content-element/delete'),('root','shop/admin-cms-content-element/delete-multi'),('root','shop/admin-cms-content-element/delete/own'),('root','shop/admin-cms-content-element/inActivate-multi'),('root','shop/admin-cms-content-element/index'),('root','shop/admin-cms-content-element/rp'),('root','shop/admin-cms-content-element/to-offer'),('root','shop/admin-cms-content-element/update'),('shop/admin-cms-content-element/update/own','shop/admin-cms-content-element/update'),('root','shop/admin-cms-content-element/update/own'),('root','shop/admin-content'),('root','shop/admin-content/create'),('root','shop/admin-content/delete'),('shop/admin-content/delete/own','shop/admin-content/delete'),('root','shop/admin-content/delete-multi'),('root','shop/admin-content/delete/own'),('root','shop/admin-content/index'),('root','shop/admin-content/update'),('shop/admin-content/update/own','shop/admin-content/update'),('root','shop/admin-content/update/own'),('root','shop/admin-delivery'),('root','shop/admin-delivery/create'),('root','shop/admin-delivery/delete'),('shop/admin-delivery/delete/own','shop/admin-delivery/delete'),('root','shop/admin-delivery/delete-multi'),('root','shop/admin-delivery/delete/own'),('root','shop/admin-delivery/index'),('root','shop/admin-delivery/update'),('shop/admin-delivery/update/own','shop/admin-delivery/update'),('root','shop/admin-delivery/update/own'),('root','shop/admin-discount'),('root','shop/admin-discount-coupon'),('root','shop/admin-discount-coupon/create'),('root','shop/admin-discount-coupon/delete'),('shop/admin-discount-coupon/delete/own','shop/admin-discount-coupon/delete'),('root','shop/admin-discount-coupon/delete-multi'),('root','shop/admin-discount-coupon/delete/own'),('root','shop/admin-discount-coupon/index'),('root','shop/admin-discount-coupon/update'),('shop/admin-discount-coupon/update/own','shop/admin-discount-coupon/update'),('root','shop/admin-discount-coupon/update/own'),('root','shop/admin-discount/activate-multi'),('root','shop/admin-discount/create'),('root','shop/admin-discount/deactivate-multi'),('root','shop/admin-discount/delete'),('shop/admin-discount/delete/own','shop/admin-discount/delete'),('root','shop/admin-discount/delete-multi'),('root','shop/admin-discount/delete/own'),('root','shop/admin-discount/index'),('root','shop/admin-discount/update'),('shop/admin-discount/update/own','shop/admin-discount/update'),('root','shop/admin-discount/update/own'),('root','shop/admin-discsave'),('root','shop/admin-discsave/create'),('root','shop/admin-discsave/delete'),('shop/admin-discsave/delete/own','shop/admin-discsave/delete'),('root','shop/admin-discsave/delete-multi'),('root','shop/admin-discsave/delete/own'),('root','shop/admin-discsave/index'),('root','shop/admin-discsave/update'),('shop/admin-discsave/update/own','shop/admin-discsave/update'),('root','shop/admin-discsave/update/own'),('root','shop/admin-extra'),('root','shop/admin-extra/create'),('root','shop/admin-extra/delete'),('shop/admin-extra/delete/own','shop/admin-extra/delete'),('root','shop/admin-extra/delete-multi'),('root','shop/admin-extra/delete/own'),('root','shop/admin-extra/index'),('root','shop/admin-extra/update'),('shop/admin-extra/update/own','shop/admin-extra/update'),('root','shop/admin-extra/update/own'),('root','shop/admin-fuser'),('root','shop/admin-fuser/delete'),('shop/admin-fuser/delete/own','shop/admin-fuser/delete'),('root','shop/admin-fuser/delete-multi'),('root','shop/admin-fuser/delete/own'),('root','shop/admin-fuser/index'),('admin','shop/admin-order'),('manager','shop/admin-order'),('root','shop/admin-order'),('root','shop/admin-order-change'),('admin','shop/admin-order-status'),('root','shop/admin-order-status'),('root','shop/admin-order-status/create'),('root','shop/admin-order-status/delete'),('shop/admin-order-status/delete/own','shop/admin-order-status/delete'),('root','shop/admin-order-status/delete-multi'),('root','shop/admin-order-status/delete/own'),('root','shop/admin-order-status/index'),('root','shop/admin-order-status/update'),('shop/admin-order-status/update/own','shop/admin-order-status/update'),('root','shop/admin-order-status/update/own'),('root','shop/admin-order/bills'),('shop/admin-order/bills/own','shop/admin-order/bills'),('root','shop/admin-order/bills/own'),('root','shop/admin-order/changes'),('shop/admin-order/changes/own','shop/admin-order/changes'),('root','shop/admin-order/changes/own'),('root','shop/admin-order/create'),('root','shop/admin-order/create-order'),('root','shop/admin-order/delete'),('shop/admin-order/delete/own','shop/admin-order/delete'),('root','shop/admin-order/delete-multi'),('root','shop/admin-order/delete/own'),('root','shop/admin-order/index'),('root','shop/admin-order/payments'),('shop/admin-order/payments/own','shop/admin-order/payments'),('root','shop/admin-order/payments/own'),('root','shop/admin-order/update'),('shop/admin-order/update/own','shop/admin-order/update'),('root','shop/admin-order/update/own'),('root','shop/admin-pay-system'),('root','shop/admin-pay-system/create'),('root','shop/admin-pay-system/delete'),('shop/admin-pay-system/delete/own','shop/admin-pay-system/delete'),('root','shop/admin-pay-system/delete-multi'),('root','shop/admin-pay-system/delete/own'),('root','shop/admin-pay-system/index'),('root','shop/admin-pay-system/update'),('shop/admin-pay-system/update/own','shop/admin-pay-system/update'),('root','shop/admin-pay-system/update/own'),('root','shop/admin-payment'),('root','shop/admin-person-type'),('root','shop/admin-person-type-property'),('root','shop/admin-person-type-property/create'),('root','shop/admin-person-type-property/delete'),('shop/admin-person-type-property/delete/own','shop/admin-person-type-property/delete'),('root','shop/admin-person-type-property/delete-multi'),('root','shop/admin-person-type-property/delete/own'),('root','shop/admin-person-type-property/index'),('root','shop/admin-person-type-property/update'),('shop/admin-person-type-property/update/own','shop/admin-person-type-property/update'),('root','shop/admin-person-type-property/update/own'),('root','shop/admin-person-type/create'),('root','shop/admin-person-type/delete'),('shop/admin-person-type/delete/own','shop/admin-person-type/delete'),('root','shop/admin-person-type/delete-multi'),('root','shop/admin-person-type/delete/own'),('root','shop/admin-person-type/index'),('root','shop/admin-person-type/update'),('shop/admin-person-type/update/own','shop/admin-person-type/update'),('root','shop/admin-person-type/update/own'),('root','shop/admin-quantity-notice-email'),('root','shop/admin-quantity-notice-email/create'),('root','shop/admin-quantity-notice-email/delete'),('shop/admin-quantity-notice-email/delete/own','shop/admin-quantity-notice-email/delete'),('root','shop/admin-quantity-notice-email/delete-multi'),('root','shop/admin-quantity-notice-email/delete/own'),('root','shop/admin-quantity-notice-email/index'),('root','shop/admin-quantity-notice-email/update'),('shop/admin-quantity-notice-email/update/own','shop/admin-quantity-notice-email/update'),('root','shop/admin-quantity-notice-email/update/own'),('manager','shop/admin-report-order'),('root','shop/admin-report-order'),('manager','shop/admin-report-product'),('root','shop/admin-report-product'),('root','shop/admin-shop-store'),('root','shop/admin-shop-supplier'),('root','shop/admin-store'),('root','shop/admin-store__1'),('root','shop/admin-store__10'),('root','shop/admin-store__11'),('root','shop/admin-store__2'),('root','shop/admin-store__9'),('root','shop/admin-store/activate-multi'),('root','shop/admin-store/change-tree-multi'),('root','shop/admin-store/change-trees-multi'),('root','shop/admin-store/create'),('root','shop/admin-store/delete'),('shop/admin-store/delete/own','shop/admin-store/delete'),('root','shop/admin-store/delete-multi'),('root','shop/admin-store/delete/own'),('root','shop/admin-store/inActivate-multi'),('root','shop/admin-store/index'),('root','shop/admin-store/rp'),('root','shop/admin-store/update'),('shop/admin-store/update/own','shop/admin-store/update'),('root','shop/admin-store/update/own'),('root','shop/admin-tax'),('root','shop/admin-tax-rate'),('root','shop/admin-tax-rate/create'),('root','shop/admin-tax-rate/delete'),('shop/admin-tax-rate/delete/own','shop/admin-tax-rate/delete'),('root','shop/admin-tax-rate/delete-multi'),('root','shop/admin-tax-rate/delete/own'),('root','shop/admin-tax-rate/index'),('root','shop/admin-tax-rate/update'),('shop/admin-tax-rate/update/own','shop/admin-tax-rate/update'),('root','shop/admin-tax-rate/update/own'),('root','shop/admin-tax/create'),('root','shop/admin-tax/delete'),('shop/admin-tax/delete/own','shop/admin-tax/delete'),('root','shop/admin-tax/delete-multi'),('root','shop/admin-tax/delete/own'),('root','shop/admin-tax/index'),('root','shop/admin-tax/update'),('shop/admin-tax/update/own','shop/admin-tax/update'),('root','shop/admin-tax/update/own'),('admin','shop/admin-type-price'),('root','shop/admin-type-price'),('root','shop/admin-type-price/create'),('root','shop/admin-type-price/def-multi'),('root','shop/admin-type-price/delete'),('shop/admin-type-price/delete/own','shop/admin-type-price/delete'),('root','shop/admin-type-price/delete-multi'),('root','shop/admin-type-price/delete/own'),('root','shop/admin-type-price/index'),('root','shop/admin-type-price/update'),('shop/admin-type-price/update/own','shop/admin-type-price/update'),('root','shop/admin-type-price/update/own'),('root','shop/admin-user-account'),('root','shop/admin-user-account/create'),('root','shop/admin-user-account/delete'),('shop/admin-user-account/delete/own','shop/admin-user-account/delete'),('root','shop/admin-user-account/delete-multi'),('root','shop/admin-user-account/delete/own'),('root','shop/admin-user-account/index'),('root','shop/admin-user-account/update'),('shop/admin-user-account/update/own','shop/admin-user-account/update'),('root','shop/admin-user-account/update/own'),('root','shop/admin-vat'),('root','shop/admin-vat/create'),('root','shop/admin-vat/delete'),('shop/admin-vat/delete/own','shop/admin-vat/delete'),('root','shop/admin-vat/delete-multi'),('root','shop/admin-vat/delete/own'),('root','shop/admin-vat/index'),('root','shop/admin-vat/update'),('shop/admin-vat/update/own','shop/admin-vat/update'),('root','shop/admin-vat/update/own'),('root','shop/admin-viewed-product'),('root','shop/admin-viewed-product/create'),('root','shop/admin-viewed-product/delete'),('shop/admin-viewed-product/delete/own','shop/admin-viewed-product/delete'),('root','shop/admin-viewed-product/delete-multi'),('root','shop/admin-viewed-product/delete/own'),('root','shop/admin-viewed-product/index'),('root','shop/admin-viewed-product/update'),('shop/admin-viewed-product/update/own','shop/admin-viewed-product/update'),('root','shop/admin-viewed-product/update/own'),('root','sshConsole/admin-ssh'),('root','user'),('admin','view-shop-type-price-1'),('approved','view-shop-type-price-1'),('editor','view-shop-type-price-1'),('guest','view-shop-type-price-1'),('manager','view-shop-type-price-1'),('root','view-shop-type-price-1'),('user','view-shop-type-price-1'),('admin','view-shop-type-price-2'),('approved','view-shop-type-price-2'),('editor','view-shop-type-price-2'),('guest','view-shop-type-price-2'),('manager','view-shop-type-price-2'),('root','view-shop-type-price-2'),('user','view-shop-type-price-2'),('root','view-shop-type-price-3'),('admin','view-shop-type-price-5'),('approved','view-shop-type-price-5'),('editor','view-shop-type-price-5'),('guest','view-shop-type-price-5'),('manager','view-shop-type-price-5'),('root','view-shop-type-price-5'),('user','view-shop-type-price-5');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `auth_item_child` with 941 row(s)
--

--
-- Table structure for table `auth_rule`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `auth_rule` VALUES ('isAuthor','O:26:\"skeeks\\cms\\rbac\\AuthorRule\":3:{s:4:\"name\";s:8:\"isAuthor\";s:9:\"createdAt\";i:1439037301;s:9:\"updatedAt\";i:1439037301;}',1439037301,1439037301);
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `auth_rule` with 1 row(s)
--

--
-- Table structure for table `backend_showing`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_showing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT '1',
  `key` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `config_jsoned` text,
  PRIMARY KEY (`id`),
  KEY `backend_showing__updated_by` (`updated_by`),
  KEY `backend_showing__created_by` (`created_by`),
  KEY `backend_showing__created_at` (`created_at`),
  KEY `backend_showing__updated_at` (`updated_at`),
  KEY `backend_showing__cms_user_id` (`cms_user_id`),
  KEY `backend_showing__is_default` (`is_default`),
  KEY `backend_showing__name` (`name`),
  KEY `backend_showing__key` (`key`),
  KEY `backend_showing__priority` (`priority`),
  CONSTRAINT `backend_showing__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `backend_showing__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `backend_showing__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_showing`
--

LOCK TABLES `backend_showing` WRITE;
/*!40000 ALTER TABLE `backend_showing` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `backend_showing` VALUES (1,1,1,1542640328,1542640328,NULL,NULL,1,'shop/admin-order/index',100,''),(2,1,1,1542640328,1542640328,NULL,NULL,1,'backend/admin-backend-showing/index',100,''),(3,1,1,1542640353,1542640353,NULL,NULL,1,'shop/admin-cms-content-element/index',100,''),(4,1,1,1542640365,1542640365,NULL,NULL,1,'cms/admin-cms-content-element/index',100,''),(5,1,1,1542640365,1542640365,NULL,NULL,1,'cms/admin-cms-content-property-enum/index',100,''),(6,1,1,1542640401,1542640401,NULL,NULL,1,'shop/admin-discount/index',100,''),(7,1,1,1542641759,1542641759,NULL,NULL,1,'logDbTarget/admin-log-db-target/index',100,'');
/*!40000 ALTER TABLE `backend_showing` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `backend_showing` with 7 row(s)
--

--
-- Table structure for table `cms_admin_filter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_admin_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `namespace` varchar(255) NOT NULL,
  `values` text COMMENT 'Values filters',
  `visibles` text COMMENT 'Visible fields',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `unique_default` (`cms_user_id`,`is_default`,`namespace`),
  CONSTRAINT `cms_admin_filter__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_admin_filter__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_admin_filter__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='Filters in the administrative part';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_admin_filter`
--

LOCK TABLES `cms_admin_filter` WRITE;
/*!40000 ALTER TABLE `cms_admin_filter` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_admin_filter` VALUES (1,1,1,1464284266,1464284266,1,1,NULL,'cms/admin-cms-content-element_1','',''),(2,1,1,1464284269,1464284269,1,1,NULL,'cms/admin-cms-content-element_9','',''),(3,1,1,1464284283,1464284283,1,1,NULL,'cms/admin-cms-content-element_11','',''),(4,1,1,1464284292,1464284292,1,1,NULL,'cms/admin-cms-content-element_4','',''),(5,1,1,1464284300,1464284300,1,1,NULL,'shop/admin-cms-content-element_10','',''),(6,1,1,1464284301,1464286435,1,1,NULL,'shop/admin-cms-content-element_2','','shopcmscontentelementsearch-active'),(7,1,1,1464284384,1464286277,NULL,NULL,'Свойства','shop/admin-cms-content-element_2','','shopcmscontentelementsearch-q,shopcmscontentelementsearch-code,searchrelatedpropertiesmodel-season,searchrelatedpropertiesmodel-composition,searchrelatedpropertiesmodel-stocksaleid,searchrelatedpropertiesmodel-pricedisallow'),(8,1,1,1464284455,1464284469,NULL,NULL,'Не обновляется цена','shop/admin-cms-content-element_2','a:2:{s:10:\"content_id\";s:1:\"2\";s:28:\"SearchRelatedPropertiesModel\";a:1:{s:13:\"priceDisallow\";s:3:\"107\";}}','searchrelatedpropertiesmodel-pricedisallow'),(9,1,1,1464286448,1464286448,NULL,NULL,'Отключенные товары','shop/admin-cms-content-element_2','a:2:{s:10:\"content_id\";s:1:\"2\";s:27:\"ShopCmsContentElementSearch\";a:1:{s:6:\"active\";s:1:\"N\";}}','shopcmscontentelementsearch-active'),(10,1,1,1464296808,1464296832,1,1,NULL,'cms/admin-user','','cmsusersearch-q,searchrelatedpropertiesmodel-property25ef3e16d0370aa39bb074620ce67c5e'),(17,1,1,1488278868,1488278868,1,1,NULL,'form2/admin-form','',''),(18,1,1,1488278909,1488278909,1,1,NULL,'logDbTarget/admin-log-db-target','',''),(19,1,1,1488284442,1488284442,1,1,NULL,'cms/admin-cms-content-type','',''),(20,1,1,1488290999,1488290999,1,1,NULL,'shop/admin-order','',''),(21,1,1,1488291006,1488291006,1,1,NULL,'shop/admin-buyer-user','',''),(22,1,1,1488291011,1488291011,1,1,NULL,'shop/admin-buyer-1','',''),(23,1,1,1488291014,1488291014,1,1,NULL,'shop/admin-buyer-2','',''),(24,1,1,1488291019,1488291019,1,1,NULL,'shop/admin-quantity-notice-email','',''),(25,1,1,1488291051,1488291051,1,1,NULL,'shop/admin-order-status','',''),(26,1,1,1488291052,1488291052,1,1,NULL,'shop/admin-type-price','',''),(27,1,1,1488291055,1488291055,1,1,NULL,'shop/admin-person-type','',''),(28,1,1,1488291058,1488291058,1,1,NULL,'shop/admin-pay-system','',''),(29,1,1,1488291068,1488291068,1,1,NULL,'shop/admin-delivery','',''),(30,1,1,1508388062,1508388062,1,1,NULL,'rbac/admin-role','',''),(31,1,1,1511218867,1511218867,1,1,NULL,'rbac/admin-permission','','');
/*!40000 ALTER TABLE `cms_admin_filter` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_admin_filter` with 25 row(s)
--

--
-- Table structure for table `cms_agent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_exec_at` int(11) DEFAULT NULL,
  `next_exec_at` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text,
  `agent_interval` int(11) NOT NULL DEFAULT '86400',
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `is_period` char(1) NOT NULL DEFAULT 'Y',
  `is_running` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `last_exec_at` (`last_exec_at`),
  KEY `next_exec_at` (`next_exec_at`),
  KEY `agent_interval` (`agent_interval`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `is_period` (`is_period`),
  KEY `is_running` (`is_running`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Агенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_agent`
--

LOCK TABLES `cms_agent` WRITE;
/*!40000 ALTER TABLE `cms_agent` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_agent` VALUES (40,1578902274,1578913074,'logDbTarget/agents/clear-logs','Чистка mysql логов',10800,100,'Y','N','N'),(41,1578902275,1578945475,'money/agents/update-courses','Обновление курса валют',43200,100,'Y','N','N'),(42,1578902275,1578988675,'cmsSearch/clear/phrase','Чистка поисковых запросов',86400,100,'Y','N','N'),(43,1578902276,1578988676,'dbDumper/mysql/dump','Бэкап базы данных',86400,100,'Y','N','N'),(44,1578902276,1578923876,'shop/agents/delete-empty-carts','Удаление пустых корзин',21600,100,'Y','N','N'),(45,1578902276,1578988676,'cms/cache/flush-all','Чистка кэша',86400,100,'Y','N','N'),(46,1578902276,1578988676,'shop/flush/price-changes','Удаление старых изменений цен',86400,100,'Y','N','N'),(47,1578902276,1578902876,'shop/notify/quantity-emails','Уведомить о поступлении',600,100,'Y','N','N'),(48,1578902277,1578988677,'ajaxfileupload/cleanup','Чистка временно загружаемых файлов',86400,100,'Y','N','N');
/*!40000 ALTER TABLE `cms_agent` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_agent` with 9 row(s)
--

--
-- Table structure for table `cms_component_settings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_component_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `value` longtext,
  `user_id` int(11) DEFAULT NULL,
  `namespace` varchar(50) DEFAULT NULL,
  `cms_site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `component` (`component`),
  KEY `user_id` (`user_id`),
  KEY `namespace` (`namespace`),
  KEY `cms_site_id` (`cms_site_id`),
  CONSTRAINT `cms_component_settings_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_component_settings__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_settings_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_settings_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_component_settings`
--

LOCK TABLES `cms_component_settings` WRITE;
/*!40000 ALTER TABLE `cms_component_settings` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_component_settings` VALUES (1,1,1,1439039222,1439039222,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"4\",\"active\":\"Y\",\"level\":\"\",\"label\":\"\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/sub-catalog\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"},\"namespace\":\"TreeMenuCmsWidget-sub-catalog-main\"}',NULL,'TreeMenuCmsWidget-sub-catalog-main',NULL),(2,1,1,1442582746,1457433398,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Сервисы\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"\",\"createdBy\":[],\"content_ids\":[\"1\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@template/widgets/ContentElementsCmsWidget/articles-footer\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-footer\"},\"namespace\":\"ContentElementsCmsWidget-footer\"}',NULL,'ContentElementsCmsWidget-footer',NULL),(3,1,1,1442841137,1442841137,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Товары\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home\"},\"namespace\":\"ContentElementsCmsWidget-home\"}',NULL,'ContentElementsCmsWidget-home',NULL),(5,1,1,1442924340,1445552823,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"1\",\"active\":\"Y\",\"level\":\"0\",\"label\":\"Верхнее меню\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"4\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/menu-top.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"menu-top\"},\"namespace\":\"menu-top\"}',NULL,'menu-top',NULL),(6,1,1,1442927188,1462430655,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"priority\",\"order\":\"4\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"4\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/slides-carousel\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-slides\"},\"namespace\":\"ContentElementsCmsWidget-slides\"}',NULL,'ContentElementsCmsWidget-slides',NULL),(8,1,1,1443274700,1445106497,'skeeks\\modules\\cms\\form2\\cmsWidgets\\form2\\FormWidget','{\"form_id\":\"2\",\"form_code\":null,\"btnSubmit\":\"Отправить\",\"btnSubmitClass\":\"btn btn-primary\",\"modelForm\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"form_id\":null,\"form_code\":null,\"btnSubmit\":\"Отправить\",\"btnSubmitClass\":\"btn btn-primary\",\"modelForm\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,'FormWidget-header-feedback',NULL),(9,1,1,1443606781,1445556036,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"\",\"label\":\"Каталог\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"4\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/left-menu\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":4,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"TreeMenuCmsWidget-leftmenu\"},\"namespace\":\"TreeMenuCmsWidget-leftmenu\"}',NULL,'TreeMenuCmsWidget-leftmenu',NULL),(10,1,1,1443782348,1443782348,'skeeks\\modules\\cms\\money\\components\\money\\Money','{\"currencyCode\":\"RUB\",\"defaultAttributes\":{\"currencyCode\":\"RUB\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(11,1,1,1444118553,1444121360,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"2\",\"label\":\"Разделы каталога\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/catalog-pages.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"catalog-pages\"},\"namespace\":\"catalog-pages\"}',NULL,'catalog-pages',NULL),(12,1,1,1444126587,1445105425,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"2\",\"label\":\"Разделы каталога\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"3\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/catalog-pages.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":3,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"home-catalog-pages\"},\"namespace\":\"home-catalog-pages\"}',NULL,'home-catalog-pages',NULL),(13,1,1,1444128113,1444128458,'skeeks\\cms\\cmsWidgets\\text\\TextCmsWidget','{\"text\":\"\\t\\t\\t\\t<!-- Footer Logo -->\\r\\n                                <h4 class=\\\"letter-spacing-1\\\">Оплата заказа удобной платежной системой</h4>\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\">\\r\\n                                           <img src=\\\"/img/trust_left.png\\\">\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\t\\t\\t\\t\\t\\r\\n\\r\\n\\r\\n\\t\\t\\t\\t<h4 class=\\\"letter-spacing-1\\\">Социальные сети</h4>\\r\\n\\r\\n\\t\\t\\t\\t<!-- Small Description -->\\r\\n\\t\\t\\t\\t<p>Вступайте в наши группы и соц сети.</p>\\r\\n\\r\\n\\t\\t\\t\\t<!-- Social Icons -->\\r\\n\\t\\t\\t\\t<div class=\\\"margin-top-20\\\">\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-facebook pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Facebook\\\">\\r\\n\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-facebook\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-facebook\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-twitter pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Twitter\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-twitter\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-twitter\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-gplus pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Google plus\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-gplus\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-gplus\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-linkedin pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Linkedin\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-linkedin\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-linkedin\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t\\t<a href=\\\"#\\\" class=\\\"social-icon social-icon-border social-rss pull-left\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"top\\\" title=\\\"Rss\\\">\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-rss\\\"></i>\\r\\n\\t\\t\\t\\t\\t\\t<i class=\\\"icon-rss\\\"></i>\\r\\n\\t\\t\\t\\t\\t</a>\\r\\n\\r\\n\\t\\t\\t\\t</div>\\r\\n\\t\\t\\t\\t<!-- /Social Icons -->\",\"defaultAttributes\":{\"text\":\"\",\"defaultAttributes\":[],\"namespace\":\"text-footer-social\"},\"namespace\":\"text-footer-social\"}',NULL,'text-footer-social',NULL),(16,1,1,1444327637,1445439462,'skeeks\\cms\\components\\CmsSettings','{\"sessionType\":\"file\",\"defaultAttributes\":{\"sessionType\":\"file\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(17,1,1,1444728427,1458037108,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"N\",\"pageSize\":\"15\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-second\"},\"namespace\":\"ContentElementsCmsWidget-second\"}',NULL,'ContentElementsCmsWidget-second',NULL),(18,1,1,1444731273,1459441498,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"2\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"brand\",\"season\"],\"offerRelatedProperties\":[\"color\",\"size\"],\"type_price_id\":\"4\",\"onlyExistsFilters\":false,\"elementIds\":[],\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"brand\":\"\",\"season\":\"\",\"composition\":\"\",\"stockSaleId\":\"\"},\"searchOfferRelatedPropertiesModel\":{\"color\":\"\",\"size\":\"\",\"stockSaleId\":\"\"},\"viewFile\":\"slider\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"offerRelatedProperties\":[],\"type_price_id\":\"\",\"onlyExistsFilters\":false,\"elementIds\":[],\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"searchOfferRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left\"},\"namespace\":\"ShopProductFiltersWidget-left\"}',NULL,'ShopProductFiltersWidget-left',NULL),(24,1,1,1444829890,1447079683,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"\",\"createdBy\":[],\"content_ids\":[\"1\",\"6\",\"7\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/articles\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-sub-catalog\"},\"namespace\":\"ContentElementsCmsWidget-sub-catalog\"}',NULL,'ContentElementsCmsWidget-sub-catalog',NULL),(29,1,1,1444990652,1462372457,'skeeks\\cms\\modules\\admin\\components\\settings\\AdminSettings','{\"languageCode\":\"ru\"}',1,NULL,NULL),(31,1,1,1445441281,1445441281,'skeeks\\cms\\vk\\comments\\VkCommentsWidget','{\"limit\":\"10\",\"width\":\"800\",\"autoPublish\":\"1\",\"mini\":\"auto\",\"height\":\"0\",\"norealtime\":\"0\",\"attach\":[\"graffiti\",\"photo\",\"video\",\"audio\",\"link\"],\"apiId\":\"5115405\",\"viewFile\":\"default\",\"defaultAttributes\":{\"limit\":10,\"width\":500,\"autoPublish\":1,\"mini\":\"auto\",\"height\":0,\"norealtime\":0,\"attach\":[\"graffiti\",\"photo\",\"audio\",\"video\",\"link\"],\"apiId\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"VkCommentsWidget-main\"},\"namespace\":\"VkCommentsWidget-main\"}',NULL,'VkCommentsWidget-main',NULL),(32,1,1,1445442558,1458052627,'skeeks\\cms\\yandex\\share\\widget\\YaShareWidget','{\"typeView\":\"button\",\"services\":[\"vkontakte\",\"facebook\",\"odnoklassniki\",\"gplus\"],\"viewFile\":\"default\",\"defaultAttributes\":{\"typeView\":\"button\",\"services\":[\"vkontakte\",\"facebook\",\"twitter\",\"odnoklassniki\"],\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"YaShareWidget-main\"},\"namespace\":\"YaShareWidget-main\"}',NULL,'YaShareWidget-main',NULL),(36,1,1,1445556389,1456330054,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\",\"type\",\"availability\"],\"type_price_id\":\"4\",\"elementIds\":[],\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"elementIds\":[],\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-31\"},\"namespace\":\"ShopProductFiltersWidget-left-31\"}',NULL,'ShopProductFiltersWidget-left-31',NULL),(37,1,1,1445556427,1445556427,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"2\",\"searchModelAttributes\":\"\",\"realatedProperties\":[],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-36\"},\"namespace\":\"ShopProductFiltersWidget-left-36\"}',NULL,'ShopProductFiltersWidget-left-36',NULL),(38,1,1,1445556475,1445634832,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\",\"type\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-9\"},\"namespace\":\"ShopProductFiltersWidget-left-9\"}',NULL,'ShopProductFiltersWidget-left-9',NULL),(39,1,1,1445608385,1445608385,'skeeks\\cms\\authclient\\AuthClientSettings','{\"enabled\":\"0\",\"githubEnabled\":\"1\",\"githubClientId\":\"\",\"githubClientSecret\":\"\",\"githubClass\":\"\",\"vkEnabled\":\"1\",\"vkClientId\":\"\",\"vkClientSecret\":\"\",\"vkClass\":\"\",\"defaultAttributes\":{\"enabled\":false,\"githubEnabled\":true,\"githubClientId\":\"\",\"githubClientSecret\":\"\",\"githubClass\":\"\",\"vkEnabled\":true,\"vkClientId\":\"\",\"vkClientSecret\":\"\",\"vkClass\":\"\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(40,1,1,1445614850,1445614942,'skeeks\\cms\\components\\CmsSearchComponent','{\"searchElementContentIds\":[\"2\",\"8\"],\"searchElementFields\":[\"id\",\"name\",\"description_short\",\"description_full\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":\"0\",\"defaultAttributes\":{\"searchElementContentIds\":[],\"searchElementFields\":[\"description_full\",\"description_short\",\"name\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":0,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(42,1,1,1445886368,1445886368,'skeeks\\cms\\components\\Seo','{\"maxKeywordsLength\":\"1000\",\"minKeywordLenth\":\"8\",\"keywordsStopWords\":[],\"enableKeywordsGenerator\":\"1\",\"robotsContent\":\"User-agent: *\\r\\nDisallow: *\\r\\nDisallow: /\",\"useLastDelimetrContentElements\":\"0\",\"useLastDelimetrTree\":\"0\",\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":{\"maxKeywordsLength\":1000,\"minKeywordLenth\":8,\"keywordsStopWords\":[],\"enableKeywordsGenerator\":true,\"robotsContent\":\"User-agent: *\",\"useLastDelimetrContentElements\":false,\"useLastDelimetrTree\":false,\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(43,1,1,1446027498,1457189586,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"4\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Новинки\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products-home\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home-page\"},\"namespace\":\"ContentElementsCmsWidget-home-page\"}',NULL,'ContentElementsCmsWidget-home-page',NULL),(44,1,1,1446313777,1508388049,'skeeks\\cms\\components\\CmsToolbar','{\"allowedIPs\":[\"*\"],\"infoblocks\":[],\"editWidgets\":\"N\",\"editViewFiles\":\"N\",\"isOpen\":\"Y\",\"enabled\":1,\"enableFancyboxWindow\":0,\"infoblockEditBorderColor\":\"red\",\"viewFiles\":[],\"inited\":false,\"editUrl\":\"\"}',1,NULL,NULL),(47,1,1,1446387738,1458052647,'skeeks\\cms\\vk\\community\\VkCommunityWidget','{\"adaptiveWith\":true,\"wide\":\"N\",\"width\":\"260\",\"height\":\"400\",\"autoPublish\":1,\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"2B587A\",\"norealtime\":0,\"selectMode\":\"0\",\"apiId\":\"28310839\",\"viewFile\":\"default\",\"defaultAttributes\":{\"adaptiveWith\":true,\"wide\":\"N\",\"width\":220,\"height\":400,\"autoPublish\":1,\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"5B7FA6\",\"norealtime\":0,\"selectMode\":0,\"apiId\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"VkCommunityWidget-moto\"},\"namespace\":\"VkCommunityWidget-moto\"}',NULL,'VkCommunityWidget-moto',NULL),(48,1,1,1446457887,1446457953,'skeeks\\cms\\instagram\\widget\\InstagramWidget','{\"clientId\":\"65fac7b148f043d191c8313d135fab25\",\"userName\":\"SELECTMOTO\",\"media\":null,\"user\":null,\"tag\":\"\",\"showBy\":\"user\",\"error_message\":null,\"width\":\"260\",\"imgWidth\":\"0\",\"inline\":\"4\",\"isShowToolbar\":\"1\",\"count\":\"\",\"imgRes\":\"thumbnail\",\"viewFile\":\"default\",\"defaultAttributes\":{\"clientId\":null,\"userName\":null,\"media\":null,\"user\":null,\"tag\":null,\"showBy\":\"user\",\"error_message\":null,\"width\":260,\"imgWidth\":0,\"inline\":4,\"isShowToolbar\":true,\"count\":null,\"imgRes\":\"thumbnail\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(49,1,1,1446564694,1446564759,'skeeks\\cms\\reviews2\\components\\Reviews2Component','{\"enabledBeforeApproval\":\"Y\",\"maxValue\":\"5\",\"maxCountMessagesForUser\":\"1\",\"elementPropertyRatingCode\":\"reviews2_rating\",\"elementPropertyCountCode\":\"reviews2_count\",\"notifyEmails\":[\"selectmoto@yandex.ru\"],\"notifyPhones\":[],\"securityEnabledRateLimit\":\"Y\",\"securityRateLimitRequests\":\"10\",\"securityRateLimitTime\":\"3600\",\"messageSuccessBeforeApproval\":\"Отзыв успешно добавлен, и будет опубликован на сайте после проверки модератора.\",\"messageSuccess\":\"Отзыв успешно добавлен, спасибо.\",\"enabledFieldsOnUser\":[\"comments\",\"dignity\",\"disadvantages\"],\"enabledFieldsOnGuest\":[\"user_name\",\"user_email\",\"comments\",\"dignity\",\"disadvantages\",\"verifyCode\"],\"defaultAttributes\":{\"enabledBeforeApproval\":\"Y\",\"maxValue\":5,\"maxCountMessagesForUser\":1,\"elementPropertyRatingCode\":\"reviews2_rating\",\"elementPropertyCountCode\":\"reviews2_count\",\"notifyEmails\":[],\"notifyPhones\":[],\"securityEnabledRateLimit\":\"Y\",\"securityRateLimitRequests\":10,\"securityRateLimitTime\":3600,\"messageSuccessBeforeApproval\":\"Отзыв успешно добавлен, и будет опубликован на сайте после проверки модератора.\",\"messageSuccess\":\"Отзыв успешно добавлен, спасибо.\",\"enabledFieldsOnUser\":[\"comments\",\"dignity\",\"disadvantages\"],\"enabledFieldsOnGuest\":[\"comments\",\"user_email\",\"user_name\",\"dignity\",\"disadvantages\",\"verifyCode\"],\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(50,1,1,1446643812,1449073260,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"4663e865\",\"f9337702\",\"03609d28\",\"c4ae63b5\",\"bac9dcc0\",\"ec489d1d\",\"2564e302\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"shop/admin-cms-content-element/index8\"},\"namespace\":\"shop/admin-cms-content-element/index8\"}',NULL,'shop/admin-cms-content-element/index8',NULL),(55,1,1,1449072849,1449073112,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"c79b45e9\",\"4663e865\",\"c4ae63b5\",\"ec489d1d\",\"1c54e010\",\"03609d28\",\"bac9dcc0\",\"2564e302\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"cms/admin-cms-content-element/index8\"},\"namespace\":\"cms/admin-cms-content-element/index8\"}',NULL,'cms/admin-cms-content-element/index8',NULL),(57,1,1,1453645562,1453645562,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-37\"},\"namespace\":\"ShopProductFiltersWidget-left-37\"}',NULL,'ShopProductFiltersWidget-left-37',NULL),(58,1,1,1453645666,1453645810,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"type\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-pos-6\"},\"namespace\":\"ShopProductFiltersWidget-left-pos-6\"}',NULL,'ShopProductFiltersWidget-left-pos-6',NULL),(59,1,1,1453645775,1453645786,'skeeks\\cms\\shop\\cmsWidgets\\filters\\ShopProductFiltersWidget','{\"content_id\":\"8\",\"searchModelAttributes\":\"\",\"realatedProperties\":[\"volume\",\"mileage\",\"year\",\"marka\"],\"type_price_id\":\"4\",\"searchModel\":{\"image\":null,\"price_from\":null,\"price_to\":null,\"type_price_id\":null,\"hasQuantity\":null},\"searchRelatedPropertiesModel\":{\"volumeSxrangeFrom\":\"\",\"volumeSxrangeTo\":\"\",\"volume\":\"\",\"mileageSxrangeFrom\":\"\",\"mileageSxrangeTo\":\"\",\"mileage\":\"\",\"yearSxrangeFrom\":\"\",\"yearSxrangeTo\":\"\",\"year\":\"\",\"marka\":\"\",\"type\":\"\",\"color\":\"\",\"vin\":\"\",\"abs\":\"\",\"availability\":\"\",\"reviews2_ratingSxrangeFrom\":\"\",\"reviews2_ratingSxrangeTo\":\"\",\"reviews2_rating\":\"\",\"reviews2_countSxrangeFrom\":\"\",\"reviews2_countSxrangeTo\":\"\",\"reviews2_count\":\"\"},\"viewFile\":\"default\",\"defaultAttributes\":{\"content_id\":null,\"searchModelAttributes\":[],\"realatedProperties\":[],\"type_price_id\":\"\",\"searchModel\":null,\"searchRelatedPropertiesModel\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ShopProductFiltersWidget-left-pos-7\"},\"namespace\":\"ShopProductFiltersWidget-left-pos-7\"}',NULL,'ShopProductFiltersWidget-left-pos-7',NULL),(60,1,1,1455223407,1488278757,'skeeks\\cms\\externalLinks\\CmsSettingsExternalLinksComponent','{\"enabled\":\"0\",\"noReplaceLinksOnDomainsString\":\"skeeks.com,www.skeeks.com,cms.skeeks.com\",\"noReplaceLocalDomain\":\"1\",\"enabledB64Encode\":\"1\",\"defaultAttributes\":{\"enabled\":false,\"noReplaceLinksOnDomainsString\":\"skeeks.com,www.skeeks.com,cms.skeeks.com\",\"noReplaceLocalDomain\":true,\"enabledB64Encode\":true,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(61,1,1,1457011574,1462430783,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"500\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"b1e77a56\",\"e04112b1\",\"6f4cf3ff\",\"9d505500\",\"c79b45e9\",\"4663e865\",\"2564e302\"],\"grid\":null,\"orderBy\":\"priority\",\"order\":\"4\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":500,\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"cms/admin-cms-content-element/index4\"},\"namespace\":\"cms/admin-cms-content-element/index4\"}',NULL,'cms/admin-cms-content-element/index4',NULL),(63,1,1,1457024110,1457024276,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"enabledPaging\":\"N\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"4\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"4\",\"label\":\"Популярные товары\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"4\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/products-home\",\"defaultAttributes\":{\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home-page2\"},\"namespace\":\"ContentElementsCmsWidget-home-page2\"}',NULL,'ContentElementsCmsWidget-home-page2',NULL),(66,1,1,1457430150,1462372387,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"N\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"6\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"Спецпредложения\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[\"76\"],\"limit\":\"6\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"2\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/visitedProducts\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-catalog-main-left-1\"},\"namespace\":\"ContentElementsCmsWidget-catalog-main-left-1\"}',NULL,'ContentElementsCmsWidget-catalog-main-left-1',NULL),(68,1,1,1457701872,1464040591,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"500\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"e0a6dbfb\",\"6738afae\",\"e04112b1\",\"245192a2\",\"ab768f41\",\"4663e865\",\"f9337702\",\"f2072b30\",\"b3232e73\",\"b77921d4\",\"b401dcd1\",\"2564e302\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":500,\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"shop/admin-cms-content-element/index2\"},\"namespace\":\"shop/admin-cms-content-element/index2\"}',NULL,'shop/admin-cms-content-element/index2',NULL),(69,1,1,1457710400,1457710400,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"5aa37184\",\"1cce4459\",\"6738afae\",\"e04112b1\",\"ab768f41\",\"b77921d4\",\"7276e0e4\",\"4663e865\",\"f9337702\",\"2564e302\",\"aaa32f36\",\"0f7808c9\",\"61959cb7\",\"f2072b30\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"shop/admin-cms-content-element/index10\"},\"namespace\":\"shop/admin-cms-content-element/index10\"}',NULL,'shop/admin-cms-content-element/index10',NULL),(70,1,1,1458038590,1459749540,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"100\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"100\",\"pageParamName\":\"page\",\"orderBy\":\"name\",\"order\":\"4\",\"label\":\"\",\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":\"\",\"limit\":\"0\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"9\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/brands\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-sub-brands\"},\"namespace\":\"ContentElementsCmsWidget-sub-brands\"}',NULL,'ContentElementsCmsWidget-sub-brands',NULL),(71,1,1,1458073173,1458073173,'skeeks\\cms\\cmsWidgets\\contentElements\\ContentElementsCmsWidget','{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageSizeLimitMin\":\"1\",\"pageSizeLimitMax\":\"50\",\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":\"3\",\"label\":\"\",\"enabledSearchParams\":\"N\",\"enabledCurrentTree\":\"N\",\"enabledCurrentTreeChild\":\"N\",\"enabledCurrentTreeChildAll\":\"N\",\"tree_ids\":\"\",\"limit\":\"20\",\"active\":\"Y\",\"createdBy\":[],\"content_ids\":[\"9\"],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":\"0\",\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"@app/views/widgets/ContentElementsCmsWidget/brands-home\",\"defaultAttributes\":{\"contentElementClass\":\"\\\\skeeks\\\\cms\\\\models\\\\CmsContentElement\",\"enabledPaging\":\"Y\",\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageSizeLimitMin\":1,\"pageSizeLimitMax\":50,\"pageParamName\":\"page\",\"orderBy\":\"published_at\",\"order\":3,\"label\":null,\"enabledSearchParams\":\"Y\",\"enabledCurrentTree\":\"Y\",\"enabledCurrentTreeChild\":\"Y\",\"enabledCurrentTreeChildAll\":\"Y\",\"tree_ids\":[],\"limit\":0,\"active\":\"\",\"createdBy\":[],\"content_ids\":[],\"enabledActiveTime\":\"Y\",\"enabledRunCache\":\"N\",\"runCacheDuration\":0,\"activeQueryCallback\":null,\"dataProviderCallback\":null,\"with\":[\"image\",\"cmsTree\"],\"dataProvider\":null,\"search\":null,\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"ContentElementsCmsWidget-home-brands\"},\"namespace\":\"ContentElementsCmsWidget-home-brands\"}',NULL,'ContentElementsCmsWidget-home-brands',NULL),(72,1,NULL,1459292805,1460363309,'skeeks\\cms\\modules\\admin\\widgets\\gridView\\GridViewSettings','{\"enabledPjaxPagination\":\"Y\",\"pageSize\":\"10\",\"pageParamName\":\"page\",\"visibleColumns\":[\"1cce4459\",\"4663e865\",\"f9337702\",\"0f7808c9\",\"aaa32f36\",\"f2072b30\"],\"grid\":null,\"orderBy\":\"id\",\"order\":\"3\",\"defaultAttributes\":{\"enabledPjaxPagination\":\"Y\",\"pageSize\":10,\"pageParamName\":\"page\",\"visibleColumns\":[],\"grid\":null,\"orderBy\":\"id\",\"order\":3,\"defaultAttributes\":[],\"namespace\":\"121d7ebe35f015a9c0c1d8798989aa5e\"},\"namespace\":\"121d7ebe35f015a9c0c1d8798989aa5e\"}',NULL,'121d7ebe35f015a9c0c1d8798989aa5e',NULL),(73,1,1,1459757576,1459757576,'skeeks\\cms\\cmsWidgets\\treeMenu\\TreeMenuCmsWidget','{\"treePid\":\"9\",\"active\":\"Y\",\"level\":\"2\",\"label\":\"Каталог\",\"site_codes\":[],\"orderBy\":\"priority\",\"order\":\"4\",\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":\"0\",\"tree_type_ids\":[],\"activeQueryCallback\":null,\"with\":[\"children\"],\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"@template/widgets/TreeMenuCmsWidget/menu-footer.php\",\"defaultAttributes\":{\"treePid\":null,\"active\":\"Y\",\"level\":null,\"label\":null,\"site_codes\":[],\"orderBy\":\"priority\",\"order\":4,\"enabledCurrentSite\":\"Y\",\"enabledRunCache\":\"Y\",\"runCacheDuration\":0,\"tree_type_ids\":[],\"activeQueryCallback\":null,\"with\":[\"children\"],\"activeQuery\":null,\"text\":\"\",\"viewFile\":\"default\",\"defaultAttributes\":[],\"namespace\":\"menu-footer-3\"},\"namespace\":\"menu-footer-3\"}',NULL,'menu-footer-3',NULL),(75,1,1,1460117448,1488278405,'skeeks\\cms\\components\\Cms','{\"adminEmail\":\"info@skeeks.com\",\"appName\":\"SkeekS SHOP\",\"noImageUrl\":\"/img/no-image.png\",\"registerRoles\":[\"user\"],\"languageCode\":\"ru\",\"passwordResetTokenExpire\":\"3600\",\"tree_max_code_length\":\"64\",\"element_max_code_length\":\"128\",\"tmpFolderScheme\":{\"runtime\":[\"@frontend/runtime\",\"@console/runtime\"],\"assets\":[\"@frontend/web/assets\"]},\"defaultAttributes\":{\"adminEmail\":\"admin@skeeks.com\",\"appName\":null,\"noImageUrl\":null,\"registerRoles\":[\"user\"],\"languageCode\":\"\",\"passwordResetTokenExpire\":3600,\"tree_max_code_length\":64,\"element_max_code_length\":128,\"tmpFolderScheme\":{\"runtime\":[\"@frontend/runtime\",\"@console/runtime\"],\"assets\":[\"@frontend/web/assets\"]},\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(76,1,1,1460841030,1461335359,'skeeks\\cms\\LogDbTarget\\components\\LogDbTargetSettings','{\"logVars\":\"\",\"levels\":[\"error\",\"warning\",\"info\"],\"exceptString\":\"yii\\\\db\\\\Command*,yii\\\\web\\\\Session*,yii\\\\db\\\\Connection*,skeeks/agent::total,yii\\\\i18n\\\\PhpMessageSource::loadMessages*\",\"categoriesString\":\"\",\"enabled\":\"Y\",\"storeLogsTime\":\"432000\",\"defaultAttributes\":{\"logVars\":[],\"levels\":[\"error\",\"warning\"],\"exceptString\":\"yii\\\\db\\\\Command*,yii\\\\web\\\\Session*,yii\\\\db\\\\Connection*\",\"categoriesString\":\"\",\"enabled\":\"Y\",\"storeLogsTime\":432000,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(77,1,1,1461260172,1461260172,'skeeks\\cms\\search\\CmsSearchComponent','{\"searchElementContentIds\":[\"2\",\"1\"],\"searchElementFields\":[\"name\",\"description_short\",\"description_full\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":\"0\",\"defaultAttributes\":{\"searchElementContentIds\":[],\"searchElementFields\":[\"description_full\",\"description_short\",\"name\"],\"enabledElementProperties\":\"Y\",\"enabledElementPropertiesSearchable\":\"Y\",\"searchQueryParamName\":\"q\",\"phraseLiveTime\":0,\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(78,1,1,1461263527,1461263528,'skeeks\\cms\\mail\\MailerSettings','{\"notifyEmailsHidden\":\"client-orders@skeeks.com\",\"notifyEmails\":\"\",\"defaultAttributes\":{\"notifyEmailsHidden\":\"\",\"notifyEmails\":\"\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(82,NULL,NULL,1463396954,1463397974,'skeeks\\cms\\seo\\CmsSeoComponent','{\"maxKeywordsLength\":\"1000\",\"minKeywordLenth\":\"8\",\"keywordsStopWords\":[],\"enableKeywordsGenerator\":\"1\",\"robotsContent\":\"User-agent: *\",\"countersContent\":\"<!-- Yandex.Metrika informer -->\\r\\n<a href=\\\"https://metrika.yandex.ru/stat/?id=37379695&amp;from=informer\\\"\\r\\ntarget=\\\"_blank\\\" rel=\\\"nofollow\\\"><img src=\\\"https://informer.yandex.ru/informer/37379695/3_1_FFFFFFFF_EFEFEFFF_0_pageviews\\\"\\r\\nstyle=\\\"width:88px; height:31px; border:0;\\\" alt=\\\"Яндекс.Метрика\\\" title=\\\"Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)\\\" onclick=\\\"try{Ya.Metrika.informer({i:this,id:37379695,lang:\'ru\'});return false}catch(e){}\\\" /></a>\\r\\n<!-- /Yandex.Metrika informer -->\\r\\n\\r\\n<!-- Yandex.Metrika counter -->\\r\\n<script type=\\\"text/javascript\\\">\\r\\n    (function (d, w, c) {\\r\\n        (w[c] = w[c] || []).push(function() {\\r\\n            try {\\r\\n                w.yaCounter37379695 = new Ya.Metrika({\\r\\n                    id:37379695,\\r\\n                    clickmap:true,\\r\\n                    trackLinks:true,\\r\\n                    accurateTrackBounce:true,\\r\\n                    webvisor:true\\r\\n                });\\r\\n            } catch(e) { }\\r\\n        });\\r\\n\\r\\n        var n = d.getElementsByTagName(\\\"script\\\")[0],\\r\\n            s = d.createElement(\\\"script\\\"),\\r\\n            f = function () { n.parentNode.insertBefore(s, n); };\\r\\n        s.type = \\\"text/javascript\\\";\\r\\n        s.async = true;\\r\\n        s.src = \\\"https://mc.yandex.ru/metrika/watch.js\\\";\\r\\n\\r\\n        if (w.opera == \\\"[object Opera]\\\") {\\r\\n            d.addEventListener(\\\"DOMContentLoaded\\\", f, false);\\r\\n        } else { f(); }\\r\\n    })(document, window, \\\"yandex_metrika_callbacks\\\");\\r\\n</script>\\r\\n<!-- /Yandex.Metrika counter -->\\r\\n<script>\\r\\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\\r\\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\\r\\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\\r\\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\\r\\n\\r\\n  ga(\'create\', \'UA-77818340-1\', \'auto\');\\r\\n  ga(\'send\', \'pageview\');\\r\\n\\r\\n</script>\",\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":{\"maxKeywordsLength\":1000,\"minKeywordLenth\":8,\"keywordsStopWords\":[],\"enableKeywordsGenerator\":true,\"robotsContent\":\"User-agent: *\",\"countersContent\":\"\",\"keywordsPriority\":{\"title\":8,\"h1\":6,\"h2\":4,\"h3\":3,\"h5\":2,\"h6\":2},\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(84,1,1,1488278791,1488278791,'common\\components\\SettingsComponent','{\"marginRatio\":\"1\",\"stockSaleCSVUrl\":\"\",\"shadowText1\":\"Подсказка 1\",\"shadowText2\":\"Подсказка 2\",\"shadowText3\":\"Подсказка 3\",\"defaultAttributes\":{\"marginRatio\":1,\"stockSaleCSVUrl\":\"\",\"shadowText1\":\"\",\"shadowText2\":\"\",\"shadowText3\":\"\",\"defaultAttributes\":[],\"namespace\":null},\"namespace\":null}',NULL,NULL,NULL),(85,1,1,1511100516,1542640154,'skeeks\\cms\\toolbar\\CmsToolbar','{\"allowedIPs\":[\"*\"],\"infoblocks\":[],\"editWidgets\":\"N\",\"editViewFiles\":\"N\",\"isOpen\":\"N\",\"enabled\":1,\"enableFancyboxWindow\":0,\"infoblockEditBorderColor\":\"red\",\"panels\":{\"config\":{\"id\":\"config\"},\"admin\":{\"id\":\"admin\"},\"admin-settings\":{\"id\":\"admin-settings\"},\"cache\":{\"id\":\"cache\"},\"user\":{\"id\":\"user\"},\"widget\":{\"id\":\"widget\"},\"template\":{\"_view_files\":[],\"id\":\"template\"},\"edit-url\":{\"id\":\"edit-url\"}},\"viewFiles\":[],\"inited\":false,\"editUrl\":\"\"}',1,NULL,NULL),(86,1,1,1542639340,1542639340,'skeeks\\cms\\shop\\components\\ShopComponent','{\"email\":\"\",\"start_order_status_id\":\"2\",\"end_order_status_id\":\"1\",\"maxQuantity\":999999,\"minQuantity\":0.01,\"payAfterConfirmation\":\"N\",\"storeCmsContentId\":\"\",\"notify_emails\":\"\",\"sessionFuserName\":\"SKEEKS_CMS_SHOP\"}',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_component_settings` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_component_settings` with 52 row(s)
--

--
-- Table structure for table `cms_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `tree_chooser` char(1) DEFAULT NULL,
  `list_mode` char(1) DEFAULT NULL,
  `content_type` varchar(32) NOT NULL,
  `default_tree_id` int(11) DEFAULT NULL,
  `is_allow_change_tree` varchar(1) NOT NULL DEFAULT 'Y',
  `root_tree_id` int(11) DEFAULT NULL,
  `view_file` varchar(255) DEFAULT NULL,
  `meta_title_template` varchar(500) DEFAULT NULL,
  `meta_description_template` text,
  `meta_keywords_template` text,
  `access_check_element` varchar(1) NOT NULL DEFAULT 'N',
  `parent_content_id` int(11) DEFAULT NULL,
  `visible` varchar(1) NOT NULL DEFAULT 'Y',
  `parent_content_on_delete` varchar(10) NOT NULL DEFAULT 'CASCADE',
  `parent_content_is_required` varchar(1) NOT NULL DEFAULT 'Y',
  `is_count_views` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `tree_chooser` (`tree_chooser`),
  KEY `list_mode` (`list_mode`),
  KEY `content_type` (`content_type`),
  KEY `default_tree_id` (`default_tree_id`),
  KEY `is_allow_change_tree` (`is_allow_change_tree`),
  KEY `root_tree_id` (`root_tree_id`),
  KEY `viewFile` (`view_file`),
  KEY `parent_content_id` (`parent_content_id`),
  KEY `visible` (`visible`),
  KEY `parent_content_on_delete` (`parent_content_on_delete`),
  KEY `parent_content_is_required` (`parent_content_is_required`),
  KEY `is_count_views` (`is_count_views`),
  CONSTRAINT `cms_content_cms_content_type` FOREIGN KEY (`content_type`) REFERENCES `cms_content_type` (`code`),
  CONSTRAINT `cms_content_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__cms_content` FOREIGN KEY (`parent_content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__default_tree_id` FOREIGN KEY (`default_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content__root_tree_id` FOREIGN KEY (`root_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content`
--

LOCK TABLES `cms_content` WRITE;
/*!40000 ALTER TABLE `cms_content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content` VALUES (1,1,1,1442576667,1445550928,'Публикации','publication','Y',500,NULL,'','Публикации','Публикация',NULL,NULL,'publications',NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y',0),(2,1,1,1442576684,1459964706,'Товары','product','Y',2000,NULL,'','Товары','Товар',NULL,NULL,'products',9,'Y',1,'','','','','N',NULL,'N','CASCADE','Y',0),(4,1,1,1442926518,1445550973,'Слайды','slide','Y',500,NULL,'','Слайды','Слайд',NULL,NULL,'services',NULL,'N',NULL,NULL,NULL,NULL,NULL,'N',NULL,'Y','CASCADE','Y',0),(9,1,1,1456996531,1457016150,'Бренды','brand','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'info',70,'N',70,'','','','','N',NULL,'Y','CASCADE','Y',0),(10,1,1,1457270138,1457270154,'Торговые предложения','productChild','Y',500,NULL,'','Элементы','Элемент',NULL,NULL,'products',9,'Y',9,'','','','','N',2,'N','CASCADE','Y',0),(11,1,1,1457377781,1457390577,'Цвета','color','Y',500,NULL,'','Цвета','Цвет',NULL,NULL,'info',NULL,'Y',NULL,'','','','','N',NULL,'Y','CASCADE','Y',0);
/*!40000 ALTER TABLE `cms_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content` with 6 row(s)
--

--
-- Table structure for table `cms_content_element`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `published_to` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `content_id` int(11) DEFAULT NULL,
  `tree_id` int(11) DEFAULT NULL,
  `show_counter` int(11) DEFAULT NULL,
  `show_counter_start` int(11) DEFAULT NULL,
  `meta_title` varchar(500) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `parent_content_element_id` int(11) DEFAULT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_id_2` (`content_id`,`code`),
  UNIQUE KEY `tree_id_2` (`tree_id`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `published_to` (`published_to`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `active` (`active`),
  KEY `content_id` (`content_id`),
  KEY `tree_id` (`tree_id`),
  KEY `show_counter` (`show_counter`),
  KEY `show_counter_start` (`show_counter_start`),
  KEY `meta_title` (`meta_title`(255)),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `parent_content_element_id` (`parent_content_element_id`),
  KEY `seo_h1` (`seo_h1`),
  CONSTRAINT `cms_content_element_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_element_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__cms_content_element` FOREIGN KEY (`parent_content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12761 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element`
--

LOCK TABLES `cms_content_element` WRITE;
/*!40000 ALTER TABLE `cms_content_element` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_element` VALUES (311,1,1,1457011446,1465237779,1457011446,NULL,500,'Y','Слайд 1',16821,NULL,'slayd-1','','',4,NULL,NULL,NULL,'','','','text','text',NULL,''),(313,1,1,1457011870,1465237809,1457011870,NULL,500,'Y','Слайд 3',16822,NULL,'slayd-3','','',4,NULL,NULL,NULL,'','','','text','text',NULL,''),(8241,NULL,NULL,1459715931,1459715931,1459715931,NULL,500,'Y','Коричневый',NULL,NULL,'korichnevyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8251,NULL,NULL,1459716206,1459716206,1459716206,NULL,500,'Y','Черный',NULL,NULL,'chernyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8263,NULL,NULL,1459716219,1459716219,1459716219,NULL,500,'Y','Серый',NULL,NULL,'seryiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8289,NULL,NULL,1459716250,1459716250,1459716250,NULL,500,'Y','Синий',NULL,NULL,'siniy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8292,NULL,NULL,1459716253,1459716253,1459716253,NULL,500,'Y','Мультиколор',NULL,NULL,'multikolor',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8295,NULL,NULL,1459716255,1459716255,1459716255,NULL,500,'Y','Бежевый',NULL,NULL,'bejevyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8365,NULL,NULL,1459716439,1459716439,1459716439,NULL,500,'Y','Белый',NULL,NULL,'belyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8431,NULL,NULL,1459716518,1459716518,1459716518,NULL,500,'Y','Бордовый',NULL,NULL,'bordovyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8466,NULL,NULL,1459716556,1459716556,1459716556,NULL,500,'Y','Голубой',NULL,NULL,'goluboy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8496,NULL,NULL,1459716590,1459716590,1459716590,NULL,500,'Y','Фиолетовый',NULL,NULL,'fioletovyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8555,NULL,NULL,1459716664,1459716664,1459716664,NULL,500,'Y','Полоска',NULL,NULL,'poloska',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8580,NULL,NULL,1459716696,1459716696,1459716696,NULL,500,'Y','Сиреневый',NULL,NULL,'sirenevyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8583,NULL,NULL,1459716698,1459716698,1459716698,NULL,500,'Y','Розовый',NULL,NULL,'rozovyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8664,NULL,NULL,1459716796,1459716796,1459716796,NULL,500,'Y','Бирюзовый',NULL,NULL,'biryuzovyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8675,NULL,NULL,1459716807,1459716807,1459716807,NULL,500,'Y','Зеленый',NULL,NULL,'zelenyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8679,NULL,NULL,1459716812,1459716812,1459716812,NULL,500,'Y','Красный',NULL,NULL,'krasnyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(8712,NULL,NULL,1459716855,1459716855,1459716855,NULL,500,'Y','Желтый',NULL,NULL,'jeltyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(9427,NULL,NULL,1459718377,1459718377,1459718377,NULL,500,'Y','Клетка',NULL,NULL,'kletka',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(9599,NULL,NULL,1459718606,1459718606,1459718606,NULL,500,'Y','Оранжевый',NULL,NULL,'oranjevyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(10224,NULL,1,1459719526,1465241655,1459719526,NULL,500,'Y','Nike',16825,NULL,'nike','','',9,70,NULL,NULL,'','','','text','text',NULL,''),(10231,NULL,1,1459719534,1465241633,1459719534,NULL,500,'Y','Adidas',16824,NULL,'adidas','','',9,70,NULL,NULL,'','','','text','text',NULL,''),(10463,NULL,NULL,1459719884,1459719884,1459719884,NULL,500,'Y','Цветочный принт',NULL,NULL,'tsvetochnyiy-print',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(11690,NULL,NULL,1459722363,1459722363,1459722363,NULL,500,'Y','Cерый',NULL,NULL,'ceryiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(11831,NULL,NULL,1459722666,1459722666,1459722666,NULL,500,'Y','Бардовый',NULL,NULL,'bardovyiy',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12088,NULL,NULL,1459750369,1459750369,1459750369,NULL,500,'Y','Терракот',NULL,NULL,'terrakot',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12204,NULL,NULL,1463521963,1463521963,1463521963,NULL,500,'Y','Горох',NULL,NULL,'goroh',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12291,NULL,NULL,1463522105,1463522105,1463522105,NULL,500,'Y','Животный принт',NULL,NULL,'jivotnyiy-print',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12590,NULL,NULL,1463522562,1463522562,1463522562,NULL,500,'Y','Милитари',NULL,NULL,'militari',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12592,NULL,NULL,1463522563,1463522563,1463522563,NULL,500,'Y','Милитори',NULL,NULL,'militori',NULL,NULL,11,NULL,NULL,NULL,'',NULL,NULL,'text','text',NULL,''),(12759,1,1,1465241931,1465241996,1465241931,NULL,500,'Y','Мужской зонт-трость',16826,NULL,'mujskoy-zont-trost','','',2,1428,NULL,NULL,'','','','text','text',NULL,''),(12760,1,1,1465245515,1488275176,1465245515,NULL,500,'Y','Женский зонт',16828,NULL,'jenskiy-zont','','',2,1428,NULL,NULL,'','','','text','text',NULL,'');
/*!40000 ALTER TABLE `cms_content_element` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element` with 33 row(s)
--

--
-- Table structure for table `cms_content_element2cms_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element2cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_user_id` int(11) NOT NULL,
  `cms_content_element_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user2elements` (`cms_user_id`,`cms_content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_content_element2cms_user__cms_content_element_id` (`cms_content_element_id`),
  CONSTRAINT `cms_content_element2cms_user__cms_content_element_id` FOREIGN KEY (`cms_content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element2cms_user__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element2cms_user__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element2cms_user__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Favorites content items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element2cms_user`
--

LOCK TABLES `cms_content_element2cms_user` WRITE;
/*!40000 ALTER TABLE `cms_content_element2cms_user` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element2cms_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element2cms_user` with 0 row(s)
--

--
-- Table structure for table `cms_content_element_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_file__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_file`
--

LOCK TABLES `cms_content_element_file` WRITE;
/*!40000 ALTER TABLE `cms_content_element_file` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element_file` with 0 row(s)
--

--
-- Table structure for table `cms_content_element_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `content_element_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__content_element_id` (`storage_file_id`,`content_element_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `content_element_id` (`content_element_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_content_element_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_image__content_element_id` FOREIGN KEY (`content_element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь элементов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_image`
--

LOCK TABLES `cms_content_element_image` WRITE;
/*!40000 ALTER TABLE `cms_content_element_image` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_image` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element_image` with 0 row(s)
--

--
-- Table structure for table `cms_content_element_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value_bool` tinyint(1) DEFAULT NULL,
  `value_num2` decimal(18,4) DEFAULT NULL,
  `value_int2` int(11) DEFAULT NULL,
  `value_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  KEY `property2element` (`property_id`,`element_id`),
  KEY `property2element2value_enum` (`property_id`,`element_id`,`value_enum`),
  KEY `property2element2value_num` (`property_id`,`element_id`,`value_num`),
  KEY `value_num2` (`value_num2`),
  KEY `value_int2` (`value_int2`),
  KEY `value_string` (`value_string`),
  KEY `property2element2value_string` (`property_id`,`element_id`,`value_string`),
  CONSTRAINT `cms_content_element_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_property__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_property__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=48036 DEFAULT CHARSET=utf8 COMMENT='Связь товара свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_property`
--

LOCK TABLES `cms_content_element_property` WRITE;
/*!40000 ALTER TABLE `cms_content_element_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_element_property` VALUES (44666,1,1,1462434511,1462434551,30,313,'/catalog/jenskaya-odejda',0,0.0000,NULL,NULL,NULL,NULL,'/catalog/jenskaya-odejda'),(44667,1,1,1462434591,1462434597,30,311,'',0,0.0000,NULL,NULL,NULL,NULL,''),(48027,1,1,1465241931,1465241996,28,12759,'10231',10231,10231.0000,NULL,NULL,NULL,NULL,'10231'),(48028,1,1,1465241931,1465241996,27,12759,'',0,0.0000,NULL,NULL,NULL,NULL,''),(48029,1,1,1465241931,1465241996,26,12759,'',0,0.0000,NULL,NULL,NULL,NULL,''),(48030,1,1,1465241931,1465241997,25,12759,'',0,0.0000,NULL,NULL,NULL,NULL,''),(48032,1,1,1465245515,1488275176,28,12760,'10224',10224,10224.0000,NULL,NULL,NULL,NULL,'10224'),(48033,1,1,1465245515,1488275176,27,12760,'19',19,19.0000,NULL,NULL,NULL,NULL,'19'),(48034,1,1,1465245515,1488275176,26,12760,'Тест',0,0.0000,NULL,NULL,NULL,NULL,'Тест'),(48035,1,1,1465245515,1488275176,25,12760,'',0,0.0000,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `cms_content_element_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element_property` with 10 row(s)
--

--
-- Table structure for table `cms_content_element_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_element_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `element_id_2` (`element_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `tree_id` (`tree_id`),
  KEY `element_id` (`element_id`),
  CONSTRAINT `cms_content_element_tree_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree_tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_element_tree__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_element_tree__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь контента и разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_element_tree`
--

LOCK TABLES `cms_content_element_tree` WRITE;
/*!40000 ALTER TABLE `cms_content_element_tree` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_element_tree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_element_tree` with 0 row(s)
--

--
-- Table structure for table `cms_content_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `content_id` (`content_id`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `multiple` (`multiple`),
  KEY `is_required` (`is_required`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_content_property_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`),
  CONSTRAINT `cms_content_property__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_property__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Свойства элементов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property`
--

LOCK TABLES `cms_content_property` WRITE;
/*!40000 ALTER TABLE `cms_content_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_property` VALUES (22,1,1,1457377866,1464284355,'Цвет','color',10,'Y',3000,'E','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeElement','a:8:{s:4:\"code\";s:1:\"E\";s:4:\"name\";s:36:\"Привязка к элементу\";s:12:\"fieldElement\";s:6:\"select\";s:10:\"content_id\";s:2:\"11\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;}',''),(24,1,1,1457377971,1464284360,'Размер','size',10,'Y',2000,'L','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeList','a:0:{}',''),(25,1,1,1457695163,1464284320,'Артикул','stockSaleId',2,'Y',4000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:0:{}',''),(26,1,1,1457700986,1464284325,'Состав','composition',2,'Y',3000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:0:{}',''),(27,1,1,1457701112,1464284329,'Сезон','season',2,'Y',2000,'L','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeList','a:7:{s:4:\"code\";s:1:\"L\";s:4:\"name\";s:12:\"Список\";s:12:\"fieldElement\";s:6:\"select\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;}',''),(28,1,1,1457702017,1464284337,'Бренд','brand',2,'Y',1000,'E','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeElement','a:8:{s:4:\"code\";s:1:\"E\";s:4:\"name\";s:36:\"Привязка к элементу\";s:12:\"fieldElement\";s:6:\"select\";s:10:\"content_id\";s:1:\"9\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;}',''),(29,1,1,1457708969,1464296939,'Артикул предложения','stockSaleId',10,'Y',1000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:0:{}',''),(30,1,1,1462430519,1462430519,'Ссылка','url',4,'Y',500,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','b:0;','');
/*!40000 ALTER TABLE `cms_content_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_property` with 8 row(s)
--

--
-- Table structure for table `cms_content_property2content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property2content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_content_property_id` int(11) NOT NULL,
  `cms_content_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `property2content` (`cms_content_property_id`,`cms_content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_content_property_id` (`cms_content_property_id`),
  KEY `cms_content_id` (`cms_content_id`),
  CONSTRAINT `cms_content_property2content__content_id` FOREIGN KEY (`cms_content_id`) REFERENCES `cms_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property2content__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_property2content__property_id` FOREIGN KEY (`cms_content_property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property2content__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property2content`
--

LOCK TABLES `cms_content_property2content` WRITE;
/*!40000 ALTER TABLE `cms_content_property2content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_property2content` VALUES (1,NULL,NULL,1505133061,1505133061,22,10),(2,NULL,NULL,1505133062,1505133062,24,10),(3,NULL,NULL,1505133062,1505133062,25,2),(4,NULL,NULL,1505133062,1505133062,26,2),(5,NULL,NULL,1505133062,1505133062,27,2),(6,NULL,NULL,1505133062,1505133062,28,2),(7,NULL,NULL,1505133062,1505133062,29,10),(8,NULL,NULL,1505133062,1505133062,30,4);
/*!40000 ALTER TABLE `cms_content_property2content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_property2content` with 8 row(s)
--

--
-- Table structure for table `cms_content_property2tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property2tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_content_property_id` int(11) NOT NULL,
  `cms_tree_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `property2tree` (`cms_content_property_id`,`cms_tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_content_property_id` (`cms_content_property_id`),
  KEY `cms_tree_id` (`cms_tree_id`),
  CONSTRAINT `cms_content_property2tree__cms_tree_id` FOREIGN KEY (`cms_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property2tree__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_property2tree__property_id` FOREIGN KEY (`cms_content_property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property2tree__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property2tree`
--

LOCK TABLES `cms_content_property2tree` WRITE;
/*!40000 ALTER TABLE `cms_content_property2tree` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_content_property2tree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_property2tree` with 0 row(s)
--

--
-- Table structure for table `cms_content_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_content_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_content_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_content_property_enum__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_property_enum__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_property_enum`
--

LOCK TABLES `cms_content_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_content_property_enum` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_property_enum` VALUES (1,NULL,NULL,1459714820,1459714820,27,'Демисезон','N','04c85e2fb206dbbcc47d00213077fd9b',500),(2,NULL,NULL,1459715931,1459715931,24,'M','N','91d27f997ccd5a6298057b7cff5f579c',500),(3,NULL,NULL,1459715936,1459715936,24,'XL','N','957cc794d93c5889887ee3fc3a7f79a8',500),(4,NULL,NULL,1459716206,1459716206,24,'52/56','N','f85c6478400ea918b942b1178c4fca6c',500),(5,NULL,NULL,1459716214,1459716214,24,'L','N','7b7ebd95471e167b925aa68280aa6681',500),(6,NULL,NULL,1459716228,1459716228,24,'44/48','N','089f24c54e44994b70cc4b316a99d428',500),(7,NULL,NULL,1459716232,1459716232,24,'48/52','N','970c09ceed7f45dfb37df825a8708ee8',500),(8,NULL,NULL,1459716240,1459716240,24,'S','N','a0a455a492f7a31fed256f5b1469efc3',500),(9,NULL,NULL,1459716250,1459716250,24,'39-42','N','80913a8397e2097b03fd0fd1e5bce885',500),(10,NULL,NULL,1459716253,1459716253,24,'43-46','N','ced029bb137f478d5a3be7b11c539f11',500),(11,NULL,NULL,1459716270,1459716270,24,'35-38','N','066e86bb87e33cd22737c482b9ad7a15',500),(12,NULL,NULL,1459716428,1459716428,24,'47-48','N','9133ff80c887d18c4400461797d91d29',500),(13,NULL,NULL,1459716522,1459716522,24,'uni','N','68f934124f8d799c0e9d32dd2d6cb79b',500),(14,NULL,NULL,1459716660,1459716660,24,'31-34','N','4e1c8bf40daa2a31669813c32c88e9e4',500),(15,NULL,NULL,1459716670,1459716670,24,'23-26','N','996dc0861f9badc876d3cd29b89ae5f6',500),(16,NULL,NULL,1459716673,1459716673,24,'27-30','N','075109f690c76982e962faea9507159e',500),(17,NULL,NULL,1459716679,1459716679,24,'19-22','N','6b95b5669539b8df8be6f386e5f7cbbe',500),(18,NULL,NULL,1459716692,1459716692,24,'25-38','N','d9f6a2884d3d9f664129e06dc1e923ac',500),(19,NULL,NULL,1459716801,1459716801,27,'Лето','N','9051b8dede2155b9f15349a914c55ead',500),(20,NULL,NULL,1459716827,1459716827,24,'4','N','2670e5a086f34ca6f18f354a67973a78',500),(21,NULL,NULL,1459716828,1459716828,24,'6','N','17d0805ad596b310ec93d07b8b1979cc',500),(22,NULL,NULL,1459716829,1459716829,24,'8','N','7dbf3aa24b048062057b6a8019e954b5',500),(23,NULL,NULL,1459716921,1459716921,27,'Зима','N','38ed83dbdc2f8b473117b8fc8f7da65e',500),(24,NULL,NULL,1459717000,1459717000,24,'XXL','N','7a07b79d5ef7e101f613d6f2e27a2f66',500),(25,NULL,NULL,1459717353,1459717353,24,'30','N','208d73cba6e81c0e4c90399ecff13385',500),(26,NULL,NULL,1459717354,1459717354,24,'32','N','39b5a827fe4daf71a6fb155e4aebf8ff',500),(27,NULL,NULL,1459717355,1459717355,24,'34','N','f1c60a4ccad36225c6717b42c766ef70',500),(28,NULL,NULL,1459717356,1459717356,24,'36','N','216f48186721e030b7ee88daf70b0293',500),(29,NULL,NULL,1459717433,1459717433,24,'30/32','N','937a35ecb66d48e26ce8efa58e23a0dc',500),(30,NULL,NULL,1459717434,1459717434,24,'32/32','N','ed28b190118c9340cc6e44eb2002f01c',500),(31,NULL,NULL,1459717435,1459717435,24,'34/34','N','874094fdacf84ef767c2832b453e63f8',500),(32,NULL,NULL,1459717436,1459717436,24,'36/34','N','7302400966b3cde9330ff6f91821cede',500),(33,NULL,NULL,1459718540,1459718540,24,'XS','N','e498318e2b8b7e2f56bcc8c006706c8b',500),(34,NULL,NULL,1459718553,1459718553,24,'10','N','549cc9497cea587cfe0999a8e4164311',500),(35,NULL,NULL,1459718554,1459718554,24,'12','N','d601001816315b6003381a4c06c163ce',500),(36,NULL,NULL,1459718563,1459718563,24,'14','N','48bb73c687fb1afbaa9ba77bd977b4fd',500),(37,NULL,NULL,1459718636,1459718636,24,'31/34','N','81b848542731d9b056eb1a2f94e28644',500),(38,NULL,NULL,1459718637,1459718637,24,'28/32','N','95d960dbe66b9eaaffcfe268a3f69898',500),(39,NULL,NULL,1459718638,1459718638,24,'27/34','N','3dd3f89f3fb2e7771fe7cf6ce728cc95',500),(40,NULL,NULL,1459718640,1459718640,24,'29/32','N','41f62b4a407536938c2fbd173e8d28cc',500),(41,NULL,NULL,1459718643,1459718643,24,'26/32','N','cc6389ac950c88fbc34a6f17b7c23860',500),(42,NULL,NULL,1459718648,1459718648,24,'25/32','N','d1d67cf55a81b070bac147f92660b679',500),(43,NULL,NULL,1459718649,1459718649,24,'31/32','N','8559458cff9a42e8adbbed4ecaf841a1',500),(44,NULL,NULL,1459718651,1459718651,24,'27/3','N','52472e812ba210c41af8758f62d0c988',500),(45,NULL,NULL,1459718656,1459718656,24,'24/32','N','2fe92717c81ddbea25a7734e3dd7a79d',500),(46,NULL,NULL,1459718672,1459718672,24,'27/32','N','75600c0de1c7765f4cab61e3d14f1233',500),(47,NULL,NULL,1459718678,1459718678,24,'33/32','N','3e37016a3d967b01c48c3c001e389c9f',500),(48,NULL,NULL,1459718679,1459718679,24,'30/34','N','287d3487efae73b8692cfc6ad1ae0edb',500),(49,NULL,NULL,1459718684,1459718684,24,'28/30','N','7207daee9a29bba4853c7addeec64bf1',500),(50,NULL,NULL,1459718689,1459718689,24,'29/30','N','d63b1c77db9812768ed4ff601baa5e17',500),(51,NULL,NULL,1459718694,1459718694,24,'26/34','N','1a9048fe8473b9fcb1d60c3e5acba4a2',500),(52,NULL,NULL,1459718768,1459718768,24,'38','N','6e014e8ee2f38b1e7d9055217d0a282b',500),(53,NULL,NULL,1459718769,1459718769,24,'40','N','04966c7e9cc0c588c8b13998900d326f',500),(54,NULL,NULL,1459718770,1459718770,24,'42','N','e359ad1055101134bd37db1695d95424',500),(55,NULL,NULL,1459718790,1459718790,24,'44','N','75f208a44a5f87839b0073b52ade38b8',500),(56,NULL,NULL,1459718791,1459718791,24,'46','N','5c849f5b686845ce06dd44244b917bd5',500),(57,NULL,NULL,1459719368,1459719368,24,'27','N','6d2a65b66d21ff4b491b1a5d64bcfa6a',500),(58,NULL,NULL,1459719545,1459719545,24,'XXXL','N','687eea87c557081132cf2e8252015d4a',500),(59,NULL,NULL,1459719550,1459719550,24,'48','N','c29d164dc866a700815bad0d95e17928',500),(60,NULL,NULL,1459719552,1459719552,24,'50','N','04feeacdc643be03c2483283818f62ff',500),(61,NULL,NULL,1459719553,1459719553,24,'52','N','abf65ceb072d0c6df62461eb63847b2c',500),(62,NULL,NULL,1459719554,1459719554,24,'56','N','604ae78b6440e8db50feb084ce15e51d',500),(63,NULL,NULL,1459719561,1459719561,24,'58','N','e83548e831b90f7edbf82ab2d7636dd4',500),(64,NULL,NULL,1459719562,1459719562,24,'62','N','20087e7e235621d1c9983bcd18831f19',500),(65,NULL,NULL,1459719580,1459719580,24,'54','N','043cd54722ae0e41d641a806538b4e16',500),(66,NULL,NULL,1459719804,1459719804,24,'36/32','N','747dce029e05054d1ba7aa6872d226df',500),(67,NULL,NULL,1459719806,1459719806,24,'9/32','N','a9ead6ef8862ea70ac55a1809ec118d9',500),(68,NULL,NULL,1459719808,1459719808,24,'38/32','N','b18e95425680978e5704b6614f8114bc',500),(69,NULL,NULL,1459719810,1459719810,24,'36/36','N','89b802d4fe5ea38d6ccac74749fabfe5',500),(70,NULL,NULL,1459719812,1459719812,24,'32/36','N','fade22587d0c9d8f4a9293ac01d6cdf6',500),(71,NULL,NULL,1459719814,1459719814,24,'32/34','N','7bce19d9d4bc46780688db1b7867ad3c',500),(72,NULL,NULL,1459719815,1459719815,24,'38/36','N','aebd7eb213d5108ee994833fa228c6a1',500),(73,NULL,NULL,1459719816,1459719816,24,'34/36','N','419def48ce050a3ab947efb420de042b',500),(74,NULL,NULL,1459719818,1459719818,24,'33/36','N','ad2d1cf1ef4537899e767bfd03441291',500),(75,NULL,NULL,1459719819,1459719819,24,'31/37','N','bd22fe382aeec97b6ba0a27509a12bea',500),(76,NULL,NULL,1459719820,1459719820,24,'40/34','N','dcbcb9a55d8d6f29c50d5dfa9a758a67',500),(77,NULL,NULL,1459719824,1459719824,24,'31/30','N','d876be18a9abdbbded0aed533b433f9c',500),(78,NULL,NULL,1459719831,1459719831,24,'34/38','N','d4555f3d8358f6154dd1cb26d7a90a6a',500),(79,NULL,NULL,1459719832,1459719832,24,'38/34','N','0a3bae863fb870616cc749b4c9996f61',500),(80,NULL,NULL,1459719836,1459719836,24,'28/34','N','216adf1b17e49f7be199764fa43e8fc3',500),(81,NULL,NULL,1459719838,1459719838,24,'29/34','N','6de6b6840c8f08d4e9bf200778842a3b',500),(82,NULL,NULL,1459719848,1459719848,24,'32/30','N','2cfb79e1e61ce4c1cfab65e6e453be6d',500),(83,NULL,NULL,1459719857,1459719857,24,'40/36','N','b5e6fd974a23414a7243664914bdbac5',500),(84,NULL,NULL,1459719858,1459719858,24,'42/36','N','109a3ae112e7d634b6733b08e129e439',500),(85,NULL,NULL,1459719869,1459719869,24,'34/32','N','f90bca77a6fdf3095df1a2d44a547977',500),(86,NULL,NULL,1459719926,1459719926,24,'39','N','c1e904deab87c3f3169aed3170302378',500),(87,NULL,NULL,1459719927,1459719927,24,'43','N','305bfd38a2968c03d667e194001b858c',500),(88,NULL,NULL,1459720047,1459720047,24,'XXXXL','N','684aecc945d017760a37548125a1f4bf',500),(89,NULL,NULL,1459720326,1459720326,24,'33','N','5f547e123db8a6c9554b69c7179e2ca6',500),(90,NULL,NULL,1459720378,1459720378,24,'41','N','a45e2e9294dc4add0e23d89ec03d8349',500),(91,NULL,NULL,1459720516,1459720516,24,'Черный','N','6261d4125d4810f9a538b3e50d37c2f4',500),(92,NULL,NULL,1459720516,1459720516,24,'Мультиколор','N','43c23fc5b6f85a351396d443f8c3fed4',500),(93,NULL,NULL,1459720517,1459720517,24,'Полоска','N','c2dcd2df1ab3e219f7fe4f671860f049',500),(94,NULL,NULL,1459720538,1459720538,24,'XXS','N','01222246343ef2214878f31f58a6d59d',500),(95,NULL,NULL,1459721419,1459721419,24,'60','N','85ee1cd1157e3a0586a62b14dd202b04',500),(96,NULL,NULL,1459721910,1459721910,24,'4XL','N','c16ecf3d714d530d34295dd2292342d6',500),(97,NULL,NULL,1459722127,1459722127,24,'3XL','N','8bc6e45747d19004e5d665ea7c87c1cd',500),(98,NULL,NULL,1459722536,1459722536,24,'W32/L34','N','62ca136bcc36741c30a574424de3a525',500),(99,NULL,NULL,1459722541,1459722541,24,'W34/L34','N','0ccdec422384ced11b991640444c1e7f',500),(100,NULL,NULL,1459722550,1459722550,24,'W33/L34','N','06796eb51b1a3eeb91a937f752311937',500),(101,NULL,NULL,1459749008,1459749008,24,'Серый','N','3c30ca2733cc31afc14bc47dbecaecbf',500),(102,NULL,NULL,1459749009,1459749009,24,'Цветочный принт','N','15448eca950ec09232845ecabe6a9900',500),(109,NULL,NULL,1463522188,1463522188,24,'T3','N','2e614a276f131ad88ce9ba35c87b9373',500),(110,NULL,NULL,1463522250,1463522250,24,'2XL','N','7545c38fadd7781fb5a35dccce28031d',500),(111,NULL,NULL,1463522574,1463522574,24,'W33','N','13e39c409941cbc4e6ddcff8d026398b',500),(112,NULL,NULL,1463522660,1463522660,24,'29','N','dd2195e9980bbd9b4d3c649da2204a17',500),(113,NULL,NULL,1463522760,1463522760,24,'28','N','44c6abaa144d2b203b8540cfeac89b00',500);
/*!40000 ALTER TABLE `cms_content_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_property_enum` with 107 row(s)
--

--
-- Table structure for table `cms_content_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `files` text,
  `priority` int(11) NOT NULL DEFAULT '500',
  `name` varchar(255) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  CONSTRAINT `cms_content_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_content_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_type`
--

LOCK TABLES `cms_content_type` WRITE;
/*!40000 ALTER TABLE `cms_content_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_content_type` VALUES (1,1,1,1442576605,1445554128,NULL,200,'Публикации','publications'),(2,1,1,1442576618,1445553156,NULL,100,'Торговый каталог','products'),(3,1,1,1442926503,1442926503,NULL,500,'Сервисы','services'),(5,1,1,1445100854,1445554135,NULL,300,'Справочники','info');
/*!40000 ALTER TABLE `cms_content_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_content_type` with 4 row(s)
--

--
-- Table structure for table `cms_dashboard`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `columns` int(11) unsigned NOT NULL DEFAULT '1',
  `columns_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `priority` (`priority`),
  KEY `columns` (`columns`),
  CONSTRAINT `cms_dashboard_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Рабочий стол';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard`
--

LOCK TABLES `cms_dashboard` WRITE;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_dashboard` VALUES (1,1,1,1455901293,1455901299,'Стол по умолчанию',NULL,100,2,NULL),(2,1,1,1455912727,1455912762,'Магазин',NULL,100,2,NULL);
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_dashboard` with 2 row(s)
--

--
-- Table structure for table `cms_dashboard_widget`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_dashboard_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_dashboard_id` int(11) NOT NULL,
  `cms_dashboard_column` int(11) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '100',
  `component` varchar(255) NOT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `component` (`component`),
  KEY `cms_dashboard_id` (`cms_dashboard_id`),
  KEY `cms_dashboard_column` (`cms_dashboard_column`),
  CONSTRAINT `cms_dashboard_widget_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_widget_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_dashboard_widget__cms_dashboard_id` FOREIGN KEY (`cms_dashboard_id`) REFERENCES `cms_dashboard` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Виджет рабочего стола';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_dashboard_widget`
--

LOCK TABLES `cms_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `cms_dashboard_widget` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_dashboard_widget` VALUES (1,1,1,1455901305,1456330155,1,1,100,'skeeks\\cms\\modules\\admin\\dashboards\\AboutCmsDashboard',''),(2,1,1,1455901312,1456330155,1,1,200,'skeeks\\cms\\modules\\admin\\dashboards\\CmsInformDashboard',''),(3,1,1,1455901319,1456330155,1,2,100,'skeeks\\cms\\modules\\admin\\dashboards\\DiscSpaceDashboard',''),(4,1,NULL,1455912733,1461786883,2,1,100,'skeeks\\cms\\shop\\dashboards\\ReportOrderDashboard',''),(5,1,NULL,1457015757,1461786884,2,2,100,'skeeks\\cms\\modules\\admin\\dashboards\\ContentElementListDashboard','a:11:{s:4:\"name\";s:12:\"Товары\";s:13:\"enabledPaging\";s:1:\"1\";s:8:\"pageSize\";s:2:\"10\";s:16:\"pageSizeLimitMin\";s:1:\"1\";s:16:\"pageSizeLimitMax\";s:2:\"50\";s:17:\"enabledActiveTime\";s:1:\"1\";s:11:\"content_ids\";a:1:{i:0;s:1:\"2\";}s:8:\"tree_ids\";s:0:\"\";s:5:\"limit\";s:1:\"0\";s:7:\"orderBy\";s:12:\"published_at\";s:5:\"order\";s:1:\"3\";}');
/*!40000 ALTER TABLE `cms_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_dashboard_widget` with 5 row(s)
--

--
-- Table structure for table `cms_event`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '150',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_name` (`event_name`),
  KEY `priority` (`priority`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_event`
--

LOCK TABLES `cms_event` WRITE;
/*!40000 ALTER TABLE `cms_event` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_event` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_event` with 0 row(s)
--

--
-- Table structure for table `cms_lang`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `description` (`description`),
  KEY `cms_lang__image_id` (`image_id`),
  KEY `is_active` (`is_active`),
  CONSTRAINT `cms_lang_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_lang__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Доступные языки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_lang`
--

LOCK TABLES `cms_lang` WRITE;
/*!40000 ALTER TABLE `cms_lang` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_lang` VALUES (1,1,NULL,1432126580,1444825042,500,'ru','Русский','',NULL,1),(2,1,NULL,1432126667,1444825052,600,'en','Английский','',NULL,1);
/*!40000 ALTER TABLE `cms_lang` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_lang` with 2 row(s)
--

--
-- Table structure for table `cms_search_phrase`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_search_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `phrase` varchar(255) DEFAULT NULL,
  `result_count` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `session_id` varchar(32) DEFAULT NULL,
  `site_code` char(15) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `phrase` (`phrase`),
  KEY `result_count` (`result_count`),
  KEY `pages` (`pages`),
  KEY `ip` (`ip`),
  KEY `session_id` (`session_id`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `cms_search_phrase_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_search_phrase_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='Поисковые фразы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_search_phrase`
--

LOCK TABLES `cms_search_phrase` WRITE;
/*!40000 ALTER TABLE `cms_search_phrase` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_search_phrase` VALUES (1,NULL,NULL,1457086509,1457086509,'куртка',0,1,'5.228.129.95','-ZqFLhpuZcaMqKjrgCbexyUDnJa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"5.228.129.95\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"5.228.129.95\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:211:\"PHPSESSID=-ZqFLhpuZcaMqKjrgCbexyUDnJa; _csrf=51d0a080ac703652bb7842b7b7435f1522202da282bbb66bb4f45882783a4b2ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Q25vPZvLkmW7GP36Vk3KOuv6m-cmWHFA%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"5.228.129.95\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"36994\";s:21:\"REDIRECT_QUERY_STRING\";s:38:\"q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:38:\"q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:46:\"/search?q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1457086509.5910001;s:12:\"REQUEST_TIME\";i:1457086509;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:37828;}','a:2:{s:9:\"PHPSESSID\";s:27:\"-ZqFLhpuZcaMqKjrgCbexyUDnJa\";s:5:\"_csrf\";s:130:\"51d0a080ac703652bb7842b7b7435f1522202da282bbb66bb4f45882783a4b2ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Q25vPZvLkmW7GP36Vk3KOuv6m-cmWHFA\";}\";}','a:1:{s:1:\"q\";s:12:\"куртка\";}'),(2,1,1,1457189010,1457189010,'sms',0,1,'80.243.13.242','vir7SK7XwixzU5k2HetlPNHPN4f','s1','a:40:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36\";s:12:\"HTTP_REFERER\";s:30:\"http://mypaprika.ru/~shop-cart\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:459:\"_csrf=1f32bf7075554199b2820a44a586db79df0a549cd19aa9b274513aebadc2d27ea%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22LBeImwssgI4pRDlOOS0p6EA1Qot7W257%22%3B%7D; _ym_uid=145684865713477242; _ym_isad=0; PHPSESSID=vir7SK7XwixzU5k2HetlPNHPN4f; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39063\";s:21:\"REDIRECT_QUERY_STRING\";s:5:\"q=sms\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:5:\"q=sms\";s:11:\"REQUEST_URI\";s:13:\"/search?q=sms\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:13:\"PHP_AUTH_USER\";s:4:\"root\";s:11:\"PHP_AUTH_PW\";s:6:\"skeeks\";s:18:\"REQUEST_TIME_FLOAT\";d:1457189010.2179999;s:12:\"REQUEST_TIME\";i:1457189010;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:5:\"_csrf\";s:130:\"1f32bf7075554199b2820a44a586db79df0a549cd19aa9b274513aebadc2d27ea:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"LBeImwssgI4pRDlOOS0p6EA1Qot7W257\";}\";s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:8:\"_ym_isad\";s:1:\"0\";s:9:\"PHPSESSID\";s:27:\"vir7SK7XwixzU5k2HetlPNHPN4f\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:3:\"sms\";}'),(3,1,1,1459965916,1459965916,'',1087,109,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"HTTP_REFERER\";s:58:\"http://mypaprika.ru/catalog/jenskaya-odejda/noski-kolgotki\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58932\";s:21:\"REDIRECT_QUERY_STRING\";s:0:\"\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:8:\"/search?\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965915.97;s:12:\"REQUEST_TIME\";i:1459965915;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}',''),(4,1,1,1459965933,1459965933,'',1087,109,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"HTTP_REFERER\";s:58:\"http://mypaprika.ru/catalog/jenskaya-odejda/noski-kolgotki\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59226\";s:21:\"REDIRECT_QUERY_STRING\";s:0:\"\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:8:\"/search?\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965933.112;s:12:\"REQUEST_TIME\";i:1459965933;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}',''),(5,1,1,1459965947,1459965947,'колготки',57,6,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59446\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965947.5409999;s:12:\"REQUEST_TIME\";i:1459965947;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"колготки\";}'),(6,1,1,1459965953,1459965953,'колготки',57,6,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TURiM0JRclB7PgV7OjQdKAcmJXIhHRsJGDFVdiRmMyl6DCVCDmdEZA==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/search?q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59512\";s:21:\"REDIRECT_QUERY_STRING\";s:69:\"q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8&page=2&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:69:\"q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8&page=2&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:77:\"/search?q=%D0%BA%D0%BE%D0%BB%D0%B3%D0%BE%D1%82%D0%BA%D0%B8&page=2&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965952.941;s:12:\"REQUEST_TIME\";i:1459965952;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:3:{s:1:\"q\";s:16:\"колготки\";s:4:\"page\";s:1:\"2\";s:5:\"_pjax\";s:3:\"#w0\";}'),(7,1,1,1459965970,1459965970,'050514_42',1,1,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"HTTP_REFERER\";s:85:\"http://mypaprika.ru/catalog/jenskaya-odejda/noski-kolgotki/nur-die/8646-kolgotki-8645\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59750\";s:21:\"REDIRECT_QUERY_STRING\";s:11:\"q=050514_42\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:11:\"q=050514_42\";s:11:\"REQUEST_URI\";s:19:\"/search?q=050514_42\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965970.2579999;s:12:\"REQUEST_TIME\";i:1459965970;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:9:\"050514_42\";}'),(8,1,1,1459965985,1459965985,'120815_71',1,1,'80.243.13.242','4A8,B7H,qjFj84ulVg4p6qXdH22','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36\";s:12:\"HTTP_REFERER\";s:86:\"http://mypaprika.ru/catalog/jenskaya-odejda/tolstovki/abercrombie-fitch/8757-hudi-8756\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:463:\"_ym_uid=145684865713477242; _csrf=c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%226zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664%22%3B%7D; _ym_isad=2; PHPSESSID=4A8%2CB7H%2CqjFj84ulVg4p6qXdH22; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59934\";s:21:\"REDIRECT_QUERY_STRING\";s:11:\"q=120815_71\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:11:\"q=120815_71\";s:11:\"REQUEST_URI\";s:19:\"/search?q=120815_71\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1459965985.2950001;s:12:\"REQUEST_TIME\";i:1459965985;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"c27b97d05727bd0976c0f22f47bf602fa4ad224cbe014e8ad04924a1d364385aa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"6zgHxeoxJbGAcLiYUu7Ef7Ay7HGqL664\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"4A8,B7H,qjFj84ulVg4p6qXdH22\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:9:\"120815_71\";}'),(9,NULL,NULL,1460020219,1460020219,'лонгслив',13,1,'188.32.102.1','-ew6lC0MePtPMosezxxE2J0xaf1','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/~shop-order/view?id=137\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227F3EZKR97SH6pe1fPQSesElkU4YqqZXj%22%3B%7D; PHPSESSID=-ew6lC0MePtPMosezxxE2J0xaf1; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41117\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460020219.0450001;s:12:\"REQUEST_TIME\";i:1460020219;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7F3EZKR97SH6pe1fPQSesElkU4YqqZXj\";}\";s:9:\"PHPSESSID\";s:27:\"-ew6lC0MePtPMosezxxE2J0xaf1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"лонгслив\";}'),(10,NULL,NULL,1460020243,1460020243,'лонгслив',13,1,'188.32.102.1','-ew6lC0MePtPMosezxxE2J0xaf1','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"RzJhRmw1TEpwdFIDNn4ec3BhKXAcUH0sF2MyIx9wICESBjg3HW8UIA==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/search?q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227F3EZKR97SH6pe1fPQSesElkU4YqqZXj%22%3B%7D; PHPSESSID=-ew6lC0MePtPMosezxxE2J0xaf1; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41658\";s:21:\"REDIRECT_QUERY_STRING\";s:69:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&page=2&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:69:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&page=2&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:77:\"/search?q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&page=2&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460020243.9319999;s:12:\"REQUEST_TIME\";i:1460020243;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7F3EZKR97SH6pe1fPQSesElkU4YqqZXj\";}\";s:9:\"PHPSESSID\";s:27:\"-ew6lC0MePtPMosezxxE2J0xaf1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:16:\"лонгслив\";s:4:\"page\";s:1:\"2\";s:5:\"_pjax\";s:3:\"#w0\";}'),(11,NULL,NULL,1460020668,1460020668,'Куртка',71,7,'83.220.236.153','RuIk0NhUmRCcW3YYh01sZl1P7f6','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"83.220.236.153\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"83.220.236.153\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:139:\"Mozilla/5.0 (Linux; Android 4.4.4; GT-I9300I Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.105 Mobile Safari/537.36\";s:12:\"HTTP_REFERER\";s:80:\"http://mypaprika.ru/catalog/mujskaya-odejda/kurtki/aw-dunmore/11409-kurtka-11408\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:252:\"PHPSESSID=RuIk0NhUmRCcW3YYh01sZl1P7f6; _csrf=77a250203897b560a9c3c190081b5f0bd0bea0fd4ec9e1b150f098834c2704efa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22F6wEK_IY5ajZPU3tQl63e6XzIBc3_kYs%22%3B%7D; _ym_uid=1460020635993918853; _ym_isad=2\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"83.220.236.153\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"48963\";s:21:\"REDIRECT_QUERY_STRING\";s:38:\"q=%D0%9A%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:38:\"q=%D0%9A%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:46:\"/search?q=%D0%9A%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460020668.2409999;s:12:\"REQUEST_TIME\";i:1460020668;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:38141;}','a:4:{s:9:\"PHPSESSID\";s:27:\"RuIk0NhUmRCcW3YYh01sZl1P7f6\";s:5:\"_csrf\";s:130:\"77a250203897b560a9c3c190081b5f0bd0bea0fd4ec9e1b150f098834c2704efa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"F6wEK_IY5ajZPU3tQl63e6XzIBc3_kYs\";}\";s:7:\"_ym_uid\";s:19:\"1460020635993918853\";s:8:\"_ym_isad\";s:1:\"2\";}','a:1:{s:1:\"q\";s:12:\"Куртка\";}'),(12,NULL,NULL,1460380125,1460380125,'paul ',0,1,'188.32.102.1','vei5so4uU94tpx9CBHiB3oxInZ9','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:12:\"HTTP_REFERER\";s:95:\"http://mypaprika.ru/catalog/?mode=products&SearchRelatedPropertiesModel%5Bbrand%5D%5B0%5D=11386\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227F3EZKR97SH6pe1fPQSesElkU4YqqZXj%22%3B%7D; PHPSESSID=vei5so4uU94tpx9CBHiB3oxInZ9; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34790\";s:21:\"REDIRECT_QUERY_STRING\";s:7:\"q=paul+\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:7:\"q=paul+\";s:11:\"REQUEST_URI\";s:15:\"/search?q=paul+\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460380125.1989999;s:12:\"REQUEST_TIME\";i:1460380125;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7F3EZKR97SH6pe1fPQSesElkU4YqqZXj\";}\";s:9:\"PHPSESSID\";s:27:\"vei5so4uU94tpx9CBHiB3oxInZ9\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:5:\"paul \";}'),(13,NULL,NULL,1460380146,1460380146,'Paul R.smith',0,1,'188.32.102.1','vei5so4uU94tpx9CBHiB3oxInZ9','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Q3ItTmlvR2F0NB4LMyQVWHQhZXgZCnYHEyN.KxoqKwoWRnQ/GDUfCw==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:34:\"http://mypaprika.ru/search?q=paul+\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227F3EZKR97SH6pe1fPQSesElkU4YqqZXj%22%3B%7D; PHPSESSID=vei5so4uU94tpx9CBHiB3oxInZ9; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35116\";s:21:\"REDIRECT_QUERY_STRING\";s:26:\"q=Paul+R.smith&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:26:\"q=Paul+R.smith&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:34:\"/search?q=Paul+R.smith&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460380146.2019999;s:12:\"REQUEST_TIME\";i:1460380146;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7F3EZKR97SH6pe1fPQSesElkU4YqqZXj\";}\";s:9:\"PHPSESSID\";s:27:\"vei5so4uU94tpx9CBHiB3oxInZ9\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:12:\"Paul R.smith\";s:5:\"_pjax\";s:3:\"#w0\";}'),(14,NULL,NULL,1460380150,1460380150,'Paul ',0,1,'188.32.102.1','vei5so4uU94tpx9CBHiB3oxInZ9','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Q3ItTmlvR2F0NB4LMyQVWHQhZXgZCnYHEyN.KxoqKwoWRnQ/GDUfCw==\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.87 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:41:\"http://mypaprika.ru/search?q=Paul+R.smith\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%227F3EZKR97SH6pe1fPQSesElkU4YqqZXj%22%3B%7D; PHPSESSID=vei5so4uU94tpx9CBHiB3oxInZ9; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35167\";s:21:\"REDIRECT_QUERY_STRING\";s:19:\"q=Paul+&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:19:\"q=Paul+&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:27:\"/search?q=Paul+&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460380150.4349999;s:12:\"REQUEST_TIME\";i:1460380150;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"c2786aee97d41042a109c91df25238cfe9a3ba36c405adf6f112a2f6f05e6edaa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"7F3EZKR97SH6pe1fPQSesElkU4YqqZXj\";}\";s:9:\"PHPSESSID\";s:27:\"vei5so4uU94tpx9CBHiB3oxInZ9\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:5:\"Paul \";s:5:\"_pjax\";s:3:\"#w0\";}'),(15,NULL,NULL,1460610337,1460610337,'Кардиган',21,2,'213.87.144.200','NcCFwAXiUEPhf7VLeQN2JKcjuMd','s1','a:37:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"213.87.144.200\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"213.87.144.200\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:11:\"HTTP_COOKIE\";s:211:\"_csrf=2f02446c28e84e3ce13c02f72e303771e578bc42b3da675f966ce8bc4e867591a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22gljt-bLlHLD-br3pZqfLdFeJckS6hLk8%22%3B%7D; PHPSESSID=NcCFwAXiUEPhf7VLeQN2JKcjuMd\";s:15:\"HTTP_USER_AGENT\";s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"213.87.144.200\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"57163\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1460610337.4419999;s:12:\"REQUEST_TIME\";i:1460610337;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:38185;}','a:2:{s:5:\"_csrf\";s:130:\"2f02446c28e84e3ce13c02f72e303771e578bc42b3da675f966ce8bc4e867591a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"gljt-bLlHLD-br3pZqfLdFeJckS6hLk8\";}\";s:9:\"PHPSESSID\";s:27:\"NcCFwAXiUEPhf7VLeQN2JKcjuMd\";}','a:1:{s:1:\"q\";s:16:\"Кардиган\";}'),(16,1,1,1461194682,1461194682,'1',3409,341,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41540\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=1\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=1\";s:11:\"REQUEST_URI\";s:11:\"/search?q=1\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194682.0669999;s:12:\"REQUEST_TIME\";i:1461194682;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:1:\"1\";}'),(17,1,1,1461194684,1461194684,'1',3409,341,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41631\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=1\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=1\";s:11:\"REQUEST_URI\";s:11:\"/search?q=1\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194684.6900001;s:12:\"REQUEST_TIME\";i:1461194684;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:1:\"1\";}'),(18,1,1,1461194778,1461194778,'1',3409,341,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44318\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=1\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=1\";s:11:\"REQUEST_URI\";s:11:\"/search?q=1\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194778.2920001;s:12:\"REQUEST_TIME\";i:1461194778;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:1:\"1\";}'),(19,1,1,1461194780,1461194780,'1',3409,341,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44359\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=1\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=1\";s:11:\"REQUEST_URI\";s:11:\"/search?q=1\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194780.309;s:12:\"REQUEST_TIME\";i:1461194780;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:1:\"1\";}'),(20,1,1,1461194846,1461194846,'1',3409,341,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45636\";s:21:\"REDIRECT_QUERY_STRING\";s:3:\"q=1\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:3:\"q=1\";s:11:\"REQUEST_URI\";s:11:\"/search?q=1\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194845.7490001;s:12:\"REQUEST_TIME\";i:1461194845;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:1:\"1\";}'),(21,1,1,1461194855,1461194855,'Кардиган',94,9,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"ZUVpZy1POGc3LxMeGiJnKFMsUEpuLn0MDHUKBEEGXTEBJg8UajZ1AQ==\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:30:\"http://mypaprika.ru/search?q=1\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"45878\";s:21:\"REDIRECT_QUERY_STRING\";s:62:\"q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:62:\"q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:70:\"/search?q=%D0%9A%D0%B0%D1%80%D0%B4%D0%B8%D0%B3%D0%B0%D0%BD&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194855.615;s:12:\"REQUEST_TIME\";i:1461194855;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:2:{s:1:\"q\";s:16:\"Кардиган\";s:5:\"_pjax\";s:3:\"#w0\";}'),(22,1,1,1461194865,1461194865,'221215__062',2,1,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:88:\"http://mypaprika.ru/catalog/mujskaya-odejda/koftyi-kardiganyi/oxbow/12119-kardigan-12118\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46057\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"q=221215__062\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:13:\"q=221215__062\";s:11:\"REQUEST_URI\";s:21:\"/search?q=221215__062\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461194865.0209999;s:12:\"REQUEST_TIME\";i:1461194865;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:11:\"221215__062\";}'),(23,1,1,1461195272,1461195272,'asd',0,1,'91.219.165.195','NVBQar9CYw1ScfxpfC6yD3ChTme','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:460:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; _ym_isad=2; PHPSESSID=NVBQar9CYw1ScfxpfC6yD3ChTme; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"52114\";s:21:\"REDIRECT_QUERY_STRING\";s:5:\"q=asd\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:5:\"q=asd\";s:11:\"REQUEST_URI\";s:13:\"/search?q=asd\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461195272.1800001;s:12:\"REQUEST_TIME\";i:1461195272;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"NVBQar9CYw1ScfxpfC6yD3ChTme\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:3:\"asd\";}'),(24,1,1,1461260138,1461260138,'280815_352',2,1,'91.219.165.195','DDQS-Pd,OOk5rOd-JWZZzrHL7T1','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:80:\"http://mypaprika.ru/catalog/mujskaya-odejda/palto-trenchi/4you/11350-palto-11349\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; PHPSESSID=DDQS-Pd%2COOk5rOd-JWZZzrHL7T1; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38167\";s:21:\"REDIRECT_QUERY_STRING\";s:12:\"q=280815_352\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:12:\"q=280815_352\";s:11:\"REQUEST_URI\";s:20:\"/search?q=280815_352\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461260138.415;s:12:\"REQUEST_TIME\";i:1461260138;}','a:5:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:14:\"elFinderCaches\";a:5:{s:8:\"_optsMD5\";s:32:\"8c2a9641191a5d26a91c0e173342be93\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3MDI0NzI2O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:380:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3NDM4MjMxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzL2YyOGEzNjkwL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwNjcxNDY0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9mMjhhMzY5MC9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwODQwOTM0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}}s:30:\"elFinderCaches:ARCHIVERS_CACHE\";a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}s:28:\"elFinderCaches:LAST_ACTIVITY\";i:1461218969;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:9:\"PHPSESSID\";s:27:\"DDQS-Pd,OOk5rOd-JWZZzrHL7T1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"280815_352\";}'),(25,1,1,1461260175,1461260175,'280815_352',1,1,'91.219.165.195','DDQS-Pd,OOk5rOd-JWZZzrHL7T1','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:80:\"http://mypaprika.ru/catalog/mujskaya-odejda/palto-trenchi/4you/11350-palto-11349\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; PHPSESSID=DDQS-Pd%2COOk5rOd-JWZZzrHL7T1; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"40058\";s:21:\"REDIRECT_QUERY_STRING\";s:12:\"q=280815_352\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:12:\"q=280815_352\";s:11:\"REQUEST_URI\";s:20:\"/search?q=280815_352\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461260175.585;s:12:\"REQUEST_TIME\";i:1461260175;}','a:5:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:14:\"elFinderCaches\";a:5:{s:8:\"_optsMD5\";s:32:\"8c2a9641191a5d26a91c0e173342be93\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3MDI0NzI2O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:380:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3NDM4MjMxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzL2YyOGEzNjkwL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwNjcxNDY0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9mMjhhMzY5MC9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwODQwOTM0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}}s:30:\"elFinderCaches:ARCHIVERS_CACHE\";a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}s:28:\"elFinderCaches:LAST_ACTIVITY\";i:1461218969;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:9:\"PHPSESSID\";s:27:\"DDQS-Pd,OOk5rOd-JWZZzrHL7T1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"280815_352\";}'),(26,1,1,1461261517,1461261517,'куртка',71,7,'91.219.165.195','DDQS-Pd,OOk5rOd-JWZZzrHL7T1','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.195\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.195\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=1456855389898974791; _csrf=6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf%22%3B%7D; PHPSESSID=DDQS-Pd%2COOk5rOd-JWZZzrHL7T1; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.195\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35913\";s:21:\"REDIRECT_QUERY_STRING\";s:38:\"q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:38:\"q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:46:\"/search?q=%D0%BA%D1%83%D1%80%D1%82%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461261517.4879999;s:12:\"REQUEST_TIME\";i:1461261517;}','a:5:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;s:14:\"elFinderCaches\";a:5:{s:8:\"_optsMD5\";s:32:\"8c2a9641191a5d26a91c0e173342be93\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3MDI0NzI2O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:380:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3NDM4MjMxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzL2YyOGEzNjkwL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwNjcxNDY0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy9mMjhhMzY5MC9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwODQwOTM0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvZjI4YTM2OTAvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}}s:30:\"elFinderCaches:ARCHIVERS_CACHE\";a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}s:28:\"elFinderCaches:LAST_ACTIVITY\";i:1461218969;}','a:5:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:5:\"_csrf\";s:130:\"6d31df20baa4ecb57f460cb6251b3c8db585f92f32df6c99ff37ba3e66830c82a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"Rjzy7m_O6i9-CaEki0cclIeVdcfsGyMf\";}\";s:9:\"PHPSESSID\";s:27:\"DDQS-Pd,OOk5rOd-JWZZzrHL7T1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:12:\"куртка\";}'),(27,1,1,1461311331,1461311331,'123',3,1,'80.243.13.242','V73uRQWVyGZsAogTKlAIq69Bg12','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:83:\"http://mypaprika.ru/catalog/mujskaya-odejda/puloveryi/casa-moda/12117-pulover-12116\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:459:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; _ym_isad=2; PHPSESSID=V73uRQWVyGZsAogTKlAIq69Bg12; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"47212\";s:21:\"REDIRECT_QUERY_STRING\";s:5:\"q=123\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:5:\"q=123\";s:11:\"REQUEST_URI\";s:13:\"/search?q=123\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461311331.0380001;s:12:\"REQUEST_TIME\";i:1461311331;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"V73uRQWVyGZsAogTKlAIq69Bg12\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:3:\"123\";}'),(28,NULL,NULL,1461347728,1461347728,'легенсы',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/jenskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=INR5VvaJmaHEhegBbyy1p7hodoa; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"37037\";s:21:\"REDIRECT_QUERY_STRING\";s:44:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:44:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:11:\"REQUEST_URI\";s:52:\"/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347728.665;s:12:\"REQUEST_TIME\";i:1461347728;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"INR5VvaJmaHEhegBbyy1p7hodoa\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:14:\"легенсы\";}'),(29,NULL,NULL,1461347744,1461347744,'пиджак',48,5,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WDFJdFloeEEPXxoXEy8vczNzDz4ODwoLCncmJgYmFXQgVQUNaDwvMg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:71:\"http://mypaprika.ru/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"37558\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D0%BF%D0%B8%D0%B4%D0%B6%D0%B0%D0%BA&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D0%BF%D0%B8%D0%B4%D0%B6%D0%B0%D0%BA&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D0%BF%D0%B8%D0%B4%D0%B6%D0%B0%D0%BA&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347744.4230001;s:12:\"REQUEST_TIME\";i:1461347744;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:12:\"пиджак\";s:5:\"_pjax\";s:3:\"#w0\";}'),(30,NULL,NULL,1461347776,1461347776,'лонгслив',13,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WDFJdFloeEEPXxoXEy8vczNzDz4ODwoLCncmJgYmFXQgVQUNaDwvMg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:65:\"http://mypaprika.ru/search?q=%D0%BF%D0%B8%D0%B4%D0%B6%D0%B0%D0%BA\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38645\";s:21:\"REDIRECT_QUERY_STRING\";s:62:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:62:\"q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:70:\"/search?q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347776.543;s:12:\"REQUEST_TIME\";i:1461347776;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:16:\"лонгслив\";s:5:\"_pjax\";s:3:\"#w0\";}'),(31,NULL,NULL,1461347794,1461347794,'легенсы',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/search?q=%D0%BB%D0%BE%D0%BD%D0%B3%D1%81%D0%BB%D0%B8%D0%B2\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39214\";s:21:\"REDIRECT_QUERY_STRING\";s:44:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:44:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:11:\"REQUEST_URI\";s:52:\"/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347794.171;s:12:\"REQUEST_TIME\";i:1461347794;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:14:\"легенсы\";}'),(32,NULL,NULL,1461347802,1461347802,'брюки',47,5,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:71:\"http://mypaprika.ru/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39482\";s:21:\"REDIRECT_QUERY_STRING\";s:32:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:32:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8\";s:11:\"REQUEST_URI\";s:40:\"/search?q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347802.4419999;s:12:\"REQUEST_TIME\";i:1461347802;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"брюки\";}'),(33,NULL,NULL,1461347879,1461347879,'легинсы ',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/catalog/mujskaya-odejda/bryuki/soliver/10762-bryuki-10761\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41978\";s:21:\"REDIRECT_QUERY_STRING\";s:45:\"q=%D0%BB%D0%B5%D0%B3%D0%B8%D0%BD%D1%81%D1%8B+\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:45:\"q=%D0%BB%D0%B5%D0%B3%D0%B8%D0%BD%D1%81%D1%8B+\";s:11:\"REQUEST_URI\";s:53:\"/search?q=%D0%BB%D0%B5%D0%B3%D0%B8%D0%BD%D1%81%D1%8B+\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347879.049;s:12:\"REQUEST_TIME\";i:1461347879;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:15:\"легинсы \";}'),(34,NULL,NULL,1461347884,1461347884,'легенсы ',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:72:\"http://mypaprika.ru/search?q=%D0%BB%D0%B5%D0%B3%D0%B8%D0%BD%D1%81%D1%8B+\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42146\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B+&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B+&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:65:\"/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B+&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347884.447;s:12:\"REQUEST_TIME\";i:1461347884;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:15:\"легенсы \";s:5:\"_pjax\";s:3:\"#w0\";}'),(35,NULL,NULL,1461347890,1461347890,'жакет',6,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:72:\"http://mypaprika.ru/search?q=%D0%BB%D0%B5%D0%B3%D0%B5%D0%BD%D1%81%D1%8B+\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42341\";s:21:\"REDIRECT_QUERY_STRING\";s:44:\"q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:44:\"q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:52:\"/search?q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347890.411;s:12:\"REQUEST_TIME\";i:1461347890;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:10:\"жакет\";s:5:\"_pjax\";s:3:\"#w0\";}'),(36,NULL,NULL,1461347900,1461347900,'бжюки женские',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:59:\"http://mypaprika.ru/search?q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42737\";s:21:\"REDIRECT_QUERY_STRING\";s:87:\"q=%D0%B1%D0%B6%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:87:\"q=%D0%B1%D0%B6%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:95:\"/search?q=%D0%B1%D0%B6%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347900.336;s:12:\"REQUEST_TIME\";i:1461347900;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:25:\"бжюки женские\";s:5:\"_pjax\";s:3:\"#w0\";}'),(37,NULL,NULL,1461347912,1461347912,'брюки женские',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:102:\"http://mypaprika.ru/search?q=%D0%B1%D0%B6%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43126\";s:21:\"REDIRECT_QUERY_STRING\";s:87:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:87:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:95:\"/search?q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347912.4230001;s:12:\"REQUEST_TIME\";i:1461347912;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:25:\"брюки женские\";s:5:\"_pjax\";s:3:\"#w0\";}'),(38,NULL,NULL,1461347919,1461347919,'брюки для женщин ',0,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:102:\"http://mypaprika.ru/search?q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B8%D0%B5\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43342\";s:21:\"REDIRECT_QUERY_STRING\";s:101:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B4%D0%BB%D1%8F+%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD+&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:101:\"q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B4%D0%BB%D1%8F+%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD+&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:109:\"/search?q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B4%D0%BB%D1%8F+%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD+&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461347919.494;s:12:\"REQUEST_TIME\";i:1461347919;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:31:\"брюки для женщин \";s:5:\"_pjax\";s:3:\"#w0\";}'),(39,NULL,NULL,1461349240,1461349240,'леггинсы',3,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"WW5WV1lvNmYOAAU0EyhhVDIsEB0OCEQsCyg5BQYhW1MhChouaDthFQ==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:116:\"http://mypaprika.ru/search?q=%D0%B1%D1%80%D1%8E%D0%BA%D0%B8+%D0%B4%D0%BB%D1%8F+%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD+\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60003\";s:21:\"REDIRECT_QUERY_STRING\";s:62:\"q=%D0%BB%D0%B5%D0%B3%D0%B3%D0%B8%D0%BD%D1%81%D1%8B&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:62:\"q=%D0%BB%D0%B5%D0%B3%D0%B3%D0%B8%D0%BD%D1%81%D1%8B&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:70:\"/search?q=%D0%BB%D0%B5%D0%B3%D0%B3%D0%B8%D0%BD%D1%81%D1%8B&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461349240.635;s:12:\"REQUEST_TIME\";i:1461349240;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:16:\"леггинсы\";s:5:\"_pjax\";s:3:\"#w0\";}'),(40,NULL,NULL,1461356369,1461356369,'жакет',6,1,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/jenskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"40904\";s:21:\"REDIRECT_QUERY_STRING\";s:32:\"q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:32:\"q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82\";s:11:\"REQUEST_URI\";s:40:\"/search?q=%D0%B6%D0%B0%D0%BA%D0%B5%D1%82\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461356369.5780001;s:12:\"REQUEST_TIME\";i:1461356369;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"жакет\";}'),(41,NULL,NULL,1461356411,1461356411,'футболка',80,8,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/jenskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42449\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461356411.2539999;s:12:\"REQUEST_TIME\";i:1461356411;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(42,NULL,NULL,1461356419,1461356419,'футболка',80,8,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"eGU3aFV3X3cvC2QLHzAIRRMncSICEC09KiNYOgo5MkIAAXsRZCMIBA==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42664\";s:21:\"REDIRECT_QUERY_STRING\";s:69:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:69:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:93:\"/cmsSearch/result/index?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461356419.648;s:12:\"REQUEST_TIME\";i:1461356419;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:16:\"футболка\";s:4:\"page\";s:1:\"8\";s:5:\"_pjax\";s:3:\"#w0\";}'),(43,NULL,NULL,1461356576,1461356576,'футболка',80,8,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/jenskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"48075\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461356576.3770001;s:12:\"REQUEST_TIME\";i:1461356576;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:16:\"футболка\";s:4:\"page\";s:1:\"8\";}'),(44,NULL,NULL,1461357442,1461357442,'футболка',80,8,'188.32.102.1','IRMYAdYbRFzhUZSFakYkVQq2nB3','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/jenskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:462:\"_ym_uid=14579514201026044407; _csrf=825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs%22%3B%7D; PHPSESSID=IRMYAdYbRFzhUZSFakYkVQq2nB3; _ym_isad=2; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44790\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0&page=8\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461357442.0580001;s:12:\"REQUEST_TIME\";i:1461357442;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:5:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"825eb538364ab59ec477d9c40984e618c41fdfcb71e90def0a134d09ebc74bd0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"WnScJGW2kBFJWgrJRFoR_Nm5xdLy1TWs\";}\";s:9:\"PHPSESSID\";s:27:\"IRMYAdYbRFzhUZSFakYkVQq2nB3\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:2:{s:1:\"q\";s:16:\"футболка\";s:4:\"page\";s:1:\"8\";}'),(45,NULL,NULL,1461396070,1461396070,'Шорты',25,3,'188.32.102.1','62khnurv8MxMXnUEP17RvLRX8Nb','s1','a:37:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:11:\"HTTP_COOKIE\";s:240:\"_ym_uid=1460610350668785214; _csrf=6e19f69459376c43668c97619512338c87fd115719fe2808ee115d02841a85d0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%222tAbI1TxyhKznowdeI4GRnvRJtyU9S44%22%3B%7D; PHPSESSID=62khnurv8MxMXnUEP17RvLRX8Nb\";s:15:\"HTTP_USER_AGENT\";s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"41676\";s:21:\"REDIRECT_QUERY_STRING\";s:32:\"q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:32:\"q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B\";s:11:\"REQUEST_URI\";s:40:\"/search?q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461396070.6589999;s:12:\"REQUEST_TIME\";i:1461396070;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:38342;}','a:3:{s:7:\"_ym_uid\";s:19:\"1460610350668785214\";s:5:\"_csrf\";s:130:\"6e19f69459376c43668c97619512338c87fd115719fe2808ee115d02841a85d0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"2tAbI1TxyhKznowdeI4GRnvRJtyU9S44\";}\";s:9:\"PHPSESSID\";s:27:\"62khnurv8MxMXnUEP17RvLRX8Nb\";}','a:1:{s:1:\"q\";s:10:\"Шорты\";}'),(46,NULL,NULL,1461396090,1461396090,'Шорты',25,3,'188.32.102.1','62khnurv8MxMXnUEP17RvLRX8Nb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:2:\"ru\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:15:\"HTTP_USER_AGENT\";s:133:\"Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4\";s:12:\"HTTP_REFERER\";s:59:\"http://mypaprika.ru/search?q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"YUpBVTJ1eVRTPgA3e0QtLBgiCi9cGg4wBAN1EmAbDwYrPjgACyZNYA==\";s:11:\"HTTP_COOKIE\";s:240:\"_ym_uid=1460610350668785214; _csrf=6e19f69459376c43668c97619512338c87fd115719fe2808ee115d02841a85d0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%222tAbI1TxyhKznowdeI4GRnvRJtyU9S44%22%3B%7D; PHPSESSID=62khnurv8MxMXnUEP17RvLRX8Nb\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42266\";s:21:\"REDIRECT_QUERY_STRING\";s:51:\"q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B&page=3&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:51:\"q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B&page=3&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:75:\"/cmsSearch/result/index?q=%D0%A8%D0%BE%D1%80%D1%82%D1%8B&page=3&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461396090.8440001;s:12:\"REQUEST_TIME\";i:1461396090;}','a:2:{s:7:\"__flash\";a:0:{}s:15:\"SKEEKS_CMS_SHOP\";i:38342;}','a:3:{s:7:\"_ym_uid\";s:19:\"1460610350668785214\";s:5:\"_csrf\";s:130:\"6e19f69459376c43668c97619512338c87fd115719fe2808ee115d02841a85d0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"2tAbI1TxyhKznowdeI4GRnvRJtyU9S44\";}\";s:9:\"PHPSESSID\";s:27:\"62khnurv8MxMXnUEP17RvLRX8Nb\";}','a:3:{s:1:\"q\";s:10:\"Шорты\";s:4:\"page\";s:1:\"3\";s:5:\"_pjax\";s:3:\"#w0\";}'),(47,1,1,1461600630,1461600630,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:449:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"57696\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461600629.7969999;s:12:\"REQUEST_TIME\";i:1461600629;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(48,1,1,1461600652,1461600652,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58454\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461600652.9260001;s:12:\"REQUEST_TIME\";i:1461600652;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(49,1,1,1461602783,1461602783,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59401\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602783.681;s:12:\"REQUEST_TIME\";i:1461602783;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(50,1,1,1461602803,1461602803,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59904\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602803.53;s:12:\"REQUEST_TIME\";i:1461602803;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(51,1,1,1461602806,1461602806,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60027\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602806.0610001;s:12:\"REQUEST_TIME\";i:1461602806;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(52,1,1,1461602806,1461602806,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60042\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602806.4300001;s:12:\"REQUEST_TIME\";i:1461602806;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(53,1,1,1461602833,1461602833,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60934\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602833.2260001;s:12:\"REQUEST_TIME\";i:1461602833;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(54,1,1,1461602838,1461602838,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"32889\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602838.0009999;s:12:\"REQUEST_TIME\";i:1461602838;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(55,1,1,1461602876,1461602876,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34130\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602876.1849999;s:12:\"REQUEST_TIME\";i:1461602876;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(56,1,1,1461602878,1461602878,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34279\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602878.3099999;s:12:\"REQUEST_TIME\";i:1461602878;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(57,1,1,1461602879,1461602879,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34371\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602879.848;s:12:\"REQUEST_TIME\";i:1461602879;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(58,1,1,1461602890,1461602890,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34763\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602890.7780001;s:12:\"REQUEST_TIME\";i:1461602890;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(59,1,1,1461602892,1461602892,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34877\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602892.484;s:12:\"REQUEST_TIME\";i:1461602892;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(60,1,1,1461602896,1461602896,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35074\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602896.6700001;s:12:\"REQUEST_TIME\";i:1461602896;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(61,1,1,1461602899,1461602899,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35208\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602899.1559999;s:12:\"REQUEST_TIME\";i:1461602899;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(62,1,1,1461602954,1461602954,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"36762\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602954.3570001;s:12:\"REQUEST_TIME\";i:1461602954;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(63,1,1,1461602956,1461602956,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"36882\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602956.04;s:12:\"REQUEST_TIME\";i:1461602956;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(64,1,1,1461602999,1461602999,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:39:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38155\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461602999.3970001;s:12:\"REQUEST_TIME\";i:1461602999;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(65,1,1,1461603006,1461603006,'футболка',80,8,'80.243.13.242','uluxkDGOlNPIK8neI,SsfBrOaUe','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:461:\"_ym_uid=145684865713477242; _csrf=0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX%22%3B%7D; PHPSESSID=uluxkDGOlNPIK8neI%2CSsfBrOaUe; _ym_isad=2; _identity=cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"38473\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461603006.4319999;s:12:\"REQUEST_TIME\";i:1461603006;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"0aa21cdfbda442ffd10c0f38a109759e7e04ee4ae542e0d5fe7e67c217afc7bfa:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"bb86Hx8Dnk7peepKs4b9uE61tLY4U8JX\";}\";s:9:\"PHPSESSID\";s:27:\"uluxkDGOlNPIK8neI,SsfBrOaUe\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"cd054701c25270a930ae6f4a9537e8849e0b76bef13dbf60996d982e2fdda665a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:16:\"футболка\";}'),(66,1,1,1462953343,1462953343,'261115_216',1,1,'80.243.13.242','q8n4xpubqbFSXnMhyR2Zu3uprz6','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:459:\"_ym_uid=145684865713477242; _csrf=8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nn6c58YLv_aByIGt6qD_62FnH96PJGpV%22%3B%7D; PHPSESSID=q8n4xpubqbFSXnMhyR2Zu3uprz6; _ym_isad=2; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43914\";s:21:\"REDIRECT_QUERY_STRING\";s:12:\"q=261115_216\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:12:\"q=261115_216\";s:11:\"REQUEST_URI\";s:20:\"/search?q=261115_216\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1462953342.632;s:12:\"REQUEST_TIME\";i:1462953342;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:5:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"nn6c58YLv_aByIGt6qD_62FnH96PJGpV\";}\";s:9:\"PHPSESSID\";s:27:\"q8n4xpubqbFSXnMhyR2Zu3uprz6\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"261115_216\";}'),(67,1,1,1463044897,1463044897,'261115_216',1,1,'80.243.13.242','rBQipgdnIVoASpo7dakfM55MPOc','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:447:\"_ym_uid=145684865713477242; _csrf=8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nn6c58YLv_aByIGt6qD_62FnH96PJGpV%22%3B%7D; PHPSESSID=rBQipgdnIVoASpo7dakfM55MPOc; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34822\";s:21:\"REDIRECT_QUERY_STRING\";s:12:\"q=261115_216\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:12:\"q=261115_216\";s:11:\"REQUEST_URI\";s:20:\"/search?q=261115_216\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463044897.052;s:12:\"REQUEST_TIME\";i:1463044897;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:4:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"nn6c58YLv_aByIGt6qD_62FnH96PJGpV\";}\";s:9:\"PHPSESSID\";s:27:\"rBQipgdnIVoASpo7dakfM55MPOc\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"261115_216\";}'),(68,NULL,NULL,1463496391,1463496391,'1416_110',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:94:\"http://mypaprika.ru/catalog/mujskaya-odejda/shortyi-bridji/abercrombie-fitch/9109-shortyi-9108\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _ga=GA1.2.1775537637.1463398311; _gat=1; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"33350\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=1416_110\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=1416_110\";s:11:\"REQUEST_URI\";s:18:\"/search?q=1416_110\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496391.0840001;s:12:\"REQUEST_TIME\";i:1463496391;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:4:\"_gat\";s:1:\"1\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:8:\"1416_110\";}'),(69,NULL,NULL,1463496573,1463496573,'220915_6',1,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:84:\"http://mypaprika.ru/catalog/mujskaya-odejda/puloveryi/tom-tailor/11897-pulover-11896\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43020\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=220915_6\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=220915_6\";s:11:\"REQUEST_URI\";s:18:\"/search?q=220915_6\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496573.3970001;s:12:\"REQUEST_TIME\";i:1463496573;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:1:{s:1:\"q\";s:8:\"220915_6\";}'),(70,NULL,NULL,1463496637,1463496637,'1516_017',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:77:\"http://mypaprika.ru/catalog/jenskaya-odejda/puhoviki/nike/10318-puhovik-10317\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"46248\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=1516_017\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=1516_017\";s:11:\"REQUEST_URI\";s:18:\"/search?q=1516_017\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496637.28;s:12:\"REQUEST_TIME\";i:1463496637;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:8:\"1516_017\";}'),(71,NULL,NULL,1463496808,1463496808,'221215__074',1,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:37:\"http://mypaprika.ru/search?q=1516_017\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"55659\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"q=221215__074\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:13:\"q=221215__074\";s:11:\"REQUEST_URI\";s:21:\"/search?q=221215__074\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496808.148;s:12:\"REQUEST_TIME\";i:1463496808;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:11:\"221215__074\";}'),(72,NULL,NULL,1463496830,1463496830,'1316_704',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:40:\"http://mypaprika.ru/search?q=221215__074\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:520:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"56802\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=1316_704\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=1316_704\";s:11:\"REQUEST_URI\";s:18:\"/search?q=1316_704\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496830.7449999;s:12:\"REQUEST_TIME\";i:1463496830;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:7:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:8:\"1316_704\";}'),(73,NULL,NULL,1463496861,1463496861,'1316_709',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:37:\"http://mypaprika.ru/search?q=1316_704\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _gat=1; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58416\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=1316_709\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=1316_709\";s:11:\"REQUEST_URI\";s:18:\"/search?q=1316_709\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496861.017;s:12:\"REQUEST_TIME\";i:1463496861;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:4:\"_gat\";s:1:\"1\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:8:\"1316_709\";}'),(74,NULL,NULL,1463496886,1463496886,'221215__077',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:37:\"http://mypaprika.ru/search?q=1316_709\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59744\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"q=221215__077\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:13:\"q=221215__077\";s:11:\"REQUEST_URI\";s:21:\"/search?q=221215__077\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496886.681;s:12:\"REQUEST_TIME\";i:1463496886;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:11:\"221215__077\";}'),(75,NULL,NULL,1463496890,1463496890,'221215__077',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:40:\"http://mypaprika.ru/search?q=221215__077\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"59960\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"q=221215__077\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:13:\"q=221215__077\";s:11:\"REQUEST_URI\";s:21:\"/search?q=221215__077\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496890.9619999;s:12:\"REQUEST_TIME\";i:1463496890;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:11:\"221215__077\";}'),(76,NULL,NULL,1463496907,1463496907,'221215__074',1,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:40:\"http://mypaprika.ru/search?q=221215__077\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"60701\";s:21:\"REDIRECT_QUERY_STRING\";s:13:\"q=221215__074\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:13:\"q=221215__074\";s:11:\"REQUEST_URI\";s:21:\"/search?q=221215__074\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496907.803;s:12:\"REQUEST_TIME\";i:1463496907;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:11:\"221215__074\";}'),(77,NULL,NULL,1463496968,1463496968,'108_001',0,1,'188.32.102.1','Rxf-dEXtNOet0U0JsuGw5neO,qa','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36\";s:12:\"HTTP_REFERER\";s:40:\"http://mypaprika.ru/search?q=221215__074\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6%22%3B%7D; PHPSESSID=Rxf-dEXtNOet0U0JsuGw5neO%2Cqa; _ym_isad=2; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35703\";s:21:\"REDIRECT_QUERY_STRING\";s:9:\"q=108_001\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:9:\"q=108_001\";s:11:\"REQUEST_URI\";s:17:\"/search?q=108_001\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463496968.142;s:12:\"REQUEST_TIME\";i:1463496968;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"0ccc5205d86d79940438b5380b5791147e97d1e361fa9f498b6c4d9397900c6ca:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"NOoAptA6dBZPnAlFIWz-UEudLhiLn-I6\";}\";s:9:\"PHPSESSID\";s:27:\"Rxf-dEXtNOet0U0JsuGw5neO,qa\";s:8:\"_ym_isad\";s:1:\"2\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:7:\"108_001\";}'),(78,1,1,1463497787,1463497787,'1316_709',0,1,'80.243.13.242',',RLACO6oiUMOOVBmIHzCMUF71C1','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:13:\"80.243.13.242\";s:20:\"HTTP_X_FORWARDED_FOR\";s:13:\"80.243.13.242\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:525:\"_ym_uid=145684865713477242; _csrf=8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nn6c58YLv_aByIGt6qD_62FnH96PJGpV%22%3B%7D; _ym_isad=2; PHPSESSID=%2CRLACO6oiUMOOVBmIHzCMUF71C1; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1115269878.1463398402; _gat=1; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:13:\"80.243.13.242\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"35183\";s:21:\"REDIRECT_QUERY_STRING\";s:10:\"q=1316_709\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:10:\"q=1316_709\";s:11:\"REQUEST_URI\";s:18:\"/search?q=1316_709\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463497786.9159999;s:12:\"REQUEST_TIME\";i:1463497786;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:8:{s:7:\"_ym_uid\";s:18:\"145684865713477242\";s:5:\"_csrf\";s:130:\"8858fafe9d489c754806cfd48524e60a85642fb16aa36afd512754be5f18c6e0a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"nn6c58YLv_aByIGt6qD_62FnH96PJGpV\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\",RLACO6oiUMOOVBmIHzCMUF71C1\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1115269878.1463398402\";s:4:\"_gat\";s:1:\"1\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:8:\"1316_709\";}'),(79,1,1,1463525549,1463525549,'130416_001',1,1,'91.219.165.198','J1DJN7nPZF1nG0kOXIMz,gsMx,6','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"HTTP_REFERER\";s:88:\"http://mypaprika.ru/catalog/jenskaya-odejda/bluzki-rubashki/bandolera/12144-bluzka-12143\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:527:\"_ym_uid=1456855389898974791; PHPSESSID=J1DJN7nPZF1nG0kOXIMz%2CgsMx%2C6; _csrf=da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC%22%3B%7D; _gat=1; _ym_isad=2; _ga=GA1.2.569729298.1463422356; _ym_visorc_37379695=w; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58253\";s:21:\"REDIRECT_QUERY_STRING\";s:12:\"q=130416_001\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:12:\"q=130416_001\";s:11:\"REQUEST_URI\";s:20:\"/search?q=130416_001\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463525549.237;s:12:\"REQUEST_TIME\";i:1463525549;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:8:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:9:\"PHPSESSID\";s:27:\"J1DJN7nPZF1nG0kOXIMz,gsMx,6\";s:5:\"_csrf\";s:130:\"da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC\";}\";s:4:\"_gat\";s:1:\"1\";s:8:\"_ym_isad\";s:1:\"2\";s:3:\"_ga\";s:26:\"GA1.2.569729298.1463422356\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:1:{s:1:\"q\";s:10:\"130416_001\";}'),(80,1,1,1463525557,1463525557,'блузка',7,1,'91.219.165.198','J1DJN7nPZF1nG0kOXIMz,gsMx,6','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"eVBxR3JEMm4AIAYyLQUGJxUZOiBHaVY.NDwlGER1QS8IGhciEH1cLQ==\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:39:\"http://mypaprika.ru/search?q=130416_001\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:527:\"_ym_uid=1456855389898974791; PHPSESSID=J1DJN7nPZF1nG0kOXIMz%2CgsMx%2C6; _csrf=da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC%22%3B%7D; _gat=1; _ym_isad=2; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.569729298.1463422356; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58419\";s:21:\"REDIRECT_QUERY_STRING\";s:50:\"q=%D0%B1%D0%BB%D1%83%D0%B7%D0%BA%D0%B0&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:50:\"q=%D0%B1%D0%BB%D1%83%D0%B7%D0%BA%D0%B0&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:58:\"/search?q=%D0%B1%D0%BB%D1%83%D0%B7%D0%BA%D0%B0&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463525557.8440001;s:12:\"REQUEST_TIME\";i:1463525557;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:8:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:9:\"PHPSESSID\";s:27:\"J1DJN7nPZF1nG0kOXIMz,gsMx,6\";s:5:\"_csrf\";s:130:\"da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC\";}\";s:4:\"_gat\";s:1:\"1\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";s:3:\"_ga\";s:26:\"GA1.2.569729298.1463422356\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:2:{s:1:\"q\";s:12:\"блузка\";s:5:\"_pjax\";s:3:\"#w0\";}'),(81,1,1,1463525560,1463525560,'130416_001',1,1,'91.219.165.198','J1DJN7nPZF1nG0kOXIMz,gsMx,6','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:14:\"91.219.165.198\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"91.219.165.198\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"eVBxR3JEMm4AIAYyLQUGJxUZOiBHaVY.NDwlGER1QS8IGhciEH1cLQ==\";s:15:\"HTTP_USER_AGENT\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:65:\"http://mypaprika.ru/search?q=%D0%B1%D0%BB%D1%83%D0%B7%D0%BA%D0%B0\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:527:\"_ym_uid=1456855389898974791; PHPSESSID=J1DJN7nPZF1nG0kOXIMz%2CgsMx%2C6; _csrf=da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC%22%3B%7D; _gat=1; _ym_isad=2; _ga=GA1.2.569729298.1463422356; _ym_visorc_37379695=w; _identity=41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A46%3A%22%5B1%2C%22otv60YW-nV6-8GRI4La3vYNhu_-dmp_n%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:14:\"91.219.165.198\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"58489\";s:21:\"REDIRECT_QUERY_STRING\";s:24:\"q=130416_001&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:24:\"q=130416_001&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:32:\"/search?q=130416_001&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1463525560.75;s:12:\"REQUEST_TIME\";i:1463525560;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:1;}','a:8:{s:7:\"_ym_uid\";s:19:\"1456855389898974791\";s:9:\"PHPSESSID\";s:27:\"J1DJN7nPZF1nG0kOXIMz,gsMx,6\";s:5:\"_csrf\";s:130:\"da05bf5e98ae6605442be3436ffa1a65bbf572ed664c017135405a846612344da:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"ypwu_A4IlIKg5-dPMlT_61sAqJfeb9nC\";}\";s:4:\"_gat\";s:1:\"1\";s:8:\"_ym_isad\";s:1:\"2\";s:3:\"_ga\";s:26:\"GA1.2.569729298.1463422356\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:148:\"41ecb160c48828ffebf90492d8b55a3e97d9537f485f0807b02ee17a63f7e8d0a:2:{i:0;s:9:\"_identity\";i:1;s:46:\"[1,\"otv60YW-nV6-8GRI4La3vYNhu_-dmp_n\",2592000]\";}\";}','a:2:{s:1:\"q\";s:10:\"130416_001\";s:5:\"_pjax\";s:3:\"#w0\";}'),(82,NULL,NULL,1464872731,1464872731,'polo',0,1,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:38:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:74:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/mujskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39419\";s:21:\"REDIRECT_QUERY_STRING\";s:6:\"q=polo\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:6:\"q=polo\";s:11:\"REQUEST_URI\";s:14:\"/search?q=polo\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872731.4430001;s:12:\"REQUEST_TIME\";i:1464872731;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:1:{s:1:\"q\";s:4:\"polo\";}'),(83,NULL,NULL,1464872739,1464872739,'поло',28,3,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NXUudlkyWTF.Jk8cGHohblMCa0YDcA4GTUZpO24CK14HF00vdGA/fg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:33:\"http://mypaprika.ru/search?q=polo\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"39825\";s:21:\"REDIRECT_QUERY_STRING\";s:38:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:7:\"/search\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:38:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:46:\"/search?q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872739.5769999;s:12:\"REQUEST_TIME\";i:1464872739;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";}','a:2:{s:1:\"q\";s:8:\"поло\";s:5:\"_pjax\";s:3:\"#w0\";}'),(84,NULL,NULL,1464872756,1464872756,'поло',28,3,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NXUudlkyWTF.Jk8cGHohblMCa0YDcA4GTUZpO24CK14HF00vdGA/fg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:53:\"http://mypaprika.ru/search?q=%D0%BF%D0%BE%D0%BB%D0%BE\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"40780\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872756.5250001;s:12:\"REQUEST_TIME\";i:1464872756;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:8:\"поло\";s:5:\"_pjax\";s:3:\"#w0\";s:4:\"page\";s:1:\"2\";}'),(85,NULL,NULL,1464872784,1464872784,'поло',28,3,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NXUudlkyWTF.Jk8cGHohblMCa0YDcA4GTUZpO24CK14HF00vdGA/fg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:76:\"http://mypaprika.ru/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&page=2\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"42392\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=3&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=3&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=3&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872784.319;s:12:\"REQUEST_TIME\";i:1464872784;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:8:\"поло\";s:5:\"_pjax\";s:3:\"#w0\";s:4:\"page\";s:1:\"3\";}'),(86,NULL,NULL,1464872802,1464872802,'поло',28,3,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NXUudlkyWTF.Jk8cGHohblMCa0YDcA4GTUZpO24CK14HF00vdGA/fg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:76:\"http://mypaprika.ru/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&page=3\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"43465\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=2&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872802.977;s:12:\"REQUEST_TIME\";i:1464872802;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:8:\"поло\";s:5:\"_pjax\";s:3:\"#w0\";s:4:\"page\";s:1:\"2\";}'),(87,NULL,NULL,1464872815,1464872815,'поло',28,3,'188.32.102.1','6rjRIcQw-QH2g44Bq65O6V,XhRb','s1','a:42:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NXUudlkyWTF.Jk8cGHohblMCa0YDcA4GTUZpO24CK14HF00vdGA/fg==\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:11:\"HTTP_ACCEPT\";s:22:\"text/html, */*; q=0.01\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:11:\"HTTP_X_PJAX\";s:4:\"true\";s:21:\"HTTP_X_PJAX_CONTAINER\";s:3:\"#w0\";s:12:\"HTTP_REFERER\";s:76:\"http://mypaprika.ru/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&page=2\";s:20:\"HTTP_ACCEPT_ENCODING\";s:19:\"gzip, deflate, sdch\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:528:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=6rjRIcQw-QH2g44Bq65O6V%2CXhRb; _gat=1; _ga=GA1.2.1775537637.1463398311; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"44226\";s:21:\"REDIRECT_QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=1&_pjax=%23w0\";s:12:\"REDIRECT_URL\";s:23:\"/cmsSearch/result/index\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:3:\"GET\";s:12:\"QUERY_STRING\";s:57:\"q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=1&_pjax=%23w0\";s:11:\"REQUEST_URI\";s:81:\"/cmsSearch/result/index?q=%D0%BF%D0%BE%D0%BB%D0%BE&_pjax=%23w0&page=1&_pjax=%23w0\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464872815.868;s:12:\"REQUEST_TIME\";i:1464872815;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"6rjRIcQw-QH2g44Bq65O6V,XhRb\";s:4:\"_gat\";s:1:\"1\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:3:{s:1:\"q\";s:8:\"поло\";s:5:\"_pjax\";s:3:\"#w0\";s:4:\"page\";s:1:\"1\";}');
/*!40000 ALTER TABLE `cms_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_search_phrase` with 87 row(s)
--

--
-- Table structure for table `cms_site`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `def` char(1) NOT NULL DEFAULT 'N',
  `priority` int(11) NOT NULL DEFAULT '500',
  `code` char(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `server_name__to_dell` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `active` (`active`),
  KEY `server_name` (`server_name__to_dell`),
  KEY `def` (`def`),
  KEY `priority` (`priority`),
  KEY `cms_site__image_id` (`image_id`),
  CONSTRAINT `cms_site_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Сайты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_site` VALUES (1,1,1,1432128290,1445584852,'Y','Y',50,'s1','Сайт 1','','',NULL);
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_site` with 1 row(s)
--

--
-- Table structure for table `cms_site_domain`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `domain` varchar(255) NOT NULL,
  `cms_site_id` int(11) NOT NULL,
  `is_main` int(1) unsigned DEFAULT NULL COMMENT 'Основной домен?',
  `is_https` int(1) unsigned DEFAULT NULL COMMENT 'Работает через https?',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`),
  UNIQUE KEY `is_main_unique_for_site` (`is_main`,`cms_site_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_site_id` (`cms_site_id`),
  KEY `is_https` (`is_https`),
  KEY `is_main` (`is_main`),
  CONSTRAINT `cms_site_domain_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_domain_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_site_domain__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Доменные имена сайтов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site_domain`
--

LOCK TABLES `cms_site_domain` WRITE;
/*!40000 ALTER TABLE `cms_site_domain` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_site_domain` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_site_domain` with 0 row(s)
--

--
-- Table structure for table `cms_storage_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_storage_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_id` varchar(16) DEFAULT NULL,
  `cluster_file` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `size` bigint(32) DEFAULT NULL,
  `mime_type` varchar(16) DEFAULT NULL,
  `extension` varchar(16) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `name_to_save` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description_short` text,
  `description_full` text,
  `image_height` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cluster_id` (`cluster_id`,`cluster_file`),
  KEY `cluster_id_2` (`cluster_id`),
  KEY `cluster_file` (`cluster_file`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `size` (`size`),
  KEY `extension` (`extension`),
  KEY `name_to_save` (`name_to_save`),
  KEY `name` (`name`),
  KEY `mime_type` (`mime_type`),
  KEY `image_height` (`image_height`),
  KEY `image_width` (`image_width`),
  KEY `cms_storage_file_priority` (`priority`),
  CONSTRAINT `storage_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `storage_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16832 DEFAULT CHARSET=utf8 COMMENT='Файл';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_storage_file`
--

LOCK TABLES `cms_storage_file` WRITE;
/*!40000 ALTER TABLE `cms_storage_file` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_storage_file` VALUES (16821,'local','1d/16/81/1d168192a713d704d554aa7eb6f30e58.jpg',1,1,1465237779,1465237779,201832,'image/jpeg','jpg','7157b51ba73f20b3be03829abbbd4ffd.jpg',NULL,'Слайд 1',NULL,NULL,450,1168,100),(16822,'local','ac/72/62/ac72628a8025e8857dcfc3cab5cce59b.jpg',1,1,1465237809,1465237809,224596,'image/jpeg','jpg','84845817e06548874cee587f1234ff6d.jpg',NULL,'Слайд 3',NULL,NULL,450,1168,100),(16824,'local','08/16/13/081613b9ff54e5ce032e759b7d0b11fb.jpg',1,1,1465241633,1465241633,47476,'image/jpeg','jpg','d5a56cbaf68da17e6707adebbde73c38.jpg',NULL,'Adidas',NULL,NULL,200,535,100),(16825,'local','0d/8f/26/0d8f26aef4648eb3304ef7498de5fe73.png',1,1,1465241655,1465241655,37362,'image/png','png','868c19c9f93860fb68c2ff4fa28cc19a.png',NULL,'Nike',NULL,NULL,424,600,100),(16826,'local','1a/a1/bc/1aa1bc4b9d3bca1abba928a7579f7deb.jpg',1,1,1465241937,1465241937,60954,'image/jpeg','jpg','img_0735_1.jpg',NULL,'Мужской зонт-трость',NULL,NULL,1200,1440,100),(16827,'local','c4/b3/f6/c4b3f62602030ce6f777840732f01a80.jpg',1,1,1465242028,1465242028,60954,'image/jpeg','jpg','1aa1bc4b9d3bca1abba928a7579f7deb.jpg',NULL,'Зонтики',NULL,NULL,1200,1440,100),(16828,'local','77/15/f9/7715f9068395b5c0bb695dabe7cc723f.jpg',1,1,1465245549,1465245550,1630108,'image/jpeg','jpg','img_0974.jpg',NULL,'Женский зонт',NULL,NULL,1200,1200,100),(16829,'local','b5/17/e4/b517e480cf8bc89086b4d40198c6f8df.gif',1,1,1465302217,1465302218,88732,'image/gif','gif','1e3c95cb8cfcf687c5d73f94e4fab24e.gif',NULL,'Доставка и оплата',NULL,NULL,536,450,100),(16830,'local','79/68/1b/79681b30c9fdf88770962e5020c5e7c7.png',1,1,1465302232,1465302232,145443,'image/png','png','a2af7c4bdd7a6d5888b26d21ba43d2e6.png',NULL,'Доставка и оплата',NULL,NULL,453,842,100),(16831,'local','09/21/16/0921164132bc2c153b9b1af9edf86b9a.jpg',1,1,1465302246,1465302246,93106,'image/jpeg','jpg','13a72b373672f1e5722883bef8503935.jpg',NULL,'Доставка и оплата',NULL,NULL,348,465,100);
/*!40000 ALTER TABLE `cms_storage_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_storage_file` with 10 row(s)
--

--
-- Table structure for table `cms_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_full_id` int(11) DEFAULT NULL,
  `description_short` longtext,
  `description_full` longtext,
  `code` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pids` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `dir` varchar(500) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `published_at` int(11) DEFAULT NULL,
  `redirect` varchar(500) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `tree_type_id` int(11) DEFAULT NULL,
  `description_short_type` varchar(10) NOT NULL DEFAULT 'text',
  `description_full_type` varchar(10) NOT NULL DEFAULT 'text',
  `redirect_tree_id` int(11) DEFAULT NULL,
  `redirect_code` int(11) NOT NULL DEFAULT '301',
  `name_hidden` varchar(255) DEFAULT NULL,
  `view_file` varchar(128) DEFAULT NULL,
  `cms_site_id` int(11) DEFAULT NULL,
  `seo_h1` varchar(255) NOT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_2` (`pid`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `seo_page_name` (`code`),
  KEY `pid` (`pid`),
  KEY `pids` (`pids`),
  KEY `level` (`level`),
  KEY `priority` (`priority`),
  KEY `published_at` (`published_at`),
  KEY `redirect` (`redirect`(255)),
  KEY `meta_title` (`meta_title`(255)),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `description_short_type` (`description_short_type`),
  KEY `description_full_type` (`description_full_type`),
  KEY `image_id` (`image_id`),
  KEY `image_full_id` (`image_full_id`),
  KEY `redirect_tree_id` (`redirect_tree_id`),
  KEY `redirect_code` (`redirect_code`),
  KEY `name_hidden` (`name_hidden`),
  KEY `view_file` (`view_file`),
  KEY `cms_site_id` (`cms_site_id`),
  KEY `cms_tree__site_dir` (`dir`(255),`cms_site_id`),
  KEY `seo_h1` (`seo_h1`),
  KEY `external_id` (`external_id`),
  CONSTRAINT `cms_tree_pid_cms_tree` FOREIGN KEY (`pid`) REFERENCES `cms_tree` (`id`),
  CONSTRAINT `cms_tree_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__image_full_id` FOREIGN KEY (`image_full_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__redirect_tree_id` FOREIGN KEY (`redirect_tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1432 DEFAULT CHARSET=utf8 COMMENT='Страницы дерево';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree`
--

LOCK TABLES `cms_tree` WRITE;
/*!40000 ALTER TABLE `cms_tree` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree` VALUES (1,1,1,1416084922,1465241756,'Главная страница',NULL,NULL,'','',NULL,NULL,'1',0,NULL,0,NULL,'','N','Магазин одежды','Магазин одежды','',1,'text','editor',NULL,301,'','',1,'',NULL),(9,1,1,1442576764,1465241761,'Каталог',NULL,NULL,'','','catalog',1,'1/9',1,'catalog',200,NULL,'','Y','','','',5,'text','text',NULL,301,'','',1,'',NULL),(17,1,1,1442577460,1465241761,'Контакты',NULL,NULL,'','<h1 style=\"font-family: Pfdindisplaypro-reg; margin: 0px 0px 20px; color: rgb(14, 14, 14); line-height: normal; font-size: 26px !important;\"><br />\r\n&nbsp;</h1>\r\n','contacts',1,'1/17',1,'contacts',500,NULL,'','Y','Контакты мотосалона, Москва, МКАД, ТК \"АНГАР АВТО\" (2 этаж, левое крыло мотосалон SELECT MOTO)','Контактная информация Select-moto: Email: selectmoto@yandex.ru, +7 (499) 390-89-58, Москва, МКАД, ТК \"АНГАР АВТО\" (2 этаж, левое крыло мотосалон SELECT MOTO)','',2,'text','editor',NULL,301,'','contacts',1,'',NULL),(70,1,1,1456996581,1465241761,'Бренды',NULL,NULL,'','','brands',1,'1/70',1,'brands',300,NULL,'','Y','','','',2,'text','text',NULL,301,'','brands',1,'',NULL),(76,1,1,1457010208,1465241761,'Распродажа',NULL,NULL,'','','rasprodaja',1,'1/76',1,'rasprodaja',400,NULL,'','Y','','','',2,'text','text',NULL,301,'','sale',1,'',NULL),(77,1,1,1457010249,1465302250,'Доставка и оплата',NULL,NULL,'','<p style=\"line-height: 20.8px;\"><strong><span style=\"font-size: 16px;\"><u>Доставка</u></span></strong></p>\r\n\r\n<p style=\"line-height: 20.8px;\"><u><strong>Курьерская доставка по Москве</strong></u></p>\r\n\r\n<p style=\"line-height: 20.8px;\">Курьерская служба&nbsp;<strong>jhanway</strong>&nbsp;аккуратно доставит Ваш заказ в пределах МКАД на следующий день после заказа. Теперь у Вас есть возможность оплатить заказ после примерки.&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\">&nbsp; &nbsp;<img alt=\"\" src=\"/uploads/all/b5/17/e4/b517e480cf8bc89086b4d40198c6f8df.gif\" style=\"width: 450px; height: 536px;\" /></p>\r\n\r\n<p style=\"line-height: 20.8px;\"><strong>Стоимость доставки в пределах МКАД:</strong></p>\r\n\r\n<ul style=\"line-height: 20.8px;\">\r\n	<li>При единовременном заказе от 3000&nbsp;рублей - включена в стоимость заказа*&nbsp;</li>\r\n	<li>При заказе до 3000&nbsp;рублей - 280 рублей</li>\r\n	<li>Выезд курьера за пределы МКАД уточняйте у оператора</li>\r\n</ul>\r\n\r\n<p style=\"line-height: 20.8px;\"><span style=\"font-size: 10px; line-height: 16px;\">*Если одежда Вам&nbsp;не подошла&nbsp;оплачивается услуга курьерской доставки.</span></p>\r\n\r\n<hr />\r\n<p style=\"line-height: 20.8px;\">&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\"><u><strong>Экспресс доставка по России</strong></u></p>\r\n\r\n<p style=\"line-height: 20.8px;\">Интернет магазин jhanway&nbsp;имеет возможность доставки вашего заказа в любой регион Российской Федерации. Мы работаем с надежными службами доставки <span style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: normal;\">&nbsp;</span><a href=\"http://emspost.ru/ru/\" style=\"color: rgb(56, 176, 227); font-family: Arial, Helvetica, sans-serif; line-height: normal; font-size: 12px; cursor: pointer;\">EMS RUSSIAN POST</a><span style=\"color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: normal;\">,&nbsp;</span><a href=\"http://www.ponyexpress.ru/\" style=\"color: rgb(56, 176, 227); font-family: Arial, Helvetica, sans-serif; line-height: normal; font-size: 12px; cursor: pointer;\">PONY EXPRESS</a>. &nbsp;Сроки доставки зависят от удаленности от Москвы (средний срок получения от 2 до 7 рабочих дней)&nbsp;<img alt=\"\" src=\"/uploads/all/79/68/1b/79681b30c9fdf88770962e5020c5e7c7.png\" style=\"width: 842px; height: 453px;\" /></p>\r\n\r\n<p style=\"line-height: 20.8px;\"><strong>Стоимость доставки в пределах РФ:</strong></p>\r\n\r\n<ul style=\"line-height: 20.8px;\">\r\n	<li><span style=\"line-height: 20.8px;\">При единовременном заказе от 5990&nbsp;рублей - включена в стоимость заказа</span></li>\r\n	<li><span style=\"line-height: 20.8px;\">При заказе до 5990 рублей - 300-700 рублей&nbsp;</span><span style=\"line-height: 20.8px;\">&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<p><span style=\"line-height: 20.8px;\">За подробной информацией о сроках&nbsp;получения и&nbsp;расчете стоимости&nbsp;перейдите на сайт.</span></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\"><strong><span style=\"font-size: 16px;\"><u><span style=\"line-height: 20.8px;\">Оплата</span></u></span></strong></p>\r\n\r\n<p style=\"line-height: 20.8px;\">В пределах Москвы производится курьеру.&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\">Оформите&nbsp;экспресс доставку&nbsp;по России,&nbsp;оплата&nbsp;при&nbsp;получении в пункте выдачи.&nbsp;</p>\r\n\r\n<p style=\"line-height: 20.8px;\"><strong><u>Способы оплаты:&nbsp;</u></strong></p>\r\n\r\n<p style=\"line-height: 20.8px;\"><strong><u><img alt=\"\" src=\"/uploads/all/09/21/16/0921164132bc2c153b9b1af9edf86b9a.jpg\" style=\"margin-left: 25px; margin-right: 25px; width: 400px; height: 299px;\" /></u></strong></p>\r\n\r\n<ul style=\"line-height: 20.8px;\">\r\n	<li>Внимание! &nbsp;при оплате банковской картой&nbsp;просим заранее уведомить оператора при оформлении заказа.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n','dostavka',1,'1/77',1,'dostavka',600,NULL,'','Y','','','',2,'text','editor',NULL,301,'','',1,'',NULL),(1343,1,1,1460532540,1465241761,'Обратная связь',NULL,NULL,'','','feedback',1,'1/1343',1,'feedback',700,NULL,'','N','','','',2,'text','text',NULL,301,'','feedback',1,'',NULL),(1422,1,1,1465224555,1465241477,'Аксессуары',NULL,NULL,NULL,NULL,'aksessuaryi',9,'1/9/1422',2,'catalog/aksessuaryi',400,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1423,1,1,1465224565,1465241477,'Одежда',NULL,NULL,NULL,NULL,'odejda',9,'1/9/1423',2,'catalog/odejda',500,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1424,1,1,1465224641,1465241477,'Обувь',NULL,NULL,NULL,NULL,'obuv',9,'1/9/1424',2,'catalog/obuv',600,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1425,1,1,1465224649,1465224649,'Зонты',NULL,NULL,NULL,NULL,'zontyi',1422,'1/9/1422/1425',3,'catalog/aksessuaryi/zontyi',100,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1426,1,1,1465224656,1465224656,'Кошельки',NULL,NULL,NULL,NULL,'koshelki',1422,'1/9/1422/1426',3,'catalog/aksessuaryi/koshelki',200,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1427,1,1,1465224662,1465224662,'Платки',NULL,NULL,NULL,NULL,'platki',1422,'1/9/1422/1427',3,'catalog/aksessuaryi/platki',300,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1428,1,1,1465241441,1465242028,'Зонтики',16827,NULL,'','','zontiki',9,'1/9/1428',2,'catalog/zontiki',100,NULL,'','Y','','','',5,'text','text',NULL,301,'','',1,'',NULL),(1429,1,1,1465241461,1465241477,'Платки',NULL,NULL,NULL,NULL,'platki',9,'1/9/1429',2,'catalog/platki',200,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1430,1,1,1465241465,1465241477,'Кошельки',NULL,NULL,NULL,NULL,'koshelki',9,'1/9/1430',2,'catalog/koshelki',300,NULL,NULL,'Y',NULL,NULL,NULL,5,'text','text',NULL,301,NULL,NULL,1,'',NULL),(1431,1,1,1465241756,1465241774,'Главная',NULL,NULL,'','','glavnaya',1,'1/1431',1,'glavnaya',100,NULL,'','Y','','','',2,'text','text',1,301,'','',1,'',NULL);
/*!40000 ALTER TABLE `cms_tree` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree` with 17 row(s)
--

--
-- Table structure for table `cms_tree_file`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_file_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_file__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_file__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_file`
--

LOCK TABLES `cms_tree_file` WRITE;
/*!40000 ALTER TABLE `cms_tree_file` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_file` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_file` with 0 row(s)
--

--
-- Table structure for table `cms_tree_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `storage_file_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_file_id__tree_id` (`storage_file_id`,`tree_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `storage_file_id` (`storage_file_id`),
  KEY `tree_id` (`tree_id`),
  KEY `priority` (`priority`),
  CONSTRAINT `cms_tree_image_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_image__storage_file_id` FOREIGN KEY (`storage_file_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_image__tree_id` FOREIGN KEY (`tree_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Связь разделов и файлов изображений';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_image`
--

LOCK TABLES `cms_tree_image` WRITE;
/*!40000 ALTER TABLE `cms_tree_image` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree_image` VALUES (1,1,1,1465302217,1465302217,16829,77,100),(2,1,1,1465302232,1465302232,16830,77,100),(3,1,1,1465302246,1465302246,16831,77,100);
/*!40000 ALTER TABLE `cms_tree_image` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_image` with 3 row(s)
--

--
-- Table structure for table `cms_tree_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value_bool` tinyint(1) DEFAULT NULL,
  `value_num2` decimal(18,4) DEFAULT NULL,
  `value_int2` int(11) DEFAULT NULL,
  `value_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  KEY `value_num2` (`value_num2`),
  KEY `value_int2` (`value_int2`),
  KEY `value_string` (`value_string`),
  CONSTRAINT `cms_tree_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_property__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_property__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_property`
--

LOCK TABLES `cms_tree_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree_property` VALUES (15,1,1,1456689350,1465224598,2,17,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(16,1,1,1456996592,1457986623,2,70,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(27,1,1,1457345941,1457986623,3,70,'/uploads/inbox/icons/brand-menu.png',0,0.0000,NULL,NULL,NULL,NULL,NULL),(30,1,1,1457346478,1465224598,3,17,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(31,1,1,1457346537,1465302250,3,77,'/uploads/inbox/icons/delivery-menu2.png',0,0.0000,NULL,NULL,NULL,NULL,NULL),(32,1,1,1457346537,1465302250,2,77,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(33,1,1,1457346633,1460028192,3,76,'/uploads/inbox/icons/clock-menu.png',0,0.0000,NULL,NULL,NULL,NULL,NULL),(34,1,1,1457346633,1460028192,2,76,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(728,1,1,1460532553,1460532631,3,1343,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(729,1,1,1460532553,1460532631,2,1343,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(734,1,1,1465238561,1465241578,4,1,'/uploads/inbox/bg/pictureHD51a37f0a69d6428482.jpg',0,0.0000,NULL,NULL,NULL,NULL,NULL),(735,1,1,1465241541,1465241541,5,1428,'/uploads/inbox/bg/518586_%D1%80%D0%B0%D0%B7%D0%BD%D0%BE%D1%86%D0%B2%D0%B5%D1%82%D0%BD%D1%8B%D0%B5_%20%D0%97%D0%BE%D0%BD%D1%82%D0%B8%D0%BA%D0%B8_%20%D0%BD%D0%B5%D0%B1%D0%BE_gallery.world.jpg',0,0.0000,NULL,NULL,NULL,NULL,NULL),(736,1,1,1465241774,1465241774,3,1431,'',0,0.0000,NULL,NULL,NULL,NULL,NULL),(737,1,1,1465241774,1465241774,2,1431,'',0,0.0000,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_tree_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_property` with 14 row(s)
--

--
-- Table structure for table `cms_tree_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `description` text,
  `index_for_search` char(1) NOT NULL DEFAULT 'Y',
  `name_meny` varchar(100) DEFAULT NULL,
  `name_one` varchar(100) DEFAULT NULL,
  `view_file` varchar(255) DEFAULT NULL,
  `default_children_tree_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `index_for_search` (`index_for_search`),
  KEY `name_meny` (`name_meny`),
  KEY `name_one` (`name_one`),
  KEY `viewFile` (`view_file`),
  KEY `default_children_tree_type` (`default_children_tree_type`),
  CONSTRAINT `cms_tree_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type__default_children_tree_type` FOREIGN KEY (`default_children_tree_type`) REFERENCES `cms_tree_type` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Тип раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type`
--

LOCK TABLES `cms_tree_type` WRITE;
/*!40000 ALTER TABLE `cms_tree_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree_type` VALUES (1,1,1,1439037415,1445597589,'Главный раздел','home','Y',100,NULL,'','Разделы','Раздел','',2),(2,1,1,1439037424,1445597893,'Текстовый раздел','text','Y',500,NULL,'','Разделы','Раздел','',NULL),(5,1,1,1442576799,1442576799,'Раздел каталога','catalog','Y',500,NULL,'','Разделы','Раздел',NULL,NULL);
/*!40000 ALTER TABLE `cms_tree_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_type` with 3 row(s)
--

--
-- Table structure for table `cms_tree_type_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` longtext,
  `hint` varchar(255) DEFAULT NULL,
  `tree_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_2` (`code`,`tree_type_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `multiple` (`multiple`),
  KEY `is_required` (`is_required`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `tree_type_id` (`tree_type_id`),
  KEY `code` (`code`) USING BTREE,
  CONSTRAINT `cms_tree_type_property_tree_type_id` FOREIGN KEY (`tree_type_id`) REFERENCES `cms_tree_type` (`id`),
  CONSTRAINT `cms_tree_type_property__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_property__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property`
--

LOCK TABLES `cms_tree_type_property` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_tree_type_property` VALUES (2,1,1,1449077319,1457336646,'Прозрачность фона','opacity','Y',2000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',2),(3,1,1,1457336638,1457336645,'Иконка для меню','icon','Y',1000,'S','N','N','skeeks\\cms\\relatedProperties\\userPropertyTypes\\UserPropertyTypeSelectFile','','',2),(4,1,1,1465238305,1465238305,'Фон','bg','Y',500,'S','N','N','skeeks\\cms\\relatedProperties\\userPropertyTypes\\UserPropertyTypeSelectFile','b:0;','',1),(5,1,1,1465238335,1465238335,'фон','bg','Y',500,'S','N','N','skeeks\\cms\\relatedProperties\\userPropertyTypes\\UserPropertyTypeSelectFile','b:0;','',5);
/*!40000 ALTER TABLE `cms_tree_type_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_type_property` with 4 row(s)
--

--
-- Table structure for table `cms_tree_type_property2type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property2type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_tree_type_property_id` int(11) NOT NULL,
  `cms_tree_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `property2content` (`cms_tree_type_property_id`,`cms_tree_type_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_tree_type_property_id` (`cms_tree_type_property_id`),
  KEY `cms_tree_type_id` (`cms_tree_type_id`),
  CONSTRAINT `cms_tree_type_property2type__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_property2type__property_id` FOREIGN KEY (`cms_tree_type_property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_type_property2type__type_id` FOREIGN KEY (`cms_tree_type_id`) REFERENCES `cms_tree_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_type_property2type__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property2type`
--

LOCK TABLES `cms_tree_type_property2type` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property2type` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_type_property2type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_type_property2type` with 0 row(s)
--

--
-- Table structure for table `cms_tree_type_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_tree_type_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_tree_type_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_tree_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_tree_type_property_enum__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_tree_type_property_enum__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств для разделов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_tree_type_property_enum`
--

LOCK TABLES `cms_tree_type_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_tree_type_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_tree_type_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_tree_type_property_enum` with 0 row(s)
--

--
-- Table structure for table `cms_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `_to_del_name` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gender` enum('men','women') NOT NULL DEFAULT 'men',
  `active` char(1) NOT NULL DEFAULT 'Y',
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `logged_at` int(11) DEFAULT NULL,
  `last_activity_at` int(11) DEFAULT NULL,
  `last_admin_activity_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email_is_approved` int(1) unsigned NOT NULL DEFAULT '0',
  `phone_is_approved` int(1) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `patronymic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `password_hash` (`password_hash`),
  KEY `password_reset_token` (`password_reset_token`),
  KEY `name` (`_to_del_name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `logged_at` (`logged_at`),
  KEY `last_activity_at` (`last_activity_at`),
  KEY `last_admin_activity_at` (`last_admin_activity_at`),
  KEY `image_id` (`image_id`),
  KEY `phone_is_approved` (`phone_is_approved`),
  KEY `email_is_approved` (`email_is_approved`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`),
  KEY `patronymic` (`patronymic`),
  KEY `full_name_index` (`first_name`,`last_name`,`patronymic`),
  CONSTRAINT `cms_user_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user__image_id` FOREIGN KEY (`image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Пользователь';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user`
--

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user` VALUES (1,'root','otv60YW-nV6-8GRI4La3vYNhu_-dmp_n','$2y$13$XTKRoM1rCQp/ePQJGmUicuZAwKWZJhbNNNmSa7LZt01.MJn69gPT2','xBzwPlxW6XqmJtV_cCtmI_8lmHjISRBn_1443102807',NULL,1578902675,'Семенов Александр',NULL,'men','Y',1,NULL,1578902644,1578902675,1578902675,'semenov@skeeks.com','+7 906 645-26-12',1,0,'Александр','Семенов','Сергеевич');
/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user` with 1 row(s)
--

--
-- Table structure for table `cms_user_authclient`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_authclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `provider_identifier` varchar(100) DEFAULT NULL,
  `provider_data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `provider` (`provider`),
  KEY `provider_identifier` (`provider_identifier`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_authclient`
--

LOCK TABLES `cms_user_authclient` WRITE;
/*!40000 ALTER TABLE `cms_user_authclient` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user_authclient` VALUES (2,1,'vkontakte','2932956','{\"user_id\":2932956,\"uid\":2932956,\"first_name\":\"Александр\",\"last_name\":\"Семенов\",\"sex\":2,\"nickname\":\"\",\"screen_name\":\"semenovsanek\",\"bdate\":\"10.12.1988\",\"city\":1463,\"country\":1,\"timezone\":3,\"photo\":\"http://cs313624.vk.me/v313624956/cd90/K8W0fHiYa8g.jpg\",\"id\":2932956}',NULL,NULL);
/*!40000 ALTER TABLE `cms_user_authclient` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_authclient` with 1 row(s)
--

--
-- Table structure for table `cms_user_email`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `is_approved` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Email подтвержден?',
  `is_main` int(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Email главный у пользователя?',
  `approved_key_at` int(11) DEFAULT NULL COMMENT 'Время генерации и отправки ключа?',
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `is_approved` (`is_approved`),
  KEY `is_main` (`is_main`),
  KEY `approved_key_at` (`approved_key_at`),
  KEY `cms_user_id` (`cms_user_id`),
  CONSTRAINT `cms_user_email__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_email`
--

LOCK TABLES `cms_user_email` WRITE;
/*!40000 ALTER TABLE `cms_user_email` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user_email` VALUES (2,1,'semenov@skeeks.com',NULL,1443087856,1457791949,0,0,NULL);
/*!40000 ALTER TABLE `cms_user_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_email` with 1 row(s)
--

--
-- Table structure for table `cms_user_phone`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `def` varchar(1) NOT NULL DEFAULT 'N',
  `approved_key` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`),
  KEY `approved_key` (`approved_key`),
  KEY `approved` (`approved`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  CONSTRAINT `cms_user_phone_user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_phone`
--

LOCK TABLES `cms_user_phone` WRITE;
/*!40000 ALTER TABLE `cms_user_phone` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `cms_user_phone` VALUES (4,1,'+7 906 645-26-12','N','Y',NULL,1443102185,1457791949);
/*!40000 ALTER TABLE `cms_user_phone` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_phone` with 1 row(s)
--

--
-- Table structure for table `cms_user_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value_bool` tinyint(1) DEFAULT NULL,
  `value_num2` decimal(18,4) DEFAULT NULL,
  `value_int2` int(11) DEFAULT NULL,
  `value_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  KEY `value_num2` (`value_num2`),
  KEY `value_int2` (`value_int2`),
  KEY `value_string` (`value_string`),
  CONSTRAINT `cms_user_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_property`
--

LOCK TABLES `cms_user_property` WRITE;
/*!40000 ALTER TABLE `cms_user_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_property` with 0 row(s)
--

--
-- Table structure for table `cms_user_universal_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `multiple` (`multiple`),
  KEY `is_required` (`is_required`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  CONSTRAINT `cms_user_universal_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Свойства пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property`
--

LOCK TABLES `cms_user_universal_property` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_universal_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_universal_property` with 0 row(s)
--

--
-- Table structure for table `cms_user_universal_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user_universal_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `cms_user_universal_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `cms_user_universal_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `cms_user_universal_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cms_user_universal_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user_universal_property_enum`
--

LOCK TABLES `cms_user_universal_property_enum` WRITE;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `cms_user_universal_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `cms_user_universal_property_enum` with 0 row(s)
--

--
-- Table structure for table `export_task`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT 'Export type (csv, xml)',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'description',
  `component` varchar(255) NOT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  CONSTRAINT `export_task__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `export_task__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tasks for export';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_task`
--

LOCK TABLES `export_task` WRITE;
/*!40000 ALTER TABLE `export_task` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `export_task` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `export_task` with 0 row(s)
--

--
-- Table structure for table `form2_form`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `code` varchar(32) DEFAULT NULL,
  `emails` text,
  `phones` text,
  `user_ids` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  CONSTRAINT `form2_form_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Формы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form`
--

LOCK TABLES `form2_form` WRITE;
/*!40000 ALTER TABLE `form2_form` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form` VALUES (2,1,1,1445106305,1465224969,'Обратная связь','','feedback','','',''),(4,1,1,1457354076,1465224962,'Заказать звонок','','callback','','',NULL);
/*!40000 ALTER TABLE `form2_form` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `form2_form` with 2 row(s)
--

--
-- Table structure for table `form2_form_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`,`form_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `multiple` (`multiple`),
  KEY `is_required` (`is_required`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `form_id` (`form_id`),
  CONSTRAINT `form2_form_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_form2_form` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Свойство раздела';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property`
--

LOCK TABLES `form2_form_property` WRITE;
/*!40000 ALTER TABLE `form2_form_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form_property` VALUES (2,1,1,1445106328,1445555040,'Телефон','property77a7cc55fa8579d0cc5a1e7ed69cb36a','Y',1000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',2),(3,1,1,1445106345,1445555040,'Email','propertyE8b3f4d817d378f70f0f3960cabb3fb8','Y',2000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',2),(4,1,1,1445106366,1446240917,'Сообщение','property6f35ee36d83ffd4a838167dd9d9b1d9f','Y',3000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','a:10:{s:4:\"code\";s:1:\"S\";s:4:\"name\";s:10:\"Текст\";s:12:\"fieldElement\";s:8:\"textarea\";s:4:\"rows\";s:1:\"5\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}','',2),(10,1,1,1457354093,1457354107,'Телефон','phone','Y',2000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',4),(11,1,1,1457354103,1457354107,'Имя','property2f8824b657f9c61ddd5959a791ca433d','Y',1000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',4);
/*!40000 ALTER TABLE `form2_form_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `form2_form_property` with 5 row(s)
--

--
-- Table structure for table `form2_form_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `form2_form_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_property_enum`
--

LOCK TABLES `form2_form_property_enum` WRITE;
/*!40000 ALTER TABLE `form2_form_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `form2_form_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `form2_form_property_enum` with 0 row(s)
--

--
-- Table structure for table `form2_form_send`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `data_values` text,
  `data_labels` text,
  `emails` text,
  `phones` text,
  `user_ids` text,
  `email_message` text,
  `phone_message` text,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `form_id` int(255) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `page_url` varchar(500) DEFAULT NULL,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `additional_data` text,
  `comment` text,
  `cms_site_id` int(11) DEFAULT NULL,
  `utms` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `form_id` (`form_id`),
  KEY `processed_by` (`processed_by`),
  KEY `processed_at` (`processed_at`),
  KEY `status` (`status`),
  KEY `ip` (`ip`),
  KEY `page_url` (`page_url`(255)),
  KEY `form2_form_send__cms_site_id` (`cms_site_id`),
  CONSTRAINT `form2_form_send_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_form_id` FOREIGN KEY (`form_id`) REFERENCES `form2_form` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='Сообщения с форм';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send`
--

LOCK TABLES `form2_form_send` WRITE;
/*!40000 ALTER TABLE `form2_form_send` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form_send` VALUES (72,NULL,NULL,1461938502,1462259367,NULL,1462259367,'a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";N;s:5:\"phone\";N;}','a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:6:\"Имя\";s:5:\"phone\";s:14:\"Телефон\";}','paprikam@bk.ru','',NULL,NULL,NULL,5,4,'188.32.102.1','http://mypaprika.ru/catalog/mujskaya-odejda','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"357\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:19:\"http://mypaprika.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"NVowbkRsX3FzD2QeBiYZNl0iBD59HGpcZB9cOgdVbUhNElUCHCA7XA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:43:\"http://mypaprika.ru/catalog/mujskaya-odejda\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:450:\"_ym_uid=14579514201026044407; _csrf=ffc38ab8e3b6cf78069f436488f0f4fec7ba6203f52981501cdd46b59829fa61a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22FUTpBJFGhx4P9p5-QElTC929xHelXLd-%22%3B%7D; PHPSESSID=PGaZMFQZmTj64F8UqRa3OHsqSFa; _identity=f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"34760\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1461938502.7620001;s:12:\"REQUEST_TIME\";i:1461938502;}','a:3:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"ffc38ab8e3b6cf78069f436488f0f4fec7ba6203f52981501cdd46b59829fa61a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"FUTpBJFGhx4P9p5-QElTC929xHelXLd-\";}\";s:9:\"PHPSESSID\";s:27:\"PGaZMFQZmTj64F8UqRa3OHsqSFa\";s:9:\"_identity\";s:149:\"f56c28d656603726337d0f455219107c7ba4452e52585db4673365ecac388d38a:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"NVowbkRsX3FzD2QeBiYZNl0iBD59HGpcZB9cOgdVbUhNElUCHCA7XA==\";s:14:\"sx-model-value\";s:1:\"4\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:33:\"Руслан Валерьевич\";s:5:\"phone\";s:11:\"89856491886\";}}','',NULL,1,NULL),(73,NULL,NULL,1462259340,1462259378,NULL,1462259378,'a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";N;s:5:\"phone\";N;}','a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:6:\"Имя\";s:5:\"phone\";s:14:\"Телефон\";}','paprikam@bk.ru','',NULL,NULL,NULL,5,4,'188.32.102.1','http://mypaprika.ru/','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"263\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:19:\"http://mypaprika.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"Wm15cy5wUmJqN0g8QBcLECAUDktUFzQ0GyMVP300FwpoDFQ6XB0gLA==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:456:\"_ym_uid=14579514201026044407; _csrf=b393c131b385a5202f92efceb17fa4066b1004927b443ce77c6e3de05c273279a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%220Z1OngYrzyw8zgfVANlLSDEh2a-IrmrN%22%3B%7D; PHPSESSID=%2C5i%2CfrbKz-t7iZWqSRwWOC%2ChB71; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"48365\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1462259340.424;s:12:\"REQUEST_TIME\";i:1462259340;}','a:6:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;s:15:\"cms-tree-opened\";a:1:{i:0;s:1:\"1\";}s:14:\"elFinderCaches\";a:5:{s:8:\"_optsMD5\";s:32:\"ee50a84ca95a71b3b4ad93aafda70d71\";s:3:\"l1_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMDp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU4MTE1ODc1O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDFfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDFfIjtzOjQ6Im5hbWUiO3M6MjM6ItCb0LjRh9C90YvQtSDRhNCw0LnQu9GLIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvNjIzNTJiMDEvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTt9\";}s:3:\"l2_\";a:1:{s:8:\"rootstat\";s:380:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDU3NDM4MjMxO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDJfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDJfIjtzOjQ6Im5hbWUiO3M6MjE6ItCe0LHRidC40LUg0YTQsNC50LvRiyI7czo0OiJpY29uIjtzOjQyOiIvYXNzZXRzLzYyMzUyYjAxL2ltZy92b2x1bWVfaWNvbl9sb2NhbC5wbmciO3M6NjoibG9ja2VkIjtpOjE7czo0OiJkaXJzIjtpOjE7fQ==\";}s:3:\"l3_\";a:1:{s:8:\"rootstat\";s:360:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYyMDAxMjIyO3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDNfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDNfIjtzOjQ6Im5hbWUiO3M6ODoiUk9PVF9ESVIiO3M6NDoiaWNvbiI7czo0MjoiL2Fzc2V0cy82MjM1MmIwMS9pbWcvdm9sdW1lX2ljb25fbG9jYWwucG5nIjtzOjY6ImxvY2tlZCI7aToxO3M6NDoiZGlycyI7aToxO30=\";}s:3:\"l4_\";a:1:{s:8:\"rootstat\";s:392:\"YToxMTp7czo0OiJtaW1lIjtzOjk6ImRpcmVjdG9yeSI7czoyOiJ0cyI7aToxNDYwODQwOTM0O3M6NDoicmVhZCI7aToxO3M6NToid3JpdGUiO2k6MTtzOjQ6InNpemUiO2k6MDtzOjQ6Imhhc2giO3M6NToibDRfTHciO3M6ODoidm9sdW1laWQiO3M6MzoibDRfIjtzOjQ6Im5hbWUiO3M6MzI6ItCa0L7RgNC10L3RjCAocm9ib3RzLnR4dCDRgtGD0YIpIjtzOjQ6Imljb24iO3M6NDI6Ii9hc3NldHMvNjIzNTJiMDEvaW1nL3ZvbHVtZV9pY29uX2xvY2FsLnBuZyI7czo2OiJsb2NrZWQiO2k6MTtzOjQ6ImRpcnMiO2k6MTt9\";}}s:30:\"elFinderCaches:ARCHIVERS_CACHE\";a:2:{s:6:\"create\";a:3:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-cf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-czf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-cJf\";s:3:\"ext\";s:2:\"xz\";}}s:7:\"extract\";a:4:{s:17:\"application/x-tar\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:3:\"-xf\";s:3:\"ext\";s:3:\"tar\";}s:18:\"application/x-gzip\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xzf\";s:3:\"ext\";s:3:\"tgz\";}s:16:\"application/x-xz\";a:3:{s:3:\"cmd\";s:3:\"tar\";s:4:\"argc\";s:4:\"-xJf\";s:3:\"ext\";s:2:\"xz\";}s:15:\"application/zip\";a:3:{s:3:\"cmd\";s:5:\"unzip\";s:4:\"argc\";s:0:\"\";s:3:\"ext\";s:3:\"zip\";}}}s:28:\"elFinderCaches:LAST_ACTIVITY\";i:1462258934;}','a:4:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"b393c131b385a5202f92efceb17fa4066b1004927b443ce77c6e3de05c273279a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"0Z1OngYrzyw8zgfVANlLSDEh2a-IrmrN\";}\";s:9:\"PHPSESSID\";s:27:\",5i,frbKz-t7iZWqSRwWOC,hB71\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"Wm15cy5wUmJqN0g8QBcLECAUDktUFzQ0GyMVP300FwpoDFQ6XB0gLA==\";s:14:\"sx-model-value\";s:1:\"4\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:3:\"rus\";s:5:\"phone\";s:11:\"89856491886\";}}','',NULL,1,NULL),(74,NULL,NULL,1464787266,1464787266,NULL,NULL,'a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";N;s:5:\"phone\";N;}','a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:6:\"Имя\";s:5:\"phone\";s:14:\"Телефон\";}','paprikam@bk.ru','',NULL,NULL,NULL,0,4,'188.32.102.1','http://mypaprika.ru/','a:41:{s:15:\"REDIRECT_STATUS\";s:3:\"200\";s:15:\"HTTP_CONNECTION\";s:5:\"close\";s:9:\"HTTP_HOST\";s:12:\"mypaprika.ru\";s:14:\"CONTENT_LENGTH\";s:3:\"268\";s:14:\"HTTP_X_REAL_IP\";s:12:\"188.32.102.1\";s:20:\"HTTP_X_FORWARDED_FOR\";s:12:\"188.32.102.1\";s:22:\"HTTP_X_FORWARDED_PROTO\";s:4:\"http\";s:11:\"HTTP_ACCEPT\";s:46:\"application/json, text/javascript, */*; q=0.01\";s:11:\"HTTP_ORIGIN\";s:19:\"http://mypaprika.ru\";s:17:\"HTTP_X_CSRF_TOKEN\";s:56:\"TTR1VzIxeE0GZxQ9c3kAEitDMGdocy96NQcyGgUBCiJ/VhYOH2MeAg==\";s:21:\"HTTP_X_REQUESTED_WITH\";s:14:\"XMLHttpRequest\";s:15:\"HTTP_USER_AGENT\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36\";s:12:\"CONTENT_TYPE\";s:48:\"application/x-www-form-urlencoded; charset=UTF-8\";s:12:\"HTTP_REFERER\";s:20:\"http://mypaprika.ru/\";s:20:\"HTTP_ACCEPT_ENCODING\";s:13:\"gzip, deflate\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:35:\"ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\";s:11:\"HTTP_COOKIE\";s:526:\"_ym_uid=14579514201026044407; _csrf=3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO%22%3B%7D; _ym_isad=2; PHPSESSID=c6xxuHMMbBDctDLN5JoGoMaDkw2; _ga=GA1.2.1775537637.1463398311; _gat=1; _ym_visorc_37379695=w; _identity=4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A47%3A%22%5B40%2C%22ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY%22%2C2592000%5D%22%3B%7D\";s:4:\"PATH\";s:60:\"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\";s:16:\"SERVER_SIGNATURE\";s:72:\"<address>Apache/2.4.7 (Ubuntu) Server at mypaprika.ru Port 80</address>\n\";s:15:\"SERVER_SOFTWARE\";s:21:\"Apache/2.4.7 (Ubuntu)\";s:11:\"SERVER_NAME\";s:12:\"mypaprika.ru\";s:11:\"SERVER_ADDR\";s:10:\"127.0.0.70\";s:11:\"SERVER_PORT\";s:2:\"80\";s:11:\"REMOTE_ADDR\";s:12:\"188.32.102.1\";s:13:\"DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:14:\"REQUEST_SCHEME\";s:4:\"http\";s:14:\"CONTEXT_PREFIX\";s:0:\"\";s:21:\"CONTEXT_DOCUMENT_ROOT\";s:41:\"/var/www/sites/mypaprika.ru/frontend/web/\";s:12:\"SERVER_ADMIN\";s:18:\"support@skeeks.com\";s:15:\"SCRIPT_FILENAME\";s:50:\"/var/www/sites/mypaprika.ru/frontend/web/index.php\";s:11:\"REMOTE_PORT\";s:5:\"50663\";s:12:\"REDIRECT_URL\";s:21:\"/form2/backend/submit\";s:17:\"GATEWAY_INTERFACE\";s:7:\"CGI/1.1\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:12:\"QUERY_STRING\";s:0:\"\";s:11:\"REQUEST_URI\";s:21:\"/form2/backend/submit\";s:11:\"SCRIPT_NAME\";s:10:\"/index.php\";s:8:\"PHP_SELF\";s:10:\"/index.php\";s:18:\"REQUEST_TIME_FLOAT\";d:1464787266.0840001;s:12:\"REQUEST_TIME\";i:1464787266;}','a:2:{s:7:\"__flash\";a:0:{}s:4:\"__id\";i:40;}','a:8:{s:7:\"_ym_uid\";s:20:\"14579514201026044407\";s:5:\"_csrf\";s:130:\"3d8f16c1c9d5f8046601251b6f6bc22a7c548a7e856d50751f97a542ffead1a3a:2:{i:0;s:5:\"_csrf\";i:1;s:32:\"KSajAHx_fwE0ZBW7x3GM70ro2bcY-RfO\";}\";s:8:\"_ym_isad\";s:1:\"2\";s:9:\"PHPSESSID\";s:27:\"c6xxuHMMbBDctDLN5JoGoMaDkw2\";s:3:\"_ga\";s:27:\"GA1.2.1775537637.1463398311\";s:4:\"_gat\";s:1:\"1\";s:19:\"_ym_visorc_37379695\";s:1:\"w\";s:9:\"_identity\";s:149:\"4afc133c40e46dfaf06d5051f3fcb69cf75cd82ed5a64749951bbe022c59abfaa:2:{i:0;s:9:\"_identity\";i:1;s:47:\"[40,\"ku7S7IrvdDc5diiWzZTARZnPhHiH9UqY\",2592000]\";}\";}','a:4:{s:5:\"_csrf\";s:56:\"TTR1VzIxeE0GZxQ9c3kAEitDMGdocy96NQcyGgUBCiJ/VhYOH2MeAg==\";s:14:\"sx-model-value\";s:1:\"4\";s:8:\"sx-model\";s:41:\"skeeks\\modules\\cms\\form2\\models\\Form2Form\";s:22:\"RelatedPropertiesModel\";a:2:{s:40:\"property2f8824b657f9c61ddd5959a791ca433d\";s:6:\"Heckfy\";s:5:\"phone\";s:11:\"98885558855\";}}','',NULL,1,NULL);
/*!40000 ALTER TABLE `form2_form_send` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `form2_form_send` with 3 row(s)
--

--
-- Table structure for table `form2_form_send_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form2_form_send_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value_bool` tinyint(1) DEFAULT NULL,
  `value_num2` decimal(18,4) DEFAULT NULL,
  `value_int2` int(11) DEFAULT NULL,
  `value_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  KEY `value_num2` (`value_num2`),
  KEY `value_int2` (`value_int2`),
  KEY `value_string` (`value_string`),
  CONSTRAINT `form2_form_send_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `form2_form_send_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `form2_form_send` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `form2_form_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `form2_form_send_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form2_form_send_property`
--

LOCK TABLES `form2_form_send_property` WRITE;
/*!40000 ALTER TABLE `form2_form_send_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `form2_form_send_property` VALUES (205,NULL,NULL,1461938502,1461938502,11,72,'Руслан Валерьевич',0,0.0000,NULL,NULL,NULL,NULL,NULL),(206,NULL,NULL,1461938503,1461938503,10,72,'89856491886',2147483647,89856491886.0000,NULL,NULL,NULL,NULL,NULL),(207,NULL,NULL,1462259340,1462259340,11,73,'rus',0,0.0000,NULL,NULL,NULL,NULL,NULL),(208,NULL,NULL,1462259340,1462259340,10,73,'89856491886',2147483647,89856491886.0000,NULL,NULL,NULL,NULL,NULL),(209,NULL,NULL,1464787266,1464787266,11,74,'Heckfy',0,0.0000,NULL,NULL,NULL,NULL,NULL),(210,NULL,NULL,1464787266,1464787266,10,74,'98885558855',2147483647,98885558855.0000,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form2_form_send_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `form2_form_send_property` with 6 row(s)
--

--
-- Table structure for table `import_task`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT 'Import type (csv, xml)',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'description',
  `component` varchar(255) NOT NULL,
  `component_settings` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  CONSTRAINT `import_task__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `import_task__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tasks for import';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_task`
--

LOCK TABLES `import_task` WRITE;
/*!40000 ALTER TABLE `import_task` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `import_task` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `import_task` with 0 row(s)
--

--
-- Table structure for table `kladr_location`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kladr_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_short` varchar(255) DEFAULT NULL,
  `name_full` varchar(255) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `okato` varchar(20) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `kladr_api_id` varchar(20) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `name_short` (`name_short`),
  KEY `name_full` (`name_full`),
  KEY `zip` (`zip`),
  KEY `okato` (`okato`),
  KEY `type` (`type`),
  KEY `active` (`active`),
  KEY `parent_sort` (`parent_id`,`sort`),
  CONSTRAINT `kladr_location_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `kladr_location_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8 COMMENT='База адресов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kladr_location`
--

LOCK TABLES `kladr_location` WRITE;
/*!40000 ALTER TABLE `kladr_location` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `kladr_location` VALUES (1,NULL,NULL,NULL,NULL,'Россия',NULL,NULL,NULL,NULL,'country',NULL,'Y',NULL,NULL),(2,NULL,NULL,NULL,NULL,'Адыгея','Адыгея Респ','Адыгея Республика','385000',NULL,'region','0100000000000','Y',1,0),(3,NULL,NULL,NULL,NULL,'Алтай','Алтай Респ','Алтай Республика','649000',NULL,'region','0400000000000','Y',1,100),(4,NULL,NULL,NULL,NULL,'Алтайский','Алтайский край','Алтайский Край',NULL,NULL,'region','2200000000000','Y',1,200),(5,NULL,NULL,NULL,NULL,'Амурская','Амурская обл','Амурская Область','675000',NULL,'region','2800000000000','Y',1,300),(6,NULL,NULL,NULL,NULL,'Архангельская','Архангельская обл','Архангельская Область',NULL,NULL,'region','2900000000000','Y',1,400),(7,NULL,NULL,NULL,NULL,'Астраханская','Астраханская обл','Астраханская Область',NULL,NULL,'region','3000000000000','Y',1,500),(8,NULL,NULL,NULL,NULL,'Северная Осетия - Алания','Северная Осетия - Алания Респ','Северная Осетия - Алания Республика',NULL,NULL,'region','1500000000000','Y',1,600),(9,NULL,NULL,NULL,NULL,'Ханты-Мансийский Автономный округ - Югра','Ханты-Мансийский Автономный округ - Югра АО','Ханты-Мансийский Автономный округ - Югра Автономный округ',NULL,NULL,'region','8600000000000','Y',1,700),(10,NULL,NULL,NULL,NULL,'Байконур','Байконур г','Байконур Город','468320',NULL,'region','9900000000000','Y',1,800),(11,NULL,NULL,NULL,NULL,'Башкортостан','Башкортостан Респ','Башкортостан Республика','450000',NULL,'region','0200000000000','Y',1,900),(12,NULL,NULL,NULL,NULL,'Белгородская','Белгородская обл','Белгородская Область',NULL,NULL,'region','3100000000000','Y',1,1000),(13,NULL,NULL,NULL,NULL,'Брянская','Брянская обл','Брянская Область',NULL,NULL,'region','3200000000000','Y',1,1100),(14,NULL,NULL,NULL,NULL,'Бурятия','Бурятия Респ','Бурятия Республика','670000',NULL,'region','0300000000000','Y',1,1200),(15,NULL,NULL,NULL,NULL,'Владимирская','Владимирская обл','Владимирская Область',NULL,NULL,'region','3300000000000','Y',1,1300),(16,NULL,NULL,NULL,NULL,'Волгоградская','Волгоградская обл','Волгоградская Область',NULL,NULL,'region','3400000000000','Y',1,1400),(17,NULL,NULL,NULL,NULL,'Вологодская','Вологодская обл','Вологодская Область',NULL,NULL,'region','3500000000000','Y',1,1500),(18,NULL,NULL,NULL,NULL,'Воронежская','Воронежская обл','Воронежская Область',NULL,NULL,'region','3600000000000','Y',1,1600),(19,NULL,NULL,NULL,NULL,'Дагестан','Дагестан Респ','Дагестан Республика','368000',NULL,'region','0500000000000','Y',1,1700),(20,NULL,NULL,NULL,NULL,'Еврейская','Еврейская Аобл','Еврейская Автономная область',NULL,NULL,'region','7900000000000','Y',1,1800),(21,NULL,NULL,NULL,NULL,'Забайкальский','Забайкальский край','Забайкальский Край',NULL,NULL,'region','7500000000000','Y',1,1900),(22,NULL,NULL,NULL,NULL,'Ивановская','Ивановская обл','Ивановская Область',NULL,NULL,'region','3700000000000','Y',1,2000),(23,NULL,NULL,NULL,NULL,'Ингушетия','Ингушетия Респ','Ингушетия Республика','386000',NULL,'region','0600000000000','Y',1,2100),(24,NULL,NULL,NULL,NULL,'Иркутская','Иркутская обл','Иркутская Область',NULL,NULL,'region','3800000000000','Y',1,2200),(25,NULL,NULL,NULL,NULL,'Кабардино-Балкарская','Кабардино-Балкарская Респ','Кабардино-Балкарская Республика',NULL,NULL,'region','0700000000000','Y',1,2300),(26,NULL,NULL,NULL,NULL,'Калининградская','Калининградская обл','Калининградская Область',NULL,NULL,'region','3900000000000','Y',1,2400),(27,NULL,NULL,NULL,NULL,'Калмыкия','Калмыкия Респ','Калмыкия Республика',NULL,NULL,'region','0800000000000','Y',1,2500),(28,NULL,NULL,NULL,NULL,'Калужская','Калужская обл','Калужская Область',NULL,NULL,'region','4000000000000','Y',1,2600),(29,NULL,NULL,NULL,NULL,'Камчатский','Камчатский край','Камчатский Край',NULL,NULL,'region','4100000000000','Y',1,2700),(30,NULL,NULL,NULL,NULL,'Карачаево-Черкесская','Карачаево-Черкесская Респ','Карачаево-Черкесская Республика',NULL,NULL,'region','0900000000000','Y',1,2800),(31,NULL,NULL,NULL,NULL,'Карелия','Карелия Респ','Карелия Республика',NULL,NULL,'region','1000000000000','Y',1,2900),(32,NULL,NULL,NULL,NULL,'Кемеровская','Кемеровская обл','Кемеровская Область',NULL,NULL,'region','4200000000000','Y',1,3000),(33,NULL,NULL,NULL,NULL,'Кировская','Кировская обл','Кировская Область','610000',NULL,'region','4300000000000','Y',1,3100),(34,NULL,NULL,NULL,NULL,'Коми','Коми Респ','Коми Республика',NULL,NULL,'region','1100000000000','Y',1,3200),(35,NULL,NULL,NULL,NULL,'Костромская','Костромская обл','Костромская Область',NULL,NULL,'region','4400000000000','Y',1,3300),(36,NULL,NULL,NULL,NULL,'Краснодарский','Краснодарский край','Краснодарский Край',NULL,NULL,'region','2300000000000','Y',1,3400),(37,NULL,NULL,NULL,NULL,'Красноярский','Красноярский край','Красноярский Край',NULL,NULL,'region','2400000000000','Y',1,3500),(38,NULL,NULL,NULL,NULL,'Крым','Крым Респ','Крым Республика',NULL,NULL,'region','9100000000000','Y',1,3600),(39,NULL,NULL,NULL,NULL,'Курганская','Курганская обл','Курганская Область','641000',NULL,'region','4500000000000','Y',1,3700),(40,NULL,NULL,NULL,NULL,'Курская','Курская обл','Курская Область',NULL,NULL,'region','4600000000000','Y',1,3800),(41,NULL,NULL,NULL,NULL,'Ленинградская','Ленинградская обл','Ленинградская Область',NULL,NULL,'region','4700000000000','Y',1,3900),(42,NULL,NULL,NULL,NULL,'Липецкая','Липецкая обл','Липецкая Область',NULL,NULL,'region','4800000000000','Y',1,4000),(43,NULL,NULL,NULL,NULL,'Магаданская','Магаданская обл','Магаданская Область',NULL,NULL,'region','4900000000000','Y',1,4100),(44,NULL,NULL,NULL,NULL,'Марий Эл','Марий Эл Респ','Марий Эл Республика',NULL,NULL,'region','1200000000000','Y',1,4200),(45,NULL,NULL,NULL,NULL,'Мордовия','Мордовия Респ','Мордовия Республика',NULL,NULL,'region','1300000000000','Y',1,4300),(46,NULL,NULL,NULL,NULL,'Москва','Москва г','Москва Город',NULL,NULL,'region','7700000000000','Y',1,4400),(47,NULL,NULL,NULL,NULL,'Московская','Московская обл','Московская Область',NULL,NULL,'region','5000000000000','Y',1,4500),(48,NULL,NULL,NULL,NULL,'Мурманская','Мурманская обл','Мурманская Область',NULL,NULL,'region','5100000000000','Y',1,4600),(49,NULL,NULL,NULL,NULL,'Ненецкий','Ненецкий АО','Ненецкий Автономный округ','166000',NULL,'region','8300000000000','Y',1,4700),(50,NULL,NULL,NULL,NULL,'Нижегородская','Нижегородская обл','Нижегородская Область',NULL,NULL,'region','5200000000000','Y',1,4800),(51,NULL,NULL,NULL,NULL,'Новгородская','Новгородская обл','Новгородская Область',NULL,NULL,'region','5300000000000','Y',1,4900),(52,NULL,NULL,NULL,NULL,'Новосибирская','Новосибирская обл','Новосибирская Область',NULL,NULL,'region','5400000000000','Y',1,5000),(53,NULL,NULL,NULL,NULL,'Омская','Омская обл','Омская Область',NULL,NULL,'region','5500000000000','Y',1,5100),(54,NULL,NULL,NULL,NULL,'Оренбургская','Оренбургская обл','Оренбургская Область','460000',NULL,'region','5600000000000','Y',1,5200),(55,NULL,NULL,NULL,NULL,'Орловская','Орловская обл','Орловская Область',NULL,NULL,'region','5700000000000','Y',1,5300),(56,NULL,NULL,NULL,NULL,'Пензенская','Пензенская обл','Пензенская Область',NULL,NULL,'region','5800000000000','Y',1,5400),(57,NULL,NULL,NULL,NULL,'Пермский','Пермский край','Пермский Край',NULL,NULL,'region','5900000000000','Y',1,5500),(58,NULL,NULL,NULL,NULL,'Приморский','Приморский край','Приморский Край',NULL,NULL,'region','2500000000000','Y',1,5600),(59,NULL,NULL,NULL,NULL,'Псковская','Псковская обл','Псковская Область',NULL,NULL,'region','6000000000000','Y',1,5700),(60,NULL,NULL,NULL,NULL,'Ростовская','Ростовская обл','Ростовская Область',NULL,NULL,'region','6100000000000','Y',1,5800),(61,NULL,NULL,NULL,NULL,'Рязанская','Рязанская обл','Рязанская Область','390000',NULL,'region','6200000000000','Y',1,5900),(62,NULL,NULL,NULL,NULL,'Чувашская','Чувашская Респ','Чувашская Республика',NULL,NULL,'region','2100000000000','Y',1,6000),(63,NULL,NULL,NULL,NULL,'Самарская','Самарская обл','Самарская Область',NULL,NULL,'region','6300000000000','Y',1,6100),(64,NULL,NULL,NULL,NULL,'Санкт-Петербург','Санкт-Петербург г','Санкт-Петербург Город','190000',NULL,'region','7800000000000','Y',1,6200),(65,NULL,NULL,NULL,NULL,'Саратовская','Саратовская обл','Саратовская Область','410000',NULL,'region','6400000000000','Y',1,6300),(66,NULL,NULL,NULL,NULL,'Саха /Якутия/','Саха /Якутия/ Респ','Саха /Якутия/ Республика',NULL,NULL,'region','1400000000000','Y',1,6400),(67,NULL,NULL,NULL,NULL,'Сахалинская','Сахалинская обл','Сахалинская Область','693000',NULL,'region','6500000000000','Y',1,6500),(68,NULL,NULL,NULL,NULL,'Свердловская','Свердловская обл','Свердловская Область','620000',NULL,'region','6600000000000','Y',1,6600),(69,NULL,NULL,NULL,NULL,'Севастополь','Севастополь г','Севастополь Город',NULL,NULL,'region','9200000000000','Y',1,6700),(70,NULL,NULL,NULL,NULL,'Смоленская','Смоленская обл','Смоленская Область',NULL,NULL,'region','6700000000000','Y',1,6800),(71,NULL,NULL,NULL,NULL,'Ставропольский','Ставропольский край','Ставропольский Край',NULL,NULL,'region','2600000000000','Y',1,6900),(72,NULL,NULL,NULL,NULL,'Тамбовская','Тамбовская обл','Тамбовская Область','392000',NULL,'region','6800000000000','Y',1,7000),(73,NULL,NULL,NULL,NULL,'Татарстан','Татарстан Респ','Татарстан Республика','420000',NULL,'region','1600000000000','Y',1,7100),(74,NULL,NULL,NULL,NULL,'Тверская','Тверская обл','Тверская Область',NULL,NULL,'region','6900000000000','Y',1,7200),(75,NULL,NULL,NULL,NULL,'Томская','Томская обл','Томская Область',NULL,NULL,'region','7000000000000','Y',1,7300),(76,NULL,NULL,NULL,NULL,'Тульская','Тульская обл','Тульская Область',NULL,NULL,'region','7100000000000','Y',1,7400),(77,NULL,NULL,NULL,NULL,'Тыва','Тыва Респ','Тыва Республика','660000',NULL,'region','1700000000000','Y',1,7500),(78,NULL,NULL,NULL,NULL,'Тюменская','Тюменская обл','Тюменская Область',NULL,NULL,'region','7200000000000','Y',1,7600),(79,NULL,NULL,NULL,NULL,'Удмуртская','Удмуртская Респ','Удмуртская Республика',NULL,NULL,'region','1800000000000','Y',1,7700),(80,NULL,NULL,NULL,NULL,'Ульяновская','Ульяновская обл','Ульяновская Область','433000',NULL,'region','7300000000000','Y',1,7800),(81,NULL,NULL,NULL,NULL,'Хабаровский','Хабаровский край','Хабаровский Край',NULL,NULL,'region','2700000000000','Y',1,7900),(82,NULL,NULL,NULL,NULL,'Хакасия','Хакасия Респ','Хакасия Республика','655000',NULL,'region','1900000000000','Y',1,8000),(83,NULL,NULL,NULL,NULL,'Челябинская','Челябинская обл','Челябинская Область','454000',NULL,'region','7400000000000','Y',1,8100),(84,NULL,NULL,NULL,NULL,'Чеченская','Чеченская Респ','Чеченская Республика',NULL,NULL,'region','2000000000000','Y',1,8200),(85,NULL,NULL,NULL,NULL,'Чукотский','Чукотский АО','Чукотский Автономный округ',NULL,NULL,'region','8700000000000','Y',1,8300),(86,NULL,NULL,NULL,NULL,'Ямало-Ненецкий','Ямало-Ненецкий АО','Ямало-Ненецкий Автономный округ','629000',NULL,'region','8900000000000','Y',1,8400),(87,NULL,NULL,NULL,NULL,'Ярославская','Ярославская обл','Ярославская Область',NULL,NULL,'region','7600000000000','Y',1,8500),(88,NULL,NULL,NULL,NULL,'Алейский','Алейский р-н','Алейский Район',NULL,NULL,'district','2200200000000','Y',4,0),(89,NULL,NULL,NULL,NULL,'Алтайский','Алтайский р-н','Алтайский Район',NULL,NULL,'district','2200300000000','Y',4,100),(90,NULL,NULL,NULL,NULL,'Архаринский','Архаринский р-н','Архаринский Район',NULL,NULL,'district','2800200000000','Y',5,0),(91,NULL,NULL,NULL,NULL,'Ахтубинский','Ахтубинский р-н','Ахтубинский Район',NULL,NULL,'district','3000200000000','Y',7,0),(92,NULL,NULL,NULL,NULL,'Алагирский','Алагирский р-н','Алагирский Район',NULL,NULL,'district','1500200000000','Y',8,0),(93,NULL,NULL,NULL,NULL,'Ардонский','Ардонский р-н','Ардонский Район',NULL,NULL,'district','1500300000000','Y',8,100),(94,NULL,NULL,NULL,NULL,'Абзелиловский','Абзелиловский р-н','Абзелиловский Район','453620',NULL,'district','0205300000000','Y',11,0),(95,NULL,NULL,NULL,NULL,'Альшеевский','Альшеевский р-н','Альшеевский Район','452120',NULL,'district','0200200000000','Y',11,100),(96,NULL,NULL,NULL,NULL,'Архангельский','Архангельский р-н','Архангельский Район','453030',NULL,'district','0200300000000','Y',11,200),(97,NULL,NULL,NULL,NULL,'Аскинский','Аскинский р-н','Аскинский Район','452880',NULL,'district','0200400000000','Y',11,300),(98,NULL,NULL,NULL,NULL,'Аургазинский','Аургазинский р-н','Аургазинский Район','453480',NULL,'district','0200500000000','Y',11,400),(99,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','3100200000000','Y',12,0),(100,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','3300200000000','Y',15,0),(101,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район','403240',NULL,'district','3400200000000','Y',16,0),(102,NULL,NULL,NULL,NULL,'Аннинский','Аннинский р-н','Аннинский Район',NULL,NULL,'district','3600200000000','Y',18,0),(103,NULL,NULL,NULL,NULL,'Агульский','Агульский р-н','Агульский Район','368710',NULL,'district','0500200000000','Y',19,0),(104,NULL,NULL,NULL,NULL,'Акушинский','Акушинский р-н','Акушинский Район','368330',NULL,'district','0500300000000','Y',19,100),(105,NULL,NULL,NULL,NULL,'Ахвахский','Ахвахский р-н','Ахвахский Район','368990',NULL,'district','0500400000000','Y',19,200),(106,NULL,NULL,NULL,NULL,'Ахтынский','Ахтынский р-н','Ахтынский Район','368730',NULL,'district','0500500000000','Y',19,300),(107,NULL,NULL,NULL,NULL,'Агинский','Агинский р-н','Агинский Район',NULL,NULL,'district','7512900000000','Y',21,0),(108,NULL,NULL,NULL,NULL,'Акшинский','Акшинский р-н','Акшинский Район',NULL,NULL,'district','7500200000000','Y',21,100),(109,NULL,NULL,NULL,NULL,'Александрово-Заводский','Александрово-Заводский р-н','Александрово-Заводский Район',NULL,NULL,'district','7500300000000','Y',21,200),(110,NULL,NULL,NULL,NULL,'Аларский','Аларский р-н','Аларский Район',NULL,NULL,'district','3812800000000','Y',24,0),(111,NULL,NULL,NULL,NULL,'Ангарский','Ангарский р-н','Ангарский Район',NULL,NULL,'district','3800200000000','Y',24,100),(112,NULL,NULL,NULL,NULL,'Алеутский','Алеутский р-н','Алеутский Район','684500',NULL,'district','4100200000000','Y',29,0),(113,NULL,NULL,NULL,NULL,'Абазинский','Абазинский р-н','Абазинский Район',NULL,NULL,'district','0901000000000','Y',30,0),(114,NULL,NULL,NULL,NULL,'Адыге-Хабльский','Адыге-Хабльский р-н','Адыге-Хабльский Район',NULL,NULL,'district','0900200000000','Y',30,100),(115,NULL,NULL,NULL,NULL,'Арбажский','Арбажский р-н','Арбажский Район','612180',NULL,'district','4300200000000','Y',33,0),(116,NULL,NULL,NULL,NULL,'Афанасьевский','Афанасьевский р-н','Афанасьевский Район','613060',NULL,'district','4300300000000','Y',33,100),(117,NULL,NULL,NULL,NULL,'Антроповский','Антроповский р-н','Антроповский Район',NULL,NULL,'district','4400200000000','Y',35,0),(118,NULL,NULL,NULL,NULL,'Абинский','Абинский р-н','Абинский Район',NULL,NULL,'district','2300200000000','Y',36,0),(119,NULL,NULL,NULL,NULL,'Анапский','Анапский р-н','Анапский Район',NULL,NULL,'district','2300300000000','Y',36,100),(120,NULL,NULL,NULL,NULL,'Апшеронский','Апшеронский р-н','Апшеронский Район','352690',NULL,'district','2300400000000','Y',36,200),(121,NULL,NULL,NULL,NULL,'Абанский','Абанский р-н','Абанский Район',NULL,NULL,'district','2400200000000','Y',37,0),(122,NULL,NULL,NULL,NULL,'Ачинский','Ачинский р-н','Ачинский Район',NULL,NULL,'district','2400300000000','Y',37,100),(123,NULL,NULL,NULL,NULL,'Альменевский','Альменевский р-н','Альменевский Район',NULL,NULL,'district','4500200000000','Y',39,0),(124,NULL,NULL,NULL,NULL,'Ардатовский','Ардатовский р-н','Ардатовский Район',NULL,NULL,'district','1300200000000','Y',45,0),(125,NULL,NULL,NULL,NULL,'Атюрьевский','Атюрьевский р-н','Атюрьевский Район',NULL,NULL,'district','1300300000000','Y',45,100),(126,NULL,NULL,NULL,NULL,'Атяшевский','Атяшевский р-н','Атяшевский Район',NULL,NULL,'district','1300400000000','Y',45,200),(127,NULL,NULL,NULL,NULL,'Ардатовский','Ардатовский р-н','Ардатовский Район','607130',NULL,'district','5200200000000','Y',50,0),(128,NULL,NULL,NULL,NULL,'Арзамасский','Арзамасский р-н','Арзамасский Район','607227',NULL,'district','5200300000000','Y',50,100),(129,NULL,NULL,NULL,NULL,'Азовский немецкий национальный','Азовский немецкий национальный р-н','Азовский немецкий национальный Район',NULL,NULL,'district','5500200000000','Y',53,0),(130,NULL,NULL,NULL,NULL,'Абдулинский','Абдулинский р-н','Абдулинский Район','461743',NULL,'district','5605500000000','Y',54,0),(131,NULL,NULL,NULL,NULL,'Адамовский','Адамовский р-н','Адамовский Район','462800',NULL,'district','5604300000000','Y',54,100),(132,NULL,NULL,NULL,NULL,'Акбулакский','Акбулакский р-н','Акбулакский Район','461551',NULL,'district','5600200000000','Y',54,200),(133,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район','461830',NULL,'district','5604200000000','Y',54,300),(134,NULL,NULL,NULL,NULL,'Асекеевский','Асекеевский р-н','Асекеевский Район','461702',NULL,'district','5600900000000','Y',54,400),(135,NULL,NULL,NULL,NULL,'Анучинский','Анучинский р-н','Анучинский Район',NULL,NULL,'district','2500200000000','Y',58,0),(136,NULL,NULL,NULL,NULL,'Азовский','Азовский р-н','Азовский Район',NULL,NULL,'district','6100200000000','Y',60,0),(137,NULL,NULL,NULL,NULL,'Аксайский','Аксайский р-н','Аксайский Район',NULL,NULL,'district','6100300000000','Y',60,100),(138,NULL,NULL,NULL,NULL,'Александро-Невский','Александро-Невский р-н','Александро-Невский Район','391240',NULL,'district','6201000000000','Y',61,0),(139,NULL,NULL,NULL,NULL,'Алатырский','Алатырский р-н','Алатырский Район',NULL,NULL,'district','2100200000000','Y',62,0),(140,NULL,NULL,NULL,NULL,'Аликовский','Аликовский р-н','Аликовский Район',NULL,NULL,'district','2100300000000','Y',62,100),(141,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','6300200000000','Y',63,0),(142,NULL,NULL,NULL,NULL,'Александрово-Гайский','Александрово-Гайский р-н','Александрово-Гайский Район',NULL,NULL,'district','6400200000000','Y',65,0),(143,NULL,NULL,NULL,NULL,'Аркадакский','Аркадакский р-н','Аркадакский Район',NULL,NULL,'district','6400300000000','Y',65,100),(144,NULL,NULL,NULL,NULL,'Аткарский','Аткарский р-н','Аткарский Район',NULL,NULL,'district','6400400000000','Y',65,200),(145,NULL,NULL,NULL,NULL,'Абыйский','Абыйский у','Абыйский Улус','678890',NULL,'district','1400200000000','Y',66,0),(146,NULL,NULL,NULL,NULL,'Алданский','Алданский у','Алданский Улус',NULL,NULL,'district','1400300000000','Y',66,100),(147,NULL,NULL,NULL,NULL,'Аллаиховский','Аллаиховский у','Аллаиховский Улус','678800',NULL,'district','1400400000000','Y',66,200),(148,NULL,NULL,NULL,NULL,'Амгинский','Амгинский у','Амгинский Улус','678600',NULL,'district','1400500000000','Y',66,300),(149,NULL,NULL,NULL,NULL,'Анабарский','Анабарский у','Анабарский Улус','678440',NULL,'district','1400600000000','Y',66,400),(150,NULL,NULL,NULL,NULL,'Александровск-Сахалинский','Александровск-Сахалинский р-н','Александровск-Сахалинский Район','694420',NULL,'district','6501800000000','Y',67,0),(151,NULL,NULL,NULL,NULL,'Анивский','Анивский р-н','Анивский Район','694030',NULL,'district','6500200000000','Y',67,100),(152,NULL,NULL,NULL,NULL,'Алапаевский','Алапаевский р-н','Алапаевский Район','624600',NULL,'district','6600200000000','Y',68,0),(153,NULL,NULL,NULL,NULL,'Артемовский','Артемовский р-н','Артемовский Район','623780',NULL,'district','6600300000000','Y',68,100),(154,NULL,NULL,NULL,NULL,'Артинский','Артинский р-н','Артинский Район','623340',NULL,'district','6600400000000','Y',68,200),(155,NULL,NULL,NULL,NULL,'Ачитский','Ачитский р-н','Ачитский Район','623230',NULL,'district','6600500000000','Y',68,300),(156,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','2600200000000','Y',71,0),(157,NULL,NULL,NULL,NULL,'Андроповский','Андроповский р-н','Андроповский Район',NULL,NULL,'district','2600300000000','Y',71,100),(158,NULL,NULL,NULL,NULL,'Апанасенковский','Апанасенковский р-н','Апанасенковский Район',NULL,NULL,'district','2600400000000','Y',71,200),(159,NULL,NULL,NULL,NULL,'Арзгирский','Арзгирский р-н','Арзгирский Район',NULL,NULL,'district','2600500000000','Y',71,300),(160,NULL,NULL,NULL,NULL,'Агрызский','Агрызский р-н','Агрызский Район',NULL,NULL,'district','1600200000000','Y',73,0),(161,NULL,NULL,NULL,NULL,'Азнакаевский','Азнакаевский р-н','Азнакаевский Район',NULL,NULL,'district','1600300000000','Y',73,100),(162,NULL,NULL,NULL,NULL,'Аксубаевский','Аксубаевский р-н','Аксубаевский Район',NULL,NULL,'district','1600400000000','Y',73,200),(163,NULL,NULL,NULL,NULL,'Актанышский','Актанышский р-н','Актанышский Район',NULL,NULL,'district','1600500000000','Y',73,300),(164,NULL,NULL,NULL,NULL,'Алексеевский','Алексеевский р-н','Алексеевский Район',NULL,NULL,'district','1600600000000','Y',73,400),(165,NULL,NULL,NULL,NULL,'Алькеевский','Алькеевский р-н','Алькеевский Район',NULL,NULL,'district','1600700000000','Y',73,500),(166,NULL,NULL,NULL,NULL,'Альметьевский','Альметьевский р-н','Альметьевский Район',NULL,NULL,'district','1600800000000','Y',73,600),(167,NULL,NULL,NULL,NULL,'Апастовский','Апастовский р-н','Апастовский Район',NULL,NULL,'district','1600900000000','Y',73,700),(168,NULL,NULL,NULL,NULL,'Арский','Арский р-н','Арский Район',NULL,NULL,'district','1601000000000','Y',73,800),(169,NULL,NULL,NULL,NULL,'Атнинский','Атнинский р-н','Атнинский Район',NULL,NULL,'district','1601100000000','Y',73,900),(170,NULL,NULL,NULL,NULL,'Андреапольский','Андреапольский р-н','Андреапольский Район',NULL,NULL,'district','6900200000000','Y',74,0),(171,NULL,NULL,NULL,NULL,'Александровский','Александровский р-н','Александровский Район',NULL,NULL,'district','7000200000000','Y',75,0),(172,NULL,NULL,NULL,NULL,'Асиновский','Асиновский р-н','Асиновский Район',NULL,NULL,'district','7000300000000','Y',75,100),(173,NULL,NULL,NULL,NULL,'Алексинский','Алексинский р-н','Алексинский Район',NULL,NULL,'district','7100200000000','Y',76,0),(174,NULL,NULL,NULL,NULL,'Арсеньевский','Арсеньевский р-н','Арсеньевский Район',NULL,NULL,'district','7100300000000','Y',76,100),(175,NULL,NULL,NULL,NULL,'Абатский','Абатский р-н','Абатский Район',NULL,NULL,'district','7200200000000','Y',78,0),(176,NULL,NULL,NULL,NULL,'Армизонский','Армизонский р-н','Армизонский Район',NULL,NULL,'district','7200300000000','Y',78,100),(177,NULL,NULL,NULL,NULL,'Аромашевский','Аромашевский р-н','Аромашевский Район','627350',NULL,'district','7200400000000','Y',78,200),(178,NULL,NULL,NULL,NULL,'Алнашский','Алнашский р-н','Алнашский Район',NULL,NULL,'district','1800200000000','Y',79,0),(179,NULL,NULL,NULL,NULL,'Амурский','Амурский р-н','Амурский Район',NULL,NULL,'district','2700200000000','Y',81,0),(180,NULL,NULL,NULL,NULL,'Аяно-Майский','Аяно-Майский р-н','Аяно-Майский Район',NULL,NULL,'district','2700300000000','Y',81,100),(181,NULL,NULL,NULL,NULL,'Алтайский','Алтайский р-н','Алтайский Район',NULL,NULL,'district','1900200000000','Y',82,0),(182,NULL,NULL,NULL,NULL,'Аскизский','Аскизский р-н','Аскизский Район',NULL,NULL,'district','1900300000000','Y',82,100),(183,NULL,NULL,NULL,NULL,'Агаповский','Агаповский р-н','Агаповский Район','457400',NULL,'district','7402500000000','Y',83,0),(184,NULL,NULL,NULL,NULL,'Аргаяшский','Аргаяшский р-н','Аргаяшский Район','456880',NULL,'district','7402600000000','Y',83,100),(185,NULL,NULL,NULL,NULL,'Ашинский','Ашинский р-н','Ашинский Район','456015',NULL,'district','7400200000000','Y',83,200),(186,NULL,NULL,NULL,NULL,'Ачхой-Мартановский','Ачхой-Мартановский р-н','Ачхой-Мартановский Район','366600',NULL,'district','2000200000000','Y',84,0),(187,NULL,NULL,NULL,NULL,'Анадырский','Анадырский р-н','Анадырский Район',NULL,NULL,'district','8700900000000','Y',85,0),(188,NULL,NULL,NULL,NULL,'Баевский','Баевский р-н','Баевский Район','658510',NULL,'district','2200400000000','Y',4,200),(189,NULL,NULL,NULL,NULL,'Бийский','Бийский р-н','Бийский Район',NULL,NULL,'district','2200500000000','Y',4,300),(190,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район',NULL,NULL,'district','2200600000000','Y',4,400),(191,NULL,NULL,NULL,NULL,'Бурлинский','Бурлинский р-н','Бурлинский Район',NULL,NULL,'district','2200700000000','Y',4,500),(192,NULL,NULL,NULL,NULL,'Быстроистокский','Быстроистокский р-н','Быстроистокский Район',NULL,NULL,'district','2200800000000','Y',4,600),(193,NULL,NULL,NULL,NULL,'Белогорский','Белогорский р-н','Белогорский Район',NULL,NULL,'district','2800300000000','Y',5,100),(194,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район',NULL,NULL,'district','2800100000000','Y',5,200),(195,NULL,NULL,NULL,NULL,'Бурейский','Бурейский р-н','Бурейский Район',NULL,NULL,'district','2800400000000','Y',5,300),(196,NULL,NULL,NULL,NULL,'Белоярский','Белоярский р-н','Белоярский Район',NULL,NULL,'district','8600200000000','Y',9,0),(197,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','8600300000000','Y',9,100),(198,NULL,NULL,NULL,NULL,'Баймакский','Баймакский р-н','Баймакский Район','453630',NULL,'district','0200600000000','Y',11,500),(199,NULL,NULL,NULL,NULL,'Бакалинский','Бакалинский р-н','Бакалинский Район','452651',NULL,'district','0200700000000','Y',11,600),(200,NULL,NULL,NULL,NULL,'Балтачевский','Балтачевский р-н','Балтачевский Район','452980',NULL,'district','0200800000000','Y',11,700),(201,NULL,NULL,NULL,NULL,'Белебеевский','Белебеевский р-н','Белебеевский Район','452000',NULL,'district','0200900000000','Y',11,800),(202,NULL,NULL,NULL,NULL,'Белокатайский','Белокатайский р-н','Белокатайский Район','452580',NULL,'district','0201000000000','Y',11,900),(203,NULL,NULL,NULL,NULL,'Белорецкий','Белорецкий р-н','Белорецкий Район','453500',NULL,'district','0201100000000','Y',11,1000),(204,NULL,NULL,NULL,NULL,'Бижбулякский','Бижбулякский р-н','Бижбулякский Район','452040',NULL,'district','0201200000000','Y',11,1100),(205,NULL,NULL,NULL,NULL,'Бирский','Бирский р-н','Бирский Район','452450',NULL,'district','0201300000000','Y',11,1200),(206,NULL,NULL,NULL,NULL,'Благоварский','Благоварский р-н','Благоварский Район','452740',NULL,'district','0201400000000','Y',11,1300),(207,NULL,NULL,NULL,NULL,'Благовещенский','Благовещенский р-н','Благовещенский Район','453430',NULL,'district','0201500000000','Y',11,1400),(208,NULL,NULL,NULL,NULL,'Буздякский','Буздякский р-н','Буздякский Район','452710',NULL,'district','0201600000000','Y',11,1500),(209,NULL,NULL,NULL,NULL,'Бураевский','Бураевский р-н','Бураевский Район','452960',NULL,'district','0201700000000','Y',11,1600),(210,NULL,NULL,NULL,NULL,'Бурзянский','Бурзянский р-н','Бурзянский Район','453580',NULL,'district','0201800000000','Y',11,1700),(211,NULL,NULL,NULL,NULL,'Белгородский','Белгородский р-н','Белгородский Район',NULL,NULL,'district','3102200000000','Y',12,100),(212,NULL,NULL,NULL,NULL,'Борисовский','Борисовский р-н','Борисовский Район',NULL,NULL,'district','3100300000000','Y',12,200),(213,NULL,NULL,NULL,NULL,'Брасовский','Брасовский р-н','Брасовский Район','242300',NULL,'district','3200200000000','Y',13,0),(214,NULL,NULL,NULL,NULL,'Брянский','Брянский р-н','Брянский Район',NULL,NULL,'district','3200100000000','Y',13,100),(215,NULL,NULL,NULL,NULL,'Баргузинский','Баргузинский р-н','Баргузинский Район','671610',NULL,'district','0302200000000','Y',14,0),(216,NULL,NULL,NULL,NULL,'Баунтовский эвенкийский','Баунтовский эвенкийский р-н','Баунтовский эвенкийский Район',NULL,NULL,'district','0300200000000','Y',14,100),(217,NULL,NULL,NULL,NULL,'Бичурский','Бичурский р-н','Бичурский Район',NULL,NULL,'district','0300300000000','Y',14,200),(218,NULL,NULL,NULL,NULL,'Быковский','Быковский р-н','Быковский Район',NULL,NULL,'district','3400300000000','Y',16,100),(219,NULL,NULL,NULL,NULL,'Бабаевский','Бабаевский р-н','Бабаевский Район',NULL,NULL,'district','3500200000000','Y',17,0),(220,NULL,NULL,NULL,NULL,'Бабушкинский','Бабушкинский р-н','Бабушкинский Район',NULL,NULL,'district','3500300000000','Y',17,100),(221,NULL,NULL,NULL,NULL,'Белозерский','Белозерский р-н','Белозерский Район','161200',NULL,'district','3500400000000','Y',17,200),(222,NULL,NULL,NULL,NULL,'Бобровский','Бобровский р-н','Бобровский Район',NULL,NULL,'district','3600300000000','Y',18,100),(223,NULL,NULL,NULL,NULL,'Богучарский','Богучарский р-н','Богучарский Район',NULL,NULL,'district','3600400000000','Y',18,200),(224,NULL,NULL,NULL,NULL,'Борисоглебский','Борисоглебский р-н','Борисоглебский Район',NULL,NULL,'district','3600500000000','Y',18,300),(225,NULL,NULL,NULL,NULL,'Бутурлиновский','Бутурлиновский р-н','Бутурлиновский Район',NULL,NULL,'district','3600600000000','Y',18,400),(226,NULL,NULL,NULL,NULL,'Бабаюртовский','Бабаюртовский р-н','Бабаюртовский Район','368060',NULL,'district','0500600000000','Y',19,400),(227,NULL,NULL,NULL,NULL,'Ботлихский','Ботлихский р-н','Ботлихский Район','368970',NULL,'district','0500700000000','Y',19,500),(228,NULL,NULL,NULL,NULL,'Буйнакский','Буйнакский р-н','Буйнакский Район','368200',NULL,'district','0500800000000','Y',19,600),(229,NULL,NULL,NULL,NULL,'Биробиджанский','Биробиджанский р-н','Биробиджанский Район','679000',NULL,'district','7900100000000','Y',20,0),(230,NULL,NULL,NULL,NULL,'Балейский','Балейский р-н','Балейский Район',NULL,NULL,'district','7500400000000','Y',21,300),(231,NULL,NULL,NULL,NULL,'Борзинский','Борзинский р-н','Борзинский Район',NULL,NULL,'district','7500500000000','Y',21,400),(232,NULL,NULL,NULL,NULL,'Балаганский','Балаганский р-н','Балаганский Район',NULL,NULL,'district','3800300000000','Y',24,200),(233,NULL,NULL,NULL,NULL,'Баяндаевский','Баяндаевский р-н','Баяндаевский Район',NULL,NULL,'district','3812900000000','Y',24,300),(234,NULL,NULL,NULL,NULL,'Бодайбинский','Бодайбинский р-н','Бодайбинский Район',NULL,NULL,'district','3800400000000','Y',24,400),(235,NULL,NULL,NULL,NULL,'Боханский','Боханский р-н','Боханский Район',NULL,NULL,'district','3813000000000','Y',24,500),(236,NULL,NULL,NULL,NULL,'Братский','Братский р-н','Братский Район',NULL,NULL,'district','3800500000000','Y',24,600),(237,NULL,NULL,NULL,NULL,'Баксанский','Баксанский р-н','Баксанский Район',NULL,NULL,'district','0700200000000','Y',25,0),(238,NULL,NULL,NULL,NULL,'Багратионовский','Багратионовский р-н','Багратионовский Район',NULL,NULL,'district','3900200000000','Y',26,0),(239,NULL,NULL,NULL,NULL,'Балтийский','Балтийский р-н','Балтийский Район',NULL,NULL,'district','3901500000000','Y',26,100),(240,NULL,NULL,NULL,NULL,'Бабынинский','Бабынинский р-н','Бабынинский Район','249210',NULL,'district','4000200000000','Y',28,0),(241,NULL,NULL,NULL,NULL,'Барятинский','Барятинский р-н','Барятинский Район',NULL,NULL,'district','4000300000000','Y',28,100),(242,NULL,NULL,NULL,NULL,'Боровский','Боровский р-н','Боровский Район',NULL,NULL,'district','4000400000000','Y',28,200),(243,NULL,NULL,NULL,NULL,'Быстринский','Быстринский р-н','Быстринский Район',NULL,NULL,'district','4100300000000','Y',29,100),(244,NULL,NULL,NULL,NULL,'Беломорский','Беломорский р-н','Беломорский Район','186500',NULL,'district','1000200000000','Y',31,0),(245,NULL,NULL,NULL,NULL,'Беловский','Беловский р-н','Беловский Район',NULL,NULL,'district','4200200000000','Y',32,0),(246,NULL,NULL,NULL,NULL,'Белохолуницкий','Белохолуницкий р-н','Белохолуницкий Район','613200',NULL,'district','4300400000000','Y',33,200),(247,NULL,NULL,NULL,NULL,'Богородский','Богородский р-н','Богородский Район','612470',NULL,'district','4300500000000','Y',33,300),(248,NULL,NULL,NULL,NULL,'Буйский','Буйский р-н','Буйский Район',NULL,NULL,'district','4400300000000','Y',35,100),(249,NULL,NULL,NULL,NULL,'Белоглинский','Белоглинский р-н','Белоглинский Район',NULL,NULL,'district','2300500000000','Y',36,300),(250,NULL,NULL,NULL,NULL,'Белореченский','Белореченский р-н','Белореченский Район',NULL,NULL,'district','2300600000000','Y',36,400),(251,NULL,NULL,NULL,NULL,'Брюховецкий','Брюховецкий р-н','Брюховецкий Район',NULL,NULL,'district','2300700000000','Y',36,500),(252,NULL,NULL,NULL,NULL,'Балахтинский','Балахтинский р-н','Балахтинский Район',NULL,NULL,'district','2400400000000','Y',37,200),(253,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','2400500000000','Y',37,300),(254,NULL,NULL,NULL,NULL,'Бирилюсский','Бирилюсский р-н','Бирилюсский Район',NULL,NULL,'district','2400600000000','Y',37,400),(255,NULL,NULL,NULL,NULL,'Боготольский','Боготольский р-н','Боготольский Район',NULL,NULL,'district','2400700000000','Y',37,500),(256,NULL,NULL,NULL,NULL,'Богучанский','Богучанский р-н','Богучанский Район',NULL,NULL,'district','2400800000000','Y',37,600),(257,NULL,NULL,NULL,NULL,'Большемуртинский','Большемуртинский р-н','Большемуртинский Район',NULL,NULL,'district','2400900000000','Y',37,700),(258,NULL,NULL,NULL,NULL,'Большеулуйский','Большеулуйский р-н','Большеулуйский Район',NULL,NULL,'district','2401000000000','Y',37,800),(259,NULL,NULL,NULL,NULL,'Бахчисарайский','Бахчисарайский р-н','Бахчисарайский Район',NULL,NULL,'district','9100100000000','Y',38,0),(260,NULL,NULL,NULL,NULL,'Белогорский','Белогорский р-н','Белогорский Район',NULL,NULL,'district','9100200000000','Y',38,100),(261,NULL,NULL,NULL,NULL,'Белозерский','Белозерский р-н','Белозерский Район',NULL,NULL,'district','4500300000000','Y',39,100),(262,NULL,NULL,NULL,NULL,'Беловский','Беловский р-н','Беловский Район',NULL,NULL,'district','4600200000000','Y',40,0),(263,NULL,NULL,NULL,NULL,'Большесолдатский','Большесолдатский р-н','Большесолдатский Район',NULL,NULL,'district','4600300000000','Y',40,100),(264,NULL,NULL,NULL,NULL,'Бокситогорский','Бокситогорский р-н','Бокситогорский Район',NULL,NULL,'district','4700200000000','Y',41,0),(265,NULL,NULL,NULL,NULL,'Большеберезниковский','Большеберезниковский р-н','Большеберезниковский Район',NULL,NULL,'district','1300500000000','Y',45,300),(266,NULL,NULL,NULL,NULL,'Большеигнатовский','Большеигнатовский р-н','Большеигнатовский Район',NULL,NULL,'district','1300600000000','Y',45,400),(267,NULL,NULL,NULL,NULL,'Балахнинский','Балахнинский р-н','Балахнинский Район','606407',NULL,'district','5200400000000','Y',50,200),(268,NULL,NULL,NULL,NULL,'Богородский','Богородский р-н','Богородский Район','607600',NULL,'district','5200500000000','Y',50,300),(269,NULL,NULL,NULL,NULL,'Большеболдинский','Большеболдинский р-н','Большеболдинский Район','607940',NULL,'district','5200600000000','Y',50,400),(270,NULL,NULL,NULL,NULL,'Большемурашкинский','Большемурашкинский р-н','Большемурашкинский Район','606360',NULL,'district','5200700000000','Y',50,500),(271,NULL,NULL,NULL,NULL,'Бутурлинский','Бутурлинский р-н','Бутурлинский Район','607440',NULL,'district','5200900000000','Y',50,600),(272,NULL,NULL,NULL,NULL,'Батецкий','Батецкий р-н','Батецкий Район',NULL,NULL,'district','5300200000000','Y',51,0),(273,NULL,NULL,NULL,NULL,'Боровичский','Боровичский р-н','Боровичский Район',NULL,NULL,'district','5300300000000','Y',51,100),(274,NULL,NULL,NULL,NULL,'Баганский','Баганский р-н','Баганский Район',NULL,NULL,'district','5400200000000','Y',52,0),(275,NULL,NULL,NULL,NULL,'Барабинский','Барабинский р-н','Барабинский Район',NULL,NULL,'district','5400300000000','Y',52,100),(276,NULL,NULL,NULL,NULL,'Болотнинский','Болотнинский р-н','Болотнинский Район',NULL,NULL,'district','5400400000000','Y',52,200),(277,NULL,NULL,NULL,NULL,'Большереченский','Большереченский р-н','Большереченский Район',NULL,NULL,'district','5500300000000','Y',53,100),(278,NULL,NULL,NULL,NULL,'Большеуковский','Большеуковский р-н','Большеуковский Район',NULL,NULL,'district','5500400000000','Y',53,200),(279,NULL,NULL,NULL,NULL,'Беляевский','Беляевский р-н','Беляевский Район','461330',NULL,'district','5604500000000','Y',54,500),(280,NULL,NULL,NULL,NULL,'Бугурусланский','Бугурусланский р-н','Бугурусланский Район','461633',NULL,'district','5600300000000','Y',54,600),(281,NULL,NULL,NULL,NULL,'Бузулукский','Бузулукский р-н','Бузулукский Район','461045',NULL,'district','5601200000000','Y',54,700),(282,NULL,NULL,NULL,NULL,'Болховский','Болховский р-н','Болховский Район',NULL,NULL,'district','5700200000000','Y',55,0),(283,NULL,NULL,NULL,NULL,'Башмаковский','Башмаковский р-н','Башмаковский Район',NULL,NULL,'district','5800200000000','Y',56,0),(284,NULL,NULL,NULL,NULL,'Бековский','Бековский р-н','Бековский Район',NULL,NULL,'district','5800400000000','Y',56,100),(285,NULL,NULL,NULL,NULL,'Белинский','Белинский р-н','Белинский Район',NULL,NULL,'district','5800500000000','Y',56,200),(286,NULL,NULL,NULL,NULL,'Бессоновский','Бессоновский р-н','Бессоновский Район',NULL,NULL,'district','5800600000000','Y',56,300),(287,NULL,NULL,NULL,NULL,'Бардымский','Бардымский р-н','Бардымский Район',NULL,NULL,'district','5900200000000','Y',57,0),(288,NULL,NULL,NULL,NULL,'Березовский','Березовский р-н','Березовский Район',NULL,NULL,'district','5900300000000','Y',57,100),(289,NULL,NULL,NULL,NULL,'Большесосновский','Большесосновский р-н','Большесосновский Район',NULL,NULL,'district','5900400000000','Y',57,200),(290,NULL,NULL,NULL,NULL,'Бежаницкий','Бежаницкий р-н','Бежаницкий Район','182840',NULL,'district','6000200000000','Y',59,0),(291,NULL,NULL,NULL,NULL,'Багаевский','Багаевский р-н','Багаевский Район',NULL,NULL,'district','6100400000000','Y',60,200),(292,NULL,NULL,NULL,NULL,'Белокалитвинский','Белокалитвинский р-н','Белокалитвинский Район',NULL,NULL,'district','6100500000000','Y',60,300),(293,NULL,NULL,NULL,NULL,'Боковский','Боковский р-н','Боковский Район','346250',NULL,'district','6100600000000','Y',60,400),(294,NULL,NULL,NULL,NULL,'Батыревский','Батыревский р-н','Батыревский Район',NULL,NULL,'district','2100400000000','Y',62,200),(295,NULL,NULL,NULL,NULL,'Безенчукский','Безенчукский р-н','Безенчукский Район',NULL,NULL,'district','6300300000000','Y',63,100),(296,NULL,NULL,NULL,NULL,'Богатовский','Богатовский р-н','Богатовский Район',NULL,NULL,'district','6300400000000','Y',63,200),(297,NULL,NULL,NULL,NULL,'Большеглушицкий','Большеглушицкий р-н','Большеглушицкий Район',NULL,NULL,'district','6300500000000','Y',63,300),(298,NULL,NULL,NULL,NULL,'Большечерниговский','Большечерниговский р-н','Большечерниговский Район',NULL,NULL,'district','6300600000000','Y',63,400),(299,NULL,NULL,NULL,NULL,'Борский','Борский р-н','Борский Район',NULL,NULL,'district','6300700000000','Y',63,500),(300,NULL,NULL,NULL,NULL,'Базарно-Карабулакский','Базарно-Карабулакский р-н','Базарно-Карабулакский Район',NULL,NULL,'district','6400500000000','Y',65,300),(301,NULL,NULL,NULL,NULL,'Балаковский','Балаковский р-н','Балаковский Район',NULL,NULL,'district','6400600000000','Y',65,400),(302,NULL,NULL,NULL,NULL,'Балашовский','Балашовский р-н','Балашовский Район',NULL,NULL,'district','6400700000000','Y',65,500),(303,NULL,NULL,NULL,NULL,'Балтайский','Балтайский р-н','Балтайский Район',NULL,NULL,'district','6400800000000','Y',65,600),(304,NULL,NULL,NULL,NULL,'Булунский','Булунский у','Булунский Улус','678400',NULL,'district','1400700000000','Y',66,500),(305,NULL,NULL,NULL,NULL,'Байкаловский','Байкаловский р-н','Байкаловский Район','623870',NULL,'district','6600600000000','Y',68,400),(306,NULL,NULL,NULL,NULL,'Белоярский','Белоярский р-н','Белоярский Район','624030',NULL,'district','6600700000000','Y',68,500),(307,NULL,NULL,NULL,NULL,'Богдановичский','Богдановичский р-н','Богдановичский Район','623530',NULL,'district','6600800000000','Y',68,600),(308,NULL,NULL,NULL,NULL,'Благодарненский','Благодарненский р-н','Благодарненский Район',NULL,NULL,'district','2600600000000','Y',71,400),(309,NULL,NULL,NULL,NULL,'Буденновский','Буденновский р-н','Буденновский Район',NULL,NULL,'district','2600700000000','Y',71,500),(310,NULL,NULL,NULL,NULL,'Бондарский','Бондарский р-н','Бондарский Район','393230',NULL,'district','6800200000000','Y',72,0),(311,NULL,NULL,NULL,NULL,'Бавлинский','Бавлинский р-н','Бавлинский Район',NULL,NULL,'district','1601200000000','Y',73,1000),(312,NULL,NULL,NULL,NULL,'Балтасинский','Балтасинский р-н','Балтасинский Район',NULL,NULL,'district','1601300000000','Y',73,1100),(313,NULL,NULL,NULL,NULL,'Бугульминский','Бугульминский р-н','Бугульминский Район',NULL,NULL,'district','1601400000000','Y',73,1200),(314,NULL,NULL,NULL,NULL,'Буинский','Буинский р-н','Буинский Район',NULL,NULL,'district','1601500000000','Y',73,1300),(315,NULL,NULL,NULL,NULL,'Бежецкий','Бежецкий р-н','Бежецкий Район',NULL,NULL,'district','6900300000000','Y',74,100),(316,NULL,NULL,NULL,NULL,'Бельский','Бельский р-н','Бельский Район',NULL,NULL,'district','6900400000000','Y',74,200),(317,NULL,NULL,NULL,NULL,'Бологовский','Бологовский р-н','Бологовский Район',NULL,NULL,'district','6900500000000','Y',74,300),(318,NULL,NULL,NULL,NULL,'Бакчарский','Бакчарский р-н','Бакчарский Район',NULL,NULL,'district','7000400000000','Y',75,200),(319,NULL,NULL,NULL,NULL,'Белевский','Белевский р-н','Белевский Район',NULL,NULL,'district','7100400000000','Y',76,200),(320,NULL,NULL,NULL,NULL,'Богородицкий','Богородицкий р-н','Богородицкий Район',NULL,NULL,'district','7100500000000','Y',76,300),(321,NULL,NULL,NULL,NULL,'Бай-Тайгинский','Бай-Тайгинский р-н','Бай-Тайгинский Район',NULL,NULL,'district','1700200000000','Y',77,0),(322,NULL,NULL,NULL,NULL,'Барун-Хемчикский','Барун-Хемчикский р-н','Барун-Хемчикский Район',NULL,NULL,'district','1700300000000','Y',77,100),(323,NULL,NULL,NULL,NULL,'Бердюжский','Бердюжский р-н','Бердюжский Район',NULL,NULL,'district','7200500000000','Y',78,300),(324,NULL,NULL,NULL,NULL,'Балезинский','Балезинский р-н','Балезинский Район',NULL,NULL,'district','1800300000000','Y',79,100),(325,NULL,NULL,NULL,NULL,'Базарносызганский','Базарносызганский р-н','Базарносызганский Район','433701',NULL,'district','7300200000000','Y',80,0),(326,NULL,NULL,NULL,NULL,'Барышский','Барышский р-н','Барышский Район','433750',NULL,'district','7300300000000','Y',80,100),(327,NULL,NULL,NULL,NULL,'Бикинский','Бикинский р-н','Бикинский Район',NULL,NULL,'district','2700400000000','Y',81,200),(328,NULL,NULL,NULL,NULL,'Бейский','Бейский р-н','Бейский Район',NULL,NULL,'district','1900400000000','Y',82,200),(329,NULL,NULL,NULL,NULL,'Боградский','Боградский р-н','Боградский Район',NULL,NULL,'district','1900500000000','Y',82,300),(330,NULL,NULL,NULL,NULL,'Брединский','Брединский р-н','Брединский Район','457310',NULL,'district','7402700000000','Y',83,300),(331,NULL,NULL,NULL,NULL,'Билибинский','Билибинский р-н','Билибинский Район',NULL,NULL,'district','8700300000000','Y',85,100),(332,NULL,NULL,NULL,NULL,'Большесельский','Большесельский р-н','Большесельский Район',NULL,NULL,'district','7600200000000','Y',87,0),(333,NULL,NULL,NULL,NULL,'Борисоглебский','Борисоглебский р-н','Борисоглебский Район',NULL,NULL,'district','7600300000000','Y',87,100),(334,NULL,NULL,NULL,NULL,'Брейтовский','Брейтовский р-н','Брейтовский Район',NULL,NULL,'district','7600400000000','Y',87,200),(335,NULL,NULL,NULL,NULL,'Волчихинский','Волчихинский р-н','Волчихинский Район',NULL,NULL,'district','2200900000000','Y',4,700),(336,NULL,NULL,NULL,NULL,'Вельский','Вельский р-н','Вельский Район',NULL,NULL,'district','2900200000000','Y',6,0),(337,NULL,NULL,NULL,NULL,'Верхнетоемский','Верхнетоемский р-н','Верхнетоемский Район',NULL,NULL,'district','2900300000000','Y',6,100),(338,NULL,NULL,NULL,NULL,'Вилегодский','Вилегодский р-н','Вилегодский Район',NULL,NULL,'district','2900400000000','Y',6,200),(339,NULL,NULL,NULL,NULL,'Виноградовский','Виноградовский р-н','Виноградовский Район',NULL,NULL,'district','2900500000000','Y',6,300),(340,NULL,NULL,NULL,NULL,'Володарский','Володарский р-н','Володарский Район',NULL,NULL,'district','3000300000000','Y',7,100),(341,NULL,NULL,NULL,NULL,'Валуйский','Валуйский р-н','Валуйский Район',NULL,NULL,'district','3100400000000','Y',12,300),(342,NULL,NULL,NULL,NULL,'Вейделевский','Вейделевский р-н','Вейделевский Район',NULL,NULL,'district','3100500000000','Y',12,400),(343,NULL,NULL,NULL,NULL,'Волоконовский','Волоконовский р-н','Волоконовский Район','309650',NULL,'district','3100600000000','Y',12,500),(344,NULL,NULL,NULL,NULL,'Выгоничский','Выгоничский р-н','Выгоничский Район',NULL,NULL,'district','3200300000000','Y',13,200),(345,NULL,NULL,NULL,NULL,'Вязниковский','Вязниковский р-н','Вязниковский Район',NULL,NULL,'district','3300300000000','Y',15,100),(346,NULL,NULL,NULL,NULL,'Вашкинский','Вашкинский р-н','Вашкинский Район',NULL,NULL,'district','3500500000000','Y',17,300),(347,NULL,NULL,NULL,NULL,'Великоустюгский','Великоустюгский р-н','Великоустюгский Район','162390',NULL,'district','3500600000000','Y',17,400),(348,NULL,NULL,NULL,NULL,'Верховажский','Верховажский р-н','Верховажский Район',NULL,NULL,'district','3500700000000','Y',17,500),(349,NULL,NULL,NULL,NULL,'Вожегодский','Вожегодский р-н','Вожегодский Район','162189',NULL,'district','3500800000000','Y',17,600),(350,NULL,NULL,NULL,NULL,'Вологодский','Вологодский р-н','Вологодский Район',NULL,NULL,'district','3500100000000','Y',17,700),(351,NULL,NULL,NULL,NULL,'Вытегорский','Вытегорский р-н','Вытегорский Район',NULL,NULL,'district','3500900000000','Y',17,800),(352,NULL,NULL,NULL,NULL,'Верхнемамонский','Верхнемамонский р-н','Верхнемамонский Район',NULL,NULL,'district','3600700000000','Y',18,500),(353,NULL,NULL,NULL,NULL,'Верхнехавский','Верхнехавский р-н','Верхнехавский Район',NULL,NULL,'district','3600800000000','Y',18,600),(354,NULL,NULL,NULL,NULL,'Воробьевский','Воробьевский р-н','Воробьевский Район',NULL,NULL,'district','3600900000000','Y',18,700),(355,NULL,NULL,NULL,NULL,'Верхнеландеховский','Верхнеландеховский р-н','Верхнеландеховский Район',NULL,NULL,'district','3700200000000','Y',22,0),(356,NULL,NULL,NULL,NULL,'Вичугский','Вичугский р-н','Вичугский Район',NULL,NULL,'district','3700300000000','Y',22,100),(357,NULL,NULL,NULL,NULL,'Верхнекамский','Верхнекамский р-н','Верхнекамский Район','612820',NULL,'district','4300600000000','Y',33,400),(358,NULL,NULL,NULL,NULL,'Верхошижемский','Верхошижемский р-н','Верхошижемский Район','613310',NULL,'district','4300700000000','Y',33,500),(359,NULL,NULL,NULL,NULL,'Вятскополянский','Вятскополянский р-н','Вятскополянский Район','612960',NULL,'district','4300800000000','Y',33,600),(360,NULL,NULL,NULL,NULL,'Вохомский','Вохомский р-н','Вохомский Район','157760',NULL,'district','4400400000000','Y',35,200),(361,NULL,NULL,NULL,NULL,'Выселковский','Выселковский р-н','Выселковский Район',NULL,NULL,'district','2300800000000','Y',36,600),(362,NULL,NULL,NULL,NULL,'Варгашинский','Варгашинский р-н','Варгашинский Район',NULL,NULL,'district','4500400000000','Y',39,200),(363,NULL,NULL,NULL,NULL,'Волосовский','Волосовский р-н','Волосовский Район',NULL,NULL,'district','4700300000000','Y',41,100),(364,NULL,NULL,NULL,NULL,'Волховский','Волховский р-н','Волховский Район',NULL,NULL,'district','4700400000000','Y',41,200),(365,NULL,NULL,NULL,NULL,'Всеволожский','Всеволожский р-н','Всеволожский Район',NULL,NULL,'district','4700500000000','Y',41,300),(366,NULL,NULL,NULL,NULL,'Выборгский','Выборгский р-н','Выборгский Район',NULL,NULL,'district','4700600000000','Y',41,400),(367,NULL,NULL,NULL,NULL,'Воловский','Воловский р-н','Воловский Район',NULL,NULL,'district','4800200000000','Y',42,0),(368,NULL,NULL,NULL,NULL,'Волжский','Волжский р-н','Волжский Район',NULL,NULL,'district','1200200000000','Y',44,0),(369,NULL,NULL,NULL,NULL,'Внуковское','Внуковское п','Внуковское Поселение',NULL,NULL,'district','7700100000000','Y',46,0),(370,NULL,NULL,NULL,NULL,'Вороновское','Вороновское п','Вороновское Поселение',NULL,NULL,'district','7700200000000','Y',46,100),(371,NULL,NULL,NULL,NULL,'Воскресенское','Воскресенское п','Воскресенское Поселение',NULL,NULL,'district','7700300000000','Y',46,200),(372,NULL,NULL,NULL,NULL,'Волоколамский','Волоколамский р-н','Волоколамский Район',NULL,NULL,'district','5000300000000','Y',47,0),(373,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','5000400000000','Y',47,100),(374,NULL,NULL,NULL,NULL,'Вадский','Вадский р-н','Вадский Район','606380',NULL,'district','5201000000000','Y',50,700),(375,NULL,NULL,NULL,NULL,'Варнавинский','Варнавинский р-н','Варнавинский Район','606760',NULL,'district','5201100000000','Y',50,800),(376,NULL,NULL,NULL,NULL,'Вачский','Вачский р-н','Вачский Район','606150',NULL,'district','5201200000000','Y',50,900),(377,NULL,NULL,NULL,NULL,'Ветлужский','Ветлужский р-н','Ветлужский Район','606860',NULL,'district','5201300000000','Y',50,1000),(378,NULL,NULL,NULL,NULL,'Вознесенский','Вознесенский р-н','Вознесенский Район','607340',NULL,'district','5201400000000','Y',50,1100),(379,NULL,NULL,NULL,NULL,'Володарский','Володарский р-н','Володарский Район','606072',NULL,'district','5201600000000','Y',50,1200),(380,NULL,NULL,NULL,NULL,'Воротынский','Воротынский р-н','Воротынский Район','606260',NULL,'district','5201500000000','Y',50,1300),(381,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','5201700000000','Y',50,1400),(382,NULL,NULL,NULL,NULL,'Валдайский','Валдайский р-н','Валдайский Район',NULL,NULL,'district','5300400000000','Y',51,200),(383,NULL,NULL,NULL,NULL,'Волотовский','Волотовский р-н','Волотовский Район',NULL,NULL,'district','5300500000000','Y',51,300),(384,NULL,NULL,NULL,NULL,'Венгеровский','Венгеровский р-н','Венгеровский Район',NULL,NULL,'district','5400500000000','Y',52,300),(385,NULL,NULL,NULL,NULL,'Верховский','Верховский р-н','Верховский Район',NULL,NULL,'district','5700300000000','Y',55,100),(386,NULL,NULL,NULL,NULL,'Вадинский','Вадинский р-н','Вадинский Район',NULL,NULL,'district','5800700000000','Y',56,400),(387,NULL,NULL,NULL,NULL,'Верещагинский','Верещагинский р-н','Верещагинский Район',NULL,NULL,'district','5900500000000','Y',57,300),(388,NULL,NULL,NULL,NULL,'Великолукский','Великолукский р-н','Великолукский Район','182100',NULL,'district','6000300000000','Y',59,100),(389,NULL,NULL,NULL,NULL,'Верхнедонской','Верхнедонской р-н','Верхнедонской Район',NULL,NULL,'district','6100700000000','Y',60,500),(390,NULL,NULL,NULL,NULL,'Веселовский','Веселовский р-н','Веселовский Район',NULL,NULL,'district','6100800000000','Y',60,600),(391,NULL,NULL,NULL,NULL,'Волгодонской','Волгодонской р-н','Волгодонской Район',NULL,NULL,'district','6100900000000','Y',60,700),(392,NULL,NULL,NULL,NULL,'Вурнарский','Вурнарский р-н','Вурнарский Район',NULL,NULL,'district','2100500000000','Y',62,300),(393,NULL,NULL,NULL,NULL,'Волжский','Волжский р-н','Волжский Район',NULL,NULL,'district','6302800000000','Y',63,600),(394,NULL,NULL,NULL,NULL,'Вольский','Вольский р-н','Вольский Район',NULL,NULL,'district','6400900000000','Y',65,700),(395,NULL,NULL,NULL,NULL,'Воскресенский','Воскресенский р-н','Воскресенский Район',NULL,NULL,'district','6401000000000','Y',65,800),(396,NULL,NULL,NULL,NULL,'Верхневилюйский','Верхневилюйский у','Верхневилюйский Улус','678230',NULL,'district','1400800000000','Y',66,600),(397,NULL,NULL,NULL,NULL,'Верхнеколымский','Верхнеколымский у','Верхнеколымский Улус','678770',NULL,'district','1400900000000','Y',66,700),(398,NULL,NULL,NULL,NULL,'Верхоянский','Верхоянский у','Верхоянский Улус','678500',NULL,'district','1401000000000','Y',66,800),(399,NULL,NULL,NULL,NULL,'Вилюйский','Вилюйский у','Вилюйский Улус','678200',NULL,'district','1401100000000','Y',66,900),(400,NULL,NULL,NULL,NULL,'Верхнесалдинский','Верхнесалдинский р-н','Верхнесалдинский Район','624760',NULL,'district','6600900000000','Y',68,700),(401,NULL,NULL,NULL,NULL,'Верхотурский','Верхотурский р-н','Верхотурский Район','624380',NULL,'district','6601000000000','Y',68,800),(402,NULL,NULL,NULL,NULL,'Велижский','Велижский р-н','Велижский Район',NULL,NULL,'district','6700200000000','Y',70,0),(403,NULL,NULL,NULL,NULL,'Вяземский','Вяземский р-н','Вяземский Район',NULL,NULL,'district','6700300000000','Y',70,100),(404,NULL,NULL,NULL,NULL,'Верхнеуслонский','Верхнеуслонский р-н','Верхнеуслонский Район',NULL,NULL,'district','1601600000000','Y',73,1400),(405,NULL,NULL,NULL,NULL,'Высокогорский','Высокогорский р-н','Высокогорский Район',NULL,NULL,'district','1601700000000','Y',73,1500),(406,NULL,NULL,NULL,NULL,'Весьегонский','Весьегонский р-н','Весьегонский Район',NULL,NULL,'district','6900600000000','Y',74,400),(407,NULL,NULL,NULL,NULL,'Вышневолоцкий','Вышневолоцкий р-н','Вышневолоцкий Район',NULL,NULL,'district','6900700000000','Y',74,500),(408,NULL,NULL,NULL,NULL,'Верхнекетский','Верхнекетский р-н','Верхнекетский Район',NULL,NULL,'district','7000500000000','Y',75,300),(409,NULL,NULL,NULL,NULL,'Веневский','Веневский р-н','Веневский Район',NULL,NULL,'district','7100600000000','Y',76,400),(410,NULL,NULL,NULL,NULL,'Воловский','Воловский р-н','Воловский Район',NULL,NULL,'district','7100700000000','Y',76,500),(411,NULL,NULL,NULL,NULL,'Вагайский','Вагайский р-н','Вагайский Район',NULL,NULL,'district','7200600000000','Y',78,400),(412,NULL,NULL,NULL,NULL,'Викуловский','Викуловский р-н','Викуловский Район',NULL,NULL,'district','7200700000000','Y',78,500),(413,NULL,NULL,NULL,NULL,'Вавожский','Вавожский р-н','Вавожский Район',NULL,NULL,'district','1800400000000','Y',79,200),(414,NULL,NULL,NULL,NULL,'Воткинский','Воткинский р-н','Воткинский Район',NULL,NULL,'district','1800500000000','Y',79,300),(415,NULL,NULL,NULL,NULL,'Вешкаймский','Вешкаймский р-н','Вешкаймский Район','433100',NULL,'district','7300400000000','Y',80,200),(416,NULL,NULL,NULL,NULL,'Ванинский','Ванинский р-н','Ванинский Район','682800',NULL,'district','2700500000000','Y',81,300),(417,NULL,NULL,NULL,NULL,'Верхнебуреинский','Верхнебуреинский р-н','Верхнебуреинский Район',NULL,NULL,'district','2700600000000','Y',81,400),(418,NULL,NULL,NULL,NULL,'Вяземский','Вяземский р-н','Вяземский Район',NULL,NULL,'district','2700700000000','Y',81,500),(419,NULL,NULL,NULL,NULL,'Варненский','Варненский р-н','Варненский Район','457200',NULL,'district','7402800000000','Y',83,400),(420,NULL,NULL,NULL,NULL,'Верхнеуральский','Верхнеуральский р-н','Верхнеуральский Район','457670',NULL,'district','7402900000000','Y',83,500),(421,NULL,NULL,NULL,NULL,'Веденский','Веденский р-н','Веденский Район','366000',NULL,'district','2000300000000','Y',84,100),(422,NULL,NULL,NULL,NULL,'Гиагинский','Гиагинский р-н','Гиагинский Район','385600',NULL,'district','0100800000000','Y',2,0),(423,NULL,NULL,NULL,NULL,'Гафурийский','Гафурийский р-н','Гафурийский Район','453051',NULL,'district','0201900000000','Y',11,1800),(424,NULL,NULL,NULL,NULL,'Грайворонский','Грайворонский р-н','Грайворонский Район',NULL,NULL,'district','3100700000000','Y',12,600),(425,NULL,NULL,NULL,NULL,'Губкинский','Губкинский р-н','Губкинский Район',NULL,NULL,'district','3100800000000','Y',12,700),(426,NULL,NULL,NULL,NULL,'Гордеевский','Гордеевский р-н','Гордеевский Район',NULL,NULL,'district','3200400000000','Y',13,300),(427,NULL,NULL,NULL,NULL,'Гороховецкий','Гороховецкий р-н','Гороховецкий Район',NULL,NULL,'district','3300400000000','Y',15,200),(428,NULL,NULL,NULL,NULL,'Гусь-Хрустальный','Гусь-Хрустальный р-н','Гусь-Хрустальный Район',NULL,NULL,'district','3300500000000','Y',15,300),(429,NULL,NULL,NULL,NULL,'Городищенский','Городищенский р-н','Городищенский Район',NULL,NULL,'district','3400400000000','Y',16,200),(430,NULL,NULL,NULL,NULL,'Грязовецкий','Грязовецкий р-н','Грязовецкий Район',NULL,NULL,'district','3501000000000','Y',17,900),(431,NULL,NULL,NULL,NULL,'Грибановский','Грибановский р-н','Грибановский Район',NULL,NULL,'district','3601000000000','Y',18,800),(432,NULL,NULL,NULL,NULL,'Гергебильский','Гергебильский р-н','Гергебильский Район','368250',NULL,'district','0500900000000','Y',19,700),(433,NULL,NULL,NULL,NULL,'Гумбетовский','Гумбетовский р-н','Гумбетовский Район','368930',NULL,'district','0501000000000','Y',19,800),(434,NULL,NULL,NULL,NULL,'Гунибский','Гунибский р-н','Гунибский Район','368340',NULL,'district','0501100000000','Y',19,900),(435,NULL,NULL,NULL,NULL,'Газимуро-Заводский','Газимуро-Заводский р-н','Газимуро-Заводский Район',NULL,NULL,'district','7500600000000','Y',21,500),(436,NULL,NULL,NULL,NULL,'Гаврилово-Посадский','Гаврилово-Посадский р-н','Гаврилово-Посадский Район',NULL,NULL,'district','3700400000000','Y',22,200),(437,NULL,NULL,NULL,NULL,'Гвардейский','Гвардейский р-н','Гвардейский Район',NULL,NULL,'district','3900300000000','Y',26,200),(438,NULL,NULL,NULL,NULL,'Гурьевский','Гурьевский р-н','Гурьевский Район',NULL,NULL,'district','3900400000000','Y',26,300),(439,NULL,NULL,NULL,NULL,'Гусевский','Гусевский р-н','Гусевский Район',NULL,NULL,'district','3900500000000','Y',26,400),(440,NULL,NULL,NULL,NULL,'Городовиковский','Городовиковский р-н','Городовиковский Район',NULL,NULL,'district','0800200000000','Y',27,0),(441,NULL,NULL,NULL,NULL,'Гурьевский','Гурьевский р-н','Гурьевский Район',NULL,NULL,'district','4200300000000','Y',32,100),(442,NULL,NULL,NULL,NULL,'Галичский','Галичский р-н','Галичский Район',NULL,NULL,'district','4400500000000','Y',35,300),(443,NULL,NULL,NULL,NULL,'Гулькевичский','Гулькевичский р-н','Гулькевичский Район','352190',NULL,'district','2300900000000','Y',36,700),(444,NULL,NULL,NULL,NULL,'Глушковский','Глушковский р-н','Глушковский Район',NULL,NULL,'district','4600400000000','Y',40,200),(445,NULL,NULL,NULL,NULL,'Горшеченский','Горшеченский р-н','Горшеченский Район',NULL,NULL,'district','4600500000000','Y',40,300),(446,NULL,NULL,NULL,NULL,'Гатчинский','Гатчинский р-н','Гатчинский Район',NULL,NULL,'district','4700700000000','Y',41,500),(447,NULL,NULL,NULL,NULL,'Грязинский','Грязинский р-н','Грязинский Район',NULL,NULL,'district','4800300000000','Y',42,100),(448,NULL,NULL,NULL,NULL,'Горномарийский','Горномарийский р-н','Горномарийский Район',NULL,NULL,'district','1200300000000','Y',44,100),(449,NULL,NULL,NULL,NULL,'Гагинский','Гагинский р-н','Гагинский Район',NULL,NULL,'district','5201900000000','Y',50,1500),(450,NULL,NULL,NULL,NULL,'Городецкий','Городецкий р-н','Городецкий Район',NULL,NULL,'district','5202000000000','Y',50,1600),(451,NULL,NULL,NULL,NULL,'Горьковский','Горьковский р-н','Горьковский Район',NULL,NULL,'district','5500500000000','Y',53,300),(452,NULL,NULL,NULL,NULL,'Гайский','Гайский р-н','Гайский Район','462635',NULL,'district','5600400000000','Y',54,800),(453,NULL,NULL,NULL,NULL,'Грачевский','Грачевский р-н','Грачевский Район','461800',NULL,'district','5602100000000','Y',54,900),(454,NULL,NULL,NULL,NULL,'Глазуновский','Глазуновский р-н','Глазуновский Район',NULL,NULL,'district','5700400000000','Y',55,200),(455,NULL,NULL,NULL,NULL,'Городищенский','Городищенский р-н','Городищенский Район',NULL,NULL,'district','5800800000000','Y',56,500),(456,NULL,NULL,NULL,NULL,'Гайнский','Гайнский р-н','Гайнский Район',NULL,NULL,'district','5902900000000','Y',57,400),(457,NULL,NULL,NULL,NULL,'Горнозаводский','Горнозаводский р-н','Горнозаводский Район',NULL,NULL,'district','5900600000000','Y',57,500),(458,NULL,NULL,NULL,NULL,'Гдовский','Гдовский р-н','Гдовский Район','181600',NULL,'district','6000400000000','Y',59,200),(459,NULL,NULL,NULL,NULL,'Горный','Горный у','Горный Улус','678000',NULL,'district','1401200000000','Y',66,1000),(460,NULL,NULL,NULL,NULL,'Гаринский','Гаринский р-н','Гаринский Район','624910',NULL,'district','6601100000000','Y',68,900),(461,NULL,NULL,NULL,NULL,'Гагаринский','Гагаринский р-н','Гагаринский Район',NULL,NULL,'district','6700400000000','Y',70,200),(462,NULL,NULL,NULL,NULL,'Глинковский','Глинковский р-н','Глинковский Район',NULL,NULL,'district','6700500000000','Y',70,300),(463,NULL,NULL,NULL,NULL,'Георгиевский','Георгиевский р-н','Георгиевский Район',NULL,NULL,'district','2600800000000','Y',71,600),(464,NULL,NULL,NULL,NULL,'Грачевский','Грачевский р-н','Грачевский Район','356250',NULL,'district','2600900000000','Y',71,700),(465,NULL,NULL,NULL,NULL,'Гавриловский','Гавриловский р-н','Гавриловский Район','393160',NULL,'district','6800300000000','Y',72,100),(466,NULL,NULL,NULL,NULL,'Голышмановский','Голышмановский р-н','Голышмановский Район',NULL,NULL,'district','7200800000000','Y',78,600),(467,NULL,NULL,NULL,NULL,'Глазовский','Глазовский р-н','Глазовский Район',NULL,NULL,'district','1800600000000','Y',79,400),(468,NULL,NULL,NULL,NULL,'Граховский','Граховский р-н','Граховский Район',NULL,NULL,'district','1800700000000','Y',79,500),(469,NULL,NULL,NULL,NULL,'Грозненский','Грозненский р-н','Грозненский Район','366000',NULL,'district','2000400000000','Y',84,200),(470,NULL,NULL,NULL,NULL,'Гудермесский','Гудермесский р-н','Гудермесский Район','366900',NULL,'district','2000500000000','Y',84,300),(471,NULL,NULL,NULL,NULL,'Гаврилов-Ямский','Гаврилов-Ямский р-н','Гаврилов-Ямский Район',NULL,NULL,'district','7600500000000','Y',87,300),(472,NULL,NULL,NULL,NULL,'Дигорский','Дигорский р-н','Дигорский Район',NULL,NULL,'district','1500400000000','Y',8,200),(473,NULL,NULL,NULL,NULL,'Давлекановский','Давлекановский р-н','Давлекановский Район','453400',NULL,'district','0205900000000','Y',11,1900),(474,NULL,NULL,NULL,NULL,'Дуванский','Дуванский р-н','Дуванский Район','452530',NULL,'district','0202000000000','Y',11,2000),(475,NULL,NULL,NULL,NULL,'Дюртюлинский','Дюртюлинский р-н','Дюртюлинский Район','452320',NULL,'district','0206000000000','Y',11,2100),(476,NULL,NULL,NULL,NULL,'Дубровский','Дубровский р-н','Дубровский Район',NULL,NULL,'district','3200500000000','Y',13,400),(477,NULL,NULL,NULL,NULL,'Дятьковский','Дятьковский р-н','Дятьковский Район',NULL,NULL,'district','3200600000000','Y',13,500),(478,NULL,NULL,NULL,NULL,'Джидинский','Джидинский р-н','Джидинский Район',NULL,NULL,'district','0300400000000','Y',14,300),(479,NULL,NULL,NULL,NULL,'Даниловский','Даниловский р-н','Даниловский Район',NULL,NULL,'district','3400500000000','Y',16,300),(480,NULL,NULL,NULL,NULL,'Дубовский','Дубовский р-н','Дубовский Район',NULL,NULL,'district','3400600000000','Y',16,400),(481,NULL,NULL,NULL,NULL,'Дахадаевский','Дахадаевский р-н','Дахадаевский Район','368640',NULL,'district','0501200000000','Y',19,1000),(482,NULL,NULL,NULL,NULL,'Дербентский','Дербентский р-н','Дербентский Район','368600',NULL,'district','0501300000000','Y',19,1100),(483,NULL,NULL,NULL,NULL,'Докузпаринский','Докузпаринский р-н','Докузпаринский Район','368732',NULL,'district','0501400000000','Y',19,1200),(484,NULL,NULL,NULL,NULL,'Дульдургинский','Дульдургинский р-н','Дульдургинский Район',NULL,NULL,'district','7513000000000','Y',21,600),(485,NULL,NULL,NULL,NULL,'Джейрахский','Джейрахский р-н','Джейрахский Район',NULL,NULL,'district','0600200000000','Y',23,0),(486,NULL,NULL,NULL,NULL,'Дзержинский','Дзержинский р-н','Дзержинский Район',NULL,NULL,'district','4000600000000','Y',28,300),(487,NULL,NULL,NULL,NULL,'Думиничский','Думиничский р-н','Думиничский Район','249300',NULL,'district','4000700000000','Y',28,400),(488,NULL,NULL,NULL,NULL,'Даровской','Даровской р-н','Даровской Район','612140',NULL,'district','4300900000000','Y',33,700),(489,NULL,NULL,NULL,NULL,'Динской','Динской р-н','Динской Район',NULL,NULL,'district','2301000000000','Y',36,800),(490,NULL,NULL,NULL,NULL,'Дзержинский','Дзержинский р-н','Дзержинский Район',NULL,NULL,'district','2401100000000','Y',37,900),(491,NULL,NULL,NULL,NULL,'Таймырский Долгано-Ненецкий','Таймырский Долгано-Ненецкий р-н','Таймырский Долгано-Ненецкий Район','647000',NULL,'district','2404800000000','Y',37,1000),(492,NULL,NULL,NULL,NULL,'Джанкойский','Джанкойский р-н','Джанкойский Район',NULL,NULL,'district','9100300000000','Y',38,200),(493,NULL,NULL,NULL,NULL,'Далматовский','Далматовский р-н','Далматовский Район',NULL,NULL,'district','4500500000000','Y',39,300),(494,NULL,NULL,NULL,NULL,'Дмитриевский','Дмитриевский р-н','Дмитриевский Район','307500',NULL,'district','4600600000000','Y',40,400),(495,NULL,NULL,NULL,NULL,'Данковский','Данковский р-н','Данковский Район',NULL,NULL,'district','4800400000000','Y',42,200),(496,NULL,NULL,NULL,NULL,'Добринский','Добринский р-н','Добринский Район',NULL,NULL,'district','4800500000000','Y',42,300),(497,NULL,NULL,NULL,NULL,'Добровский','Добровский р-н','Добровский Район',NULL,NULL,'district','4800600000000','Y',42,400),(498,NULL,NULL,NULL,NULL,'Долгоруковский','Долгоруковский р-н','Долгоруковский Район',NULL,NULL,'district','4800700000000','Y',42,500),(499,NULL,NULL,NULL,NULL,'Дубенский','Дубенский р-н','Дубенский Район','431770',NULL,'district','1300700000000','Y',45,500),(500,NULL,NULL,NULL,NULL,'Десеновское','Десеновское п','Десеновское Поселение',NULL,NULL,'district','7700400000000','Y',46,300),(501,NULL,NULL,NULL,NULL,'Дмитровский','Дмитровский р-н','Дмитровский Район',NULL,NULL,'district','5000500000000','Y',47,200),(502,NULL,NULL,NULL,NULL,'Дальнеконстантиновский','Дальнеконстантиновский р-н','Дальнеконстантиновский Район','606310',NULL,'district','5202100000000','Y',50,1700),(503,NULL,NULL,NULL,NULL,'Дивеевский','Дивеевский р-н','Дивеевский Район','607320',NULL,'district','5202200000000','Y',50,1800),(504,NULL,NULL,NULL,NULL,'Демянский','Демянский р-н','Демянский Район','175310',NULL,'district','5300600000000','Y',51,400),(505,NULL,NULL,NULL,NULL,'Доволенский','Доволенский р-н','Доволенский Район',NULL,NULL,'district','5400600000000','Y',52,400),(506,NULL,NULL,NULL,NULL,'Домбаровский','Домбаровский р-н','Домбаровский Район','462734',NULL,'district','5604600000000','Y',54,1000),(507,NULL,NULL,NULL,NULL,'Дмитровский','Дмитровский р-н','Дмитровский Район',NULL,NULL,'district','5700500000000','Y',55,300),(508,NULL,NULL,NULL,NULL,'Должанский','Должанский р-н','Должанский Район',NULL,NULL,'district','5700600000000','Y',55,400),(509,NULL,NULL,NULL,NULL,'Дальнегорский','Дальнегорский р-н','Дальнегорский Район',NULL,NULL,'district','2500300000000','Y',58,100),(510,NULL,NULL,NULL,NULL,'Дальнереченский','Дальнереченский р-н','Дальнереченский Район',NULL,NULL,'district','2500400000000','Y',58,200),(511,NULL,NULL,NULL,NULL,'Дедовичский','Дедовичский р-н','Дедовичский Район','182711',NULL,'district','6000500000000','Y',59,300),(512,NULL,NULL,NULL,NULL,'Дновский','Дновский р-н','Дновский Район','182670',NULL,'district','6000600000000','Y',59,400),(513,NULL,NULL,NULL,NULL,'Дубовский','Дубовский р-н','Дубовский Район',NULL,NULL,'district','6101000000000','Y',60,800),(514,NULL,NULL,NULL,NULL,'Дергачевский','Дергачевский р-н','Дергачевский Район',NULL,NULL,'district','6401100000000','Y',65,900),(515,NULL,NULL,NULL,NULL,'Духовницкий','Духовницкий р-н','Духовницкий Район',NULL,NULL,'district','6401200000000','Y',65,1000),(516,NULL,NULL,NULL,NULL,'Долинский','Долинский р-н','Долинский Район','694050',NULL,'district','6500300000000','Y',67,200),(517,NULL,NULL,NULL,NULL,'Демидовский','Демидовский р-н','Демидовский Район',NULL,NULL,'district','6700600000000','Y',70,400),(518,NULL,NULL,NULL,NULL,'Дорогобужский','Дорогобужский р-н','Дорогобужский Район',NULL,NULL,'district','6700700000000','Y',70,500),(519,NULL,NULL,NULL,NULL,'Духовщинский','Духовщинский р-н','Духовщинский Район','216200',NULL,'district','6700800000000','Y',70,600),(520,NULL,NULL,NULL,NULL,'Дрожжановский','Дрожжановский р-н','Дрожжановский Район',NULL,NULL,'district','1601800000000','Y',73,1600),(521,NULL,NULL,NULL,NULL,'Дубенский','Дубенский р-н','Дубенский Район',NULL,NULL,'district','7100900000000','Y',76,600),(522,NULL,NULL,NULL,NULL,'Дзун-Хемчикский','Дзун-Хемчикский р-н','Дзун-Хемчикский Район',NULL,NULL,'district','1700400000000','Y',77,200),(523,NULL,NULL,NULL,NULL,'Дебесский','Дебесский р-н','Дебесский Район',NULL,NULL,'district','1800800000000','Y',79,600),(524,NULL,NULL,NULL,NULL,'Даниловский','Даниловский р-н','Даниловский Район',NULL,NULL,'district','7600600000000','Y',87,400),(525,NULL,NULL,NULL,NULL,'Егорьевский','Егорьевский р-н','Егорьевский Район',NULL,NULL,'district','2201000000000','Y',4,800),(526,NULL,NULL,NULL,NULL,'Ельцовский','Ельцовский р-н','Ельцовский Район',NULL,NULL,'district','2201100000000','Y',4,900),(527,NULL,NULL,NULL,NULL,'Енотаевский','Енотаевский р-н','Енотаевский Район',NULL,NULL,'district','3000400000000','Y',7,200),(528,NULL,NULL,NULL,NULL,'Ермекеевский','Ермекеевский р-н','Ермекеевский Район','452190',NULL,'district','0202100000000','Y',11,2200),(529,NULL,NULL,NULL,NULL,'Еравнинский','Еравнинский р-н','Еравнинский Район',NULL,NULL,'district','0300500000000','Y',14,400),(530,NULL,NULL,NULL,NULL,'Еланский','Еланский р-н','Еланский Район',NULL,NULL,'district','3400700000000','Y',16,500),(531,NULL,NULL,NULL,NULL,'Елизовский','Елизовский р-н','Елизовский Район',NULL,NULL,'district','4100500000000','Y',29,200),(532,NULL,NULL,NULL,NULL,'Ейский','Ейский р-н','Ейский Район',NULL,NULL,'district','2301100000000','Y',36,900),(533,NULL,NULL,NULL,NULL,'Емельяновский','Емельяновский р-н','Емельяновский Район',NULL,NULL,'district','2401200000000','Y',37,1100),(534,NULL,NULL,NULL,NULL,'Енисейский','Енисейский р-н','Енисейский Район',NULL,NULL,'district','2401300000000','Y',37,1200),(535,NULL,NULL,NULL,NULL,'Ермаковский','Ермаковский р-н','Ермаковский Район',NULL,NULL,'district','2401400000000','Y',37,1300),(536,NULL,NULL,NULL,NULL,'Елецкий','Елецкий р-н','Елецкий Район',NULL,NULL,'district','4800800000000','Y',42,600),(537,NULL,NULL,NULL,NULL,'Ельниковский','Ельниковский р-н','Ельниковский Район',NULL,NULL,'district','1300800000000','Y',45,600),(538,NULL,NULL,NULL,NULL,'Егорьевский','Егорьевский р-н','Егорьевский Район',NULL,NULL,'district','5000700000000','Y',47,300),(539,NULL,NULL,NULL,NULL,'Еловский','Еловский р-н','Еловский Район',NULL,NULL,'district','5900700000000','Y',57,600),(540,NULL,NULL,NULL,NULL,'Егорлыкский','Егорлыкский р-н','Егорлыкский Район','347660',NULL,'district','6101100000000','Y',60,900),(541,NULL,NULL,NULL,NULL,'Ермишинский','Ермишинский р-н','Ермишинский Район',NULL,NULL,'district','6200200000000','Y',61,100),(542,NULL,NULL,NULL,NULL,'Елховский','Елховский р-н','Елховский Район',NULL,NULL,'district','6300800000000','Y',63,700),(543,NULL,NULL,NULL,NULL,'Екатериновский','Екатериновский р-н','Екатериновский Район',NULL,NULL,'district','6401300000000','Y',65,1100),(544,NULL,NULL,NULL,NULL,'Ершовский','Ершовский р-н','Ершовский Район',NULL,NULL,'district','6401400000000','Y',65,1200),(545,NULL,NULL,NULL,NULL,'Ельнинский','Ельнинский р-н','Ельнинский Район',NULL,NULL,'district','6700900000000','Y',70,700),(546,NULL,NULL,NULL,NULL,'Ершичский','Ершичский р-н','Ершичский Район','216580',NULL,'district','6701000000000','Y',70,800),(547,NULL,NULL,NULL,NULL,'Елабужский','Елабужский р-н','Елабужский Район',NULL,NULL,'district','1601900000000','Y',73,1700),(548,NULL,NULL,NULL,NULL,'Ефремовский','Ефремовский р-н','Ефремовский Район',NULL,NULL,'district','7101000000000','Y',76,700),(549,NULL,NULL,NULL,NULL,'Еманжелинский','Еманжелинский р-н','Еманжелинский Район','457375',NULL,'district','7404400000000','Y',83,600),(550,NULL,NULL,NULL,NULL,'Еткульский','Еткульский р-н','Еткульский Район','456560',NULL,'district','7403000000000','Y',83,700),(551,NULL,NULL,NULL,NULL,'Жирятинский','Жирятинский р-н','Жирятинский Район',NULL,NULL,'district','3200700000000','Y',13,600),(552,NULL,NULL,NULL,NULL,'Жуковский','Жуковский р-н','Жуковский Район',NULL,NULL,'district','3200800000000','Y',13,700),(553,NULL,NULL,NULL,NULL,'Жирновский','Жирновский р-н','Жирновский Район',NULL,NULL,'district','3400800000000','Y',16,600),(554,NULL,NULL,NULL,NULL,'Жигаловский','Жигаловский р-н','Жигаловский Район',NULL,NULL,'district','3800600000000','Y',24,700),(555,NULL,NULL,NULL,NULL,'Жиздринский','Жиздринский р-н','Жиздринский Район',NULL,NULL,'district','4000800000000','Y',28,500),(556,NULL,NULL,NULL,NULL,'Жуковский','Жуковский р-н','Жуковский Район',NULL,NULL,'district','4000900000000','Y',28,600),(557,NULL,NULL,NULL,NULL,'Железногорский','Железногорский р-н','Железногорский Район','307170',NULL,'district','4600700000000','Y',40,500),(558,NULL,NULL,NULL,NULL,'Жиганский','Жиганский у','Жиганский Улус','678300',NULL,'district','1401300000000','Y',66,1100),(559,NULL,NULL,NULL,NULL,'Жердевский','Жердевский р-н','Жердевский Район','393670',NULL,'district','6800400000000','Y',72,200),(560,NULL,NULL,NULL,NULL,'Жарковский','Жарковский р-н','Жарковский Район',NULL,NULL,'district','6900800000000','Y',74,600),(561,NULL,NULL,NULL,NULL,'Завьяловский','Завьяловский р-н','Завьяловский Район',NULL,NULL,'district','2201200000000','Y',4,1000),(562,NULL,NULL,NULL,NULL,'Залесовский','Залесовский р-н','Залесовский Район',NULL,NULL,'district','2201300000000','Y',4,1100),(563,NULL,NULL,NULL,NULL,'Заринский','Заринский р-н','Заринский Район',NULL,NULL,'district','2201400000000','Y',4,1200),(564,NULL,NULL,NULL,NULL,'Змеиногорский','Змеиногорский р-н','Змеиногорский Район',NULL,NULL,'district','2201500000000','Y',4,1300),(565,NULL,NULL,NULL,NULL,'Зональный','Зональный р-н','Зональный Район',NULL,NULL,'district','2201600000000','Y',4,1400),(566,NULL,NULL,NULL,NULL,'Завитинский','Завитинский р-н','Завитинский Район',NULL,NULL,'district','2800500000000','Y',5,400),(567,NULL,NULL,NULL,NULL,'Зейский','Зейский р-н','Зейский Район',NULL,NULL,'district','2800600000000','Y',5,500),(568,NULL,NULL,NULL,NULL,'Зианчуринский','Зианчуринский р-н','Зианчуринский Район','453380',NULL,'district','0202200000000','Y',11,2300),(569,NULL,NULL,NULL,NULL,'Зилаирский','Зилаирский р-н','Зилаирский Район','453680',NULL,'district','0202300000000','Y',11,2400),(570,NULL,NULL,NULL,NULL,'Злынковский','Злынковский р-н','Злынковский Район',NULL,NULL,'district','3200900000000','Y',13,800),(571,NULL,NULL,NULL,NULL,'Заиграевский','Заиграевский р-н','Заиграевский Район','671300',NULL,'district','0300600000000','Y',14,500),(572,NULL,NULL,NULL,NULL,'Закаменский','Закаменский р-н','Закаменский Район',NULL,NULL,'district','0300700000000','Y',14,600),(573,NULL,NULL,NULL,NULL,'Забайкальский','Забайкальский р-н','Забайкальский Район',NULL,NULL,'district','7500700000000','Y',21,700),(574,NULL,NULL,NULL,NULL,'Заволжский','Заволжский р-н','Заволжский Район',NULL,NULL,'district','3700500000000','Y',22,300),(575,NULL,NULL,NULL,NULL,'Заларинский','Заларинский р-н','Заларинский Район',NULL,NULL,'district','3800700000000','Y',24,800),(576,NULL,NULL,NULL,NULL,'Зиминский','Зиминский р-н','Зиминский Район',NULL,NULL,'district','3800800000000','Y',24,900),(577,NULL,NULL,NULL,NULL,'Зольский','Зольский р-н','Зольский Район',NULL,NULL,'district','0700300000000','Y',25,100),(578,NULL,NULL,NULL,NULL,'Зеленоградский','Зеленоградский р-н','Зеленоградский Район',NULL,NULL,'district','3900600000000','Y',26,500),(579,NULL,NULL,NULL,NULL,'Зеленчукский','Зеленчукский р-н','Зеленчукский Район',NULL,NULL,'district','0900300000000','Y',30,200),(580,NULL,NULL,NULL,NULL,'Зуевский','Зуевский р-н','Зуевский Район','612410',NULL,'district','4301000000000','Y',33,800),(581,NULL,NULL,NULL,NULL,'Звериноголовский','Звериноголовский р-н','Звериноголовский Район',NULL,NULL,'district','4500600000000','Y',39,400),(582,NULL,NULL,NULL,NULL,'Золотухинский','Золотухинский р-н','Золотухинский Район',NULL,NULL,'district','4600800000000','Y',40,600),(583,NULL,NULL,NULL,NULL,'Задонский','Задонский р-н','Задонский Район',NULL,NULL,'district','4800900000000','Y',42,700),(584,NULL,NULL,NULL,NULL,'Звениговский','Звениговский р-н','Звениговский Район',NULL,NULL,'district','1200400000000','Y',44,200),(585,NULL,NULL,NULL,NULL,'Зубово-Полянский','Зубово-Полянский р-н','Зубово-Полянский Район',NULL,NULL,'district','1300900000000','Y',45,700),(586,NULL,NULL,NULL,NULL,'Зарайский','Зарайский р-н','Зарайский Район',NULL,NULL,'district','5000800000000','Y',47,400),(587,NULL,NULL,NULL,NULL,'Заполярный','Заполярный р-н','Заполярный Район','166000',NULL,'district','8300100000000','Y',49,0),(588,NULL,NULL,NULL,NULL,'Здвинский','Здвинский р-н','Здвинский Район',NULL,NULL,'district','5400700000000','Y',52,500),(589,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район',NULL,NULL,'district','5500600000000','Y',53,400),(590,NULL,NULL,NULL,NULL,'Залегощенский','Залегощенский р-н','Залегощенский Район',NULL,NULL,'district','5700700000000','Y',55,500),(591,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район',NULL,NULL,'district','5700800000000','Y',55,600),(592,NULL,NULL,NULL,NULL,'Земетчинский','Земетчинский р-н','Земетчинский Район',NULL,NULL,'district','5800900000000','Y',56,600),(593,NULL,NULL,NULL,NULL,'Заветинский','Заветинский р-н','Заветинский Район',NULL,NULL,'district','6101200000000','Y',60,1000),(594,NULL,NULL,NULL,NULL,'Зерноградский','Зерноградский р-н','Зерноградский Район',NULL,NULL,'district','6101300000000','Y',60,1100),(595,NULL,NULL,NULL,NULL,'Зимовниковский','Зимовниковский р-н','Зимовниковский Район',NULL,NULL,'district','6101400000000','Y',60,1200),(596,NULL,NULL,NULL,NULL,'Захаровский','Захаровский р-н','Захаровский Район',NULL,NULL,'district','6200300000000','Y',61,200),(597,NULL,NULL,NULL,NULL,'Знаменский','Знаменский р-н','Знаменский Район','393190',NULL,'district','6800500000000','Y',72,300),(598,NULL,NULL,NULL,NULL,'Заинский','Заинский р-н','Заинский Район','423520',NULL,'district','1602000000000','Y',73,1800),(599,NULL,NULL,NULL,NULL,'Зеленодольский','Зеленодольский р-н','Зеленодольский Район',NULL,NULL,'district','1602100000000','Y',73,1900),(600,NULL,NULL,NULL,NULL,'Западнодвинский','Западнодвинский р-н','Западнодвинский Район',NULL,NULL,'district','6900900000000','Y',74,700),(601,NULL,NULL,NULL,NULL,'Зубцовский','Зубцовский р-н','Зубцовский Район',NULL,NULL,'district','6901000000000','Y',74,800),(602,NULL,NULL,NULL,NULL,'Зырянский','Зырянский р-н','Зырянский Район',NULL,NULL,'district','7000600000000','Y',75,400),(603,NULL,NULL,NULL,NULL,'Заокский','Заокский р-н','Заокский Район',NULL,NULL,'district','7101100000000','Y',76,800),(604,NULL,NULL,NULL,NULL,'Заводоуковский','Заводоуковский р-н','Заводоуковский Район',NULL,NULL,'district','7200900000000','Y',78,700),(605,NULL,NULL,NULL,NULL,'Завьяловский','Завьяловский р-н','Завьяловский Район',NULL,NULL,'district','1800900000000','Y',79,700),(606,NULL,NULL,NULL,NULL,'Ивановский','Ивановский р-н','Ивановский Район',NULL,NULL,'district','2800700000000','Y',5,600),(607,NULL,NULL,NULL,NULL,'Икрянинский','Икрянинский р-н','Икрянинский Район',NULL,NULL,'district','3000500000000','Y',7,300),(608,NULL,NULL,NULL,NULL,'Ирафский','Ирафский р-н','Ирафский Район',NULL,NULL,'district','1500500000000','Y',8,300),(609,NULL,NULL,NULL,NULL,'Иглинский','Иглинский р-н','Иглинский Район','452411',NULL,'district','0202400000000','Y',11,2500),(610,NULL,NULL,NULL,NULL,'Илишевский','Илишевский р-н','Илишевский Район','452260',NULL,'district','0202500000000','Y',11,2600),(611,NULL,NULL,NULL,NULL,'Ишимбайский','Ишимбайский р-н','Ишимбайский Район','453200',NULL,'district','0202600000000','Y',11,2700),(612,NULL,NULL,NULL,NULL,'Ивнянский','Ивнянский р-н','Ивнянский Район',NULL,NULL,'district','3100900000000','Y',12,800),(613,NULL,NULL,NULL,NULL,'Иволгинский','Иволгинский р-н','Иволгинский Район','671052',NULL,'district','0300800000000','Y',14,700),(614,NULL,NULL,NULL,NULL,'Иловлинский','Иловлинский р-н','Иловлинский Район',NULL,NULL,'district','3400900000000','Y',16,700),(615,NULL,NULL,NULL,NULL,'Ивановский','Ивановский р-н','Ивановский Район',NULL,NULL,'district','3700100000000','Y',22,400),(616,NULL,NULL,NULL,NULL,'Ильинский','Ильинский р-н','Ильинский Район',NULL,NULL,'district','3700600000000','Y',22,500),(617,NULL,NULL,NULL,NULL,'Иркутский','Иркутский р-н','Иркутский Район',NULL,NULL,'district','3800100000000','Y',24,1000),(618,NULL,NULL,NULL,NULL,'Ики-Бурульский','Ики-Бурульский р-н','Ики-Бурульский Район',NULL,NULL,'district','0800300000000','Y',27,100),(619,NULL,NULL,NULL,NULL,'Износковский','Износковский р-н','Износковский Район','249880',NULL,'district','4001000000000','Y',28,700),(620,NULL,NULL,NULL,NULL,'Ижморский','Ижморский р-н','Ижморский Район',NULL,NULL,'district','4200400000000','Y',32,200),(621,NULL,NULL,NULL,NULL,'Ижемский','Ижемский р-н','Ижемский Район',NULL,NULL,'district','1100400000000','Y',34,0),(622,NULL,NULL,NULL,NULL,'Идринский','Идринский р-н','Идринский Район',NULL,NULL,'district','2401500000000','Y',37,1400),(623,NULL,NULL,NULL,NULL,'Иланский','Иланский р-н','Иланский Район',NULL,NULL,'district','2401600000000','Y',37,1500),(624,NULL,NULL,NULL,NULL,'Ирбейский','Ирбейский р-н','Ирбейский Район',NULL,NULL,'district','2401700000000','Y',37,1600),(625,NULL,NULL,NULL,NULL,'Измалковский','Измалковский р-н','Измалковский Район',NULL,NULL,'district','4801000000000','Y',42,800),(626,NULL,NULL,NULL,NULL,'Инсарский','Инсарский р-н','Инсарский Район',NULL,NULL,'district','1301000000000','Y',45,800),(627,NULL,NULL,NULL,NULL,'Ичалковский','Ичалковский р-н','Ичалковский Район',NULL,NULL,'district','1301100000000','Y',45,900),(628,NULL,NULL,NULL,NULL,'Истринский','Истринский р-н','Истринский Район','143500',NULL,'district','5000900000000','Y',47,500),(629,NULL,NULL,NULL,NULL,'Искитимский','Искитимский р-н','Искитимский Район',NULL,NULL,'district','5400800000000','Y',52,600),(630,NULL,NULL,NULL,NULL,'Исилькульский','Исилькульский р-н','Исилькульский Район',NULL,NULL,'district','5500700000000','Y',53,500),(631,NULL,NULL,NULL,NULL,'Илекский','Илекский р-н','Илекский Район','461350',NULL,'district','5604700000000','Y',54,1100),(632,NULL,NULL,NULL,NULL,'Иссинский','Иссинский р-н','Иссинский Район',NULL,NULL,'district','5801000000000','Y',56,700),(633,NULL,NULL,NULL,NULL,'Ильинский','Ильинский р-н','Ильинский Район',NULL,NULL,'district','5900800000000','Y',57,700),(634,NULL,NULL,NULL,NULL,'Ибресинский','Ибресинский р-н','Ибресинский Район',NULL,NULL,'district','2100600000000','Y',62,400),(635,NULL,NULL,NULL,NULL,'Исаклинский','Исаклинский р-н','Исаклинский Район',NULL,NULL,'district','6300900000000','Y',63,800),(636,NULL,NULL,NULL,NULL,'Ивантеевский','Ивантеевский р-н','Ивантеевский Район',NULL,NULL,'district','6401500000000','Y',65,1300),(637,NULL,NULL,NULL,NULL,'Ирбитский','Ирбитский р-н','Ирбитский Район','623850',NULL,'district','6601200000000','Y',68,1000),(638,NULL,NULL,NULL,NULL,'Изобильненский','Изобильненский р-н','Изобильненский Район',NULL,NULL,'district','2601000000000','Y',71,800),(639,NULL,NULL,NULL,NULL,'Ипатовский','Ипатовский р-н','Ипатовский Район',NULL,NULL,'district','2601100000000','Y',71,900),(640,NULL,NULL,NULL,NULL,'Инжавинский','Инжавинский р-н','Инжавинский Район','393310',NULL,'district','6800600000000','Y',72,400),(641,NULL,NULL,NULL,NULL,'Исетский','Исетский р-н','Исетский Район',NULL,NULL,'district','7201000000000','Y',78,800),(642,NULL,NULL,NULL,NULL,'Ишимский','Ишимский р-н','Ишимский Район',NULL,NULL,'district','7201100000000','Y',78,900),(643,NULL,NULL,NULL,NULL,'Игринский','Игринский р-н','Игринский Район',NULL,NULL,'district','1801000000000','Y',79,800),(644,NULL,NULL,NULL,NULL,'Инзенский','Инзенский р-н','Инзенский Район','433000',NULL,'district','7300500000000','Y',80,300),(645,NULL,NULL,NULL,NULL,'Имени Лазо','Имени Лазо р-н','Имени Лазо Район',NULL,NULL,'district','2700800000000','Y',81,600),(646,NULL,NULL,NULL,NULL,'Имени Полины Осипенко','Имени Полины Осипенко р-н','Имени Полины Осипенко Район','682380',NULL,'district','2700900000000','Y',81,700),(647,NULL,NULL,NULL,NULL,'Итум-Калинский','Итум-Калинский р-н','Итум-Калинский Район','366400',NULL,'district','2002800000000','Y',84,400),(648,NULL,NULL,NULL,NULL,'Иультинский','Иультинский р-н','Иультинский Район',NULL,NULL,'district','8700400000000','Y',85,200),(649,NULL,NULL,NULL,NULL,'Кошехабльский','Кошехабльский р-н','Кошехабльский Район','385400',NULL,'district','0100200000000','Y',2,100),(650,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район','385300',NULL,'district','0100300000000','Y',2,200),(651,NULL,NULL,NULL,NULL,'Кош-Агачский','Кош-Агачский р-н','Кош-Агачский Район',NULL,NULL,'district','0400200000000','Y',3,0),(652,NULL,NULL,NULL,NULL,'Калманский','Калманский р-н','Калманский Район',NULL,NULL,'district','2201700000000','Y',4,1500),(653,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','2201800000000','Y',4,1600),(654,NULL,NULL,NULL,NULL,'Ключевский','Ключевский р-н','Ключевский Район',NULL,NULL,'district','2201900000000','Y',4,1700),(655,NULL,NULL,NULL,NULL,'Косихинский','Косихинский р-н','Косихинский Район',NULL,NULL,'district','2202000000000','Y',4,1800),(656,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','2202100000000','Y',4,1900),(657,NULL,NULL,NULL,NULL,'Краснощёковский','Краснощёковский р-н','Краснощёковский Район',NULL,NULL,'district','2202200000000','Y',4,2000),(658,NULL,NULL,NULL,NULL,'Крутихинский','Крутихинский р-н','Крутихинский Район',NULL,NULL,'district','2202300000000','Y',4,2100),(659,NULL,NULL,NULL,NULL,'Кулундинский','Кулундинский р-н','Кулундинский Район',NULL,NULL,'district','2202400000000','Y',4,2200),(660,NULL,NULL,NULL,NULL,'Курьинский','Курьинский р-н','Курьинский Район',NULL,NULL,'district','2202500000000','Y',4,2300),(661,NULL,NULL,NULL,NULL,'Кытмановский','Кытмановский р-н','Кытмановский Район',NULL,NULL,'district','2202600000000','Y',4,2400),(662,NULL,NULL,NULL,NULL,'Константиновский','Константиновский р-н','Константиновский Район',NULL,NULL,'district','2800800000000','Y',5,700),(663,NULL,NULL,NULL,NULL,'Каргопольский','Каргопольский р-н','Каргопольский Район',NULL,NULL,'district','2900600000000','Y',6,400),(664,NULL,NULL,NULL,NULL,'Коношский','Коношский р-н','Коношский Район',NULL,NULL,'district','2900700000000','Y',6,500),(665,NULL,NULL,NULL,NULL,'Котласский','Котласский р-н','Котласский Район',NULL,NULL,'district','2900800000000','Y',6,600),(666,NULL,NULL,NULL,NULL,'Красноборский','Красноборский р-н','Красноборский Район',NULL,NULL,'district','2900900000000','Y',6,700),(667,NULL,NULL,NULL,NULL,'Камызякский','Камызякский р-н','Камызякский Район',NULL,NULL,'district','3000600000000','Y',7,400),(668,NULL,NULL,NULL,NULL,'Красноярский','Красноярский р-н','Красноярский Район',NULL,NULL,'district','3000700000000','Y',7,500),(669,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район','363600',NULL,'district','1500600000000','Y',8,400),(670,NULL,NULL,NULL,NULL,'Кондинский','Кондинский р-н','Кондинский Район',NULL,NULL,'district','8600400000000','Y',9,200),(671,NULL,NULL,NULL,NULL,'Калтасинский','Калтасинский р-н','Калтасинский Район','452860',NULL,'district','0202700000000','Y',11,2800),(672,NULL,NULL,NULL,NULL,'Караидельский','Караидельский р-н','Караидельский Район','452360',NULL,'district','0202800000000','Y',11,2900),(673,NULL,NULL,NULL,NULL,'Кармаскалинский','Кармаскалинский р-н','Кармаскалинский Район','453020',NULL,'district','0202900000000','Y',11,3000),(674,NULL,NULL,NULL,NULL,'Кигинский','Кигинский р-н','Кигинский Район','452500',NULL,'district','0203000000000','Y',11,3100),(675,NULL,NULL,NULL,NULL,'Краснокамский','Краснокамский р-н','Краснокамский Район','452930',NULL,'district','0203100000000','Y',11,3200),(676,NULL,NULL,NULL,NULL,'Кугарчинский','Кугарчинский р-н','Кугарчинский Район','453331',NULL,'district','0203200000000','Y',11,3300),(677,NULL,NULL,NULL,NULL,'Кушнаренковский','Кушнаренковский р-н','Кушнаренковский Район','452230',NULL,'district','0203400000000','Y',11,3400),(678,NULL,NULL,NULL,NULL,'Куюргазинский','Куюргазинский р-н','Куюргазинский Район','453300',NULL,'district','0203300000000','Y',11,3500),(679,NULL,NULL,NULL,NULL,'Корочанский','Корочанский р-н','Корочанский Район',NULL,NULL,'district','3101000000000','Y',12,900),(680,NULL,NULL,NULL,NULL,'Красненский','Красненский р-н','Красненский Район',NULL,NULL,'district','3101100000000','Y',12,1000),(681,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','3101200000000','Y',12,1100),(682,NULL,NULL,NULL,NULL,'Краснояружский','Краснояружский р-н','Краснояружский Район',NULL,NULL,'district','3101300000000','Y',12,1200),(683,NULL,NULL,NULL,NULL,'Карачевский','Карачевский р-н','Карачевский Район','242500',NULL,'district','3201000000000','Y',13,900),(684,NULL,NULL,NULL,NULL,'Клетнянский','Клетнянский р-н','Клетнянский Район','242821',NULL,'district','3201100000000','Y',13,1000),(685,NULL,NULL,NULL,NULL,'Климовский','Климовский р-н','Климовский Район',NULL,NULL,'district','3201200000000','Y',13,1100),(686,NULL,NULL,NULL,NULL,'Клинцовский','Клинцовский р-н','Клинцовский Район','243650',NULL,'district','3201300000000','Y',13,1200),(687,NULL,NULL,NULL,NULL,'Комаричский','Комаричский р-н','Комаричский Район',NULL,NULL,'district','3201400000000','Y',13,1300),(688,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','3201500000000','Y',13,1400),(689,NULL,NULL,NULL,NULL,'Кабанский','Кабанский р-н','Кабанский Район',NULL,NULL,'district','0300900000000','Y',14,800),(690,NULL,NULL,NULL,NULL,'Кижингинский','Кижингинский р-н','Кижингинский Район',NULL,NULL,'district','0301000000000','Y',14,900),(691,NULL,NULL,NULL,NULL,'Курумканский','Курумканский р-н','Курумканский Район','671640',NULL,'district','0301100000000','Y',14,1000),(692,NULL,NULL,NULL,NULL,'Кяхтинский','Кяхтинский р-н','Кяхтинский Район',NULL,NULL,'district','0301200000000','Y',14,1100),(693,NULL,NULL,NULL,NULL,'Камешковский','Камешковский р-н','Камешковский Район',NULL,NULL,'district','3300600000000','Y',15,400),(694,NULL,NULL,NULL,NULL,'Киржачский','Киржачский р-н','Киржачский Район',NULL,NULL,'district','3300700000000','Y',15,500),(695,NULL,NULL,NULL,NULL,'Ковровский','Ковровский р-н','Ковровский Район',NULL,NULL,'district','3300800000000','Y',15,600),(696,NULL,NULL,NULL,NULL,'Кольчугинский','Кольчугинский р-н','Кольчугинский Район',NULL,NULL,'district','3300900000000','Y',15,700),(697,NULL,NULL,NULL,NULL,'Калачевский','Калачевский р-н','Калачевский Район',NULL,NULL,'district','3401000000000','Y',16,800),(698,NULL,NULL,NULL,NULL,'Камышинский','Камышинский р-н','Камышинский Район',NULL,NULL,'district','3401100000000','Y',16,900),(699,NULL,NULL,NULL,NULL,'Киквидзенский','Киквидзенский р-н','Киквидзенский Район',NULL,NULL,'district','3401200000000','Y',16,1000),(700,NULL,NULL,NULL,NULL,'Клетский','Клетский р-н','Клетский Район',NULL,NULL,'district','3401300000000','Y',16,1100),(701,NULL,NULL,NULL,NULL,'Котельниковский','Котельниковский р-н','Котельниковский Район',NULL,NULL,'district','3401400000000','Y',16,1200),(702,NULL,NULL,NULL,NULL,'Котовский','Котовский р-н','Котовский Район',NULL,NULL,'district','3401500000000','Y',16,1300),(703,NULL,NULL,NULL,NULL,'Кумылженский','Кумылженский р-н','Кумылженский Район','403400',NULL,'district','3401600000000','Y',16,1400),(704,NULL,NULL,NULL,NULL,'Кадуйский','Кадуйский р-н','Кадуйский Район',NULL,NULL,'district','3501100000000','Y',17,1000),(705,NULL,NULL,NULL,NULL,'Кирилловский','Кирилловский р-н','Кирилловский Район',NULL,NULL,'district','3501200000000','Y',17,1100),(706,NULL,NULL,NULL,NULL,'Кичменгско-Городецкий','Кичменгско-Городецкий р-н','Кичменгско-Городецкий Район','161400',NULL,'district','3501300000000','Y',17,1200),(707,NULL,NULL,NULL,NULL,'Калачеевский','Калачеевский р-н','Калачеевский Район',NULL,NULL,'district','3601100000000','Y',18,900),(708,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','3601200000000','Y',18,1000),(709,NULL,NULL,NULL,NULL,'Кантемировский','Кантемировский р-н','Кантемировский Район',NULL,NULL,'district','3601300000000','Y',18,1100),(710,NULL,NULL,NULL,NULL,'Каширский','Каширский р-н','Каширский Район',NULL,NULL,'district','3601400000000','Y',18,1200),(711,NULL,NULL,NULL,NULL,'Казбековский','Казбековский р-н','Казбековский Район','368050',NULL,'district','0501500000000','Y',19,1300),(712,NULL,NULL,NULL,NULL,'Кайтагский','Кайтагский р-н','Кайтагский Район','368630',NULL,'district','0501600000000','Y',19,1400),(713,NULL,NULL,NULL,NULL,'Карабудахкентский','Карабудахкентский р-н','Карабудахкентский Район','368530',NULL,'district','0501700000000','Y',19,1500),(714,NULL,NULL,NULL,NULL,'Каякентский','Каякентский р-н','Каякентский Район','368560',NULL,'district','0501800000000','Y',19,1600),(715,NULL,NULL,NULL,NULL,'Кизилюртовский','Кизилюртовский р-н','Кизилюртовский Район','368100',NULL,'district','0501900000000','Y',19,1700),(716,NULL,NULL,NULL,NULL,'Кизлярский','Кизлярский р-н','Кизлярский Район','368800',NULL,'district','0502000000000','Y',19,1800),(717,NULL,NULL,NULL,NULL,'Кулинский','Кулинский р-н','Кулинский Район','368370',NULL,'district','0502200000000','Y',19,1900),(718,NULL,NULL,NULL,NULL,'Кумторкалинский','Кумторкалинский р-н','Кумторкалинский Район','368220',NULL,'district','0502300000000','Y',19,2000),(719,NULL,NULL,NULL,NULL,'Курахский','Курахский р-н','Курахский Район','368720',NULL,'district','0502400000000','Y',19,2100),(720,NULL,NULL,NULL,NULL,'Каларский','Каларский р-н','Каларский Район',NULL,NULL,'district','7500800000000','Y',21,800),(721,NULL,NULL,NULL,NULL,'Калганский','Калганский р-н','Калганский Район',NULL,NULL,'district','7500900000000','Y',21,900),(722,NULL,NULL,NULL,NULL,'Карымский','Карымский р-н','Карымский Район',NULL,NULL,'district','7501000000000','Y',21,1000),(723,NULL,NULL,NULL,NULL,'Краснокаменский','Краснокаменский р-н','Краснокаменский Район',NULL,NULL,'district','7501100000000','Y',21,1100),(724,NULL,NULL,NULL,NULL,'Красночикойский','Красночикойский р-н','Красночикойский Район',NULL,NULL,'district','7501200000000','Y',21,1200),(725,NULL,NULL,NULL,NULL,'Кыринский','Кыринский р-н','Кыринский Район',NULL,NULL,'district','7501300000000','Y',21,1300),(726,NULL,NULL,NULL,NULL,'Кинешемский','Кинешемский р-н','Кинешемский Район',NULL,NULL,'district','3700700000000','Y',22,600),(727,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район',NULL,NULL,'district','3700800000000','Y',22,700),(728,NULL,NULL,NULL,NULL,'Казачинско-Ленский','Казачинско-Ленский р-н','Казачинско-Ленский Район',NULL,NULL,'district','3800900000000','Y',24,1100),(729,NULL,NULL,NULL,NULL,'Катангский','Катангский р-н','Катангский Район',NULL,NULL,'district','3801000000000','Y',24,1200),(730,NULL,NULL,NULL,NULL,'Качугский','Качугский р-н','Качугский Район','666202',NULL,'district','3801100000000','Y',24,1300),(731,NULL,NULL,NULL,NULL,'Киренский','Киренский р-н','Киренский Район',NULL,NULL,'district','3801200000000','Y',24,1400),(732,NULL,NULL,NULL,NULL,'Куйтунский','Куйтунский р-н','Куйтунский Район',NULL,NULL,'district','3801300000000','Y',24,1500),(733,NULL,NULL,NULL,NULL,'Краснознаменский','Краснознаменский р-н','Краснознаменский Район',NULL,NULL,'district','3900700000000','Y',26,600),(734,NULL,NULL,NULL,NULL,'Кетченеровский','Кетченеровский р-н','Кетченеровский Район',NULL,NULL,'district','0800500000000','Y',27,200),(735,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район','249440',NULL,'district','4001100000000','Y',28,800),(736,NULL,NULL,NULL,NULL,'Козельский','Козельский р-н','Козельский Район',NULL,NULL,'district','4001200000000','Y',28,900),(737,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','4001300000000','Y',28,1000),(738,NULL,NULL,NULL,NULL,'Карагинский','Карагинский р-н','Карагинский Район','688700',NULL,'district','4101000000000','Y',29,300),(739,NULL,NULL,NULL,NULL,'Карачаевский','Карачаевский р-н','Карачаевский Район',NULL,NULL,'district','0900400000000','Y',30,300),(740,NULL,NULL,NULL,NULL,'Калевальский','Калевальский р-н','Калевальский Район',NULL,NULL,'district','1000300000000','Y',31,100),(741,NULL,NULL,NULL,NULL,'Кемский','Кемский р-н','Кемский Район','186606',NULL,'district','1000400000000','Y',31,200),(742,NULL,NULL,NULL,NULL,'Кондопожский','Кондопожский р-н','Кондопожский Район',NULL,NULL,'district','1000500000000','Y',31,300),(743,NULL,NULL,NULL,NULL,'Кемеровский','Кемеровский р-н','Кемеровский Район',NULL,NULL,'district','4200100000000','Y',32,300),(744,NULL,NULL,NULL,NULL,'Крапивинский','Крапивинский р-н','Крапивинский Район',NULL,NULL,'district','4200500000000','Y',32,400),(745,NULL,NULL,NULL,NULL,'Кикнурский','Кикнурский р-н','Кикнурский Район','612300',NULL,'district','4301100000000','Y',33,900),(746,NULL,NULL,NULL,NULL,'Кильмезский','Кильмезский р-н','Кильмезский Район','613570',NULL,'district','4301200000000','Y',33,1000),(747,NULL,NULL,NULL,NULL,'Кирово-Чепецкий','Кирово-Чепецкий р-н','Кирово-Чепецкий Район','613040',NULL,'district','4301300000000','Y',33,1100),(748,NULL,NULL,NULL,NULL,'Котельничский','Котельничский р-н','Котельничский Район','612600',NULL,'district','4301400000000','Y',33,1200),(749,NULL,NULL,NULL,NULL,'Куменский','Куменский р-н','Куменский Район','613400',NULL,'district','4301500000000','Y',33,1300),(750,NULL,NULL,NULL,NULL,'Княжпогостский','Княжпогостский р-н','Княжпогостский Район',NULL,NULL,'district','1100600000000','Y',34,100),(751,NULL,NULL,NULL,NULL,'Койгородский','Койгородский р-н','Койгородский Район',NULL,NULL,'district','1100700000000','Y',34,200),(752,NULL,NULL,NULL,NULL,'Корткеросский','Корткеросский р-н','Корткеросский Район',NULL,NULL,'district','1100800000000','Y',34,300),(753,NULL,NULL,NULL,NULL,'Кадыйский','Кадыйский р-н','Кадыйский Район','157980',NULL,'district','4400600000000','Y',35,400),(754,NULL,NULL,NULL,NULL,'Кологривский','Кологривский р-н','Кологривский Район',NULL,NULL,'district','4400700000000','Y',35,500),(755,NULL,NULL,NULL,NULL,'Костромской','Костромской р-н','Костромской Район',NULL,NULL,'district','4400100000000','Y',35,600),(756,NULL,NULL,NULL,NULL,'Красносельский','Красносельский р-н','Красносельский Район','157940',NULL,'district','4400800000000','Y',35,700),(757,NULL,NULL,NULL,NULL,'Кавказский','Кавказский р-н','Кавказский Район',NULL,NULL,'district','2301200000000','Y',36,1000),(758,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','2301300000000','Y',36,1100),(759,NULL,NULL,NULL,NULL,'Каневской','Каневской р-н','Каневской Район','353730',NULL,'district','2301400000000','Y',36,1200),(760,NULL,NULL,NULL,NULL,'Кореновский','Кореновский р-н','Кореновский Район',NULL,NULL,'district','2301500000000','Y',36,1300),(761,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2301600000000','Y',36,1400),(762,NULL,NULL,NULL,NULL,'Крыловский','Крыловский р-н','Крыловский Район',NULL,NULL,'district','2301700000000','Y',36,1500),(763,NULL,NULL,NULL,NULL,'Крымский','Крымский р-н','Крымский Район',NULL,NULL,'district','2301800000000','Y',36,1600),(764,NULL,NULL,NULL,NULL,'Курганинский','Курганинский р-н','Курганинский Район',NULL,NULL,'district','2301900000000','Y',36,1700),(765,NULL,NULL,NULL,NULL,'Кущевский','Кущевский р-н','Кущевский Район',NULL,NULL,'district','2302000000000','Y',36,1800),(766,NULL,NULL,NULL,NULL,'Казачинский','Казачинский р-н','Казачинский Район',NULL,NULL,'district','2401800000000','Y',37,1700),(767,NULL,NULL,NULL,NULL,'Канский','Канский р-н','Канский Район',NULL,NULL,'district','2401900000000','Y',37,1800),(768,NULL,NULL,NULL,NULL,'Каратузский','Каратузский р-н','Каратузский Район','662850',NULL,'district','2402000000000','Y',37,1900),(769,NULL,NULL,NULL,NULL,'Кежемский','Кежемский р-н','Кежемский Район',NULL,NULL,'district','2402100000000','Y',37,2000),(770,NULL,NULL,NULL,NULL,'Козульский','Козульский р-н','Козульский Район',NULL,NULL,'district','2402200000000','Y',37,2100),(771,NULL,NULL,NULL,NULL,'Краснотуранский','Краснотуранский р-н','Краснотуранский Район',NULL,NULL,'district','2402300000000','Y',37,2200),(772,NULL,NULL,NULL,NULL,'Курагинский','Курагинский р-н','Курагинский Район',NULL,NULL,'district','2402400000000','Y',37,2300),(773,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','9100400000000','Y',38,300),(774,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','9100500000000','Y',38,400),(775,NULL,NULL,NULL,NULL,'Красноперекопский','Красноперекопский р-н','Красноперекопский Район',NULL,NULL,'district','9100600000000','Y',38,500),(776,NULL,NULL,NULL,NULL,'Каргапольский','Каргапольский р-н','Каргапольский Район',NULL,NULL,'district','4500700000000','Y',39,500),(777,NULL,NULL,NULL,NULL,'Катайский','Катайский р-н','Катайский Район',NULL,NULL,'district','4500800000000','Y',39,600),(778,NULL,NULL,NULL,NULL,'Кетовский','Кетовский р-н','Кетовский Район',NULL,NULL,'district','4500900000000','Y',39,700),(779,NULL,NULL,NULL,NULL,'Куртамышский','Куртамышский р-н','Куртамышский Район',NULL,NULL,'district','4501000000000','Y',39,800),(780,NULL,NULL,NULL,NULL,'Касторенский','Касторенский р-н','Касторенский Район',NULL,NULL,'district','4600900000000','Y',40,700),(781,NULL,NULL,NULL,NULL,'Конышевский','Конышевский р-н','Конышевский Район','307620',NULL,'district','4601000000000','Y',40,800),(782,NULL,NULL,NULL,NULL,'Кореневский','Кореневский р-н','Кореневский Район',NULL,NULL,'district','4601100000000','Y',40,900),(783,NULL,NULL,NULL,NULL,'Курский','Курский р-н','Курский Район',NULL,NULL,'district','4602900000000','Y',40,1000),(784,NULL,NULL,NULL,NULL,'Курчатовский','Курчатовский р-н','Курчатовский Район','307250',NULL,'district','4601200000000','Y',40,1100),(785,NULL,NULL,NULL,NULL,'Кингисеппский','Кингисеппский р-н','Кингисеппский Район',NULL,NULL,'district','4700800000000','Y',41,600),(786,NULL,NULL,NULL,NULL,'Киришский','Киришский р-н','Киришский Район',NULL,NULL,'district','4700900000000','Y',41,700),(787,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','4701000000000','Y',41,800),(788,NULL,NULL,NULL,NULL,'Краснинский','Краснинский р-н','Краснинский Район',NULL,NULL,'district','4801100000000','Y',42,900),(789,NULL,NULL,NULL,NULL,'Килемарский','Килемарский р-н','Килемарский Район',NULL,NULL,'district','1200500000000','Y',44,300),(790,NULL,NULL,NULL,NULL,'Куженерский','Куженерский р-н','Куженерский Район',NULL,NULL,'district','1200600000000','Y',44,400),(791,NULL,NULL,NULL,NULL,'Кадошкинский','Кадошкинский р-н','Кадошкинский Район',NULL,NULL,'district','1301200000000','Y',45,1000),(792,NULL,NULL,NULL,NULL,'Ковылкинский','Ковылкинский р-н','Ковылкинский Район',NULL,NULL,'district','1301300000000','Y',45,1100),(793,NULL,NULL,NULL,NULL,'Кочкуровский','Кочкуровский р-н','Кочкуровский Район',NULL,NULL,'district','1301400000000','Y',45,1200),(794,NULL,NULL,NULL,NULL,'Краснослободский','Краснослободский р-н','Краснослободский Район',NULL,NULL,'district','1301500000000','Y',45,1300),(795,NULL,NULL,NULL,NULL,'Киевский','Киевский п','Киевский Поселение',NULL,NULL,'district','7700500000000','Y',46,400),(796,NULL,NULL,NULL,NULL,'Кленовское','Кленовское п','Кленовское Поселение',NULL,NULL,'district','7700600000000','Y',46,500),(797,NULL,NULL,NULL,NULL,'Кокошкино','Кокошкино п','Кокошкино Поселение',NULL,NULL,'district','7700700000000','Y',46,600),(798,NULL,NULL,NULL,NULL,'Краснопахорское','Краснопахорское п','Краснопахорское Поселение',NULL,NULL,'district','7700800000000','Y',46,700),(799,NULL,NULL,NULL,NULL,'Каширский','Каширский р-н','Каширский Район',NULL,NULL,'district','5001000000000','Y',47,600),(800,NULL,NULL,NULL,NULL,'Клинский','Клинский р-н','Клинский Район','141601',NULL,'district','5001100000000','Y',47,700),(801,NULL,NULL,NULL,NULL,'Коломенский','Коломенский р-н','Коломенский Район',NULL,NULL,'district','5001200000000','Y',47,800),(802,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','5001300000000','Y',47,900),(803,NULL,NULL,NULL,NULL,'Кандалакшский','Кандалакшский р-н','Кандалакшский Район','184042',NULL,'district','5100100000000','Y',48,0),(804,NULL,NULL,NULL,NULL,'Ковдорский','Ковдорский р-н','Ковдорский Район','184144',NULL,'district','5100200000000','Y',48,100),(805,NULL,NULL,NULL,NULL,'Кольский','Кольский р-н','Кольский Район','184380',NULL,'district','5100300000000','Y',48,200),(806,NULL,NULL,NULL,NULL,'Княгининский','Княгининский р-н','Княгининский Район','606340',NULL,'district','5202300000000','Y',50,1900),(807,NULL,NULL,NULL,NULL,'Ковернинский','Ковернинский р-н','Ковернинский Район','606570',NULL,'district','5202400000000','Y',50,2000),(808,NULL,NULL,NULL,NULL,'Краснобаковский','Краснобаковский р-н','Краснобаковский Район','606710',NULL,'district','5202500000000','Y',50,2100),(809,NULL,NULL,NULL,NULL,'Краснооктябрьский','Краснооктябрьский р-н','Краснооктябрьский Район','607530',NULL,'district','5202600000000','Y',50,2200),(810,NULL,NULL,NULL,NULL,'Кстовский','Кстовский р-н','Кстовский Район','607650',NULL,'district','5202700000000','Y',50,2300),(811,NULL,NULL,NULL,NULL,'Кулебакский','Кулебакский р-н','Кулебакский Район','607010',NULL,'district','5202800000000','Y',50,2400),(812,NULL,NULL,NULL,NULL,'Крестецкий','Крестецкий р-н','Крестецкий Район',NULL,NULL,'district','5300700000000','Y',51,500),(813,NULL,NULL,NULL,NULL,'Карасукский','Карасукский р-н','Карасукский Район',NULL,NULL,'district','5400900000000','Y',52,700),(814,NULL,NULL,NULL,NULL,'Каргатский','Каргатский р-н','Каргатский Район',NULL,NULL,'district','5401000000000','Y',52,800),(815,NULL,NULL,NULL,NULL,'Колыванский','Колыванский р-н','Колыванский Район',NULL,NULL,'district','5401100000000','Y',52,900),(816,NULL,NULL,NULL,NULL,'Коченевский','Коченевский р-н','Коченевский Район',NULL,NULL,'district','5401200000000','Y',52,1000),(817,NULL,NULL,NULL,NULL,'Кочковский','Кочковский р-н','Кочковский Район',NULL,NULL,'district','5401300000000','Y',52,1100),(818,NULL,NULL,NULL,NULL,'Краснозерский','Краснозерский р-н','Краснозерский Район',NULL,NULL,'district','5401400000000','Y',52,1200),(819,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','5401500000000','Y',52,1300),(820,NULL,NULL,NULL,NULL,'Купинский','Купинский р-н','Купинский Район',NULL,NULL,'district','5401600000000','Y',52,1400),(821,NULL,NULL,NULL,NULL,'Кыштовский','Кыштовский р-н','Кыштовский Район',NULL,NULL,'district','5401700000000','Y',52,1500),(822,NULL,NULL,NULL,NULL,'Калачинский','Калачинский р-н','Калачинский Район',NULL,NULL,'district','5500800000000','Y',53,600),(823,NULL,NULL,NULL,NULL,'Колосовский','Колосовский р-н','Колосовский Район',NULL,NULL,'district','5500900000000','Y',53,700),(824,NULL,NULL,NULL,NULL,'Кормиловский','Кормиловский р-н','Кормиловский Район',NULL,NULL,'district','5501000000000','Y',53,800),(825,NULL,NULL,NULL,NULL,'Крутинский','Крутинский р-н','Крутинский Район',NULL,NULL,'district','5501100000000','Y',53,900),(826,NULL,NULL,NULL,NULL,'Кваркенский','Кваркенский р-н','Кваркенский Район','462860',NULL,'district','5604800000000','Y',54,1200),(827,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район','461150',NULL,'district','5604900000000','Y',54,1300),(828,NULL,NULL,NULL,NULL,'Кувандыкский','Кувандыкский р-н','Кувандыкский Район','462202',NULL,'district','5601300000000','Y',54,1400),(829,NULL,NULL,NULL,NULL,'Курманаевский','Курманаевский р-н','Курманаевский Район','461060',NULL,'district','5601600000000','Y',54,1500),(830,NULL,NULL,NULL,NULL,'Колпнянский','Колпнянский р-н','Колпнянский Район',NULL,NULL,'district','5700900000000','Y',55,700),(831,NULL,NULL,NULL,NULL,'Корсаковский','Корсаковский р-н','Корсаковский Район',NULL,NULL,'district','5701000000000','Y',55,800),(832,NULL,NULL,NULL,NULL,'Краснозоренский','Краснозоренский р-н','Краснозоренский Район',NULL,NULL,'district','5701100000000','Y',55,900),(833,NULL,NULL,NULL,NULL,'Кромской','Кромской р-н','Кромской Район',NULL,NULL,'district','5701200000000','Y',55,1000),(834,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','5801100000000','Y',56,800),(835,NULL,NULL,NULL,NULL,'Камешкирский','Камешкирский р-н','Камешкирский Район',NULL,NULL,'district','5801200000000','Y',56,900),(836,NULL,NULL,NULL,NULL,'Колышлейский','Колышлейский р-н','Колышлейский Район',NULL,NULL,'district','5801300000000','Y',56,1000),(837,NULL,NULL,NULL,NULL,'Кузнецкий','Кузнецкий р-н','Кузнецкий Район',NULL,NULL,'district','5801500000000','Y',56,1100),(838,NULL,NULL,NULL,NULL,'Карагайский','Карагайский р-н','Карагайский Район',NULL,NULL,'district','5900900000000','Y',57,800),(839,NULL,NULL,NULL,NULL,'Кишертский','Кишертский р-н','Кишертский Район',NULL,NULL,'district','5901000000000','Y',57,900),(840,NULL,NULL,NULL,NULL,'Косинский','Косинский р-н','Косинский Район',NULL,NULL,'district','5903000000000','Y',57,1000),(841,NULL,NULL,NULL,NULL,'Кочевский','Кочевский р-н','Кочевский Район',NULL,NULL,'district','5903100000000','Y',57,1100),(842,NULL,NULL,NULL,NULL,'Красновишерский','Красновишерский р-н','Красновишерский Район',NULL,NULL,'district','5901300000000','Y',57,1200),(843,NULL,NULL,NULL,NULL,'Краснокамский','Краснокамский р-н','Краснокамский Район',NULL,NULL,'district','5903500000000','Y',57,1300),(844,NULL,NULL,NULL,NULL,'Кудымкарский','Кудымкарский р-н','Кудымкарский Район',NULL,NULL,'district','5903200000000','Y',57,1400),(845,NULL,NULL,NULL,NULL,'Куединский','Куединский р-н','Куединский Район',NULL,NULL,'district','5901100000000','Y',57,1500),(846,NULL,NULL,NULL,NULL,'Кунгурский','Кунгурский р-н','Кунгурский Район',NULL,NULL,'district','5901200000000','Y',57,1600),(847,NULL,NULL,NULL,NULL,'Кавалеровский','Кавалеровский р-н','Кавалеровский Район',NULL,NULL,'district','2500500000000','Y',58,300),(848,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','2500600000000','Y',58,400),(849,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2500700000000','Y',58,500),(850,NULL,NULL,NULL,NULL,'Красногородский','Красногородский р-н','Красногородский Район','182370',NULL,'district','6000700000000','Y',59,500),(851,NULL,NULL,NULL,NULL,'Куньинский','Куньинский р-н','Куньинский Район','182010',NULL,'district','6000800000000','Y',59,600),(852,NULL,NULL,NULL,NULL,'Кагальницкий','Кагальницкий р-н','Кагальницкий Район',NULL,NULL,'district','6101500000000','Y',60,1300),(853,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','6101600000000','Y',60,1400),(854,NULL,NULL,NULL,NULL,'Кашарский','Кашарский р-н','Кашарский Район',NULL,NULL,'district','6101700000000','Y',60,1500),(855,NULL,NULL,NULL,NULL,'Константиновский','Константиновский р-н','Константиновский Район',NULL,NULL,'district','6101800000000','Y',60,1600),(856,NULL,NULL,NULL,NULL,'Красносулинский','Красносулинский р-н','Красносулинский Район',NULL,NULL,'district','6101900000000','Y',60,1700),(857,NULL,NULL,NULL,NULL,'Куйбышевский','Куйбышевский р-н','Куйбышевский Район',NULL,NULL,'district','6102000000000','Y',60,1800),(858,NULL,NULL,NULL,NULL,'Кадомский','Кадомский р-н','Кадомский Район',NULL,NULL,'district','6200400000000','Y',61,300),(859,NULL,NULL,NULL,NULL,'Касимовский','Касимовский р-н','Касимовский Район',NULL,NULL,'district','6200500000000','Y',61,400),(860,NULL,NULL,NULL,NULL,'Клепиковский','Клепиковский р-н','Клепиковский Район',NULL,NULL,'district','6200600000000','Y',61,500),(861,NULL,NULL,NULL,NULL,'Кораблинский','Кораблинский р-н','Кораблинский Район',NULL,NULL,'district','6200700000000','Y',61,600),(862,NULL,NULL,NULL,NULL,'Канашский','Канашский р-н','Канашский Район',NULL,NULL,'district','2100700000000','Y',62,500),(863,NULL,NULL,NULL,NULL,'Козловский','Козловский р-н','Козловский Район',NULL,NULL,'district','2100800000000','Y',62,600),(864,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район',NULL,NULL,'district','2100900000000','Y',62,700),(865,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','2101000000000','Y',62,800),(866,NULL,NULL,NULL,NULL,'Красночетайский','Красночетайский р-н','Красночетайский Район',NULL,NULL,'district','2101100000000','Y',62,900),(867,NULL,NULL,NULL,NULL,'Камышлинский','Камышлинский р-н','Камышлинский Район',NULL,NULL,'district','6301000000000','Y',63,900),(868,NULL,NULL,NULL,NULL,'Кинель-Черкасский','Кинель-Черкасский р-н','Кинель-Черкасский Район',NULL,NULL,'district','6301100000000','Y',63,1000),(869,NULL,NULL,NULL,NULL,'Кинельский','Кинельский р-н','Кинельский Район',NULL,NULL,'district','6301200000000','Y',63,1100),(870,NULL,NULL,NULL,NULL,'Клявлинский','Клявлинский р-н','Клявлинский Район',NULL,NULL,'district','6301300000000','Y',63,1200),(871,NULL,NULL,NULL,NULL,'Кошкинский','Кошкинский р-н','Кошкинский Район',NULL,NULL,'district','6301400000000','Y',63,1300),(872,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','6301500000000','Y',63,1400),(873,NULL,NULL,NULL,NULL,'Красноярский','Красноярский р-н','Красноярский Район',NULL,NULL,'district','6301600000000','Y',63,1500),(874,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','6401600000000','Y',65,1400),(875,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район',NULL,NULL,'district','6401700000000','Y',65,1500),(876,NULL,NULL,NULL,NULL,'Краснокутский','Краснокутский р-н','Краснокутский Район',NULL,NULL,'district','6401800000000','Y',65,1600),(877,NULL,NULL,NULL,NULL,'Краснопартизанский','Краснопартизанский р-н','Краснопартизанский Район',NULL,NULL,'district','6401900000000','Y',65,1700),(878,NULL,NULL,NULL,NULL,'Кобяйский','Кобяйский у','Кобяйский Улус','678300',NULL,'district','1401400000000','Y',66,1200),(879,NULL,NULL,NULL,NULL,'Корсаковский','Корсаковский р-н','Корсаковский Район','694020',NULL,'district','6500400000000','Y',67,300),(880,NULL,NULL,NULL,NULL,'Курильский','Курильский р-н','Курильский Район','694530',NULL,'district','6500500000000','Y',67,400),(881,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район','623400',NULL,'district','6601300000000','Y',68,1100),(882,NULL,NULL,NULL,NULL,'Камышловский','Камышловский р-н','Камышловский Район','624860',NULL,'district','6601400000000','Y',68,1200),(883,NULL,NULL,NULL,NULL,'Красноуфимский','Красноуфимский р-н','Красноуфимский Район','623300',NULL,'district','6601500000000','Y',68,1300),(884,NULL,NULL,NULL,NULL,'Кардымовский','Кардымовский р-н','Кардымовский Район','215850',NULL,'district','6701100000000','Y',70,900),(885,NULL,NULL,NULL,NULL,'Краснинский','Краснинский р-н','Краснинский Район',NULL,NULL,'district','6701200000000','Y',70,1000),(886,NULL,NULL,NULL,NULL,'Кировский','Кировский р-н','Кировский Район',NULL,NULL,'district','2601200000000','Y',71,1000),(887,NULL,NULL,NULL,NULL,'Кочубеевский','Кочубеевский р-н','Кочубеевский Район',NULL,NULL,'district','2601300000000','Y',71,1100),(888,NULL,NULL,NULL,NULL,'Красногвардейский','Красногвардейский р-н','Красногвардейский Район',NULL,NULL,'district','2601400000000','Y',71,1200),(889,NULL,NULL,NULL,NULL,'Курский','Курский р-н','Курский Район',NULL,NULL,'district','2601500000000','Y',71,1300),(890,NULL,NULL,NULL,NULL,'Кирсановский','Кирсановский р-н','Кирсановский Район','393360',NULL,'district','6800700000000','Y',72,500),(891,NULL,NULL,NULL,NULL,'Кайбицкий','Кайбицкий р-н','Кайбицкий Район',NULL,NULL,'district','1602200000000','Y',73,2000),(892,NULL,NULL,NULL,NULL,'Камско-Устьинский','Камско-Устьинский р-н','Камско-Устьинский Район',NULL,NULL,'district','1602300000000','Y',73,2100),(893,NULL,NULL,NULL,NULL,'Кукморский','Кукморский р-н','Кукморский Район',NULL,NULL,'district','1602400000000','Y',73,2200),(894,NULL,NULL,NULL,NULL,'Калининский','Калининский р-н','Калининский Район',NULL,NULL,'district','6900100000000','Y',74,900),(895,NULL,NULL,NULL,NULL,'Калязинский','Калязинский р-н','Калязинский Район',NULL,NULL,'district','6901100000000','Y',74,1000),(896,NULL,NULL,NULL,NULL,'Кашинский','Кашинский р-н','Кашинский Район',NULL,NULL,'district','6901200000000','Y',74,1100),(897,NULL,NULL,NULL,NULL,'Кесовогорский','Кесовогорский р-н','Кесовогорский Район',NULL,NULL,'district','6901300000000','Y',74,1200),(898,NULL,NULL,NULL,NULL,'Кимрский','Кимрский р-н','Кимрский Район',NULL,NULL,'district','6901400000000','Y',74,1300),(899,NULL,NULL,NULL,NULL,'Конаковский','Конаковский р-н','Конаковский Район',NULL,NULL,'district','6901500000000','Y',74,1400),(900,NULL,NULL,NULL,NULL,'Краснохолмский','Краснохолмский р-н','Краснохолмский Район',NULL,NULL,'district','6901600000000','Y',74,1500),(901,NULL,NULL,NULL,NULL,'Кувшиновский','Кувшиновский р-н','Кувшиновский Район',NULL,NULL,'district','6901700000000','Y',74,1600),(902,NULL,NULL,NULL,NULL,'Каргасокский','Каргасокский р-н','Каргасокский Район',NULL,NULL,'district','7000700000000','Y',75,500),(903,NULL,NULL,NULL,NULL,'Кожевниковский','Кожевниковский р-н','Кожевниковский Район',NULL,NULL,'district','7000800000000','Y',75,600),(904,NULL,NULL,NULL,NULL,'Колпашевский','Колпашевский р-н','Колпашевский Район',NULL,NULL,'district','7000900000000','Y',75,700),(905,NULL,NULL,NULL,NULL,'Кривошеинский','Кривошеинский р-н','Кривошеинский Район',NULL,NULL,'district','7001000000000','Y',75,800),(906,NULL,NULL,NULL,NULL,'Каменский','Каменский р-н','Каменский Район',NULL,NULL,'district','7101200000000','Y',76,900),(907,NULL,NULL,NULL,NULL,'Кимовский','Кимовский р-н','Кимовский Район',NULL,NULL,'district','7101300000000','Y',76,1000),(908,NULL,NULL,NULL,NULL,'Киреевский','Киреевский р-н','Киреевский Район',NULL,NULL,'district','7101400000000','Y',76,1100),(909,NULL,NULL,NULL,NULL,'Куркинский','Куркинский р-н','Куркинский Район',NULL,NULL,'district','7101500000000','Y',76,1200),(910,NULL,NULL,NULL,NULL,'Каа-Хемский','Каа-Хемский р-н','Каа-Хемский Район','668400',NULL,'district','1700500000000','Y',77,300),(911,NULL,NULL,NULL,NULL,'Кызылский','Кызылский р-н','Кызылский Район','667901',NULL,'district','1700600000000','Y',77,400),(912,NULL,NULL,NULL,NULL,'Казанский','Казанский р-н','Казанский Район',NULL,NULL,'district','7201200000000','Y',78,1000),(913,NULL,NULL,NULL,NULL,'Камбарский','Камбарский р-н','Камбарский Район',NULL,NULL,'district','1801100000000','Y',79,900),(914,NULL,NULL,NULL,NULL,'Каракулинский','Каракулинский р-н','Каракулинский Район',NULL,NULL,'district','1801200000000','Y',79,1000),(915,NULL,NULL,NULL,NULL,'Кезский','Кезский р-н','Кезский Район',NULL,NULL,'district','1801300000000','Y',79,1100),(916,NULL,NULL,NULL,NULL,'Кизнерский','Кизнерский р-н','Кизнерский Район',NULL,NULL,'district','1801400000000','Y',79,1200),(917,NULL,NULL,NULL,NULL,'Киясовский','Киясовский р-н','Киясовский Район',NULL,NULL,'district','1801500000000','Y',79,1300),(918,NULL,NULL,NULL,NULL,'Красногорский','Красногорский р-н','Красногорский Район',NULL,NULL,'district','1801600000000','Y',79,1400),(919,NULL,NULL,NULL,NULL,'Карсунский','Карсунский р-н','Карсунский Район','433210',NULL,'district','7300600000000','Y',80,400),(920,NULL,NULL,NULL,NULL,'Кузоватовский','Кузоватовский р-н','Кузоватовский Район','433760',NULL,'district','7300700000000','Y',80,500),(921,NULL,NULL,NULL,NULL,'Комсомольский','Комсомольский р-н','Комсомольский Район','681000',NULL,'district','2701000000000','Y',81,800),(922,NULL,NULL,NULL,NULL,'Карталинский','Карталинский р-н','Карталинский Район','457353',NULL,'district','7400700000000','Y',83,800),(923,NULL,NULL,NULL,NULL,'Каслинский','Каслинский р-н','Каслинский Район','456833',NULL,'district','7400900000000','Y',83,900),(924,NULL,NULL,NULL,NULL,'Катав-Ивановский','Катав-Ивановский р-н','Катав-Ивановский Район','456110',NULL,'district','7401000000000','Y',83,1000),(925,NULL,NULL,NULL,NULL,'Кизильский','Кизильский р-н','Кизильский Район','457610',NULL,'district','7403100000000','Y',83,1100),(926,NULL,NULL,NULL,NULL,'Коркинский','Коркинский р-н','Коркинский Район','456550',NULL,'district','7404500000000','Y',83,1200),(927,NULL,NULL,NULL,NULL,'Красноармейский','Красноармейский р-н','Красноармейский Район','456660',NULL,'district','7403200000000','Y',83,1300),(928,NULL,NULL,NULL,NULL,'Кунашакский','Кунашакский р-н','Кунашакский Район','456730',NULL,'district','7403300000000','Y',83,1400),(929,NULL,NULL,NULL,NULL,'Кусинский','Кусинский р-н','Кусинский Район','456940',NULL,'district','7403400000000','Y',83,1500),(930,NULL,NULL,NULL,NULL,'Курчалоевский','Курчалоевский р-н','Курчалоевский Район','366300',NULL,'district','2000600000000','Y',84,500),(931,NULL,NULL,NULL,NULL,'Красноселькупский','Красноселькупский р-н','Красноселькупский Район',NULL,NULL,'district','8900200000000','Y',86,0),(932,NULL,NULL,NULL,NULL,'Локтевский','Локтевский р-н','Локтевский Район',NULL,NULL,'district','2202700000000','Y',4,2500),(933,NULL,NULL,NULL,NULL,'Ленский','Ленский р-н','Ленский Район',NULL,NULL,'district','2901000000000','Y',6,800),(934,NULL,NULL,NULL,NULL,'Лешуконский','Лешуконский р-н','Лешуконский Район',NULL,NULL,'district','2901100000000','Y',6,900),(935,NULL,NULL,NULL,NULL,'Лиманский','Лиманский р-н','Лиманский Район',NULL,NULL,'district','3000800000000','Y',7,600),(936,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','3401700000000','Y',16,1500),(937,NULL,NULL,NULL,NULL,'Лискинский','Лискинский р-н','Лискинский Район',NULL,NULL,'district','3601500000000','Y',18,1300),(938,NULL,NULL,NULL,NULL,'Лакский','Лакский р-н','Лакский Район','368360',NULL,'district','0502500000000','Y',19,2200),(939,NULL,NULL,NULL,NULL,'Левашинский','Левашинский р-н','Левашинский Район','368320',NULL,'district','0502600000000','Y',19,2300),(940,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район','679370',NULL,'district','7900200000000','Y',20,100),(941,NULL,NULL,NULL,NULL,'Лежневский','Лежневский р-н','Лежневский Район',NULL,NULL,'district','3700900000000','Y',22,800),(942,NULL,NULL,NULL,NULL,'Лухский','Лухский р-н','Лухский Район','155270',NULL,'district','3701000000000','Y',22,900),(943,NULL,NULL,NULL,NULL,'Лескенский','Лескенский р-н','Лескенский Район',NULL,NULL,'district','0701100000000','Y',25,200),(944,NULL,NULL,NULL,NULL,'Лаганский','Лаганский р-н','Лаганский Район',NULL,NULL,'district','0800600000000','Y',27,300),(945,NULL,NULL,NULL,NULL,'Людиновский','Людиновский р-н','Людиновский Район',NULL,NULL,'district','4001400000000','Y',28,1100),(946,NULL,NULL,NULL,NULL,'Лахденпохский','Лахденпохский р-н','Лахденпохский Район',NULL,NULL,'district','1000600000000','Y',31,400),(947,NULL,NULL,NULL,NULL,'Лоухский','Лоухский р-н','Лоухский Район','186660',NULL,'district','1000700000000','Y',31,500),(948,NULL,NULL,NULL,NULL,'Ленинск-Кузнецкий','Ленинск-Кузнецкий р-н','Ленинск-Кузнецкий Район',NULL,NULL,'district','4200600000000','Y',32,500),(949,NULL,NULL,NULL,NULL,'Лебяжский','Лебяжский р-н','Лебяжский Район','613500',NULL,'district','4301600000000','Y',33,1400),(950,NULL,NULL,NULL,NULL,'Лузский','Лузский р-н','Лузский Район','613900',NULL,'district','4301700000000','Y',33,1500),(951,NULL,NULL,NULL,NULL,'Лабинский','Лабинский р-н','Лабинский Район',NULL,NULL,'district','2302100000000','Y',36,1900),(952,NULL,NULL,NULL,NULL,'Ленинградский','Ленинградский р-н','Ленинградский Район',NULL,NULL,'district','2302200000000','Y',36,2000),(953,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','9100700000000','Y',38,600),(954,NULL,NULL,NULL,NULL,'Лебяжьевский','Лебяжьевский р-н','Лебяжьевский Район',NULL,NULL,'district','4501100000000','Y',39,900),(955,NULL,NULL,NULL,NULL,'Льговский','Льговский р-н','Льговский Район','307750',NULL,'district','4601300000000','Y',40,1200),(956,NULL,NULL,NULL,NULL,'Лодейнопольский','Лодейнопольский р-н','Лодейнопольский Район',NULL,NULL,'district','4701100000000','Y',41,900),(957,NULL,NULL,NULL,NULL,'Ломоносовский','Ломоносовский р-н','Ломоносовский Район',NULL,NULL,'district','4701200000000','Y',41,1000),(958,NULL,NULL,NULL,NULL,'Лужский','Лужский р-н','Лужский Район',NULL,NULL,'district','4701300000000','Y',41,1100),(959,NULL,NULL,NULL,NULL,'Лебедянский','Лебедянский р-н','Лебедянский Район',NULL,NULL,'district','4801200000000','Y',42,1000),(960,NULL,NULL,NULL,NULL,'Лев-Толстовский','Лев-Толстовский р-н','Лев-Толстовский Район',NULL,NULL,'district','4801300000000','Y',42,1100),(961,NULL,NULL,NULL,NULL,'Липецкий','Липецкий р-н','Липецкий Район',NULL,NULL,'district','4801900000000','Y',42,1200),(962,NULL,NULL,NULL,NULL,'Лямбирский','Лямбирский р-н','Лямбирский Район',NULL,NULL,'district','1301600000000','Y',45,1400),(963,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','5001400000000','Y',47,1000),(964,NULL,NULL,NULL,NULL,'Лотошинский','Лотошинский р-н','Лотошинский Район',NULL,NULL,'district','5001500000000','Y',47,1100),(965,NULL,NULL,NULL,NULL,'Луховицкий','Луховицкий р-н','Луховицкий Район',NULL,NULL,'district','5001600000000','Y',47,1200),(966,NULL,NULL,NULL,NULL,'Люберецкий','Люберецкий р-н','Люберецкий Район',NULL,NULL,'district','5001700000000','Y',47,1300),(967,NULL,NULL,NULL,NULL,'Ловозерский','Ловозерский р-н','Ловозерский Район','184592',NULL,'district','5100400000000','Y',48,300),(968,NULL,NULL,NULL,NULL,'Лукояновский','Лукояновский р-н','Лукояновский Район','607800',NULL,'district','5202900000000','Y',50,2500),(969,NULL,NULL,NULL,NULL,'Лысковский','Лысковский р-н','Лысковский Район','606212',NULL,'district','5203000000000','Y',50,2600),(970,NULL,NULL,NULL,NULL,'Любытинский','Любытинский р-н','Любытинский Район',NULL,NULL,'district','5300800000000','Y',51,600),(971,NULL,NULL,NULL,NULL,'Любинский','Любинский р-н','Любинский Район',NULL,NULL,'district','5501200000000','Y',53,1000),(972,NULL,NULL,NULL,NULL,'Ливенский','Ливенский р-н','Ливенский Район',NULL,NULL,'district','5701300000000','Y',55,1100),(973,NULL,NULL,NULL,NULL,'Лопатинский','Лопатинский р-н','Лопатинский Район',NULL,NULL,'district','5801600000000','Y',56,1200),(974,NULL,NULL,NULL,NULL,'Лунинский','Лунинский р-н','Лунинский Район',NULL,NULL,'district','5801700000000','Y',56,1300),(975,NULL,NULL,NULL,NULL,'Лазовский','Лазовский р-н','Лазовский Район',NULL,NULL,'district','2500800000000','Y',58,600),(976,NULL,NULL,NULL,NULL,'Локнянский','Локнянский р-н','Локнянский Район','182900',NULL,'district','6000900000000','Y',59,700),(977,NULL,NULL,NULL,NULL,'Лысогорский','Лысогорский р-н','Лысогорский Район',NULL,NULL,'district','6402000000000','Y',65,1800),(978,NULL,NULL,NULL,NULL,'Ленский','Ленский у','Ленский Улус',NULL,NULL,'district','1401500000000','Y',66,1300),(979,NULL,NULL,NULL,NULL,'Левокумский','Левокумский р-н','Левокумский Район',NULL,NULL,'district','2601600000000','Y',71,1400),(980,NULL,NULL,NULL,NULL,'Лаишевский','Лаишевский р-н','Лаишевский Район',NULL,NULL,'district','1602500000000','Y',73,2300),(981,NULL,NULL,NULL,NULL,'Лениногорский','Лениногорский р-н','Лениногорский Район',NULL,NULL,'district','1602600000000','Y',73,2400),(982,NULL,NULL,NULL,NULL,'Лесной','Лесной р-н','Лесной Район',NULL,NULL,'district','6901800000000','Y',74,1700),(983,NULL,NULL,NULL,NULL,'Лихославльский','Лихославльский р-н','Лихославльский Район',NULL,NULL,'district','6901900000000','Y',74,1800),(984,NULL,NULL,NULL,NULL,'Ленинский','Ленинский р-н','Ленинский Район',NULL,NULL,'district','7101600000000','Y',76,1300),(985,NULL,NULL,NULL,NULL,'Любимский','Любимский р-н','Любимский Район',NULL,NULL,'district','7600700000000','Y',87,500),(986,NULL,NULL,NULL,NULL,'Майкопский','Майкопский р-н','Майкопский Район','385730',NULL,'district','0100400000000','Y',2,300),(987,NULL,NULL,NULL,NULL,'Майминский','Майминский р-н','Майминский Район',NULL,NULL,'district','0400300000000','Y',3,100),(988,NULL,NULL,NULL,NULL,'Мамонтовский','Мамонтовский р-н','Мамонтовский Район',NULL,NULL,'district','2202800000000','Y',4,2600),(989,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2202900000000','Y',4,2700),(990,NULL,NULL,NULL,NULL,'Магдагачинский','Магдагачинский р-н','Магдагачинский Район',NULL,NULL,'district','2800900000000','Y',5,800),(991,NULL,NULL,NULL,NULL,'Мазановский','Мазановский р-н','Мазановский Район',NULL,NULL,'district','2801000000000','Y',5,900),(992,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2801100000000','Y',5,1000),(993,NULL,NULL,NULL,NULL,'Мезенский','Мезенский р-н','Мезенский Район',NULL,NULL,'district','2901200000000','Y',6,1000),(994,NULL,NULL,NULL,NULL,'Моздокский','Моздокский р-н','Моздокский Район',NULL,NULL,'district','1500700000000','Y',8,500),(995,NULL,NULL,NULL,NULL,'Мелеузовский','Мелеузовский р-н','Мелеузовский Район','453853',NULL,'district','0203500000000','Y',11,3600),(996,NULL,NULL,NULL,NULL,'Мечетлинский','Мечетлинский р-н','Мечетлинский Район','452550',NULL,'district','0203600000000','Y',11,3700),(997,NULL,NULL,NULL,NULL,'Мишкинский','Мишкинский р-н','Мишкинский Район','452340',NULL,'district','0203700000000','Y',11,3800),(998,NULL,NULL,NULL,NULL,'Миякинский','Миякинский р-н','Миякинский Район','452080',NULL,'district','0203800000000','Y',11,3900),(999,NULL,NULL,NULL,NULL,'Мглинский','Мглинский р-н','Мглинский Район',NULL,NULL,'district','3201600000000','Y',13,1500),(1000,NULL,NULL,NULL,NULL,'Муйский','Муйский р-н','Муйский Район','671500',NULL,'district','0301300000000','Y',14,1200),(1001,NULL,NULL,NULL,NULL,'Мухоршибирский','Мухоршибирский р-н','Мухоршибирский Район','671353',NULL,'district','0301400000000','Y',14,1300),(1002,NULL,NULL,NULL,NULL,'Меленковский','Меленковский р-н','Меленковский Район',NULL,NULL,'district','3301000000000','Y',15,800),(1003,NULL,NULL,NULL,NULL,'Муромский','Муромский р-н','Муромский Район',NULL,NULL,'district','3301100000000','Y',15,900),(1004,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','3401800000000','Y',16,1600),(1005,NULL,NULL,NULL,NULL,'Междуреченский','Междуреченский р-н','Междуреченский Район',NULL,NULL,'district','3501400000000','Y',17,1300),(1006,NULL,NULL,NULL,NULL,'Магарамкентский','Магарамкентский р-н','Магарамкентский Район','368780',NULL,'district','0502700000000','Y',19,2400),(1007,NULL,NULL,NULL,NULL,'Могойтуйский','Могойтуйский р-н','Могойтуйский Район',NULL,NULL,'district','7513100000000','Y',21,1400),(1008,NULL,NULL,NULL,NULL,'Могочинский','Могочинский р-н','Могочинский Район',NULL,NULL,'district','7501400000000','Y',21,1500),(1009,NULL,NULL,NULL,NULL,'Малгобекский','Малгобекский р-н','Малгобекский Район',NULL,NULL,'district','0600300000000','Y',23,100),(1010,NULL,NULL,NULL,NULL,'Мамско-Чуйский','Мамско-Чуйский р-н','Мамско-Чуйский Район',NULL,NULL,'district','3801400000000','Y',24,1600),(1011,NULL,NULL,NULL,NULL,'Майский','Майский р-н','Майский Район',NULL,NULL,'district','0700400000000','Y',25,300),(1012,NULL,NULL,NULL,NULL,'Малодербетовский','Малодербетовский р-н','Малодербетовский Район',NULL,NULL,'district','0800700000000','Y',27,400),(1013,NULL,NULL,NULL,NULL,'Малоярославецкий','Малоярославецкий р-н','Малоярославецкий Район',NULL,NULL,'district','4001500000000','Y',28,1200),(1014,NULL,NULL,NULL,NULL,'Медынский','Медынский р-н','Медынский Район',NULL,NULL,'district','4001600000000','Y',28,1300),(1015,NULL,NULL,NULL,NULL,'Мещовский','Мещовский р-н','Мещовский Район',NULL,NULL,'district','4001700000000','Y',28,1400),(1016,NULL,NULL,NULL,NULL,'Мосальский','Мосальский р-н','Мосальский Район',NULL,NULL,'district','4001800000000','Y',28,1500),(1017,NULL,NULL,NULL,NULL,'Мильковский','Мильковский р-н','Мильковский Район',NULL,NULL,'district','4100600000000','Y',29,400),(1018,NULL,NULL,NULL,NULL,'Малокарачаевский','Малокарачаевский р-н','Малокарачаевский Район',NULL,NULL,'district','0900500000000','Y',30,400),(1019,NULL,NULL,NULL,NULL,'Медвежьегорский','Медвежьегорский р-н','Медвежьегорский Район',NULL,NULL,'district','1000800000000','Y',31,600),(1020,NULL,NULL,NULL,NULL,'Муезерский','Муезерский р-н','Муезерский Район','186960',NULL,'district','1000900000000','Y',31,700),(1021,NULL,NULL,NULL,NULL,'Мариинский','Мариинский р-н','Мариинский Район',NULL,NULL,'district','4200700000000','Y',32,600),(1022,NULL,NULL,NULL,NULL,'Малмыжский','Малмыжский р-н','Малмыжский Район','612920',NULL,'district','4301800000000','Y',33,1600),(1023,NULL,NULL,NULL,NULL,'Мурашинский','Мурашинский р-н','Мурашинский Район','613710',NULL,'district','4301900000000','Y',33,1700),(1024,NULL,NULL,NULL,NULL,'Макарьевский','Макарьевский р-н','Макарьевский Район',NULL,NULL,'district','4400900000000','Y',35,800),(1025,NULL,NULL,NULL,NULL,'Мантуровский','Мантуровский р-н','Мантуровский Район',NULL,NULL,'district','4401000000000','Y',35,900),(1026,NULL,NULL,NULL,NULL,'Межевской','Межевской р-н','Межевской Район',NULL,NULL,'district','4401100000000','Y',35,1000),(1027,NULL,NULL,NULL,NULL,'Мостовский','Мостовский р-н','Мостовский Район',NULL,NULL,'district','2302300000000','Y',36,2100),(1028,NULL,NULL,NULL,NULL,'Манский','Манский р-н','Манский Район',NULL,NULL,'district','2402500000000','Y',37,2400),(1029,NULL,NULL,NULL,NULL,'Минусинский','Минусинский р-н','Минусинский Район',NULL,NULL,'district','2402600000000','Y',37,2500),(1030,NULL,NULL,NULL,NULL,'Мотыгинский','Мотыгинский р-н','Мотыгинский Район',NULL,NULL,'district','2402700000000','Y',37,2600),(1031,NULL,NULL,NULL,NULL,'Макушинский','Макушинский р-н','Макушинский Район',NULL,NULL,'district','4501200000000','Y',39,1000),(1032,NULL,NULL,NULL,NULL,'Мишкинский','Мишкинский р-н','Мишкинский Район',NULL,NULL,'district','4501300000000','Y',39,1100),(1033,NULL,NULL,NULL,NULL,'Мокроусовский','Мокроусовский р-н','Мокроусовский Район',NULL,NULL,'district','4501400000000','Y',39,1200),(1034,NULL,NULL,NULL,NULL,'Мантуровский','Мантуровский р-н','Мантуровский Район',NULL,NULL,'district','4601400000000','Y',40,1300),(1035,NULL,NULL,NULL,NULL,'Медвенский','Медвенский р-н','Медвенский Район',NULL,NULL,'district','4601500000000','Y',40,1400),(1036,NULL,NULL,NULL,NULL,'Мари-Турекский','Мари-Турекский р-н','Мари-Турекский Район',NULL,NULL,'district','1200700000000','Y',44,500),(1037,NULL,NULL,NULL,NULL,'Медведевский','Медведевский р-н','Медведевский Район',NULL,NULL,'district','1200800000000','Y',44,600),(1038,NULL,NULL,NULL,NULL,'Моркинский','Моркинский р-н','Моркинский Район',NULL,NULL,'district','1200900000000','Y',44,700),(1039,NULL,NULL,NULL,NULL,'Марушкинское','Марушкинское п','Марушкинское Поселение',NULL,NULL,'district','7700900000000','Y',46,800),(1040,NULL,NULL,NULL,NULL,'Михайлово-Ярцевское','Михайлово-Ярцевское п','Михайлово-Ярцевское Поселение',NULL,NULL,'district','7701000000000','Y',46,900),(1041,NULL,NULL,NULL,NULL,'Московский','Московский п','Московский Поселение',NULL,NULL,'district','7701100000000','Y',46,1000),(1042,NULL,NULL,NULL,NULL,'Мосрентген','Мосрентген п','Мосрентген Поселение',NULL,NULL,'district','7701200000000','Y',46,1100),(1043,NULL,NULL,NULL,NULL,'Можайский','Можайский р-н','Можайский Район',NULL,NULL,'district','5001800000000','Y',47,1400),(1044,NULL,NULL,NULL,NULL,'Мытищинский','Мытищинский р-н','Мытищинский Район',NULL,NULL,'district','5001900000000','Y',47,1500),(1045,NULL,NULL,NULL,NULL,'Маловишерский','Маловишерский р-н','Маловишерский Район','174260',NULL,'district','5300900000000','Y',51,700),(1046,NULL,NULL,NULL,NULL,'Марёвский','Марёвский р-н','Марёвский Район',NULL,NULL,'district','5301000000000','Y',51,800),(1047,NULL,NULL,NULL,NULL,'Мошенской','Мошенской р-н','Мошенской Район',NULL,NULL,'district','5301100000000','Y',51,900),(1048,NULL,NULL,NULL,NULL,'Маслянинский','Маслянинский р-н','Маслянинский Район',NULL,NULL,'district','5401800000000','Y',52,1600),(1049,NULL,NULL,NULL,NULL,'Мошковский','Мошковский р-н','Мошковский Район',NULL,NULL,'district','5401900000000','Y',52,1700),(1050,NULL,NULL,NULL,NULL,'Марьяновский','Марьяновский р-н','Марьяновский Район',NULL,NULL,'district','5501300000000','Y',53,1100),(1051,NULL,NULL,NULL,NULL,'Москаленский','Москаленский р-н','Москаленский Район',NULL,NULL,'district','5501400000000','Y',53,1200),(1052,NULL,NULL,NULL,NULL,'Муромцевский','Муромцевский р-н','Муромцевский Район',NULL,NULL,'district','5501500000000','Y',53,1300),(1053,NULL,NULL,NULL,NULL,'Матвеевский','Матвеевский р-н','Матвеевский Район','461880',NULL,'district','5603400000000','Y',54,1600),(1054,NULL,NULL,NULL,NULL,'Малоархангельский','Малоархангельский р-н','Малоархангельский Район',NULL,NULL,'district','5701400000000','Y',55,1200),(1055,NULL,NULL,NULL,NULL,'Мценский','Мценский р-н','Мценский Район',NULL,NULL,'district','5701500000000','Y',55,1300),(1056,NULL,NULL,NULL,NULL,'Малосердобинский','Малосердобинский р-н','Малосердобинский Район',NULL,NULL,'district','5801800000000','Y',56,1400),(1057,NULL,NULL,NULL,NULL,'Мокшанский','Мокшанский р-н','Мокшанский Район',NULL,NULL,'district','5801900000000','Y',56,1500),(1058,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','2501000000000','Y',58,700),(1059,NULL,NULL,NULL,NULL,'Мартыновский','Мартыновский р-н','Мартыновский Район',NULL,NULL,'district','6102100000000','Y',60,1900),(1060,NULL,NULL,NULL,NULL,'Матвеево-Курганский','Матвеево-Курганский р-н','Матвеево-Курганский Район',NULL,NULL,'district','6102200000000','Y',60,2000),(1061,NULL,NULL,NULL,NULL,'Миллеровский','Миллеровский р-н','Миллеровский Район',NULL,NULL,'district','6102300000000','Y',60,2100),(1062,NULL,NULL,NULL,NULL,'Милютинский','Милютинский р-н','Милютинский Район',NULL,NULL,'district','6102400000000','Y',60,2200),(1063,NULL,NULL,NULL,NULL,'Морозовский','Морозовский р-н','Морозовский Район',NULL,NULL,'district','6102500000000','Y',60,2300),(1064,NULL,NULL,NULL,NULL,'Мясниковский','Мясниковский р-н','Мясниковский Район',NULL,NULL,'district','6102600000000','Y',60,2400),(1065,NULL,NULL,NULL,NULL,'Милославский','Милославский р-н','Милославский Район',NULL,NULL,'district','6200800000000','Y',61,700),(1066,NULL,NULL,NULL,NULL,'Михайловский','Михайловский р-н','Михайловский Район',NULL,NULL,'district','6200900000000','Y',61,800),(1067,NULL,NULL,NULL,NULL,'Мариинско-Посадский','Мариинско-Посадский р-н','Мариинско-Посадский Район',NULL,NULL,'district','2101200000000','Y',62,1000),(1068,NULL,NULL,NULL,NULL,'Моргаушский','Моргаушский р-н','Моргаушский Район',NULL,NULL,'district','2101300000000','Y',62,1100),(1069,NULL,NULL,NULL,NULL,'Марксовский','Марксовский р-н','Марксовский Район',NULL,NULL,'district','6402100000000','Y',65,1900),(1070,NULL,NULL,NULL,NULL,'Мегино-Кангаласский','Мегино-Кангаласский у','Мегино-Кангаласский Улус','678080',NULL,'district','1401600000000','Y',66,1400),(1071,NULL,NULL,NULL,NULL,'Мирнинский','Мирнинский у','Мирнинский Улус','678170',NULL,'district','1401700000000','Y',66,1500),(1072,NULL,NULL,NULL,NULL,'Момский','Момский у','Момский Улус','678860',NULL,'district','1401800000000','Y',66,1600),(1073,NULL,NULL,NULL,NULL,'Макаровский','Макаровский р-н','Макаровский Район','694140',NULL,'district','6500600000000','Y',67,500),(1074,NULL,NULL,NULL,NULL,'Монастырщинский','Монастырщинский р-н','Монастырщинский Район','216130',NULL,'district','6701300000000','Y',70,1100),(1075,NULL,NULL,NULL,NULL,'Минераловодский','Минераловодский р-н','Минераловодский Район',NULL,NULL,'district','2601700000000','Y',71,1500),(1076,NULL,NULL,NULL,NULL,'Мичуринский','Мичуринский р-н','Мичуринский Район','393760',NULL,'district','6800800000000','Y',72,600),(1077,NULL,NULL,NULL,NULL,'Мордовский','Мордовский р-н','Мордовский Район','393600',NULL,'district','6800900000000','Y',72,700),(1078,NULL,NULL,NULL,NULL,'Моршанский','Моршанский р-н','Моршанский Район','393950',NULL,'district','6801000000000','Y',72,800),(1079,NULL,NULL,NULL,NULL,'Мучкапский','Мучкапский р-н','Мучкапский Район','393000',NULL,'district','6801200000000','Y',72,900),(1080,NULL,NULL,NULL,NULL,'Мамадышский','Мамадышский р-н','Мамадышский Район',NULL,NULL,'district','1602700000000','Y',73,2500),(1081,NULL,NULL,NULL,NULL,'Менделеевский','Менделеевский р-н','Менделеевский Район','423650',NULL,'district','1602800000000','Y',73,2600),(1082,NULL,NULL,NULL,NULL,'Мензелинский','Мензелинский р-н','Мензелинский Район',NULL,NULL,'district','1602900000000','Y',73,2700),(1083,NULL,NULL,NULL,NULL,'Муслюмовский','Муслюмовский р-н','Муслюмовский Район','423970',NULL,'district','1603000000000','Y',73,2800),(1084,NULL,NULL,NULL,NULL,'Максатихинский','Максатихинский р-н','Максатихинский Район',NULL,NULL,'district','6902000000000','Y',74,1900),(1085,NULL,NULL,NULL,NULL,'Молоковский','Молоковский р-н','Молоковский Район',NULL,NULL,'district','6902100000000','Y',74,2000),(1086,NULL,NULL,NULL,NULL,'Молчановский','Молчановский р-н','Молчановский Район',NULL,NULL,'district','7001100000000','Y',75,900),(1087,NULL,NULL,NULL,NULL,'Монгун-Тайгинский','Монгун-Тайгинский р-н','Монгун-Тайгинский Район',NULL,NULL,'district','1700700000000','Y',77,500),(1088,NULL,NULL,NULL,NULL,'Малопургинский','Малопургинский р-н','Малопургинский Район',NULL,NULL,'district','1801700000000','Y',79,1500),(1089,NULL,NULL,NULL,NULL,'Можгинский','Можгинский р-н','Можгинский Район',NULL,NULL,'district','1801800000000','Y',79,1600),(1090,NULL,NULL,NULL,NULL,'Майнский','Майнский р-н','Майнский Район','433130',NULL,'district','7300800000000','Y',80,600),(1091,NULL,NULL,NULL,NULL,'Мелекесский','Мелекесский р-н','Мелекесский Район','433501',NULL,'district','7300900000000','Y',80,700),(1092,NULL,NULL,NULL,NULL,'Мышкинский','Мышкинский р-н','Мышкинский Район',NULL,NULL,'district','7600800000000','Y',87,600);
/*!40000 ALTER TABLE `kladr_location` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `kladr_location` with 1092 row(s)
--

--
-- Table structure for table `log_db_target`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_db_target` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `log_time` int(11) DEFAULT NULL,
  `prefix` text,
  `message` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_log_level` (`level`),
  KEY `idx_log_category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=16797 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_db_target`
--

LOCK TABLES `log_db_target` WRITE;
/*!40000 ALTER TABLE `log_db_target` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `log_db_target` VALUES (16701,4,'application',1578902274,'[-][-][-]','Количество удаленных логов: 37'),(16702,1,'yii\\console\\UnknownCommandException',1578902275,'[-][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"money/agents/update-courses\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/console/Application.php(180): yii\\base\\Module->runAction(\'money/agents/up...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/console/Application.php(147): yii\\console\\Application->runAction(\'money/agents/up...\', Array)\n#2 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\console\\Application->handleRequest(Object(yii\\console\\Request))\n#3 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-console.php(32): yii\\base\\Application->run()\n#4 /var/www/sites/app-shop-smarty/yii(31): include(\'/var/www/sites/...\')\n#5 {main}\n\nNext yii\\console\\UnknownCommandException: Unknown command \"money/agents/update-courses\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/console/Application.php:183\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/console/Application.php(147): yii\\console\\Application->runAction(\'money/agents/up...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\console\\Application->handleRequest(Object(yii\\console\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-console.php(32): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/yii(31): include(\'/var/www/sites/...\')\n#4 {main}'),(16703,4,'skeeks/agent::logDbTarget/agents/clear-logs',1578902275,'[-][-][-]','Execute agent > logDbTarget/agents/clear-logs\nstoreLogsTime: 432000\nClear logs: 37\nLead time > 0.29929089546204 sec'),(16704,4,'skeeks/agent::money/agents/update-courses',1578902275,'[-][-][-]','Execute agent > money/agents/update-courses\n\nLead time > 0.62377905845642 sec'),(16705,4,'skeeks/agent::cmsSearch/clear/phrase',1578902276,'[-][-][-]','Execute agent > cmsSearch/clear/phrase\nphraseLiveTime: 0\nLead time > 0.3663489818573 sec'),(16706,4,'skeeks/agent::dbDumper/mysql/dump',1578902276,'[-][-][-]','Execute agent > dbDumper/mysql/dump\nDump the database was created successfully: /var/www/sites/app-shop-smarty/backup/db/db__2020-01-13_07-57-55.sql\nLead time > 0.47198414802551 sec'),(16707,4,'skeeks/agent::shop/agents/delete-empty-carts',1578902276,'[-][-][-]','Execute agent > shop/agents/delete-empty-carts\nNot found orders for delete\nRemoved empty carts: 0\nLead time > 0.11848187446594 sec'),(16708,4,'skeeks/agent::cms/cache/flush-all',1578902277,'[-][-][-]','Execute agent > cms/cache/flush-all\nThe following cache components were processed:\n\n	* cache (yii\\caching\\FileCache)\nLead time > 0.087980985641479 sec'),(16709,4,'skeeks/agent::shop/flush/price-changes',1578902277,'[-][-][-]','Execute agent > shop/flush/price-changes\nНечего удалять\nLead time > 0.10335087776184 sec'),(16710,4,'skeeks/agent::shop/notify/quantity-emails',1578902277,'[-][-][-]','Execute agent > shop/notify/quantity-emails\nУведомить некого\nLead time > 0.10579109191895 sec'),(16711,4,'skeeks/agent::ajaxfileupload/cleanup',1578902277,'[-][-][-]','Execute agent > ajaxfileupload/cleanup\n\nLead time > 0.074791193008423 sec'),(16712,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16713,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16714,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16715,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16716,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16717,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16718,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16719,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902278,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16720,1,'yii\\web\\HttpException:404',1578902278,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16721,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16722,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16723,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16724,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16725,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16726,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16727,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16728,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16729,1,'yii\\web\\HttpException:404',1578902279,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.js\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16730,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16731,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16732,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16733,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16734,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16735,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16736,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16737,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902279,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16738,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog'),(16739,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /catalog\n)\n'),(16740,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog'),(16741,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /catalog\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16742,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog'),(16743,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /catalog\n)\n'),(16744,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog'),(16745,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902281,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /catalog\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16746,1,'yii\\web\\HttpException:404',1578902281,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16747,1,'yii\\web\\HttpException:404',1578902282,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.js\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16748,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16749,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16750,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16751,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16752,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16753,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16754,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16755,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902282,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16756,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16757,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16758,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16759,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16760,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16761,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16762,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16763,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902283,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16764,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog/zontiki'),(16765,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /catalog/zontiki\n)\n'),(16766,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog/zontiki'),(16767,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /catalog/zontiki\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16768,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog/zontiki'),(16769,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /catalog/zontiki\n)\n'),(16770,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/catalog/zontiki'),(16771,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /catalog/zontiki\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16772,1,'yii\\web\\HttpException:404',1578902285,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16773,1,'yii\\web\\HttpException:404',1578902285,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/d249b4c8/helpers/jquery.fancybox-thumbs.js\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/d249b4c8...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16774,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16775,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16776,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16777,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16778,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16779,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16780,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16781,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902285,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16782,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16783,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16784,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16785,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16786,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','current_url = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com/'),(16787,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','parsed_current_url = Array\n(\n    [scheme] => http\n    [host] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [path] => /\n)\n'),(16788,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','redirurl = http://app-shop-smarty.ru.vps192.s7.h.skeeks.com'),(16789,4,'skeeks\\cms\\seo\\vendor\\CanUrl',1578902286,'[93.170.234.101][-][-]','this = skeeks\\cms\\seo\\vendor\\CanUrl Object\n(\n    [extra_tracked_methods] => Array\n        (\n        )\n\n    [is_track_ajax] => \n    [is_track_pjax] => \n    [is_track_flash] => \n    [_scheme:protected] => http\n    [_user:protected] => \n    [_pass:protected] => \n    [_host:protected] => app-shop-smarty.ru.vps192.s7.h.skeeks.com\n    [_port:protected] => \n    [_path:protected] => /\n    [_fragment:protected] => \n    [_query_params:protected] => Array\n        (\n        )\n\n    [_important_params:protected] => Array\n        (\n            [ProductFilters] => \n            [SearchProductsModel] => \n            [SearchRelatedPropertiesModel] => \n        )\n\n    [_minor_params:protected] => Array\n        (\n            [from] => \n            [_openstat] => \n            [utm_source] => \n            [utm_medium] => \n            [utm_campaign] => \n            [utm_content] => \n            [utm_term] => \n            [utm_referrer] => \n            [pm_source] => \n            [pm_block] => \n            [pm_position] => \n            [clid] => \n            [yclid] => \n            [ymclid] => \n            [frommarket] => \n            [text] => \n        )\n\n    [_events:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_eventWildcards:yii\\base\\Component:private] => Array\n        (\n        )\n\n    [_behaviors:yii\\base\\Component:private] => \n)\n'),(16790,1,'yii\\web\\HttpException:404',1578902630,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/1914eaae/helpers/jquery.fancybox-thumbs.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/1914eaae...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16791,1,'yii\\web\\HttpException:404',1578902631,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/1914eaae/helpers/jquery.fancybox-thumbs.js\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/1914eaae...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16792,1,'yii\\web\\HttpException:404',1578902634,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/1914eaae/helpers/jquery.fancybox-thumbs.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/1914eaae...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16793,1,'yii\\web\\HttpException:404',1578902634,'[93.170.234.101][-][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"assets/1914eaae/helpers/jquery.fancybox-thumbs.js\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'assets/1914eaae...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}'),(16794,4,'yii\\httpclient\\StreamTransport::send',1578902637,'[93.170.234.101][-][-]','GET https://api.cms.skeeks.com/v1/info?sx-serverName=app-shop-smarty.ru.vps192.s7.h.skeeks.com&sx-version=5.6.0.23&sx-email=info%40skeeks.com'),(16795,4,'yii\\web\\User::login',1578902645,'[93.170.234.101][1][-]','User \'1\' logged in from 93.170.234.101 with duration 2592000.'),(16796,1,'yii\\web\\HttpException:404',1578902666,'[93.170.234.101][1][-]','yii\\base\\InvalidRouteException: Unable to resolve the request \"cms/elfinder-full/css/theme.css\". in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Module.php:537\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php(103): yii\\base\\Module->runAction(\'cms/elfinder-fu...\', Array)\n#1 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#2 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#3 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#4 {main}\n\nNext yii\\web\\NotFoundHttpException: Страница не найдена. in /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/web/Application.php:115\nStack trace:\n#0 /var/www/sites/app-shop-smarty/vendor/yiisoft/yii2/base/Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#1 /var/www/sites/app-shop-smarty/vendor/skeeks/cms/app-web.php(35): yii\\base\\Application->run()\n#2 /var/www/sites/app-shop-smarty/frontend/web/index.php(22): include(\'/var/www/sites/...\')\n#3 {main}');
/*!40000 ALTER TABLE `log_db_target` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `log_db_target` with 96 row(s)
--

--
-- Table structure for table `measure`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `symbol_intl` varchar(20) DEFAULT NULL,
  `symbol_letter_intl` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `code_2` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`(255)),
  KEY `symbol_rus` (`symbol`),
  KEY `symbol_intl` (`symbol_intl`),
  KEY `symbol_letter_intl` (`symbol_letter_intl`),
  CONSTRAINT `measure_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `measure_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Единицы измерения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `measure` VALUES (1,NULL,NULL,NULL,NULL,'6',NULL,NULL,'m','MTR'),(2,NULL,NULL,NULL,NULL,'112',NULL,NULL,'l','LTR'),(3,NULL,NULL,NULL,NULL,'163',NULL,NULL,'g','GRM'),(4,NULL,NULL,NULL,NULL,'166',NULL,NULL,'kg','KGM'),(5,NULL,NULL,NULL,NULL,'796',NULL,NULL,'pc. 1','PCE. NMB'),(6,NULL,NULL,NULL,NULL,'3',NULL,NULL,'mm','MMT');
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `measure` with 6 row(s)
--

--
-- Table structure for table `message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '',
  `translation` text,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `fk_source_message_message` FOREIGN KEY (`id`) REFERENCES `source_message` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `message` VALUES (62,'en',NULL),(62,'ru',NULL),(63,'en',NULL),(63,'ru',NULL),(64,'en',NULL),(64,'ru',NULL),(65,'en',NULL),(65,'ru',NULL),(66,'en',NULL),(66,'ru',NULL),(67,'en',NULL),(67,'ru',NULL),(68,'en',NULL),(68,'ru',NULL),(69,'en',NULL),(69,'ru',NULL),(70,'en',NULL),(70,'ru',NULL),(127,'en',NULL),(127,'ru',NULL),(128,'en',NULL),(128,'ru',NULL),(129,'en',NULL),(129,'ru',NULL),(130,'en',NULL),(130,'ru',NULL),(131,'en',NULL),(131,'ru',NULL),(132,'en',NULL),(132,'ru',NULL),(133,'en',NULL),(133,'ru',NULL),(135,'en',NULL),(135,'ru',NULL),(198,'en',NULL),(198,'ru',NULL),(309,'en',NULL),(309,'ru',NULL),(310,'en',NULL),(310,'ru',NULL),(311,'en',NULL),(311,'ru',NULL),(312,'en',NULL),(312,'ru',NULL),(313,'en',NULL),(313,'ru',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `message` with 46 row(s)
--

--
-- Table structure for table `migration`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `migration` VALUES ('m000000_000000_base',1439036753),('m140506_102106_rbac_init',1439036754),('m140801_201442_create_user_table',1439036756),('m140814_223103_create_user_authclient_table',1439036758),('m140902_110812_create_storage_file_table',1439036764),('m141019_100557_create_publication_table',1439036767),('m141019_162718_create_comment_table',1439036771),('m141019_162721_subscribe_create_table',1439036773),('m141019_162726_create_vote_table',1439036776),('m141104_100557_create_cms_tree_table',1439036784),('m141106_100557_create_user_group_table',1439036788),('m141109_100557_create_cms_infoblock_table',1439036791),('m141111_100557_alter_tables_tree_and_publication',1439036794),('m141116_100557_create_teable_static_block',1439036796),('m141117_100557_create_teable_site',1439036798),('m141205_100557_alter_table_published_behavior',1439036802),('m141231_100557_create_teable_cms_tree_menu',1439036805),('m141231_100559_alter_table_tree',1439036808),('m150116_100559_alter_table_publications',1439036811),('m150120_100558_create_table__money_currency',1442576175),('m150121_193200_create_table__cms_user_email',1439036814),('m150121_273200_create_table__cms_user_phone',1439036815),('m150121_273203_alter_table__cms_user',1439036819),('m150121_273205_alter_table__cms_user__add_emails',1439036823),('m150122_273205_alter_table__cms_user__emails_adn_phones',1439036823),('m150316_273205_alter_table__cms_user__emails_adn_phones_1',1439036828),('m150324_273205_alter_table__cms_infoblock',1439036830),('m150324_273210_alter_table__cms_infoblock_2',1439036830),('m150327_273210_create_table__cms_settings',1439036832),('m150403_100558_alter_table__money_currency',1442576175),('m150403_110558_alter_table__money_currency',1442576175),('m150512_103210_create_table__cms_content_type',1439036834),('m150512_103220_create_table__cms_content',1439036839),('m150512_103230_create_table__cms_content_element',1439036846),('m150512_113230_create_table__cms_content_property',1439036851),('m150512_123230_create_table__cms_content_property_enum',1439036854),('m150512_153230_create_table__cms_content_element_property',1439036859),('m150516_103230_create_table__cms_content_element_tree',1439036862),('m150519_103210_drop_tables_social',1439036862),('m150519_113210_cms_alter_clear_social_data',1439036878),('m150519_123210_cms_alter_drop_publications_and_page_options',1439036880),('m150520_103210_cms_alter_user_data',1439036886),('m150520_133210_cms_alter_storage_files',1439036897),('m150520_143210_cms_alter_cms_tree',1439036903),('m150520_153210_cms_alter_meta_data',1439036909),('m150520_153305_cms_alter_table__cms_lang',1439036912),('m150520_153310_cms_alter_table__cms_site',1439036916),('m150520_163310_insert_cms_site_and_lang',1439036916),('m150520_173310_create_table__cms_site_domain',1439036919),('m150520_183310_alter_table__cms_tree',1439036922),('m150521_183310_alter_table__cms_tree',1439036924),('m150521_183315_alter_table__cms_tree',1439036926),('m150521_193315_alter_table__cms_settings',1439036926),('m150522_193315_drop_table__cms_infoblock',1439036926),('m150523_103220_create_table__cms_tree_type',1439036929),('m150523_103520_create_table__cms_tree_type_property',1439036935),('m150523_103525_create_table__cms_tree_type_property_enum',1439036940),('m150523_104025_create_table__cms_tree_property',1439036944),('m150523_114025_alter_table__cms_tree',1439036948),('m150528_114025_alter_table__cms_component_settings',1439036953),('m150528_114030_alter_table__cms_component_settings',1439036953),('m150601_110558_alter_table__money_currency',1442576176),('m150604_114030_alter_table__cms_user',1439036957),('m150607_114030_alter_table__cms_tree_and_cms_content_element',1439036961),('m150608_114030_alter_table__cms_site_code_length',1439036965),('m150608_154030_alter_table__cms_user_emails_and_phones',1439036966),('m150615_162718_create_table__form2_form',1439036985),('m150615_162740_create_table__form2_form_send',1439036992),('m150615_172718_create_table__form2_form_property',1439036998),('m150615_182718_create_table__form2_form_property_enum',1439037001),('m150615_192740_create_table__form2_form_send_property',1439037006),('m150622_114030_alter_table__cms_user',1439036967),('m150702_114030_alter_table__cms_user',1439036969),('m150703_162718_create_table__reviews2_message',1439037016),('m150707_114030_alter_table__big_text',1439036981),('m150715_103220_create_table__cms_agent',1439036982),('m150715_162718_create_table__log_db_target',1445336147),('m150730_103220_create_table__cms_session',1439036983),('m150730_213220_create_table__cms_event',1439036984),('m150806_213220_alter_table__cms_tree_type_property',1439297629),('m150807_213220_alter_table__cms_content_property',1439297631),('m150825_213220_delete_table__cms_user_group',1442571274),('m150826_113220_create_table__cms_user_universal_property',1442571278),('m150826_123220_create_table__cms_user_universal_property_enum',1442571280),('m150826_133220_create_table__cms_user_property',1442571283),('m150827_133220_create_table__cms_search_phrase',1442571286),('m150828_100558_create_table__shop_fuser',1443619241),('m150828_110559_create_table__shop_order_status',1443619243),('m150828_120559_create_table__shop_typ_price',1443619246),('m150828_130601_create_table__shop_person_type',1443619248),('m150831_130601_create_table__shop_person_type_site',1443619248),('m150831_140601_create_table__shop_pay_system',1443619250),('m150831_150601_create_table__shop_pay_system_person_type',1443619251),('m150901_150601_create_table__shop_vat',1443619254),('m150901_160601_create_table__shop_tax',1443619256),('m150901_170601_create_table__shop_tax_rate',1443619261),('m150901_180601_create_table__shop_extra',1443619262),('m150902_110558_alter_table__money_currency',1442576199),('m150910_170601_create_table__kladr_location',1442576201),('m150911_170601_create_table__measure',1442576204),('m150914_180601_create_table__shop_product',1443619275),('m150914_190601_create_table__shop_product_price',1443619279),('m150915_100601_create_table__shop_content',1443619281),('m150915_110601_create_table__shop_user_account',1443619285),('m150915_110701_create_table__shop_affiliate_plan',1443619290),('m150915_110801_create_table__shop_affiliate',1443619298),('m150915_110901_create_table__shop_affiliate_tier',1443619302),('m150915_111201_create_table__shop_store',1443619308),('m150922_213220_alter_table__cms_user',1442994277),('m150922_223220_update_data__cms_user',1442994277),('m150922_233220_alter_table__cms_tree',1442994281),('m150922_234220_update_data__cms_tree',1442994281),('m150922_235220_alter_table__cms_content_element',1442994285),('m150922_235320_update_data__cms_content_element',1442994285),('m150922_235520_alter_table__drop_files_column',1442994286),('m150923_133220_create_table__cms_tree_image',1443000986),('m150923_143220_create_table__cms_tree_file',1443000991),('m150923_153220_create_table__cms_content_element_image',1443005746),('m150923_163220_create_table__cms_content_element_file',1443005749),('m150923_173220_update_data__images_and_files',1443007161),('m150923_183220_alter_table__tree__content_element',1443026371),('m150924_183220_alter_table__cms_user',1443098410),('m150924_193220_alter_table__cms_user_email',1443099057),('m150925_113220_create_table__shop_person_type_property',1443619316),('m150925_133220_create_table__shop_person_type_property_enum',1443619319),('m150925_180601_create_table__shop_buyer',1443619322),('m150925_190601_create_table__shop_buyer_property',1443619327),('m150926_120601_create_table__shop_order',1443619342),('m150926_131201_create_table__shop_basket',1443619352),('m150927_100558_alter_table__shop_fuser',1443619357),('m150927_141201_create_table__shop_delivery',1443619368),('m150927_151201_create_table__shop_delivery2pay_system',1443619371),('m150928_161201_create_table__shop_viewed_product',1443803811),('m151001_100558_alter_table__shop_order',1444291284),('m151001_161201_create_table__shop_order_change',1444314006),('m151001_181201_create_table__shop_user_transact',1444314011),('m151001_191201_create_table__shop_discount',1444462575),('m151001_201201_create_table__shop_discount2type_price',1444505384),('m151012_100558_alter_table__shop_pay_system',1444653608),('m151023_113220_alter_table__cms_site',1445503740),('m151023_153220_alter_table__cms_content',1445537291),('m151023_163220_alter_table__cms_content',1445596717),('m151023_173220_alter_table__cms_tree_type',1445596720),('m151028_100558_alter_table__shop_delivery',1446146921),('m151028_110558_alter_table__shop_fuser',1446146923),('m151030_173220_alter_table__cms_tree',1446220164),('m151030_183220_alter_table__cms_tree',1446220165),('m151030_193220_alter_table__cms_tree',1446220167),('m151106_110601_create_table__shop_product_price_change',1446819710),('m151110_193220_alter_table__cms_content',1447172174),('m151113_113220_alter_table__cms_site_and_lang',1449054327),('m151215_193220_alter_table__cms_content',1454242403),('m151221_093837_addI18nTables',1454242404),('m160209_161201_create_table__shop_basket_props',1455223343),('m160215_093837__create_table__cms_dashboard',1455901155),('m160216_093837__create_table__cms_dashboard_widget',1455901159),('m160221_193220__alter_table__cms_tree',1456309593),('m160222_193220__alter_table__cms_content',1456309599),('m160222_203220__alter_table__cms_content',1456309604),('m160307_110558_alter_table__shop_content',1457384405),('m160313_203220__alter_table__cms_storage_file',1457887490),('m160315_093837__create_table__cms_user2cms_content_elements',1458314688),('m160319_093837__drop_table__cms_session',1458375755),('m160320_093837__alter_table__cms_storage_file',1459289439),('m160320_103837__alter_table__cms_user',1459289446),('m160329_103837__alter_table__cms_user',1459289454),('m160329_113837__update_data__cms_user',1459289454),('m160412_113837__drop_table__cms_tree_menu',1460671657),('m160413_103837__alter_table__cms_content_element',1460671662),('m160415_093837_create_table__cms_search_phrase',1460837206),('m160416_223103_create_table__user_authclient',1460837206),('m160417_103220_create_table__cms_agent',1461184354),('m160422_162718_alter_table__log_db_target',1461317249),('m160518_110558_alter_table__shop_fuser',1464284213),('m160522_093837__create_table__cms_admin_filter',1464284216),('m160601_110558_alter_table__shop_order',1465221887),('m160701_192740_alter_table__form2_form_send_property',1488275076),('m160901_100558_create_table__import_task',1511100209),('m160902_100558_create_table__export_task',1511100214),('m161016_120558_alter_table__shop_order',1488275077),('m161016_130558_alter_table__shop_buyer',1488275078),('m161016_150558_alter_table__shop_order',1488275079),('m161102_150558_alter_table__shop_product_price',1488275080),('m161220_110601_create_table__shop_product_quantity_change',1488275086),('m161220_120601_create_table__shop_quantity_notice_email',1488275093),('m170103_120601_create_table__shop_discount_coupon',1488275102),('m170110_150558_alter_table__shop_fuser',1488275103),('m170208_120601_create_table__shop_order2discount_coupon',1488275108),('m170416_103837__alter_table__cms_tree',1505132191),('m170416_103840__alter_table__cms_tree',1505132203),('m170507_103840__alter_table__cms_tree',1505132210),('m170507_113840__alter_table__cms_tree',1505132226),('m170507_123840__alter_table__cms_tree',1505132230),('m170507_133840__alter_table__cms_component_settings',1505132237),('m170507_143840__alter_table__cms_component_settings',1505132246),('m170508_013840__alter_table__cms_site_domain',1505132253),('m170508_023840__alter_table__cms_site_domain',1505132261),('m170512_023840__alter_table__cms_content_element_property',1505132263),('m170514_093837__create_table__cms_content_property2content',1505132271),('m170515_023840__alter_table__cms_content_property',1505132285),('m170515_033840__alter_table__cms_tree_type_property',1505132296),('m170515_043840__alter_table__cms_user_universal_property',1505132312),('m170515_093837__create_table__cms_tree_type_property2type',1505132320),('m170515_203837__create_table__cms_content_property2tree',1505132325),('m170622_043840__alter_table__drop_list_type',1505132328),('m170622_053840__alter_table__add_column_bool_value',1505132331),('m170701_043840__alter_table__drop_list_type',1505132332),('m170701_053840__alter_table__add_column_bool_value',1505132333),('m170701_063840__alter_table__form_property',1505132341),('m170701_073840__alter_table__shop_person_type_property',1505132388),('m170701_093840__alter_table__shop_buyer_property',1505132391),('m170701_133344__alter_table__cms_tree_property',1505132410),('m170701_133345__alter_table__cms_tree_type_property',1505132420),('m170701_133347__alter_table__cms_content_property',1505132430),('m170701_133349__alter_table__cms_content_element_property',1505132439),('m170701_133355__alter_table__cms_content_element_tree',1505132451),('m170701_133357__alter_table__cms_content_property_enum',1505132460),('m170701_133501__alter_table__cms_tree_type_property_enum',1505132472),('m170701_133505__alter_table__cms_content_element_property',1505132482),('m170701_133510__alter_table__cms_tree_property',1505132487),('m170701_133515__alter_table__cms_user_property',1505132493),('m170701_133520__alter_table__form2_form_send_property',1505132499),('m170701_143520__alter_table__shop_buyer_property',1505132505),('m170701_163515__alter_table__cms_content_element_property',1505132509),('m170701_173515__alter_table__cms_tree_property',1505132515),('m170701_174515__alter_table__cms_user_property',1505132519),('m170701_175515__alter_table__shop_buyer_property',1505132525),('m170701_185515__alter_table__form2_form_send_property',1505132530),('m170922_023840__alter_table__cms_content_element_property',1508388003),('m171014_174515__alter_table__cms_user',1508388015),('m171121_201442_alter__view_file',1511251827),('m180109_224042_update__cms_content_element_property',1517954810),('m180223_175515__alter_table__cms_storage_file',1530958586),('m180313_120601_create_table__backend_showing',1530958590),('m180517_110558_alter_table__money_currency',1530958592),('m180724_120601__create_table__shop_payment',1542639240),('m180724_130601__create_table__shop_bill',1542639244),('m180725_130601__alter_table__shop_bill',1542639244),('m180726_130601__rename_table__shop_fuser',1542639244),('m180726_140601__rename_table__shop_basket',1542639244),('m180726_150601__rename_table__shop_basket_props',1542639244),('m180726_160601__alter_table__shop_cart',1542639245),('m180726_170601__alter_table__shop_order',1542639245),('m180726_170701__alter_table__shop_order',1542639253),('m180726_170801__alter_table__shop_order',1542639254),('m180726_170901__alter_table__shop_order',1542639261),('m180726_171001__alter_table__shop_order',1542639264),('m180726_171101__alter_table__shop_order',1542639275),('m180726_171201__alter_table__shop_order',1542639278),('m180726_171301__alter_table__shop_order',1542639280),('m180726_171401__alter_table__shop_order',1542639280),('m180726_180601__alter_table__shop_cart',1542639283),('m180726_190601__alter_table__shop_order_item',1542639289),('m180727_110601__alter_table__shop_order_item',1542639300),('m180727_110701__alter_table__shop_order_item',1542639302),('m180727_110801__alter_table__shop_cart',1542639308),('m180727_110901__alter_table__shop_order',1542639308),('m180727_120901__delete_table__shop_extra',1542639308),('m180727_120901__rename_table__shop_order_item_props',1542639308),('m180727_130801__alter_table__shop_order_item_property',1542639309),('m180727_140901__delete_table__shop_user_transact',1542639309),('m180727_150901__delete_table__shop_user_account',1542639309),('m180730_110901__alter_table__shop_order',1542639310),('m180730_111001__update_table__shop_order',1542639310),('m180730_120901__alter_table__shop_order',1542639311),('m180730_130901__alter_table__shop_order_status',1542639311),('m180730_140901__alter_table__shop_order',1542639312),('m180730_150901__alter_table__shop_order',1542639312),('m180731_110901__alter_table__shop_order',1542639313),('m180819_110901__alter_table__shop_discount',1542639313),('m190313_101301__update_table__shop_pay_system',1560778022),('m190313_165801__update_table__shop_pay_system',1560778022),('m190412_175515__alter_table__cms_lang',1560778022),('m190412_185515__update_data_table__cms_lang',1560778022),('m190412_195515__alter_table__cms_lang',1560778022),('m190412_205515__alter_table__cms_lang',1560778023),('m190412_215515__update_data_table__cms_lang',1560778023),('m190412_225515__alter_table__cms_lang',1560778023),('m190412_235515__alter_table__cms_lang',1560778024),('m190417_115515__alter_table__form2_form_send',1560778025),('m190417_125515__update_data__form2_form_send',1560778025),('m190417_135515__alter_table__form2_form_send',1560778025),('m190417_145515__alter_table__form2_form_send',1560778026),('m190613_015515__alter_table__cms_content',1560778027),('m190621_015515__alter_table__cms_site_domain',1578902539),('m190621_025515__alter_table__cms_site_domain',1578902541),('m190820_015515__alter_table__cms_user_email',1578902546),('m190920_015515__update_data_table__cms_user_email',1578902546),('m191004_015515__alter_table__cms_content_element',1578902548),('m191004_015615__alter_table__cms_tree',1578902550),('m191020_015515__alter_table__cms_user_email',1578902552),('m191118_130601__alter_table__shop_product',1578902572),('m191118_140601__alter_table__shop_type_price',1578902575),('m191118_150601__alter_table__shop_product',1578902578),('m191118_160601__alter_table__shop_product_quantity_change',1578902579),('m191119_130601__create_table__shop_supplier',1578902581),('m191119_140601__create_table__shop_store',1578902587),('m191202_130601__create_table__shop_store_product',1578902590),('m191204_170601_alter_table__measure',1578902592),('m191204_180601_alter_table__measure',1578902592),('m191212_150601__alter_table__shop_product',1578902594),('m191227_015615__alter_table__cms_tree',1578902596);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `migration` with 302 row(s)
--

--
-- Table structure for table `money_currency`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course` decimal(10,6) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `is_active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `course` (`course`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='Валюты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_currency`
--

LOCK TABLES `money_currency` WRITE;
/*!40000 ALTER TABLE `money_currency` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `money_currency` VALUES (1,'AED','UAE Dirham',NULL,100,0),(2,'AFN','Afghani',NULL,100,0),(3,'ALL','Lek',NULL,100,0),(4,'AMD','Armenian Dram',0.130687,100,0),(5,'ANG','Netherlands Antillean Guilder',NULL,100,0),(6,'AOA','Kwanza',NULL,100,0),(7,'ARS','Argentine Peso',NULL,100,0),(8,'AUD','Australian Dollar',46.754200,100,0),(9,'AWG','Aruban Florin',NULL,100,0),(10,'AZN','Azerbaijanian Manat',37.097600,100,0),(11,'BAM','Convertible Mark',NULL,100,0),(12,'BBD','Barbados Dollar',NULL,100,0),(13,'BDT','Taka',NULL,100,0),(14,'BGN','Bulgarian Lev',37.795100,100,0),(15,'BHD','Bahraini Dinar',NULL,100,0),(16,'BIF','Burundi Franc',NULL,100,0),(17,'BMD','Bermudian Dollar',NULL,100,0),(18,'BND','Brunei Dollar',NULL,100,0),(19,'BOB','Boliviano',NULL,100,0),(20,'BOV','Mvdol',NULL,100,0),(21,'BRL','Brazilian Real',16.051300,100,0),(22,'BSD','Bahamian Dollar',NULL,100,0),(23,'BTN','Ngultrum',NULL,100,0),(24,'BWP','Pula',NULL,100,0),(25,'BYR','Belarussian Ruble',0.003340,100,0),(26,'BZD','Belize Dollar',NULL,100,0),(27,'CAD','Canadian Dollar',48.063400,100,0),(28,'CDF','Congolese Franc',NULL,100,0),(29,'CHE','WIR Euro',NULL,100,0),(30,'CHF','Swiss Franc',63.592200,100,0),(31,'CHW','WIR Franc',NULL,100,0),(32,'CLF','Unidades de fomento',NULL,100,0),(33,'CLP','Chilean Peso',NULL,100,0),(34,'CNY','Yuan Renminbi',9.495110,100,0),(35,'COP','Colombian Peso',NULL,100,0),(36,'COU','Unidad de Valor Real',NULL,100,0),(37,'CRC','Costa Rican Colon',NULL,100,0),(38,'CUC','Peso Convertible',NULL,100,0),(39,'CUP','Cuban Peso',NULL,100,0),(40,'CVE','Cape Verde Escudo',NULL,100,0),(41,'CZK','Czech Koruna',2.849730,100,0),(42,'DJF','Djibouti Franc',NULL,100,0),(43,'DKK','Danish Krone',9.919790,100,0),(44,'DOP','Dominican Peso',NULL,100,0),(45,'DZD','Algerian Dinar',NULL,100,0),(46,'EGP','Egyptian Pound',NULL,100,0),(47,'ERN','Nakfa',NULL,100,0),(48,'ETB','Ethiopian Birr',NULL,100,0),(49,'EUR','Euro',73.902800,100,0),(50,'FJD','Fiji Dollar',NULL,100,0),(51,'FKP','Falkland Islands Pound',NULL,100,0),(52,'GBP','Pound Sterling',83.604600,100,1),(53,'GEL','Lari',NULL,100,0),(54,'GHS','Ghana Cedi',NULL,100,0),(55,'GIP','Gibraltar Pound',NULL,100,0),(56,'GMD','Dalasi',NULL,100,0),(57,'GNF','Guinea Franc',NULL,100,0),(58,'GTQ','Quetzal',NULL,100,0),(59,'GYD','Guyana Dollar',NULL,100,0),(60,'HKD','Hong Kong Dollar',8.042710,100,0),(61,'HNL','Lempira',NULL,100,0),(62,'HRK','Croatian Kuna',NULL,100,0),(63,'HTG','Gourde',NULL,100,0),(64,'HUF','Forint',0.228139,100,0),(65,'IDR','Rupiah',NULL,100,0),(66,'ILS','New Israeli Sheqel',NULL,100,0),(67,'INR','Indian Rupee',0.915768,100,0),(68,'IQD','Iraqi Dinar',NULL,100,0),(69,'IRR','Iranian Rial',NULL,100,0),(70,'ISK','Iceland Krona',NULL,100,0),(71,'JMD','Jamaican Dollar',NULL,100,0),(72,'JOD','Jordanian Dinar',NULL,100,0),(73,'JPY','Yen',0.570694,100,0),(74,'KES','Kenyan Shilling',NULL,100,0),(75,'KGS','Som',0.923843,100,0),(76,'KHR','Riel',NULL,100,0),(77,'KMF','Comoro Franc',NULL,100,0),(78,'KPW','North Korean Won',NULL,100,0),(79,'KRW','Won',0.056558,100,0),(80,'KWD','Kuwaiti Dinar',NULL,100,0),(81,'KYD','Cayman Islands Dollar',NULL,100,0),(82,'KZT','Tenge',0.183602,100,0),(83,'LAK','Kip',NULL,100,0),(84,'LBP','Lebanese Pound',NULL,100,0),(85,'LKR','Sri Lanka Rupee',NULL,100,0),(86,'LRD','Liberian Dollar',NULL,100,0),(87,'LSL','Loti',NULL,100,0),(88,'LTL','Lithuanian Litas',NULL,100,0),(89,'LVL','Latvian Lats',NULL,100,0),(90,'LYD','Libyan Dinar',NULL,100,0),(91,'MAD','Moroccan Dirham',NULL,100,0),(92,'MDL','Moldovan Leu',3.774090,100,0),(93,'MGA','Malagasy Ariary',NULL,100,0),(94,'MKD','Denar',NULL,100,0),(95,'MMK','Kyat',NULL,100,0),(96,'MNT','Tugrik',NULL,100,0),(97,'MOP','Pataca',NULL,100,0),(98,'MRO','Ouguiya',NULL,100,0),(99,'MUR','Mauritius Rupee',NULL,100,0),(100,'MVR','Rufiyaa',NULL,100,0),(101,'MWK','Kwacha',NULL,100,0),(102,'MXN','Mexican Peso',NULL,100,0),(103,'MXV','Mexican Unidad de Inversion (UDI)',NULL,100,0),(104,'MYR','Malaysian Ringgit',NULL,100,0),(105,'MZN','Mozambique Metical',NULL,100,0),(106,'NAD','Namibia Dollar',NULL,100,0),(107,'NGN','Naira',NULL,100,0),(108,'NIO','Cordoba Oro',NULL,100,0),(109,'NOK','Norwegian Krone',7.831560,100,0),(110,'NPR','Nepalese Rupee',NULL,100,0),(111,'NZD','New Zealand Dollar',NULL,100,0),(112,'OMR','Rial Omani',NULL,100,0),(113,'PAB','Balboa',NULL,100,0),(114,'PEN','Nuevo Sol',NULL,100,0),(115,'PGK','Kina',NULL,100,0),(116,'PHP','Philippine Peso',NULL,100,0),(117,'PKR','Pakistan Rupee',NULL,100,0),(118,'PLN','Zloty',16.986900,100,0),(119,'PYG','Guarani',NULL,100,0),(120,'QAR','Qatari Rial',NULL,100,0),(121,'RON','New Romanian Leu',15.852900,100,0),(122,'RSD','Serbian Dinar',NULL,100,0),(123,'RUB','Russian Ruble',1.000000,100,1),(124,'RWF','Rwanda Franc',NULL,100,0),(125,'SAR','Saudi Riyal',NULL,100,0),(126,'SBD','Solomon Islands Dollar',NULL,100,0),(127,'SCR','Seychelles Rupee',NULL,100,0),(128,'SDG','Sudanese Pound',NULL,100,0),(129,'SEK','Swedish Krona',7.193750,100,0),(130,'SGD','Singapore Dollar',46.365200,100,0),(131,'SHP','Saint Helena Pound',NULL,100,0),(132,'SLL','Leone',NULL,100,0),(133,'SOS','Somali Shilling',NULL,100,0),(134,'SRD','Surinam Dollar',NULL,100,0),(135,'SSP','South Sudanese Pound',NULL,100,0),(136,'STD','Dobra',NULL,100,0),(137,'SVC','El Salvador Colon',NULL,100,0),(138,'SYP','Syrian Pound',NULL,100,0),(139,'SZL','Lilangeni',NULL,100,0),(140,'THB','Baht',NULL,100,0),(141,'TJS','Somoni',6.872020,100,0),(142,'TMT','Turkmenistan New Manat',18.060500,100,0),(143,'TND','Tunisian Dinar',NULL,100,0),(144,'TOP','Pa’anga',NULL,100,0),(145,'TRY','Turkish Lira',13.720600,100,0),(146,'TTD','Trinidad and Tobago Dollar',NULL,100,0),(147,'TWD','New Taiwan Dollar',NULL,100,0),(148,'TZS','Tanzanian Shilling',NULL,100,0),(149,'UAH','Hryvnia',2.395510,100,0),(150,'UGX','Uganda Shilling',NULL,100,0),(151,'USD','US Dollar',63.121600,100,0),(152,'USN','US Dollar (Next day)',NULL,100,0),(153,'USS','US Dollar (Same day)',NULL,100,0),(154,'UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)',NULL,100,0),(155,'UYU','Peso Uruguayo',NULL,100,0),(156,'UZS','Uzbekistan Sum',0.008045,100,0),(157,'VEF','Bolivar',NULL,100,0),(158,'VND','Dong',NULL,100,0),(159,'VUV','Vatu',NULL,100,0),(160,'WST','Tala',NULL,100,0),(161,'XAF','CFA Franc BEAC',NULL,100,0),(162,'XAG','Silver',NULL,100,0),(163,'XAU','Gold',NULL,100,0),(164,'XBA','Bond Markets Unit European Composite Unit (EURCO)',NULL,100,0),(165,'XBB','Bond Markets Unit European Monetary Unit (E.M.U.-6)',NULL,100,0),(166,'XBC','Bond Markets Unit European Unit of Account 9 (E.U.A.-9)',NULL,100,0),(167,'XBD','Bond Markets Unit European Unit of Account 17 (E.U.A.-17)',NULL,100,0),(168,'XCD','East Caribbean Dollar',NULL,100,0),(169,'XDR','SDR (Special Drawing Right)',88.929500,100,0),(170,'XFU','UIC-Franc',NULL,100,0),(171,'XOF','CFA Franc BCEAO',NULL,100,0),(172,'XPD','Palladium',NULL,100,0),(173,'XPF','CFP Franc',NULL,100,0),(174,'XPT','Platinum',NULL,100,0),(175,'XSU','Sucre',NULL,100,0),(176,'XTS','Codes specifically reserved for testing purposes',NULL,100,0),(177,'XUA','ADB Unit of Account',NULL,100,0),(178,'XXX','The codes assigned for transactions where no currency is involved',NULL,100,0),(179,'YER','Yemeni Rial',NULL,100,0),(180,'ZAR','Rand',4.661930,100,0),(181,'ZMW','Zambian Kwacha',NULL,100,0),(182,'ZWL','Zimbabwe Dollar',NULL,100,0);
/*!40000 ALTER TABLE `money_currency` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `money_currency` with 182 row(s)
--

--
-- Table structure for table `reviews2_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews2_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `published_at` int(11) DEFAULT NULL,
  `processed_by` int(11) DEFAULT NULL,
  `processed_at` int(11) DEFAULT NULL,
  `element_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `dignity` text,
  `disadvantages` text,
  `comments` text,
  `rating` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `ip` varchar(32) DEFAULT NULL,
  `page_url` text,
  `data_server` text,
  `data_session` text,
  `data_cookie` text,
  `data_request` text,
  `site_code` char(15) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `published_at` (`published_at`),
  KEY `processed_at` (`processed_at`),
  KEY `processed_by` (`processed_by`),
  KEY `status` (`status`),
  KEY `rating` (`rating`),
  KEY `element_id` (`element_id`),
  KEY `content_id` (`content_id`),
  KEY `ip` (`ip`),
  KEY `site_code` (`site_code`),
  KEY `user_name` (`user_name`),
  KEY `user_phone` (`user_phone`),
  KEY `user_email` (`user_email`),
  KEY `user_city` (`user_city`),
  CONSTRAINT `reviews2_message_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_element_id` FOREIGN KEY (`element_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews2_message_processed_by` FOREIGN KEY (`processed_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_site_code_fk` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `reviews2_message_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Отзывы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews2_message`
--

LOCK TABLES `reviews2_message` WRITE;
/*!40000 ALTER TABLE `reviews2_message` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `reviews2_message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `reviews2_message` with 0 row(s)
--

--
-- Table structure for table `shop_affiliate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `plan_id` int(11) NOT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `paid_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `approved_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `pending_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `items_number` int(11) NOT NULL DEFAULT '0',
  `items_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `last_calculate_at` int(11) DEFAULT NULL,
  `aff_site` varchar(255) DEFAULT NULL,
  `aff_description` text,
  `fix_plan` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id__site_code` (`user_id`,`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `affiliate_id` (`affiliate_id`),
  KEY `site_code` (`site_code`),
  KEY `active` (`active`),
  KEY `paid_sum` (`paid_sum`),
  KEY `approved_sum` (`approved_sum`),
  KEY `items_number` (`items_number`),
  KEY `items_sum` (`items_sum`),
  KEY `last_calculate_at` (`last_calculate_at`),
  KEY `aff_site` (`aff_site`),
  KEY `fix_plan` (`fix_plan`),
  KEY `user_id` (`user_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `shop_affiliate_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate__affiliate_id` FOREIGN KEY (`affiliate_id`) REFERENCES `shop_affiliate` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate__plan_id` FOREIGN KEY (`plan_id`) REFERENCES `shop_affiliate_plan` (`id`),
  CONSTRAINT `shop_affiliate__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE,
  CONSTRAINT `shop_affiliate__user_id` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Аффилиаты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate`
--

LOCK TABLES `shop_affiliate` WRITE;
/*!40000 ALTER TABLE `shop_affiliate` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_affiliate` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_affiliate` with 0 row(s)
--

--
-- Table structure for table `shop_affiliate_plan`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `base_rate` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `base_rate_type` varchar(1) NOT NULL DEFAULT 'P',
  `base_rate_currency_code` varchar(3) DEFAULT NULL,
  `min_pay` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `min_plan_value` decimal(18,4) DEFAULT NULL,
  `value_currency_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `base_rate` (`base_rate`),
  KEY `base_rate_type` (`base_rate_type`),
  KEY `min_pay` (`min_pay`),
  KEY `min_plan_value` (`min_plan_value`),
  KEY `site_code` (`site_code`),
  KEY `base_rate_currency_code` (`base_rate_currency_code`),
  KEY `value_currency_code` (`value_currency_code`),
  CONSTRAINT `shop_affiliate_plan_base_rate_currency_code` FOREIGN KEY (`base_rate_currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_affiliate_plan_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_plan_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_plan_value_currency_code` FOREIGN KEY (`value_currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_affiliate_plan__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Планы для аффилиатов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate_plan`
--

LOCK TABLES `shop_affiliate_plan` WRITE;
/*!40000 ALTER TABLE `shop_affiliate_plan` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_affiliate_plan` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_affiliate_plan` with 0 row(s)
--

--
-- Table structure for table `shop_affiliate_tier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_affiliate_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_code` varchar(15) NOT NULL,
  `rate1` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate2` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate3` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate4` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `rate5` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_code` (`site_code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `rate1` (`rate1`),
  KEY `rate2` (`rate2`),
  KEY `rate3` (`rate3`),
  KEY `rate4` (`rate4`),
  KEY `rate5` (`rate5`),
  CONSTRAINT `shop_affiliate_tier_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_tier_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_affiliate_tier__site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Пирамиды аффилиатов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_affiliate_tier`
--

LOCK TABLES `shop_affiliate_tier` WRITE;
/*!40000 ALTER TABLE `shop_affiliate_tier` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_affiliate_tier` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_affiliate_tier` with 0 row(s)
--

--
-- Table structure for table `shop_bill`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_buyer_id` int(11) NOT NULL COMMENT 'Покупатель',
  `shop_order_id` int(11) NOT NULL COMMENT 'Заказ',
  `shop_pay_system_id` int(11) NOT NULL COMMENT 'Платежная система',
  `paid_at` int(11) DEFAULT NULL COMMENT 'Дата оплаты',
  `shop_payment_id` int(11) DEFAULT NULL COMMENT 'Платеж',
  `closed_at` int(11) DEFAULT NULL COMMENT 'Дата отмены',
  `reason_closed` text COMMENT 'Причина отмены',
  `amount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL DEFAULT 'RUB',
  `description` text,
  `code` varchar(255) NOT NULL COMMENT 'Уникальный код счета',
  `external_data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `shop_bill__updated_by` (`updated_by`),
  KEY `shop_bill__created_by` (`created_by`),
  KEY `shop_bill__created_at` (`created_at`),
  KEY `shop_bill__updated_at` (`updated_at`),
  KEY `shop_bill__paid_at` (`paid_at`),
  KEY `shop_bill__closed_at` (`closed_at`),
  KEY `shop_bill__shop_buyer_id` (`shop_buyer_id`),
  KEY `shop_bill__shop_order_id` (`shop_order_id`),
  KEY `shop_bill__shop_pay_system_id` (`shop_pay_system_id`),
  KEY `shop_bill__shop_payment_id` (`shop_payment_id`),
  KEY `shop_bill__currency_code` (`currency_code`),
  CONSTRAINT `shop_bill__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_bill__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_bill__shop_buyer_id` FOREIGN KEY (`shop_buyer_id`) REFERENCES `shop_buyer` (`id`),
  CONSTRAINT `shop_bill__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`),
  CONSTRAINT `shop_bill__shop_payment_id` FOREIGN KEY (`shop_payment_id`) REFERENCES `shop_payment` (`id`),
  CONSTRAINT `shop_bill__shop_pay_system_id` FOREIGN KEY (`shop_pay_system_id`) REFERENCES `shop_pay_system` (`id`),
  CONSTRAINT `shop_bill__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Счета для оплаты покупателей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_bill`
--

LOCK TABLES `shop_bill` WRITE;
/*!40000 ALTER TABLE `shop_bill` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_bill` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_bill` with 0 row(s)
--

--
-- Table structure for table `shop_buyer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `shop_person_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `cms_user_id` (`cms_user_id`),
  KEY `shop_person_type_id` (`shop_person_type_id`),
  KEY `name` (`name`),
  CONSTRAINT `shop_buyer_cms__shop_person_type_id` FOREIGN KEY (`shop_person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_cms__user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_buyer_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_buyer`
--

LOCK TABLES `shop_buyer` WRITE;
/*!40000 ALTER TABLE `shop_buyer` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_buyer` VALUES (1,1,1,1443622975,1461263580,'Александр',1,1);
/*!40000 ALTER TABLE `shop_buyer` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_buyer` with 1 row(s)
--

--
-- Table structure for table `shop_buyer_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_buyer_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `value_enum` int(11) DEFAULT NULL,
  `value_num` decimal(18,4) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value_bool` tinyint(1) DEFAULT NULL,
  `value_num2` decimal(18,4) DEFAULT NULL,
  `value_int2` int(11) DEFAULT NULL,
  `value_string` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `element_id` (`element_id`),
  KEY `value` (`value`),
  KEY `value_enum` (`value_enum`),
  KEY `value_num` (`value_num`),
  KEY `description` (`description`),
  KEY `value_num2` (`value_num2`),
  KEY `value_int2` (`value_int2`),
  KEY `value_string` (`value_string`),
  CONSTRAINT `shop_buyer_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `shop_buyer_property_element_id` FOREIGN KEY (`element_id`) REFERENCES `shop_buyer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_property_property_id` FOREIGN KEY (`property_id`) REFERENCES `shop_person_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_buyer_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Связь свойства и значения';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_buyer_property`
--

LOCK TABLES `shop_buyer_property` WRITE;
/*!40000 ALTER TABLE `shop_buyer_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_buyer_property` VALUES (1,1,1,1443622975,1464703497,2,1,'Александр',0,0.0000,NULL,NULL,NULL,NULL,NULL),(2,1,1,1443622975,1464703497,1,1,'semenov@skeeks.com',0,0.0000,NULL,NULL,NULL,NULL,NULL),(3,1,1,1443622975,1464703497,3,1,'Калуга',0,0.0000,NULL,NULL,NULL,NULL,NULL),(16,1,1,1445556994,1464703497,4,1,'+79035251424',2147483647,79035251424.0000,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_buyer_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_buyer_property` with 4 row(s)
--

--
-- Table structure for table `shop_cart`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_user_id` int(11) DEFAULT NULL,
  `shop_order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`cms_user_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_cart__shop_order_id` (`shop_order_id`),
  CONSTRAINT `shop_cart__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_cart__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_fuser_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=38937 DEFAULT CHARSET=utf8 COMMENT='Пользователи для корзины';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cart`
--

LOCK TABLES `shop_cart` WRITE;
/*!40000 ALTER TABLE `shop_cart` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_cart` VALUES (38936,1,1,1542640133,1542640133,1,1);
/*!40000 ALTER TABLE `shop_cart` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_cart` with 1 row(s)
--

--
-- Table structure for table `shop_content`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL,
  `yandex_export` varchar(1) NOT NULL DEFAULT 'N',
  `subscription` varchar(1) NOT NULL DEFAULT 'N',
  `vat_id` int(11) DEFAULT NULL,
  `children_content_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_id` (`content_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `yandex_export` (`yandex_export`),
  KEY `subscription` (`subscription`),
  KEY `shop_content_shop_vat` (`vat_id`),
  KEY `children_content_id` (`children_content_id`),
  CONSTRAINT `shop_content_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_content_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_content_shop_vat` FOREIGN KEY (`vat_id`) REFERENCES `shop_vat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_content_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_content__children_content_id` FOREIGN KEY (`children_content_id`) REFERENCES `cms_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Связь контента с магазином';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_content`
--

LOCK TABLES `shop_content` WRITE;
/*!40000 ALTER TABLE `shop_content` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_content` VALUES (1,1,1,1443619464,1457384922,2,'Y','N',NULL,10),(3,1,1,1457270346,1457270346,10,'Y','N',NULL,NULL);
/*!40000 ALTER TABLE `shop_content` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_content` with 2 row(s)
--

--
-- Table structure for table `shop_delivery`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `period_from` int(11) DEFAULT NULL,
  `period_to` int(11) DEFAULT NULL,
  `period_type` varchar(1) DEFAULT NULL,
  `weight_from` int(11) DEFAULT NULL,
  `weight_to` int(11) DEFAULT NULL,
  `order_price_from` decimal(18,2) DEFAULT NULL,
  `order_price_to` decimal(18,2) DEFAULT NULL,
  `order_currency_code` varchar(3) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `description` text,
  `logo_id` int(11) DEFAULT NULL,
  `store` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `site_id` (`site_id`),
  KEY `period_from` (`period_from`),
  KEY `period_to` (`period_to`),
  KEY `period_type` (`period_type`),
  KEY `weight_from` (`weight_from`),
  KEY `weight_to` (`weight_to`),
  KEY `order_price_from` (`order_price_from`),
  KEY `order_price_to` (`order_price_to`),
  KEY `order_currency_code` (`order_currency_code`),
  KEY `active` (`active`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `priority` (`priority`),
  KEY `logo_id` (`logo_id`),
  CONSTRAINT `shop_delivery_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_delivery__logo_id` FOREIGN KEY (`logo_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__order_currency_code` FOREIGN KEY (`order_currency_code`) REFERENCES `money_currency` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Службы доставки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_delivery`
--

LOCK TABLES `shop_delivery` WRITE;
/*!40000 ALTER TABLE `shop_delivery` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_delivery` VALUES (4,NULL,1,1445005255,1508388500,'Самовывоз',1,NULL,NULL,'',NULL,NULL,NULL,NULL,'RUB','Y',0.00,'RUB',1,'',NULL,''),(5,1,1,1508388457,1508388457,'Доставка по Москве - 200 руб.',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,'RUB','Y',200.00,'RUB',100,'',NULL,'');
/*!40000 ALTER TABLE `shop_delivery` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_delivery` with 2 row(s)
--

--
-- Table structure for table `shop_delivery2pay_system`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_delivery2pay_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `pay_system_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_delivery2pay_system` (`pay_system_id`,`delivery_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_delivery2pay_system__shop_delivery` (`delivery_id`),
  CONSTRAINT `shop_delivery2pay_system_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery2pay_system_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_delivery2pay_system__shop_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `shop_delivery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_delivery2pay_system__shop_pay_system` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Службы доставки с платежными системами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_delivery2pay_system`
--

LOCK TABLES `shop_delivery2pay_system` WRITE;
/*!40000 ALTER TABLE `shop_delivery2pay_system` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_delivery2pay_system` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_delivery2pay_system` with 0 row(s)
--

--
-- Table structure for table `shop_discount`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `active_from` int(11) DEFAULT NULL,
  `active_to` int(11) DEFAULT NULL,
  `renewal` varchar(1) NOT NULL DEFAULT 'N',
  `name` varchar(255) DEFAULT NULL,
  `max_uses` int(11) NOT NULL DEFAULT '0',
  `count_uses` int(11) NOT NULL DEFAULT '0',
  `coupon` varchar(20) DEFAULT NULL,
  `max_discount` decimal(18,4) DEFAULT NULL,
  `value_type` varchar(1) NOT NULL DEFAULT 'P',
  `value` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL,
  `min_order_sum` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `notes` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `xml_id` varchar(255) DEFAULT NULL,
  `count_period` varchar(1) NOT NULL DEFAULT 'U',
  `count_size` int(11) NOT NULL DEFAULT '0',
  `count_type` varchar(1) NOT NULL DEFAULT 'Y',
  `count_from` int(11) DEFAULT NULL,
  `count_to` int(11) DEFAULT NULL,
  `action_size` int(11) NOT NULL DEFAULT '0',
  `action_type` varchar(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '1',
  `last_discount` varchar(1) NOT NULL DEFAULT 'Y',
  `conditions` text,
  `unpack` text,
  `version` int(11) NOT NULL DEFAULT '1',
  `assignment_type` varchar(10) NOT NULL DEFAULT 'product',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `site_id` (`site_id`),
  KEY `active` (`active`),
  KEY `active_from` (`active_from`),
  KEY `active_to` (`active_to`),
  KEY `renewal` (`renewal`),
  KEY `name` (`name`),
  KEY `max_uses` (`max_uses`),
  KEY `count_uses` (`count_uses`),
  KEY `coupon` (`coupon`),
  KEY `priority` (`priority`),
  KEY `max_discount` (`max_discount`),
  KEY `value_type` (`value_type`),
  KEY `value` (`value`),
  KEY `currency_code` (`currency_code`),
  KEY `min_order_sum` (`min_order_sum`),
  KEY `type` (`type`),
  KEY `count_period` (`count_period`),
  KEY `count_size` (`count_size`),
  KEY `count_type` (`count_type`),
  KEY `count_from` (`count_from`),
  KEY `count_to` (`count_to`),
  KEY `action_size` (`action_size`),
  KEY `action_type` (`action_type`),
  KEY `last_discount` (`last_discount`),
  KEY `version` (`version`),
  CONSTRAINT `shop_discount_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Скидки на товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount`
--

LOCK TABLES `shop_discount` WRITE;
/*!40000 ALTER TABLE `shop_discount` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_discount` VALUES (1,1,1,1444472755,1444474212,1,'Y',NULL,NULL,'N','Тестовая скидка',0,0,NULL,NULL,'P',5.0000,'RUB',0.0000,'',0,NULL,'U',0,'Y',NULL,NULL,0,'Y',10,'Y','{\"type\":\"group\",\"rules_type\":\"or\",\"condition\":\"equal\",\"rules\":[{\"type\":\"rule\",\"field\":\"element.tree_id\",\"condition\":\"and\",\"value\":[\"\",\"1428\"]},{\"type\":\"rule\",\"field\":\"element.treeIds\",\"condition\":\"and\",\"value\":[\"\",\"1428\"]}]}',NULL,1,'product');
/*!40000 ALTER TABLE `shop_discount` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_discount` with 1 row(s)
--

--
-- Table structure for table `shop_discount2type_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount2type_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `discount_id` int(11) NOT NULL,
  `type_price_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discount_id__type_price_id` (`discount_id`,`type_price_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_discount2type_price__type_price_id` (`type_price_id`),
  CONSTRAINT `shop_discount2type_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount2type_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount2type_price__discount_id` FOREIGN KEY (`discount_id`) REFERENCES `shop_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_discount2type_price__type_price_id` FOREIGN KEY (`type_price_id`) REFERENCES `shop_type_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Связь скидок с типами цен';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount2type_price`
--

LOCK TABLES `shop_discount2type_price` WRITE;
/*!40000 ALTER TABLE `shop_discount2type_price` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_discount2type_price` VALUES (9,NULL,NULL,NULL,NULL,1,4),(10,NULL,NULL,NULL,NULL,1,5);
/*!40000 ALTER TABLE `shop_discount2type_price` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_discount2type_price` with 2 row(s)
--

--
-- Table structure for table `shop_discount_coupon`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_discount_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_discount_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `active_from` int(11) DEFAULT NULL,
  `active_to` int(11) DEFAULT NULL,
  `coupon` varchar(32) NOT NULL,
  `max_use` int(11) NOT NULL DEFAULT '1',
  `use_count` int(11) NOT NULL DEFAULT '0',
  `cms_user_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_discount_id` (`shop_discount_id`),
  KEY `is_active` (`is_active`),
  KEY `active_from` (`active_from`),
  KEY `active_to` (`active_to`),
  KEY `coupon` (`coupon`),
  KEY `max_use` (`max_use`),
  KEY `use_count` (`use_count`),
  KEY `cms_user_id` (`cms_user_id`),
  CONSTRAINT `shop_discount_coupon__cms_user_id` FOREIGN KEY (`cms_user_id`) REFERENCES `cms_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_discount_coupon__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_discount_coupon__shop_discount_id` FOREIGN KEY (`shop_discount_id`) REFERENCES `shop_discount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_discount_coupon__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_discount_coupon`
--

LOCK TABLES `shop_discount_coupon` WRITE;
/*!40000 ALTER TABLE `shop_discount_coupon` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_discount_coupon` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_discount_coupon` with 0 row(s)
--

--
-- Table structure for table `shop_order`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `cms_site_id` int(11) DEFAULT NULL,
  `shop_person_type_id` int(11) DEFAULT NULL,
  `shop_buyer_id` int(11) DEFAULT NULL,
  `paid_at` int(11) DEFAULT NULL,
  `canceled_at` int(11) DEFAULT NULL,
  `reason_canceled` varchar(255) DEFAULT NULL,
  `status_at` int(11) NOT NULL,
  `delivery_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `allow_delivery` varchar(1) NOT NULL DEFAULT 'N',
  `allow_delivery_at` int(11) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `currency_code` varchar(3) NOT NULL,
  `discount_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `shop_pay_system_id` int(11) DEFAULT NULL,
  `shop_delivery_id` int(11) DEFAULT NULL,
  `user_description` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `comments` text,
  `tax_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `locked_by` int(11) DEFAULT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `shop_affiliate_id` int(11) DEFAULT NULL,
  `delivery_doc_num` varchar(20) DEFAULT NULL,
  `delivery_doc_at` int(11) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `is_created` int(1) NOT NULL DEFAULT '0' COMMENT 'Заказ создан?',
  `shop_order_status_id` int(11) DEFAULT NULL,
  `is_allowed_payment` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `site_id` (`cms_site_id`),
  KEY `person_type_id` (`shop_person_type_id`),
  KEY `currency_code` (`currency_code`),
  KEY `pay_system_id` (`shop_pay_system_id`),
  KEY `locked_by` (`locked_by`),
  KEY `affiliate_id` (`shop_affiliate_id`),
  KEY `delivery_id` (`shop_delivery_id`),
  KEY `payed_at` (`paid_at`),
  KEY `shop_order__buyer_id` (`shop_buyer_id`),
  KEY `shop_order__is_created` (`is_created`),
  KEY `shop_order_status_id` (`shop_order_status_id`),
  CONSTRAINT `shop_order_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_order__locked_by` FOREIGN KEY (`locked_by`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `shop_order__shop_affiliate_id` FOREIGN KEY (`shop_affiliate_id`) REFERENCES `shop_affiliate` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order__shop_buyer_id` FOREIGN KEY (`shop_buyer_id`) REFERENCES `shop_buyer` (`id`),
  CONSTRAINT `shop_order__shop_delivery_id` FOREIGN KEY (`shop_delivery_id`) REFERENCES `shop_delivery` (`id`),
  CONSTRAINT `shop_order__shop_order_status_id` FOREIGN KEY (`shop_order_status_id`) REFERENCES `shop_order_status` (`id`),
  CONSTRAINT `shop_order__shop_pay_system_id` FOREIGN KEY (`shop_pay_system_id`) REFERENCES `shop_pay_system` (`id`),
  CONSTRAINT `shop_order__shop_person_type_id` FOREIGN KEY (`shop_person_type_id`) REFERENCES `shop_person_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_order` VALUES (1,1,1,1542640133,1549014862,1,1,NULL,NULL,NULL,NULL,1542640133,200.00,'N',NULL,1193.70,'RUB',52.30,NULL,5,NULL,NULL,NULL,0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL,'eAZLOGFzBcwe06A3k5SZ3cUR6cubtBtL',0,2,1);
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order` with 1 row(s)
--

--
-- Table structure for table `shop_order2discount_coupon`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order2discount_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `discount_coupon_id` int(11) NOT NULL,
  `order_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `discount_coupon_id` (`discount_coupon_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `shop_order2discount_coupon__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order2discount_coupon__discount_coupon_id` FOREIGN KEY (`discount_coupon_id`) REFERENCES `shop_discount_coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_order2discount_coupon__order_id` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_order2discount_coupon__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contact orders with discount coupons';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order2discount_coupon`
--

LOCK TABLES `shop_order2discount_coupon` WRITE;
/*!40000 ALTER TABLE `shop_order2discount_coupon` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_order2discount_coupon` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order2discount_coupon` with 0 row(s)
--

--
-- Table structure for table `shop_order_change`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_order_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_order_id` (`shop_order_id`),
  KEY `type` (`type`),
  CONSTRAINT `shop_order_change_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_change_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_change__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='История по заказу';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_change`
--

LOCK TABLES `shop_order_change` WRITE;
/*!40000 ALTER TABLE `shop_order_change` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_order_change` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order_change` with 0 row(s)
--

--
-- Table structure for table `shop_order_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_order_id` int(11) DEFAULT NULL,
  `shop_product_id` int(11) DEFAULT NULL,
  `shop_product_price_id` int(11) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `weight` decimal(18,2) DEFAULT NULL,
  `quantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `discount_amount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `discount_name` varchar(255) DEFAULT NULL,
  `discount_value` varchar(32) DEFAULT NULL,
  `vat_rate` decimal(18,2) NOT NULL DEFAULT '0.00',
  `reserve_quantity` double DEFAULT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `measure_name` varchar(50) DEFAULT NULL,
  `measure_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `order_id` (`shop_order_id`),
  KEY `product_id` (`shop_product_id`),
  KEY `product_price_id` (`shop_product_price_id`),
  KEY `currency_code` (`currency_code`),
  KEY `price` (`amount`),
  KEY `name` (`name`),
  KEY `measure_name` (`measure_name`),
  KEY `measure_code` (`measure_code`),
  CONSTRAINT `shop_basket_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_order_item__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_order_item__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_item__shop_product_price_id` FOREIGN KEY (`shop_product_price_id`) REFERENCES `shop_product_price` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=utf8 COMMENT='Позиции в корзине';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_item`
--

LOCK TABLES `shop_order_item` WRITE;
/*!40000 ALTER TABLE `shop_order_item` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_order_item` VALUES (769,1,1,1542640163,1549014851,1,12759,14389,496.85,'RUB',0.00,2.00,'Мужской зонт-трость','Основная цена',26.15,'Тестовая скидка','5 %',0.00,NULL,'{\"height\":0,\"width\":0,\"length\":0}','шт',796);
/*!40000 ALTER TABLE `shop_order_item` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order_item` with 1 row(s)
--

--
-- Table structure for table `shop_order_item_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_item_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_order_item_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_basket_id` (`shop_order_item_id`),
  KEY `name` (`name`),
  KEY `value` (`value`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  CONSTRAINT `shop_basket_props_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_basket_props_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_item_property__shop_order_item_id` FOREIGN KEY (`shop_order_item_id`) REFERENCES `shop_order_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Своуйства заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_item_property`
--

LOCK TABLES `shop_order_item_property` WRITE;
/*!40000 ALTER TABLE `shop_order_item_property` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_order_item_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order_item_property` with 0 row(s)
--

--
-- Table structure for table `shop_order_status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '100',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `priority` (`priority`),
  KEY `color` (`color`),
  CONSTRAINT `shop_order_status_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_order_status_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Статусы заказов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_status`
--

LOCK TABLES `shop_order_status` WRITE;
/*!40000 ALTER TABLE `shop_order_status` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_order_status` VALUES (1,NULL,NULL,NULL,NULL,'Выполнен','Заказ доставлен и оплачен',100,'green'),(2,NULL,1,NULL,1454613353,'Принят, ожидается оплата','Заказ принят, но пока не обрабатывается (например, заказ только что создан или ожидается оплата заказа)',200,'orange');
/*!40000 ALTER TABLE `shop_order_status` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_order_status` with 2 row(s)
--

--
-- Table structure for table `shop_pay_system`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_pay_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `description` text,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `cms_site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `shop_pay_system__cms_site_id` (`cms_site_id`),
  CONSTRAINT `shop_pay_system__cms_site_id` FOREIGN KEY (`cms_site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_pay_system_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_pay_system_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Платежные системы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pay_system`
--

LOCK TABLES `shop_pay_system` WRITE;
/*!40000 ALTER TABLE `shop_pay_system` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_pay_system` VALUES (1,NULL,1,NULL,1444657348,'Наличный расчет',50,'Y','','','a:10:{s:4:\"code\";s:1:\"S\";s:4:\"name\";s:10:\"Текст\";s:12:\"fieldElement\";s:8:\"textarea\";s:4:\"rows\";s:2:\"50\";s:8:\"multiple\";s:1:\"N\";s:5:\"model\";N;s:8:\"property\";N;s:10:\"activeForm\";N;s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}',NULL),(2,NULL,NULL,NULL,NULL,'Кредитная карта',60,'N',NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,'Оплата в платежной системе Web Money',70,'N',NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,'Оплата в платежной системе Яндекс.Деньги',80,'N',NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,'Сбербанк',90,'N',NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,'Счет',100,'N',NULL,NULL,NULL,NULL),(7,1,1,1444133170,1445116135,'Робокасса',100,'N','','skeeks\\cms\\shop\\paySystems\\RobocassaPaySystem','a:6:{s:7:\"baseUrl\";s:35:\"http://test.robokassa.ru/Index.aspx\";s:14:\"sMerchantLogin\";s:10:\"DigestShop\";s:14:\"sMerchantPass1\";s:11:\"Asdasdfsds4\";s:14:\"sMerchantPass2\";s:16:\"Asdasdfsds445asd\";s:17:\"defaultAttributes\";a:6:{s:7:\"baseUrl\";s:35:\"http://test.robokassa.ru/Index.aspx\";s:14:\"sMerchantLogin\";s:0:\"\";s:14:\"sMerchantPass1\";s:0:\"\";s:14:\"sMerchantPass2\";s:0:\"\";s:17:\"defaultAttributes\";a:0:{}s:9:\"namespace\";N;}s:9:\"namespace\";N;}',NULL),(8,1,1,1446565412,1460534800,'Расчет  банковской картой',55,'N','',NULL,'',NULL),(9,1,1,1446565437,1460534806,'безналичный расчет (по счету)',59,'N','',NULL,'',NULL);
/*!40000 ALTER TABLE `shop_pay_system` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_pay_system` with 9 row(s)
--

--
-- Table structure for table `shop_pay_system_person_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_pay_system_person_type` (
  `pay_system_id` int(11) NOT NULL,
  `person_type_id` int(11) NOT NULL,
  UNIQUE KEY `pay_system_id__person_type_id` (`pay_system_id`,`person_type_id`),
  KEY `shop_pay_system_person_type_person_type_id` (`person_type_id`),
  CONSTRAINT `shop_pay_system_person_type_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_pay_system_person_type_shop_pay_system` FOREIGN KEY (`pay_system_id`) REFERENCES `shop_pay_system` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь платежных систем с плательщиками';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_pay_system_person_type`
--

LOCK TABLES `shop_pay_system_person_type` WRITE;
/*!40000 ALTER TABLE `shop_pay_system_person_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_pay_system_person_type` VALUES (1,1),(7,1),(8,1),(9,1),(8,2),(9,2);
/*!40000 ALTER TABLE `shop_pay_system_person_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_pay_system_person_type` with 6 row(s)
--

--
-- Table structure for table `shop_payment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_buyer_id` int(11) NOT NULL COMMENT 'Покупатель',
  `shop_order_id` int(11) NOT NULL COMMENT 'Заказ',
  `shop_pay_system_id` int(11) NOT NULL COMMENT 'Платежная система',
  `is_debit` int(1) NOT NULL DEFAULT '1' COMMENT 'Дебет? (иначе кредит)',
  `paid_at` int(11) DEFAULT NULL COMMENT 'Дата оплаты',
  `amount` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency_code` varchar(3) NOT NULL DEFAULT 'RUB',
  `comment` text,
  `external_name` varchar(255) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  `external_data` text,
  PRIMARY KEY (`id`),
  KEY `shop_payment__updated_by` (`updated_by`),
  KEY `shop_payment__created_by` (`created_by`),
  KEY `shop_payment__created_at` (`created_at`),
  KEY `shop_payment__updated_at` (`updated_at`),
  KEY `shop_payment__is_debit` (`is_debit`),
  KEY `shop_payment__paid_at` (`paid_at`),
  KEY `shop_payment__shop_buyer_id` (`shop_buyer_id`),
  KEY `shop_payment__shop_order_id` (`shop_order_id`),
  KEY `shop_payment__shop_pay_system_id` (`shop_pay_system_id`),
  KEY `shop_payment__currency_code` (`currency_code`),
  CONSTRAINT `shop_payment__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_payment__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_payment__shop_buyer_id` FOREIGN KEY (`shop_buyer_id`) REFERENCES `shop_buyer` (`id`),
  CONSTRAINT `shop_payment__shop_order_id` FOREIGN KEY (`shop_order_id`) REFERENCES `shop_order` (`id`),
  CONSTRAINT `shop_payment__shop_pay_system_id` FOREIGN KEY (`shop_pay_system_id`) REFERENCES `shop_pay_system` (`id`),
  CONSTRAINT `shop_payment__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Платежи покупателей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_payment`
--

LOCK TABLES `shop_payment` WRITE;
/*!40000 ALTER TABLE `shop_payment` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_payment` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_payment` with 0 row(s)
--

--
-- Table structure for table `shop_person_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  CONSTRAINT `shop_person_type_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Типы плательщиков';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type`
--

LOCK TABLES `shop_person_type` WRITE;
/*!40000 ALTER TABLE `shop_person_type` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_person_type` VALUES (1,NULL,NULL,NULL,NULL,'Физическое лицо',100,'Y'),(2,NULL,1,NULL,1445548250,'Юридическое лицо',200,'N');
/*!40000 ALTER TABLE `shop_person_type` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_person_type` with 2 row(s)
--

--
-- Table structure for table `shop_person_type_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `priority` int(11) NOT NULL DEFAULT '500',
  `property_type` char(1) NOT NULL DEFAULT 'S',
  `multiple` char(1) NOT NULL DEFAULT 'N',
  `is_required` char(1) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `component_settings` text,
  `hint` varchar(255) DEFAULT NULL,
  `shop_person_type_id` int(11) NOT NULL,
  `is_order_location_delivery` varchar(255) NOT NULL DEFAULT 'N',
  `is_order_location_tax` varchar(255) NOT NULL DEFAULT 'N',
  `is_order_postcode` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_email` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_phone` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_username` varchar(255) NOT NULL DEFAULT 'N',
  `is_user_name` varchar(255) NOT NULL DEFAULT 'N',
  `is_buyer_name` varchar(255) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_person_type_id_2` (`shop_person_type_id`,`code`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `priority` (`priority`),
  KEY `property_type` (`property_type`),
  KEY `multiple` (`multiple`),
  KEY `is_required` (`is_required`),
  KEY `component` (`component`),
  KEY `hint` (`hint`),
  KEY `shop_person_type_id` (`shop_person_type_id`),
  KEY `is_order_location_delivery` (`is_order_location_delivery`),
  KEY `is_order_location_tax` (`is_order_location_tax`),
  KEY `is_order_postcode` (`is_order_postcode`),
  KEY `is_user_email` (`is_user_email`),
  KEY `is_user_phone` (`is_user_phone`),
  KEY `is_user_username` (`is_user_username`),
  KEY `is_user_name` (`is_user_name`),
  KEY `is_buyer_name` (`is_buyer_name`),
  CONSTRAINT `shop_person_type_property_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property__shop_person_type_id` FOREIGN KEY (`shop_person_type_id`) REFERENCES `shop_person_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Свойства типов пользователей';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_property`
--

LOCK TABLES `shop_person_type_property` WRITE;
/*!40000 ALTER TABLE `shop_person_type_property` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_person_type_property` VALUES (1,1,1,1443621164,1508388789,'Email','email','Y',3000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',1,'N','N','N','Y','N','N','N','N'),(2,1,1,1443621752,1508388789,'Имя','name','Y',1000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',1,'N','N','N','N','N','N','Y','Y'),(3,1,1,1443621812,1508388789,'Адрес','address','Y',4000,'S','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',1,'N','N','N','N','N','N','N','N'),(4,1,1,1445556965,1508388789,'Телефон','phone','Y',2000,'S','N','N','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeText','','',1,'N','N','N','N','Y','N','N','N'),(5,1,1,1508388782,1508388789,'Согласен на обработку персональных данных','propertyEbb6cd17ed0c1a84c0e6f8bc154c2f3f','Y',5000,'B','N','Y','skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeBool','a:8:{s:4:\"code\";s:1:\"B\";s:4:\"name\";s:11:\"Да/Нет\";s:13:\"default_value\";s:0:\"\";s:12:\"fieldElement\";s:8:\"checkbox\";s:4:\"rows\";i:5;s:2:\"id\";s:59:\"skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeBool\";s:8:\"property\";a:18:{s:6:\"active\";s:1:\"Y\";s:8:\"priority\";s:3:\"500\";s:13:\"property_type\";s:1:\"S\";s:8:\"multiple\";s:1:\"N\";s:26:\"is_order_location_delivery\";s:1:\"N\";s:21:\"is_order_location_tax\";s:1:\"N\";s:17:\"is_order_postcode\";s:1:\"N\";s:13:\"is_user_email\";s:1:\"N\";s:13:\"is_user_phone\";s:1:\"N\";s:16:\"is_user_username\";s:1:\"N\";s:12:\"is_user_name\";s:1:\"N\";s:13:\"is_buyer_name\";s:1:\"N\";s:11:\"is_required\";s:1:\"Y\";s:4:\"name\";s:78:\"Согласен на обработку персональных данных\";s:4:\"code\";s:0:\"\";s:9:\"component\";s:59:\"skeeks\\cms\\relatedProperties\\propertyTypes\\PropertyTypeBool\";s:4:\"hint\";s:0:\"\";s:19:\"shop_person_type_id\";s:1:\"1\";}s:10:\"activeForm\";N;}','',1,'N','N','N','N','N','N','N','N');
/*!40000 ALTER TABLE `shop_person_type_property` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_person_type_property` with 5 row(s)
--

--
-- Table structure for table `shop_person_type_property_enum`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_property_enum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `def` char(1) NOT NULL DEFAULT 'N',
  `code` varchar(32) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '500',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `property_id` (`property_id`),
  KEY `def` (`def`),
  KEY `code` (`code`),
  KEY `priority` (`priority`),
  KEY `value` (`value`),
  CONSTRAINT `shop_person_type_property_enum_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_person_type_property_enum_property_id` FOREIGN KEY (`property_id`) REFERENCES `shop_person_type_property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_person_type_property_enum_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Справочник значений свойств типа список';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_property_enum`
--

LOCK TABLES `shop_person_type_property_enum` WRITE;
/*!40000 ALTER TABLE `shop_person_type_property_enum` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_person_type_property_enum` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_person_type_property_enum` with 0 row(s)
--

--
-- Table structure for table `shop_person_type_site`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_person_type_site` (
  `person_type_id` int(11) NOT NULL,
  `site_code` char(15) NOT NULL,
  UNIQUE KEY `site_code__person_type_id` (`person_type_id`,`site_code`),
  KEY `shop_person_type_site_site_code` (`site_code`),
  CONSTRAINT `shop_person_type_site_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_person_type_site_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Связь плательщиков с сайтами';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_person_type_site`
--

LOCK TABLES `shop_person_type_site` WRITE;
/*!40000 ALTER TABLE `shop_person_type_site` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_person_type_site` VALUES (1,'s1'),(2,'s1');
/*!40000 ALTER TABLE `shop_person_type_site` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_person_type_site` with 2 row(s)
--

--
-- Table structure for table `shop_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `weight` double NOT NULL DEFAULT '0',
  `recur_scheme_length` int(11) DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `vat_included` varchar(1) NOT NULL DEFAULT 'Y',
  `quantity_reserved` double DEFAULT '0',
  `measure_code` varchar(3) DEFAULT NULL,
  `measure_ratio` double NOT NULL DEFAULT '1',
  `width` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `product_type` varchar(10) NOT NULL DEFAULT 'simple',
  `shop_supplier_id` int(11) DEFAULT NULL COMMENT 'Поставщик',
  `supplier_external_id` varchar(255) DEFAULT NULL COMMENT 'ID в системе поставщика',
  `supplier_external_jsondata` text COMMENT 'Данные по товару от поставщика',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_product__supplier_external` (`shop_supplier_id`,`supplier_external_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `quantity` (`quantity`),
  KEY `weight` (`weight`),
  KEY `recur_scheme_length` (`recur_scheme_length`),
  KEY `vat_included` (`vat_included`),
  KEY `quantity_reserved` (`quantity_reserved`),
  KEY `measure_id` (`measure_code`),
  KEY `width` (`width`),
  KEY `length` (`length`),
  KEY `height` (`height`),
  KEY `measure_ratio` (`measure_ratio`),
  KEY `shop_product_shop_vat` (`vat_id`),
  KEY `product_type` (`product_type`),
  CONSTRAINT `shop_product__shop_supplier_id` FOREIGN KEY (`shop_supplier_id`) REFERENCES `shop_supplier` (`id`),
  CONSTRAINT `shop_product_cms_content_element` FOREIGN KEY (`id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_shop_vat` FOREIGN KEY (`vat_id`) REFERENCES `shop_vat` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12761 DEFAULT CHARSET=utf8 COMMENT='Товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_product` VALUES (311,NULL,NULL,1457020639,1457020639,NULL,0,NULL,NULL,'Y',0,'796',1,0,0,0,'simple',NULL,NULL,NULL),(313,NULL,NULL,1457020640,1457020640,NULL,0,NULL,NULL,'Y',0,'796',1,0,0,0,'simple',NULL,NULL,NULL),(12759,1,1,1465241932,1465241997,1,0,NULL,NULL,'Y',0,'796',1,0,0,0,'simple',NULL,NULL,NULL),(12760,1,1,1465245515,1488275176,1,0,NULL,NULL,'Y',0,'796',1,0,0,0,'simple',NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_product` with 4 row(s)
--

--
-- Table structure for table `shop_product_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `type_price_id` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `quantity_from` int(11) DEFAULT NULL,
  `quantity_to` int(11) DEFAULT NULL,
  `tmp_id` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_product_priceType` (`product_id`,`type_price_id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `quantity_from` (`quantity_from`),
  KEY `quantity_to` (`quantity_to`),
  KEY `tmp_id` (`tmp_id`),
  KEY `shop_product_price_product_id` (`product_id`),
  KEY `shop_product_price_shop_type_price` (`type_price_id`),
  CONSTRAINT `shop_product_currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`),
  CONSTRAINT `shop_product_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_price_shop_type_price` FOREIGN KEY (`type_price_id`) REFERENCES `shop_type_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14393 DEFAULT CHARSET=utf8 COMMENT='Цены товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_price`
--

LOCK TABLES `shop_product_price` WRITE;
/*!40000 ALTER TABLE `shop_product_price` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_product_price` VALUES (383,NULL,NULL,1457020639,1457020639,311,4,0.00,'RUB',NULL,NULL,NULL),(385,NULL,NULL,1457020640,1457020640,313,4,0.00,'RUB',NULL,NULL,NULL),(14389,1,1,1465241932,1465241997,12759,4,523.00,'RUB',NULL,NULL,NULL),(14390,1,1,1465241996,1465241996,12759,5,0.00,'RUB',NULL,NULL,NULL),(14391,1,1,1465245515,1465245588,12760,4,1000.00,'RUB',NULL,NULL,NULL),(14392,1,1,1465245559,1465245559,12760,5,0.00,'RUB',NULL,NULL,NULL);
/*!40000 ALTER TABLE `shop_product_price` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_product_price` with 6 row(s)
--

--
-- Table structure for table `shop_product_price_change`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_price_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_product_price_id` int(11) DEFAULT NULL,
  `price` decimal(18,2) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `quantity_from` int(11) DEFAULT NULL,
  `quantity_to` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `price` (`price`),
  KEY `currency_code` (`currency_code`),
  KEY `quantity_from` (`quantity_from`),
  KEY `quantity_to` (`quantity_to`),
  KEY `shop_product_price_id` (`shop_product_price_id`),
  CONSTRAINT `shop_product_price_change_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_change_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_price_change__shop_product_price_id` FOREIGN KEY (`shop_product_price_id`) REFERENCES `shop_product_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product__currency_code` FOREIGN KEY (`currency_code`) REFERENCES `money_currency` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Изменение цены товара';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_price_change`
--

LOCK TABLES `shop_product_price_change` WRITE;
/*!40000 ALTER TABLE `shop_product_price_change` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_product_price_change` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_product_price_change` with 0 row(s)
--

--
-- Table structure for table `shop_product_quantity_change`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_quantity_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_product_id` int(11) NOT NULL,
  `quantity` double NOT NULL DEFAULT '0',
  `quantity_reserved` double NOT NULL DEFAULT '0',
  `measure_code` varchar(3) DEFAULT NULL,
  `measure_ratio` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `quantity` (`quantity`),
  KEY `quantity_reserved` (`quantity_reserved`),
  KEY `measure_ratio` (`measure_ratio`),
  KEY `measure_id` (`measure_code`),
  KEY `shop_product_quantity_change__shop_product_id` (`shop_product_id`),
  CONSTRAINT `shop_product_quantity_change__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_product_quantity_change__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_product_quantity_change__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Changes in the quantity of products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_quantity_change`
--

LOCK TABLES `shop_product_quantity_change` WRITE;
/*!40000 ALTER TABLE `shop_product_quantity_change` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_product_quantity_change` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_product_quantity_change` with 0 row(s)
--

--
-- Table structure for table `shop_quantity_notice_email`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_quantity_notice_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_product_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `is_notified` int(11) NOT NULL DEFAULT '0',
  `notified_at` int(11) DEFAULT NULL,
  `shop_fuser_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_product_id` (`shop_product_id`),
  KEY `email` (`email`),
  KEY `name` (`name`),
  KEY `shop_fuser_id` (`shop_fuser_id`),
  KEY `is_notified` (`is_notified`),
  KEY `notified_at` (`notified_at`),
  CONSTRAINT `shop_quantity_notice_email__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_quantity_notice_email__shop_fuser_id` FOREIGN KEY (`shop_fuser_id`) REFERENCES `shop_cart` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_quantity_notice_email__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_quantity_notice_email__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Subscribers to the notice of receipt product';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_quantity_notice_email`
--

LOCK TABLES `shop_quantity_notice_email` WRITE;
/*!40000 ALTER TABLE `shop_quantity_notice_email` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_quantity_notice_email` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_quantity_notice_email` with 0 row(s)
--

--
-- Table structure for table `shop_store`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_supplier_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `cms_image_id` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `shop_store__updated_by` (`updated_by`),
  KEY `shop_store__created_by` (`created_by`),
  KEY `shop_store__created_at` (`created_at`),
  KEY `shop_store__updated_at` (`updated_at`),
  KEY `shop_store__name` (`name`),
  KEY `shop_store__is_active` (`is_active`),
  KEY `shop_store__cms_image_id` (`cms_image_id`),
  KEY `shop_store__shop_supplier_id` (`shop_supplier_id`),
  CONSTRAINT `shop_store__shop_supplier_id` FOREIGN KEY (`shop_supplier_id`) REFERENCES `shop_supplier` (`id`),
  CONSTRAINT `shop_store__cms_image_id` FOREIGN KEY (`cms_image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Склады';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_store`
--

LOCK TABLES `shop_store` WRITE;
/*!40000 ALTER TABLE `shop_store` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_store` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_store` with 0 row(s)
--

--
-- Table structure for table `shop_store_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_store_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_store_id` int(11) NOT NULL COMMENT 'Склад',
  `shop_product_id` int(11) NOT NULL COMMENT 'Карточка товара',
  `quantity` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_store_product__shop_store2product` (`shop_store_id`,`shop_product_id`),
  KEY `shop_store_product__updated_by` (`updated_by`),
  KEY `shop_store_product__created_by` (`created_by`),
  KEY `shop_store_product__created_at` (`created_at`),
  KEY `shop_store_product__updated_at` (`updated_at`),
  KEY `shop_store_product__shop_product_id` (`shop_product_id`),
  CONSTRAINT `shop_store_product__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_store_product__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_store_product__shop_store_id` FOREIGN KEY (`shop_store_id`) REFERENCES `shop_store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_store_product__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Складской учет';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_store_product`
--

LOCK TABLES `shop_store_product` WRITE;
/*!40000 ALTER TABLE `shop_store_product` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_store_product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_store_product` with 0 row(s)
--

--
-- Table structure for table `shop_supplier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `cms_image_id` int(11) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `shop_supplier__updated_by` (`updated_by`),
  KEY `shop_supplier__created_by` (`created_by`),
  KEY `shop_supplier__created_at` (`created_at`),
  KEY `shop_supplier__updated_at` (`updated_at`),
  KEY `shop_supplier__name` (`name`),
  KEY `shop_supplier__is_active` (`is_active`),
  KEY `shop_supplier__cms_image_id` (`cms_image_id`),
  CONSTRAINT `shop_supplier__cms_image_id` FOREIGN KEY (`cms_image_id`) REFERENCES `cms_storage_file` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_supplier__created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_supplier__updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Поставщики товаров';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_supplier`
--

LOCK TABLES `shop_supplier` WRITE;
/*!40000 ALTER TABLE `shop_supplier` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_supplier` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_supplier` with 0 row(s)
--

--
-- Table structure for table `shop_tax`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `code` varchar(50) NOT NULL,
  `site_code` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `site_code` (`site_code`),
  CONSTRAINT `shop_tax_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_site_code` FOREIGN KEY (`site_code`) REFERENCES `cms_site` (`code`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Налоги';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tax`
--

LOCK TABLES `shop_tax` WRITE;
/*!40000 ALTER TABLE `shop_tax` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_tax` VALUES (1,NULL,NULL,NULL,NULL,'НДС',NULL,'NDS','s1');
/*!40000 ALTER TABLE `shop_tax` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_tax` with 1 row(s)
--

--
-- Table structure for table `shop_tax_rate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  `person_type_id` int(11) NOT NULL,
  `value` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `currency` varchar(3) DEFAULT NULL,
  `is_percent` varchar(1) NOT NULL DEFAULT 'Y',
  `is_in_price` varchar(1) NOT NULL DEFAULT 'N',
  `priority` int(1) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `tax_id` (`tax_id`),
  KEY `person_type_id` (`person_type_id`),
  KEY `value` (`value`),
  KEY `currency` (`currency`),
  KEY `is_percent` (`is_percent`),
  KEY `is_in_price` (`is_in_price`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  CONSTRAINT `shop_tax_rate_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_tax_rate_person_type_id` FOREIGN KEY (`person_type_id`) REFERENCES `shop_person_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_tax_rate_tax_id` FOREIGN KEY (`tax_id`) REFERENCES `shop_tax` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_tax_rate_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ставки налогов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tax_rate`
--

LOCK TABLES `shop_tax_rate` WRITE;
/*!40000 ALTER TABLE `shop_tax_rate` DISABLE KEYS */;
SET autocommit=0;
/*!40000 ALTER TABLE `shop_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_tax_rate` with 0 row(s)
--

--
-- Table structure for table `shop_type_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_type_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `priority` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `name` (`name`),
  KEY `priority` (`priority`),
  CONSTRAINT `shop_type_price_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_type_price_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Типы цен';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_type_price`
--

LOCK TABLES `shop_type_price` WRITE;
/*!40000 ALTER TABLE `shop_type_price` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_type_price` VALUES (4,1,1,1445345660,1445345660,'Основная цена','',100),(5,1,1,1449327626,1449327626,'Цена со скидкой','',100);
/*!40000 ALTER TABLE `shop_type_price` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_type_price` with 2 row(s)
--

--
-- Table structure for table `shop_vat`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_vat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '100',
  `active` varchar(1) NOT NULL DEFAULT 'Y',
  `rate` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `priority` (`priority`),
  KEY `active` (`active`),
  KEY `name` (`name`),
  KEY `rate` (`rate`),
  CONSTRAINT `shop_vat_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_vat_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Ставки НДС';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_vat`
--

LOCK TABLES `shop_vat` WRITE;
/*!40000 ALTER TABLE `shop_vat` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_vat` VALUES (1,NULL,NULL,NULL,NULL,'Без НДС',100,'Y',0.00),(2,NULL,NULL,NULL,NULL,'НДС 18%',200,'Y',18.00);
/*!40000 ALTER TABLE `shop_vat` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_vat` with 2 row(s)
--

--
-- Table structure for table `shop_viewed_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_viewed_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `shop_fuser_id` int(11) NOT NULL,
  `shop_product_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `updated_by` (`updated_by`),
  KEY `created_by` (`created_by`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `shop_fuser_id` (`shop_fuser_id`),
  KEY `shop_product_id` (`shop_product_id`),
  KEY `site_id` (`site_id`),
  CONSTRAINT `shop_viewed_product_created_by` FOREIGN KEY (`created_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_viewed_product_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `cms_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `shop_viewed_product__shop_fuser_id` FOREIGN KEY (`shop_fuser_id`) REFERENCES `shop_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__shop_product_id` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__shop_product_id_c` FOREIGN KEY (`shop_product_id`) REFERENCES `cms_content_element` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `shop_viewed_product__site_id` FOREIGN KEY (`site_id`) REFERENCES `cms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29454 DEFAULT CHARSET=utf8 COMMENT='Ранее просмотренные товары';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_viewed_product`
--

LOCK TABLES `shop_viewed_product` WRITE;
/*!40000 ALTER TABLE `shop_viewed_product` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `shop_viewed_product` VALUES (29427,1,1,1542640158,1542640158,38936,12759,1,'Мужской зонт-трость',NULL),(29428,1,1,1542640164,1542640164,38936,12759,1,'Мужской зонт-трость',NULL),(29429,1,1,1542640256,1542640256,38936,12759,1,'Мужской зонт-трость',NULL),(29430,1,1,1542640289,1542640289,38936,12760,1,'Женский зонт',NULL),(29431,1,1,1542640516,1542640516,38936,12760,1,'Женский зонт',NULL),(29432,1,1,1542640765,1542640765,38936,12760,1,'Женский зонт',NULL),(29433,1,1,1542640779,1542640779,38936,12760,1,'Женский зонт',NULL),(29434,1,1,1542640973,1542640973,38936,12760,1,'Женский зонт',NULL),(29435,1,1,1542641067,1542641067,38936,12760,1,'Женский зонт',NULL),(29436,1,1,1542641067,1542641067,38936,12760,1,'Женский зонт',NULL),(29437,1,1,1542641068,1542641068,38936,12760,1,'Женский зонт',NULL),(29438,1,1,1542641068,1542641068,38936,12760,1,'Женский зонт',NULL),(29439,1,1,1542641085,1542641085,38936,12760,1,'Женский зонт',NULL),(29440,1,1,1542641085,1542641085,38936,12760,1,'Женский зонт',NULL),(29441,1,1,1542641087,1542641087,38936,12760,1,'Женский зонт',NULL),(29442,1,1,1542641088,1542641088,38936,12760,1,'Женский зонт',NULL),(29443,1,1,1542641106,1542641106,38936,12760,1,'Женский зонт',NULL),(29444,1,1,1542641150,1542641150,38936,12760,1,'Женский зонт',NULL),(29445,1,1,1542641158,1542641158,38936,12760,1,'Женский зонт',NULL),(29446,1,1,1542645542,1542645542,38936,12760,1,'Женский зонт',NULL),(29447,1,1,1542645562,1542645562,38936,12760,1,'Женский зонт',NULL),(29448,1,1,1549014783,1549014783,38936,12760,1,'Женский зонт',NULL),(29449,1,1,1549014787,1549014787,38936,12760,1,'Женский зонт',NULL),(29450,1,1,1549014800,1549014800,38936,12760,1,'Женский зонт',NULL),(29451,1,1,1549014807,1549014807,38936,12760,1,'Женский зонт',NULL),(29452,1,1,1549014928,1549014928,38936,12760,1,'Женский зонт',NULL),(29453,1,1,1551870726,1551870726,38936,12760,1,'Женский зонт',NULL);
/*!40000 ALTER TABLE `shop_viewed_product` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `shop_viewed_product` with 27 row(s)
--

--
-- Table structure for table `source_message`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_message`
--

LOCK TABLES `source_message` WRITE;
/*!40000 ALTER TABLE `source_message` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `source_message` VALUES (1,'app','Superuser'),(2,'app','Unauthorized user'),(3,'app','Admin'),(4,'app','Manager (access to the administration)'),(5,'app','Editor (access to the administration)'),(6,'app','Registered user'),(7,'app','Confirmed user'),(8,'app','Access to system administration'),(9,'app','Access to the site control panel'),(10,'app','The ability to create records'),(11,'app','The ability to edit view files'),(12,'app','Updating data records'),(13,'app','Updating data own records'),(14,'app','Updating additional data records'),(15,'app','Updating additional data own records'),(16,'app','Deleting records'),(17,'app','Deleting own records'),(18,'app','Access to personal files'),(19,'app','Access to the public files'),(20,'app','Access to all files'),(21,'app','Content'),(22,'app','Sections'),(23,'app','File manager'),(24,'app','File storage'),(25,'app','Settings'),(26,'app','Product settings'),(27,'app','Sites'),(28,'app','Languages'),(29,'app','Database of translations'),(30,'app','Section markers'),(31,'app','Server file storage'),(32,'app','Settings sections'),(33,'app','Content settings'),(34,'app','Module settings'),(35,'app','Agents'),(36,'app','Users and Access'),(37,'app','User management'),(38,'app','User properties'),(39,'app','The base of {email} addresses'),(40,'app','Base phones'),(41,'app','Social profiles'),(42,'app','Roles'),(43,'app','Privileges'),(44,'app','Searching'),(45,'app','Statistic'),(46,'app','Jump list'),(47,'app','Phrase list'),(48,'app','Instruments'),(49,'app','Checking system'),(50,'app','Information'),(51,'app','Sending {email}'),(52,'app','Clearing temporary data'),(53,'app','Work to database'),(54,'app','{ssh} console'),(55,'app','Code generator'),(56,'app','Marketplace'),(57,'app','Catalog'),(58,'app','Installed'),(59,'app','Install{s}Delete'),(60,'app','Updated platforms'),(61,'app','Additionally'),(62,'app','Checking permission'),(63,'app','Checking role'),(64,'skeeks/shop/app','Account_customer'),(65,'skeeks/shop/app','VAT_rates'),(66,'app','Управление привилегиями'),(67,'app','Job to database'),(68,'app','Выберите опцию'),(69,'app','Выберите несколько опций'),(70,'app','Результатов не найдено'),(71,'app','Информация'),(72,'skeeks/shop/app','Person Type ID'),(73,'skeeks/shop/app','Оплачен'),(74,'skeeks/shop/app','Payed At'),(75,'skeeks/shop/app','Emp Payed ID'),(76,'skeeks/shop/app','Canceled At'),(77,'skeeks/shop/app','Emp Canceled ID'),(78,'skeeks/shop/app','Status At'),(79,'skeeks/shop/app','Emp Status ID'),(80,'skeeks/shop/app','Price Delivery'),(81,'skeeks/shop/app','Allow Delivery At'),(82,'skeeks/shop/app','Emp Allow Delivery ID'),(83,'skeeks/shop/app','Discount Value'),(84,'skeeks/shop/app','Pay System ID'),(85,'skeeks/shop/app','Delivery'),(86,'skeeks/shop/app','User Description'),(87,'skeeks/shop/app','Additional Info'),(88,'skeeks/shop/app','Ps Status'),(89,'skeeks/shop/app','Ps Status Code'),(90,'skeeks/shop/app','Ps Status Description'),(91,'skeeks/shop/app','Ps Status Message'),(92,'skeeks/shop/app','Ps Sum'),(93,'skeeks/shop/app','Ps Currency Code'),(94,'skeeks/shop/app','Ps Response At'),(95,'skeeks/shop/app','Tax Value'),(96,'skeeks/shop/app','Stat Gid'),(97,'skeeks/shop/app','Sum Paid'),(98,'skeeks/shop/app','Recuring ID'),(99,'skeeks/shop/app','Locked By'),(100,'skeeks/shop/app','Locked At'),(101,'skeeks/shop/app','Recount Flag'),(102,'skeeks/shop/app','Affiliate ID'),(103,'skeeks/shop/app','Delivery Doc Num'),(104,'skeeks/shop/app','Delivery Doc At'),(105,'skeeks/shop/app','Update 1c'),(106,'skeeks/shop/app','Deducted'),(107,'skeeks/shop/app','Deducted At'),(108,'skeeks/shop/app','Emp Deducted ID'),(109,'skeeks/shop/app','Reason Undo Deducted'),(110,'skeeks/shop/app','Marked'),(111,'skeeks/shop/app','Marked At'),(112,'skeeks/shop/app','Emp Marked ID'),(113,'skeeks/shop/app','Reason Marked'),(114,'skeeks/shop/app','Reserved'),(115,'skeeks/shop/app','Store ID'),(116,'skeeks/shop/app','Order Topic'),(117,'skeeks/shop/app','Responsible ID'),(118,'skeeks/shop/app','Pay Before At'),(119,'skeeks/shop/app','Account ID'),(120,'skeeks/shop/app','Bill At'),(121,'skeeks/shop/app','Tracking Number'),(122,'skeeks/shop/app','Xml ID'),(123,'skeeks/shop/app','Id 1c'),(124,'skeeks/shop/app','Version 1c'),(125,'skeeks/shop/app','Version'),(126,'skeeks/shop/app','External Order'),(127,'app','да'),(128,'app','нет'),(129,'app','ID'),(130,'app','Show Counter'),(131,'app','Show Counter Start'),(132,'app','Description Short Type'),(133,'app','Description Full Type'),(134,'app','Home'),(135,'app','Checkbox List'),(136,'app','Email'),(137,'skeeks/shop/app','Fuser ID'),(138,'skeeks/shop/app','Order ID'),(139,'skeeks/shop/app','Product Price ID'),(140,'skeeks/shop/app','Weight'),(141,'skeeks/shop/app','Delay'),(142,'skeeks/shop/app','Can Buy'),(143,'skeeks/shop/app','Callback Func'),(144,'skeeks/shop/app','Order Callback Func'),(145,'skeeks/shop/app','Detail Page Url'),(146,'skeeks/shop/app','Discount Price'),(147,'skeeks/shop/app','Cancel Callback Func'),(148,'skeeks/shop/app','Pay Callback Func'),(149,'skeeks/shop/app','Catalog Xml ID'),(150,'skeeks/shop/app','Product Xml ID'),(151,'skeeks/shop/app','Discount Name'),(152,'skeeks/shop/app','Discount Coupon'),(153,'skeeks/shop/app','Vat Rate'),(154,'skeeks/shop/app','Subscribe'),(155,'skeeks/shop/app','Barcode Multi'),(156,'skeeks/shop/app','Reserve Quantity'),(157,'skeeks/shop/app','Custom Price'),(158,'skeeks/shop/app','Dimensions'),(159,'skeeks/shop/app','Type'),(160,'skeeks/shop/app','Set Parent ID'),(161,'skeeks/shop/app','Measure Code'),(162,'skeeks/shop/app','Recommendation'),(163,'skeeks/shop/app','Транзакции по заказу'),(164,'skeeks/shop/app','Сумма'),(165,'app','Shop Order ID'),(166,'app','Статус изменен на: \"{status}\"'),(167,'app','Заказ отменен. Причина: \"{reason_canceled}\"'),(168,'app','Заказ  создан'),(169,'skeeks/shop/app','Cms User ID'),(170,'skeeks/shop/app','Shop Order ID'),(171,'skeeks/shop/app','Debit'),(172,'skeeks/shop/app','Оплата заказа'),(173,'skeeks/shop/app','Внесение денег'),(174,'app','Скрытое поле'),(175,'app','Отправить'),(176,'app','Время публикации'),(177,'app','Элемент'),(178,'app','Тип контента'),(179,'app','Достоинства'),(180,'app','Недостатки'),(181,'app','Комментарий'),(182,'app','Ip'),(183,'app','Page Url'),(184,'app','Data Server'),(185,'app','Data Session'),(186,'app','Data Cookie'),(187,'app','Data Request'),(188,'app','Сайт'),(189,'app','Имя'),(190,'app','Когда обратали'),(191,'app','Кто обработал'),(192,'app','Добавить отзыв'),(193,'app','Auth Key'),(194,'app','Password Hash'),(195,'app','Password Reset Token'),(196,'app','Группы'),(197,'app','Выберите профиль покупателя'),(198,'app','The current version {cms} '),(199,'app','Способ оплаты'),(200,'skeeks/shop/app','Additional'),(201,'skeeks/shop/app','Site ID'),(202,'skeeks/shop/app','Buyer ID'),(203,'app','Toggle Dropdow'),(204,'app','SEO'),(205,'skeeks/shop/app','Shop Fuser ID'),(206,'skeeks/shop/app','Shop Product ID'),(207,'skeeks/shop/app','Url'),(208,'skeeks/shop/app','Price Type'),(209,'skeeks/shop/app','Recur Scheme Length'),(210,'skeeks/shop/app','Recur Scheme Type'),(211,'skeeks/shop/app','Trial Price ID'),(212,'skeeks/shop/app','Without Order'),(213,'skeeks/shop/app','Select Best Price'),(214,'skeeks/shop/app','Tmp ID'),(215,'skeeks/shop/app','Allow subscription without explanation'),(216,'app','Shop Product Price ID'),(217,'app','Price'),(218,'app','Currency Code'),(219,'app','Quantity From'),(220,'app','Quantity To'),(221,'app','Provider'),(222,'app','Provider Identifier'),(223,'app','Provider Data'),(224,'app','Property ID'),(225,'app','Element ID'),(226,'app','Value Enum'),(227,'app','Value Num'),(228,'app','Добавить заказ'),(229,'skeeks/shop/app','Пользователь сайта'),(230,'skeeks/shop/app','Тип покупателя'),(231,'skeeks/shop/app','Служба доставки'),(232,'skeeks/shop/app','Профиль покупателя'),(233,'skeeks/shop/app','Платежная система'),(234,'app','Desktop'),(235,'app','Main page'),(236,'app','The site managment system'),(237,'app','Welcome! You are in the site management system.'),(238,'app','Free place'),(239,'app','Number of users'),(240,'app','Read more'),(241,'app','Total at server'),(242,'app','Used'),(243,'app','Free'),(244,'app','At percent ratio'),(245,'app','Basic module {cms}, without it nothing will work and the whole world will collapse.'),(246,'app','To main page of admin area'),(247,'app','To main page of site'),(248,'app','Interface language'),(249,'app','Your profile'),(250,'app','Profile'),(251,'app','To block'),(252,'app','Exit'),(253,'app','Close menu'),(254,'app','Open menu'),(255,'skeeks/shop/app','Shop'),(256,'skeeks/shop/app','Orders'),(257,'skeeks/shop/app','Goods'),(258,'skeeks/shop/app','Buyers'),(259,'skeeks/shop/app','Accounts'),(260,'skeeks/shop/app','Baskets'),(261,'skeeks/shop/app','Viewed products'),(262,'skeeks/shop/app','Marketing management'),(263,'skeeks/shop/app','Discount goods'),(264,'skeeks/shop/app','Cumulative discounts'),(265,'skeeks/shop/app','Inventory control'),(266,'skeeks/shop/app','Stocks'),(267,'skeeks/shop/app','Reports'),(268,'skeeks/shop/app','Reports on orders'),(269,'skeeks/shop/app','Reports on products'),(270,'skeeks/shop/app','Settings'),(271,'skeeks/shop/app','Main settings'),(272,'skeeks/shop/app','Content settings'),(273,'skeeks/shop/app','Updates'),(274,'skeeks/shop/app','Types of prices'),(275,'skeeks/shop/app','Types of payers'),(276,'skeeks/shop/app','Payment systems'),(277,'skeeks/shop/app','Delivery services'),(278,'skeeks/shop/app','Taxes'),(279,'skeeks/shop/app','List of taxes'),(280,'skeeks/shop/app','Tax rates'),(281,'skeeks/shop/app','VAT rates'),(282,'skeeks/shop/app','Surcharges'),(283,'skeeks/shop/app','Currency'),(284,'skeeks/shop/app','Base of locations'),(285,'skeeks/shop/app','Units of measurement'),(286,'skeeks/shop/app','Affiliates'),(287,'skeeks/shop/app','Plans of Commission'),(288,'skeeks/shop/app','Pyramid'),(289,'app','Setting the admin panel'),(290,'app','Authorization through social networks'),(291,'skeeks/shop/app','Elements'),(292,'skeeks/shop/app','Order statuses'),(293,'skeeks/shop/app','Plans affiliate commissions'),(294,'app','Managing Roles'),(295,'app','Information about the system'),(296,'app','Testing send email messages from site'),(297,'app','Deleting temporary files'),(298,'app','Go to site {cms}'),(299,'app','Go to site of the developer'),(300,'app','You are not allowed to perform this action.'),(301,'skeeks/shop/app','Address'),(302,'skeeks/shop/app','Location ID'),(303,'skeeks/shop/app','Phone'),(304,'skeeks/shop/app','Email'),(305,'skeeks/shop/app','Online'),(306,'app','Access to edit dashboards'),(307,'app','Dashboards'),(308,'app','Рабочий стол 1'),(309,'app','Cms User ID'),(310,'app','Columns Settings'),(311,'app','Cms Dashboard ID'),(312,'app','cms_dashboard_column'),(313,'app','Are you sure you want to delete this desktop?'),(314,'app','Watch to {site} (opens in new window)'),(315,'app','Src'),(316,'app','Cluster File'),(317,'app','Original FileName'),(318,'app','Linked To Value'),(319,'app','The combination of Cluster ID and Cluster Src has already been taken.'),(320,'app','Content Type'),(321,'app','Name One Element'),(322,'app','Шаблон META TITLE'),(323,'app','Шаблон META KEYWORDS'),(324,'app','Шаблон META DESCRIPTION'),(325,'app','Включить управление доступом к элементам'),(326,'app','Property Type'),(327,'app','List Type'),(328,'app','Multiple Cnt'),(329,'app','Seo'),(330,'skeeks/shop/app','Base Rate Type'),(331,'skeeks/shop/app','Base Rate Currency Code'),(332,'skeeks/shop/app','Min Pay'),(333,'skeeks/shop/app','Value Currency Code'),(334,'app','The combination of Code and Pid has already been taken.'),(335,'app','Этот параметр влияет на адрес страницы, будте внимательно при его редактировании.'),(336,'app','Showing all elements of type \'{name}\' associated with this section. Taken into account only the main binding.'),(337,'app','Name Meny'),(338,'app','Name One'),(339,'app','Level'),(340,'app','Log Time'),(341,'app','Prefix'),(342,'app','Email адреса'),(343,'app','Телефоны'),(344,'app','User Ids'),(345,'app','Связь с формой');
/*!40000 ALTER TABLE `source_message` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `source_message` with 345 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Mon, 13 Jan 2020 08:04:36 +0000

-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: opencart
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `${OPENCART_PREFIX}address`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}address`
--

LOCK TABLES `${OPENCART_PREFIX}address` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}address` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}affiliate`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}affiliate`
--

LOCK TABLES `${OPENCART_PREFIX}affiliate` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}affiliate_activity`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}affiliate_activity`
--

LOCK TABLES `${OPENCART_PREFIX}affiliate_activity` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}affiliate_login`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}affiliate_login`
--

LOCK TABLES `${OPENCART_PREFIX}affiliate_login` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}affiliate_transaction`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}affiliate_transaction`
--

LOCK TABLES `${OPENCART_PREFIX}affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}api`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}api`
--

LOCK TABLES `${OPENCART_PREFIX}api` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}api` VALUES (1,'Default','1ZqANb3kVeUeLLW6f9tgkWV3uYkhY2Mw7FW1fuAwYe9tvbgsZk9nHcg7GTFkdXCrDuA3oHyP5sY7XUChKewjq4q1MjSjBDjbE25s6FgV0BYcLJxBYr9YkfPQVb9rmKW2z51usKJhHrfZrWSoXh0e0EPE4LMVTrrwjzN1dvpcmf8ZeYmo9lqzpstllo4blxR1lrsFMxTyTaIjvWcdL6RaIu4dxjrzCF5qd0ByWdBaVJOzwfBlNG1E2JHxFSGm4yge',1,'2017-09-16 12:04:13','2017-09-16 12:04:13');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}api_ip`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}api_ip`
--

LOCK TABLES `${OPENCART_PREFIX}api_ip` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}api_session`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}api_session`
--

LOCK TABLES `${OPENCART_PREFIX}api_session` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}api_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}attribute`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}attribute`
--

LOCK TABLES `${OPENCART_PREFIX}attribute` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}attribute_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}attribute_description`
--

LOCK TABLES `${OPENCART_PREFIX}attribute_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}attribute_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}attribute_group`
--

LOCK TABLES `${OPENCART_PREFIX}attribute_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_group` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}attribute_group_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}attribute_group_description`
--

LOCK TABLES `${OPENCART_PREFIX}attribute_group_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_group_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}banner`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}banner`
--

LOCK TABLES `${OPENCART_PREFIX}banner` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}banner` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}banner` VALUES (6,'HP Products',1),(7,'首頁滑動式廣告',1),(8,'品牌 Logo',1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}banner_image`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}banner_image`
--

LOCK TABLES `${OPENCART_PREFIX}banner_image` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}banner_image` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}banner_image` VALUES (79,7,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(94,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(95,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(96,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(91,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(92,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(93,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(88,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(89,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(90,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(80,7,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(97,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(98,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}cart`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}cart` (
  `${OPENCART_PREFIX}id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`${OPENCART_PREFIX}id`),
  KEY `${OPENCART_PREFIX}id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}cart`
--

LOCK TABLES `${OPENCART_PREFIX}cart` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category`
--

LOCK TABLES `${OPENCART_PREFIX}category` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}category` VALUES (25,'',0,1,1,3,1,'2009-01-31 01:04:25','2011-05-30 12:14:55'),(27,'',20,0,0,2,1,'2009-01-31 01:55:34','2010-08-22 06:32:15'),(20,'catalog/demo/compaq_presario.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2011-07-16 02:14:42'),(24,'',0,1,1,5,1,'2009-01-20 02:36:26','2011-05-30 12:15:18'),(18,'catalog/demo/hp_2.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2011-05-30 12:13:55'),(17,'',0,1,1,4,1,'2009-01-03 21:08:57','2011-05-30 12:15:11'),(28,'',25,0,0,1,1,'2009-02-02 13:11:12','2010-08-22 06:32:46'),(26,'',20,0,0,1,1,'2009-01-31 01:55:14','2010-08-22 06:31:45'),(29,'',25,0,0,1,1,'2009-02-02 13:11:37','2010-08-22 06:32:39'),(30,'',25,0,0,1,1,'2009-02-02 13:11:59','2010-08-22 06:33:00'),(31,'',25,0,0,1,1,'2009-02-03 14:17:24','2010-08-22 06:33:06'),(32,'',25,0,0,1,1,'2009-02-03 14:17:34','2010-08-22 06:33:12'),(33,'',0,1,1,6,1,'2009-02-03 14:17:55','2011-05-30 12:15:25'),(34,'catalog/demo/ipod_touch_4.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2011-05-30 12:15:31'),(35,'',28,0,0,0,1,'2010-09-17 10:06:48','2010-09-18 14:02:42'),(36,'',28,0,0,0,1,'2010-09-17 10:07:13','2010-09-18 14:02:55'),(37,'',34,0,0,0,1,'2010-09-18 14:03:39','2011-04-22 01:55:08'),(38,'',34,0,0,0,1,'2010-09-18 14:03:51','2010-09-18 14:03:51'),(39,'',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20'),(40,'',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36'),(41,'',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30'),(42,'',34,0,0,0,1,'2010-09-18 14:06:34','2010-11-07 20:31:04'),(43,'',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40'),(44,'',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55'),(45,'',18,0,0,0,1,'2010-09-24 18:29:16','2011-04-26 08:52:11'),(46,'',18,0,0,0,1,'2010-09-24 18:29:31','2011-04-26 08:52:23'),(47,'',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16'),(48,'',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33'),(49,'',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04'),(50,'',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01'),(51,'',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13'),(52,'',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57'),(53,'',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36'),(54,'',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50'),(55,'',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32'),(56,'',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37'),(57,'',0,1,1,3,1,'2011-04-26 08:53:16','2011-05-30 12:15:05'),(58,'',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category_description`
--

LOCK TABLES `${OPENCART_PREFIX}category_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}category_description` VALUES (28,1,'螢幕','','Monitors','',''),(33,1,'相機','','Cameras','',''),(32,1,'網路攝影機','','Web Cameras','',''),(31,1,'掃瞄器','','Scanners','',''),(30,1,'印表機','','Printers','',''),(29,1,'零組件','','Mice and Trackballs','',''),(27,1,'蘋果電腦','','Mac','',''),(26,1,'個人電腦','','PC','',''),(17,1,'軟體','','Software','',''),(25,1,'週邊設備','','Components','',''),(24,1,'手機','','Phones &amp; PDAs','',''),(20,1,'桌上型電腦','&lt;p&gt;\r\n	品牌桌上型電腦、DIY桌上型電腦&lt;/p&gt;\r\n','Desktops','Example of category description',''),(35,1,'test 1','','test 1','',''),(36,1,'test 2','','test 2','',''),(37,1,'test 5','','test 5','',''),(38,1,'test 4','','test 4','',''),(39,1,'test 6','','test 6','',''),(40,1,'test 7','','test 7','',''),(41,1,'test 8','','test 8','',''),(42,1,'test 9','','test 9','',''),(43,1,'test 11','','test 11','',''),(34,1,'MP3 播放器','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','MP3 Players','',''),(18,1,'筆記型電腦','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','Laptops &amp; Notebooks','',''),(44,1,'test 12','','test 12','',''),(45,1,'Windows','','Windows','',''),(46,1,'Macs','','Macs','',''),(47,1,'test 15','','test 15','',''),(48,1,'test 16','','test 16','',''),(49,1,'test 17','','test 17','',''),(50,1,'test 18','','test 18','',''),(51,1,'test 19','','test 19','',''),(52,1,'test 20','','test 20','',''),(53,1,'test 21','','test 21','',''),(54,1,'test 22','','test 22','',''),(55,1,'test 23','','test 23','',''),(56,1,'test 24','','test 24','',''),(57,1,'平板電腦','','Tablets','',''),(58,1,'test 25','','test 25','','');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category_filter`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category_filter`
--

LOCK TABLES `${OPENCART_PREFIX}category_filter` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category_path`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category_path`
--

LOCK TABLES `${OPENCART_PREFIX}category_path` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_path` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}category_path` VALUES (25,25,0),(28,25,0),(28,28,1),(35,25,0),(35,28,1),(35,35,2),(36,25,0),(36,28,1),(36,36,2),(29,25,0),(29,29,1),(30,25,0),(30,30,1),(31,25,0),(31,31,1),(32,25,0),(32,32,1),(20,20,0),(27,20,0),(27,27,1),(26,20,0),(26,26,1),(24,24,0),(18,18,0),(45,18,0),(45,45,1),(46,18,0),(46,46,1),(17,17,0),(33,33,0),(34,34,0),(37,34,0),(37,37,1),(38,34,0),(38,38,1),(39,34,0),(39,39,1),(40,34,0),(40,40,1),(41,34,0),(41,41,1),(42,34,0),(42,42,1),(43,34,0),(43,43,1),(44,34,0),(44,44,1),(47,34,0),(47,47,1),(48,34,0),(48,48,1),(49,34,0),(49,49,1),(50,34,0),(50,50,1),(51,34,0),(51,51,1),(52,34,0),(52,52,1),(58,34,0),(58,52,1),(58,58,2),(53,34,0),(53,53,1),(54,34,0),(54,54,1),(55,34,0),(55,55,1),(56,34,0),(56,56,1),(57,57,0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category_to_layout`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category_to_layout`
--

LOCK TABLES `${OPENCART_PREFIX}category_to_layout` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}category_to_store`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}category_to_store`
--

LOCK TABLES `${OPENCART_PREFIX}category_to_store` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_to_store` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}category_to_store` VALUES (17,0),(18,0),(20,0),(24,0),(25,0),(26,0),(27,0),(28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(37,0),(38,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}country`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}country`
--

LOCK TABLES `${OPENCART_PREFIX}country` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}country` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}country` VALUES (206,'台灣','TW','TWN','',0,1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}coupon`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}coupon`
--

LOCK TABLES `${OPENCART_PREFIX}coupon` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}coupon` VALUES (4,'九折優惠券','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'免運費優惠','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'百元抵用券','1111','F',100.0000,0,0,100.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}coupon_category`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}coupon_category`
--

LOCK TABLES `${OPENCART_PREFIX}coupon_category` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}coupon_history`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}coupon_history`
--

LOCK TABLES `${OPENCART_PREFIX}coupon_history` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}coupon_product`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}coupon_product`
--

LOCK TABLES `${OPENCART_PREFIX}coupon_product` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}currency`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}currency`
--

LOCK TABLES `${OPENCART_PREFIX}currency` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}currency` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}currency` VALUES (1,'新台幣','TWD','$ ','','0',1.00000000,1,'2015-01-01 12:00:00');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}custom_field`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}custom_field`
--

LOCK TABLES `${OPENCART_PREFIX}custom_field` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}custom_field_customer_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}custom_field_customer_group`
--

LOCK TABLES `${OPENCART_PREFIX}custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}custom_field_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}custom_field_description`
--

LOCK TABLES `${OPENCART_PREFIX}custom_field_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}custom_field_value`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}custom_field_value`
--

LOCK TABLES `${OPENCART_PREFIX}custom_field_value` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}custom_field_value_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}custom_field_value_description`
--

LOCK TABLES `${OPENCART_PREFIX}custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer`
--

LOCK TABLES `${OPENCART_PREFIX}customer` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_activity`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_activity`
--

LOCK TABLES `${OPENCART_PREFIX}customer_activity` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_group`
--

LOCK TABLES `${OPENCART_PREFIX}customer_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_group` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_group_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_group_description`
--

LOCK TABLES `${OPENCART_PREFIX}customer_group_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_group_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}customer_group_description` VALUES (1,1,'預設','預設群組');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_history`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_history`
--

LOCK TABLES `${OPENCART_PREFIX}customer_history` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_ip`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_ip`
--

LOCK TABLES `${OPENCART_PREFIX}customer_ip` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_login`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_login`
--

LOCK TABLES `${OPENCART_PREFIX}customer_login` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_online`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_online`
--

LOCK TABLES `${OPENCART_PREFIX}customer_online` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_reward`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_reward`
--

LOCK TABLES `${OPENCART_PREFIX}customer_reward` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_search`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_search`
--

LOCK TABLES `${OPENCART_PREFIX}customer_search` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_transaction`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_transaction`
--

LOCK TABLES `${OPENCART_PREFIX}customer_transaction` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}customer_wishlist`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}customer_wishlist`
--

LOCK TABLES `${OPENCART_PREFIX}customer_wishlist` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}download`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}download`
--

LOCK TABLES `${OPENCART_PREFIX}download` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}download` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}download_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}download_description`
--

LOCK TABLES `${OPENCART_PREFIX}download_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}event`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}event`
--

LOCK TABLES `${OPENCART_PREFIX}event` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}event` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}event` VALUES (1,'voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}extension`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}extension`
--

LOCK TABLES `${OPENCART_PREFIX}extension` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}extension` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(20,'theme','theme_default'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}filter`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}filter`
--

LOCK TABLES `${OPENCART_PREFIX}filter` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}filter_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}filter_description`
--

LOCK TABLES `${OPENCART_PREFIX}filter_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}filter_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}filter_group`
--

LOCK TABLES `${OPENCART_PREFIX}filter_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}filter_group_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}filter_group_description`
--

LOCK TABLES `${OPENCART_PREFIX}filter_group_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}geo_zone`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}geo_zone`
--

LOCK TABLES `${OPENCART_PREFIX}geo_zone` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}geo_zone` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}geo_zone` VALUES (3,'台灣離島','澎湖、金門、馬祖地區','2016-05-09 14:46:15','2009-01-06 23:26:25'),(4,'台灣本島','台灣本島','2016-05-09 14:40:38','2009-06-23 01:14:53'),(5,'台灣地區','台灣本島+離島','2016-05-09 14:40:38','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}information`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}information`
--

LOCK TABLES `${OPENCART_PREFIX}information` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}information_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}information_description`
--

LOCK TABLES `${OPENCART_PREFIX}information_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}information_description` VALUES (4,1,'關於我們','&lt;p&gt;\r\n 關於我們&lt;/p&gt;\r\n','關於我們','',''),(5,1,'服務條款','&lt;p&gt;\r\n 服務條款&lt;/p&gt;\r\n','服務條款','',''),(3,1,'隱私權保護','&lt;p&gt;\r\n  隱私權保護&lt;/p&gt;\r\n','隱私權保護','',''),(6,1,'購物須知','&lt;p&gt;\r\n 購物須知&lt;/p&gt;\r\n','購物須知','','');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}information_to_layout`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}information_to_layout`
--

LOCK TABLES `${OPENCART_PREFIX}information_to_layout` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}information_to_store`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}information_to_store`
--

LOCK TABLES `${OPENCART_PREFIX}information_to_store` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_to_store` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}language`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}language`
--

LOCK TABLES `${OPENCART_PREFIX}language` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}language` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}language` VALUES (1,'正體中文','zh-TW','zh-tw,taiwan,chinese','tw.png','zh-TW',1,1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}layout`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}layout`
--

LOCK TABLES `${OPENCART_PREFIX}layout` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}layout` VALUES (1,'首頁(Home)'),(2,'商品(Product)'),(3,'商品分類(Category)'),(4,'預設(Default)'),(5,'品牌(Manufacturer)'),(6,'帳號(Account)'),(7,'結帳(Checkout)'),(8,'聯絡我們(Contact)'),(9,'網站導覽(Sitemap)'),(10,'推薦機制(Affiliate)'),(11,'商店資訊(Information)'),(12,'商品比較(Compare)'),(13,'商品搜尋(Search)');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}layout_module`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}layout_module`
--

LOCK TABLES `${OPENCART_PREFIX}layout_module` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout_module` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(20,5,'0','column_left',2),(69,10,'affiliate','column_right',1),(68,6,'account','column_right',1),(67,1,'carousel.29','content_top',3),(66,1,'slideshow.27','content_top',1),(65,1,'featured.28','content_top',2),(72,3,'category','column_left',1),(73,3,'banner.30','column_left',2);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}layout_route`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}layout_route`
--

LOCK TABLES `${OPENCART_PREFIX}layout_route` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout_route` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(44,3,0,'product/category'),(42,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(45,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}length_class`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}length_class`
--

LOCK TABLES `${OPENCART_PREFIX}length_class` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}length_class` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}length_class_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}length_class_description`
--

LOCK TABLES `${OPENCART_PREFIX}length_class_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}length_class_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}length_class_description` VALUES (1,1,'公分','cm'),(2,1,'毫米','mm'),(3,1,'英吋','in');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}location`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}location`
--

LOCK TABLES `${OPENCART_PREFIX}location` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}location` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}manufacturer`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}manufacturer`
--

LOCK TABLES `${OPENCART_PREFIX}manufacturer` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}manufacturer` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}manufacturer_to_store`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}manufacturer_to_store`
--

LOCK TABLES `${OPENCART_PREFIX}manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}marketing`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}marketing`
--

LOCK TABLES `${OPENCART_PREFIX}marketing` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}menu`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}menu`
--

LOCK TABLES `${OPENCART_PREFIX}menu` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}menu_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}menu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}menu_description`
--

LOCK TABLES `${OPENCART_PREFIX}menu_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}menu_module`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}menu_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_module_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}menu_module`
--

LOCK TABLES `${OPENCART_PREFIX}menu_module` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}menu_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}modification`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}modification`
--

LOCK TABLES `${OPENCART_PREFIX}modification` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}module`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}module`
--

LOCK TABLES `${OPENCART_PREFIX}module` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}module` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),(29,'首頁品牌輪播','carousel','{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),(28,'首頁特色商品','featured','{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\",\"33\",\"48\",\"29\",\"32\"],\"limit\":\"8\",\"width\":\"240\",\"height\":\"240\",\"status\":\"1\"}'),(27,'首頁划動廣告','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Banner 1','banner','{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}option`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}option`
--

LOCK TABLES `${OPENCART_PREFIX}option` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}option_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}option_description`
--

LOCK TABLES `${OPENCART_PREFIX}option_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}option_description` VALUES (1,1,'單選'),(2,1,'可複選'),(4,1,'文字框'),(6,1,'多行文字框'),(8,1,'日期'),(7,1,'檔案'),(5,1,'下拉選單'),(9,1,'時間'),(10,1,'日期時間'),(12,1,'交貨日期'),(11,1,'尺寸');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}option_value`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}option_value`
--

LOCK TABLES `${OPENCART_PREFIX}option_value` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_value` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}option_value_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}option_value_description`
--

LOCK TABLES `${OPENCART_PREFIX}option_value_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_value_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}option_value_description` VALUES (43,1,1,'大'),(32,1,1,'小'),(45,1,2,'選項四'),(44,1,2,'選項三'),(31,1,1,'中'),(42,1,5,'黃色'),(41,1,5,'綠色'),(39,1,5,'紅色'),(40,1,5,'藍色'),(23,1,2,'選項一'),(24,1,2,'選項二'),(48,1,11,'大'),(47,1,11,'中'),(46,1,11,'小');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order`
--

LOCK TABLES `${OPENCART_PREFIX}order` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_custom_field`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_custom_field`
--

LOCK TABLES `${OPENCART_PREFIX}order_custom_field` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_history`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_history`
--

LOCK TABLES `${OPENCART_PREFIX}order_history` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_option`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_option`
--

LOCK TABLES `${OPENCART_PREFIX}order_option` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_product`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_product`
--

LOCK TABLES `${OPENCART_PREFIX}order_product` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_recurring`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_recurring`
--

LOCK TABLES `${OPENCART_PREFIX}order_recurring` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_recurring_transaction`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_recurring_transaction`
--

LOCK TABLES `${OPENCART_PREFIX}order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_status`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_status`
--

LOCK TABLES `${OPENCART_PREFIX}order_status` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_status` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}order_status` VALUES (1,1,'待處理'),(2,1,'處理中'),(3,1,'已出貨'),(4,1,'待付款'),(5,1,'已完成'),(6,1,'待確認'),(7,1,'已取消'),(8,1,'已拒絕'),(9,1,'已取消退單'),(10,1,'失敗的'),(11,1,'已退款'),(12,1,'已退單'),(13,1,'要求退款'),(14,1,'已過期'),(15,1,'已處理'),(16,1,'無效的');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_total`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_total`
--

LOCK TABLES `${OPENCART_PREFIX}order_total` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}order_voucher`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}order_voucher`
--

LOCK TABLES `${OPENCART_PREFIX}order_voucher` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product`
--

LOCK TABLES `${OPENCART_PREFIX}product` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product` VALUES (28,'Product 1','','','','','','','',939,7,'catalog/demo/htc_touch_hd_1.jpg',5,1,3600.0000,200,9,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:06:50','2011-09-30 01:05:39'),(29,'Product 2','','','','','','','',999,6,'catalog/demo/palm_treo_pro_1.jpg',6,1,3800.0000,0,9,'2009-02-03',133.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,0,'2009-02-03 16:42:17','2011-09-30 01:06:08'),(30,'Product 3','','','','','','','',7,6,'catalog/demo/canon_eos_5d_1.jpg',9,1,68000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 16:59:00','2011-09-30 01:05:23'),(31,'Product 4','','','','','','','',1000,6,'catalog/demo/nikon_d300_1.jpg',0,1,58000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,3,1,1,0,1,0,'2009-02-03 17:00:10','2011-09-30 01:06:00'),(32,'Product 5','','','','','','','',999,6,'catalog/demo/ipod_touch_1.jpg',8,1,3000.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 17:07:26','2011-09-30 01:07:22'),(33,'Product 6','','','','','','','',1000,6,'catalog/demo/samsung_syncmaster_941bw.jpg',0,1,26000.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 17:08:31','2011-09-30 01:06:29'),(34,'Product 7','','','','','','','',1000,6,'catalog/demo/ipod_shuffle_1.jpg',8,1,3000.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:07:54','2011-09-30 01:07:17'),(35,'Product 8','','','','','','','',1000,5,'',0,0,3000.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 18:08:31','2011-09-30 01:06:17'),(36,'Product 9','','','','','','','',994,6,'catalog/demo/ipod_nano_1.jpg',8,0,8000.0000,100,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:09:19','2011-09-30 01:07:12'),(40,'product 11','','','','','','','',970,5,'catalog/demo/iphone_1.jpg',8,1,12000.0000,0,9,'2009-02-03',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:12','2011-09-30 01:06:53'),(41,'Product 14','','','','','','','',977,5,'catalog/demo/imac_1.jpg',8,1,60000.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:26','2011-09-30 01:06:44'),(42,'Product 15','','','','','','','',990,5,'catalog/demo/apple_cinema_30.jpg',8,1,50000.0000,400,9,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,2,0,1,0,'2009-02-03 21:07:37','2011-09-30 00:46:19'),(43,'Product 16','','','','','','','',929,5,'catalog/demo/macbook_1.jpg',8,0,60000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:07:49','2011-09-30 01:05:46'),(44,'Product 17','','','','','','','',1000,5,'catalog/demo/macbook_air_1.jpg',8,1,60000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:00','2011-09-30 01:05:53'),(45,'Product 18','','','','','','','',998,5,'catalog/demo/macbook_pro_1.jpg',8,1,60000.0000,0,100,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:17','2011-09-15 22:22:01'),(46,'Product 19','','','','','','','',1000,5,'catalog/demo/sony_vaio_1.jpg',10,1,30000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:08:29','2011-09-30 01:06:39'),(47,'Product 21','','','','','','','',1000,5,'catalog/demo/hp_1.jpg',7,1,3000.0000,400,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,0,'2009-02-03 21:08:40','2011-09-30 01:05:28'),(48,'product 20','test 1','','','','','','test 2',995,5,'catalog/demo/ipod_classic_1.jpg',8,1,3000.0000,0,9,'2009-02-08',1.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-08 17:21:51','2011-09-30 01:07:06'),(49,'SAM1','','','','','','','',0,8,'catalog/demo/samsung_tab_1.jpg',0,1,6000.0000,0,9,'2011-04-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,0,'2011-04-26 08:57:34','2011-09-30 01:06:23');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_attribute`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_attribute`
--

LOCK TABLES `${OPENCART_PREFIX}product_attribute` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_attribute` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_attribute` VALUES (43,2,1,'1'),(47,4,1,'16GB'),(43,4,1,'8gb'),(42,3,1,'100mhz'),(47,2,1,'4');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_description`
--

LOCK TABLES `${OPENCART_PREFIX}product_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_description` VALUES (35,1,'Product 8','&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n','','Product 8','',''),(48,1,'iPod Classic','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','iPod Classic','',''),(40,1,'iPhone','&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n','','iPhone','',''),(28,1,'HTC Touch HD','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','	 HTC Touch HD','',''),(44,1,'MacBook Air','&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n','','MacBook Air','',''),(45,1,'MacBook Pro','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','MacBook Pro','',''),(29,1,'Palm Treo Pro','&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Palm Treo Pro','',''),(36,1,'iPod Nano','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','iPod Nano','',''),(46,1,'Sony VAIO','&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n','','Sony VAIO','',''),(47,1,'HP LP3065','&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n','','HP LP3065','',''),(32,1,'iPod Touch','&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n','','	 iPod Touch','',''),(41,1,'iMac','&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n','','iMac','',''),(33,1,'Samsung SyncMaster 941BW','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n','','Samsung SyncMaster 941BW','',''),(34,1,'iPod Shuffle','&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','iPod Shuffle','',''),(43,1,'MacBook','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','MacBook','',''),(31,1,'Nikon D300','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','Nikon D300','',''),(49,1,'Samsung Galaxy Tab 10.1','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n','','Samsung Galaxy Tab 10.1','',''),(42,1,'Apple Cinema 30&quot;','&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Apple Cinema 30','',''),(30,1,'Canon EOS 5D','&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n','','sdf','','');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_discount`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_discount`
--

LOCK TABLES `${OPENCART_PREFIX}product_discount` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_discount` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_discount` VALUES (440,42,1,30,1,47200.0000,'0000-00-00','0000-00-00'),(439,42,1,20,1,47500.0000,'0000-00-00','0000-00-00'),(438,42,1,10,1,48000.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_filter`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_filter`
--

LOCK TABLES `${OPENCART_PREFIX}product_filter` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_image`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2352 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_image`
--

LOCK TABLES `${OPENCART_PREFIX}product_image` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_image` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_image` VALUES (2345,30,'catalog/demo/canon_eos_5d_2.jpg',0),(2321,47,'catalog/demo/hp_3.jpg',0),(2035,28,'catalog/demo/htc_touch_hd_2.jpg',0),(2351,41,'catalog/demo/imac_3.jpg',0),(1982,40,'catalog/demo/iphone_6.jpg',0),(2001,36,'catalog/demo/ipod_nano_5.jpg',0),(2000,36,'catalog/demo/ipod_nano_4.jpg',0),(2005,34,'catalog/demo/ipod_shuffle_5.jpg',0),(2004,34,'catalog/demo/ipod_shuffle_4.jpg',0),(2011,32,'catalog/demo/ipod_touch_7.jpg',0),(2010,32,'catalog/demo/ipod_touch_6.jpg',0),(2009,32,'catalog/demo/ipod_touch_5.jpg',0),(1971,43,'catalog/demo/macbook_5.jpg',0),(1970,43,'catalog/demo/macbook_4.jpg',0),(1974,44,'catalog/demo/macbook_air_4.jpg',0),(1973,44,'catalog/demo/macbook_air_2.jpg',0),(1977,45,'catalog/demo/macbook_pro_2.jpg',0),(1976,45,'catalog/demo/macbook_pro_3.jpg',0),(1986,31,'catalog/demo/nikon_d300_3.jpg',0),(1985,31,'catalog/demo/nikon_d300_2.jpg',0),(1988,29,'catalog/demo/palm_treo_pro_3.jpg',0),(1995,46,'catalog/demo/sony_vaio_5.jpg',0),(1994,46,'catalog/demo/sony_vaio_4.jpg',0),(1991,48,'catalog/demo/ipod_classic_4.jpg',0),(1990,48,'catalog/demo/ipod_classic_3.jpg',0),(1981,40,'catalog/demo/iphone_2.jpg',0),(1980,40,'catalog/demo/iphone_5.jpg',0),(2344,30,'catalog/demo/canon_eos_5d_3.jpg',0),(2320,47,'catalog/demo/hp_2.jpg',0),(2034,28,'catalog/demo/htc_touch_hd_3.jpg',0),(2350,41,'catalog/demo/imac_2.jpg',0),(1979,40,'catalog/demo/iphone_3.jpg',0),(1978,40,'catalog/demo/iphone_4.jpg',0),(1989,48,'catalog/demo/ipod_classic_2.jpg',0),(1999,36,'catalog/demo/ipod_nano_2.jpg',0),(1998,36,'catalog/demo/ipod_nano_3.jpg',0),(2003,34,'catalog/demo/ipod_shuffle_2.jpg',0),(2002,34,'catalog/demo/ipod_shuffle_3.jpg',0),(2008,32,'catalog/demo/ipod_touch_2.jpg',0),(2007,32,'catalog/demo/ipod_touch_3.jpg',0),(2006,32,'catalog/demo/ipod_touch_4.jpg',0),(1969,43,'catalog/demo/macbook_2.jpg',0),(1968,43,'catalog/demo/macbook_3.jpg',0),(1972,44,'catalog/demo/macbook_air_3.jpg',0),(1975,45,'catalog/demo/macbook_pro_4.jpg',0),(1984,31,'catalog/demo/nikon_d300_4.jpg',0),(1983,31,'catalog/demo/nikon_d300_5.jpg',0),(1987,29,'catalog/demo/palm_treo_pro_2.jpg',0),(1993,46,'catalog/demo/sony_vaio_2.jpg',0),(1992,46,'catalog/demo/sony_vaio_3.jpg',0),(2327,49,'catalog/demo/samsung_tab_7.jpg',0),(2326,49,'catalog/demo/samsung_tab_6.jpg',0),(2325,49,'catalog/demo/samsung_tab_5.jpg',0),(2324,49,'catalog/demo/samsung_tab_4.jpg',0),(2323,49,'catalog/demo/samsung_tab_3.jpg',0),(2322,49,'catalog/demo/samsung_tab_2.jpg',0),(2317,42,'catalog/demo/canon_logo.jpg',0),(2316,42,'catalog/demo/hp_1.jpg',0),(2315,42,'catalog/demo/compaq_presario.jpg',0),(2314,42,'catalog/demo/canon_eos_5d_1.jpg',0),(2313,42,'catalog/demo/canon_eos_5d_2.jpg',0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_option`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_option`
--

LOCK TABLES `${OPENCART_PREFIX}product_option` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_option` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_option` VALUES (224,35,11,'',1),(225,47,12,'2011-04-22',1),(223,42,2,'',1),(217,42,5,'',1),(209,42,6,'',1),(218,42,1,'',1),(208,42,4,'test',1),(219,42,8,'2011-02-20',1),(222,42,7,'',1),(221,42,9,'22:25',1),(220,42,10,'2011-02-20 22:25',1),(226,30,5,'',1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_option_value`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_option_value`
--

LOCK TABLES `${OPENCART_PREFIX}product_option_value` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_option_value` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_option_value` VALUES (1,217,42,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+'),(6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+'),(7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+'),(5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+'),(4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+'),(2,217,42,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+'),(3,217,42,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+'),(8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+'),(10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+'),(9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+'),(11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+'),(12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+'),(13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+'),(14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+'),(16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+'),(15,226,30,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_recurring`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_recurring`
--

LOCK TABLES `${OPENCART_PREFIX}product_recurring` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_related`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_related`
--

LOCK TABLES `${OPENCART_PREFIX}product_related` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_related` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_related` VALUES (40,42),(41,42),(42,40),(42,41);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_reward`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_reward`
--

LOCK TABLES `${OPENCART_PREFIX}product_reward` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_reward` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_reward` VALUES (515,42,1,100),(519,47,1,300),(379,28,1,400),(329,43,1,600),(339,29,1,0),(343,48,1,0),(335,40,1,0),(539,30,1,200),(331,44,1,700),(333,45,1,800),(337,31,1,0),(425,35,1,0),(345,33,1,0),(347,46,1,0),(545,41,1,0),(351,36,1,0),(353,34,1,0),(355,32,1,0),(521,49,1,1000);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_special`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_special`
--

LOCK TABLES `${OPENCART_PREFIX}product_special` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_special` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_special` VALUES (419,42,1,1,48500.0000,'0000-00-00','0000-00-00'),(439,30,1,2,66000.0000,'0000-00-00','0000-00-00'),(438,30,1,1,65000.0000,'0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_to_category`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_to_category`
--

LOCK TABLES `${OPENCART_PREFIX}product_to_category` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_category` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_to_category` VALUES (28,20),(28,24),(29,20),(29,24),(30,20),(30,33),(31,33),(32,34),(33,20),(33,28),(34,34),(35,20),(36,34),(40,20),(40,24),(41,27),(42,20),(42,28),(43,18),(43,20),(44,18),(44,20),(45,18),(46,18),(46,20),(47,18),(47,20),(48,20),(48,34),(49,57);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_to_download`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_to_download`
--

LOCK TABLES `${OPENCART_PREFIX}product_to_download` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_to_layout`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_to_layout`
--

LOCK TABLES `${OPENCART_PREFIX}product_to_layout` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}product_to_store`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}product_to_store`
--

LOCK TABLES `${OPENCART_PREFIX}product_to_store` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_store` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}recurring`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}recurring`
--

LOCK TABLES `${OPENCART_PREFIX}recurring` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}recurring_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}recurring_description`
--

LOCK TABLES `${OPENCART_PREFIX}recurring_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}return`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}return`
--

LOCK TABLES `${OPENCART_PREFIX}return` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}return_action`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}return_action`
--

LOCK TABLES `${OPENCART_PREFIX}return_action` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_action` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}return_action` VALUES (1,1,'已退款'),(2,1,'已轉至信用帳戶'),(3,1,'已換貨');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}return_history`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}return_history`
--

LOCK TABLES `${OPENCART_PREFIX}return_history` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}return_reason`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}return_reason`
--

LOCK TABLES `${OPENCART_PREFIX}return_reason` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_reason` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}return_reason` VALUES (1,1,'到貨時已有毀損'),(2,1,'與訂購商品不符'),(3,1,'訂單資料有誤'),(4,1,'瑕疵品, 請詳細描述'),(5,1,'其他, 請詳細描述');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}return_status`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}return_status`
--

LOCK TABLES `${OPENCART_PREFIX}return_status` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_status` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}return_status` VALUES (1,1,'退換處理中'),(3,1,'處理完成'),(2,1,'等待退換');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}review`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}review`
--

LOCK TABLES `${OPENCART_PREFIX}review` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}review` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}setting`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}setting`
--

LOCK TABLES `${OPENCART_PREFIX}setting` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}setting` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}setting` VALUES (1,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(2,0,'config','config_shared','0',0),(3,0,'config','config_secure','0',0),(4,0,'voucher','voucher_sort_order','8',0),(5,0,'voucher','voucher_status','1',0),(6,0,'config','config_fraud_detection','0',0),(7,0,'config','config_alert_email','',0),(8,0,'config','config_ftp_status','0',0),(9,0,'config','config_ftp_root','',0),(10,0,'config','config_ftp_password','',0),(11,0,'config','config_ftp_username','',0),(12,0,'config','config_ftp_port','21',0),(13,0,'config','config_ftp_hostname','',0),(14,0,'config','config_meta_title','OpenCart 網路商店',0),(15,0,'config','config_meta_description','OpenCart 網路商店',0),(16,0,'config','config_meta_keyword','',0),(17,0,'config','config_theme','theme_default',0),(18,0,'config','config_layout_id','4',0),(19,0,'config','config_country_id','206',0),(20,0,'config','config_zone_id','3136',0),(21,0,'config','config_language','zh-TW',0),(22,0,'config','config_admin_language','zh-TW',0),(23,0,'config','config_currency','TWD',0),(24,0,'config','config_currency_auto','1',0),(25,0,'config','config_length_class_id','1',0),(26,0,'config','config_weight_class_id','1',0),(27,0,'config','config_product_count','1',0),(28,0,'config','config_limit_admin','20',0),(29,0,'config','config_review_status','1',0),(30,0,'config','config_review_guest','1',0),(31,0,'config','config_voucher_min','1',0),(32,0,'config','config_voucher_max','1000',0),(33,0,'config','config_tax','1',0),(34,0,'config','config_tax_default','',0),(35,0,'config','config_tax_customer','',0),(36,0,'config','config_customer_online','0',0),(37,0,'config','config_customer_activity','0',0),(38,0,'config','config_customer_search','0',0),(39,0,'config','config_customer_group_id','1',0),(40,0,'config','config_customer_group_display','[\"1\"]',1),(41,0,'config','config_customer_price','0',0),(42,0,'config','config_account_id','5',0),(43,0,'config','config_invoice_prefix','INV-2017-00',0),(173,0,'config','config_api_id','1',0),(45,0,'config','config_oc_weight','1',0),(46,0,'config','config_checkout_guest','1',0),(47,0,'config','config_checkout_id','5',0),(48,0,'config','config_order_status_id','1',0),(49,0,'config','config_processing_status','[\"2\"]',1),(50,0,'config','config_complete_status','[\"5\"]',1),(51,0,'config','config_stock_display','0',0),(52,0,'config','config_stock_warning','0',0),(53,0,'config','config_stock_checkout','0',0),(54,0,'config','config_affiliate_approval','0',0),(55,0,'config','config_affiliate_auto','0',0),(56,0,'config','config_affiliate_commission','5',0),(57,0,'config','config_affiliate_id','4',0),(58,0,'config','config_return_id','0',0),(59,0,'config','config_return_status_id','2',0),(60,0,'config','config_logo','catalog/logo.png',0),(61,0,'config','config_icon','catalog/cart.png',0),(62,0,'config','config_comment','',0),(63,0,'config','config_open','',0),(64,0,'config','config_image','',0),(65,0,'config','config_fax','',0),(66,0,'config','config_telephone','0800-000000',0),(171,0,'config','config_email','admin@localhost.com',0),(68,0,'config','config_geocode','',0),(69,0,'config','config_owner','商店店長',0),(70,0,'config','config_address','商店地址',0),(71,0,'config','config_name','您的網路商店',0),(72,0,'config','config_seo_url','0',0),(73,0,'config','config_file_max_size','300000',0),(74,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(75,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(76,0,'config','config_maintenance','0',0),(77,0,'config','config_password','1',0),(172,0,'config','config_encryption','qI1wBmWjSoLgtQ5etNwookLfdQ1fDZqgATsINwxRFoKtu5TdCwz5ry4Fu2CveX62GEXAPS36ydwsVWNNvRioTvx8ZL284U6eRqZJJZYebRItVpVLerqW6cHr5LKnRlviDFgj0ljLh42kdgoESyXEovGPTpRWSHPP20sYYz4zDlIjtYK2FTfBsrbvNEsRrbDzbyzhMczCLB9ADQXHcyPP32VpGdd0DDv8GiY9HZm6Vz7cd324aRTzVjhSsOWJu43TOWx5ocQgg2ZJnqNuY2ay2AoU4cXGSc5GBUonk37zz1KqQageuedR1zfzAbWyxVMzEilsppUUblG7UlBOrfuAKDhGoSK500iNTgiNJe58t65OsJH9WDwyxHWJWcyYMShwdsVFWYw45W0fjHViAgd33b1A1VbUgUkfwXgM5yA8Nq5H3JtnkGBgsjNcfZOeaOrX3zKadPOdsSpULpMqR9S2ZYP6EdDjejecG9OeESK9TVXY1qZrBejg7Q1woGFVtJY3cz3R5kg0Sg9BoCp35UjL6XCE8cI8cMpYgmWa3iIy15p4qcCbLd4Z7oNInxl5Iof4AQiKzQxdS2wU1vhK0eZBv6NOHiuWBK0OucLQSvJGeqbpPS0FWT3TF66u3UfmXGUPvNXgGGmjaKc0M7BGD3SDSkmNvOxtxTAKGg9jutYSAJFzbRCO1PsTz4HNpWwtNLhg86Ap0Dj4RzJHeZ4CuZKyC65EQBkz6a9nmpuc4m5PA6vau5MZra7UkB2Y8h5xEiye6OpyLQyuJFfw2rCxsubygpb9rDOzno2Mv0E616bwSP9MDIR2V61RIZOkDOjun31TJJ3v5hdkwEm3NzsuKhrcbHHP7M8SqfoxAJnUCsQbz2f9nOYmemZvXFJIeEPNVUHTNQFl6lBAWvZpn6E1EMI6ddNANPISy1DZJwheWONdL4MKjxeIUbRoP91JfFQkF98D1KKB4yuHGGjNoanGklLSy8oFs11mynV0hZ83OzedcnyzZbMnQ5vVPXrVm7JV1mwd',0),(79,0,'config','config_compression','0',0),(80,0,'config','config_error_display','1',0),(81,0,'config','config_error_log','1',0),(82,0,'config','config_error_filename','error.log',0),(83,0,'config','config_google_analytics','',0),(84,0,'config','config_mail_protocol','mail',0),(85,0,'config','config_mail_parameter','',0),(86,0,'config','config_mail_smtp_hostname','',0),(87,0,'config','config_mail_smtp_username','',0),(88,0,'config','config_mail_smtp_password','',0),(89,0,'config','config_mail_smtp_port','25',0),(90,0,'config','config_mail_smtp_timeout','5',0),(91,0,'config','config_mail_alert','[\"order\"]',1),(92,0,'config','config_captcha','basic_captcha',0),(93,0,'config','config_captcha_page','[\"review\",\"return\",\"contact\"]',1),(94,0,'config','config_login_attempts','5',0),(95,0,'free_checkout','free_checkout_status','1',0),(96,0,'free_checkout','free_checkout_order_status_id','1',0),(97,0,'shipping','shipping_sort_order','3',0),(98,0,'sub_total','sub_total_sort_order','1',0),(99,0,'sub_total','sub_total_status','1',0),(100,0,'tax','tax_status','1',0),(101,0,'total','total_sort_order','9',0),(102,0,'total','total_status','1',0),(103,0,'tax','tax_sort_order','5',0),(104,0,'free_checkout','free_checkout_sort_order','1',0),(105,0,'cod','cod_sort_order','5',0),(106,0,'cod','cod_total','100',0),(107,0,'cod','cod_order_status_id','1',0),(108,0,'cod','cod_geo_zone_id','0',0),(109,0,'cod','cod_status','1',0),(110,0,'shipping','shipping_status','1',0),(111,0,'shipping','shipping_estimator','1',0),(112,0,'coupon','coupon_sort_order','4',0),(113,0,'coupon','coupon_status','1',0),(114,0,'flat','flat_sort_order','1',0),(115,0,'flat','flat_status','1',0),(116,0,'flat','flat_geo_zone_id','0',0),(117,0,'flat','flat_tax_class_id','9',0),(118,0,'flat','flat_cost','80',0),(119,0,'credit','credit_sort_order','7',0),(120,0,'credit','credit_status','1',0),(121,0,'reward','reward_sort_order','2',0),(122,0,'reward','reward_status','1',0),(123,0,'category','category_status','1',0),(124,0,'account','account_status','1',0),(125,0,'affiliate','affiliate_status','1',0),(126,0,'theme_default','theme_default_product_limit','15',0),(127,0,'theme_default','theme_default_product_description_length','100',0),(128,0,'theme_default','theme_default_image_thumb_width','640',0),(129,0,'theme_default','theme_default_image_thumb_height','640',0),(130,0,'theme_default','theme_default_image_popup_width','640',0),(131,0,'theme_default','theme_default_image_popup_height','640',0),(132,0,'theme_default','theme_default_image_category_width','80',0),(133,0,'theme_default','theme_default_image_category_height','80',0),(134,0,'theme_default','theme_default_image_product_width','240',0),(135,0,'theme_default','theme_default_image_product_height','240',0),(136,0,'theme_default','theme_default_image_additional_width','74',0),(137,0,'theme_default','theme_default_image_additional_height','74',0),(138,0,'theme_default','theme_default_image_related_width','240',0),(139,0,'theme_default','theme_default_image_related_height','240',0),(140,0,'theme_default','theme_default_image_compare_width','90',0),(141,0,'theme_default','theme_default_image_compare_height','90',0),(142,0,'theme_default','theme_default_image_wishlist_width','47',0),(143,0,'theme_default','theme_default_image_wishlist_height','47',0),(144,0,'theme_default','theme_default_image_oc_height','47',0),(145,0,'theme_default','theme_default_image_oc_width','47',0),(146,0,'theme_default','theme_default_image_location_height','50',0),(147,0,'theme_default','theme_default_image_location_width','268',0),(148,0,'theme_default','theme_default_directory','default',0),(149,0,'theme_default','theme_default_status','1',0),(150,0,'dashboard_order','dashboard_order_sort_order','1',0),(151,0,'dashboard_order','dashboard_order_status','1',0),(152,0,'dashboard_order','dashboard_order_width','3',0),(153,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(154,0,'dashboard_sale','dashboard_sale_status','1',0),(155,0,'dashboard_sale','dashboard_sale_width','3',0),(156,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(157,0,'dashboard_customer','dashboard_customer_status','1',0),(158,0,'dashboard_customer','dashboard_customer_width','3',0),(159,0,'dashboard_online','dashboard_online_sort_order','4',0),(160,0,'dashboard_online','dashboard_online_status','1',0),(161,0,'dashboard_online','dashboard_online_width','3',0),(162,0,'dashboard_recent','dashboard_recent_sort_order','5',0),(163,0,'dashboard_recent','dashboard_recent_status','1',0),(164,0,'dashboard_recent','dashboard_recent_width','12',0),(165,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(166,0,'dashboard_chart','dashboard_chart_status','1',0),(167,0,'dashboard_chart','dashboard_chart_width','8',0),(168,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(169,0,'dashboard_activity','dashboard_activity_status','1',0),(170,0,'dashboard_activity','dashboard_activity_width','4',0);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}stock_status`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}stock_status`
--

LOCK TABLES `${OPENCART_PREFIX}stock_status` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}stock_status` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}stock_status` VALUES (7,1,'有現貨'),(8,1,'預購'),(5,1,'缺貨'),(6,1,'需等 2-3 天');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}store`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}store`
--

LOCK TABLES `${OPENCART_PREFIX}store` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}store` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}tax_class`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}tax_class`
--

LOCK TABLES `${OPENCART_PREFIX}tax_class` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_class` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}tax_class` VALUES (9,'應稅商品','應稅商品','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'下載型商品','下載型商品，如軟體、圖檔。','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}tax_rate`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}tax_rate`
--

LOCK TABLES `${OPENCART_PREFIX}tax_rate` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rate` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}tax_rate` VALUES (86,5,'營業稅 (5%)',5.0000,'P','2011-03-09 21:17:10','2016-05-18 10:29:46');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}tax_rate_to_customer_group`
--

LOCK TABLES `${OPENCART_PREFIX}tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}tax_rule`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}tax_rule`
--

LOCK TABLES `${OPENCART_PREFIX}tax_rule` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rule` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}theme`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}theme`
--

LOCK TABLES `${OPENCART_PREFIX}theme` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}translation`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}translation`
--

LOCK TABLES `${OPENCART_PREFIX}translation` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}upload`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}upload`
--

LOCK TABLES `${OPENCART_PREFIX}upload` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}url_alias`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}url_alias`
--

LOCK TABLES `${OPENCART_PREFIX}url_alias` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}url_alias` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}url_alias` VALUES (824,'product_id=48','ipod-classic'),(836,'category_id=20','desktops'),(834,'category_id=26','pc'),(835,'category_id=27','mac'),(730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(768,'product_id=42','test'),(789,'category_id=34','mp3-players'),(781,'category_id=36','test2'),(774,'category_id=18','laptop-notebook'),(775,'category_id=46','macs'),(776,'category_id=45','windows'),(777,'category_id=25','component'),(778,'category_id=29','mouse'),(779,'category_id=28','monitor'),(780,'category_id=35','test1'),(782,'category_id=30','printer'),(783,'category_id=31','scanner'),(784,'category_id=32','web-camera'),(785,'category_id=57','tablet'),(786,'category_id=17','software'),(787,'category_id=24','smartphone'),(788,'category_id=33','camera'),(790,'category_id=43','test11'),(791,'category_id=44','test12'),(792,'category_id=47','test15'),(793,'category_id=48','test16'),(794,'category_id=49','test17'),(795,'category_id=50','test18'),(796,'category_id=51','test19'),(797,'category_id=52','test20'),(798,'category_id=58','test25'),(799,'category_id=53','test21'),(800,'category_id=54','test22'),(801,'category_id=55','test23'),(802,'category_id=56','test24'),(803,'category_id=38','test4'),(804,'category_id=37','test5'),(805,'category_id=39','test6'),(806,'category_id=40','test7'),(807,'category_id=41','test8'),(808,'category_id=42','test9'),(809,'product_id=30','canon-eos-5d'),(840,'product_id=47','hp-lp3065'),(811,'product_id=28','htc-touch-hd'),(812,'product_id=43','macbook'),(813,'product_id=44','macbook-air'),(814,'product_id=45','macbook-pro'),(816,'product_id=31','nikon-d300'),(817,'product_id=29','palm-treo-pro'),(818,'product_id=35','product-8'),(819,'product_id=49','samsung-galaxy-tab-10-1'),(820,'product_id=33','samsung-syncmaster-941bw'),(821,'product_id=46','sony-vaio'),(837,'product_id=41','imac'),(823,'product_id=40','iphone'),(825,'product_id=36','ipod-nano'),(826,'product_id=34','ipod-shuffle'),(827,'product_id=32','ipod-touch'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}user`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}user`
--

LOCK TABLES `${OPENCART_PREFIX}user` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}user` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}user` VALUES (1,1,'admin','e83bb2957ae5b80887561e9b82c183d4ba76f9e8','kMYtx10bq','John','Doe','admin@localhost.com','','','',1,'2017-09-16 12:04:13');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}user_group`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}user_group`
--

LOCK TABLES `${OPENCART_PREFIX}user_group` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}user_group` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}user_group` VALUES (1,'最高管理員','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"event\\/compatibility\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/account\",\"extension\\/module\\/affiliate\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),(10,'管理員','');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}voucher`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}voucher`
--

LOCK TABLES `${OPENCART_PREFIX}voucher` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}voucher_history`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}voucher_history`
--

LOCK TABLES `${OPENCART_PREFIX}voucher_history` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}voucher_theme`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}voucher_theme`
--

LOCK TABLES `${OPENCART_PREFIX}voucher_theme` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_theme` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}voucher_theme_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}voucher_theme_description`
--

LOCK TABLES `${OPENCART_PREFIX}voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_theme_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}voucher_theme_description` VALUES (6,1,'聖誕節'),(7,1,'生日'),(8,1,'一般');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}weight_class`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}weight_class`
--

LOCK TABLES `${OPENCART_PREFIX}weight_class` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}weight_class` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}weight_class_description`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}weight_class_description`
--

LOCK TABLES `${OPENCART_PREFIX}weight_class_description` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}weight_class_description` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}weight_class_description` VALUES (1,1,'公斤','kg'),(2,1,'公克','g'),(5,1,'磅 ','lb'),(6,1,'盎司','oz');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}zone`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}zone`
--

LOCK TABLES `${OPENCART_PREFIX}zone` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}zone` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}zone` VALUES (3135,206,'基隆市','KL',1),(3136,206,'臺北市','TP',1),(3137,206,'新北市','NTP',1),(3138,206,'桃園市','TY',1),(3139,206,'新竹市','HC',1),(3140,206,'新竹縣','HCC',1),(3141,206,'苗栗縣','MLC',1),(3142,206,'臺中市','TC',1),(3143,206,'彰化縣','JHC',1),(3144,206,'南投縣','NTC',1),(3145,206,'雲林縣','ULC',1),(3146,206,'嘉義市','JY',1),(3147,206,'嘉義縣','JYC',1),(3148,206,'臺南市','TN',1),(3149,206,'高雄市','KH',1),(3150,206,'屏東縣','PTC',1),(3151,206,'臺東縣','TTC',1),(3152,206,'花蓮縣','HLC',1),(3153,206,'宜蘭縣','YLC',1),(3154,206,'澎湖縣','PHC',1),(3155,206,'金門縣','KMC',1),(3156,206,'連江縣','LCHC',1);
/*!40000 ALTER TABLE `${OPENCART_PREFIX}zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `${OPENCART_PREFIX}zone_to_geo_zone`
--

DROP TABLE IF EXISTS `${OPENCART_PREFIX}zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `${OPENCART_PREFIX}zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `${OPENCART_PREFIX}zone_to_geo_zone`
--

LOCK TABLES `${OPENCART_PREFIX}zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `${OPENCART_PREFIX}zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `${OPENCART_PREFIX}zone_to_geo_zone` VALUES (125,206,3154,3,'2016-05-09 14:46:15','0000-00-00 00:00:00'),(126,206,3155,3,'2016-05-09 14:46:15','0000-00-00 00:00:00'),(127,206,3156,3,'2016-05-09 14:46:15','0000-00-00 00:00:00'),(128,206,3135,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(129,206,3136,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(130,206,3137,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(131,206,3138,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(132,206,3139,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(133,206,3140,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(134,206,3141,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(135,206,3142,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(136,206,3143,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(137,206,3144,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(138,206,3145,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(139,206,3146,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(140,206,3147,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(141,206,3148,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(142,206,3149,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(143,206,3150,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(144,206,3151,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(145,206,3152,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(146,206,3153,4,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(147,206,3135,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(148,206,3136,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(149,206,3137,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(150,206,3138,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(151,206,3139,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(152,206,3140,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(153,206,3141,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(154,206,3142,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(155,206,3143,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(156,206,3144,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(157,206,3145,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(158,206,3146,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(159,206,3147,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(160,206,3148,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(161,206,3149,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(162,206,3150,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(163,206,3151,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(164,206,3152,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(165,206,3153,5,'2016-05-09 14:40:38','0000-00-00 00:00:00'),(166,206,3154,5,'2016-05-09 14:46:15','0000-00-00 00:00:00'),(167,206,3155,5,'2016-05-09 14:46:15','0000-00-00 00:00:00'),(168,206,3156,5,'2016-05-09 14:46:15','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `${OPENCART_PREFIX}zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-16 20:05:11

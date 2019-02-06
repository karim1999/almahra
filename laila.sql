-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: laila
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `auths`
--

DROP TABLE IF EXISTS `auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auths` (
  `SERVER` char(128) NOT NULL,
  `USER` char(128) NOT NULL,
  `PASS` char(128) NOT NULL,
  PRIMARY KEY (`SERVER`,`USER`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auths`
--

LOCK TABLES `auths` WRITE;
/*!40000 ALTER TABLE `auths` DISABLE KEYS */;
/*!40000 ALTER TABLE `auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awaiting_verification`
--

DROP TABLE IF EXISTS `awaiting_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awaiting_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_generated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `code` int(11) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `region` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awaiting_verification`
--

LOCK TABLES `awaiting_verification` WRITE;
/*!40000 ALTER TABLE `awaiting_verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `awaiting_verification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `img` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (488,98,1,'تخفيضات',NULL),(489,98,1,'مقاس كبير','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_489.jpg'),(490,98,1,'test','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_490.jpg'),(491,94,1,'المكياج','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_491.jpg'),(492,99,1,'الجديد','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_492.jpg'),(493,99,1,'الملابس','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_493.jpg'),(494,97,1,'المكياج','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_494.jpg'),(495,97,1,'تخفيضات','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_495.jpg'),(496,104,1,'under 50','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_496.jpg'),(497,104,1,'under 40','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_497.jpg'),(498,104,1,'under 30','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_498.jpg'),(499,104,1,'under 10','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_499.jpg'),(500,105,1,'badroom','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_500.jpg'),(501,105,1,'living room','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_501.jpg'),(502,105,1,'kitchen','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_502.jpg'),(503,106,1,'flats','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_503.jpg'),(504,106,1,'slipper','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_504.jpg'),(505,106,1,'sneakers','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_505.jpg'),(506,106,1,'heeks','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_506.jpg'),(507,106,1,'boots','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_507.jpg'),(508,107,1,'Arabian style','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_508.jpg'),(510,107,1,'abayas style','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_510.jpg'),(511,107,1,'night uear','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_511.jpg'),(512,102,1,'shoes','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_512.jpg'),(513,103,1,'amr','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_513.jpg'),(514,109,1,'makeup','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_514.jpg'),(515,108,1,'bags','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_515.jpg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `code` text NOT NULL,
  `status` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expo_push_tokens`
--

DROP TABLE IF EXISTS `expo_push_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expo_push_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expo_push_tokens`
--

LOCK TABLES `expo_push_tokens` WRITE;
/*!40000 ALTER TABLE `expo_push_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `expo_push_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_lists`
--

DROP TABLE IF EXISTS `ip_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_lists` (
  `STARTADDRESS` varbinary(16) NOT NULL DEFAULT '',
  `ENDADDRESS` varbinary(16) NOT NULL DEFAULT '',
  `TYPE` int(1) NOT NULL DEFAULT '0',
  `COMMENT` char(255) DEFAULT NULL,
  PRIMARY KEY (`STARTADDRESS`,`ENDADDRESS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_lists`
--

LOCK TABLES `ip_lists` WRITE;
/*!40000 ALTER TABLE `ip_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_data`
--

DROP TABLE IF EXISTS `meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_data`
--

LOCK TABLES `meta_data` WRITE;
/*!40000 ALTER TABLE `meta_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `info` varchar(512) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `img` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (51,91,'دعايه','الكثير هنا',1,'http://142.44.242.171:90/assets/static/images/uploaded_images/offers_images/offer_51.jpg'),(52,91,'تخفيضات','هنا',1,'http://142.44.242.171:90/assets/static/images/uploaded_images/offers_images/offer_52.jpg'),(53,91,'العرض الان','العرض ينتهي بسرعه',1,'http://142.44.242.171:90/assets/static/images/uploaded_images/offers_images/offer_53.jpg');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `delivery_cost` int(11) NOT NULL DEFAULT '0',
  `info` varchar(512) CHARACTER SET utf8 NOT NULL,
  `location` varchar(128) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `time_ordered` datetime NOT NULL,
  `time_accepted` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `ids` text,
  `cost_dicounted` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `info` varchar(512) CHARACTER SET utf8 NOT NULL,
  `cost` decimal(8,3) NOT NULL,
  `status` int(11) NOT NULL,
  `img` varchar(256) CHARACTER SET utf8 NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6301 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6257,98,488,'test','الكثير هنا',20.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6257.jpg',0),(6258,98,488,'test','الكثير هنا',20.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6258.jpg',0),(6259,98,488,'المكياج','الكثير هنا',20.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6259.jpg',0),(6260,98,488,'المكياج','الكثير هنا',900.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6260.jpg',0),(6261,98,488,'المكياج','الكثير هنا',900.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6261.jpg',0),(6262,98,488,'المكياج','الكثير هنا',0.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6262.jpg',0),(6263,98,488,'المكياج','الكثير هنا',0.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6263.jpg',0),(6264,98,488,'المكياج','الكثير هنا',900.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6264.jpg',0),(6265,98,490,'المكياج','الكثير هنا',900.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6265.jpg',0),(6266,104,496,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6266.jpg',0),(6267,104,496,'test','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6267.jpg',0),(6268,104,496,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6268.jpg',0),(6269,104,497,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6269.jpg',0),(6270,104,497,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6270.jpg',0),(6271,104,497,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6271.jpg',0),(6272,104,496,'New arrivals','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',79.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6272.jpg',0),(6273,104,498,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6273.jpg',0),(6274,104,498,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6274.jpg',0),(6275,104,496,'New arrivals','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6275.jpg',0),(6276,104,496,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6276.jpg',0),(6277,104,499,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6277.jpg',0),(6278,104,499,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6278.jpg',0),(6279,104,496,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6279.jpg',0),(6280,104,499,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6280.jpg',0),(6281,105,500,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6281.jpg',0),(6282,105,501,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6282.jpg',0),(6283,105,502,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',40.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6283.jpg',0),(6284,105,500,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6284.jpg',0),(6285,105,501,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6285.jpg',0),(6286,105,502,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',78.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6286.jpg',0),(6287,106,503,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6287.jpg',0),(6288,106,503,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6288.jpg',0),(6289,106,504,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',50.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6289.jpg',0),(6290,106,504,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',78.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6290.jpg',0),(6291,106,505,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',79.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6291.jpg',0),(6292,106,505,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6292.jpg',0),(6293,107,508,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6293.jpg',0),(6294,107,508,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',79.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6294.jpg',0),(6295,107,510,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',78.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6295.jpg',0),(6296,107,510,'XC com zeban','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6296.jpg',0),(6297,102,512,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',78.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6297.jpg',0),(6298,103,513,'shoes','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6298.jpg',0),(6299,109,514,'hgaun','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',78.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6299.jpg',0),(6300,108,515,'amr','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, re',89.000,1,'http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/products/product_6300.jpg',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `rating` decimal(8,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `info` varchar(512) CHARACTER SET utf8 NOT NULL,
  `location` varchar(128) CHARACTER SET utf8 NOT NULL,
  `cost` decimal(8,3) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seen_offers`
--

DROP TABLE IF EXISTS `seen_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seen_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seen_offers`
--

LOCK TABLES `seen_offers` WRITE;
/*!40000 ALTER TABLE `seen_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `seen_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `display_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `min_delivery_cost` decimal(8,3) NOT NULL,
  `delivery_cost` decimal(8,3) NOT NULL,
  `delivery_time` int(11) NOT NULL,
  `address` varchar(128) CHARACTER SET utf8 NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `region` varchar(64) CHARACTER SET utf8 NOT NULL,
  `img` varchar(256) CHARACTER SET utf8 NOT NULL,
  `info` varchar(50) DEFAULT NULL,
  `store_category_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (102,'New_arrivals','c4ca4238a0b923820dcc509a6f75849b',1,'New arrivals',0.000,12.000,30,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_102.jpg',NULL,2,1),(103,'New_arrivals','c4ca4238a0b923820dcc509a6f75849b',1,'New arrivals',0.000,12.000,30,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_103.jpg',NULL,1,1),(104,'outlet','c4ca4238a0b923820dcc509a6f75849b',1,'outlet',0.000,12.000,10,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_104.jpg',NULL,1,1),(105,'Home_and_Living','c4ca4238a0b923820dcc509a6f75849b',1,'Home and Living',0.000,12.000,50,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_105.jpg',NULL,2,1),(106,'shoes','c4ca4238a0b923820dcc509a6f75849b',1,'shoes',0.000,12.000,10,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_106.jpg',NULL,2,1),(107,'clothing','c4ca4238a0b923820dcc509a6f75849b',1,'clothing',0.000,12.000,40,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_107.jpg',NULL,2,1),(108,'accessories_and_bags','c4ca4238a0b923820dcc509a6f75849b',1,'accessories and bags',0.000,12.000,60,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_108.jpg',NULL,2,1),(109,'','c4ca4238a0b923820dcc509a6f75849b',1,'Mackup and beauty',0.000,12.000,70,'aaaa',1,1,'0','http://142.44.242.171:90/assets/static/images/uploaded_images/store_images/store_109.jpg',NULL,1,1);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `sender_type` int(11) NOT NULL,
  `message` varchar(512) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_messages`
--

LOCK TABLES `ticket_messages` WRITE;
/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_push_tokens`
--

DROP TABLE IF EXISTS `user_push_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_push_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_push_tokens`
--

LOCK TABLES `user_push_tokens` WRITE;
/*!40000 ALTER TABLE `user_push_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_push_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `is_banned` int(11) NOT NULL DEFAULT '0',
  `location` varchar(128) CHARACTER SET utf8 NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `region` varchar(64) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'1140463805','karim.elbadry2@gmail.com','karim1999','070839435f315f8a0815b5bc26396079',0,'egypt',1,1,'egypt');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 18:20:23

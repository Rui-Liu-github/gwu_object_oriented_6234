-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: car_rent
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `carid` int NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `rentprice` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `isrenting` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'A0001','SUV','Porsche','Grey','100000.0','1200.0','10000.0','0','04ec8181a73d494d9b01938cd9af7a12.jpg',''),(2,'A0002','SUV','Nissan','Red','50000.0','500.0','3000.0','0','d6311194fadb414db5c9c2438bb565bf.jpg',''),(3,'A0003','SEDAN','Nissan','Red','30000','300.0','3000.0','0','2ae54bee207a4ec48cd0c5eaa00fd61d.jpg',''),(4,'A0004','SUV','BMW','Black','80000','500.0','10000.0','0','46368ca395aa4b3397ef2cd1ebd417b1.jpg',''),(5,'B0001','SEDAN','Honda','Black','20000','300.0','3000.0','0','f06f20d547094e6fb78e20b48cc65f37.jpg','');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checktable`
--

DROP TABLE IF EXISTS `checktable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checktable` (
  `checkid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `rentid` varchar(255) DEFAULT NULL,
  `checkno` varchar(255) DEFAULT NULL,
  `checktime` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `paying` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`checkid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checktable`
--

LOCK TABLES `checktable` WRITE;
/*!40000 ALTER TABLE `checktable` DISABLE KEYS */;
INSERT INTO `checktable` VALUES (1,'admin','1','1552028217071','2019-03-08 14:56:57','NO','0.0','','1'),(2,'admin','3','1552033839251','2019-03-08 16:30:39','NO','0.0','','1'),(3,'admin','4','1669118178654','2022-11-22 19:56:18','',NULL,'',NULL),(4,'admin','8','1712638341349','2024-04-09 00:52:21','',NULL,'','1'),(5,'admin','7','1712675478949','2024-04-09 11:11:18','',NULL,'',NULL),(6,'admin','6','1712675489745','2024-04-09 11:11:29','',NULL,'',NULL),(7,'admin','5','1712676289787','2024-04-09 11:24:49','NO',NULL,'',NULL),(8,'admin','10','1712689789300','2024-04-09 15:09:49','NO',NULL,'',NULL),(9,'admin','9','1712689818417','2024-04-09 15:10:18','NO',NULL,'',NULL),(10,'admin','11','1712690656141','2024-04-09 15:24:16','NO',NULL,'',NULL),(11,'admin','12','1712691820519','2024-04-09 15:43:40','NO',NULL,'123','1'),(12,'admin','13','1712697278588','2024-04-09 17:14:38','door','800.0','','1'),(13,'admin','14','1712702556606','2024-04-09 18:42:36','NO',NULL,'',NULL),(14,'admin','15','1712705675752','2024-04-09 19:34:35','door','1000.0','','1'),(15,'admin','16','1712776439239','2024-04-10 15:13:59','NO',NULL,'',NULL);
/*!40000 ALTER TABLE `checktable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custId` int NOT NULL AUTO_INCREMENT,
  `identity` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'622565656546565656','111111','Jack','1234 st','13656565656','SDE','M'),(4,'123456',NULL,'Gaofeng','5787 WINSTON CT','123456','SDE','M'),(7,'456677',NULL,'caiyiran','5787 WINSTON CT','34234234','SDE','M'),(10,'1234567890',NULL,'Demo','king ave','5715316675','SDE','F');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `loginid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  `logintime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
INSERT INTO `loginlog` VALUES (1,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 14:36:57'),(2,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 14:44:16'),(3,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 14:44:48'),(4,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 14:56:31'),(5,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 15:14:46'),(6,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 16:04:29'),(7,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-07 17:00:41'),(8,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 09:56:42'),(9,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 10:22:13'),(10,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 10:24:07'),(11,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 10:25:12'),(12,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 10:32:38'),(13,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 10:32:57'),(14,NULL,'llq','0:0:0:0:0:0:0:1','2019-03-08 10:35:12'),(15,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 13:11:51'),(16,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 13:21:31'),(17,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 13:59:50'),(18,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 14:34:25'),(19,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 14:36:57'),(20,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 14:56:37'),(21,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 15:07:30'),(22,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 15:14:16'),(23,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 16:07:54'),(24,NULL,'llq','0:0:0:0:0:0:0:1','2019-03-08 16:18:23'),(25,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 16:18:48'),(26,NULL,'admin','0:0:0:0:0:0:0:1','2019-03-08 16:24:44'),(27,NULL,'admin','0:0:0:0:0:0:0:1','2022-11-22 19:51:20'),(28,NULL,'admin','0:0:0:0:0:0:0:1','2022-11-23 22:16:34'),(29,NULL,'admin','0:0:0:0:0:0:0:1','2022-11-23 22:23:35'),(30,NULL,'admin','0:0:0:0:0:0:0:1','2022-11-23 22:28:58'),(31,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 00:46:42'),(32,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 00:46:42'),(33,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 00:51:02'),(34,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 10:57:20'),(35,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:24:24'),(36,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:31:51'),(37,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:39:31'),(38,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:39:31'),(39,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:46:16'),(40,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 11:59:27'),(41,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 14:11:31'),(42,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 15:09:16'),(43,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 15:14:40'),(44,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 15:33:57'),(45,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 16:25:38'),(46,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 17:03:25'),(47,NULL,'admin2','0:0:0:0:0:0:0:1','2024-04-09 17:07:07'),(48,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 17:07:38'),(49,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 18:34:29'),(50,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 19:13:29'),(51,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 19:14:53'),(52,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 19:19:04'),(53,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-09 19:26:41'),(54,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-10 14:50:22'),(55,NULL,'admin','0:0:0:0:0:0:0:1','2024-04-10 15:07:16');
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logtable`
--

DROP TABLE IF EXISTS `logtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logtable` (
  `logid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `actiontime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logtable`
--

LOCK TABLES `logtable` WRITE;
/*!40000 ALTER TABLE `logtable` DISABLE KEYS */;
INSERT INTO `logtable` VALUES (100,'8','admin','Add User','2024-04-09 12:00:34'),(101,'8','admin','Add User','2024-04-09 12:00:35'),(102,'8','admin','Add User','2024-04-09 14:36:33'),(103,'8','admin','Add User','2024-04-09 14:36:58'),(104,'8','admin','Add User','2024-04-09 14:36:59'),(105,'8','admin','Return','2024-04-09 15:09:55'),(106,'8','admin','Return','2024-04-09 15:10:26'),(107,'8','admin','Customer Delete','2024-04-09 15:10:47'),(108,'8','admin','Car Modify','2024-04-09 15:15:44'),(109,'8','admin','Role Modify','2024-04-09 15:17:39'),(110,'8','admin','Add Customer','2024-04-09 15:18:24'),(111,'8','admin','Customer Modify','2024-04-09 15:19:07'),(112,'8','admin','Customer Delete','2024-04-09 15:19:12'),(113,'8','admin','Close Order','2024-04-09 15:21:35'),(114,'8','admin','Modify Order','2024-04-09 15:22:56'),(115,'8','admin','Return','2024-04-09 15:24:58'),(116,'8','admin','Add User','2024-04-09 15:34:19'),(117,'8','admin','Car Modify','2024-04-09 15:35:07'),(118,'8','admin','Role Modify','2024-04-09 15:37:22'),(119,'8','admin','Add User','2024-04-09 15:37:25'),(120,'8','admin','Add Role','2024-04-09 15:37:57'),(121,'8','admin','Customer Delete','2024-04-09 15:38:41'),(122,'8','admin','Add Customer','2024-04-09 15:39:32'),(123,'8','admin','Customer Modify','2024-04-09 15:39:49'),(124,'8','admin','Close Order','2024-04-09 15:42:25'),(125,'8','admin','Modify Order','2024-04-09 15:43:06'),(126,'8','admin','Return','2024-04-09 15:44:00'),(127,'8','admin','Modify Inspection','2024-04-09 15:45:01'),(128,'8','admin','Add User','2024-04-09 16:36:20'),(129,'8','admin','Role Modify','2024-04-09 17:06:13'),(130,'8','admin','Role Modify','2024-04-09 17:06:21'),(131,'8','admin','Add User','2024-04-09 17:07:58'),(132,'8','admin','Add User','2024-04-09 17:08:24'),(133,'8','admin','Customer Modify','2024-04-09 17:09:25'),(134,'8','admin','Add Customer','2024-04-09 17:10:14'),(135,'8','admin','Close Order','2024-04-09 17:12:36'),(136,'8','admin','Modify Order','2024-04-09 17:13:49'),(137,'8','admin','Return','2024-04-09 17:14:56'),(138,'8','admin','Modify Inspection','2024-04-09 17:15:18'),(139,'8','admin','Add User','2024-04-09 17:16:25'),(140,'8','admin','Car Modify','2024-04-09 18:35:50'),(141,'8','admin','Role Modify','2024-04-09 18:36:47'),(142,'8','admin','Modify User','2024-04-09 18:37:23'),(143,'8','admin','Customer Modify','2024-04-09 18:37:46'),(144,'8','admin','Customer Delete','2024-04-09 18:37:57'),(145,'8','admin','Add Customer','2024-04-09 18:38:41'),(146,'8','admin','Close Order','2024-04-09 18:40:43'),(147,'8','admin','Modify Order','2024-04-09 18:41:07'),(148,'8','admin','Return','2024-04-09 18:42:54'),(149,'8','admin','Car Modify','2024-04-09 19:20:10'),(150,'8','admin','Role Modify','2024-04-09 19:21:09'),(151,'8','admin','Role Modify','2024-04-09 19:21:27'),(152,'8','admin','Delete User','2024-04-09 19:21:48'),(153,'8','admin','Modify User','2024-04-09 19:22:01'),(154,'8','admin','Customer Delete','2024-04-09 19:22:35'),(155,'8','admin','Customer Modify','2024-04-09 19:22:38'),(156,'8','admin','Add Customer','2024-04-09 19:23:17'),(157,'8','admin','Car Modify','2024-04-09 19:27:45'),(158,'8','admin','Role Modify','2024-04-09 19:28:59'),(159,'8','admin','Modify User','2024-04-09 19:29:43'),(160,'8','admin','Add User','2024-04-09 19:29:51'),(161,'8','admin','Customer Delete','2024-04-09 19:30:30'),(162,'8','admin','Customer Modify','2024-04-09 19:30:34'),(163,'8','admin','Add Customer','2024-04-09 19:31:05'),(164,'8','admin','Close Order','2024-04-09 19:33:16'),(165,'8','admin','Modify Order','2024-04-09 19:33:50'),(166,'8','admin','Return','2024-04-09 19:34:47'),(167,'8','admin','Modify Inspection','2024-04-09 19:35:35'),(168,'8','admin','Close Order','2024-04-10 15:11:55'),(169,'8','admin','Modify Order','2024-04-10 15:12:29'),(170,'8','admin','Return','2024-04-10 15:14:11'),(171,'8','admin','Add User','2024-04-10 15:15:11');
/*!40000 ALTER TABLE `logtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menuId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (2,'Car','1',''),(3,'Query','2','findCarHandler'),(4,'Add','2','addCar'),(5,'Role','1',NULL),(6,'Query','5','findRoleByName'),(7,'User','1',NULL),(8,'Query','7','findUsers'),(9,'Add','7','addUser'),(10,'Customer','1',NULL),(11,'Query','10','searchCust'),(12,'Add','10','addCust'),(13,'Order','1',NULL),(14,'Query','13','findRentTable'),(15,'Rental','1',NULL),(16,'Select Car','15','findCarForCustPage'),(17,'Inspection','1',NULL),(18,'Query','17','findChecktable'),(19,'Return ','1',NULL),(20,'Car','19','addCheckableByRentNo'),(21,'Report','1',NULL),(22,'Current Month','21','StatisticsCarInMonth');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renttable`
--

DROP TABLE IF EXISTS `renttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renttable` (
  `rentid` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `custIdentity` varchar(255) DEFAULT NULL,
  `carNumber` varchar(255) DEFAULT NULL,
  `rentNo` varchar(255) DEFAULT NULL,
  `imprest` varchar(255) DEFAULT NULL,
  `pricePayAble` varchar(255) DEFAULT NULL,
  `realPay` varchar(255) DEFAULT NULL,
  `beginTime` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `realEndTime` varchar(255) DEFAULT NULL,
  `rentFlag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rentid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renttable`
--

LOCK TABLES `renttable` WRITE;
/*!40000 ALTER TABLE `renttable` DISABLE KEYS */;
INSERT INTO `renttable` VALUES (1,'admin','622565656546565656','A0001','1552024829989','13200.0','1200.0','4000.0','2019-03-08','2019-03-09','2019-03-08 14:56:57','2'),(2,'admin','622565656546565656','A0002','1552025318216','5500.0','1500.0','5000.0','2019-03-01','2019-03-04','2019-03-03','3'),(3,'admin','622565656546565656','A0002','1552033748790','5500.0','1000.0','5000.0','2019-03-08','2019-03-10','2019-03-08 16:30:39','2'),(4,'admin','221109201909098878','A0001','1669118136449','13200.0','1200.0','100.0','2022-11-22','2022-11-23','2022-11-22 19:56:18','2'),(5,'admin','221109201909098878','A0002','1669213122129','5500.0','1000.0','1000.0','2022-11-23','2022-11-25','2024-04-09 11:24:49','2'),(6,'admin','221109201909098878','B0001','1669213497169','3300.0','600.0','1000.0','2022-11-23','2022-11-25','2024-04-09 11:11:29','2'),(7,'admin','622565656546565656','A0001','1712638047182','13200.0','10800.0','10800.0','2024-04-09','2024-04-18','2024-04-09 11:11:18','2'),(8,'admin','310103655564656865','A0003','1712638286964','3300.0','600.0','600.0','2024-04-09','2024-04-11','2024-04-09 00:52:21','2'),(9,'admin','123456','A0001','1712676798037','13200.0','4800.0','4800.0','2024-04-09','2024-04-13','2024-04-09 15:10:18','2'),(10,'admin','123456','A0002','1712677190236','5500.0','4000.0','4000.0','2024-04-09','2024-04-17','2024-04-09 15:09:49','2'),(11,'admin','123456789','B0001','1712690430673','3300.0','600.0','600.0','2024-04-09','2024-04-12','2024-04-09 15:24:16','2'),(12,'admin','123456789','A0001','1712691699162','13200.0','3600.0','3600.0','2024-04-09','2024-04-13','2024-04-09 15:43:40','2'),(13,'admin','456677','A0004','1712697119603','5500.0','3000.0','3000.0','2024-04-09','2024-04-16','2024-04-09 17:14:38','2'),(14,'admin','1234567890','A0001','1712702415861','13200.0','4800.0','4800.0','2024-04-09','2024-04-14','2024-04-09 18:42:36','2'),(15,'admin','1234567890','A0001','1712705574470','13200.0','4800.0','4800.0','2024-04-09','2024-04-15','2024-04-09 19:34:35','2'),(16,'admin','456677','A0001','1712776302447','13200.0','3600.0','3600.0','2024-04-10','2024-04-16','2024-04-10 15:13:59','2');
/*!40000 ALTER TABLE `renttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleid` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Administrator'),(2,'Sales Staff'),(3,'Vendor');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_menu`
--

DROP TABLE IF EXISTS `role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menuId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_menu`
--

LOCK TABLES `role_menu` WRITE;
/*!40000 ALTER TABLE `role_menu` DISABLE KEYS */;
INSERT INTO `role_menu` VALUES (1,2,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,7,2),(10,8,2),(11,9,2),(12,10,1),(13,11,1),(14,12,1),(15,13,1),(16,14,1),(17,15,1),(18,16,1),(19,17,1),(20,18,1),(21,19,1),(22,20,1),(23,21,1),(24,22,1),(25,10,2),(26,11,2),(27,13,2),(28,14,2),(29,15,2),(30,16,2),(31,17,2),(32,18,2),(33,19,2),(34,20,2),(35,21,2),(36,5,3),(37,10,2),(38,11,2),(39,13,2),(40,14,2),(41,15,2),(42,16,2),(43,17,2),(44,18,2),(45,19,2),(46,20,2),(47,21,2),(48,7,2),(49,8,2),(50,9,2),(51,10,2),(52,11,2),(53,12,2),(54,13,2),(55,14,2),(56,15,2),(57,16,2),(58,17,2),(59,18,2),(60,19,2),(61,20,2),(62,10,2),(63,11,2),(64,12,2),(65,13,2),(66,14,2),(67,15,2),(68,16,2),(69,17,2),(70,18,2),(71,19,2),(72,20,2),(73,2,3),(74,3,3),(75,4,3),(76,10,2),(77,11,2),(78,12,2),(79,13,2),(80,14,2),(81,15,2),(82,16,2),(83,17,2),(84,18,2),(85,19,2),(86,20,2),(87,2,3),(88,3,3),(89,4,3),(90,5,3),(91,10,2),(92,11,2),(93,12,2),(94,13,2),(95,14,2),(96,15,2),(97,16,2),(98,17,2),(99,18,2),(100,19,2),(101,20,2),(102,2,1),(103,3,1),(104,4,1),(105,5,1),(106,6,1),(107,7,1),(108,8,1),(109,9,1),(110,10,1),(111,11,1),(112,12,1),(113,13,1),(114,14,1),(115,15,1),(116,16,1),(117,17,1),(118,18,1),(119,19,1),(120,20,1),(121,21,1),(122,22,1),(123,2,3),(124,3,3),(125,4,3),(126,7,2),(127,8,2),(128,9,2),(129,10,2),(130,11,2),(131,12,2),(132,13,2),(133,14,2),(134,15,2),(135,16,2),(136,17,2),(137,18,2),(138,19,2),(139,20,2),(140,21,2);
/*!40000 ALTER TABLE `role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `userpwd` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'admin','admin','Gaofeng Zhu','q451656','Male','king ave','5715316675','CFO','1'),(9,'admin2','admin2','Test2','A21565456','Male','5787 WINSTON CT','13359806823','CEO','2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'car_rent'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 15:46:17

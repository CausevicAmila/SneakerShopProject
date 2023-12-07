-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sneakershop
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (3,'admin@gmail.com','admin12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (6,'Running'),(5,'Lifestyle'),(4,'Sport'),(7,'Basketball');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `colorID` int(11) NOT NULL AUTO_INCREMENT,
  `colorName` varchar(45) NOT NULL,
  `colorAvailability` enum('Yes','No') NOT NULL,
  PRIMARY KEY (`colorID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'White','Yes'),(2,'Black','Yes'),(3,'Blue','No'),(4,'Red','Yes'),(5,'Green','Yes'),(6,'Olive green','Yes'),(7,'Purple','Yes'),(8,'Midnight purple','Yes'),(9,'Pink','No'),(10,'Yellow','Yes');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderType` varchar(45) DEFAULT NULL,
  `orderDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `paymentType` varchar(45) DEFAULT NULL,
  `paymentDate` datetime NOT NULL,
  `paymentAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
  `productOrderID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`productOrderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productphoto`
--

DROP TABLE IF EXISTS `productphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productphoto` (
  `photoID` int(11) NOT NULL AUTO_INCREMENT,
  `pathToPhoto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`photoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productphoto`
--

LOCK TABLES `productphoto` WRITE;
/*!40000 ALTER TABLE `productphoto` DISABLE KEYS */;
/*!40000 ALTER TABLE `productphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(45) NOT NULL,
  `productAvailability` enum('Yes','No') DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productDescription` varchar(100) DEFAULT NULL,
  `productInStock` int(11) DEFAULT NULL,
  `productDiscount` float DEFAULT NULL,
  `productPhoto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nike Dunk High','Yes',34,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',232,21,'images/dunkhigh.jpg'),(6,'Adidas Boost','Yes',34,'Largest sportswear manufacturer in Europe, and the second largest in the world, after Nike.',23,23,'images/boost.jpg'),(7,'Adidas Smith','Yes',34,'Largest sportswear manufacturer in Europe, and the second largest in the world, after Nike.',23,23,'images/smith.jpg'),(9,'Adidas Superstar','Yes',34,'Largest sportswear manufacturer in Europe, and the second largest in the world, after Nike.',23,23,'images/superstar.jpg'),(10,'Adidas Gazelle','Yes',34,'Largest sportswear manufacturer in Europe, and the second largest in the world, after Nike.',23,23,'images/gazelle.jpg'),(31,'Nike Dunk High SE','Yes',150,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',10,0,'images/dunkhighspec.jpg'),(33,'Nike GT','Yes',120,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',10,0,'images/nikegt.jpg'),(15,'Jordan 11 Yellow','Yes',99,'Air Jordan is a line of basketball shoes and athletic apparel produced by Nike',20,0,'images/jordan11yellow.jpg'),(16,'Jordan 11','Yes',110,'Air Jordan is a line of basketball shoes and athletic apparel produced by Nike',20,0,'images/jordan11.jpg'),(17,'Nike Air Jordan 1','Yes',110,'Air Jordan is a line of basketball shoes and athletic apparel produced by Nike',20,0,'images/airjordan1.jpg'),(18,'Nike Air Max 97','Yes',80,'Nike Air Max is a line of shoes produced by Nike, Inc., with the first model released in 1987.',20,0,'images/airmax97.jpg'),(19,'Nike Air Max 95','Yes',60,'Nike Air Max is a line of shoes produced by Nike, Inc., with the first model released in 1987.',20,0,'images/airmax95.jpg'),(20,'Nike Air Max','Yes',60,'Nike Air Max is a line of shoes produced by Nike, Inc., with the first model released in 1987.',20,0,'images/airmax.jpg'),(24,'Nike Kobe 9','Yes',69,'Kobe Bryant\'s signature shoes have become synonymous with performance and attention to detail.',20,0,'images/kobe9.jpg'),(25,'Nike LeBron IX','Yes',69,'LeBron James\'s signature shoes have become synonymous with performance and attention to detail.',20,0,'images/lbjix.jpg'),(26,'Nike LeBron YNWA','Yes',69,'LeBron James\'s signature shoes have become synonymous with performance and attention to detail.',20,0,'images/lbjynwa.jpg'),(27,'Nike LeBron XX','Yes',69,'LeBron James\'s signature shoes have become synonymous with performance and attention to detail.',20,0,'images/lbjxx.jpg'),(28,'Nike Space Hippie','Yes',50,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',40,0,'images/hippies.jpg'),(29,'Nike Air Force 1','Yes',50,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',40,0,'images/force.jpg'),(30,'Nike Dunk','Yes',50,'The world\'s largest athletic apparel company, best known for its footwear, apparel, and equipment.',40,0,'images/dunks.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `sizeID` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sizeID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'40',NULL),(2,'41',NULL),(3,'42',NULL),(4,'43',NULL),(5,'44',NULL),(6,'45',NULL),(7,'46',NULL);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `vendorCompanyName` varchar(45) NOT NULL,
  `vendorAdress` varchar(45) DEFAULT NULL,
  `vendorCityName` varchar(45) DEFAULT NULL,
  `vendorPostalCode` int(11) DEFAULT NULL,
  `vendorPhone` int(11) DEFAULT NULL,
  `vendorWebSite` varchar(45) DEFAULT NULL,
  `vendorscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vendorID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-02 17:56:44
-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: students
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `student_addresses`
--

DROP TABLE IF EXISTS `student_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_addresses` (
  `student_id` int(11) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_addresses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_addresses`
--

LOCK TABLES `student_addresses` WRITE;
/*!40000 ALTER TABLE `student_addresses` DISABLE KEYS */;
INSERT INTO `student_addresses` VALUES (1,'36 Commons Way','08807'),(1,'10 Downing St','08810'),(2,'120 Greyrock Pl','06096'),(3,'10 Race Course Road','77082'),(4,'2530 Dallas Parkway','75034'),(4,'12345 Century Oaks Ave','78758'),(8,'5400 W Parmer Ln','78757'),(8,'1919 Elridge Pkwy','77087');
/*!40000 ALTER TABLE `student_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_classes`
--

DROP TABLE IF EXISTS `student_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_classes` (
  `student_id` int(11) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_classes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_classes`
--

LOCK TABLES `student_classes` WRITE;
/*!40000 ALTER TABLE `student_classes` DISABLE KEYS */;
INSERT INTO `student_classes` VALUES (1,'Marketing'),(1,'Business Research Methods'),(1,'Accounting'),(2,'Management'),(2,'Accounting'),(3,'Accounting'),(3,'Finance'),(3,'International Business'),(4,'Business Statistics'),(4,'Macro Economics'),(8,'International Business'),(8,'Economics Statistics');
/*!40000 ALTER TABLE `student_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1,'John','Doe'),(2,'Jane','Dane'),(3,'Bob','Smith'),(4,'Richard','Roe'),(8,'Kent','Clark');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-15 18:16:30

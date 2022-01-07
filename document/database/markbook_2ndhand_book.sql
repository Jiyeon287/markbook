-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: markbook
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `2ndhand_book`
--

DROP TABLE IF EXISTS `2ndhand_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `2ndhand_book` (
  `b2_num` int(11) NOT NULL,
  `b2_seller_id` varchar(45) DEFAULT NULL,
  `b2_buyer_id` varchar(45) DEFAULT NULL,
  `b2_startprice` int(11) DEFAULT NULL,
  `b2_highestprice` int(11) DEFAULT NULL,
  `b2_title` varchar(45) DEFAULT NULL,
  `b2_category` varchar(45) DEFAULT NULL,
  `b2_content` varchar(4000) DEFAULT NULL,
  `b2_image` varchar(100) DEFAULT NULL,
  `b2_writer` varchar(45) DEFAULT NULL,
  `b2_publisher` varchar(45) DEFAULT NULL,
  `b2_bookstatus` varchar(45) DEFAULT NULL,
  `b2_enddate` date DEFAULT NULL,
  `b2_startdate` date DEFAULT NULL,
  `b2_sellstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`b2_num`),
  KEY `FK_member_TO_2nd_book_1_idx` (`b2_seller_id`),
  CONSTRAINT `FK_member_TO_2nd_book_1` FOREIGN KEY (`b2_seller_id`) REFERENCES `member_info` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2ndhand_book`
--

LOCK TABLES `2ndhand_book` WRITE;
/*!40000 ALTER TABLE `2ndhand_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `2ndhand_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 16:25:34

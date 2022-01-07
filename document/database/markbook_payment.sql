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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pay_num` int(11) NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `order_id` varchar(45) DEFAULT NULL,
  `bor_num` int(11) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_method` varchar(45) DEFAULT NULL,
  `pay_status` int(11) DEFAULT NULL,
  `pay_price` varchar(45) DEFAULT NULL,
  `pay_ship_price` varchar(45) DEFAULT NULL,
  `pay_ship_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`pay_num`),
  KEY `FK_member_TO_payment_1_idx` (`order_id`),
  KEY `FK_bookorder_TO_payment_1_idx` (`order_num`),
  KEY `FK_borrow_TO_payment_1_idx` (`bor_num`),
  CONSTRAINT `FK_bookorder_TO_payment_1` FOREIGN KEY (`order_num`) REFERENCES `book_order` (`order_num`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_borrow_TO_payment_1` FOREIGN KEY (`bor_num`) REFERENCES `borrow` (`bor_num`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_member_TO_payment_1` FOREIGN KEY (`order_id`) REFERENCES `member_info` (`m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 16:25:35

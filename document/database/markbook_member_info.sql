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
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_info` (
  `m_id` varchar(45) NOT NULL,
  `m_pw` varchar(45) DEFAULT NULL,
  `m_addr1` varchar(100) DEFAULT NULL,
  `m_addr2` varchar(45) DEFAULT NULL,
  `m_email` varchar(100) DEFAULT NULL,
  `m_phone` varchar(45) DEFAULT NULL,
  `m_image` varchar(100) DEFAULT NULL,
  `m_regdate` timestamp NULL DEFAULT NULL,
  `m_idnum1` varchar(45) DEFAULT NULL,
  `m_idnum2` varchar(45) DEFAULT NULL,
  `m_count` int(11) DEFAULT NULL,
  `m_over` int(11) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `m_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES ('admin','admin','서울 강남구 가로수길 5','가로수','admin@gmail.com','01012341234',NULL,'2021-11-17 10:00:54','123456','1234567',0,0,'관리자',0);
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 16:25:33

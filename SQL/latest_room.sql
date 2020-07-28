-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: latest
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_no` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(20) DEFAULT NULL,
  `availability` varchar(5) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_no`),
  UNIQUE KEY `nid` (`nid`),
  CONSTRAINT `fk_room_nid` FOREIGN KEY (`nid`) REFERENCES `nurse` (`nid`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (101,'ICU','Yes','2014-03-20',4),(102,'Common','Yes','2014-10-27',6),(103,'Special','No','2014-03-29',8),(104,'ICU','Yes','2015-10-06',10),(105,'Non-AC','Yes','2014-12-12',12),(106,'Non-AC','Yes','2014-09-30',14),(107,'Chek-Up','No','2015-07-16',16),(108,'AC','No','2014-09-11',18),(109,'Special','Yes','2014-07-31',20),(110,'Non-AC','No','2014-08-28',22),(111,'ICU','No','2014-10-30',24),(112,'AC','Yes','2015-03-26',26),(113,'Common','Yes','2015-10-15',28),(114,'Non-AC','Yes','2014-11-04',30),(115,'ICU','Yes','2015-10-14',32),(116,'Common','No','2015-06-03',34),(117,'Chek-Up','No','2014-04-05',36),(118,'Common','NO','2013-05-26',38);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:01:54

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `disease` varchar(50) DEFAULT NULL,
  `app_date` date DEFAULT NULL,
  `app_time` time DEFAULT NULL,
  `app_status` varchar(20) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  KEY `fk_appointment_doc` (`did`),
  KEY `fk_appointment_pat` (`pid`),
  KEY `fk_appointment_room_no` (`room_no`),
  CONSTRAINT `fk_appointment_doc` FOREIGN KEY (`did`) REFERENCES `doctor` (`did`) ON DELETE RESTRICT,
  CONSTRAINT `fk_appointment_pat` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`) ON DELETE RESTRICT,
  CONSTRAINT `fk_appointment_room_no` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,2,'Brain Tumor','2014-05-20','21:17:18','In-Progress',101),(2,3,3,'Mental Disorder','2017-08-05','14:06:17','Completed',102),(3,5,4,'Cancer','2014-05-03','12:23:38','Completed',103),(4,7,5,'Cholera','2014-08-14','11:41:38','In-Progress',104),(5,9,6,'Swine-Flu','2016-07-31','17:34:42','Completed',105),(6,11,7,'AIDS','2014-11-09','17:59:23','In-Progress',106),(7,13,8,'Malaria','2016-05-17','22:52:18','In-Progress',107),(8,15,9,'Piles','2016-01-10','18:34:03','In-Progress',108),(9,17,10,'Common Cold','2017-02-04','14:56:55','Completed',109),(10,19,11,'Piles','2013-12-23','05:18:59','Completed',110),(11,21,12,'Mental Disorder','2016-08-31','20:55:07','Completed',111),(12,23,13,'Cholera','2015-03-09','13:01:38','Completed',112),(13,25,14,'Swine-Flu','2014-09-08','12:51:38','In-Progress',113),(14,27,15,'AIDS','2015-12-26','09:24:28','Completed',114),(15,29,16,'Dengue','2015-10-26','15:12:24','Completed',115),(16,31,17,'Pneumonia','2017-02-28','14:32:45','In-Progress',116),(17,33,18,'Polio','2015-04-28','14:00:45','In-Progress',117),(18,35,19,'Cholera','2013-05-26','23:47:51','In-Progress',118);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `appoint_start` AFTER INSERT ON `appointment` FOR EACH ROW begin
	update room set room.start_date = new.app_date, room.availability = 'NO' where room.room_no = new.room_no;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `appointment_delete_room` BEFORE DELETE ON `appointment` FOR EACH ROW begin
	update room set room.availability = 'YES', start_date = NULL where OLD.room_no = room.room_no;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:01:52

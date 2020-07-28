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
-- Table structure for table `pincode_add`
--

DROP TABLE IF EXISTS `pincode_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pincode_add` (
  `pincode` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pincode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pincode_add`
--

LOCK TABLES `pincode_add` WRITE;
/*!40000 ALTER TABLE `pincode_add` DISABLE KEYS */;
INSERT INTO `pincode_add` VALUES (106356,'Patna','Bihar'),(120696,'Dehri','Bihar'),(130504,'Howrah','West Bengal'),(140172,'Budaun','Uttar Pradesh'),(153036,'Aligarh','Uttar Pradesh'),(155097,'Arrah','Bihar'),(161504,'Nellore','Andhra Pradesh'),(177142,'Bihar Sharif','Bihar'),(186675,'Gudivada','Andhra Pradesh'),(189799,'Ghaziabad','Uttar Pradesh'),(195667,'Vishakhapatnam','Andhra Pradesh'),(199847,'Jodhpur','Rajasthan'),(203195,'Faridabad','Haryana'),(216563,'Guwahati','Assam'),(227268,'Modinagar','Uttar Pradesh'),(261688,'Latur','Maharastra'),(261697,'Etawah','Uttar Pradesh'),(263506,'Amroha','Uttar Pradesh'),(266687,'Ulhasnagar','Maharastra'),(266764,'Orai','Uttar Pradesh'),(278731,'Delhi','Delhi'),(281353,'Korba','Chhattisgarh'),(286778,'Dibrugarh','Assam'),(287040,'Bharatpur','Rajasthan'),(310695,'Gadag Betigeri','Karnataka'),(315455,'Nagaon','Assam'),(316886,'Vijayawada','Andhra Pradesh'),(322176,'Avadi','Tamil Nadu'),(324360,'Pilibhit','Uttar Pradesh'),(325415,'Bidar','Karnataka'),(332736,'Agra','Uttar Pradesh'),(334516,'Sambalpur','Odisha'),(345956,'Adoni','Andhra Pradesh'),(346377,'Nashik','Maharastra'),(361888,'Veraval','Gujarat'),(370682,'Bhopal','Madhya Pradesh'),(391688,'Khammam','Andhra Pradesh'),(425046,'Nellore','Andhra Pradesh'),(443899,'North Dum Dum','West Bengal'),(454860,'Katihar','Bihar'),(468088,'Amravati','Maharastra'),(471788,'Anantapur','Andhra Pradesh'),(474758,'Avadi','Tamil Nadu'),(486950,'Patna','Bihar'),(502111,'Tiruvottiyur','Tamil Nadu'),(510066,'Pilibhit','Uttar Pradesh'),(527676,'Korba','Chhattisgarh'),(531392,'Midnapore','West Bengal'),(532140,'Raichur','Karnataka'),(532582,'Tenali','Andhra Pradesh'),(538615,'Gondiya','Maharastra'),(542573,'Khandwa','Madhya Pradesh'),(564044,'Delhi','Delhi'),(569350,'Nandyal','Andhra Pradesh'),(571668,'Pimpri-Chinchwad','Maharastra'),(580040,'Ramagundam','Andhra Pradesh'),(600953,'Warangal','Andhra Pradesh'),(609687,'Puri','Odisha'),(613442,'Udaipur','Rajasthan'),(632473,'Gulbarga','Karnataka'),(633069,'Krishnanagar','West Bengal'),(634434,'Gulbarga','Karnataka'),(634578,'Shimla','Himachal Pradesh'),(659753,'Panipat','Haryana'),(676878,'Chishtian Mandi','Punjab'),(680681,'Bhatpara','West Bengal'),(692051,'Bangalore','Karnataka'),(701562,'Ghaziabad','Uttar Pradesh'),(706285,'Modinagar','Uttar Pradesh'),(718515,'Tirunelveli','Tamil Nadu'),(723361,'Tambaram','Tamil Nadu'),(734661,'Arrah','Bihar'),(749087,'Dehri','Bihar'),(754620,'Tiruvarur','Tamil Nadu'),(773767,'Madurai','Tamil Nadu'),(781347,'Raurkela Civil Township','Odisha'),(787161,'Moradabad','Uttar Pradesh'),(819705,'Delhi','Delhi'),(822753,'Katihar','Bihar'),(823538,'Indore','Madhya Pradesh'),(830487,'Pimpri-Chinchwad','Maharastra'),(840387,'Ranchi','Jharkhand'),(848131,'Kukatpalle','Andhra Pradesh'),(850773,'Bhimavaram','Andhra Pradesh'),(879479,'Bhuj','Gujarat'),(884166,'Bhilwara','Rajasthan'),(884236,'Nanded','Maharastra'),(886676,'Cuttack','Odisha'),(894102,'Junagadh','Gujarat'),(894970,'Veraval','Gujarat'),(920524,'Cochin','Kerala'),(923973,'Cochin','Kerala'),(936365,'Bihar Sharif','Bihar'),(937945,'Guna','Madhya Pradesh'),(942618,'Kamoke','Punjab'),(946428,'Ulhasnagar','Maharastra'),(951864,'Nadiad','Gujarat'),(958072,'Lucknow','Uttar Pradesh'),(998515,'Moradabad','Uttar Pradesh'),(998622,'Chapra','Bihar');
/*!40000 ALTER TABLE `pincode_add` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:01:57

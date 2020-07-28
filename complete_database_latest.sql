CREATE DATABASE  IF NOT EXISTS `latest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `latest`;
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

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `app_id` int(11) NOT NULL,
  `med_charge` int(11) DEFAULT NULL,
  `doc_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_id`),
  CONSTRAINT `fk_bill_app` FOREIGN KEY (`app_id`) REFERENCES `appointment` (`app_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,4390,337),(2,3061,457),(3,4218,394),(4,2099,410),(5,570,354),(6,4775,334),(7,4923,389),(8,1525,444),(9,2066,320),(10,2926,498),(11,1851,499),(12,3823,407),(13,2263,362),(14,2503,342),(15,4406,487),(16,844,354),(17,3238,444);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `d_speciality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`did`),
  CONSTRAINT `fk_doctor_did` FOREIGN KEY (`did`) REFERENCES `employee` (`eid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Physical medicine and rehabilitation'),(3,'Immunology'),(5,'Otorhinolaryngology'),(7,'Craniofacial surgery'),(9,'General surgery'),(11,'Thoracic surgery'),(13,'Hematology'),(15,'Craniofacial surgery'),(17,'Anaesthetics'),(19,'Child psychiatry'),(21,'Urology'),(23,'Neurosurgery'),(25,'Dermatology'),(27,'Vascular surgery'),(29,'Paediatric surgery'),(31,'Paediatric surgery'),(33,'Clinical neurophysiology'),(35,'Laboratory medicine'),(37,'Microbiology'),(39,'Radiation Oncology');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Benjamin','Horn','1989-09-22','Male','ipsum.primis@Ut.ca'),(2,'Fitzgerald','Gregory','1989-11-19','Male','magna@placerat.com'),(3,'Indira','Bennett','1990-03-21','Male','adipiscing.enim.mi@purusmauris.ca'),(4,'Quemby','Mejia','1989-09-13','Male','eros.Nam.consequat@penatibusetmagnis.net'),(5,'Baker','Oneal','1989-09-20','Female','Integer.in.magna@velitCras.co.uk'),(6,'Stella','Neal','1989-03-08','Male','Pellentesque.ut@penatibuset.org'),(7,'Nina','Osborn','1989-01-16','Male','tincidunt@Sedeunibh.org'),(8,'Deacon','Wallace','1990-04-30','Female','consectetuer@augueSedmolestie.org'),(9,'Raphael','Moss','1988-12-28','Female','sodales.at@auctor.ca'),(10,'Nora','Hull','1989-01-12','Male','Maecenas.iaculis@conubia.edu'),(11,'Tanek','Allison','1989-07-18','Female','primis.in@faucibus.co.uk'),(12,'Dakota','Hayden','1990-01-02','Female','Sed@sodalesMauris.net'),(13,'Xaviera','Cobb','1988-12-24','Female','sagittis.Nullam.vitae@luctusCurabituregestas.com'),(14,'Brianna','Mayo','1990-01-19','Female','enim@dolorelit.com'),(15,'Cynthia','Mathis','1989-08-14','Male','ipsum@massaSuspendisseeleifend.net'),(16,'Chaim','Summers','1990-01-03','Female','ante@sem.org'),(17,'Carol','Middleton','1988-11-30','Male','litora.torquent@pedeNuncsed.org'),(18,'Blake','Battle','1990-06-21','Female','metus.urna@scelerisquesed.co.uk'),(19,'Eagan','Whitehead','1990-09-04','Male','Phasellus.in@nuncrisus.co.uk'),(20,'Myles','Holden','1989-04-19','Female','orci.lobortis.augue@afelisullamcorper.ca'),(21,'John','Britt','1988-12-26','Female','Duis.sit@Donec.org'),(22,'Jael','Alvarez','1988-12-26','Female','nec.ante.Maecenas@ipsumdolorsit.net'),(23,'Kieran','Obrien','1988-11-01','Male','adipiscing.lobortis@conubianostraper.com'),(24,'Bertha','Jones','1989-01-23','Male','lorem@adipiscing.ca'),(25,'Timon','Huber','1989-08-27','Female','ultrices.posuere.cubilia@nunc.edu'),(26,'Elijah','Newman','1989-06-24','Female','quis.pede.Praesent@Suspendissealiquet.ca'),(27,'Scarlet','Carey','1990-07-28','Male','mi@egetlacusMauris.net'),(28,'Martha','Hubbard','1989-02-27','Male','fringilla.porttitor.vulputate@orciUtsemper.org'),(29,'Leonard','Head','1990-04-01','Female','et.nunc.Quisque@aliquetvel.co.uk'),(30,'Abra','Carter','1989-04-08','Male','gravida.nunc@urnaconvalliserat.org'),(31,'Quyn','Rasmussen','1988-11-01','Male','Curae@Nullam.net'),(32,'Denise','Bauer','1990-06-07','Female','velit@risusDonecegestas.co.uk'),(33,'Ira','Blevins','1990-02-12','Female','dolor@nequesed.org'),(34,'Barrett','Conner','1989-04-02','Male','lectus.a@quamvel.edu'),(35,'Len','Floyd','1988-10-28','Female','In.scelerisque@natoquepenatibus.edu'),(36,'Timon','Merrill','1990-09-24','Male','arcu@estNunc.ca'),(37,'Noble','Swanson','1989-05-24','Female','fringilla.Donec@Duiselementum.ca'),(38,'Lucian','Kane','1989-11-17','Male','Suspendisse.sagittis@felisNulla.com'),(39,'Gretchen','Marquez','1990-07-28','Female','interdum.enim.non@SuspendisseduiFusce.org'),(40,'Rogan','Mayer','1989-03-21','Male','in.consequat.enim@elitEtiam.ca');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_mob_no`
--

DROP TABLE IF EXISTS `employee_mob_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_mob_no` (
  `eid` int(11) NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  PRIMARY KEY (`eid`,`mob_no`),
  CONSTRAINT `fk_employee_mob_no_eid` FOREIGN KEY (`eid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_mob_no`
--

LOCK TABLES `employee_mob_no` WRITE;
/*!40000 ALTER TABLE `employee_mob_no` DISABLE KEYS */;
INSERT INTO `employee_mob_no` VALUES (1,9501941410),(2,9411906691),(3,9319557245),(4,9418683466),(5,9926741274),(6,9823197145),(7,9305288267),(8,9233602235),(9,9742484311),(10,9433390920),(11,9130124430),(12,9696458072),(13,9187142145),(14,9644123286),(15,9661443369),(16,9174946168),(17,9733448273),(18,9700471528),(19,9662660526),(20,9923089634),(21,9322359693),(22,9058614888),(23,9040782649),(24,9502346871),(25,9213537056),(26,9869293435),(27,9083466301),(28,9559539093),(29,9756245768),(30,9395611363),(31,9446549392),(32,9020028217),(33,9690448058),(34,9705065603),(35,9267602402),(36,9319643923),(37,9365678571),(38,9932638953),(39,9923653592),(40,9713946816);
/*!40000 ALTER TABLE `employee_mob_no` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `nid` int(11) NOT NULL,
  `n_speciality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  CONSTRAINT `fk_nurse_nid` FOREIGN KEY (`nid`) REFERENCES `employee` (`eid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (2,'Advanced practice '),(4,'Genetics '),(6,'Occupational health '),(8,'Oncology '),(10,'Dental '),(12,'Cardiac '),(14,'Medical-surgical '),(16,'Tele'),(18,'Quality improvement'),(20,'Immunology and allergy '),(22,'Hospice and palliative care '),(24,'Wound care'),(26,'Holistic '),(28,'Emergency '),(30,'Orthopaedic '),(32,'Dental '),(34,'Psychiatric '),(36,'Psychiatric '),(38,'Medical-surgical '),(40,'Vascular Access');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bgrp` varchar(3) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk_patient_pincode` (`pincode`),
  CONSTRAINT `fk_patient_pincode` FOREIGN KEY (`pincode`) REFERENCES `pincode_add` (`pincode`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Charde','Joyner','1957-06-01','Male','O-','interdum.ligula.eu@magnisdis.co.uk',920524),(2,'Todd','Casey','1959-05-23','Female','O-','dictum@tempusscelerisquelorem.com',370682),(3,'Kitra','Ray','1993-12-03','Male','B-','pede.nec@Donecnonjusto.edu',634578),(4,'Zoe','Sykes','1955-10-28','Male','B-','fames.ac@sodaleselit.co.uk',958072),(5,'Lionel','Rocha','2006-07-04','Male','O+','arcu@vitaeeratVivamus.org',189799),(6,'Wyatt','Mcmahon','2004-03-24','Male','A-','magna.Duis@Donecnibhenim.com',106356),(7,'Medge','Mann','1991-06-20','Male','O-','lorem.eget@lacusAliquamrutrum.ca',261697),(8,'Pascale','Gibbs','1980-07-17','Male','B+','morbi@tempordiam.com',542573),(9,'Yetta','Holden','1975-11-02','Male','O+','ante.Nunc.mauris@diamnuncullamcorper.org',848131),(10,'Preston','Stout','1950-06-24','Female','AB-','Aliquam.ornare@elitafeugiat.edu',830487),(11,'Fletcher','Hancock','1974-05-23','Male','B+','dictum.eu.eleifend@ultriciessemmagna.co.uk',634578),(12,'Cyrus','Holder','2006-08-09','Female','B+','vitae@per.net',822753),(13,'Heather','Vazquez','1995-02-07','Male','AB+','commodo.hendrerit.Donec@auctorMaurisvel.ca',486950),(14,'Yen','Harmon','1948-04-12','Male','B-','est.mollis@Mauris.edu',425046),(15,'Hedy','Sweeney','1996-01-14','Male','O-','sociis.natoque@semper.ca',998515),(16,'Theodore','Cook','2000-05-11','Female','B-','a@mattis.org',850773),(17,'Malik','Rivas','1946-04-06','Female','O+','ac.turpis.egestas@hendreritconsectetuercursus.edu',571668),(18,'Zephr','Valdez','1953-07-06','Female','O-','arcu.Sed@estmollis.ca',532140),(19,'Cameron','Schwartz','1976-01-25','Male','B+','molestie.dapibus@commodo.org',332736),(20,'Athena','Huff','2001-04-24','Male','A-','bibendum.fermentum@velitegestaslacinia.com',749087),(21,'Justin','Herman','2007-01-19','Female','A-','leo.Morbi@Donecconsectetuer.edu',261688),(22,'MacKenzie','Lawrence','1992-09-28','Male','AB-','lacinia.orci@nascetur.net',884166),(23,'Matthew','Stokes','1987-07-07','Male','AB-','neque.venenatis@Vivamusnon.net',161504),(24,'Vielka','Humphrey','1991-08-06','Female','O+','nec.enim.Nunc@Phasellusvitae.net',334516),(25,'Kenyon','Giles','1988-06-12','Female','AB+','vel@DonecfringillaDonec.ca',634578),(26,'Athena','Boyle','1970-08-21','Female','O-','fringilla@quis.com',634578),(27,'Chandler','Mccarthy','1960-02-04','Male','AB+','lobortis.augue@vel.edu',468088),(28,'Damon','Chen','1955-05-24','Female','AB+','Integer.urna@feugiatLorem.org',633069),(29,'Cadman','Cash','1978-03-05','Female','AB+','Nullam.nisl@euelitNulla.com',322176),(30,'Casey','Salinas','1963-04-28','Male','A-','Duis.cursus.diam@Curabitur.ca',322176),(31,'Ryan','Bonner','2018-08-09','Male','B+','rutrum@amalesuadaid.com',937945),(32,'Lucian','Lynn','1973-02-02','Female','A+','nulla.In@Suspendisse.com',998622),(33,'Amanda','Howe','1961-04-30','Male','A-','libero.lacus.varius@orci.com',287040),(34,'Daniel','Mcfadden','2010-10-26','Female','A+','elit.Aliquam@Vivamusnibh.com',937945),(35,'Ivor','Camacho','1974-02-13','Male','AB+','vitae.dolor@leoCrasvehicula.ca',266687),(36,'Hop','Ayers','1947-03-17','Female','B-','Nam.ligula@inmagna.ca',676878),(37,'Joan','Bryan','1946-08-30','Male','O+','tristique.pellentesque.tellus@molestie.org',266687),(38,'Myra','Guzman','1971-07-17','Male','A-','ultricies.sem.magna@Quisque.ca',884166),(39,'Beatrice','Grant','1956-02-23','Male','A+','Donec.non.justo@perconubia.ca',286778),(40,'Kaden','Reynolds','1946-09-05','Female','A+','Aenean.egestas.hendrerit@nibhAliquam.net',787161);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_mob_no`
--

DROP TABLE IF EXISTS `patient_mob_no`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_mob_no` (
  `pid` int(11) NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  PRIMARY KEY (`pid`,`mob_no`),
  CONSTRAINT `fk_patient_mob_no_pid` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_mob_no`
--

LOCK TABLES `patient_mob_no` WRITE;
/*!40000 ALTER TABLE `patient_mob_no` DISABLE KEYS */;
INSERT INTO `patient_mob_no` VALUES (1,9206971401),(2,9107333890),(3,9963862878),(4,9921206356),(5,9431714886),(6,9747658184),(7,9131686853),(8,9447307848),(9,9271136978),(10,9026984306),(11,9419035245),(12,9896638755),(13,9557800628),(14,9174890273),(15,9850920459),(16,9980270016),(17,9247288718),(18,9905848247),(19,9596735871),(20,9289637403),(21,9871502439),(22,9657520155),(23,9739403811),(24,9278012562),(25,9441414675),(26,9080503133),(27,9060236729),(28,9278632265),(29,9183994466),(30,9643951974),(31,9227223642),(32,9199809381),(33,9293703027),(34,9780687956),(35,9107360878),(36,9267896555),(37,9195821307),(38,9928530431),(39,9521042514),(40,9721862378);
/*!40000 ALTER TABLE `patient_mob_no` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `show_doctors`
--

DROP TABLE IF EXISTS `show_doctors`;
/*!50001 DROP VIEW IF EXISTS `show_doctors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_doctors` AS SELECT 
 1 AS `eid`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `email`,
 1 AS `mob_no`,
 1 AS `d_speciality`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `show_nurse`
--

DROP TABLE IF EXISTS `show_nurse`;
/*!50001 DROP VIEW IF EXISTS `show_nurse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `show_nurse` AS SELECT 
 1 AS `eid`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `dob`,
 1 AS `gender`,
 1 AS `email`,
 1 AS `mob_no`,
 1 AS `n_speciality`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'latest'
--

--
-- Dumping routines for database 'latest'
--
/*!50003 DROP PROCEDURE IF EXISTS `employee_doctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `employee_doctor`()
begin
SELECT 
employee.*,
mob_no,
d_speciality,DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(employee.dob, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(employee.dob, '00-%m-%d')) AS age
FROM
    employee
INNER JOIN
    employee_mob_no ON employee.eid=employee_mob_no.eid
INNER JOIN
	doctor ON employee.eid=doctor.did;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `employee_nurse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `employee_nurse`()
begin
SELECT 
employee.*,
mob_no,
n_speciality,DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(employee.dob, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(employee.dob, '00-%m-%d')) AS age
FROM
    employee
INNER JOIN
    employee_mob_no ON employee.eid=employee_mob_no.eid
INNER JOIN
	nurse ON employee.eid=nurse.nid;
    end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `patient_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `patient_age`()
begin
SELECT *,DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(dob, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(dob, '00-%m-%d')) AS age
from 
patient;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_charge` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_charge`()
begin
select *,(med_charge+doc_charge) AS tot_charge
from bill;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `show_doctors`
--

/*!50001 DROP VIEW IF EXISTS `show_doctors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_doctors` AS select `employee`.`eid` AS `eid`,`employee`.`fname` AS `fname`,`employee`.`lname` AS `lname`,`employee`.`dob` AS `dob`,`employee`.`gender` AS `gender`,`employee`.`email` AS `email`,`employee_mob_no`.`mob_no` AS `mob_no`,`doctor`.`d_speciality` AS `d_speciality` from ((`employee` join `employee_mob_no` on((`employee_mob_no`.`eid` = `employee`.`eid`))) join `doctor` on((`employee`.`eid` = `doctor`.`did`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `show_nurse`
--

/*!50001 DROP VIEW IF EXISTS `show_nurse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `show_nurse` AS select `employee`.`eid` AS `eid`,`employee`.`fname` AS `fname`,`employee`.`lname` AS `lname`,`employee`.`dob` AS `dob`,`employee`.`gender` AS `gender`,`employee`.`email` AS `email`,`employee_mob_no`.`mob_no` AS `mob_no`,`nurse`.`n_speciality` AS `n_speciality` from ((`employee` join `employee_mob_no` on((`employee_mob_no`.`eid` = `employee`.`eid`))) join `nurse` on((`employee`.`eid` = `nurse`.`nid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:06:58

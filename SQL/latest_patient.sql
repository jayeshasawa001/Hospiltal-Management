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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:01:58

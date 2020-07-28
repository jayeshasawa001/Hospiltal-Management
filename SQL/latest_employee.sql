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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 23:01:59

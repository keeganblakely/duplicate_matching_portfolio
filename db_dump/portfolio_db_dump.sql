-- keegan_blakely_portfolio dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: keegan_blakely_portfolio
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `address_lines` varchar(100) DEFAULT NULL,
  `city` varchar(60) NOT NULL,
  `state` char(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` char(2) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (131,'Bank of England, Threadneedle Street','London','UK','EC2R 8AH','UK'),(132,'Rideau Hall','Ottawa','ON','K1M 0H8','CA'),(133,'123 Maple St','Vancouver','BC','v7c 2a6','CA'),(134,'221B Baker Street','London','UK','N6A 1A4','CA'),(135,'90 Bedford Street','New York','NY','10014','US'),(136,'742 Evergreen Terrace','Springfield','IL','62704','US'),(137,'4 Privet Drive','Little Whinging','SU','cr3 0aa','UK'),(138,'10 Downing Street','London','UK','SW1A 2AA','UK'),(139,'1600 Pennsylvania Avenue','Washington','DC','20500','US'),(140,'100 Front St','Vancouver','BC','V6B 1A4','CA'),(141,'11 Wallaby Way','Sydney','NW','2000','AU'),(142,'456 Oak Ave','toronto','ON','m5h 2n2','CA'),(143,'789 Pine Road','Montreal','QC','H2X3Y7','CA'),(144,'1 Infinite Loop','Cupertino','CA','95014','US'),(145,'24 Sussex Drive','Ottawa','ON','K1M1M4','CA'),(146,'123 Elm St','calgary','AB','T2P 3N4','CA'),(147,'404 Spruce Way','Halifax','NS','B3H2X5','CA'),(148,'505 Fir Court','Victoria','BC','V8W 1P6','CA'),(149,'Hogwarts Castle','Highlands','SC','IV9-1TQ','UK'),(150,'44 Port Coquitlam Ave','Port Coquitlam','BC','V3B 5J2','CA'),(151,'666 Beech Rd','Yellowknife','NT','X1A2P8','CA'),(152,'1007 Mountain Drive','Gotham','NJ','07001','US'),(153,'Batcave, Wayne Manor Grounds','GOTHAM','NJ','07001','US'),(154,'344 Clinton St','Metropolis','NY','10001','US'),(155,'355 Broadway Ave','Metropolis','NY','10001','US'),(156,'1428 Elm Street','Springwood','OH','45402','US'),(157,'Burquitlam Station','Coquitlam','BC','V3J 4K2','CA');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alternate_id`
--

DROP TABLE IF EXISTS `alternate_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternate_id` (
  `student_id` int NOT NULL,
  `alt_id_type` char(3) NOT NULL,
  `alt_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`alt_id_type`),
  CONSTRAINT `fk_student_alt_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternate_id`
--

LOCK TABLES `alternate_id` WRITE;
/*!40000 ALTER TABLE `alternate_id` DISABLE KEYS */;
INSERT INTO `alternate_id` VALUES (22,'PEN',523456789),(24,'SIN',612345678),(25,'SIN',612345678),(28,'PEN',100000001),(29,'PEN',100000002),(30,'PEN',100000003),(31,'PEN',100000004),(32,'PEN',100000005),(33,'PEN',523456789),(34,'PEN',100000007),(35,'PEN',100000008),(36,'PEN',100000009),(37,'PEN',100000010),(38,'PEN',100000011),(39,'PEN',100000012),(40,'PEN',100000013),(41,'SSN',987654321),(42,'SSN',987654321),(43,'SSN',111223333),(44,'SSN',111223333),(45,'PEN',100000014),(46,'SIN',734567891),(47,'PEN',100000006),(48,'ADM',1),(49,'ADM',1);
/*!40000 ALTER TABLE `alternate_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_code` varchar(9) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `program_code` char(4) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `uq_program_course` (`program_code`,`course_code`),
  KEY `fk_course_program_idx` (`program_code`),
  CONSTRAINT `fk_course_program` FOREIGN KEY (`program_code`) REFERENCES `program` (`program_code`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (30,'CRIM101','Introduction to Criminology','CINV'),(31,'CRIM201','Forensic Investigation Techniques','CINV'),(32,'CRIM301','Criminal Law & Procedure','CINV'),(33,'JOUR101','News Writing Fundamentals','JOUR'),(34,'JOUR201','Investigative Journalism','JOUR'),(35,'JOUR301','Media Ethics and Law','JOUR'),(36,'POLI101','Introduction to Political Science','POLI'),(37,'POLI201','Comparative Politics','POLI'),(38,'POLI301','Public Policy Analysis','POLI'),(39,'CSCI101','Intro to Programming','CSCI'),(40,'CSCI201','Data Structures & Algorithms','CSCI'),(41,'CSCI301','Database Systems','CSCI'),(42,'DATA101','Database Design & SQL Fundamentals','DATA'),(43,'DATA102','Data Analytics with R & Python','DATA'),(44,'DATA103','Power BI & Data Visualization','DATA'),(45,'DATA104','ERP Systems & Data Pipelines','DATA'),(46,'DATA105','Data Quality & Governance','DATA'),(47,'BUSN102','Agile & Scrum Fundamentals','BUSN'),(48,'BUSN104','Stakeholder Communication & Leadership','BUSN'),(49,'BUSN106','Traditional Project Management & Waterfall','BUSN'),(50,'SPRT101','Exercise Physiology','SPOR'),(51,'SPRT201','Sports Performance Analysis','SPOR'),(52,'SPRT301','Biomechanics of Sport','SPOR'),(53,'MAGC101','Potions and Elixirs','WCWZ'),(54,'MAGC201','Transfiguration Basics','WCWZ'),(55,'MAGC301','Defense Against Dark Arts','WCWZ'),(56,'CULA101','Introduction to Culinary Techniques','CULI'),(57,'CULA201','Baking and Pastry Fundamentals','CULI'),(58,'CULA301','World Cuisine','CULI');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `student_id` int NOT NULL,
  `position` int NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `primary_flag` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`student_id`,`position`),
  UNIQUE KEY `uq_student_email` (`student_id`,`email_address`),
  CONSTRAINT `fk_student_email` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_email_primary` CHECK ((`primary_flag` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (22,1,'danny22@nhl.com',1),(24,1,'Mark.Carney@gmail.com',0),(24,2,'mark.carney@bankofengland.co.uk',1),(25,1,'mark.carney@gmail.com',0),(25,2,'mark.carney@canada.gc.ca',1),(28,1,'sherlock@bakerstreet.uk',1),(29,1,'monica.geller@friends.tv',0),(29,2,'monica.bing@friends.tv',1),(30,1,'chandler.bing@friends.tv',1),(31,1,'homer.simpson@springfield.com',1),(32,1,'marge.simpson@springfield.com',1),(33,1,'HANK.SEDIN@canucks.ca',1),(34,1,'lisa.simpson@springfield.com',1),(35,1,'maggie.simpson@springfield.com',1),(36,1,'harry.potter@hogwarts.uk',1),(37,1,'hermione.granger@Hogwarts.UK',1),(38,1,'keir.starmer@ukparliament.uk',1),(39,1,'joe.biden@whitehouse.gov',1),(40,1,'steve.jobs@apple.com',1),(41,1,'bruce.wayne@wayneenterprises.com',1),(42,1,'Bruce.Wayne@WayneEnterprises.com',0),(43,1,'kal.el@gmail.com',1),(44,1,'clark.kent@dailyplanet.com',1),(45,1,'freddy@elmstreet.com',1),(46,1,'terry.fox@sfu.bc.ca',1),(47,1,'bart.simpson@springfield.com',1),(48,1,'blakelykeegan@gmail.com',1),(48,2,'kblakely@sfu.ca',0),(49,1,'blakelykeegan@gmail.com',1),(49,2,'kblakely@jibc.ca',0);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `student_id` int NOT NULL,
  `position` int NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `primary_flag` tinyint NOT NULL DEFAULT '0',
  `extension` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`position`),
  UNIQUE KEY `uq_student_phone` (`student_id`,`phone_number`),
  CONSTRAINT `fk_student_phone` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chk_phone_primary` CHECK ((`primary_flag` in (0,1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (22,1,'6045553333',1,NULL),(24,1,'44-20-7601-5678',0,NULL),(24,2,'(44) 20 7601 1234',1,'101'),(25,1,'1-613-555-0199',0,NULL),(25,2,'(44) 20 7601 1234',1,'102'),(28,1,'+44 20 7946 0958',1,NULL),(29,1,'212-555-0198',1,NULL),(29,2,'212 555 0112',0,NULL),(30,1,'212-555-0199',1,NULL),(31,1,'217-555-1234',1,NULL),(32,1,'217 555 5678',1,NULL),(33,1,'604-555-2222',1,'12'),(34,1,'2175550001',1,NULL),(35,1,'2175555678',1,NULL),(36,1,'+44 1234 567890',1,NULL),(37,1,'+44 1234 567891',1,NULL),(38,1,'+44 20 7219 1234',1,NULL),(39,1,'202-555-0175',1,NULL),(40,1,'408-555-1234',1,NULL),(41,1,'(212) 555-9000',1,NULL),(42,1,'(212) 555-9000',1,'001'),(42,2,'2125559011',0,NULL),(43,1,'212-555-7788',1,NULL),(44,1,'212-555-7788',1,'200'),(44,2,'212-555-3344',0,NULL),(45,1,'5556667777',1,NULL),(46,1,'604-555-4321',1,NULL),(47,1,'(217)555-9999',1,NULL),(48,1,'778-988-1031',1,NULL),(49,1,'604.528.5692',0,NULL),(49,2,'(778) 988 1031',1,NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program` (
  `program_code` char(4) NOT NULL,
  `program_title` varchar(100) NOT NULL,
  `program_level` varchar(20) NOT NULL,
  PRIMARY KEY (`program_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program`
--

LOCK TABLES `program` WRITE;
/*!40000 ALTER TABLE `program` DISABLE KEYS */;
INSERT INTO `program` VALUES ('BUSN','Project Management','Microcredential'),('CINV','Criminology and Investigation','Undergraduate'),('CSCI','Computer Science','Undergraduate'),('CULI','Culinary Arts','Undergraduate'),('DATA','BBA - Management Information Systems','Undergraduate'),('JOUR','Journalism','Undergraduate'),('POLI','Political Science','Undergraduate'),('SPOR','Sport Science','Undergraduate'),('WCWZ','Witchcraft and Wizardry','Undergraduate');
/*!40000 ALTER TABLE `program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `section_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int DEFAULT NULL,
  `section_number` varchar(6) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `fk_section_course1_idx` (`course_id`),
  CONSTRAINT `fk_section_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON UPDATE CASCADE,
  CONSTRAINT `chk_section_dates` CHECK (((`end_date` is null) or (`end_date` >= `start_date`)))
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (62,30,'001','2020-09-01','2020-12-15',30),(63,31,'001','2021-01-10','2021-04-15',30),(64,32,'001','2021-09-01','2021-12-15',30),(65,33,'001','2020-09-01','2020-12-15',30),(66,34,'001','2021-01-10','2021-04-15',30),(67,35,'001','2021-09-01','2021-12-15',30),(68,36,'001','2020-09-01','2020-12-15',30),(69,37,'001','2021-01-10','2021-04-15',30),(70,38,'001','2021-09-01','2021-12-15',30),(71,39,'001','2020-09-01','2020-12-15',30),(72,40,'001','2021-01-10','2021-04-15',30),(73,41,'001','2021-09-01','2021-12-15',30),(74,42,'001','2019-09-05','2019-12-15',30),(75,43,'001','2020-01-10','2020-04-20',30),(76,44,'001','2021-09-05','2021-12-15',30),(77,45,'001','2022-01-10','2022-04-20',30),(78,46,'001','2023-09-05','2023-12-15',30),(79,42,'002','1990-01-10','1990-04-20',30),(80,43,'002','1990-09-05','1990-12-15',30),(81,44,'002','1990-01-10','1990-04-20',30),(82,45,'002','1990-09-05','1990-12-15',30),(83,46,'002','1990-09-05','1990-12-15',30),(84,47,'001','2025-01-10','2025-03-15',30),(85,48,'001','2025-01-10','2025-03-15',30),(86,49,'001','2025-01-10','2025-03-15',30),(87,50,'001','2021-09-01','2021-12-15',30),(88,51,'001','2022-01-10','2022-04-15',30),(89,52,'001','2022-09-01','2022-12-15',30),(90,53,'001','2020-09-01','2020-12-15',30),(91,54,'001','2021-01-10','2021-04-15',30),(92,55,'001','2021-09-01','2021-12-15',30),(93,56,'001','2020-09-01','2020-12-15',30),(94,57,'001','2021-01-10','2021-04-15',30),(95,58,'001','2021-09-01','2021-12-15',30);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `preferred_name` varchar(45) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `gender_identity` char(1) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `international_status` char(2) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_address1_idx` (`address_id`),
  CONSTRAINT `fk_student_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `chk_student_gender` CHECK ((`gender_identity` in (_utf8mb4'M',_utf8mb4'F',_utf8mb4'O',NULL)))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (22,'Sedin','Daniel',NULL,'1980-09-26','M',140,'DO'),(24,'Carney','Mark J.',NULL,'1965-03-16','M',131,'IN'),(25,'Carney','Mark',NULL,'1965-03-16','M',145,'DO'),(28,'Holmes','Sherlock',NULL,'1854-01-06','M',134,'IN'),(29,'Bing','Monica',NULL,'1969-04-22','F',135,'IN'),(30,'Bing','Chandler',NULL,'1968-04-08','M',135,'IN'),(31,'Simpson','Homer',NULL,'1956-05-12','M',136,'IN'),(32,'Simpson','Marge',NULL,'1956-03-19','F',136,'IN'),(33,'Sedin','Henrik',NULL,'1980-09-26','M',133,'DO'),(34,'Simpson','Lisa',NULL,'1981-05-09','F',136,'IN'),(35,'Simpson','Maggie',NULL,'1988-01-12','F',136,'IN'),(36,'Potter','Harry',NULL,'1980-07-31','M',137,'IN'),(37,'Granger','Hermione',NULL,'1979-09-19','F',149,'IN'),(38,'Starmer','Keir',NULL,'1962-09-02','M',138,'IN'),(39,'Biden','Joe',NULL,'1942-11-20','M',139,'IN'),(40,'Jobs','Steven','Steve','1955-02-24','M',144,'IN'),(41,'Wayne','Bruce',NULL,'1972-02-19','M',152,'IN'),(42,'Wayne','Bruce','Batman','1972-02-19','M',153,'IN'),(43,'El','Kal','Clark','1975-06-18','M',154,'IN'),(44,'Kent','Clark',NULL,'1975-06-18','M',154,'IN'),(45,'Krueger','Freddy',NULL,'1942-01-01','M',156,'IN'),(46,'Fox','Terry',NULL,'1958-07-28','M',150,'DO'),(47,'Simpson','Bart','El Barto','1979-04-01','M',136,'IN'),(48,'Blakely','Keegan',NULL,'1900-01-01','M',157,'DO'),(49,'Blakely','Keegan K.',NULL,'1900-01-01','M',157,'DO');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_enrolment`
--

DROP TABLE IF EXISTS `student_enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_enrolment` (
  `student_enrolment_id` int NOT NULL AUTO_INCREMENT,
  `section_id` int NOT NULL,
  `enrolment_date` date NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`student_enrolment_id`),
  KEY `fk_student_enrolment_section1_idx` (`section_id`),
  KEY `fk_student_enrolment_student1_idx` (`student_id`),
  CONSTRAINT `fk_student_enrolment_section1` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_student_enrolment_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_enrolment`
--

LOCK TABLES `student_enrolment` WRITE;
/*!40000 ALTER TABLE `student_enrolment` DISABLE KEYS */;
INSERT INTO `student_enrolment` VALUES (47,87,'2021-09-01',22),(48,88,'2022-01-10',22),(49,89,'2022-09-01',22),(50,87,'2021-09-01',33),(51,88,'2022-01-10',33),(52,89,'2022-09-01',33),(53,68,'2020-09-01',25),(54,62,'2020-09-01',28),(55,63,'2021-01-10',28),(56,64,'2021-09-01',28),(57,93,'2020-09-01',29),(58,94,'2021-01-10',29),(59,93,'2020-09-01',29),(60,65,'2020-09-01',34),(61,66,'2021-01-10',34),(62,67,'2021-09-01',34),(63,68,'2020-09-01',34),(64,69,'2021-01-10',34),(65,70,'2021-09-01',34),(66,90,'2020-09-01',36),(67,91,'2021-01-10',36),(68,92,'2021-09-01',36),(69,90,'2020-09-01',37),(70,91,'2021-01-10',37),(71,92,'2021-09-01',37),(72,68,'2020-09-01',38),(73,69,'2021-01-10',38),(74,70,'2021-09-01',38),(75,68,'2020-09-01',39),(76,69,'2021-01-10',39),(77,70,'2021-09-01',39),(78,71,'2020-09-01',40),(79,62,'2020-09-01',42),(80,65,'2020-09-01',43),(81,66,'2021-01-10',44),(82,87,'2021-09-01',46),(83,88,'2022-01-10',46),(84,74,'2019-09-05',48),(85,75,'2020-01-10',48),(86,76,'2021-09-05',48),(87,77,'2022-01-10',48),(88,78,'2023-09-05',48),(89,84,'2025-01-10',41),(90,85,'2025-01-10',41),(91,86,'2025-01-10',41),(92,84,'2025-01-10',24),(93,85,'2025-01-10',24),(94,86,'2025-01-10',24),(95,84,'2025-01-10',48),(96,85,'2025-01-10',48),(97,86,'2025-01-10',48);
/*!40000 ALTER TABLE `student_enrolment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_enrolment_status`
--

DROP TABLE IF EXISTS `student_enrolment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_enrolment_status` (
  `student_enrolment_id` int NOT NULL,
  `position` int NOT NULL,
  `status` varchar(20) NOT NULL,
  `status_date` date NOT NULL,
  PRIMARY KEY (`student_enrolment_id`,`position`),
  CONSTRAINT `fk_student_enrolment_status_student_enrolment1` FOREIGN KEY (`student_enrolment_id`) REFERENCES `student_enrolment` (`student_enrolment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_enrolment_status`
--

LOCK TABLES `student_enrolment_status` WRITE;
/*!40000 ALTER TABLE `student_enrolment_status` DISABLE KEYS */;
INSERT INTO `student_enrolment_status` VALUES (47,1,'enrolled','2021-09-01'),(47,2,'passed','2021-12-15'),(48,1,'enrolled','2022-01-10'),(48,2,'passed','2022-04-15'),(49,1,'enrolled','2022-09-01'),(49,2,'passed','2022-12-15'),(50,1,'enrolled','2021-09-01'),(50,2,'passed','2021-12-15'),(51,1,'enrolled','2022-01-10'),(51,2,'passed','2022-04-15'),(52,1,'enrolled','2022-09-01'),(52,2,'passed','2022-12-15'),(53,1,'enrolled','2020-09-01'),(53,2,'passed','2020-12-15'),(54,1,'enrolled','2020-09-01'),(54,2,'passed','2020-12-15'),(55,1,'enrolled','2021-01-10'),(55,2,'passed','2021-04-15'),(56,1,'enrolled','2021-09-01'),(56,2,'passed','2021-12-15'),(57,1,'enrolled','2020-09-01'),(57,2,'passed','2020-12-15'),(58,1,'enrolled','2021-01-10'),(58,2,'passed','2021-04-15'),(59,1,'enrolled','2020-09-01'),(59,2,'passed','2020-12-15'),(60,1,'enrolled','2020-09-01'),(60,2,'passed','2020-12-15'),(61,1,'enrolled','2021-01-10'),(61,2,'passed','2021-04-15'),(62,1,'enrolled','2021-09-01'),(62,2,'passed','2021-12-15'),(63,1,'enrolled','2020-09-01'),(63,2,'passed','2020-12-15'),(64,1,'enrolled','2021-01-10'),(64,2,'passed','2021-04-15'),(65,1,'enrolled','2021-09-01'),(65,2,'passed','2021-12-15'),(66,1,'enrolled','2020-09-01'),(66,2,'passed','2020-12-15'),(67,1,'enrolled','2021-01-10'),(67,2,'passed','2021-04-15'),(68,1,'enrolled','2021-09-01'),(68,2,'failed','2021-12-15'),(69,1,'enrolled','2020-09-01'),(69,2,'passed','2020-12-15'),(70,1,'enrolled','2021-01-10'),(70,2,'passed','2021-04-15'),(71,1,'enrolled','2021-09-01'),(71,2,'passed','2021-12-15'),(72,1,'enrolled','2020-09-01'),(72,2,'passed','2020-12-15'),(73,1,'enrolled','2021-01-10'),(73,2,'passed','2021-04-15'),(74,1,'enrolled','2021-09-01'),(74,2,'passed','2021-12-15'),(75,1,'enrolled','2020-09-01'),(75,2,'passed','2020-12-15'),(76,1,'enrolled','2021-01-10'),(76,2,'passed','2021-04-15'),(77,1,'enrolled','2021-09-01'),(77,2,'passed','2021-12-15'),(78,1,'enrolled','2020-09-01'),(78,2,'dropped','2020-10-15'),(79,1,'enrolled','2020-09-01'),(79,2,'passed','2020-12-15'),(80,1,'enrolled','2020-09-01'),(80,2,'passed','2020-12-15'),(81,1,'enrolled','2021-01-10'),(81,2,'passed','2021-04-15'),(82,1,'enrolled','2021-09-01'),(82,2,'passed','2021-12-15'),(83,1,'enrolled','2022-01-10'),(83,2,'passed','2022-04-15'),(84,1,'enrolled','2019-09-05'),(84,2,'passed','2019-12-15'),(85,1,'enrolled','2020-01-10'),(85,2,'passed','2020-04-20'),(86,1,'enrolled','2021-09-05'),(86,2,'passed','2021-12-15'),(87,1,'enrolled','2022-01-10'),(87,2,'passed','2022-04-20'),(88,1,'enrolled','2023-09-05'),(88,2,'passed','2023-12-15'),(89,1,'enrolled','2025-01-10'),(89,2,'passed','2025-03-15'),(90,1,'enrolled','2025-01-10'),(90,2,'passed','2025-03-15'),(91,1,'enrolled','2025-01-10'),(91,2,'passed','2025-03-15'),(92,1,'enrolled','2025-01-10'),(92,2,'passed','2025-03-15'),(93,1,'enrolled','2025-01-10'),(93,2,'passed','2025-03-15'),(94,1,'enrolled','2025-01-10'),(94,2,'passed','2025-03-15'),(95,1,'enrolled','2025-01-10'),(95,2,'passed','2025-03-15'),(96,1,'enrolled','2025-01-10'),(96,2,'passed','2025-03-15'),(97,1,'enrolled','2025-01-10'),(97,2,'passed','2025-03-15');
/*!40000 ALTER TABLE `student_enrolment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_program`
--

DROP TABLE IF EXISTS `student_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_program` (
  `student_id` int NOT NULL,
  `program_code` char(4) NOT NULL,
  `position` int NOT NULL,
  `status` varchar(20) NOT NULL,
  `status_date` date NOT NULL,
  PRIMARY KEY (`student_id`,`program_code`,`position`),
  KEY `fk_student_program_program1_idx` (`program_code`),
  CONSTRAINT `fk_student_program_program1` FOREIGN KEY (`program_code`) REFERENCES `program` (`program_code`),
  CONSTRAINT `fk_student_program_student1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_program`
--

LOCK TABLES `student_program` WRITE;
/*!40000 ALTER TABLE `student_program` DISABLE KEYS */;
INSERT INTO `student_program` VALUES (22,'SPOR',1,'applied','2021-06-01'),(22,'SPOR',2,'in_progress','2021-09-01'),(22,'SPOR',3,'graduated','2022-12-15'),(24,'BUSN',1,'applied','2024-10-01'),(24,'BUSN',2,'in_progress','2025-01-10'),(24,'BUSN',3,'completed','2025-03-15'),(25,'POLI',1,'applied','2020-06-01'),(25,'POLI',2,'in_progress','2020-09-01'),(28,'CINV',1,'applied','2020-06-01'),(28,'CINV',2,'in_progress','2020-09-01'),(28,'CINV',3,'graduated','2021-12-15'),(29,'CULI',1,'applied','2020-06-01'),(29,'CULI',2,'in_progress','2020-09-01'),(29,'CULI',3,'graduated','2021-04-15'),(30,'JOUR',1,'applied','2020-06-01'),(30,'JOUR',2,'rejected','2020-07-01'),(33,'SPOR',1,'applied','2021-06-01'),(33,'SPOR',2,'in_progress','2021-09-01'),(33,'SPOR',3,'graduated','2022-12-15'),(34,'JOUR',1,'applied','2020-06-01'),(34,'JOUR',2,'in_progress','2020-09-01'),(34,'JOUR',3,'graduated','2021-12-15'),(34,'POLI',1,'applied','2020-06-01'),(34,'POLI',2,'in_progress','2020-09-01'),(34,'POLI',3,'graduated','2021-12-15'),(36,'WCWZ',1,'applied','2020-06-01'),(36,'WCWZ',2,'in_progress','2020-09-01'),(37,'WCWZ',1,'applied','2020-06-01'),(37,'WCWZ',2,'in_progress','2020-09-01'),(37,'WCWZ',3,'graduated','2021-12-15'),(38,'POLI',1,'applied','2020-06-01'),(38,'POLI',2,'in_progress','2020-09-01'),(38,'POLI',3,'graduated','2021-12-15'),(39,'POLI',1,'applied','2020-06-01'),(39,'POLI',2,'in_progress','2020-09-01'),(39,'POLI',3,'graduated','2021-12-15'),(40,'CSCI',1,'applied','2020-06-01'),(40,'CSCI',2,'in_progress','2020-09-01'),(40,'CSCI',3,'withdrawn','2020-10-15'),(41,'BUSN',1,'applied','2024-10-01'),(41,'BUSN',2,'in_progress','2025-01-10'),(41,'BUSN',3,'completed','2025-03-15'),(42,'CINV',1,'applied','2020-06-01'),(42,'CINV',2,'in_progress','2020-09-01'),(43,'JOUR',1,'applied','2020-06-01'),(43,'JOUR',2,'in_progress','2020-09-01'),(43,'JOUR',3,'graduated','2021-04-15'),(45,'CINV',1,'applied','2021-06-01'),(45,'CINV',2,'rejected','2021-07-01'),(46,'SPOR',1,'applied','2021-06-01'),(46,'SPOR',2,'in_progress','2021-09-01'),(46,'SPOR',3,'withdrawn','2022-01-01'),(46,'SPOR',4,'honorary_graduated','2022-06-01'),(48,'BUSN',1,'applied','2024-10-01'),(48,'BUSN',2,'in_progress','2025-01-10'),(48,'BUSN',3,'completed','2025-03-15'),(48,'DATA',1,'applied','2019-05-01'),(48,'DATA',2,'in_progress','2019-09-05'),(48,'DATA',3,'graduated','2023-12-15');
/*!40000 ALTER TABLE `student_program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-19 14:27:05

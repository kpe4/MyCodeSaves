-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: college2db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `c_number` varchar(50) NOT NULL,
  `places` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(50) NOT NULL,
  `stud_count` tinyint DEFAULT NULL,
  `subject_id` int NOT NULL,
  `stud_group_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `stud_group_id` (`stud_group_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `lessons_ibfk_2` FOREIGN KEY (`stud_group_id`) REFERENCES `student_groups` (`id`),
  CONSTRAINT `lessons_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shedules`
--

DROP TABLE IF EXISTS `shedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_day` date NOT NULL,
  `lesson_1_id` int DEFAULT NULL,
  `lesson_2_id` int DEFAULT NULL,
  `lesson_3_id` int DEFAULT NULL,
  `lesson_4_id` int DEFAULT NULL,
  `lesson_5_id` int DEFAULT NULL,
  `lesson_6_id` int DEFAULT NULL,
  `lesson_7_id` int DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_1_id` (`lesson_1_id`),
  KEY `lesson_2_id` (`lesson_2_id`),
  KEY `lesson_3_id` (`lesson_3_id`),
  KEY `lesson_4_id` (`lesson_4_id`),
  KEY `lesson_5_id` (`lesson_5_id`),
  KEY `lesson_6_id` (`lesson_6_id`),
  KEY `lesson_7_id` (`lesson_7_id`),
  CONSTRAINT `shedules_ibfk_1` FOREIGN KEY (`lesson_1_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_2` FOREIGN KEY (`lesson_2_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_3` FOREIGN KEY (`lesson_3_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_4` FOREIGN KEY (`lesson_4_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_5` FOREIGN KEY (`lesson_5_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_6` FOREIGN KEY (`lesson_6_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `shedules_ibfk_7` FOREIGN KEY (`lesson_7_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shedules`
--

LOCK TABLES `shedules` WRITE;
/*!40000 ALTER TABLE `shedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `shedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grades`
--

DROP TABLE IF EXISTS `student_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_grades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `g_value` tinyint DEFAULT NULL,
  `teacher_id` int NOT NULL,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `lesson_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grades`
--

LOCK TABLES `student_grades` WRITE;
/*!40000 ALTER TABLE `student_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_groups`
--

DROP TABLE IF EXISTS `student_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `stud_count` tinyint DEFAULT NULL,
  `specialization` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_groups`
--

LOCK TABLES `student_groups` WRITE;
/*!40000 ALTER TABLE `student_groups` DISABLE KEYS */;
INSERT INTO `student_groups` VALUES (1,'ИС-65',18,'Компьютерные сети'),(2,'ИС-30',22,'Компьютерные сети'),(3,'ИС-94',30,'Компьютерные сети'),(4,'ИС-73',19,'Программирование'),(5,'ИС-51',19,'Веб-разработка'),(6,'ИС-72',24,'Программирование'),(7,'ИС-86',25,'Компьютерные сети'),(8,'ИС-49',19,'Веб-разработка'),(9,'ИС-76',29,'Информационные системы'),(10,'ИС-61',32,'Веб-разработка'),(11,'ИС-26',20,'Веб-разработка'),(12,'ИС-78',29,'Программирование'),(13,'ИС-76',19,'Компьютерные сети'),(14,'ИС-50',32,'Веб-разработка'),(15,'ИС-25',29,'Программирование'),(16,'ИС-91',25,'Компьютерные сети'),(17,'ИС-83',24,'Компьютерные сети'),(18,'ИС-59',24,'Веб-разработка'),(19,'ИС-33',31,'Программирование'),(20,'ИС-26',27,'Информационные системы'),(21,'ИС-58',20,'Компьютерные сети'),(22,'ИС-23',22,'Информационные системы'),(23,'ИС-61',33,'Веб-разработка'),(24,'ИС-73',26,'Веб-разработка'),(25,'ИС-13',28,'Программирование'),(26,'ИС-35',21,'Веб-разработка'),(27,'ИС-68',17,'Веб-разработка'),(28,'ИС-46',23,'Компьютерные сети'),(29,'ИС-81',26,'Информационные системы'),(30,'ИС-35',20,'Информационные системы'),(31,'ИС-37',20,'Информационные системы'),(32,'ИС-58',20,'Компьютерные сети'),(33,'ИС-98',27,'Программирование'),(34,'ИС-91',16,'Веб-разработка'),(35,'ИС-72',30,'Веб-разработка'),(36,'ИС-99',16,'Информационные системы'),(37,'ИС-24',15,'Веб-разработка'),(38,'ИС-40',28,'Программирование'),(39,'ИС-73',18,'Компьютерные сети'),(40,'ИС-56',17,'Программирование'),(41,'ИС-79',32,'Веб-разработка'),(42,'ИС-35',18,'Компьютерные сети'),(43,'ИС-50',20,'Программирование'),(44,'ИС-47',34,'Информационные системы'),(45,'ИС-47',30,'Информационные системы'),(46,'ИС-71',21,'Веб-разработка'),(47,'ИС-73',34,'Веб-разработка'),(48,'ИС-86',29,'Компьютерные сети'),(49,'ИС-98',25,'Веб-разработка'),(50,'ИС-36',32,'Программирование'),(51,'ИС-57',16,'Компьютерные сети'),(52,'ИС-62',28,'Информационные системы'),(53,'ИС-97',30,'Компьютерные сети'),(54,'ИС-23',17,'Программирование'),(55,'ИС-85',17,'Программирование'),(56,'ИС-94',26,'Компьютерные сети'),(57,'ИС-74',35,'Веб-разработка'),(58,'ИС-71',20,'Информационные системы'),(59,'ИС-74',29,'Программирование'),(60,'ИС-14',27,'Компьютерные сети'),(61,'ИС-64',22,'Программирование'),(62,'ИС-32',15,'Информационные системы'),(63,'ИС-68',20,'Информационные системы'),(64,'ИС-57',33,'Компьютерные сети'),(65,'ИС-33',35,'Программирование'),(66,'ИС-63',29,'Веб-разработка'),(67,'ИС-76',15,'Компьютерные сети'),(68,'ИС-66',21,'Веб-разработка'),(69,'ИС-54',23,'Веб-разработка'),(70,'ИС-77',35,'Веб-разработка'),(71,'ИС-96',17,'Веб-разработка'),(72,'ИС-72',29,'Информационные системы'),(73,'ИС-85',15,'Веб-разработка'),(74,'ИС-99',18,'Компьютерные сети'),(75,'ИС-48',32,'Компьютерные сети'),(76,'ИС-53',16,'Компьютерные сети'),(77,'ИС-51',25,'Программирование'),(78,'ИС-70',21,'Веб-разработка'),(79,'ИС-77',18,'Веб-разработка'),(80,'ИС-19',35,'Веб-разработка'),(81,'ИС-71',32,'Программирование'),(82,'ИС-69',26,'Компьютерные сети'),(83,'ИС-23',24,'Компьютерные сети'),(84,'ИС-87',31,'Информационные системы'),(85,'ИС-33',21,'Компьютерные сети'),(86,'ИС-37',35,'Компьютерные сети'),(87,'ИС-79',16,'Компьютерные сети'),(88,'ИС-59',34,'Программирование'),(89,'ИС-29',16,'Веб-разработка'),(90,'ИС-18',25,'Информационные системы'),(91,'ИС-93',30,'Компьютерные сети'),(92,'ИС-36',30,'Компьютерные сети'),(93,'ИС-33',27,'Программирование'),(94,'ИС-38',33,'Информационные системы'),(95,'ИС-83',27,'Веб-разработка'),(96,'ИС-79',22,'Информационные системы'),(97,'ИС-92',23,'Информационные системы'),(98,'ИС-40',30,'Веб-разработка'),(99,'ИС-53',18,'Информационные системы'),(100,'ИС-70',15,'Программирование');
/*!40000 ALTER TABLE `student_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `student_group_id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `p_number` varchar(50) NOT NULL,
  `birthday_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_number` (`p_number`),
  UNIQUE KEY `email` (`email`),
  KEY `student_group_id` (`student_group_id`),
  CONSTRAINT `student_group_id` FOREIGN KEY (`student_group_id`) REFERENCES `student_groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (4,'Петрова Сергей',4,'student_1@academy.com','+79782416360','2002-09-14',NULL),(5,'Петрова Сергей',1,'student_2@academy.com','+79786889725','2006-02-06',NULL),(6,'Кузнецова Сергей',3,'student_3@academy.com','+79781169878','2004-07-03',NULL),(7,'Иванов Анна',2,'student_4@academy.com','+79788367159','2001-09-09',NULL),(8,'Иванов Мария',3,'student_5@academy.com','+79788280561','2004-08-06',NULL),(9,'Кузнецова Дмитрий',3,'student_6@academy.com','+79783608756','2000-09-23',NULL),(10,'Смирнов Мария',5,'student_7@academy.com','+79789739640','2006-01-07',NULL),(11,'Кузнецова Сергей',3,'student_8@academy.com','+79789041710','2000-11-17',NULL),(12,'Сидоров Дмитрий',2,'student_9@academy.com','+79789790153','2000-11-12',NULL),(13,'Иванов Мария',3,'student_10@academy.com','+79785341323','2004-08-11',NULL),(14,'Сидоров Дмитрий',1,'student_11@academy.com','+79782444568','2001-08-29',NULL),(15,'Смирнов Мария',3,'student_12@academy.com','+79785797690','2001-10-29',NULL),(16,'Смирнов Мария',1,'student_13@academy.com','+79783563820','2005-12-21',NULL),(17,'Смирнов Сергей',1,'student_14@academy.com','+79786797302','2006-09-07',NULL),(18,'Смирнов Дмитрий',2,'student_15@academy.com','+79789012854','2004-04-28',NULL),(19,'Сидоров Сергей',2,'student_16@academy.com','+79787216419','2004-06-28',NULL),(20,'Иванов Анна',4,'student_17@academy.com','+79785095555','2000-07-02',NULL),(21,'Кузнецова Иван',5,'student_18@academy.com','+79784354259','2000-02-08',NULL),(22,'Кузнецова Дмитрий',5,'student_19@academy.com','+79782313399','2000-08-09',NULL),(23,'Кузнецова Иван',4,'student_20@academy.com','+79787179020','2000-05-01',NULL),(24,'Кузнецова Иван',2,'student_21@academy.com','+79782898905','2000-12-17',NULL),(25,'Смирнов Иван',3,'student_22@academy.com','+79784384634','2003-12-29',NULL),(26,'Иванов Мария',4,'student_23@academy.com','+79784902060','2002-06-15',NULL),(27,'Петрова Сергей',3,'student_24@academy.com','+79782073320','2001-07-25',NULL),(28,'Петрова Мария',5,'student_25@academy.com','+79785947298','2001-03-31',NULL),(29,'Кузнецова Анна',1,'student_26@academy.com','+79788449006','2000-06-26',NULL),(30,'Иванов Дмитрий',1,'student_27@academy.com','+79783092044','2005-02-19',NULL),(31,'Иванов Иван',5,'student_28@academy.com','+79787657450','2005-07-12',NULL),(32,'Кузнецова Дмитрий',5,'student_29@academy.com','+79786372705','2001-06-03',NULL),(33,'Кузнецова Анна',2,'student_30@academy.com','+79787979797','2006-03-23',NULL),(34,'Петрова Анна',1,'student_31@academy.com','+79788633831','2004-07-22',NULL),(35,'Смирнов Мария',2,'student_32@academy.com','+79786811274','2002-07-13',NULL),(36,'Сидоров Дмитрий',3,'student_33@academy.com','+79783609405','2005-11-17',NULL),(37,'Сидоров Сергей',3,'student_34@academy.com','+79787733359','2002-01-17',NULL),(38,'Петрова Анна',1,'student_35@academy.com','+79781620157','2001-10-18',NULL),(39,'Кузнецова Иван',3,'student_36@academy.com','+79788526108','2006-05-24',NULL),(40,'Иванов Иван',3,'student_37@academy.com','+79787311642','2005-12-28',NULL),(41,'Кузнецова Анна',5,'student_38@academy.com','+79782828416','2002-06-18',NULL),(42,'Смирнов Иван',4,'student_39@academy.com','+79783185862','2006-03-18',NULL),(43,'Петрова Дмитрий',1,'student_40@academy.com','+79788842647','2005-11-25',NULL),(44,'Смирнов Мария',2,'student_41@academy.com','+79783740624','2002-03-19',NULL),(45,'Сидоров Мария',4,'student_42@academy.com','+79784657532','2001-06-11',NULL),(46,'Сидоров Дмитрий',2,'student_43@academy.com','+79784888697','2003-07-30',NULL),(47,'Иванов Анна',1,'student_44@academy.com','+79786048288','2003-01-12',NULL),(48,'Петрова Сергей',1,'student_45@academy.com','+79784272097','2004-02-03',NULL),(49,'Кузнецова Дмитрий',5,'student_46@academy.com','+79789610453','2002-05-14',NULL),(50,'Петрова Дмитрий',4,'student_47@academy.com','+79788299314','2006-03-05',NULL),(51,'Кузнецова Иван',1,'student_48@academy.com','+79788148839','2003-03-25',NULL),(52,'Сидоров Дмитрий',2,'student_49@academy.com','+79785804609','2003-07-17',NULL),(53,'Петрова Дмитрий',5,'student_50@academy.com','+79784631882','2002-02-06',NULL),(54,'Кузнецова Анна',3,'student_51@academy.com','+79785506779','2006-06-25',NULL),(55,'Петрова Анна',5,'student_52@academy.com','+79785952860','2000-04-25',NULL),(56,'Кузнецова Сергей',1,'student_53@academy.com','+79781321910','2006-10-06',NULL),(57,'Петрова Дмитрий',3,'student_54@academy.com','+79781272711','2003-11-04',NULL),(58,'Смирнов Мария',2,'student_55@academy.com','+79781025379','2006-10-27',NULL),(59,'Смирнов Дмитрий',3,'student_56@academy.com','+79788166507','2003-07-12',NULL),(60,'Петрова Иван',3,'student_57@academy.com','+79788432118','2006-05-04',NULL),(61,'Смирнов Иван',3,'student_58@academy.com','+79785913243','2001-06-16',NULL),(62,'Сидоров Сергей',2,'student_59@academy.com','+79786029992','2001-02-07',NULL),(63,'Иванов Иван',3,'student_60@academy.com','+79787321028','2001-04-23',NULL),(64,'Кузнецова Дмитрий',5,'student_61@academy.com','+79782229728','2001-04-02',NULL),(65,'Смирнов Сергей',2,'student_62@academy.com','+79788840242','2001-11-27',NULL),(66,'Иванов Мария',5,'student_63@academy.com','+79787534016','2004-08-20',NULL),(67,'Иванов Анна',3,'student_64@academy.com','+79782495774','2003-06-19',NULL),(68,'Кузнецова Иван',1,'student_65@academy.com','+79787502111','2001-06-22',NULL),(69,'Смирнов Дмитрий',4,'student_66@academy.com','+79783141678','2005-08-11',NULL),(70,'Сидоров Анна',1,'student_67@academy.com','+79784963535','2004-10-21',NULL),(71,'Смирнов Иван',4,'student_68@academy.com','+79787787825','2005-06-11',NULL),(72,'Иванов Мария',5,'student_69@academy.com','+79784903851','2005-04-04',NULL),(73,'Петрова Сергей',2,'student_70@academy.com','+79785739870','2004-03-11',NULL),(74,'Сидоров Сергей',3,'student_71@academy.com','+79784672804','2005-03-17',NULL),(75,'Кузнецова Сергей',2,'student_72@academy.com','+79789598240','2004-09-09',NULL),(76,'Кузнецова Сергей',1,'student_73@academy.com','+79789913712','2005-08-03',NULL),(77,'Иванов Иван',2,'student_74@academy.com','+79787353610','2006-03-28',NULL),(78,'Сидоров Сергей',1,'student_75@academy.com','+79786543096','2000-07-05',NULL),(79,'Петрова Сергей',3,'student_76@academy.com','+79789140662','2001-10-17',NULL),(80,'Петрова Сергей',2,'student_77@academy.com','+79785504769','2005-09-22',NULL),(81,'Смирнов Мария',3,'student_78@academy.com','+79785354236','2000-10-19',NULL),(82,'Петрова Иван',1,'student_79@academy.com','+79789840754','2002-05-25',NULL),(83,'Смирнов Дмитрий',3,'student_80@academy.com','+79784034067','2002-04-09',NULL),(84,'Петрова Мария',2,'student_81@academy.com','+79785946827','2006-10-08',NULL),(85,'Сидоров Анна',4,'student_82@academy.com','+79788291757','2000-04-22',NULL),(86,'Смирнов Мария',4,'student_83@academy.com','+79785263714','2006-09-16',NULL),(87,'Сидоров Сергей',5,'student_84@academy.com','+79789081688','2006-05-01',NULL),(88,'Смирнов Дмитрий',4,'student_85@academy.com','+79784409014','2000-07-29',NULL),(89,'Иванов Анна',1,'student_86@academy.com','+79785446698','2003-03-10',NULL),(90,'Смирнов Дмитрий',4,'student_87@academy.com','+79787490363','2004-07-21',NULL),(91,'Смирнов Иван',4,'student_88@academy.com','+79786738896','2002-03-24',NULL),(92,'Сидоров Мария',5,'student_89@academy.com','+79783714130','2000-06-06',NULL),(93,'Смирнов Сергей',1,'student_90@academy.com','+79788791426','2000-05-10',NULL),(94,'Иванов Мария',5,'student_91@academy.com','+79786821325','2005-02-19',NULL),(95,'Смирнов Дмитрий',4,'student_92@academy.com','+79787138085','2003-09-07',NULL),(96,'Кузнецова Мария',1,'student_93@academy.com','+79788094596','2003-11-17',NULL),(97,'Кузнецова Сергей',4,'student_94@academy.com','+79789974772','2004-05-23',NULL),(98,'Иванов Анна',1,'student_95@academy.com','+79783802866','2000-07-13',NULL),(99,'Иванов Сергей',5,'student_96@academy.com','+79781358493','2004-10-29',NULL),(100,'Смирнов Сергей',2,'student_97@academy.com','+79781681873','2001-12-07',NULL),(101,'Иванов Иван',5,'student_98@academy.com','+79781649769','2005-03-26',NULL),(102,'Кузнецова Мария',5,'student_99@academy.com','+79781714730','2005-08-29',NULL),(103,'Иванов Дмитрий',2,'student_100@academy.com','+79786333554','2000-01-11',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) NOT NULL,
  `hours` decimal(10,0) NOT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'История - Курс №2',92,79),(2,'Математика - Курс №1',79,94),(3,'Физика - Курс №2',52,60),(4,'Физика - Курс №4',75,75),(5,'Физика - Курс №2',121,70),(6,'Английский язык - Курс №1',122,10),(7,'История - Курс №2',70,83),(8,'Физика - Курс №1',108,4),(9,'История - Курс №3',61,4),(10,'Английский язык - Курс №4',118,15),(11,'Физика - Курс №3',56,39),(12,'История - Курс №2',127,32),(13,'История - Курс №2',79,66),(14,'Программирование - Курс №5',142,6),(15,'Базы данных - Курс №2',36,53),(16,'История - Курс №5',47,52),(17,'Физика - Курс №3',137,31),(18,'Физика - Курс №5',53,26),(19,'Английский язык - Курс №3',127,74),(20,'Базы данных - Курс №5',117,82),(21,'История - Курс №4',86,12),(22,'Физика - Курс №1',103,17),(23,'Физика - Курс №3',73,64),(24,'Программирование - Курс №1',145,23),(25,'Базы данных - Курс №5',145,13),(26,'Математика - Курс №2',130,58),(27,'Английский язык - Курс №1',105,91),(28,'Физика - Курс №3',111,2),(29,'Программирование - Курс №3',56,67),(30,'История - Курс №2',104,93),(31,'История - Курс №1',36,14),(32,'История - Курс №1',127,16),(33,'История - Курс №1',70,37),(34,'Физика - Курс №4',109,14),(35,'Программирование - Курс №3',87,72),(36,'Физика - Курс №4',112,68),(37,'Английский язык - Курс №3',31,8),(38,'Программирование - Курс №3',131,37),(39,'Физика - Курс №1',147,83),(40,'История - Курс №2',145,71),(41,'Математика - Курс №5',105,29),(42,'История - Курс №1',43,76),(43,'Программирование - Курс №1',37,19),(44,'Физика - Курс №3',146,80),(45,'Английский язык - Курс №1',43,81),(46,'История - Курс №4',102,22),(47,'Математика - Курс №2',121,90),(48,'Английский язык - Курс №3',123,9),(49,'Английский язык - Курс №4',114,30),(50,'Базы данных - Курс №4',50,67),(51,'Базы данных - Курс №3',88,82),(52,'Математика - Курс №2',101,76),(53,'Программирование - Курс №2',75,88),(54,'История - Курс №4',107,33),(55,'Программирование - Курс №1',125,57),(56,'История - Курс №1',99,50),(57,'Базы данных - Курс №3',72,40),(58,'Базы данных - Курс №2',146,8),(59,'Физика - Курс №4',34,62),(60,'Физика - Курс №5',45,15),(61,'История - Курс №3',98,74),(62,'Математика - Курс №4',117,65),(63,'Математика - Курс №4',111,68),(64,'Английский язык - Курс №4',65,16),(65,'Программирование - Курс №3',65,30),(66,'Физика - Курс №3',52,9),(67,'Базы данных - Курс №2',49,25),(68,'Базы данных - Курс №4',121,26),(69,'История - Курс №2',124,82),(70,'Базы данных - Курс №3',54,31),(71,'Английский язык - Курс №2',95,56),(72,'Программирование - Курс №1',48,53),(73,'Программирование - Курс №4',145,43),(74,'Физика - Курс №1',139,96),(75,'Английский язык - Курс №4',116,91),(76,'История - Курс №5',61,39),(77,'Математика - Курс №2',134,64),(78,'Физика - Курс №4',64,47),(79,'Физика - Курс №4',117,13),(80,'Физика - Курс №1',47,56),(81,'Физика - Курс №4',128,9),(82,'Математика - Курс №3',92,38),(83,'Английский язык - Курс №4',105,1),(84,'История - Курс №4',56,14),(85,'История - Курс №3',84,25),(86,'Базы данных - Курс №5',122,50),(87,'Программирование - Курс №4',34,43),(88,'Математика - Курс №3',122,13),(89,'Программирование - Курс №2',98,84),(90,'Английский язык - Курс №3',88,38),(91,'Математика - Курс №1',37,42),(92,'История - Курс №1',135,8),(93,'История - Курс №1',111,99),(94,'Программирование - Курс №5',47,63),(95,'Физика - Курс №1',33,31),(96,'Программирование - Курс №5',83,39),(97,'Базы данных - Курс №5',92,80),(98,'Базы данных - Курс №3',64,86),(99,'Базы данных - Курс №2',94,81),(100,'Математика - Курс №4',71,50);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `p_number` varchar(50) NOT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p_number` (`p_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Teacher1','teach1@gmail.com','+7978284882201','2026-10-20'),(2,'Teacher2','teach2@gmail.com','+7978284882202','2026-10-20'),(3,'Teacher3','teach3@gmail.com','+7978284882203','2026-10-20'),(4,'Teacher4','teach4@gmail.com','+7978284882204','2026-10-20'),(5,'Teacher5','teach5@gmail.com','+7978284882205','2026-10-20'),(6,'Teacher6','teach6@gmail.com','+7978284882206','2026-10-20'),(7,'Teacher7','teach7@gmail.com','+7978284882207','2026-10-20'),(8,'Teacher8','teach8@gmail.com','+7978284882208','2026-10-20'),(9,'Teacher9','teach9@gmail.com','+7978284882209','2026-10-20'),(10,'Teacher10','teach10@gmail.com','+7978284882210','2026-10-20'),(11,'Teacher11','teach11@gmail.com','+7978284882211','2026-10-20'),(12,'Teacher12','teach12@gmail.com','+7978284882212','2026-10-20'),(13,'Teacher13','teach13@gmail.com','+7978284882213','2026-10-20'),(14,'Teacher14','teach14@gmail.com','+7978284882214','2026-10-20'),(15,'Teacher15','teach15@gmail.com','+7978284882215','2026-10-20'),(16,'Teacher16','teach16@gmail.com','+7978284882216','2026-10-20'),(17,'Teacher17','teach17@gmail.com','+7978284882217','2026-10-20'),(18,'Teacher18','teach18@gmail.com','+7978284882218','2026-10-20'),(19,'Teacher19','teach19@gmail.com','+7978284882219','2026-10-20'),(20,'Teacher20','teach20@gmail.com','+7978284882220','2026-10-20'),(21,'Teacher21','teach21@gmail.com','+7978284882221','2026-10-20'),(22,'Teacher22','teach22@gmail.com','+7978284882222','2026-10-20'),(23,'Teacher23','teach23@gmail.com','+7978284882223','2026-10-20'),(24,'Teacher24','teach24@gmail.com','+7978284882224','2026-10-20'),(25,'Teacher25','teach25@gmail.com','+7978284882225','2026-10-20'),(26,'Teacher26','teach26@gmail.com','+7978284882226','2026-10-20'),(27,'Teacher27','teach27@gmail.com','+7978284882227','2026-10-20'),(28,'Teacher28','teach28@gmail.com','+7978284882228','2026-10-20'),(29,'Teacher29','teach29@gmail.com','+7978284882229','2026-10-20'),(30,'Teacher30','teach30@gmail.com','+7978284882230','2026-10-20'),(31,'Teacher31','teach31@gmail.com','+7978284882231','2026-10-20'),(32,'Teacher32','teach32@gmail.com','+7978284882232','2026-10-20'),(33,'Teacher33','teach33@gmail.com','+7978284882233','2026-10-20'),(34,'Teacher34','teach34@gmail.com','+7978284882234','2026-10-20'),(35,'Teacher35','teach35@gmail.com','+7978284882235','2026-10-20'),(36,'Teacher36','teach36@gmail.com','+7978284882236','2026-10-20'),(37,'Teacher37','teach37@gmail.com','+7978284882237','2026-10-20'),(38,'Teacher38','teach38@gmail.com','+7978284882238','2026-10-20'),(39,'Teacher39','teach39@gmail.com','+7978284882239','2026-10-20'),(40,'Teacher40','teach40@gmail.com','+7978284882240','2026-10-20'),(41,'Teacher41','teach41@gmail.com','+7978284882241','2026-10-20'),(42,'Teacher42','teach42@gmail.com','+7978284882242','2026-10-20'),(43,'Teacher43','teach43@gmail.com','+7978284882243','2026-10-20'),(44,'Teacher44','teach44@gmail.com','+7978284882244','2026-10-20'),(45,'Teacher45','teach45@gmail.com','+7978284882245','2026-10-20'),(46,'Teacher46','teach46@gmail.com','+7978284882246','2026-10-20'),(47,'Teacher47','teach47@gmail.com','+7978284882247','2026-10-20'),(48,'Teacher48','teach48@gmail.com','+7978284882248','2026-10-20'),(49,'Teacher49','teach49@gmail.com','+7978284882249','2026-10-20'),(50,'Teacher50','teach50@gmail.com','+7978284882250','2026-10-20'),(51,'Teacher51','teach51@gmail.com','+7978284882251','2026-10-20'),(52,'Teacher52','teach52@gmail.com','+7978284882252','2026-10-20'),(53,'Teacher53','teach53@gmail.com','+7978284882253','2026-10-20'),(54,'Teacher54','teach54@gmail.com','+7978284882254','2026-10-20'),(55,'Teacher55','teach55@gmail.com','+7978284882255','2026-10-20'),(56,'Teacher56','teach56@gmail.com','+7978284882256','2026-10-20'),(57,'Teacher57','teach57@gmail.com','+7978284882257','2026-10-20'),(58,'Teacher58','teach58@gmail.com','+7978284882258','2026-10-20'),(59,'Teacher59','teach59@gmail.com','+7978284882259','2026-10-20'),(60,'Teacher60','teach60@gmail.com','+7978284882260','2026-10-20'),(61,'Teacher61','teach61@gmail.com','+7978284882261','2026-10-20'),(62,'Teacher62','teach62@gmail.com','+7978284882262','2026-10-20'),(63,'Teacher63','teach63@gmail.com','+7978284882263','2026-10-20'),(64,'Teacher64','teach64@gmail.com','+7978284882264','2026-10-20'),(65,'Teacher65','teach65@gmail.com','+7978284882265','2026-10-20'),(66,'Teacher66','teach66@gmail.com','+7978284882266','2026-10-20'),(67,'Teacher67','teach67@gmail.com','+7978284882267','2026-10-20'),(68,'Teacher68','teach68@gmail.com','+7978284882268','2026-10-20'),(69,'Teacher69','teach69@gmail.com','+7978284882269','2026-10-20'),(70,'Teacher70','teach70@gmail.com','+7978284882270','2026-10-20'),(71,'Teacher71','teach71@gmail.com','+7978284882271','2026-10-20'),(72,'Teacher72','teach72@gmail.com','+7978284882272','2026-10-20'),(73,'Teacher73','teach73@gmail.com','+7978284882273','2026-10-20'),(74,'Teacher74','teach74@gmail.com','+7978284882274','2026-10-20'),(75,'Teacher75','teach75@gmail.com','+7978284882275','2026-10-20'),(76,'Teacher76','teach76@gmail.com','+7978284882276','2026-10-20'),(77,'Teacher77','teach77@gmail.com','+7978284882277','2026-10-20'),(78,'Teacher78','teach78@gmail.com','+7978284882278','2026-10-20'),(79,'Teacher79','teach79@gmail.com','+7978284882279','2026-10-20'),(80,'Teacher80','teach80@gmail.com','+7978284882280','2026-10-20'),(81,'Teacher81','teach81@gmail.com','+7978284882281','2026-10-20'),(82,'Teacher82','teach82@gmail.com','+7978284882282','2026-10-20'),(83,'Teacher83','teach83@gmail.com','+7978284882283','2026-10-20'),(84,'Teacher84','teach84@gmail.com','+7978284882284','2026-10-20'),(85,'Teacher85','teach85@gmail.com','+7978284882285','2026-10-20'),(86,'Teacher86','teach86@gmail.com','+7978284882286','2026-10-20'),(87,'Teacher87','teach87@gmail.com','+7978284882287','2026-10-20'),(88,'Teacher88','teach88@gmail.com','+7978284882288','2026-10-20'),(89,'Teacher89','teach89@gmail.com','+7978284882289','2026-10-20'),(90,'Teacher90','teach90@gmail.com','+7978284882290','2026-10-20'),(91,'Teacher91','teach91@gmail.com','+7978284882291','2026-10-20'),(92,'Teacher92','teach92@gmail.com','+7978284882292','2026-10-20'),(93,'Teacher93','teach93@gmail.com','+7978284882293','2026-10-20'),(94,'Teacher94','teach94@gmail.com','+7978284882294','2026-10-20'),(95,'Teacher95','teach95@gmail.com','+7978284882295','2026-10-20'),(96,'Teacher96','teach96@gmail.com','+7978284882296','2026-10-20'),(97,'Teacher97','teach97@gmail.com','+7978284882297','2026-10-20'),(98,'Teacher98','teach98@gmail.com','+7978284882298','2026-10-20'),(99,'Teacher99','teach99@gmail.com','+7978284882299','2026-10-20');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_select_teacher`
--

DROP TABLE IF EXISTS `v_select_teacher`;
/*!50001 DROP VIEW IF EXISTS `v_select_teacher`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_select_teacher` AS SELECT 
 1 AS `full_name`,
 1 AS `p_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'college2db'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_get_random_student_name` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_random_student_name`() RETURNS varchar(100) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE v_first_name VARCHAR(50);
    DECLARE v_last_name VARCHAR(50);
    SET v_first_name = ELT(FLOOR(1 + RAND() * 5), 'Иван', 'Анна', 'Сергей', 'Мария', 'Дмитрий');
    SET v_last_name = ELT(FLOOR(1 + RAND() * 5), 'Иванов', 'Петрова', 'Сидоров', 'Кузнецова', 'Смирнов');
    RETURN CONCAT(v_last_name, ' ', v_first_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_students_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_students_insert`(IN num_records INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_full_name VARCHAR(100);
    DECLARE v_student_group_id INT;
    DECLARE v_email VARCHAR(100);
    DECLARE v_p_number VARCHAR(20);
    DECLARE v_birthday DATE;
    WHILE i <= num_records DO
        SET v_full_name = fn_get_random_student_name();
        SET v_student_group_id = FLOOR(1 + RAND() * 5);
        SET v_email = CONCAT('student_', i, '@academy.com');
        SET v_p_number = CONCAT('+7978', FLOOR(1000000 + RAND() * 9000000));
        SET v_birthday = DATE_ADD('2000-01-01', INTERVAL FLOOR(RAND() * 2500) DAY);
        INSERT INTO students (full_name, student_group_id, email, p_number, birthday_date) 
        VALUES (v_full_name, v_student_group_id, v_email, v_p_number, v_birthday);
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_student_groups_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_student_groups_insert`(IN amount INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < amount DO
        INSERT INTO student_groups (class_name, stud_count, specialization)
        VALUES (
            CONCAT('ИС-', FLOOR(10 + RAND() * 90)),
            FLOOR(15 + RAND() * 21),
            ELT(
                FLOOR(1 + RAND() * 4),
                'Программирование',
                'Информационные системы',
                'Веб-разработка',
                'Компьютерные сети'
            )
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_subjects_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_subjects_insert`(IN p_count INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_subject_name VARCHAR(100);
    DECLARE v_hours INT;
    DECLARE v_teacher_id INT;
    WHILE i <= p_count DO
        SET v_subject_name = ELT(FLOOR(1 + RAND() * 6), 
            'Математика', 
            'Программирование', 
            'Базы данных', 
            'Физика', 
            'История', 
            'Английский язык'
        );
        SET v_subject_name = CONCAT(v_subject_name, ' - Курс №', FLOOR(1 + RAND() * 5));
        SET v_hours = FLOOR(30 + RAND() * 121);
        SET v_teacher_id = (SELECT id FROM teachers ORDER BY RAND() LIMIT 1);
        INSERT INTO subjects (sub_name, hours, teacher_id) 
        VALUES (v_subject_name, v_hours, v_teacher_id);
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_teacher_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_teacher_insert`(IN count INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    declare count int default 1;
    declare t_id int default 1;
    select Count(id) into i from subjects;
    set count = i +100;
    

    WHILE i < count DO
    select id into t_id from teachers order by rand() limit 1;
        INSERT INTO teachers (sub_name, hours, teacher_id)
        VALUES (
            add_name_subject(),
            floor(rand() * 100),
            t_id
        );
		
	SET i = i + 1;
	END WHILE;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_select_teacher`
--

/*!50001 DROP VIEW IF EXISTS `v_select_teacher`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_select_teacher` AS select `teachers`.`full_name` AS `full_name`,`teachers`.`p_number` AS `p_number` from `teachers` */;
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

-- Dump completed on 2026-11-05  8:38:57

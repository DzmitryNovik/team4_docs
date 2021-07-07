-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: language_testing
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `choosen_option`
--

DROP TABLE IF EXISTS `choosen_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choosen_option` (
  `test_id` int NOT NULL,
  `question_id` int NOT NULL,
  `choosen_answer_id` int DEFAULT NULL,
  `file_answer_id` int DEFAULT NULL,
  KEY `test_id` (`test_id`),
  KEY `question_id` (`question_id`),
  KEY `choosen_answer_id` (`choosen_answer_id`),
  KEY `file_answer_id` (`file_answer_id`),
  CONSTRAINT `choosen_option_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`),
  CONSTRAINT `choosen_option_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `choosen_option_ibfk_3` FOREIGN KEY (`choosen_answer_id`) REFERENCES `answer` (`id`),
  CONSTRAINT `choosen_option_ibfk_4` FOREIGN KEY (`file_answer_id`) REFERENCES `file_answer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choosen_option`
--

LOCK TABLES `choosen_option` WRITE;
/*!40000 ALTER TABLE `choosen_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `choosen_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 13:46:46

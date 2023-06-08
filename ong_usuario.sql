-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ong
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `avatar` mediumblob,
  `es_publico` tinyint DEFAULT NULL,
  `es_colaborador` tinyint DEFAULT NULL,
  `es_admin` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Gustavo','Palacios','45454545','admin','pala@mail.com','123',1,'2000-01-01',_binary ' ',0,0,1),(2,'Luis','Zamudio','00000222225','colaborador1','luisito@mail.com','1015',1,'2001-05-02',_binary ' ',0,0,0),(3,'Yamila','Fogar','154545455','colaborador2','yfogar@mail.com','1515',1,'2020-06-08',_binary ' ',0,0,0),(4,'Luis','Yrala','251245555545','publico','yralaLuis@mail.com','2020',1,'2023-03-05',_binary ' ',1,0,0),(5,'Jorge','Garcia','1111111000','colaborador3','notrabajalosviernes@mail.com','5556',1,'2021-07-10',_binary ' ',0,1,0),(6,'Jorge','Palacios','11548855000','colaborador4','engañaasumujer@mail.com','1512',1,'2023-06-01',_binary ' ',0,1,0),(7,'Pedro','Morinigo','2525445445','publico','pedrito@mail.com','2020',1,'2023-03-05',_binary ' ',0,1,0),(8,'Federico','Bazan','20005445','publico','federbazan@mail.com','2015',1,'2015-02-03',_binary ' ',0,1,0),(9,'Goku','vegeta','200777445','publico','goku@mail.com','1155',1,'2015-02-03',_binary ' ',0,1,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08 16:48:37

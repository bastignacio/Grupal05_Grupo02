-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: grupal5
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `id_contacto` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `tel_usuario` bigint DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`),
  KEY `id_usuario` (`id_usuario`),
  KEY `tel_usuario` (`tel_usuario`),
  CONSTRAINT `contactos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  CONSTRAINT `contactos_ibfk_2` FOREIGN KEY (`tel_usuario`) REFERENCES `usuarios` (`tel_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_usuarios`
--

DROP TABLE IF EXISTS `registro_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_usuarios` (
  `id_ingreso` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `fecha_hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ingreso`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `registro_usuarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_usuarios`
--

LOCK TABLES `registro_usuarios` WRITE;
/*!40000 ALTER TABLE `registro_usuarios` DISABLE KEYS */;
INSERT INTO `registro_usuarios` VALUES (1,1,'2024-07-17 15:27:16'),(2,2,'2024-07-17 15:27:16'),(3,3,'2024-07-17 15:27:16'),(4,4,'2024-07-17 15:27:16'),(5,5,'2024-07-17 15:27:16'),(6,6,'2024-07-17 15:27:16'),(7,7,'2024-07-17 15:27:16'),(8,8,'2024-07-17 15:27:16');
/*!40000 ALTER TABLE `registro_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(64) DEFAULT NULL,
  `apellidos_usuario` varchar(128) DEFAULT NULL,
  `contrasena_usuario` varchar(64) DEFAULT NULL,
  `fecha_hora_utc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `genero_usuario` varchar(32) DEFAULT NULL,
  `tel_usuario` bigint DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `tel_usuario` (`tel_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Carlos','García Pérez','password123','2024-07-17 15:27:14','Masculino',5512345678),(2,'María','López Hernández','securePass456','2024-07-17 15:27:14','Femenino',34912345678),(3,'Ana','Martínez Gómez','myPassword789','2024-07-17 15:27:14','Femenino',571234567890),(4,'Luis','González Rodríguez','anotherPass321','2024-07-17 15:27:14','Masculino',541123456789),(5,'Elena','Fernández Ruiz','safePass654','2024-07-17 15:27:14','Femenino',562123456789),(6,'Jorge','Sánchez Torres','passWord987','2024-07-17 15:27:14','Masculino',511234567890),(7,'Laura','Díaz Ramírez','password2021','2024-07-17 15:27:14','Femenino',351912345678),(8,'Miguel','Jiménez Ortiz','superSecure001','2024-07-17 15:27:14','Masculino',13471234567);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'grupal5'
--

--
-- Dumping routines for database 'grupal5'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 10:49:43

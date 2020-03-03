-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: myapp_development
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-02-29 15:23:47.038192','2020-02-29 15:23:47.038192');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estagiarios`
--

DROP TABLE IF EXISTS `estagiarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estagiarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `sexo` tinyint(4) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `user` varchar(25) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estagiarios`
--

LOCK TABLES `estagiarios` WRITE;
/*!40000 ALTER TABLE `estagiarios` DISABLE KEYS */;
INSERT INTO `estagiarios` VALUES (8,'Athos','Assis',0,'12541018614','oathosassis@gmail.com','31994659086','oathosassis','2020-03-01 19:19:43.456980','2020-03-01 19:19:43.456980','$2a$12$qqt497kwfK/d6TQaUpaBq.uLp0fwrxFgzn0EdgDrQZ1kqo9PY80gi'),(9,'Daniel','',0,'12541018615','daniel@gmail.com','3654374','odanielassis','2020-03-01 19:27:17.759984','2020-03-01 19:27:17.759984','$2a$12$3M95Hp42imyHgAJwt3hAme4JW8LYLAvt5skLxGNvh9yMXivlmAFNa'),(10,'Magna','Morais',1,'7043663993','dhdihf@gmail.com','276387263','amagna','2020-03-01 22:41:02.750473','2020-03-01 22:41:02.750473','$2a$12$vDpiPH.3GZOtx7u81hbvVO6Z92QxC9bQimb48MT5y252iKCP.tlrG'),(11,'Aline','Pires Almeida',1,'387.483.974-93','alinepa@gmail.com','(32)3232-8372','alinep','2020-03-03 02:42:39.908680','2020-03-03 02:42:39.908680','$2a$12$ARNaot89Fsn/hP907j5MRejng9ZmZ7nVw2B8oaHvNCFX7TRdZyCtq'),(12,'Jonas','Alberto',0,'238.273.897-28','jonasalm@hotmail.com','(27)3289-7327','jonasa','2020-03-03 02:44:06.277576','2020-03-03 02:44:06.277576','$2a$12$YDPd/GN6.wAu1T9FNiggwOrYBPGyyZjlzo01.0Z85edSWqWcodVpm'),(13,'Magna','Morais',1,'239.283.902-83','maginfor@yahoo.com.br','(23)8293-0823','maginfor','2020-03-03 02:45:42.547199','2020-03-03 22:09:57.496365','$2a$12$RXAasLFfRHoEIO0zuDkaRu4t.VyhDk0ciAtsFJLT5o0jfDRu5Buc.'),(14,'Humberto','',0,'239.208.492-84','humbalmeida@outlook.com','(31)8927-8978','humbert','2020-03-03 19:31:22.204240','2020-03-03 19:31:22.204240','$2a$12$X3Yi54wsIcxzadvyiSLrm.qAINH6E3fysK31jjdVxBhhoRtkHAbuK'),(15,'Herivan','Guedes',0,'238.972.893-72','derisvaldo@gmail.com','(31)2728-2672','herivan','2020-03-03 19:32:55.480913','2020-03-03 19:32:55.480913','$2a$12$n.fn6MuyrDghk8PKPMX0oenqvqDpmyjTQcZ/nKXQeNiPOxbgTmJFG'),(16,'Fábio','Vilela',0,'347.438.974-34','ushdsd@gmail.com','(23)8728-3728','fabvil','2020-03-03 19:35:14.954332','2020-03-03 19:35:14.954332','$2a$12$w/8ZFoQP5XX6.pMdNSpyU.rgczImjtNIBhD1qDz.a02/xvGlfHH6C'),(17,'Adélio','Carlos',0,'232.378.273-89','adelioassis@gmail.com','(23)2873-8273','adelioc','2020-03-03 19:38:56.316315','2020-03-03 19:38:56.316315','$2a$12$VqFgqghspjH9x7hShBXT7ONoiOpMOTEehQNdnk030jXGN85wshPP2'),(18,'Gilberto','Júnior',0,'289.372.893-72','gjunim@gmail.com','(23)2738-2738','gjunim','2020-03-03 19:43:55.856870','2020-03-03 19:43:55.856870','$2a$12$jRWrdGZt.PHkLFj8AGobC.kPeNwcXIBpzR/KGmAN6yqAaHRb9Sgpe'),(19,'Juciléia','Pinto',0,'237.263.276-38','jupinto@gmail.com','(31)2328-7632','jupinto','2020-03-03 20:11:29.859781','2020-03-03 20:11:29.859781','$2a$12$VAR4Kxv6.bEck.tgDRlSz.2trAF/nxfrSiykGq6ZpeN.yJ4rtzkIq'),(20,'Yuri','Silva',0,'376.278.362-83','yuri@gmail.com','(31)8237-2893','yurisilva','2020-03-03 20:30:40.105070','2020-03-03 20:30:40.105070','$2a$12$ajPpX27/D.LKfI0YtvwnVOQhCbvqD1MBfHSa/dh3S2zkwv0.wDDd2');
/*!40000 ALTER TABLE `estagiarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jornadas`
--

DROP TABLE IF EXISTS `jornadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jornadas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `hora_inicial` datetime DEFAULT NULL,
  `hora_final` datetime DEFAULT NULL,
  `estagiario_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_jornadas_on_estagiario_id` (`estagiario_id`),
  CONSTRAINT `fk_rails_e6d2a104c0` FOREIGN KEY (`estagiario_id`) REFERENCES `estagiarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jornadas`
--

LOCK TABLES `jornadas` WRITE;
/*!40000 ALTER TABLE `jornadas` DISABLE KEYS */;
INSERT INTO `jornadas` VALUES (100,'2020-02-24','2020-02-24 08:36:38','2020-02-24 13:23:51',13,'2020-03-03 14:17:42.967731','2020-03-03 14:17:42.967731',0),(101,'2020-02-24','2020-02-24 14:22:01','2020-02-24 17:33:15',13,'2020-03-03 14:17:43.013716','2020-03-03 14:17:43.013716',1),(102,'2020-02-25','2020-02-25 08:06:22','2020-02-25 12:03:31',13,'2020-03-03 14:17:43.073915','2020-03-03 14:17:43.073915',0),(103,'2020-02-25','2020-02-25 12:22:59','2020-02-25 13:30:32',13,'2020-03-03 14:17:43.140765','2020-03-03 14:17:43.140765',0),(104,'2020-02-25','2020-02-25 14:32:21','2020-02-25 17:23:42',13,'2020-03-03 14:17:43.207752','2020-03-03 14:17:43.207752',1),(105,'2020-02-26','2020-02-26 08:00:23','2020-02-26 11:58:35',13,'2020-03-03 14:17:43.263468','2020-03-03 14:17:43.263468',0),(106,'2020-02-26','2020-02-26 12:10:33','2020-02-26 13:32:31',13,'2020-03-03 14:17:43.319351','2020-03-03 14:17:43.319351',0),(107,'2020-02-26','2020-02-26 14:28:29','2020-02-26 17:36:40',13,'2020-03-03 14:17:43.375231','2020-03-03 14:17:43.375231',1),(108,'2020-02-27','2020-02-27 08:07:48','2020-02-27 13:32:55',13,'2020-03-03 14:17:43.431176','2020-03-03 14:17:43.431176',0),(109,'2020-02-27','2020-02-27 14:22:13','2020-02-27 17:15:15',13,'2020-03-03 14:17:43.487467','2020-03-03 14:17:43.487467',1),(110,'2020-02-28','2020-02-28 08:03:23','2020-02-28 11:59:37',13,'2020-03-03 14:17:43.542742','2020-03-03 14:17:43.542742',0),(111,'2020-02-28','2020-02-28 12:07:34',NULL,13,'2020-03-03 14:17:43.598479','2020-03-03 14:17:43.598479',NULL),(112,'2020-03-02','2020-03-02 08:00:09','2020-03-02 09:19:46',13,'2020-03-03 14:17:43.653767','2020-03-03 14:17:43.653767',0),(113,'2020-03-02','2020-03-02 09:37:18','2020-03-02 12:01:06',13,'2020-03-03 14:17:43.709495','2020-03-03 14:17:43.709495',0),(114,'2020-03-02','2020-03-02 12:17:33','2020-03-02 13:22:54',13,'2020-03-03 14:17:43.766083','2020-03-03 14:17:43.766083',0),(115,'2020-03-02','2020-03-02 14:13:12','2020-03-02 17:23:42',13,'2020-03-03 14:17:43.821479','2020-03-03 14:17:43.821479',1),(116,'2020-03-03','2020-03-03 15:08:41','2020-03-03 16:30:13',13,'2020-03-03 15:08:41.086452','2020-03-03 16:30:13.403937',0),(118,'2020-03-03','2020-03-03 20:09:06',NULL,18,'2020-03-03 20:09:06.529524','2020-03-03 20:09:06.529524',NULL),(119,'2020-03-03','2020-03-03 20:12:24','2020-03-03 21:07:14',13,'2020-03-03 20:12:24.749375','2020-03-03 21:07:14.523208',1);
/*!40000 ALTER TABLE `jornadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200229151048'),('20200229152810'),('20200301200149'),('20200303032352');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-03 19:18:34

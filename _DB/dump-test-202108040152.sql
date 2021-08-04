-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.16-MariaDB

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `IdLegajo` int(11) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `ID_TIPO_DOCUMENTO` int(11) DEFAULT NULL,
  `NroDocumento` decimal(10,0) DEFAULT NULL,
  `CodigoPostal` varchar(10) DEFAULT NULL,
  `ID_PROVINCIA` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdLegajo`),
  UNIQUE KEY `empleados_un` (`IdLegajo`),
  KEY `empleados_FK_provincia` (`ID_PROVINCIA`),
  KEY `empleados_FK_tipo_documento` (`ID_TIPO_DOCUMENTO`),
  CONSTRAINT `empleados_FK_provincia` FOREIGN KEY (`ID_PROVINCIA`) REFERENCES `provincia` (`id_provincia`),
  CONSTRAINT `empleados_FK_tipo_documento` FOREIGN KEY (`ID_TIPO_DOCUMENTO`) REFERENCES `tipo_documento` (`id_tipo_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (20,'Gallardo Figueroa','Hugo Eduardo','Mendoza 333','Capital',1,20000000,'5400',5);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `empleados_detalle`
--

DROP TABLE IF EXISTS `empleados_detalle`;
/*!50001 DROP VIEW IF EXISTS `empleados_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `empleados_detalle` (
  `IdLegajo` tinyint NOT NULL,
  `Apellido` tinyint NOT NULL,
  `Nombre` tinyint NOT NULL,
  `Direccion` tinyint NOT NULL,
  `Localidad` tinyint NOT NULL,
  `ID_TIPO_DOCUMENTO` tinyint NOT NULL,
  `NroDocumento` tinyint NOT NULL,
  `CodigoPostal` tinyint NOT NULL,
  `ID_PROVINCIA` tinyint NOT NULL,
  `tipo_documento` tinyint NOT NULL,
  `provincia` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `provincia` varchar(30) NOT NULL,
  PRIMARY KEY (`id_provincia`),
  KEY `id_provincia` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'CABA'),(2,'Buenos Aires'),(3,'Cordoba'),(4,'Mendoza'),(5,'San Juan'),(6,'San Luis'),(7,'Santa Fe'),(8,'La Pampa'),(9,'Corrientes'),(10,'Entre Rios');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_documento` varchar(50) DEFAULT NULL,
  `id_tipo_documento_2` int(11) DEFAULT NULL,
  `id_tipo_documento_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_documento`),
  UNIQUE KEY `id_tipo_documento_3` (`id_tipo_documento`),
  KEY `id_tipo_documento` (`id_tipo_documento`),
  KEY `id_tipo_documento_2` (`id_tipo_documento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'DNI',NULL,NULL),(2,'PASAPORTE',NULL,NULL);
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--

--
-- Final view structure for view `empleados_detalle`
--

/*!50001 DROP TABLE IF EXISTS `empleados_detalle`*/;
/*!50001 DROP VIEW IF EXISTS `empleados_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empleados_detalle` AS select `e`.`IdLegajo` AS `IdLegajo`,`e`.`Apellido` AS `Apellido`,`e`.`Nombre` AS `Nombre`,`e`.`Direccion` AS `Direccion`,`e`.`Localidad` AS `Localidad`,`e`.`ID_TIPO_DOCUMENTO` AS `ID_TIPO_DOCUMENTO`,`e`.`NroDocumento` AS `NroDocumento`,`e`.`CodigoPostal` AS `CodigoPostal`,`e`.`ID_PROVINCIA` AS `ID_PROVINCIA`,`t`.`tipo_documento` AS `tipo_documento`,`p`.`provincia` AS `provincia` from ((`empleados` `e` join `tipo_documento` `t` on(`e`.`ID_TIPO_DOCUMENTO` = `t`.`id_tipo_documento`)) join `provincia` `p` on(`e`.`ID_PROVINCIA` = `p`.`id_provincia`)) */;
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

-- Dump completed on 2021-08-04  1:52:32

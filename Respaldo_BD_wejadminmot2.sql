-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: wejadminmot2
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_auditori`
--

DROP TABLE IF EXISTS `tbl_auditori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_auditori` (
  `audi_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `audi_usua` int(11) DEFAULT NULL COMMENT 'Usuario',
  `audi_operaci` int(11) DEFAULT NULL COMMENT '1 insert, 2 update, 3 delete',
  `audi_fechora` datetime DEFAULT NULL COMMENT 'Fecha y hora de la operación',
  `audi_tabla` varchar(255) DEFAULT NULL COMMENT 'Nombre de la tabla afectada, se omite el tbl_',
  `audi_registr` int(11) DEFAULT NULL COMMENT 'Registro afecto',
  PRIMARY KEY (`audi_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8 COMMENT='Registra todos los movimientos realizados en el sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_auditori`
--

LOCK TABLES `tbl_auditori` WRITE;
/*!40000 ALTER TABLE `tbl_auditori` DISABLE KEYS */;
INSERT INTO `tbl_auditori` VALUES (1,2,8,'2024-08-08 11:09:28','wh_tbl_venta',0),(2,2,8,'2024-08-08 11:09:28','wh_tbl_venta',0),(3,2,2,'2024-08-08 11:09:28','tbl_recibo_nota',30),(4,2,2,'2024-08-08 11:09:28','tbl_recibo_nota',31),(5,2,8,'2024-08-08 11:11:02','wh_tbl_venta',NULL),(6,2,8,'2024-08-08 11:11:02','wh_tbl_venta',NULL),(7,2,2,'2024-08-08 11:11:02','tbl_recibo_nota',30),(8,2,2,'2024-08-08 11:11:02','tbl_recibo_nota',31),(9,2,8,'2024-08-08 11:11:31','wh_tbl_venta',77),(10,2,8,'2024-08-08 11:11:31','wh_tbl_venta',80),(11,2,2,'2024-08-08 11:11:31','tbl_recibo_nota',30),(12,2,2,'2024-08-08 11:11:31','tbl_recibo_nota',31),(13,2,8,'2024-08-08 11:13:49','wh_tbl_venta',77),(14,2,8,'2024-08-08 11:13:49','wh_tbl_venta',80),(15,2,2,'2024-08-08 11:13:49','tbl_recibo_nota',30),(16,2,2,'2024-08-08 11:13:49','tbl_recibo_nota',31),(17,2,8,'2024-08-08 11:22:39','wh_tbl_venta',77),(18,2,8,'2024-08-08 11:22:39','wh_tbl_venta',80),(19,2,2,'2024-08-08 11:22:39','tbl_recibo_nota',30),(20,2,2,'2024-08-08 11:22:39','tbl_recibo_nota',31),(21,2,8,'2024-08-08 11:50:00','wh_tbl_venta',77),(22,2,8,'2024-08-08 11:50:00','wh_tbl_venta',80),(23,2,1,'2024-08-08 11:55:58','tbl_recibo',9),(24,2,1,'2024-08-08 11:56:13','tbl_recibo_nota',32),(25,2,1,'2024-08-08 11:56:21','tbl_recibo_nota',33),(26,2,1,'2024-08-08 11:57:00','tbl_pago',17),(27,2,1,'2024-08-08 11:57:00','tbl_recibo_pago',17),(28,2,8,'2024-08-08 12:04:26','wh_tbl_venta',77),(29,2,8,'2024-08-08 12:04:26','wh_tbl_venta',80),(30,2,2,'2024-08-08 12:04:26','tbl_recibo_nota',32),(31,2,2,'2024-08-08 12:04:26','tbl_recibo_nota',33),(32,2,8,'2024-08-08 12:12:21','wh_tbl_venta',77),(33,2,8,'2024-08-08 12:12:21','wh_tbl_venta',80),(34,2,1,'2024-08-08 14:53:01','tbl_recibo',10),(35,2,1,'2024-08-08 14:53:25','tbl_recibo_nota',34),(36,2,1,'2024-08-08 14:53:33','tbl_recibo_nota',35),(37,2,1,'2024-08-08 15:59:30','tbl_pago',18),(38,2,1,'2024-08-08 15:59:30','tbl_recibo_pago',18),(39,2,1,'2024-08-08 16:06:31','tbl_pago',19),(40,2,1,'2024-08-08 16:06:31','tbl_recibo_pago',19),(41,2,1,'2024-08-08 16:11:27','tbl_pago',20),(42,2,1,'2024-08-08 16:11:27','tbl_recibo_pago',20),(43,2,8,'2024-08-08 16:13:19','wh_tbl_venta',80),(44,2,8,'2024-08-08 16:13:19','wh_tbl_venta',77),(45,2,2,'2024-08-08 16:13:19','tbl_recibo_nota',34),(46,2,2,'2024-08-08 16:13:19','tbl_recibo_nota',35),(47,2,8,'2024-08-08 16:13:19','wh_tbl_venta',80),(48,2,8,'2024-08-08 16:13:19','wh_tbl_venta',77),(49,2,8,'2024-08-08 16:26:16','wh_tbl_venta',80),(50,2,8,'2024-08-08 16:26:16','wh_tbl_venta',77),(51,2,2,'2024-08-08 16:26:16','tbl_recibo_nota',34),(52,2,8,'2024-08-08 16:26:16','wh_tbl_venta',80),(53,2,8,'2024-08-08 16:26:16','wh_tbl_venta',77),(54,2,1,'2024-08-08 16:47:56','wh_tbl_venta',0),(55,2,1,'2024-08-09 17:53:04','wh_tbl_venta',2),(56,2,1,'2024-08-10 09:24:01','cliente',146),(57,2,1,'2024-08-10 09:36:47','wh_tbl_venta',1),(58,2,1,'2024-08-10 10:14:47','desglose',20),(59,1,1,'2024-08-14 09:58:48','permisos',162),(60,1,1,'2024-08-14 09:59:09','permisos',163),(61,1,2,'2024-08-14 10:30:37','compracom',2),(62,1,2,'2024-08-14 11:16:39','wh_tbl_compra',2),(63,1,2,'2024-08-14 11:16:59','wh_tbl_compra',2),(64,1,2,'2024-08-14 11:21:16','wh_tbl_compra',2),(65,1,2,'2024-08-14 11:21:37','wh_tbl_compra',4),(66,1,2,'2024-08-14 11:22:57','wh_tbl_compra',4),(67,1,2,'2024-08-14 11:23:16','wh_tbl_compra',4),(68,1,2,'2024-08-14 11:23:32','wh_tbl_compra',4),(69,1,2,'2024-08-14 11:24:04','wh_tbl_compra',5),(70,1,2,'2024-08-14 11:24:24','wh_tbl_compra',6),(71,2,2,'2024-08-14 14:34:47','wh_tbl_compra',2),(72,2,2,'2024-08-14 14:43:24','wh_tbl_compra',6),(73,2,2,'2024-08-14 14:43:49','wh_tbl_compra',6),(74,1,1,'2024-08-15 11:13:34','pago',21),(75,2,1,'2024-08-15 11:42:45','marca_wh',8),(76,2,1,'2024-08-15 11:44:10','marca_wh',9),(77,2,1,'2024-08-15 11:44:48','marca_wh',10),(78,1,1,'2024-08-15 11:50:31','pago',22),(79,1,1,'2024-08-15 11:51:05','pago',23),(80,1,1,'2024-08-15 11:56:01','pago',24),(81,1,1,'2024-08-15 11:57:45','pago',25),(82,1,1,'2024-08-15 11:58:49','pago',26),(83,1,1,'2024-08-15 11:59:34','pago',27),(84,2,1,'2024-08-15 12:08:32','pago',28),(85,1,1,'2024-08-15 14:50:22','permisos',164),(86,1,1,'2024-08-15 14:50:41','permisos',165),(87,2,1,'2024-08-16 12:30:15','wh_tbl_venta',4),(88,2,1,'2024-08-16 16:16:12','wh_tbl_venta',4),(89,2,1,'2024-08-16 16:17:37','wh_tbl_venta',4),(90,2,1,'2024-08-16 16:19:41','wh_tbl_venta',4),(91,2,8,'2024-08-16 16:35:22','wh_tbl_desgvta',68),(92,2,1,'2024-08-16 16:35:22','wh_tbl_venta',4),(93,2,2,'2024-08-19 09:47:32','wh_tbl_compra',2),(94,2,1,'2024-08-19 11:23:31','wh_tbl_venta',10),(95,2,1,'2024-08-19 11:28:14','wh_tbl_venta',1),(96,2,1,'2024-08-19 11:36:27','wh_tbl_venta',12),(97,1,1,'2024-08-19 11:54:05','permisos',166),(98,1,1,'2024-08-19 11:54:24','permisos',167),(99,2,1,'2024-08-19 11:56:40','wh_tbl_venta',6),(100,1,1,'2024-08-19 12:32:52','permisos',168),(101,2,1,'2024-08-19 16:16:06','wh_tbl_venta',160),(102,2,1,'2024-08-19 16:21:22','wh_tbl_venta',190),(103,2,1,'2024-08-19 16:26:11','wh_tbl_venta',30),(104,2,1,'2024-08-19 16:30:20','wh_tbl_venta',30),(105,2,1,'2024-08-19 23:53:58','wh_tbl_venta',4),(106,2,1,'2024-08-20 00:02:20','wh_tbl_venta',5),(107,2,8,'2024-08-20 00:03:38','wh_tbl_desgvta',0),(108,2,1,'2024-08-20 00:03:38','wh_tbl_venta',2),(109,2,1,'2024-08-20 00:05:17','wh_tbl_venta',6),(110,1,1,'2024-08-20 09:39:53','permisos',169),(111,1,1,'2024-08-20 10:27:11','permisos',170),(112,2,1,'2024-08-20 15:19:31','wh_tbl_venta',1),(113,2,1,'2024-08-20 15:20:13','wh_tbl_venta',38),(114,2,1,'2024-08-20 15:47:31','wh_tbl_venta',0),(115,2,1,'2024-08-20 16:02:27','wh_tbl_venta',0),(116,2,1,'2024-08-20 16:03:15','wh_tbl_venta',0),(117,2,1,'2024-08-20 16:05:12','tbl_recibo',11),(118,2,1,'2024-08-20 16:09:02','tbl_recibo_nota',36),(119,2,1,'2024-08-20 16:09:22','tbl_recibo_nota',37),(120,2,1,'2024-08-20 16:09:33','tbl_recibo_nota',38),(121,2,1,'2024-08-20 16:10:18','tbl_pago',29),(122,2,1,'2024-08-20 16:10:18','tbl_recibo_pago',21),(123,2,8,'2024-08-20 16:10:34','wh_tbl_venta',103),(124,2,8,'2024-08-20 16:10:34','wh_tbl_venta',104),(125,2,8,'2024-08-20 16:10:34','wh_tbl_venta',105),(126,2,8,'2024-08-20 16:10:34','wh_tbl_venta',103),(127,2,8,'2024-08-20 16:10:34','wh_tbl_venta',104),(128,2,8,'2024-08-20 16:10:34','wh_tbl_venta',105),(129,2,8,'2024-08-20 16:11:13','wh_tbl_venta',103),(130,2,8,'2024-08-20 16:11:13','wh_tbl_venta',104),(131,2,8,'2024-08-20 16:11:13','wh_tbl_venta',105),(132,2,8,'2024-08-20 16:11:13','wh_tbl_venta',103),(133,2,8,'2024-08-20 16:11:13','wh_tbl_venta',104),(134,2,8,'2024-08-20 16:11:13','wh_tbl_venta',105),(135,2,8,'2024-08-20 16:12:35','wh_tbl_venta',103),(136,2,8,'2024-08-20 16:12:35','wh_tbl_venta',104),(137,2,8,'2024-08-20 16:12:35','wh_tbl_venta',105),(138,2,8,'2024-08-20 16:12:35','wh_tbl_venta',103),(139,2,8,'2024-08-20 16:12:35','wh_tbl_venta',104),(140,2,8,'2024-08-20 16:12:35','wh_tbl_venta',105),(141,2,1,'2024-08-20 16:34:58','tbl_pago',30),(142,2,1,'2024-08-20 16:34:58','tbl_recibo_pago',22),(143,2,1,'2024-08-20 17:08:29','tbl_pago',31),(144,2,1,'2024-08-20 17:08:29','tbl_recibo_pago',23),(145,2,8,'2024-08-20 17:09:45','wh_tbl_venta',103),(146,2,8,'2024-08-20 17:09:45','wh_tbl_venta',104),(147,2,8,'2024-08-20 17:09:45','wh_tbl_venta',105),(148,2,2,'2024-08-20 17:09:45','tbl_recibo_nota',36),(149,2,2,'2024-08-20 17:09:45','tbl_recibo_nota',37),(150,2,2,'2024-08-20 17:09:45','tbl_recibo_nota',38),(151,2,8,'2024-08-20 17:09:45','wh_tbl_venta',103),(152,2,8,'2024-08-20 17:09:45','wh_tbl_venta',104),(153,2,8,'2024-08-20 17:09:45','wh_tbl_venta',105),(154,2,8,'2024-08-21 16:10:50','wh_tbl_venta',103),(155,2,8,'2024-08-21 16:10:50','wh_tbl_venta',104),(156,2,8,'2024-08-21 16:10:50','wh_tbl_venta',105),(157,2,8,'2024-08-21 16:10:50','wh_tbl_venta',103),(158,2,8,'2024-08-21 16:10:50','wh_tbl_venta',104),(159,2,8,'2024-08-21 16:10:50','wh_tbl_venta',105),(160,2,8,'2024-08-21 16:11:21','wh_tbl_venta',103),(161,2,8,'2024-08-21 16:11:21','wh_tbl_venta',104),(162,2,8,'2024-08-21 16:11:21','wh_tbl_venta',105),(163,2,8,'2024-08-21 16:11:21','wh_tbl_venta',103),(164,2,8,'2024-08-21 16:11:21','wh_tbl_venta',104),(165,2,8,'2024-08-21 16:11:21','wh_tbl_venta',105),(166,2,8,'2024-08-21 16:11:56','wh_tbl_venta',103),(167,2,8,'2024-08-21 16:11:56','wh_tbl_venta',104),(168,2,8,'2024-08-21 16:11:56','wh_tbl_venta',105),(169,2,8,'2024-08-21 16:11:56','wh_tbl_venta',103),(170,2,8,'2024-08-21 16:11:56','wh_tbl_venta',104),(171,2,8,'2024-08-21 16:11:56','wh_tbl_venta',105),(172,2,8,'2024-08-21 16:13:24','wh_tbl_venta',103),(173,2,8,'2024-08-21 16:13:24','wh_tbl_venta',104),(174,2,8,'2024-08-21 16:13:24','wh_tbl_venta',105),(175,2,8,'2024-08-21 16:13:24','wh_tbl_venta',103),(176,2,8,'2024-08-21 16:13:24','wh_tbl_venta',104),(177,2,8,'2024-08-21 16:13:24','wh_tbl_venta',105),(178,2,8,'2024-08-23 11:56:56','wh_tbl_venta',103),(179,2,8,'2024-08-23 11:56:56','wh_tbl_venta',104),(180,2,8,'2024-08-23 11:56:56','wh_tbl_venta',105),(181,2,8,'2024-08-23 11:56:56','wh_tbl_venta',103),(182,2,8,'2024-08-23 11:56:56','wh_tbl_venta',104),(183,2,8,'2024-08-23 11:56:56','wh_tbl_venta',105),(184,2,8,'2024-08-23 11:59:03','wh_tbl_venta',103),(185,2,8,'2024-08-23 11:59:03','wh_tbl_venta',104),(186,2,8,'2024-08-23 11:59:03','wh_tbl_venta',105),(187,2,8,'2024-08-23 11:59:03','wh_tbl_venta',103),(188,2,8,'2024-08-23 11:59:03','wh_tbl_venta',104),(189,2,8,'2024-08-23 11:59:03','wh_tbl_venta',105),(190,2,8,'2024-08-23 12:00:27','wh_tbl_venta',103),(191,2,8,'2024-08-23 12:00:27','wh_tbl_venta',104),(192,2,8,'2024-08-23 12:00:27','wh_tbl_venta',105),(193,2,8,'2024-08-23 12:00:27','wh_tbl_venta',103),(194,2,8,'2024-08-23 12:00:27','wh_tbl_venta',104),(195,2,8,'2024-08-23 12:00:27','wh_tbl_venta',105),(196,2,8,'2024-08-23 12:01:57','wh_tbl_venta',103),(197,2,8,'2024-08-23 12:01:57','wh_tbl_venta',104),(198,2,8,'2024-08-23 12:01:57','wh_tbl_venta',105),(199,2,8,'2024-08-23 12:01:57','wh_tbl_venta',103),(200,2,8,'2024-08-23 12:01:57','wh_tbl_venta',104),(201,2,8,'2024-08-23 12:01:57','wh_tbl_venta',105),(202,2,8,'2024-08-23 12:02:22','wh_tbl_venta',103),(203,2,8,'2024-08-23 12:02:22','wh_tbl_venta',104),(204,2,8,'2024-08-23 12:02:22','wh_tbl_venta',105),(205,2,8,'2024-08-23 12:02:22','wh_tbl_venta',103),(206,2,8,'2024-08-23 12:02:22','wh_tbl_venta',104),(207,2,8,'2024-08-23 12:02:22','wh_tbl_venta',105),(208,2,8,'2024-08-23 12:03:07','wh_tbl_venta',103),(209,2,8,'2024-08-23 12:03:07','wh_tbl_venta',104),(210,2,8,'2024-08-23 12:03:07','wh_tbl_venta',105),(211,2,8,'2024-08-23 12:03:07','wh_tbl_venta',103),(212,2,8,'2024-08-23 12:03:07','wh_tbl_venta',104),(213,2,8,'2024-08-23 12:03:07','wh_tbl_venta',105),(214,2,8,'2024-08-23 12:03:19','wh_tbl_venta',103),(215,2,8,'2024-08-23 12:03:19','wh_tbl_venta',104),(216,2,8,'2024-08-23 12:03:19','wh_tbl_venta',105),(217,2,8,'2024-08-23 12:03:19','wh_tbl_venta',103),(218,2,8,'2024-08-23 12:03:19','wh_tbl_venta',104),(219,2,8,'2024-08-23 12:03:19','wh_tbl_venta',105),(220,2,8,'2024-08-23 12:03:47','wh_tbl_venta',103),(221,2,8,'2024-08-23 12:03:47','wh_tbl_venta',104),(222,2,8,'2024-08-23 12:03:47','wh_tbl_venta',105),(223,2,8,'2024-08-23 12:03:47','wh_tbl_venta',103),(224,2,8,'2024-08-23 12:03:47','wh_tbl_venta',104),(225,2,8,'2024-08-23 12:03:47','wh_tbl_venta',105),(226,2,8,'2024-08-23 14:12:38','wh_tbl_venta',103),(227,2,8,'2024-08-23 14:12:38','wh_tbl_venta',104),(228,2,8,'2024-08-23 14:12:38','wh_tbl_venta',105),(229,2,8,'2024-08-23 14:12:38','wh_tbl_venta',103),(230,2,8,'2024-08-23 14:12:38','wh_tbl_venta',104),(231,2,8,'2024-08-23 14:12:38','wh_tbl_venta',105),(232,2,8,'2024-08-23 14:25:52','wh_tbl_venta',103),(233,2,8,'2024-08-23 14:25:52','wh_tbl_venta',104),(234,2,8,'2024-08-23 14:25:52','wh_tbl_venta',105),(235,2,2,'2024-08-23 14:25:52','tbl_recibo_nota',36),(236,2,2,'2024-08-23 14:25:52','tbl_recibo_nota',37),(237,2,8,'2024-08-23 14:25:52','wh_tbl_venta',103),(238,2,8,'2024-08-23 14:25:52','wh_tbl_venta',104),(239,2,8,'2024-08-23 14:25:52','wh_tbl_venta',105),(240,2,8,'2024-08-23 14:32:33','wh_tbl_venta',103),(241,2,8,'2024-08-23 14:32:33','wh_tbl_venta',104),(242,2,8,'2024-08-23 14:32:33','wh_tbl_venta',105),(243,2,8,'2024-08-23 14:32:33','wh_tbl_venta',103),(244,2,8,'2024-08-23 14:32:33','wh_tbl_venta',104),(245,2,8,'2024-08-23 14:32:33','wh_tbl_venta',105),(246,2,8,'2024-08-23 14:35:38','wh_tbl_venta',103),(247,2,8,'2024-08-23 14:35:38','wh_tbl_venta',104),(248,2,8,'2024-08-23 14:35:38','wh_tbl_venta',105),(249,2,8,'2024-08-23 14:35:38','wh_tbl_venta',103),(250,2,8,'2024-08-23 14:35:38','wh_tbl_venta',104),(251,2,8,'2024-08-23 14:35:38','wh_tbl_venta',105),(252,2,8,'2024-08-23 14:37:42','wh_tbl_venta',103),(253,2,8,'2024-08-23 14:37:42','wh_tbl_venta',104),(254,2,8,'2024-08-23 14:37:42','wh_tbl_venta',105),(255,2,2,'2024-08-23 14:37:42','tbl_recibo_nota',36),(256,2,2,'2024-08-23 14:37:42','tbl_recibo_nota',37),(257,2,8,'2024-08-23 14:37:42','wh_tbl_venta',103),(258,2,8,'2024-08-23 14:37:42','wh_tbl_venta',104),(259,2,8,'2024-08-23 14:37:42','wh_tbl_venta',105),(260,2,8,'2024-08-23 14:39:57','wh_tbl_venta',103),(261,2,8,'2024-08-23 14:39:57','wh_tbl_venta',104),(262,2,8,'2024-08-23 14:39:57','wh_tbl_venta',105),(263,2,8,'2024-08-23 14:39:57','wh_tbl_venta',103),(264,2,8,'2024-08-23 14:39:57','wh_tbl_venta',104),(265,2,8,'2024-08-23 14:39:57','wh_tbl_venta',105),(266,2,8,'2024-08-23 14:40:01','wh_tbl_venta',103),(267,2,8,'2024-08-23 14:40:01','wh_tbl_venta',104),(268,2,8,'2024-08-23 14:40:01','wh_tbl_venta',105),(269,2,8,'2024-08-23 14:40:01','wh_tbl_venta',103),(270,2,8,'2024-08-23 14:40:01','wh_tbl_venta',104),(271,2,8,'2024-08-23 14:40:01','wh_tbl_venta',105),(272,2,8,'2024-08-23 14:43:45','wh_tbl_venta',103),(273,2,8,'2024-08-23 14:43:45','wh_tbl_venta',104),(274,2,8,'2024-08-23 14:43:45','wh_tbl_venta',105),(275,2,8,'2024-08-23 14:43:45','wh_tbl_venta',103),(276,2,8,'2024-08-23 14:43:45','wh_tbl_venta',104),(277,2,8,'2024-08-23 14:43:45','wh_tbl_venta',105),(278,2,1,'2024-08-23 15:17:39','tbl_recibo',12),(279,2,1,'2024-08-23 15:29:23','wh_tbl_venta',0),(280,2,1,'2024-08-23 15:32:03','wh_tbl_venta',2),(281,2,1,'2024-08-23 15:33:40','wh_tbl_venta',23),(282,2,1,'2024-08-23 15:34:44','wh_tbl_venta',9),(283,2,1,'2024-08-23 15:35:50','tbl_recibo_nota',39),(284,2,1,'2024-08-23 15:36:12','tbl_recibo_nota',40),(285,2,1,'2024-08-23 15:36:21','tbl_recibo_nota',41),(286,2,1,'2024-08-23 15:36:30','tbl_recibo_nota',42),(287,2,1,'2024-08-23 15:46:07','tbl_pago',32),(288,2,1,'2024-08-23 15:46:07','tbl_recibo_pago',24),(289,2,8,'2024-08-23 15:48:38','wh_tbl_venta',106),(290,2,8,'2024-08-23 15:48:38','wh_tbl_venta',107),(291,2,8,'2024-08-23 15:48:38','wh_tbl_venta',108),(292,2,8,'2024-08-23 15:48:38','wh_tbl_venta',109),(293,2,2,'2024-08-23 15:48:38','tbl_recibo_nota',39),(294,2,2,'2024-08-23 15:48:38','tbl_recibo_nota',40),(295,2,2,'2024-08-23 15:48:38','tbl_recibo_nota',41),(296,2,2,'2024-08-23 15:48:38','tbl_recibo_nota',42),(297,2,8,'2024-08-23 15:48:38','wh_tbl_venta',106),(298,2,8,'2024-08-23 15:48:38','wh_tbl_venta',107),(299,2,8,'2024-08-23 15:48:38','wh_tbl_venta',108),(300,2,8,'2024-08-23 15:48:38','wh_tbl_venta',109),(301,2,8,'2024-08-23 15:59:26','wh_tbl_venta',106),(302,2,8,'2024-08-23 15:59:26','wh_tbl_venta',107),(303,2,8,'2024-08-23 15:59:26','wh_tbl_venta',108),(304,2,8,'2024-08-23 15:59:26','wh_tbl_venta',109),(305,2,8,'2024-08-23 15:59:26','wh_tbl_venta',106),(306,2,8,'2024-08-23 15:59:26','wh_tbl_venta',107),(307,2,8,'2024-08-23 15:59:26','wh_tbl_venta',108),(308,2,8,'2024-08-23 15:59:26','wh_tbl_venta',109),(309,2,8,'2024-08-23 15:59:43','wh_tbl_venta',106),(310,2,8,'2024-08-23 15:59:43','wh_tbl_venta',107),(311,2,8,'2024-08-23 15:59:43','wh_tbl_venta',108),(312,2,8,'2024-08-23 15:59:43','wh_tbl_venta',109),(313,2,8,'2024-08-23 15:59:43','wh_tbl_venta',106),(314,2,8,'2024-08-23 15:59:43','wh_tbl_venta',107),(315,2,8,'2024-08-23 15:59:43','wh_tbl_venta',108),(316,2,8,'2024-08-23 15:59:43','wh_tbl_venta',109),(317,2,8,'2024-08-23 16:01:35','wh_tbl_venta',106),(318,2,8,'2024-08-23 16:01:35','wh_tbl_venta',107),(319,2,8,'2024-08-23 16:01:35','wh_tbl_venta',108),(320,2,8,'2024-08-23 16:01:35','wh_tbl_venta',109),(321,2,8,'2024-08-23 16:01:35','wh_tbl_venta',106),(322,2,8,'2024-08-23 16:01:35','wh_tbl_venta',107),(323,2,8,'2024-08-23 16:01:35','wh_tbl_venta',108),(324,2,8,'2024-08-23 16:01:35','wh_tbl_venta',109),(325,2,8,'2024-08-23 16:03:35','wh_tbl_venta',106),(326,2,8,'2024-08-23 16:03:35','wh_tbl_venta',107),(327,2,8,'2024-08-23 16:03:35','wh_tbl_venta',108),(328,2,8,'2024-08-23 16:03:35','wh_tbl_venta',109),(329,2,2,'2024-08-23 16:03:35','tbl_recibo_nota',39),(330,2,2,'2024-08-23 16:03:35','tbl_recibo_nota',40),(331,2,2,'2024-08-23 16:03:35','tbl_recibo_nota',41),(332,2,2,'2024-08-23 16:03:35','tbl_recibo_nota',42),(333,2,8,'2024-08-23 16:03:35','wh_tbl_venta',106),(334,2,8,'2024-08-23 16:03:35','wh_tbl_venta',107),(335,2,8,'2024-08-23 16:03:35','wh_tbl_venta',108),(336,2,8,'2024-08-23 16:03:35','wh_tbl_venta',109),(337,2,8,'2024-08-23 16:05:57','wh_tbl_venta',106),(338,2,8,'2024-08-23 16:05:57','wh_tbl_venta',107),(339,2,8,'2024-08-23 16:05:57','wh_tbl_venta',108),(340,2,8,'2024-08-23 16:05:57','wh_tbl_venta',109),(341,2,2,'2024-08-23 16:05:57','tbl_recibo_nota',39),(342,2,2,'2024-08-23 16:05:57','tbl_recibo_nota',40),(343,2,2,'2024-08-23 16:05:57','tbl_recibo_nota',41),(344,2,2,'2024-08-23 16:05:57','tbl_recibo_nota',42),(345,2,8,'2024-08-23 16:05:57','wh_tbl_venta',106),(346,2,8,'2024-08-23 16:05:57','wh_tbl_venta',107),(347,2,8,'2024-08-23 16:05:57','wh_tbl_venta',108),(348,2,8,'2024-08-23 16:05:57','wh_tbl_venta',109),(349,2,8,'2024-08-23 16:06:48','wh_tbl_venta',106),(350,2,8,'2024-08-23 16:06:48','wh_tbl_venta',107),(351,2,8,'2024-08-23 16:06:48','wh_tbl_venta',108),(352,2,8,'2024-08-23 16:06:48','wh_tbl_venta',109),(353,2,2,'2024-08-23 16:06:48','tbl_recibo_nota',39),(354,2,2,'2024-08-23 16:06:48','tbl_recibo_nota',40),(355,2,2,'2024-08-23 16:06:48','tbl_recibo_nota',41),(356,2,2,'2024-08-23 16:06:48','tbl_recibo_nota',42),(357,2,8,'2024-08-23 16:06:48','wh_tbl_venta',106),(358,2,8,'2024-08-23 16:06:48','wh_tbl_venta',107),(359,2,8,'2024-08-23 16:06:48','wh_tbl_venta',108),(360,2,8,'2024-08-23 16:06:48','wh_tbl_venta',109),(361,2,8,'2024-08-23 16:07:26','wh_tbl_venta',106),(362,2,8,'2024-08-23 16:07:26','wh_tbl_venta',107),(363,2,8,'2024-08-23 16:07:26','wh_tbl_venta',108),(364,2,8,'2024-08-23 16:07:26','wh_tbl_venta',109),(365,2,8,'2024-08-23 16:07:26','wh_tbl_venta',106),(366,2,8,'2024-08-23 16:07:26','wh_tbl_venta',107),(367,2,8,'2024-08-23 16:07:26','wh_tbl_venta',108),(368,2,8,'2024-08-23 16:07:26','wh_tbl_venta',109),(369,2,8,'2024-08-23 16:10:38','wh_tbl_venta',106),(370,2,8,'2024-08-23 16:10:38','wh_tbl_venta',107),(371,2,8,'2024-08-23 16:10:38','wh_tbl_venta',108),(372,2,8,'2024-08-23 16:10:38','wh_tbl_venta',109),(373,2,8,'2024-08-23 16:10:38','wh_tbl_venta',106),(374,2,8,'2024-08-23 16:10:38','wh_tbl_venta',107),(375,2,8,'2024-08-23 16:10:38','wh_tbl_venta',108),(376,2,8,'2024-08-23 16:10:38','wh_tbl_venta',109),(377,2,8,'2024-08-23 16:12:04','wh_tbl_venta',106),(378,2,8,'2024-08-23 16:12:04','wh_tbl_venta',107),(379,2,8,'2024-08-23 16:12:04','wh_tbl_venta',108),(380,2,8,'2024-08-23 16:12:04','wh_tbl_venta',109),(381,2,2,'2024-08-23 16:12:04','tbl_recibo_nota',39),(382,2,2,'2024-08-23 16:12:04','tbl_recibo_nota',40),(383,2,2,'2024-08-23 16:12:04','tbl_recibo_nota',41),(384,2,2,'2024-08-23 16:12:04','tbl_recibo_nota',42),(385,2,8,'2024-08-23 16:12:04','wh_tbl_venta',106),(386,2,8,'2024-08-23 16:12:04','wh_tbl_venta',107),(387,2,8,'2024-08-23 16:12:04','wh_tbl_venta',108),(388,2,8,'2024-08-23 16:12:04','wh_tbl_venta',109),(389,2,8,'2024-08-23 16:12:52','wh_tbl_venta',106),(390,2,8,'2024-08-23 16:12:52','wh_tbl_venta',107),(391,2,8,'2024-08-23 16:12:52','wh_tbl_venta',108),(392,2,8,'2024-08-23 16:12:52','wh_tbl_venta',109),(393,2,8,'2024-08-23 16:12:52','wh_tbl_venta',106),(394,2,8,'2024-08-23 16:12:52','wh_tbl_venta',107),(395,2,8,'2024-08-23 16:12:52','wh_tbl_venta',108),(396,2,8,'2024-08-23 16:12:52','wh_tbl_venta',109),(397,2,8,'2024-08-23 16:13:00','wh_tbl_venta',106),(398,2,8,'2024-08-23 16:13:00','wh_tbl_venta',107),(399,2,8,'2024-08-23 16:13:00','wh_tbl_venta',108),(400,2,8,'2024-08-23 16:13:00','wh_tbl_venta',109),(401,2,8,'2024-08-23 16:13:00','wh_tbl_venta',106),(402,2,8,'2024-08-23 16:13:00','wh_tbl_venta',107),(403,2,8,'2024-08-23 16:13:00','wh_tbl_venta',108),(404,2,8,'2024-08-23 16:13:00','wh_tbl_venta',109),(405,2,8,'2024-08-23 16:13:31','wh_tbl_venta',106),(406,2,8,'2024-08-23 16:13:31','wh_tbl_venta',107),(407,2,8,'2024-08-23 16:13:31','wh_tbl_venta',108),(408,2,8,'2024-08-23 16:13:31','wh_tbl_venta',109),(409,2,8,'2024-08-23 16:13:31','wh_tbl_venta',106),(410,2,8,'2024-08-23 16:13:31','wh_tbl_venta',107),(411,2,8,'2024-08-23 16:13:31','wh_tbl_venta',108),(412,2,8,'2024-08-23 16:13:31','wh_tbl_venta',109),(413,2,8,'2024-08-23 16:15:27','wh_tbl_venta',106),(414,2,8,'2024-08-23 16:15:27','wh_tbl_venta',107),(415,2,8,'2024-08-23 16:15:27','wh_tbl_venta',108),(416,2,8,'2024-08-23 16:15:27','wh_tbl_venta',109),(417,2,8,'2024-08-23 16:15:27','wh_tbl_venta',106),(418,2,8,'2024-08-23 16:15:27','wh_tbl_venta',107),(419,2,8,'2024-08-23 16:15:27','wh_tbl_venta',108),(420,2,8,'2024-08-23 16:15:27','wh_tbl_venta',109),(421,2,8,'2024-08-23 16:15:38','wh_tbl_venta',106),(422,2,8,'2024-08-23 16:15:38','wh_tbl_venta',107),(423,2,8,'2024-08-23 16:15:38','wh_tbl_venta',108),(424,2,8,'2024-08-23 16:15:38','wh_tbl_venta',109),(425,2,8,'2024-08-23 16:15:38','wh_tbl_venta',106),(426,2,8,'2024-08-23 16:15:38','wh_tbl_venta',107),(427,2,8,'2024-08-23 16:15:38','wh_tbl_venta',108),(428,2,8,'2024-08-23 16:15:38','wh_tbl_venta',109),(429,2,8,'2024-08-23 16:17:48','wh_tbl_venta',106),(430,2,8,'2024-08-23 16:17:48','wh_tbl_venta',107),(431,2,8,'2024-08-23 16:17:48','wh_tbl_venta',108),(432,2,8,'2024-08-23 16:17:48','wh_tbl_venta',109),(433,2,8,'2024-08-23 16:17:48','wh_tbl_venta',106),(434,2,8,'2024-08-23 16:17:48','wh_tbl_venta',107),(435,2,8,'2024-08-23 16:17:48','wh_tbl_venta',108),(436,2,8,'2024-08-23 16:17:48','wh_tbl_venta',109),(437,2,8,'2024-08-23 16:17:54','wh_tbl_venta',106),(438,2,8,'2024-08-23 16:17:54','wh_tbl_venta',107),(439,2,8,'2024-08-23 16:17:54','wh_tbl_venta',108),(440,2,8,'2024-08-23 16:17:54','wh_tbl_venta',109),(441,2,8,'2024-08-23 16:17:54','wh_tbl_venta',106),(442,2,8,'2024-08-23 16:17:54','wh_tbl_venta',107),(443,2,8,'2024-08-23 16:17:54','wh_tbl_venta',108),(444,2,8,'2024-08-23 16:17:54','wh_tbl_venta',109),(445,2,1,'2024-08-23 16:58:36','wh_tbl_venta',0),(446,2,1,'2024-08-23 17:11:11','tbl_recibo',13),(447,2,1,'2024-08-23 17:32:47','tbl_recibo',14),(448,2,1,'2024-08-23 17:33:16','tbl_recibo_nota',43),(449,2,1,'2024-08-23 17:33:58','tbl_pago',33),(450,2,1,'2024-08-23 17:33:58','tbl_recibo_pago',25),(451,2,8,'2024-08-23 17:34:38','wh_tbl_venta',110),(452,2,2,'2024-08-23 17:34:38','tbl_recibo_nota',43),(453,2,8,'2024-08-23 17:34:38','wh_tbl_venta',110),(454,2,1,'2024-08-23 17:39:11','tbl_recibo',15),(455,2,1,'2024-08-23 17:40:07','tbl_recibo_nota',44),(456,2,1,'2024-08-23 17:41:13','tbl_pago',34),(457,2,1,'2024-08-23 17:41:13','tbl_recibo_pago',26),(458,2,8,'2024-08-23 17:41:44','wh_tbl_venta',110),(459,2,2,'2024-08-23 17:41:44','tbl_recibo_nota',44),(460,2,8,'2024-08-23 17:41:44','wh_tbl_venta',110),(461,2,1,'2024-08-23 17:44:43','tbl_recibo',16),(462,2,2,'2024-08-26 10:55:14','cliente',124),(463,2,1,'2024-08-26 15:29:15','wh_tbl_venta',18),(464,2,1,'2024-08-26 15:40:45','wh_tbl_venta',18),(465,1,1,'2024-08-26 16:53:43','permisos',171),(466,1,1,'2024-08-26 16:53:53','permisos',172),(467,2,2,'2024-08-27 15:39:34','wh_tbl_compra',4),(468,2,2,'2024-08-27 15:40:18','wh_tbl_compra',4),(469,2,2,'2024-08-27 15:42:24','wh_tbl_compra',5),(470,2,2,'2024-08-27 17:37:25','wh_tbl_compra',6),(471,2,1,'2024-08-28 16:56:55','wh_tbl_venta',10),(472,2,1,'2024-08-28 17:00:14','wh_tbl_venta',0),(473,2,8,'2024-08-28 17:19:38','wh_tbl_desgvta',0),(474,2,1,'2024-08-28 17:19:38','wh_tbl_venta',0),(475,2,1,'2024-08-28 17:45:32','wh_tbl_venta',10),(476,2,8,'2024-08-28 18:55:44','wh_tbl_desgvta',68),(477,2,1,'2024-08-28 18:55:44','wh_tbl_venta',4),(478,2,8,'2024-08-28 19:03:29','wh_tbl_desgvta',68),(479,2,1,'2024-08-28 19:03:29','wh_tbl_venta',4),(480,2,1,'2024-08-29 10:00:39','desglose',21),(481,2,8,'2024-08-29 15:39:17','wh_tbl_desgvta',75),(482,2,1,'2024-08-29 15:39:17','wh_tbl_venta',13),(483,2,8,'2024-08-29 16:02:58','wh_tbl_desgvta',78),(484,2,1,'2024-08-29 16:02:58','wh_tbl_venta',13),(485,2,8,'2024-08-30 10:40:18','wh_tbl_desgvta',75),(486,2,1,'2024-08-30 10:40:18','wh_tbl_venta',13),(487,2,8,'2024-08-30 10:51:44','wh_tbl_desgvta',75),(488,2,1,'2024-08-30 10:51:44','wh_tbl_venta',13),(489,2,8,'2024-08-30 10:59:20','wh_tbl_desgvta',75),(490,2,1,'2024-08-30 10:59:20','wh_tbl_venta',13),(491,2,8,'2024-08-30 11:08:05','wh_tbl_desgvta',75),(492,2,1,'2024-08-30 11:08:05','wh_tbl_venta',13),(493,2,8,'2024-08-30 11:29:11','wh_tbl_desgvta',78),(494,2,1,'2024-08-30 11:29:11','wh_tbl_venta',13),(495,1,1,'2024-09-02 16:53:51','permisos',173),(496,2,1,'2024-09-04 14:44:05','wh_tbl_venta',0),(497,2,1,'2024-09-04 14:54:23','wh_tbl_venta',8),(498,2,8,'2024-09-04 15:37:30','wh_tbl_desgvta',79),(499,2,1,'2024-09-04 15:37:30','wh_tbl_venta',0),(500,2,8,'2024-09-05 15:59:34','wh_tbl_desgvta',81),(501,2,1,'2024-09-05 15:59:34','wh_tbl_venta',0),(502,2,8,'2024-09-05 16:00:18','wh_tbl_desgvta',82),(503,2,1,'2024-09-05 16:00:18','wh_tbl_venta',0),(504,2,8,'2024-09-05 17:43:02','wh_tbl_desgvta',75),(505,2,1,'2024-09-05 17:43:02','wh_tbl_venta',13),(506,2,1,'2024-09-09 16:42:15','wh_tbl_venta',0),(507,2,1,'2024-09-09 16:46:00','wh_tbl_venta',0),(508,2,1,'2024-09-09 16:51:25','wh_tbl_venta',0),(509,2,1,'2024-09-09 16:54:45','wh_tbl_venta',0),(510,2,1,'2024-09-09 16:56:22','wh_tbl_venta',0),(511,2,1,'2024-09-09 16:57:13','wh_tbl_venta',0),(512,2,1,'2024-09-09 17:01:48','wh_tbl_venta',0),(513,2,1,'2024-09-09 17:12:05','wh_tbl_venta',0),(514,2,1,'2024-09-09 17:12:54','wh_tbl_venta',0),(515,2,1,'2024-09-09 17:16:33','wh_tbl_venta',0),(516,2,1,'2024-09-09 17:24:48','wh_tbl_venta',0),(517,2,1,'2024-09-09 17:26:17','wh_tbl_venta',0),(518,2,1,'2024-09-09 17:28:41','wh_tbl_venta',0),(519,2,1,'2024-09-09 17:30:32','wh_tbl_venta',0),(520,2,1,'2024-09-09 17:35:07','wh_tbl_venta',0),(521,2,1,'2024-09-09 17:36:01','wh_tbl_venta',0),(522,2,1,'2024-09-09 17:36:49','wh_tbl_venta',0),(523,2,1,'2024-09-09 17:41:22','wh_tbl_venta',0),(524,2,1,'2024-09-10 09:01:40','wh_tbl_venta',0),(525,2,1,'2024-09-10 09:02:49','wh_tbl_venta',0),(526,2,1,'2024-09-10 09:03:53','wh_tbl_venta',0),(527,2,1,'2024-09-10 09:08:29','wh_tbl_venta',0),(528,2,1,'2024-09-10 09:11:43','wh_tbl_venta',0),(529,2,1,'2024-09-10 10:55:51','wh_tbl_venta',0),(530,2,1,'2024-09-10 16:40:38','desglose',22),(531,2,8,'2024-09-10 17:50:08','wh_tbl_desgvta',83),(532,2,1,'2024-09-10 17:50:08','wh_tbl_venta',0),(533,2,1,'2024-09-11 10:36:26','desglose',23),(534,2,8,'2024-09-11 15:29:22','wh_tbl_desgvta',93),(535,2,1,'2024-09-11 15:29:22','wh_tbl_venta',0),(536,2,8,'2024-09-11 15:47:01','wh_tbl_desgvta',93),(537,2,1,'2024-09-11 15:47:01','wh_tbl_venta',0),(538,2,8,'2024-09-11 15:48:44','wh_tbl_desgvta',93),(539,2,1,'2024-09-11 15:48:44','wh_tbl_venta',0),(540,2,8,'2024-09-11 15:49:26','wh_tbl_desgvta',91),(541,2,1,'2024-09-11 15:49:26','wh_tbl_venta',1),(542,2,1,'2024-09-12 09:07:57','wh_tbl_venta',0),(543,2,1,'2024-09-12 09:20:21','wh_tbl_venta',0),(544,2,1,'2024-09-12 09:27:08','wh_tbl_venta',0),(545,2,1,'2024-09-13 14:37:47','wh_tbl_venta',10),(546,2,1,'2024-09-16 15:13:29','cliente',158),(547,2,3,'2024-09-16 15:15:50','cliente',158),(548,2,1,'2024-09-16 15:19:01','cliente',159),(549,2,1,'2024-09-24 11:45:03','wh_tbl_venta',2),(550,2,1,'2024-09-24 16:58:48','cliente',160),(551,2,2,'2024-09-25 17:39:11','wh_tbl_compra',2),(552,2,2,'2024-09-27 12:03:35','cliente',140),(553,2,1,'2024-09-27 17:13:33','cliente',161);
/*!40000 ALTER TABLE `tbl_auditori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_banco`
--

DROP TABLE IF EXISTS `tbl_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_banco` (
  `banco_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `banco_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `banco_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`banco_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_banco`
--

LOCK TABLES `tbl_banco` WRITE;
/*!40000 ALTER TABLE `tbl_banco` DISABLE KEYS */;
INSERT INTO `tbl_banco` VALUES (0,'BANCA AMIGA  KLJLJLKJKL',0),(1,'NO APLICA',0),(2,'BANESCO',0),(3,'MERCANTIL',0),(4,'PROVINCIAL',0),(5,'BICENTENARIO',0),(6,'ACTIVO',0),(7,'VENEZUELA',0),(8,'TESORO',0),(9,'SOFITASA',0),(10,'BANCO NACIONAL DE CREDITO',0),(11,'EXTERIOR',0);
/*!40000 ALTER TABLE `tbl_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_chat`
--

DROP TABLE IF EXISTS `tbl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_de` varchar(255) DEFAULT NULL,
  `chat_para` varchar(255) DEFAULT NULL,
  `chat_mens` longtext DEFAULT NULL,
  `chat_envi` datetime DEFAULT NULL,
  `chat_recd` int(11) DEFAULT 0,
  PRIMARY KEY (`chat_id`),
  UNIQUE KEY `chat_id` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_chat`
--

LOCK TABLES `tbl_chat` WRITE;
/*!40000 ALTER TABLE `tbl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente` (
  `clien_ide` int(11) NOT NULL AUTO_INCREMENT,
  `clien_codigo` varchar(16) DEFAULT '' COMMENT 'Codigo Interno del Cliente',
  `clien_tipcli` varchar(2) DEFAULT NULL COMMENT 'Tipo de Cliente: (V) Venezolano, (E) Extrangero, (J) Juridico, (G) Gubernamental',
  `clien_numiden` varchar(12) DEFAULT '' COMMENT 'Número de identificación (Cédula) o (RIF)',
  `clien_nombre1` varchar(255) DEFAULT NULL COMMENT 'Primer nombre',
  `clien_nombre2` varchar(64) DEFAULT '' COMMENT 'Segundo nombre',
  `clien_apelli1` varchar(50) DEFAULT NULL COMMENT 'Primer apellido',
  `clien_apelli2` varchar(50) DEFAULT NULL COMMENT 'Segundo apellido',
  `clien_fecnaci` date DEFAULT '2017-01-01' COMMENT 'Fecha de nacimiento',
  `clien_direcci` varchar(255) DEFAULT NULL COMMENT 'Dirección especifica',
  `clien_telmovi` varchar(64) DEFAULT '' COMMENT 'Número de celular',
  `clien_correo` varchar(100) DEFAULT NULL COMMENT 'Correo electrónico',
  `clien_contriespec` int(11) DEFAULT 0 COMMENT 'Contribuyente Especial SI=1, NO=0',
  `clien_ubimap` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Contiene el Iframe de Google Map para Ubicar al Cliente en el Mapa',
  `clien_vendedor` int(11) DEFAULT NULL,
  `clien_zona` int(11) DEFAULT NULL,
  `clien_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`clien_ide`),
  KEY `clien_tipcli` (`clien_tipcli`),
  CONSTRAINT `clien_tipcli` FOREIGN KEY (`clien_tipcli`) REFERENCES `tbl_tipcli` (`tipcli_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='Información de los clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente`
--

LOCK TABLES `tbl_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_cliente` DISABLE KEYS */;
INSERT INTO `tbl_cliente` VALUES (1,'20172410','V','246944543','JONATHAN CHACON SANCHEZ','JONATHAN CHACON SANCHEZ','','','2023-01-06','*','','',0,'',6,2,0),(2,'20172440','V','169839510','JULIAN ALFREDO DURAN ANGULO','AGROBODEGON JY DURAN','','','2023-01-06',NULL,NULL,NULL,0,'',2,2,0),(3,'20170841','J','296620636','ABEL MOTOS C.A.',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',2,2,0),(4,'20172201','V','233021802','ALEJANDRO MIGUEL CASTRO ROJAS',NULL,'','','2023-01-06','EDO ZULIA CARRETERA MACHIQUES COLON SECTOR CERRO MIRADOR ','0414-7322598','',0,'',5,2,0),(5,'20172182','V','127567758','ALEXIS JAVIER DUQUE MEDINA','MOTO REPUESTOS JD RACING, F.P','','','2023-01-06','CARRETERA PANAMERICA NRO LUCATEBRAL SAN JUAN DE COLON EDO TACHIRA','04160795576','ALEXIS@HOTMAIL.COM',0,'',4,2,0),(6,'20172071','V','174947452','ANDRES DAVID VARGAS MINORTA ','GLOBAL IMPORT VARGAS','','','2023-01-06','EDO TACHIRA  RUBIO CALLE 17 . AV 14 LOCAL S/N SECOR SAN DIEGO A 100 METROS DEL PUENTE SAN DIEGO ','0424-2877255','',0,'',2,1,0),(7,'20172417','V','131474969','ANGEL RAMON MORAN MONROY ',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',5,3,0),(8,'20171463','V','113029664','ARGENIS D. BASTOS','MOTOS DUQUE RACING','','','2023-01-06',NULL,NULL,NULL,0,'',1,3,0),(9,'20172399','V','197765875','AUDREY YOSMELY GONZALEZ BLANCO ',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',2,1,0),(10,'20172121','V','119716884','BEN RICHARD VARELA ESCALANTE','INVERSIONES MISTER MOTOS B.V','','','2023-01-06',NULL,NULL,NULL,0,'',5,1,0),(11,'20172488','V','205314586','CARLOS ANTONIO HOYOS BOCHAGA','MOTO AUTO EL FUTURO HOYOS F.P','','','2023-01-06',NULL,NULL,NULL,0,'',5,1,0),(12,'20172384','V','172205573','CARLOS ANTONIO MONCADA AGUILAR','RESPUESTOS Y ACCESORIOS MONCADA AGUILAR','','','2023-01-06',NULL,NULL,NULL,0,'',7,1,0),(13,'20172239','V','019582377','CLARA LINYIN MENDOZA CHACON','DISTRIBUIDORA MULTIPARTES MENDOZA, F.P.','','','2023-01-06','EDO TACHIRA CR CARRERA 4 CON CALLE 8 Y 9 CASA NRO 8-47 SECTOR CENTRO SAN CRISTOBAL ','0414-7486877','KLAYIN2803@GMAIL.COM',0,'',2,1,0),(14,'20172053','V','025481881','CLAUDIA INES AGUILAR ORTIZ','JHON MOTOS AGUILAR','','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(15,'20171979','J','500882300','COMERCIALIZADORA Y DISTRIBUIDORA HCH C.A ',NULL,'','','2023-01-06','PROLOGACION DE LA 5TA AV CASA N 7-291 FRENTE A MINFRA LA CONCORDIAL SAN CRISTOBAL EDO TACHIRA ','0426-17125596 /0276-3476856','CODISTHCH@GMAIL.COM ',0,'',8,1,0),(16,'20172298','V','113047077','CORINA ROA DE REYES ','MULTIMARCAS RR.','','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(17,'20172360','V','194620663','DENNY MILDRED VENEGAS BUENAÑO','REPUESTOS Y LUBRICANTES VENEGAS','','','2023-01-06',NULL,NULL,NULL,0,'',7,1,0),(18,'20172197','J','410015195','DISTRIBUIDORA DE REPUESTOS W & Y C.A. ','DISTRIBUIDORA DE REPUESTOS W & Y C.A.','','','2023-01-06',NULL,NULL,NULL,0,'',2,1,0),(19,'20170201','J','401080359','DISTRIBUIDORA IMPORT MOTORS, CA',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',2,1,0),(20,'20171965','V','033091806','DISTRIBUIDORA Y MULTIPARTES MADELA QUINTERO, F.P.','MARIA ADELINA QUINTERO PEREZ','','','2023-01-06',NULL,NULL,NULL,0,'',2,1,0),(21,'20171462','V','212188391','DULCE XIOMARA MEDINA ALBARRACIN',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',1,1,0),(22,'20172406','V','175032661','EDITHZON ANTONIO GALLO MENDEZ ',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',6,1,0),(23,'20172221','V','173751369','EDUAR ARLEY PABON SEPULVEDA','INVERSIONES KEYMAR 3','','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(24,'20171412','V','226416842','EDUARDO CACERES RAQUEJO',NULL,'','','2023-01-06','CALLE 1, VIA LA MORITA CASA S/N SECTOR EL PIÑAL, SAN RAFAEL DEL PIÑAL, EDO TACHIRA','0412-2994957 ','',0,'',3,1,0),(25,'20171600','V','162320803','EDUARD A. GAMEZ A.','MOTO REPUESTOS GAMEZ, F.P','','','2023-01-06','CALLE 15 ENTRE CARRER 4 Y 5TA AV LOCAL 4-33 SECTOR LA ERMITA EDO TACHIRA','04168743064','GMAEZ@HOTMAIL.COM',0,'',2,1,0),(26,'20172321','V','215513153','ENDER ALEXANDER CAÑAS BRACHO','CAÑAS INVERSIONES C.E.B','','','2023-01-06',NULL,NULL,NULL,0,'',3,1,0),(27,'20172199','V','172065429','FREDDY ALEJANDRO VILLAMIZAR CONTRERAS','INVERSIONES FREIDDY VILLAMIZAR, F.P','','','2023-01-06',NULL,NULL,NULL,0,'',3,1,0),(28,'20172461','V','101507218','FREDDY ANTONIO ALVARADO SANCHEZ','TRANSPORTE ALSUE / FREDDY ALVARADO INVERSIONE´S','','','2023-01-06',NULL,NULL,NULL,0,'',3,1,0),(29,'20171764','V','056842574','GERARDO LA CRUZ ROA',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',4,1,0),(30,'20172335','V','210037580','GERDDYSON ALBERTO CHACON PLATA','MULTIREPUESTOS GERDDYSON','','','2023-01-06',NULL,NULL,NULL,0,'',4,1,0),(31,'20171870','V','091894595','GUSTAVO MARTIN SALUZZO RAMIREZ','TAVO MOTOS SALUZZO','','','2023-01-06',NULL,NULL,NULL,0,'',1,1,0),(32,'20170486','V','154566070','HENDERSON WILLIBALDO RAMIREZ MARTINEZ',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',5,1,0),(33,'20172495','V','410235160','HERMANOS OSTOS, C.A','HERMANOS OSTOS, C.A','','','2023-01-06',NULL,NULL,NULL,0,'',2,1,0),(34,'20171508','V','154784825','ILDER JOE PERNIA PERNIA','MOTO REPUESTOS EL SINAY','','','2023-01-06',NULL,NULL,NULL,0,'',7,1,0),(35,'20171637','V','210023794','INVERSIONES A.R.K 10 ','YOSMIR A. NUÑEZ T.','','','2023-01-06','CALLE BOLIVAR ENTRE CARRERA SIMON RODRIGUEZ Y NARIÑO, SECTOR CENTRO GUASDALITO, EDO APURE','0414-3716189','arcangelnunez45@gmail.com',0,'',8,1,0),(36,'20171932','J','411661880','INVERSIONES DILCARS C.A',NULL,'','','2023-01-06','CALLE 7 CASA NRO 3-72 SECTOR TELARES DEL TACHIRA SAN CRISTOBAL EDO TACHIRA','0424-7278855','',0,'',2,1,0),(37,'20171640','J','408113961','INVERSIONES ECOMOTOS C.A.',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(38,'20171283','V','197320768','INVERSIONES EL AMPERIO 3 DANIELA CUBIDES',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(39,'20172252','J','411744182','INVERSIONES EL ROBLE 2018 C.A.','INVERSIONES EL ROBLE 2018 C.A.','','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(40,'20171635','V','236445131','INVERSIONES MOTO RESPUESTOS PARMAN','MILDRED DEL CARMEN MANDON','','','2023-01-06','CARRERA URDANETA ENTRE CALLE CEDEÑO Y SUCRE, SECTOR CENTRO, GUASDALITO, EDO APURE','0424-4418335','',0,'',8,1,0),(41,'20171723','J','409938050','INVERSIONES PENIEL & FERREIDA, C.A',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',5,1,0),(42,'20171064','V','179316320','INVERSIONES VJ MOTORS ALEX JONANDER VERA CARRILLO',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',5,4,0),(43,'20170431','J','406786624','INVERSIONES ZABRINA 2015 C.A.',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',5,4,0),(44,'20172119','V','296497300','ISAAC DAVID RAMIREZ MANRIQUE',NULL,'','','2023-01-06','EDO TACHIRA CALLE 6 ENTRE CRR 4Y5 LA CONCORDIA BAJANDO DE LA ANADERIA ','0424-7018422','JEDAMOTORS.SC@GMAIL.COM',0,'',7,1,0),(45,'20172299','V','149414009','JAKSON OSMEL OMAÑA CHACON','MULTISERVICIOS J.Y 22','','','2023-01-06',NULL,NULL,NULL,0,'',7,1,0),(46,'20172291','V','271485774','JAVIER CHINCHILLA PEDRAZA','BICIMOTORS PEDRAZA JAVIER','','','2023-01-06',NULL,NULL,NULL,0,'',8,1,0),(47,'20172484','V','200100618','JEISNER SOMER PERNIA CARRERO ',NULL,'','','2023-01-06',NULL,NULL,NULL,0,'',6,1,0),(48,'20171821','V','201235363','JESUS A. JAIMES R.','INVERSIONES JAIPIC MOTOR\'S, F.P',NULL,NULL,'2023-01-06','CARRETERA TRONCAL 5, VIA EL LLANO, EDO TACHIRA','0414-7097638 / 0276-7640111','romero_9mm@hotmail.com',0,NULL,1,1,0),(49,'20172226','V','164683902','JESUS ALBERTO PABON CHAVEZ','INVERSIONES Y SUMINISTROS ABIAD DE JESUS PABON',NULL,NULL,'2023-01-06','EDO ZULIA CALLE LOS PELADOS SAN JOSE CASIQUE ','0424-7031741','JESUSALBERTOPABONCHAVEZ@GMAIL.COM',0,NULL,7,1,0),(50,'20172418','V','192815777','JESUS ENRIQUE VILLASMIL RUIZ','INVERSIONES VILLASMIL R DE JESUS ENRIQUE VILLASMIL RUIZ, F.P.',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(51,'20172388','V','172206030','JESUS RAMON MONCADA AGUILAR','REPUESTOS Y ACCESORIOS MONCADA',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,7,1,0),(52,'20172076','V','194971330','JOEL CONTRERAS BOLAÑOS','CONTRERAS REPUESTOS EL PROVENIR, F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(53,'20172459','V','157219487','JORGE LUIS RODRIGUEZ SABARIEGO','COMERCIAL DACS, F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,9,1,0),(54,'20171536','V','119757572','JOSE A. PINEDA F.','SERVI-MOTOS BETO',NULL,NULL,'2023-01-06','CALLE 4 ENTRE CARRERA 13 Y 14, N°12-32 SAN JUAN DE COLON EDO. TACHIRA','0414-7174491 ','',0,NULL,4,1,0),(55,'20172282','V','174662335','JOSE DEL CARMEN GARCIA DELGADO','COMERCIALIZADORA JADA FRONT 2021, F.P',NULL,NULL,'2023-01-06','EDO TACHIRA  CR 12 CON CALLE 10 EDIF SAN DIEGO LOCL NRO 2 BARRIO SIMON BOLIVAR SAN ANTONIO ','0424-7129199','jsgar85@gmail.com',0,NULL,1,1,0),(56,'20172404','V','195968450','JOSE FRANCISCO CHACON BECERRA ',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,4,1,0),(57,'20171731','V','171863852','JOSE GREGORIO DONADO PINEDA','Inv. JOSMARI DE JOSE GREGORIO DONADO PINEDA, F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(58,'20172455','V','204804008','JOSE GREGORIO PEDRAZA SANCHEZ','JR MOTOS',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(59,'20172309','V','151846323','JOSE LUIS MEDINA SUAREZ','MOTO REPUESTO ZAMIRA',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(60,'20172069','V','026295236','JUAN DE JESUS HERNANDEZ USECHAS','VARIEDADES BETIJOQUE JUAN HERNANDEZ , F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,1,1,0),(61,'20172332','V','135923415','LEICE GRANADOS SANTAFE','BICIMOTOS ADRIAN',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,6,1,0),(62,'20172220','V','056886598','LIA IRAIMA DE LA CONSOLACION GUERRERO GARCIA','FERRE REPUESTOS EL POLI',NULL,NULL,'2023-01-06','EDO TACHIRA CALLE 6 CASA NRO 2-16 BARRIO EL CENTRO CAPACHO NUEVO ','0424-7816962','guerreroluis8558@gmail.com ',0,NULL,2,1,0),(63,'20171667','V','127556390','LIAM MOTOS, C.A','MARIA C. OTERO R',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(64,'20170821','V','139173941','LILIANA YANETH GELVEZ','TALLER TECNIMOTOS',NULL,NULL,'2023-01-06','CALLE 4 CON CARRERA 9,CASA Nº 9-4 SECTOR  FRENTE AL ESTADIO DE FUTBOL  LA FRIA EDO TACHIRA','0277-5411036 / 0414-7386848 ','liliana_01_02@hotmail.com',0,NULL,2,1,0),(65,'20172493','V','229822191','LIZANDRO ROJAS NIÑO','CICLO MOTO LA PEDRERA / INVERSIONES ROJAS SHEYL',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(66,'20172225','V','109554690','LUGO JOSE FERNANDEZ PEREZ','INVERSIONES LARA LLANOS FERNANDEZ',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(67,'20172290','V','081019637','LUIS ADRUBAL ZAMBRANO COLMENARES',NULL,NULL,NULL,'2023-01-06','EDO TACHIRA MICHELENA CARRERA 2 CALLE 11 DETRAS DEL CEMENTERIO MUNICIPAL ','0414-7533789','LUISASDRUBAL@GMAIL.COM ',0,NULL,6,1,0),(68,'20172385','V','167798604','LUIS ARGENIS SANCHEZ VILLAMIZAR','MOTO REPUESTOS BREYSAN SANCHEZ',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,6,1,0),(69,'20172158','V','056719233','LUIS HORACIO DELGADO MORENO',NULL,NULL,NULL,'2023-01-06','EDO TACHIRA CARRERA 6 ENTRE CALLE 8 Y 9 BIS CASA 8-65 ,TARIBA DIAGONAL CAPILLA CEMENTERIIO MUNICIPAL ','0424-7724332 /027-63947712','',0,NULL,6,1,0),(70,'20172319','J','412649973','MOTO PARTS EGO CA','MOTO PARTS EGO CA',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(71,'20172189','J','400643945','MOTO REPUESTOS JP',NULL,NULL,NULL,'2023-01-06','EDO TACHIRA TARIBA CARRERA 1 NRO 7-73 ENTRE CALLE 7 ','0424-7545594','mmotorepuestosjpca@yahoo.com.ve',0,NULL,2,1,0),(72,'20172039','J','404092404','MOTO REPUESTOS TARIBA , C.A ',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,4,1,0),(73,'20171173','V','194634745','MOTO REPUESTOS W. PEDRAZA','WILMER JESUS PEDRAZA SANCHEZ',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,8,1,0),(74,'20171177','J','406005290','MOTO REPUESTOS Y MULTISERVICIOS ABRAHAM C.A.',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(75,'20172151','V','142824112','NEIVER OSMEL DURAN','MULTISERVICIO OSMEL NOD',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,7,1,0),(76,'20170057','V','091499998','NELLY COROMOTO VEZGA SANCHEZ','SUPERMOTOS VENEZUELA',NULL,NULL,'2023-01-06','AV. PROLONGACION 5TA NRO 7-43 SECTOR LA CONCORDIA EDO TACHIRA','04145241282','NELLY@HOTMAI.COM',0,NULL,2,1,0),(77,'20171257','V','178878634','NERY ALBERTO PEREZ MEDINA','PIPE MOTOS LA FRIA',NULL,NULL,'2023-01-06','CARRETERA 8 ENTRE VIA PANAMERICANA Y CALLE 1 LA FRIA EDO TACHIRA','0414-726-0248','',0,NULL,5,1,0),(78,'20172317','V','128255024','NOGLIS SULEY PINEDA SANCHEZ','MOTO PINEDA, F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,6,1,0),(79,'20172424','V','248549234','ORLANDO MARTINEZ MEJIAS','MOTO REPUESTOS Y ACCESORIOS ORCHET',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(80,'20170214','V','130389038','OVIDIO ANTONIO RUIZ ROA',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(81,'20172206','E','822357370','PABLO ROBINSON CONTRERAS REY','MULTISERVICIOS RR CONTRERAS',NULL,NULL,'2023-01-06','EDO TACHIRA CALLE CASCARAL CASA NRO S/N SECTOR BARITALIA BRAMON','0424-7163013','PABLOCONTRERASREY@GMAIL.COM',0,NULL,2,1,0),(82,'20170191','V','158564951','R.J. BIMOTORS',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(83,'20172329','V','171851005','RAULINSON ALONSO ACEVEDO QUINTERO','INVERSIONES NOELIA DE RAULINSON ACEVEDO',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(84,'20170197','V','312885742','REPRESENTACIONES BATHAJO COMPAÑIA ANONIMA',NULL,NULL,NULL,'2023-01-06','8VA AVENIDA DE LA CONCORDIA NRO 7-312 LA CONCORDIA EDO TACHIRA','0276-3466984 ','bathajo@hotmail.com',0,NULL,2,1,0),(85,'20172270','J','406712426','REPUESTOS ACCESORIOS JEAN CARS, C.A.','REPUESTOS Y ACCESORIOS JEAN CARS, C.A.',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(86,'20171655','J','297256105','REPUESTOS ORLANDOMOTOS C.A',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(87,'20172464','J','501130280','REPUESTOS Y SERVICIOS ARCANGELES, C.A.','REPUESTOS Y SERVICIOS ARCANGELES, C.A.',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(88,'20171426','V','286294592','RUBEN DARIO GARCIA CORREA','INDUSTRIA GARCO',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,1,1,0),(89,'20171589','V','017057029','SURTIDORA EL LABERINTO',NULL,NULL,NULL,'2023-01-06','SAN JUAN DE COLON , CALLE 1 #1-52 , ESTADO TACHIRA ','0424-5770393 /0276-3468462 /0414-7105495','',0,NULL,4,1,0),(90,'20172245','J','400487102','TREBOL MOTOS , C.A ',NULL,NULL,NULL,'2023-01-06','EDO MERIDA AV 16 CON CALLE 10 EDIF LA PALMA PISO P/B PISO PLANTA BAJ LOCAL 03 SECTOR SAN ISIDRO EL VIGIA ','0414-7276012','',0,NULL,2,1,0),(91,'20172448','V','129725440','TRINA LIZBEL SANCHEZ','INVERSIONES K. SANCHEZ',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,6,1,0),(92,'20170218','V','128906238','VICTOR RICARDO ESCALANTE','MOTO REPUESTOS PITOCHO',NULL,NULL,'2023-01-06','AVENIDA PRINCIPAL CASA S/N URB EL CALLEJON ALDEAANGOSTURA VIA LAGRITA EDO TACHIRA','0414-0361684 ','riescon@hotmail.com',0,NULL,7,1,0),(93,'20172254','V','162810886','WILBUR ORVILLE ARELLANO ROJAS',NULL,NULL,NULL,'2023-01-06','EDO TACHIRA CALLE CON ESQUINA CARRERA 8 CASA NRO S/N SECTOR CASCO CENTRAL LA FRIA ','0414-1754595','wilburarellano@gmail.com',0,NULL,5,1,0),(94,'20170855','V','128462500','WILMER E. AGUILAR PINEDA','MOTOPARTES LOS HERMANOS',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,7,1,0),(95,'20172344','V','165406223','YANIS ALEJANDRO SANCHEZ VARGAS ',NULL,NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,6,1,0),(96,'20172437','E','843457897','YANQING ZHENG','ZHENG REPUESTOS M-V, F.P',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,3,1,0),(97,'20171429','V','156850752','YHON C. SERRANO Q.','TECNI MOTOS Y ACCESORIOS LA FRIA',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,5,1,0),(98,'20172198','V','170282090','YIMMY LEANDRO RUJANO RAMIREZ','MOTO REPUESTOS YMK RUJANO',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(99,'20172246','V','170282090','YIMMY RUJANO ',NULL,NULL,NULL,'2023-01-06','EDO MERIDA ENTRADA AL TERMINAK DE PASAJEROS FRENTE AL MERCADO CAMPESINO AL LADO DE LA POLLERA JAUREGUI TOVAR ','0416-9791315','YLRR0805@GMAIL.COM',0,NULL,2,1,0),(100,'20172318','V','191650120','YOON JAIRO MORENO','MOTOS YM',NULL,NULL,'2023-01-06',NULL,NULL,NULL,0,NULL,2,1,0),(101,'20172205','V','201237005','YULIA ZOLVEIRA MENDOZA QUIÑONEZ','TECNO MOTOS Y LUBRICANTES ALBERTH SNEYDER',NULL,NULL,'2023-01-06','EDO TACHIRA NARANJALES CALLE PRINCIPAL VIA EL NULA CERCA DEL INSAI ','0426-1728588','YULIAMENDOZA75@GMAIL.COM',0,NULL,8,1,0),(102,'20172244','V','125804370','ZEDEQUIAS CASTELLANOS PICO','CICLO REPUESTOS DREICAR',NULL,NULL,'2023-01-06','EDO APURE  AV MIRANDA CASA NRO S/N SECTOR GAMERO GUASDUALITO ','0412-6676622','CICLOREPUESTOSDREICAR@HOTMAIL.COM ',0,NULL,8,1,0),(103,'20171167','V','226366683','FARMA MOTO SDJ','OSCAR E. SANTIAGO M.','','','2022-12-06','CALLE 4 ENTRE CARRERAS 10 Y 11 LOCAL N° 10-84 SECTOR CENTRO LA FRIA EDO. TACHIRA','0426-1399314 ','luzmarymandon@gmail.com',0,NULL,1,1,0),(104,'20171422','J','405518405','EL BETO´C MULTISERVICIOS, C.A','','','','2022-12-06','EL LLANITO VIA CAPACHO KILOMETRO 8 ESTADO TACHIRA','0276-788-6732 ','',0,NULL,1,1,0),(105,'20171423','V','215701405','FRANCY E. MANDON T.','MOTO REPUESTOS MANDON','','','2022-12-06','CARRERA 11 ENTRE CALLE 5 Y 6 NRO 5-31 LA FRIA, TACHIRA','0424-7429318 ','francy_mandon@hotmail.com',0,NULL,1,1,0),(106,'20171517','V','156406593','KEYLA E. GARCIA','MOTO REPUESTOS COLON','','','2022-12-06','CALLE 6, LOCAL 6-36 CASCO CENTRAL COLON, EDO TACHIRA','0277-2910969 ','josealbertoperniavalderrama@gmail.com',0,NULL,1,1,0),(107,'20171579','V','147904831','JOSE FELIX ZAMBRANO GARCIA','','','','2022-12-06','CARRERA 5 ENTRE CALLE 3 Y 2 CASA NRO 2-64 MICHELENA ESTADO TACHIRA',' 0414-3791872 / 0414-1752677','carnicos_80@hotmail.com',0,NULL,1,1,0),(108,'20171601','V','178181960','FRANCISCO A. JAIMEZ C.','MOTO REPUESTOS DANNA JAIMEZ','','','2022-12-06','CALLE 9, CASA # 5-12, SECTOR BARRIO LAS FLORES , UREÑA EDO TACHIRA','04141498018','',0,NULL,1,1,0),(109,'20171636','V','237093115','MOTO REPUESTOS RIOS MG','YULANNY I. RIOS MANDON','','','2022-12-06','CALLE BOLIVAR ENTRE CARRERA GENERAL SALOM Y PIAR, N°3, EDO APURE AL LADO FERRETERIA EL PADRINO','0414-5832506','',0,NULL,1,2,0),(110,'20171694','V','253758208','ISRRAEL MOLINA MARQUEZ','INVERSIONES MOLINA MM','','','2022-12-06','CALLE PRINCIPAL SECTOR CIUDAD PEDREA. LA PEDRERA . TACHIRA','0414-7515016','MOLINAMARY475@GMAIL.COM',0,NULL,1,1,0),(111,'20171704','V','70848124','MOTO GARCIA F.P.','FRANKI LARRY URBINA VIÑA','','','2022-12-06','CTRA PANAMERICANA LOCAL NRO 38 URB LUCATEBAL, PARTE BAJA COLON, EDO TACHIRA','0424-7458547 / 0414-7224704','yohavanegar@gmail.com',0,NULL,1,1,0),(112,'20171744','J','413192446','BERACA MOTOS LF','BERACA MOTOS LF, C.A','','','2022-12-06','CALLE 2 FRENTA A LLAMA BOLIVARIANA, LA FRIA EDO TACHIRA','04121732664','',0,NULL,1,1,0),(113,'20171783','V','198656085','DIEGO J. VELASQUEZ S.','INV. MOTO REPUESTOS DIMAR DIEGO VELAZQUEZ','','','2022-12-06','CALLE SUCRE CON CARRERA SIMON RODRIGUEZ. DIAGONAL AL SAIME, GUASDALITO ESTADO APURE ','0414-3719012/ 0416-3795142','',0,NULL,1,2,0),(114,'20172070','V','197684808','FRANCO PAOLO CHACON VALERO','LUBRIMOTORS AND BIKES FRANCO JR','','','2022-12-06','EDO TACHIRA  AV SUCRE CALLE 8 LOCAL NRO S/N SECTOR CAMPO DEPORTIVO CORDERO ','0414-7115279 ','',0,NULL,1,1,0),(115,'20172072','V','137080016','FREDDY OLMEDO CUADROS MURILLO','CASA MOTO 5TA AVENIDA','','','2022-12-06','EDO TACHIRA  PROLONGACION 5TA AV. N.7-8 LA CONCORDIA ','0276-3462894/0424-7179819','',0,NULL,1,1,0),(116,'20172274','V','193591708','JORGE LUIS GUERRERO CONTRERAS','TOMOCAR`S J.G., F.P.','','','2022-12-06','EDO. TACHIRA CR CARRETERA 5 CALLE 13 Y 14 CASA NRO 13-33 CONJUNTO RESIDENCIAL SUCRE SANTA ANA DEL TACHIRA','0424-7737246','jorgelgcontreras2401@gmail.com',0,NULL,1,1,0),(117,'20172519','V','173682359','NEDDER WINDER SANABRIA DUARTE','MOTO WINDER FP','','','2022-12-06','CALLE RICAURTE CASA NRO 0-52 SECTOR LA BOMBA EL COBRE EDO TACHIRA','04140786674','WINDER@HOTMAIL.COM',0,NULL,2,1,0),(118,'20172548','J','410288728','BUCARE MOTOS C.A','BUCARE MOTOS C.A','','','2022-12-06','EDO TACHIRA CALLE 6 CASA NRO 5-66 URB. EL PINAR RUBIO','04247251721','JOHASELYN@GMAIL.COM',0,NULL,1,1,0),(119,'11491975','V','11491975','WILLIAM VELASQUEZ','WAV','','','1972-04-29','PIRINEOS II VEREDA 4 CASA NRO 19','0414723521','WAVM290472@GMAIL.COM',0,'AAA',1,1,0),(120,'13146530','V','13146530','MARLENY','MARLENY','','','1977-12-18','PIRINEOS','04147105006','MARLENY@GMAIL.COM',0,'ZONA',4,1,0),(121,'12632635','V','12632635','JACKSON ALVAREZ','JACKSON','','','1977-10-31','SANTA ANA','04147105006','JACKSON@GMAIL.COM',0,'ZONA',2,1,0),(122,'29445325-2','J','29445325','WENDY CORRECAMINOS','CORRECAMINOS','','','2000-01-01','LA DIRECCION','04147105006','CUALQUIEREA@GMAIL.COM',0,'',6,1,0),(123,'9241616','V','9241616','DELIA ROJAS','DELIA ROJAS','','','2003-06-06','SAN CRISTOBAL','04147105006','MARLENY@GMAIL.COM',0,'UBICACION',2,1,0),(124,'11491900','V','11491900','CENTRAL MOTOS JAICAR, C.A','JAICAR','','','2017-07-06','P','0417235521','CUALQUIEREA@GMAIL.COM',0,'**',1,4,0),(125,'13146500','V','13146500','EDIKSON ENRIQUE DUQUE GUERRERO','EDIKSON','','','2017-07-06','PIRINEOS','04147235521','CUALQUIEREA@GMAIL.COM',0,'**',1,5,0),(126,'1314653','V','13146531','EDIKSON ENRIQUE','EDIKSON','','','2024-01-01','LA FRIA','04147235521','CUALQUIEREA@GMAIL.COM',0,'LDJALDFAKLSDF',1,5,0),(127,'C0001-0001','V','111111111','HENRY ALCIDES','HENRY','','','2017-07-06','SAN CRISTOBAL','04147235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(128,'C0001-0002','V','13146520','AJV','AJV','','','2017-07-06','SC','04147235521','CUALQUIEREA@GMAIL.COM',0,'ZONA',8,1,0),(129,'C0001-0003','V','13146540','JUAN ','JUAN SAN ANTONIO','','','2017-07-06','SC','04147235521','CUALQUIEREA@GMAIL.COM',0,'ZONA',8,1,0),(130,'C0001-0004','V','13146550','FABIO PINTO','CONEJO','','','2017-07-06','SC','04147235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(131,'C0001-0005','V','13143560','OVALLES','OVALLES','','','2017-07-06','SC','04147235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(132,'C0001-0007','V','13146580','BELKIS SANGIUINO','BELKIS','','','2017-07-06','SC','0417235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(133,'C0001-0010','V','13146600','LUIS ANGEL','LUIS ANGEL','','','2017-07-06','SC','0417235521','WAVM290472@GMAIL.COM',0,'ZON',8,1,0),(134,'C0001-0012','V','17812109','LISETH BALLEN','LISETH','','','2017-07-06','CONCORDIA','0414723552','WAVM290472@GMAIL.COM',0,'ZONA|',8,1,0),(135,'C0001-0015','V','13146400','FREDY VILLAMIZAR','PELO','','','2017-07-06','SC','0417235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(136,'C0001-0016','V','13146501','JOSE ROA','JOSE ROA','','','2017-07-06','SC','04147235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(137,'C0001-0018','V','13146300','YEISON DANIEL ALVIAREZ BETANCOURT ','MOTO REPUESTOS','','','2017-07-06','SC','0414723521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(138,'C0001-0020','V','13146401','JHON TARRA','TARRA','','','2017-07-06','SC','0417235521','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(139,'C0001-0025','V','13146100','WALTER HOME','W H','','','2017-07-06','SC','0417235521','WAVM290472@GMAIL.COM',0,'ZO',8,1,0),(140,'C0001-0030','V','13146301','JOSE ALFREDO','JOSE ALFREDO','','','2017-07-06','SC','+58 424-7531378','WAVM290472@GMAIL.COM',0,'ZONA',8,1,0),(141,'C0001-0031','V','13146031','ANDRES ELOY FIGUEROA PACHECO ( REPUESTOS FIGUEROA)','FIGUEROA','','','2017-07-06','SC','04147235521','CUALQUIEREA@GMAIL.COM',0,'ZONA',1,1,0),(142,'C0001-0033','V','13146302','DOUGLAS JOSE MEDINA DUQUE','DOUGLAS MEDINA','','','2017-07-06','SC','04147235521','CUALQUIEREA@GMAIL.COM',0,'ZONA',1,1,0),(143,'C0001-0034','V','13146201','CARLOS TEODULFO GRANADOS MONSALVE ','TEODULFO','','','2017-07-06','SC','0414723521','CUALQUIEREA@GMAIL.COM',0,'UBICACION',1,1,0),(144,'C0001-0036','V','1314200','DELWIN JOSE DIMAS LABARCA','DELWIN','','','2017-07-06','SC','0414723521','WAVM290472@GMAIL.COM',1,'ZONA',1,1,0),(145,'C0001-0037','V','13146102','RITA HERNANDEZ','MTO ARAGUA','','','2016-07-09','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',6,1,0),(146,'C0001-0045','V','13146151','GERSON JAVIER MORALES QUINTERO','GERSON EL COBRE','','','2017-07-06','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',1,1,0),(147,'C0001-0046','V','13146146','POLI CAPACHO','POLI','','','2017-07-06','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',1,1,0),(148,'C0001-0047','V','13146147','SERGIO PEREZ','SERGIO LA FRIA','','','2017-07-06','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',1,1,0),(149,'C0001-0048','V','13146148','WILFREN MARTINEZ','WILFREN MONTES','','','2017-07-06','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',1,1,0),(150,'C0001-0049','V','13146149','JESUS MORA','PANITA','','','2017-07-06','SC','0414-7235521','WAVM2904@HOTMAIL.COM',0,'UBICACION',1,1,0),(151,'076491263','V','76491263','RAMON MARQUINA DUGARTE','RAMON MARQUINA EL MILAGRO','','','2024-08-26','CALLE PRINCIPAL CASRA NRO SN BARRIO EL PORVENIR EL MILAGRO EDO TACHIRA','04147086909','',0,'',3,1,0),(152,'12491418-0','V','12491418','MULTISERVICIOS Y REPUESTOS LIDER DE EDGAR ALFREDO ','EL LIDER','','','2024-01-01','LA GRITA EDO TACHIRA CALLE 3 N° 2-69 STOR. EL SURURAL','0277-8815836 / 0414-7408205','',0,'',2,1,0),(153,'21637169-7','V','21637169','JAIRO JOSE ROJAS DUQUE ','JAIRO JOSE ROJAS DUQUE ','','','2024-01-01','CR 15 ENTRE CALLES 3 Y 4 CASA S/N SECTOR EL TOPON  SAN JOSE DE BOLIVAR QUENIQUEA TACHIRA','0414-3748443','',0,'',2,1,0),(154,'18019865-0','V','18019865','MOTO LUIS PILLO ','MOTO LUIS PILLO ','','','2024-01-01','LA GRITA','0414-7465665','',0,'',2,1,0),(155,'27398252-0','V','27398252','YORVIS MOISES ROMERO ROMERO','YORVIS MOISES ROMERO ROMERO','','','2024-01-01','CALLE 1 CON CARRERA 3 CASA N° 04-42 SECTOR EL AÑIL PARROQUIA TOVAR','0426-4766222','',0,'',1,3,0),(156,'20172332','V','13592341','LEICE GRANADO SANTAFE / BICIMOTOS ADRIAN','LEICE GRANADO SANTAFE / BICIMOTOS ADRIAN','','','1975-04-28','CALLE PRINCIPAL AV CIRILO AGELVIS CASA S/N SECTOR CENTRO EL NULA','0412-7078288','',0,'',6,2,0),(157,'999888777','V','13146500','NICOL AMARIS','NICOL',NULL,NULL,'1975-04-29','CALLE PRINCIPAL AV CIRILO AGELVIS CASA S/N SECTOR CENTRO EL NULA','0412-7078288','WAVM2904@HOTMAIL.COM',0,NULL,6,2,0),(160,'C0001-0050','V','11222014-2','MARIA YNMACULADA GUERRERO (CAR\'S MOT\'S MG,F.P)','MARIA','','','2024-01-01','MERIDA','0416-282-2541','WAVM2904@HOTMAIL.COM',0,'',8,3,0),(161,'20172410','V','24694454-3','JONATHAN CHACON SANCHEZ','JONATHAN','','','2024-01-01','EDO. TACHIRA CALLE 9 LOCAL S/N BARRIO 12 DE OCTUBRE PUERTO TETEO NARANJALES','0412-044-9037','WAVM2904@HOTMAIL.COM',0,'',6,1,0);
/*!40000 ALTER TABLE `tbl_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente_copy`
--

DROP TABLE IF EXISTS `tbl_cliente_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente_copy` (
  `clien_ide` int(11) NOT NULL AUTO_INCREMENT,
  `clien_codigo` varchar(16) DEFAULT '' COMMENT 'Codigo Interno del Cliente',
  `clien_tipcli` varchar(2) DEFAULT NULL COMMENT 'Tipo de Cliente: (V) Venezolano, (E) Extrangero, (J) Juridico, (G) Gubernamental',
  `clien_numiden` int(11) DEFAULT NULL COMMENT 'Número de identificación (Cédula) o (RIF)',
  `clien_nombre1` varchar(255) DEFAULT NULL COMMENT 'Primer nombre',
  `clien_nombre2` varchar(50) DEFAULT NULL COMMENT 'Segundo nombre',
  `clien_apelli1` varchar(50) DEFAULT NULL COMMENT 'Primer apellido',
  `clien_apelli2` varchar(50) DEFAULT NULL COMMENT 'Segundo apellido',
  `clien_fecnaci` date DEFAULT '2017-01-01' COMMENT 'Fecha de nacimiento',
  `clien_direcci` varchar(255) DEFAULT NULL COMMENT 'Dirección especifica',
  `clien_telmovi` varchar(64) DEFAULT '' COMMENT 'Número de celular',
  `clien_correo` varchar(100) DEFAULT NULL COMMENT 'Correo electrónico',
  `clien_contriespec` int(11) DEFAULT 0 COMMENT 'Contribuyente Especial SI=1, NO=0',
  `clien_ubimap` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Contiene el Iframe de Google Map para Ubicar al Cliente en el Mapa',
  `clien_vendedor` int(11) DEFAULT NULL,
  `clien_zona` int(11) DEFAULT NULL,
  `clien_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`clien_ide`),
  KEY `clien_tipcli` (`clien_tipcli`),
  CONSTRAINT `tbl_cliente_copy_ibfk_1` FOREIGN KEY (`clien_tipcli`) REFERENCES `tbl_tipcli` (`tipcli_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='Información de los clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente_copy`
--

LOCK TABLES `tbl_cliente_copy` WRITE;
/*!40000 ALTER TABLE `tbl_cliente_copy` DISABLE KEYS */;
INSERT INTO `tbl_cliente_copy` VALUES (1,'20171783','V',198656085,'DIEGO J. VELASQUEZ S.','INV. MOTO REPUESTOS DIMAR DIEGO VELAZQUEZ','','','2022-12-06','CALLE SUCRE CON CARRERA SIMON RODRIGUEZ. DIAGONAL AL SAIME, GUASDALITO ESTADO APURE ','0414-3719012/ 0416-3795142','',0,'ojo con este no aparece',1,2,0),(2,'20171637','V',210023794,'INVERSIONES A.R.K 10','YOSMIR A. NUÑEZ T.','','','2017-01-01','CALLE BOLIVAR ENTRE CARRERA SIMON RODRIGUEZ Y NARIÑO, SECTOR CENTRO GUASDALITO, EDO APURE','0414-3716189','arcangelnunez45@gmail.com',0,'',1,2,0),(3,'20171635','V',236445131,'INVERSIONES MOTO RESPUESTOS PARMAN','MILDRED DEL CARMEN MANDON','','','2017-01-01','CARRERA URDANETA ENTRE CALLE CEDEÑO Y SUCRE, SECTOR CENTRO, GUASDALITO, EDO APURE','0424-4418335','',0,'',1,2,0),(4,'20171636','V',237093115,'MOTO REPUESTOS RIOS MG','YULANNY I. RIOS MANDON','','','2022-12-06','CALLE BOLIVAR ENTRE CARRERA GENERAL SALOM Y PIAR, N°3, EDO APURE AL LADO FERRETERIA EL PADRINO','0414-5832506','',0,'ojo con este no aparece',1,2,0),(5,'20172244','V',125804370,'ZEDEQUIAS CASTELLANOS PICO','CICLO REPUESTOS DREICAR','','','2017-01-01','EDO APURE  AV MIRANDA CASA NRO S/N SECTOR GAMERO GUASDUALITO ','0412-6676622','CICLOREPUESTOSDREICAR@HOTMAIL.COM ',0,'',1,2,0),(6,'20171744','J',413192446,'BERACA MOTOS LF','BERACA MOTOS LF, C.A','','','2022-12-06','CALLE 2 FRENTA A LLAMA BOLIVARIANA, LA FRIA EDO TACHIRA','04121732664','',0,'ojo con este no aparece',1,1,0),(7,'20172245','J',400487102,'TREBOL MOTOS, C.A ','','','','2017-01-01','EDO MERIDA AV 16 CON CALLE 10 EDIF LA PALMA PISO P/B PISO PLANTA BAJ LOCAL 03 SECTOR SAN ISIDRO EL VIGIA ','0414-7276012','',0,'',1,3,0),(8,'20172246','V',170282090,'YIMMY RUJANO ','','','','2017-01-01','EDO MERIDA ENTRADA AL TERMINAK DE PASAJEROS FRENTE AL MERCADO CAMPESINO AL LADO DE LA POLLERA JAUREGUI TOVAR ','0416-9791315','YLRR0805@GMAIL.COM',0,'',1,3,0),(9,'20172071','V',174974752,'ANDRES DAVID VARGAS MINORTA','GLOBAL IMPORT VARGAS','','','2017-01-01','EDO TACHIRA  RUBIO CALLE 17 . AV 14 LOCAL S/N SECOR SAN DIEGO A 100 METROS DEL PUENTE SAN DIEGO ','0424-2877255','',0,'',1,1,0),(10,'20172548','J',410288728,'BUCARE MOTOS C.A','BUCARE MOTOS C.A','','','2022-12-06','EDO TACHIRA CALLE 6 CASA NRO 5-66 URB. EL PINAR RUBIO','04247251721','JOHASELYN@GMAIL.COM',0,'ojo con este no aparece',1,1,0),(11,'20172239','V',195823770,'CLARA LINYIN MENDOZA CHACON','DISTRIBUIDORA MULTIPARTES MENDOZA, F.P.','','','2017-01-01','EDO TACHIRA CR CARRERA 4 CON CALLE 8 Y 9 CASA NRO 8-47 SECTOR CENTRO SAN CRISTOBAL ','0414-7486877','KLAYIN2803@GMAIL.COM',0,'',1,1,0),(12,'20171979','J',500882300,'COMERCIALIZADORA Y DISTRIBUIDORA HCH C.A ','','','','2017-01-01','PROLOGACION DE LA 5TA AV CASA N 7-291 FRENTE A MINFRA LA CONCORDIAL SAN CRISTOBAL EDO TACHIRA ','0426-17125596 /0276-3476856','CODISTHCH@GMAIL.COM ',0,'',1,1,0),(13,'20171412','V',226416842,'EDUARDO CACERES RAQUEJO','','','','2017-01-01','CALLE 1, VIA LA MORITA CASA S/N SECTOR EL PIÑAL, SAN RAFAEL DEL PIÑAL, EDO TACHIRA','0412-2994957 ','',0,'',1,1,0),(14,'20171422','J',405518405,'EL BETO´C MULTISERVICIOS, C.A','','','','2022-12-06','EL LLANITO VIA CAPACHO KILOMETRO 8 ESTADO TACHIRA','0276-788-6732 ','',0,'ojo con este no aparece',1,1,0),(15,'20171167','V',226366683,'FARMA MOTO SDJ','OSCAR E. SANTIAGO M.','','','2022-12-06','CALLE 4 ENTRE CARRERAS 10 Y 11 LOCAL N° 10-84 SECTOR CENTRO LA FRIA EDO. TACHIRA','0426-1399314 ','luzmarymandon@gmail.com',0,'ojo con este no aparece',1,1,0),(16,'20171601','V',178181960,'FRANCISCO A. JAIMEZ C.','MOTO REPUESTOS DANNA JAIMEZ','','','2022-12-06','CALLE 9, CASA # 5-12, SECTOR BARRIO LAS FLORES , UREÑA EDO TACHIRA','04141498018','',0,'ojo con este no aparece',1,1,0),(17,'20172070','V',197684808,'FRANCO PAOLO CHACON VALERO','LUBRIMOTORS AND BIKES FRANCO JR','','','2022-12-06','EDO TACHIRA  AV SUCRE CALLE 8 LOCAL NRO S/N SECTOR CAMPO DEPORTIVO CORDERO ','0414-7115279 ','',0,'ojo con este no aparece',1,1,0),(18,'20171423','V',215701405,'FRANCY E. MANDON T.','MOTO REPUESTOS MANDON','','','2022-12-06','CARRERA 11 ENTRE CALLE 5 Y 6 NRO 5-31 LA FRIA, TACHIRA','0424-7429318 ','francy_mandon@hotmail.com',0,'ojo con este no aparece',1,1,0),(19,'20172072','V',137080016,'FREDDY OLMEDO CUADROS MURILLO','CASA MOTO 5TA AVENIDA','','','2022-12-06','EDO TACHIRA  PROLONGACION 5TA AV. N.7-8 LA CONCORDIA ','0276-3462894/0424-7179819','',0,'ojo con este no aparece',1,1,0),(20,'20171932','J',411661880,'INVERSIONES DILCARS C.A','','','','2017-01-01','CALLE 7 CASA NRO 3-72 SECTOR TELARES DEL TACHIRA SAN CRISTOBAL EDO TACHIRA','0424-7278855','',0,'',1,1,0),(21,'20172119','V',296497300,'ISAAC DAVID RAMIREZ MANRIQUE','','','','2017-01-01','EDO TACHIRA CALLE 6 ENTRE CRR 4Y5 LA CONCORDIA BAJANDO DE LA ANADERIA ','0424-7018422','JEDAMOTORS.SC@GMAIL.COM',0,'',1,1,0),(22,'20171694','V',253758208,'ISRRAEL MOLINA MARQUEZ','INVERSIONES MOLINA MM','','','2022-12-06','CALLE PRINCIPAL SECTOR CIUDAD PEDREA. LA PEDRERA . TACHIRA','0414-7515016','MOLINAMARY475@GMAIL.COM',0,'ojo con este no aparece',1,1,0),(23,'20171821','V',201235363,'JESUS A. JAIMES R.','INVERSIONES JAIPIC MOTOR\'S, F.P','','','2017-01-01','CARRETERA TRONCAL 5, VIA EL LLANO, EDO TACHIRA','0414-7097638 / 0276-7640111','romero_9mm@hotmail.com',0,'',1,1,0),(24,'20172274','V',193591708,'JORGE LUIS GUERRERO CONTRERAS','TOMOCAR`S J.G., F.P.','','','2022-12-06','EDO. TACHIRA CR CARRETERA 5 CALLE 13 Y 14 CASA NRO 13-33 CONJUNTO RESIDENCIAL SUCRE SANTA ANA DEL TACHIRA','0424-7737246','jorgelgcontreras2401@gmail.com',0,'ojo con este no aparece',1,1,0),(25,'20171536','V',119757572,'JOSE A. PINEDA F.','SERVI-MOTOS BETO','','','2017-01-01','CALLE 4 ENTRE CARRERA 13 Y 14, N°12-32 SAN JUAN DE COLON EDO. TACHIRA','0414-7174491 ','',0,'',1,1,0),(26,'20172282','V',174662335,'JOSE DEL CARMEN GARCIA DELGADO','COMERCIALIZADORA JADA FRONT 2021, F.P','','','2017-01-01','EDO TACHIRA  CR 12 CON CALLE 10 EDIF SAN DIEGO LOCL NRO 2 BARRIO SIMON BOLIVAR SAN ANTONIO ','0424-7129199','jsgar85@gmail.com',0,'',1,1,0),(27,'20171579','V',147904831,'JOSE FELIX ZAMBRANO GARCIA','','','','2022-12-06','CARRERA 5 ENTRE CALLE 3 Y 2 CASA NRO 2-64 MICHELENA ESTADO TACHIRA',' 0414-3791872 / 0414-1752677','carnicos_80@hotmail.com',0,'ojo con este no aparece',1,1,0),(28,'20171517','V',156406593,'KEYLA E. GARCIA','MOTO REPUESTOS COLON','','','2022-12-06','CALLE 6, LOCAL 6-36 CASCO CENTRAL COLON, EDO TACHIRA','0277-2910969 ','josealbertoperniavalderrama@gmail.com',0,'ojo con este no aparece',1,1,0),(29,'20172220','V',56886598,'LIA IRAIMA DE LA CONSOLACION GUERRERO GARCIA','FERRE REPUESTOS EL POLI','','','2017-01-01','EDO TACHIRA CALLE 6 CASA NRO 2-16 BARRIO EL CENTRO CAPACHO NUEVO ','0424-7816962','guerreroluis8558@gmail.com ',0,'',1,1,0),(30,'20170821','V',139173941,'LILIANA YANETH GELVEZ','TALLER TECNIMOTOS','','','2017-01-01','CALLE 4 CON CARRERA 9,CASA Nº 9-4 SECTOR  FRENTE AL ESTADIO DE FUTBOL  LA FRIA EDO TACHIRA','0277-5411036 / 0414-7386848 ','liliana_01_02@hotmail.com',0,'',1,1,0),(31,'20172290','V',81019637,'LUIS ADRUBAL ZAMBRANO COLMENARES','','','','2017-01-01','EDO TACHIRA MICHELENA CARRERA 2 CALLE 11 DETRAS DEL CEMENTERIO MUNICIPAL ','0414-7533789','LUISASDRUBAL@GMAIL.COM ',0,'',1,1,0),(32,'20172158','V',56719233,'LUIS HORACIO DELGADO MORENO','','','','2017-01-01','EDO TACHIRA CARRERA 6 ENTRE CALLE 8 Y 9 BIS CASA 8-65 ,TARIBA DIAGONAL CAPILLA CEMENTERIIO MUNICIPAL ','0424-7724332 /027-63947712','',0,'',1,1,0),(33,'20171704','V',70848124,'MOTO GARCIA F.P.','FRANKI LARRY URBINA VIÑA','','','2022-12-06','CTRA PANAMERICANA LOCAL NRO 38 URB LUCATEBAL, PARTE BAJA COLON, EDO TACHIRA','0424-7458547 / 0414-7224704','yohavanegar@gmail.com',0,'ojo con este no aparece',1,1,0),(34,'20172189','J',400643945,'MOTO REPUESTOS JP','','','','2017-01-01','EDO TACHIRA TARIBA CARRERA 1 NRO 7-73 ENTRE CALLE 7 ','0424-7545594','mmotorepuestosjpca@yahoo.com.ve',0,'',1,1,0),(35,'20171257','V',178878634,'NERY ALBERTO PEREZ MEDINA','PIPE MOTOS LA FRIA','','','2017-01-01','CARRETERA 8 ENTRE VIA PANAMERICANA Y CALLE 1 LA FRIA EDO TACHIRA','0414-726-0248','',0,'',1,1,0),(36,'20172206','E',822357370,'PABLO ROBINSON CONTRERAS REY','MULTISERVICIOS RR CONTRERAS','','','2017-01-01','EDO TACHIRA CALLE CASCARAL CASA NRO S/N SECTOR BARITALIA BRAMON','0424-7163013','PABLOCONTRERASREY@GMAIL.COM',0,'',1,1,0),(37,'20170197','J',312885742,'REPRESENTACIONES BATHAJO COMPAÑIA ANONIMA','','','','2017-01-01','8VA AVENIDA DE LA CONCORDIA NRO 7-312 LA CONCORDIA EDO TACHIRA','0276-3466984 ','bathajo@hotmail.com',0,'',1,1,0),(38,'20171589','V',17057029,'SURTIDORA EL LABERINTO','','','','2017-01-01','SAN JUAN DE COLON , CALLE 1 #1-52 , ESTADO TACHIRA ','0424-5770393 /0276-3468462 /0414-7105495','',0,'',1,1,0),(39,'20170218','V',128906238,'VICTOR RICARDO ESCALANTE','MOTO REPUESTOS PITOCHO','','','2017-01-01','AVENIDA PRINCIPAL CASA S/N URB EL CALLEJON ALDEAANGOSTURA VIA LAGRITA EDO TACHIRA','0414-0361684 ','riescon@hotmail.com',0,'',1,1,0),(40,'20172254','V',162810886,'WILBUR ORVILLE ARELLANO ROJAS','','','','2017-01-01','EDO TACHIRA CALLE CON ESQUINA CARRERA 8 CASA NRO S/N SECTOR CASCO CENTRAL LA FRIA ','0414-1754595','wilburarellano@gmail.com',0,'',1,1,0),(41,'20172205','V',201237005,'YULIA ZOLVEIRA MENDOZA QUIÑONEZ','TECNO MOTOS Y LUBRICANTES ALBERTH SNEYDER','','','2017-01-01','EDO TACHIRA NARANJALES CALLE PRINCIPAL VIA EL NULA CERCA DEL INSAI ','0426-1728588','YULIAMENDOZA75@GMAIL.COM',0,'',1,1,0),(42,'20172201','V',233021802,'ALEJANDRO MIGUEL CASTRO ROJAS','','','','2017-01-01','EDO ZULIA CARRETERA MACHIQUES COLON SECTOR CERRO MIRADOR ','0414-7322598','',0,'',1,4,0),(43,'20172226','V',164683202,'JESUS ALBERTO PABON CHAVEZ','INVERSIONES Y SUMINISTROS ABIAD DE JESUS PABON','','','2017-01-01','EDO ZULIA CALLE LOS PELADOS SAN JOSE CASIQUE ','0424-7031741','JESUSALBERTOPABONCHAVEZ@GMAIL.COM',0,'',1,4,0),(44,'20172519','V',173682359,'NEDDER WINDER SANABRIA DUARTE','MOTO WINDER FP','','','2022-12-06','CALLE RICAURTE CASA NRO 0-52 SECTOR LA BOMBA EL COBRE EDO TACHIRA','04140786674','WINDER@HOTMAIL.COM',0,'ojo con este no aparece',2,1,0),(45,'20170057','V',91499998,'NELLY COROMOTO VEZGA SANCHEZ','SUPERMOTO DE VENEZUELA','','','2022-12-06','AV. PROLONGACION 5TA NRO 7-43 SECTOR LA CONCORDIA EDO TACHIRA','04145241282','NELLY@HOTMAI.COM',0,'',1,1,0),(46,'20172182','V',127567758,'ALEXIS JAVIER DUQUE MEDINA','MOTO REPUESTOS JD RACING F','','','2022-12-06','CARRETERA PANAMERICA NRO LUCATEBRAL SAN JUAN DE COLON EDO TACHIRA','04160795576','ALEXIS@HOTMAIL.COM',0,'',1,1,0),(47,'20171600','V',162320803,'EDUARD A GAMEZ A','MOTO REPUESTOS GAMEZ FP','','','2022-12-06','CALLE 15 EMTRE CARRER 4 Y 5TA AV LOCAL 4-33 SECTOR LA ERMITA EDO TACHIRA','04168743064','GMAEZ@HOTMAIL.COM',0,'',2,1,0);
/*!40000 ALTER TABLE `tbl_cliente_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cliente_prueba`
--

DROP TABLE IF EXISTS `tbl_cliente_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cliente_prueba` (
  `clien_ide` int(11) NOT NULL AUTO_INCREMENT,
  `clien_codigo` varchar(16) DEFAULT '' COMMENT 'Codigo Interno del Cliente',
  `clien_tipcli` varchar(2) DEFAULT NULL COMMENT 'Tipo de Cliente: (V) Venezolano, (E) Extrangero, (J) Juridico, (G) Gubernamental',
  `clien_numiden` varchar(12) DEFAULT '' COMMENT 'Número de identificación (Cédula) o (RIF)',
  `clien_nombre1` varchar(255) DEFAULT NULL COMMENT 'Primer nombre',
  `clien_nombre2` varchar(64) DEFAULT '' COMMENT 'Segundo nombre',
  `clien_apelli1` varchar(50) DEFAULT NULL COMMENT 'Primer apellido',
  `clien_apelli2` varchar(50) DEFAULT NULL COMMENT 'Segundo apellido',
  `clien_fecnaci` date DEFAULT '2017-01-01' COMMENT 'Fecha de nacimiento',
  `clien_direcci` varchar(255) DEFAULT NULL COMMENT 'Dirección especifica',
  `clien_telmovi` varchar(64) DEFAULT '' COMMENT 'Número de celular',
  `clien_correo` varchar(100) DEFAULT NULL COMMENT 'Correo electrónico',
  `clien_contriespec` int(11) DEFAULT 0 COMMENT 'Contribuyente Especial SI=1, NO=0',
  `clien_ubimap` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Contiene el Iframe de Google Map para Ubicar al Cliente en el Mapa',
  `clien_vendedor` int(11) DEFAULT NULL,
  `clien_zona` int(11) DEFAULT NULL,
  `clien_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`clien_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COMMENT='Información de los clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cliente_prueba`
--

LOCK TABLES `tbl_cliente_prueba` WRITE;
/*!40000 ALTER TABLE `tbl_cliente_prueba` DISABLE KEYS */;
INSERT INTO `tbl_cliente_prueba` VALUES (145,'20172415','V','235963490','WENDY CAROLINA DELGADILLO PAEZ (REPUESTOS MAXIS W ','WENDY OROPE','','','2024-08-02','CALLE 3 CASA S/N BARRIO EZEQUIEL ZAMORA OROPE','0414-7141761','',0,'',5,1,0),(146,'20173241','V','187164130','JOSE ALFREDO ZAMBRANO ROSALES ','JOSE ALFREDO MICHELENA','','','2024-08-01','AV BACHILLER DOMINGO COLMENARES LOCAL ENTRE CALLES 5 Y 6 NRO S/N SECTOR AV PERIMETRO','04247531378','',0,'',2,1,0),(147,'20173723','J','500754744','MOTO AUTOS Y & Y C A','WILFREDO PLAZA VENEZUELA','','','2024-08-05','CARRERA 4 CASA NRO 5-57 LA CONCORDIA  FRENTE A PLAZA VENEZUELA  SAN CRISTOBAL EDO TACHIRA','04140817355','',0,'',1,1,0),(148,'20173706','V','215961237','JHON ANDERSON PAEZ MADARIAGA','JHON TARRA','','','2024-08-05','CARRETERA MACHIQUES COLON, SECTOR EL TARRA PUENTE TARRA ZULIA, EDO ZULIA','04147560619','',0,'',5,4,0),(149,'20173709','V','191345815','DOUGLAS JOSE MEDINA DUQUE (AUTO ACCESORIOS Y REPUE','DOUGLAS TARIBA','','','2024-08-05','CARRETERA PANAMERICANA LOCA NRO 6-58 TARIBA EDO TACHIRA','04266745163','',0,'',4,1,0);
/*!40000 ALTER TABLE `tbl_cliente_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra` (
  `compra_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `compra_ide_tienda` varchar(20) DEFAULT NULL,
  `compra_control_tienda` varchar(20) DEFAULT NULL,
  `compra_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de empresa',
  `compra_fecha` date DEFAULT NULL COMMENT 'Fecha de compra segun factura',
  `compra_fecha_registro` date DEFAULT NULL COMMENT 'Fecha de compra segun sistema',
  `compra_sub_totalexe` double DEFAULT NULL,
  `compra_sub_totaliva` double DEFAULT NULL,
  `compra_descu_total` double DEFAULT NULL,
  `compra_subcondescu_total` double DEFAULT NULL,
  `compra_total_general` double DEFAULT NULL,
  `compra_proveedor` int(11) DEFAULT NULL,
  `compra_anulada` int(11) DEFAULT 0,
  `compra_fecha_anulada` date DEFAULT NULL,
  UNIQUE KEY `fact_ide` (`compra_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra`
--

LOCK TABLES `tbl_compra` WRITE;
/*!40000 ALTER TABLE `tbl_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra_deta`
--

DROP TABLE IF EXISTS `tbl_compra_deta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra_deta` (
  `compradeta_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle',
  `compradeta_compra` bigint(20) DEFAULT NULL COMMENT 'ide de la factura maestra',
  `compradeta_produc` int(11) DEFAULT NULL COMMENT 'ide de productos',
  `compradeta_producdeta` int(11) DEFAULT NULL,
  `compradeta_cant` double DEFAULT NULL COMMENT 'Cantidad',
  `compradeta_costo` double DEFAULT NULL COMMENT 'Precio unitario',
  `compradeta_monto` double DEFAULT 0 COMMENT 'Monto, resultado de cantidad por precio unitario',
  `compradeta_borrado` int(11) DEFAULT 0 COMMENT 'Si fue borrado = 1',
  UNIQUE KEY `fact_ide` (`compradeta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra_deta`
--

LOCK TABLES `tbl_compra_deta` WRITE;
/*!40000 ALTER TABLE `tbl_compra_deta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra_deta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra_deta_temp`
--

DROP TABLE IF EXISTS `tbl_compra_deta_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra_deta_temp` (
  `compradeta_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle',
  `compradeta_compra` bigint(20) DEFAULT NULL COMMENT 'ide de la factura maestra',
  `compradeta_produc` int(11) DEFAULT NULL COMMENT 'ide de productos',
  `compradeta_producdeta` int(11) DEFAULT NULL,
  `compradeta_cant` double DEFAULT NULL COMMENT 'Cantidad',
  `compradeta_costo` double DEFAULT NULL COMMENT 'Precio unitario',
  `compradeta_monto` double DEFAULT 0 COMMENT 'Monto, resultado de cantidad por precio unitario',
  `compradeta_borrado` int(11) DEFAULT 0 COMMENT 'Si fue borrado = 1',
  UNIQUE KEY `fact_ide` (`compradeta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra_deta_temp`
--

LOCK TABLES `tbl_compra_deta_temp` WRITE;
/*!40000 ALTER TABLE `tbl_compra_deta_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra_deta_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra_encab`
--

DROP TABLE IF EXISTS `tbl_compra_encab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra_encab` (
  `compra_encab_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `compra_encab_orden_ide` int(11) NOT NULL COMMENT 'Identificador de la orden',
  `compra_encab_control` varchar(20) DEFAULT NULL,
  `compra_encab_fecha` date DEFAULT NULL COMMENT 'Fecha de compra segun factura',
  `compra_encab_fecha_envio` date DEFAULT NULL,
  `compra_encab_fecha_registro` date DEFAULT NULL COMMENT 'Fecha de compra segun sistema',
  `compra_encab_porcentaje` double DEFAULT NULL,
  `compra_encab_monto_contado` double DEFAULT NULL,
  `compra_encab_monto_credito` double DEFAULT NULL,
  `compra_encab_tasa` double DEFAULT NULL,
  `compra_encab_flete` double DEFAULT NULL,
  `compra_encab_condicion` int(11) DEFAULT 0 COMMENT '0 Contado, 1 Credito',
  `compra_encab_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`compra_encab_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' Tabla tbl_compra_encab para comisiones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra_encab`
--

LOCK TABLES `tbl_compra_encab` WRITE;
/*!40000 ALTER TABLE `tbl_compra_encab` DISABLE KEYS */;
INSERT INTO `tbl_compra_encab` VALUES (1,1,'33478','2024-05-13','2024-05-13','2024-06-18',25,36,48,36,0,0,0);
/*!40000 ALTER TABLE `tbl_compra_encab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compra_temp`
--

DROP TABLE IF EXISTS `tbl_compra_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compra_temp` (
  `compra_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `compra_ide_tienda` varchar(20) DEFAULT NULL,
  `compra_control_tienda` varchar(20) DEFAULT NULL,
  `compra_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de empresa',
  `compra_fecha` date DEFAULT NULL COMMENT 'Fecha de compra segun factura',
  `compra_fecha_registro` date DEFAULT NULL COMMENT 'Fecha de compra segun sistema',
  `compra_sub_totalexe` double DEFAULT NULL,
  `compra_sub_totaliva` double DEFAULT NULL,
  `compra_descu_total` double DEFAULT NULL,
  `compra_subcondescu_total` double DEFAULT NULL,
  `compra_total_general` double DEFAULT NULL,
  `compra_proveedor` int(11) DEFAULT NULL,
  `compra_anulada` int(11) DEFAULT 0,
  `compra_fecha_anulada` date DEFAULT NULL,
  UNIQUE KEY `fact_ide` (`compra_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compra_temp`
--

LOCK TABLES `tbl_compra_temp` WRITE;
/*!40000 ALTER TABLE `tbl_compra_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compra_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_compracom_deta`
--

DROP TABLE IF EXISTS `tbl_compracom_deta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_compracom_deta` (
  `compracom_deta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `compracom_deta_encab_ide` int(11) NOT NULL COMMENT 'Identificador padre',
  `compracom_deta_orden_ide` int(11) NOT NULL COMMENT 'Identificador de la orden',
  `compracom_deta_reqdet_ide` int(11) NOT NULL COMMENT 'Identificador del detalle de requerimiento',
  `compracom_deta_monto` double NOT NULL COMMENT 'Monto',
  `compracom_deta_observ` varchar(20) DEFAULT NULL,
  `compracom_deta_fecha_registro` date DEFAULT NULL COMMENT 'Fecha de compra segun sistema',
  `compracom_deta_status` int(11) NOT NULL DEFAULT 0,
  `compracom_deta_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`compracom_deta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' Tabla  detalle de compra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_compracom_deta`
--

LOCK TABLES `tbl_compracom_deta` WRITE;
/*!40000 ALTER TABLE `tbl_compracom_deta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_compracom_deta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cruce_detalle`
--

DROP TABLE IF EXISTS `tbl_cruce_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cruce_detalle` (
  `crudeta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `crudeta_encab_ide` int(11) NOT NULL COMMENT 'Ide del encabezado del cruce',
  `crudeta_nota_ide` int(11) NOT NULL COMMENT 'Ide de la nota',
  `crudeta_monto` double DEFAULT NULL COMMENT 'Monto',
  `crudeta_observ` double DEFAULT NULL COMMENT '1 completo, 2 abono',
  `crudeta_fechareg` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `crudeta_estatus` int(11) DEFAULT 0,
  `crudeta_borrado` int(11) DEFAULT 0,
  PRIMARY KEY (`crudeta_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla detalle cruce';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cruce_detalle`
--

LOCK TABLES `tbl_cruce_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_cruce_detalle` DISABLE KEYS */;
INSERT INTO `tbl_cruce_detalle` VALUES (2,2,36,200,NULL,'2024-11-08 20:53:52',0,0),(3,1,36,200,NULL,'2024-11-08 20:54:45',0,0),(4,1,39,200,NULL,'2024-11-08 20:55:23',0,0);
/*!40000 ALTER TABLE `tbl_cruce_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cruce_encab`
--

DROP TABLE IF EXISTS `tbl_cruce_encab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cruce_encab` (
  `cruce_encab_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `cruce_encab_monto` double DEFAULT 0 COMMENT 'Monto ',
  `cruce_encab_fec` date DEFAULT current_timestamp() COMMENT 'Fecha ',
  `cruce_encab_pago_ide` int(11) NOT NULL COMMENT 'Ide de pago',
  `cruce_encab_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `cruce_encab_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  `cruce_encab_registro` datetime DEFAULT current_timestamp() COMMENT 'Fecha proceso',
  PRIMARY KEY (`cruce_encab_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' encab recibo ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cruce_encab`
--

LOCK TABLES `tbl_cruce_encab` WRITE;
/*!40000 ALTER TABLE `tbl_cruce_encab` DISABLE KEYS */;
INSERT INTO `tbl_cruce_encab` VALUES (1,5440.59,'2024-08-13',6,0,0,'2024-08-14 16:53:50');
/*!40000 ALTER TABLE `tbl_cruce_encab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deposito`
--

DROP TABLE IF EXISTS `tbl_deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_deposito` (
  `deposito_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `deposito_banco` int(11) DEFAULT NULL COMMENT 'Foranea Banco',
  `deposito_numerocuenta` varchar(30) DEFAULT '' COMMENT 'Numero de Cuenta del Banco',
  `deposito_monto` double(13,2) DEFAULT NULL COMMENT 'Monto del deposito de la venta del dia',
  `deposito_fecharegistro` date DEFAULT NULL COMMENT 'fecha de registro del deposito en el sistema',
  `deposito_fechadiaventa` date DEFAULT NULL COMMENT 'fecha a la que corresponde el deposito de la venta',
  `deposito_fechadeposito` date DEFAULT NULL COMMENT 'Fecha del deposito',
  `deposito_numero` int(20) DEFAULT NULL COMMENT 'Numero del comprobante o Deposito',
  `deposito_tienda` int(11) DEFAULT NULL COMMENT 'foranea de tienda',
  `deposito_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`deposito_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deposito`
--

LOCK TABLES `tbl_deposito` WRITE;
/*!40000 ALTER TABLE `tbl_deposito` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detaprod`
--

DROP TABLE IF EXISTS `tbl_detaprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detaprod` (
  `detaprod_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `detaprod_imei` varchar(32) DEFAULT '0000000000000000' COMMENT 'Codigo IMEI del Dispositivo',
  `detaprod_serial` varchar(32) DEFAULT '0000000000' COMMENT 'Numero de Serial del articulo',
  `detaprod_lote` varchar(32) DEFAULT '0' COMMENT 'Numero de Lote del Producto',
  `detaprod_fecini` date DEFAULT NULL COMMENT 'Fecha de Inicio o Elaboracion',
  `detaprod_fecfin` date DEFAULT NULL COMMENT 'Fecha de Fin o Vencimiento',
  `detaprod_producto` int(11) NOT NULL DEFAULT 0 COMMENT 'Foránea de tbl_producto',
  `detaprod_faccom` int(11) DEFAULT NULL,
  `detaprod_tienda` int(11) DEFAULT 1 COMMENT 'Foránea de tbl_empresa',
  `detaprod_borrado` int(11) DEFAULT 0,
  PRIMARY KEY (`detaprod_ide`),
  KEY `detaprod_producto` (`detaprod_producto`),
  KEY `detaprod_tienda` (`detaprod_tienda`),
  CONSTRAINT `tbl_detaprod_ibfk_1` FOREIGN KEY (`detaprod_producto`) REFERENCES `tbl_producto` (`produc_ide`),
  CONSTRAINT `tbl_detaprod_ibfk_2` FOREIGN KEY (`detaprod_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Información del Detalle de Productos o Articulos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detaprod`
--

LOCK TABLES `tbl_detaprod` WRITE;
/*!40000 ALTER TABLE `tbl_detaprod` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detaprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detaprod_temp`
--

DROP TABLE IF EXISTS `tbl_detaprod_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detaprod_temp` (
  `detaprod_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `detaprod_imei` varchar(32) DEFAULT '0000000000000000' COMMENT 'Codigo IMEI del Dispositivo',
  `detaprod_serial` varchar(32) DEFAULT '0000000000' COMMENT 'Numero de Serial del articulo',
  `detaprod_lote` varchar(32) DEFAULT '0' COMMENT 'Numero de Lote del Producto',
  `detaprod_fecini` date DEFAULT NULL COMMENT 'Fecha de Inicio o Elaboracion',
  `detaprod_fecfin` date DEFAULT NULL COMMENT 'Fecha de Fin o Vencimiento',
  `detaprod_producto` int(11) NOT NULL DEFAULT 0 COMMENT 'Foránea de tbl_producto',
  `detaprod_faccom` int(11) DEFAULT NULL,
  `detaprod_tienda` int(11) DEFAULT 1 COMMENT 'Foránea de tbl_empresa',
  `detaprod_borrado` int(11) DEFAULT 0,
  PRIMARY KEY (`detaprod_ide`),
  KEY `detaprod_producto` (`detaprod_producto`),
  KEY `detaprod_tienda` (`detaprod_tienda`),
  CONSTRAINT `tbl_detaprod_temp_ibfk_1` FOREIGN KEY (`detaprod_producto`) REFERENCES `tbl_producto` (`produc_ide`),
  CONSTRAINT `tbl_detaprod_temp_ibfk_2` FOREIGN KEY (`detaprod_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Información del Detalle de Productos o Articulos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detaprod_temp`
--

LOCK TABLES `tbl_detaprod_temp` WRITE;
/*!40000 ALTER TABLE `tbl_detaprod_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detaprod_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_empresa`
--

DROP TABLE IF EXISTS `tbl_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empresa` (
  `empresa_ide` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_rif` varchar(13) NOT NULL COMMENT 'rif de la empresa',
  `empresa_nombre` text DEFAULT NULL COMMENT 'nombre de la empresa',
  `empresa_nombre2` varchar(100) NOT NULL,
  `empresa_direccion` text DEFAULT NULL COMMENT 'direccion de la empresa',
  `empresa_telefono` varchar(200) DEFAULT NULL COMMENT 'telefonos de la empresa',
  `empresa_email` varchar(100) DEFAULT NULL COMMENT 'correo de la empresa',
  `fact_cont` int(11) NOT NULL COMMENT 'contador de numeros de factura',
  `ctrol_cont` int(11) NOT NULL COMMENT 'contador de numeros de control',
  `noen_cont` int(11) NOT NULL COMMENT 'contador de numeros de nota de entrega',
  `empresa_logo` varchar(255) NOT NULL DEFAULT 'logo_cliente.png',
  `empresa_encabezado` varchar(255) NOT NULL,
  `empresa_pie` varchar(255) NOT NULL,
  `empresa_principal` int(11) NOT NULL DEFAULT 0,
  `valor_dolar` decimal(11,2) DEFAULT 0.00 COMMENT 'Precio del Dolar en Bolivares Fuertes',
  `empresa_bg_encabezado` varchar(8) DEFAULT '' COMMENT 'Color de fondo de encabezado de Sistema',
  `empresa_col_nombre` varchar(24) DEFAULT '' COMMENT 'Color de letra de encabezado de Sistema',
  `empresa_bg_menu` varchar(8) DEFAULT '' COMMENT 'Color de fondo del menu de Sistema',
  `empresa_col_ele_menu` varchar(24) DEFAULT '' COMMENT 'Color de elemento del menu de Sistema',
  `empresa_col_ele_menu_alt` varchar(24) DEFAULT '' COMMENT 'Color de elemento interno del menu de Sistema',
  `empresa_borrado` int(11) DEFAULT 0,
  PRIMARY KEY (`empresa_ide`),
  KEY `empresa_rif` (`empresa_rif`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empresa`
--

LOCK TABLES `tbl_empresa` WRITE;
/*!40000 ALTER TABLE `tbl_empresa` DISABLE KEYS */;
INSERT INTO `tbl_empresa` VALUES (1,'J-00000000-0','MOTO REPUESTOS WALTER','','SC','02763000000','',0,0,0,'logo_cliente.png','logo_cliente.png','pie1.jpg',0,0.00,'#4B0082','black','#7CFC00','grey','yellow',0),(2,'J-00000000-1','CICLO REPUESTOS TACHIRA','','SC','02763000000','',0,0,0,'logo_crt.png','logo_crt.png','pie1.jpg',0,0.00,'FFFFFF','inverse','0210D3','green','green',0);
/*!40000 ALTER TABLE `tbl_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura`
--

DROP TABLE IF EXISTS `tbl_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_factura` (
  `fact_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `fact_ide_tienda` bigint(20) DEFAULT NULL,
  `fact_control_tienda` bigint(20) DEFAULT NULL,
  `fact_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de empresa',
  `fact_fecha` date DEFAULT NULL,
  `fact_sub_totalexe` double DEFAULT NULL,
  `fact_sub_totaliva` double DEFAULT NULL,
  `fact_descu_total` double DEFAULT NULL,
  `fact_subcondescu_total` double DEFAULT NULL,
  `fact_total_general` double DEFAULT NULL,
  `fact_cliente` int(11) DEFAULT NULL,
  `fact_anulada` int(11) DEFAULT 0,
  `fact_fecha_anulada` date DEFAULT NULL,
  `fact_forpag` int(11) DEFAULT 0 COMMENT 'Forma de pago 0 contado, 1 credito',
  `fact_efecti` double DEFAULT 0 COMMENT 'Monto pagado en efectivo',
  `fact_tardeb` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de debito',
  `fact_tarcre` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de credito',
  `fact_tarali` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de alimentacion o ticket cesta',
  `fact_cheque` double DEFAULT 0 COMMENT 'Monto pagado en Cheque',
  `fact_banche` int(11) DEFAULT NULL COMMENT 'Banco del cheque con el que paga',
  `fact_numche` varchar(32) DEFAULT NULL COMMENT 'Numero de Cheque',
  `fact_transf` double DEFAULT 0 COMMENT 'Monto pagado en transferencia',
  `fact_bantra` int(11) DEFAULT NULL COMMENT 'Banco del pago realizado por transferencia',
  `fact_numtra` varchar(32) DEFAULT NULL COMMENT 'Numero de transferencia',
  `fact_pago_deuda` int(11) DEFAULT 1 COMMENT 'Pago monto total de factura: 0= No, 1= Si',
  `fact_monto_deuda` double DEFAULT NULL COMMENT 'Monto deuda cliente',
  `fact_pago_electronico` int(11) DEFAULT 0 COMMENT '0=No; 1=Si',
  UNIQUE KEY `fact_ide` (`fact_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura`
--

LOCK TABLES `tbl_factura` WRITE;
/*!40000 ALTER TABLE `tbl_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura_deta`
--

DROP TABLE IF EXISTS `tbl_factura_deta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_factura_deta` (
  `factdeta_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle',
  `factdeta_factura` bigint(20) DEFAULT NULL COMMENT 'ide de la factura maestra',
  `factdeta_produc` int(11) DEFAULT NULL COMMENT 'ide de productos',
  `factdeta_producdeta` int(11) DEFAULT NULL,
  `factdeta_cant` double DEFAULT NULL COMMENT 'Cantidad',
  `factdeta_base` double DEFAULT NULL COMMENT 'Base Imponible',
  `factdeta_piva` double DEFAULT NULL COMMENT 'Porcentaje IVA',
  `factdeta_iva` double DEFAULT NULL COMMENT 'Monto IVA',
  `factdeta_precio` double DEFAULT NULL COMMENT 'Precio unitario con IVA',
  `factdeta_monto` double DEFAULT 0 COMMENT 'Monto, resultado de cantidad por precio unitario con IVA',
  `factdeta_borrado` int(11) DEFAULT 0 COMMENT 'Si fue borrado = 1',
  UNIQUE KEY `fact_ide` (`factdeta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura_deta`
--

LOCK TABLES `tbl_factura_deta` WRITE;
/*!40000 ALTER TABLE `tbl_factura_deta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_factura_deta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura_deta_temp`
--

DROP TABLE IF EXISTS `tbl_factura_deta_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_factura_deta_temp` (
  `factdetatemp_ide` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `factdetatemp_factura` int(11) DEFAULT 0,
  `factdetatemp_produc` int(11) DEFAULT NULL COMMENT 'Identificador de Producto',
  `factdetatemp_producdeta` int(11) DEFAULT 0 COMMENT 'Identificador del Detalle de Producto',
  `factdetatemp_cant` double DEFAULT NULL,
  `factdetatemp_base` double DEFAULT NULL COMMENT 'Base Imponible',
  `factdetatemp_piva` double DEFAULT NULL COMMENT 'Porcentaje IVA',
  `factdetatemp_iva` double DEFAULT NULL COMMENT 'Monto del IVA',
  `factdetatemp_precio` double DEFAULT NULL COMMENT 'Precio Unitario con IVA',
  `factdetatemp_monto` double DEFAULT 0 COMMENT 'Resultado de Cantidad por Precio',
  UNIQUE KEY `factdetatemp_ide` (`factdetatemp_ide`) USING BTREE,
  KEY `factdetatemp_produc` (`factdetatemp_produc`),
  CONSTRAINT `tbl_factura_deta_temp_ibfk_1` FOREIGN KEY (`factdetatemp_produc`) REFERENCES `tbl_producto` (`produc_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura_deta_temp`
--

LOCK TABLES `tbl_factura_deta_temp` WRITE;
/*!40000 ALTER TABLE `tbl_factura_deta_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_factura_deta_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_factura_temp`
--

DROP TABLE IF EXISTS `tbl_factura_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_factura_temp` (
  `fact_ide` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `fact_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de tienda o empresa',
  `fact_fecha` date DEFAULT NULL COMMENT 'Fecha de registro',
  `fact_cliente` int(11) DEFAULT NULL COMMENT 'Identificador de cliente',
  `fact_anulada` int(11) DEFAULT 0 COMMENT '0 No, 1 Si',
  UNIQUE KEY `factu_ide` (`fact_ide`) USING BTREE,
  KEY `factu_tienda` (`fact_tienda`),
  CONSTRAINT `tbl_factura_temp_ibfk_1` FOREIGN KEY (`fact_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_factura_temp`
--

LOCK TABLES `tbl_factura_temp` WRITE;
/*!40000 ALTER TABLE `tbl_factura_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_factura_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fichas`
--

DROP TABLE IF EXISTS `tbl_fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fichas` (
  `fich_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `fich_descrip` varchar(50) DEFAULT NULL COMMENT 'Descripción',
  `fich_icono` varchar(50) DEFAULT NULL COMMENT 'Icono',
  `fich_borrado` int(11) DEFAULT 0 COMMENT '1 si, 0 no',
  `fich_orden` int(11) DEFAULT NULL COMMENT 'Orden',
  `fich_url` varchar(100) DEFAULT NULL COMMENT 'Ruta de acceso de la ficha',
  PRIMARY KEY (`fich_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Registro de las fichas disponibles para usarlas en los permisos correspondientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fichas`
--

LOCK TABLES `tbl_fichas` WRITE;
/*!40000 ALTER TABLE `tbl_fichas` DISABLE KEYS */;
INSERT INTO `tbl_fichas` VALUES (1,'DATOS DEL CLIENTE','user',0,1,'vst-cliente-datos.personales'),(2,'DATOS DEL PRODUCTO','product-hunt',0,2,'vst-producto-datos.producto'),(3,'CARGA MASIVA DE PRODUCTOS','product-hunt',1,3,'vst-detaprod-admin'),(4,'DATOS DEL PROVEEDOR','user',0,4,'vst-proveedor-datos.personales'),(5,'DATOS DEL VENDEDOR','user',0,5,'vst-vendedor-datos.personales');
/*!40000 ALTER TABLE `tbl_fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_forpago`
--

DROP TABLE IF EXISTS `tbl_forpago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_forpago` (
  `forpago_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `forpago_descrip` varchar(30) DEFAULT '' COMMENT 'Descripción',
  `forpago_moneda` varchar(10) DEFAULT '' COMMENT 'Moneda',
  `forpago_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`forpago_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='tabla forma de pago';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_forpago`
--

LOCK TABLES `tbl_forpago` WRITE;
/*!40000 ALTER TABLE `tbl_forpago` DISABLE KEYS */;
INSERT INTO `tbl_forpago` VALUES (1,'EFECTIVO DOLARES','USD',0),(2,'EFECTIVO BS','BS',0),(3,'EFECTIVO COP','COP',0),(4,'DEP DOLARES CUENTA EN DIVISAS','USD',0),(5,'TRANSFERENCIA BOLIVARES','BS',0),(6,'TRANSFERENCIA COP','COP',0),(7,'ZELLE','USD',0);
/*!40000 ALTER TABLE `tbl_forpago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_impuesto`
--

DROP TABLE IF EXISTS `tbl_impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_impuesto` (
  `impuesto_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `impuesto_porcent` int(11) DEFAULT 0 COMMENT 'Porcentaje de Impuesto',
  `impuesto_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`impuesto_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Información de Impuestos y porcentaje';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_impuesto`
--

LOCK TABLES `tbl_impuesto` WRITE;
/*!40000 ALTER TABLE `tbl_impuesto` DISABLE KEYS */;
INSERT INTO `tbl_impuesto` VALUES (1,0,0),(2,12,0),(3,8,0);
/*!40000 ALTER TABLE `tbl_impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_kardex`
--

DROP TABLE IF EXISTS `tbl_kardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_kardex` (
  `kardex_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador',
  `kardex_producto` int(11) DEFAULT NULL COMMENT 'identificador del producto',
  `kardex_producto_deta` int(11) DEFAULT NULL,
  `kardex_tipo` int(11) DEFAULT NULL COMMENT '1=Compra, 2=Venta, 3=Devolucion de Compra, 4=Devolucion de Venta',
  `kardex_existen_ant` double(16,2) DEFAULT NULL,
  `kardex_cantidad` double(16,2) DEFAULT NULL,
  `kardex_existen_pos` double(16,2) DEFAULT NULL,
  `kardex_factura` bigint(15) DEFAULT NULL COMMENT 'Numero de factura ya sea de Venta o de Compra segunsea el caso',
  `kardex_factura_num` varchar(20) DEFAULT NULL COMMENT 'Num. Real de Fact. o Not. Ent.  ya sea Compra o Venta',
  `kardex_fecha` date DEFAULT NULL COMMENT 'Fecha del evento',
  `kardex_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de la Empresa',
  `kardex_precio_momento` decimal(11,2) DEFAULT NULL COMMENT 'Precio de venta al momento del movimiento',
  `kardex_observacion` varchar(512) DEFAULT NULL COMMENT 'Observacion de Retiro o Auto-Consumo',
  `kardex_borrado` int(11) DEFAULT 0 COMMENT '0 = No, 1 = Si, 15 = Elim. Retiro, 16 = Elim. AutoConsumo',
  PRIMARY KEY (`kardex_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_kardex`
--

LOCK TABLES `tbl_kardex` WRITE;
/*!40000 ALTER TABLE `tbl_kardex` DISABLE KEYS */;
INSERT INTO `tbl_kardex` VALUES (0,3,0,5,1.00,10.00,-9.00,0,'0','2024-07-03',NULL,NULL,'adadad',0);
/*!40000 ALTER TABLE `tbl_kardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marca`
--

DROP TABLE IF EXISTS `tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marca` (
  `marca_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `marca_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `marca_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`marca_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marca`
--

LOCK TABLES `tbl_marca` WRITE;
/*!40000 ALTER TABLE `tbl_marca` DISABLE KEYS */;
INSERT INTO `tbl_marca` VALUES (0,'EVOL',0),(1,'SIN MARCA',0);
/*!40000 ALTER TABLE `tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modelo`
--

DROP TABLE IF EXISTS `tbl_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modelo` (
  `modelo_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `modelo_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `modelo_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`modelo_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Información de Modelos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modelo`
--

LOCK TABLES `tbl_modelo` WRITE;
/*!40000 ALTER TABLE `tbl_modelo` DISABLE KEYS */;
INSERT INTO `tbl_modelo` VALUES (0,'MODELO PRUEBA 1',0),(1,'SIN MODELO',0);
/*!40000 ALTER TABLE `tbl_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modulos`
--

DROP TABLE IF EXISTS `tbl_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modulos` (
  `modu_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `modu_descrip` varchar(30) DEFAULT NULL COMMENT 'Descripción',
  `modu_icono` varchar(20) DEFAULT NULL COMMENT 'Icono',
  `modu_visible` int(11) DEFAULT 1 COMMENT 'Visibilidad (1 visible, 0 oculto)',
  `modu_orden` int(11) DEFAULT NULL COMMENT 'Orden',
  PRIMARY KEY (`modu_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Esquema de opciones, categoría principal del menú del sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modulos`
--

LOCK TABLES `tbl_modulos` WRITE;
/*!40000 ALTER TABLE `tbl_modulos` DISABLE KEYS */;
INSERT INTO `tbl_modulos` VALUES (1,'Usuarios','lock',1,1),(2,'Maestros','folder',1,2),(3,'Procesos','cogs ',1,3),(4,'Mantenimiento','list-ul ',1,4),(5,'Reportes','file-text',1,5);
/*!40000 ALTER TABLE `tbl_modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moneda`
--

DROP TABLE IF EXISTS `tbl_moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_moneda` (
  `moneda_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `moneda_descrip` varchar(64) DEFAULT '0' COMMENT 'Descripcion',
  `moneda_abreviada` varchar(8) DEFAULT NULL COMMENT 'Abreviatura',
  `moneda_operacion` int(11) DEFAULT 0 COMMENT '0=Multiplicacion; 1=División',
  `moneda_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`moneda_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moneda`
--

LOCK TABLES `tbl_moneda` WRITE;
/*!40000 ALTER TABLE `tbl_moneda` DISABLE KEYS */;
INSERT INTO `tbl_moneda` VALUES (1,'DOLAR ESTADO UNIDENSE','USD',0,0),(2,'PESO COLOMBIANO','COP',1,0),(3,'EURO','EUR',0,0);
/*!40000 ALTER TABLE `tbl_moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moneda_valor`
--

DROP TABLE IF EXISTS `tbl_moneda_valor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_moneda_valor` (
  `monval_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `monval_moneda_ide` int(11) DEFAULT 0 COMMENT 'Descripcion',
  `monval_valor` decimal(18,2) DEFAULT NULL COMMENT 'Abreviatura',
  `monval_fecha_registro` datetime DEFAULT current_timestamp(),
  `monval_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`monval_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moneda_valor`
--

LOCK TABLES `tbl_moneda_valor` WRITE;
/*!40000 ALTER TABLE `tbl_moneda_valor` DISABLE KEYS */;
INSERT INTO `tbl_moneda_valor` VALUES (1,1,5.87,'2022-06-29 23:09:18',0),(2,2,665.00,'2022-06-29 23:09:36',0),(3,1,5.88,'2022-07-01 09:09:18',0),(4,1,5.89,'2022-07-01 10:22:22',0),(5,1,6.00,'2022-07-05 13:24:10',0),(6,1,6.12,'2022-08-05 11:28:05',0),(7,1,6.10,'2022-08-08 11:09:49',0),(8,1,6.15,'2022-08-11 12:24:15',0),(9,1,6.25,'2022-08-15 17:31:42',0),(10,1,6.60,'2022-08-17 13:15:01',0),(11,1,6.75,'2022-08-18 14:20:46',0),(12,1,7.10,'2022-08-24 18:14:40',0),(13,1,8.00,'2022-09-07 16:43:21',0),(14,1,8.05,'2022-09-10 13:56:12',0),(15,1,8.10,'2022-09-21 14:50:57',0),(16,1,8.15,'2022-09-27 12:47:15',0),(17,1,8.25,'2022-09-30 09:19:23',0),(18,1,8.30,'2022-10-13 09:23:16',0),(19,1,8.45,'2022-10-21 10:49:44',0);
/*!40000 ALTER TABLE `tbl_moneda_valor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notaentre`
--

DROP TABLE IF EXISTS `tbl_notaentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notaentre` (
  `noen_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `noen_ide_tienda` bigint(20) DEFAULT NULL,
  `noen_control_tienda` bigint(20) DEFAULT NULL,
  `noen_tienda` int(11) DEFAULT NULL COMMENT 'Identificador de empresa',
  `noen_fecha` date DEFAULT NULL,
  `noen_sub_totalexe` double DEFAULT NULL,
  `noen_sub_totaliva` double DEFAULT NULL,
  `noen_descu_total` double DEFAULT NULL,
  `noen_subcondescu_total` double DEFAULT NULL,
  `noen_total_general` double DEFAULT NULL,
  `noen_cliente` int(11) DEFAULT NULL,
  `noen_anulada` int(11) DEFAULT 0,
  `noen_fecha_anulada` date DEFAULT NULL,
  `noen_forpag` int(11) DEFAULT 0 COMMENT 'Forma de pago 0 contado, 1 credito',
  `noen_efecti` double DEFAULT 0 COMMENT 'Monto pagado en efectivo',
  `noen_tardeb` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de debito',
  `noen_tarcre` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de credito',
  `noen_tarali` double DEFAULT 0 COMMENT 'Monto pagado en tarjeta de alimentacion o ticket cesta',
  `noen_cheque` double DEFAULT 0 COMMENT 'Monto pagado en Cheque',
  `noen_banche` int(11) DEFAULT NULL COMMENT 'Banco del cheque con el que paga',
  `noen_numche` varchar(32) DEFAULT NULL COMMENT 'Numero de Cheque',
  `noen_transf` double DEFAULT 0 COMMENT 'Monto pagado en transferencia',
  `noen_bantra` int(11) DEFAULT NULL COMMENT 'Banco del pago realizado por transferencia',
  `noen_numtra` varchar(32) DEFAULT NULL COMMENT 'Numero de transferencia',
  UNIQUE KEY `fact_ide` (`noen_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notaentre`
--

LOCK TABLES `tbl_notaentre` WRITE;
/*!40000 ALTER TABLE `tbl_notaentre` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notaentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notaentre_deta`
--

DROP TABLE IF EXISTS `tbl_notaentre_deta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notaentre_deta` (
  `noendeta_ide` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador del detalle',
  `noendeta_notaentre` bigint(20) DEFAULT NULL COMMENT 'ide de la factura maestra',
  `noendeta_produc` int(11) DEFAULT NULL COMMENT 'ide de productos',
  `noendeta_producdeta` int(11) DEFAULT NULL,
  `noendeta_cant` double DEFAULT NULL COMMENT 'Cantidad',
  `noendeta_precio` double DEFAULT NULL COMMENT 'Precio unitario',
  `noendeta_monto` double DEFAULT 0 COMMENT 'Monto, resultado de cantidad por precio unitario',
  `noendeta_borrado` int(11) DEFAULT 0 COMMENT 'Si fue borrado = 1',
  UNIQUE KEY `fact_ide` (`noendeta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notaentre_deta`
--

LOCK TABLES `tbl_notaentre_deta` WRITE;
/*!40000 ALTER TABLE `tbl_notaentre_deta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notaentre_deta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notaentre_deta_temp`
--

DROP TABLE IF EXISTS `tbl_notaentre_deta_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notaentre_deta_temp` (
  `noendetatemp_ide` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `noendetatemp_notaentre` int(11) DEFAULT 0,
  `noendetatemp_produc` int(11) DEFAULT NULL COMMENT 'Identificador de Producto',
  `noendetatemp_producdeta` int(11) DEFAULT 0 COMMENT 'Identificador del Detalle de Producto',
  `noendetatemp_cant` double DEFAULT NULL,
  `noendetatemp_precio` double DEFAULT NULL,
  `noendetatemp_monto` double DEFAULT 0,
  UNIQUE KEY `factdetatemp_ide` (`noendetatemp_ide`) USING BTREE,
  KEY `factdetatemp_produc` (`noendetatemp_produc`),
  CONSTRAINT `tbl_notaentre_deta_temp_ibfk_1` FOREIGN KEY (`noendetatemp_produc`) REFERENCES `tbl_producto` (`produc_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notaentre_deta_temp`
--

LOCK TABLES `tbl_notaentre_deta_temp` WRITE;
/*!40000 ALTER TABLE `tbl_notaentre_deta_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notaentre_deta_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notaentre_temp`
--

DROP TABLE IF EXISTS `tbl_notaentre_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notaentre_temp` (
  `noen_ide` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'identificador unico',
  `noen_tienda` int(11) DEFAULT 0 COMMENT 'Identificador de tienda o empresa',
  `noen_fecha` date DEFAULT NULL COMMENT 'Fecha de registro',
  `noen_cliente` int(11) DEFAULT 0 COMMENT 'Identificador de Cliente',
  `noen_anulada` int(11) DEFAULT 0 COMMENT '0 No, 1 Si',
  UNIQUE KEY `noen_ide` (`noen_ide`) USING BTREE,
  KEY `noen_tienda` (`noen_tienda`) USING BTREE,
  CONSTRAINT `tbl_notaentre_temp_ibfk_1` FOREIGN KEY (`noen_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notaentre_temp`
--

LOCK TABLES `tbl_notaentre_temp` WRITE;
/*!40000 ALTER TABLE `tbl_notaentre_temp` DISABLE KEYS */;
INSERT INTO `tbl_notaentre_temp` VALUES (1,1,'2024-04-24',7,0);
/*!40000 ALTER TABLE `tbl_notaentre_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orden`
--

DROP TABLE IF EXISTS `tbl_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orden` (
  `orden_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `orden_prove_ide` int(11) NOT NULL COMMENT 'Identificador prov',
  `orden_clien_ide` int(11) DEFAULT NULL COMMENT 'Ide del Cliente a la que le pertenece la orden, o el representante al cual va toda la orden si es DESGLOSADA',
  `orden_control` varchar(25) DEFAULT NULL,
  `orden_fecha` date DEFAULT NULL COMMENT 'Fecha',
  `orden_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `orden_tienda` int(11) NOT NULL COMMENT 'Tienda a la que pertenece la orden',
  `orden_fecha_reg` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  `orden_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`orden_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabla orden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orden`
--

LOCK TABLES `tbl_orden` WRITE;
/*!40000 ALTER TABLE `tbl_orden` DISABLE KEYS */;
INSERT INTO `tbl_orden` VALUES (1,2,1,'desglose jonathan 17-05','2024-05-13',0,1,'2024-06-19',0),(2,2,NULL,'','2024-06-20',0,1,'2024-06-20',0),(3,2,4,'33478','2024-05-13',0,1,'2024-06-28',0);
/*!40000 ALTER TABLE `tbl_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_origen_venta`
--

DROP TABLE IF EXISTS `tbl_origen_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_origen_venta` (
  `origenvta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `origenvta_descrip` varchar(30) DEFAULT '' COMMENT 'Descripción',
  `origenvta_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`origenvta_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Origen Venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_origen_venta`
--

LOCK TABLES `tbl_origen_venta` WRITE;
/*!40000 ALTER TABLE `tbl_origen_venta` DISABLE KEYS */;
INSERT INTO `tbl_origen_venta` VALUES (1,'Directa',0),(2,'Por desglose',0),(3,'Taller',0);
/*!40000 ALTER TABLE `tbl_origen_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pago`
--

DROP TABLE IF EXISTS `tbl_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pago` (
  `pago_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `pago_forma` int(11) NOT NULL DEFAULT 0 COMMENT 'Forma de Pago',
  `pago_titular` varchar(255) DEFAULT NULL COMMENT 'Titular que envia',
  `pago_monto` double DEFAULT 0 COMMENT 'Monto de pago',
  `pago_monto_bs` double DEFAULT NULL,
  `pago_fecha` date DEFAULT curtime() COMMENT 'Fecha de pago o de rechazo',
  `pago_ref` varchar(255) DEFAULT '0' COMMENT 'referencia del pago',
  `pago_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `pago_proceso` date NOT NULL DEFAULT current_timestamp() COMMENT 'fecha de proceso',
  `pago_hora` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `pago_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`pago_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='tabla de tasa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pago`
--

LOCK TABLES `tbl_pago` WRITE;
/*!40000 ALTER TABLE `tbl_pago` DISABLE KEYS */;
INSERT INTO `tbl_pago` VALUES (6,7,NULL,369,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(7,7,NULL,0,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(8,1,NULL,600,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(9,3,NULL,690,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(10,1,NULL,4878.25,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(12,1,NULL,5714.17,NULL,'2024-07-30','0',0,'2024-08-07',NULL,1),(13,4,NULL,1000,NULL,'2024-08-07','0',0,'2024-08-07',NULL,1),(16,4,NULL,2100,NULL,'2024-08-07','0',0,'2024-08-07',NULL,1),(17,4,NULL,800,NULL,'2024-08-08','0',0,'2024-08-08',NULL,1),(28,1,NULL,200,NULL,'0000-00-00','prueba ref 1.',0,'2024-08-15',NULL,0),(31,1,NULL,1138.94,NULL,'2024-08-01','wwwww',0,'2024-08-20',NULL,0),(32,1,NULL,3365.15,NULL,'2024-08-23','william ',0,'2024-08-23',NULL,0),(33,1,NULL,600,NULL,'2024-08-23','2024-08-23',0,'2024-08-23',NULL,0),(34,1,NULL,5000,NULL,'2024-05-02','segundo pago',0,'2024-08-23',NULL,0);
/*!40000 ALTER TABLE `tbl_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permfich`
--

DROP TABLE IF EXISTS `tbl_permfich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permfich` (
  `pefi_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `pefi_tius` int(11) DEFAULT NULL COMMENT 'Tipo de usuario',
  `pefi_fich` int(11) DEFAULT NULL COMMENT 'Ficha',
  `pefi_estado` int(11) DEFAULT NULL COMMENT '1 activo, 0 no',
  PRIMARY KEY (`pefi_ide`),
  KEY `pefi_tius` (`pefi_tius`),
  KEY `pefi_fich` (`pefi_fich`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='Permisos de fichas por tipo de usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permfich`
--

LOCK TABLES `tbl_permfich` WRITE;
/*!40000 ALTER TABLE `tbl_permfich` DISABLE KEYS */;
INSERT INTO `tbl_permfich` VALUES (1,1,10,1),(2,1,9,1),(3,1,8,1),(4,1,7,1),(5,1,6,1),(6,1,5,1),(7,1,4,1),(8,1,3,0),(9,1,2,1),(10,1,1,0),(11,3,10,0),(12,3,9,1),(13,3,8,1),(14,3,7,1),(15,3,6,1),(16,3,5,1),(17,3,4,1),(18,3,3,1),(19,3,2,1),(20,3,1,1),(21,5,1,1),(22,5,2,1),(23,6,1,1),(24,6,2,1),(25,6,3,1),(26,6,4,1),(27,6,5,1),(28,6,10,1),(29,6,8,1),(30,5,4,1),(31,5,5,1),(32,5,8,1),(33,6,7,1),(34,5,6,1),(35,5,7,1),(36,5,10,0),(37,1,11,1),(38,3,11,1),(39,6,11,1),(40,6,6,0),(41,1,12,1);
/*!40000 ALTER TABLE `tbl_permfich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_permisos` (
  `perm_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador',
  `perm_tius` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_tipousua',
  `perm_sumo` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_submodul',
  `perm_estado` int(11) DEFAULT NULL COMMENT 'Estado de acceso (1 permitido, 2 denegado)',
  PRIMARY KEY (`perm_ide`),
  KEY `perm_tius` (`perm_tius`),
  KEY `perm_sumo` (`perm_sumo`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COMMENT='Almacena la información correspondiente a los permisos de acceso para cada tipo de usuario y cada módulo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permisos`
--

LOCK TABLES `tbl_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_permisos` DISABLE KEYS */;
INSERT INTO `tbl_permisos` VALUES (1,1,1,1),(2,1,2,1),(6,1,3,1),(7,2,2,0),(8,1,4,1),(9,1,5,1),(10,1,6,1),(11,1,7,1),(12,1,8,1),(13,1,9,1),(14,1,10,1),(15,1,11,1),(16,1,12,1),(17,1,13,1),(18,1,14,1),(19,1,15,1),(20,3,1,0),(21,3,2,0),(22,3,3,1),(23,3,13,0),(24,3,14,1),(25,3,4,0),(26,3,5,0),(27,3,6,0),(28,3,7,0),(29,3,8,0),(30,3,9,0),(31,3,10,1),(32,3,11,0),(33,3,12,0),(34,3,15,0),(35,5,3,1),(36,5,13,1),(37,5,14,1),(38,5,4,1),(39,5,5,1),(40,5,6,1),(41,5,7,1),(42,5,8,1),(43,5,9,1),(44,5,10,1),(45,5,11,0),(46,5,12,1),(47,1,16,1),(48,1,17,1),(49,1,18,1),(50,1,19,1),(51,3,16,1),(52,3,17,1),(53,3,18,1),(54,3,19,0),(55,6,3,1),(56,6,13,1),(57,6,14,1),(58,6,4,1),(59,6,5,1),(60,6,6,1),(61,6,7,1),(62,6,8,1),(63,6,9,1),(64,6,10,1),(65,6,11,1),(66,6,12,1),(67,6,15,1),(68,6,16,1),(69,6,17,1),(70,6,18,1),(71,6,19,1),(72,5,15,1),(73,1,20,1),(74,1,22,1),(75,1,21,1),(76,3,20,0),(77,3,21,0),(78,3,22,0),(79,6,20,1),(80,6,21,1),(81,6,22,1),(82,6,2,1),(83,6,1,1),(84,1,23,1),(85,1,24,1),(86,1,25,1),(87,1,26,1),(88,1,27,1),(89,2,4,0),(90,2,3,1),(91,2,7,0),(92,2,22,0),(93,2,8,0),(94,2,9,0),(95,2,11,0),(96,2,12,0),(97,2,10,0),(98,2,14,1),(99,2,17,0),(100,2,19,0),(101,2,5,0),(102,2,6,0),(103,2,21,0),(104,2,23,1),(105,2,13,0),(106,2,27,0),(107,1,28,1),(108,2,28,0),(109,1,29,1),(110,2,29,0),(111,1,30,1),(112,1,31,1),(113,1,32,1),(114,1,33,1),(115,1,34,1),(116,1,35,1),(117,3,25,0),(118,3,28,0),(119,3,29,0),(120,3,31,0),(121,3,34,0),(122,3,35,0),(123,3,24,0),(124,3,23,1),(125,3,26,0),(126,3,27,1),(127,3,30,0),(128,3,33,0),(129,3,32,0),(130,1,36,1),(131,1,37,1),(132,2,36,1),(133,2,37,1),(134,3,36,1),(135,3,37,1),(136,1,38,1),(137,1,39,1),(138,3,39,1),(139,3,38,1),(140,1,40,1),(141,1,41,1),(142,1,42,1),(143,3,41,1),(144,3,42,1),(145,1,43,1),(146,3,43,1),(147,3,44,1),(148,1,44,1),(149,1,46,1),(150,1,45,1),(151,3,46,1),(152,3,45,1),(153,3,47,1),(154,3,48,1),(155,3,49,1),(156,3,50,1),(157,3,51,1),(158,3,52,1),(159,3,53,1),(160,3,54,1),(161,1,51,1),(162,3,55,1),(163,1,55,1),(164,1,56,1),(165,3,56,1),(166,1,57,1),(167,3,57,1),(168,3,58,1),(169,3,59,1),(170,1,59,1),(171,1,60,1),(172,3,60,1),(173,3,61,1);
/*!40000 ALTER TABLE `tbl_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_producto` (
  `produc_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `produc_codigo` varchar(32) DEFAULT NULL COMMENT 'Codigo de Barra o codigo de identificación interno del producto',
  `produc_descrip` varchar(256) NOT NULL DEFAULT '' COMMENT 'Descripcion del producto o articulo',
  `produc_existen` decimal(11,2) NOT NULL DEFAULT 0.00 COMMENT 'Cantidad o Existencia',
  `produc_costo` decimal(11,2) DEFAULT 0.00 COMMENT 'Costo o precio de compra',
  `produc_precio1` decimal(11,2) NOT NULL DEFAULT 0.00 COMMENT 'Precio de Venta por Default',
  `produc_precio2` decimal(11,2) DEFAULT 0.00 COMMENT 'Precio alternativo 2',
  `produc_precio3` decimal(11,2) DEFAULT 0.00 COMMENT 'Precio alternativo 3',
  `produc_precio4` decimal(11,2) DEFAULT 0.00 COMMENT 'Precio alternativo 4',
  `produc_preciodolar` decimal(11,2) DEFAULT 0.00 COMMENT 'Valor en dolares',
  `produc_foto` varchar(128) DEFAULT '0' COMMENT 'Fotografia del producto',
  `produc_color` varchar(32) DEFAULT '0' COMMENT 'Color del producto',
  `produc_talla` varchar(32) DEFAULT '0' COMMENT 'Talla del producto',
  `produc_unidmed` int(11) DEFAULT 0 COMMENT 'Foránea de tbl_unidmed',
  `produc_medida` decimal(11,2) DEFAULT 0.00 COMMENT 'Medida expresada en numero segun la Unidad seleccionada',
  `produc_marca` int(11) DEFAULT 0 COMMENT 'Foránea de tbl_marca',
  `produc_modelo` int(11) DEFAULT 0 COMMENT 'Foránea de tbl_modelo',
  `produc_impuesto` int(11) DEFAULT 0 COMMENT 'Foránea de tbl_impuesto',
  `produc_servicio` int(11) DEFAULT 0 COMMENT 'Diferencia el registro entre un producto=0 y un servicio=1',
  `produc_observa` blob DEFAULT NULL COMMENT 'Cualquier comentario u observacion sobre el producto',
  `produc_tienda` int(11) DEFAULT 1 COMMENT 'foranea de empresas',
  `produc_stock` int(11) DEFAULT 0 COMMENT 'Existencia Minima',
  `produc_serializado` int(11) DEFAULT 0 COMMENT 'No=0, Si=1',
  `produc_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`produc_ide`),
  KEY `produc_unidmed` (`produc_unidmed`),
  KEY `produc_marca` (`produc_marca`),
  KEY `produc_modelo` (`produc_modelo`),
  KEY `produc_impuesto` (`produc_impuesto`),
  KEY `tbl_producto_ibfk_5` (`produc_tienda`),
  CONSTRAINT `tbl_producto_ibfk_1` FOREIGN KEY (`produc_unidmed`) REFERENCES `tbl_unidmed` (`unidmed_ide`),
  CONSTRAINT `tbl_producto_ibfk_2` FOREIGN KEY (`produc_marca`) REFERENCES `tbl_marca` (`marca_ide`),
  CONSTRAINT `tbl_producto_ibfk_3` FOREIGN KEY (`produc_modelo`) REFERENCES `tbl_modelo` (`modelo_ide`),
  CONSTRAINT `tbl_producto_ibfk_4` FOREIGN KEY (`produc_impuesto`) REFERENCES `tbl_impuesto` (`impuesto_ide`),
  CONSTRAINT `tbl_producto_ibfk_5` FOREIGN KEY (`produc_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Información de Productos o Articulos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_producto`
--

LOCK TABLES `tbl_producto` WRITE;
/*!40000 ALTER TABLE `tbl_producto` DISABLE KEYS */;
INSERT INTO `tbl_producto` VALUES (1,'PRO00001','PRODUCTO DE PRUEBA',9.00,0.00,1510.00,0.00,0.00,0.00,0.00,'0','N/A','0',7,0.00,1,1,1,0,NULL,1,0,0,0),(2,'SER00001','SERVICIO DE PRUEBA',1.00,70.00,100.00,110.00,0.00,0.00,0.00,'0','N/A','0',7,0.00,1,1,1,1,'',1,0,0,0),(3,'1030C-AX100','PISTA VOLANTE CONICA AX100',-9.00,100.00,0.00,0.00,0.00,0.00,0.00,'0','N/A','0',7,0.00,1,1,3,0,NULL,1,10,0,0),(4,'3009-ax100-2','PORTA CORONA AX-100 1X50',10.00,0.00,0.00,0.00,0.00,0.00,0.00,'0','N/A','0',7,0.00,1,1,1,0,NULL,1,0,0,0),(5,'1009T-OWEN-STD','KIT DE PISTON COMPLETO DE TEFLON OWEN-2014 STD',0.00,0.00,0.00,0.00,0.00,0.00,0.00,'0','N/A','0',7,0.00,1,1,1,0,NULL,1,0,0,0);
/*!40000 ALTER TABLE `tbl_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedor`
--

DROP TABLE IF EXISTS `tbl_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedor` (
  `prove_ide` int(11) NOT NULL AUTO_INCREMENT,
  `prove_tipo` varchar(2) DEFAULT '' COMMENT 'Tipo: (V) Venezolano, (E) Extrangero, (J) Juridico, (G) Gubernamental',
  `prove_cedrif` int(11) DEFAULT NULL COMMENT 'Número de identificación (Cédula) o (RIF)',
  `prove_razonsocial` varchar(255) DEFAULT '' COMMENT 'Nombre o Razon Social',
  `prove_alias` varchar(50) DEFAULT '' COMMENT 'Alias de Proveedor',
  `prove_fecreg` date DEFAULT '2017-01-01' COMMENT 'Fecha de Registro',
  `prove_direcci` varchar(255) DEFAULT '' COMMENT 'Dirección especifica',
  `prove_telcon` varchar(11) DEFAULT '' COMMENT 'Número de celular',
  `prove_correo` varchar(100) DEFAULT '' COMMENT 'Correo electrónico',
  `prove_contriespec` int(11) DEFAULT 0 COMMENT 'Contribuyente Especial SI=1, NO=0',
  `prove_ubimap` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Contiene el Iframe de Google Map para Ubicar al Proveedor en el Mapa',
  `prove_almacen` int(11) DEFAULT 0 COMMENT '0= Normal; 1= Almacen',
  `prove_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`prove_ide`),
  KEY `clien_tipcli` (`prove_tipo`),
  CONSTRAINT `tbl_proveedor_ibfk_1` FOREIGN KEY (`prove_tipo`) REFERENCES `tbl_tipcli` (`tipcli_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Información de los clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedor`
--

LOCK TABLES `tbl_proveedor` WRITE;
/*!40000 ALTER TABLE `tbl_proveedor` DISABLE KEYS */;
INSERT INTO `tbl_proveedor` VALUES (1,'J',11223344,'ALMACEN INTERNO','ALMACEN I','2022-11-09','SC','02761234567','ALMA1@DOMINIO.COM',0,'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3381.687689644612!2d-72.20403968572917!3d7.787380309341469!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zN8KwNDcnMTQuNiJOIDcywrAxMicwNi43Ilc!5e1!3m2!1ses!2sve!4v1668111972471!5m2!1ses!2sve',1,0),(2,'J',12345678,'AUTO ASIA','AUTO ASIA','2022-11-09','SC','02761234567','PROVE1@DOMINIO.COM',0,'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3381.687689644612!2d-72.20403968572917!3d7.787380309341469!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zN8KwNDcnMTQuNiJOIDcywrAxMicwNi43Ilc!5e1!3m2!1ses!2sve!4v1668111972471!5m2!1ses!2sve',0,0),(3,'J',299981273,'AUTO ASIA 168, C.A.','168','2017-01-01','SC','','',0,NULL,0,0);
/*!40000 ALTER TABLE `tbl_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recibo_detalle`
--

DROP TABLE IF EXISTS `tbl_recibo_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recibo_detalle` (
  `recdeta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `recdeta_encab_ide` int(11) NOT NULL COMMENT 'Ide del encabezado del recibo',
  `recdeta_venta_ide` int(11) NOT NULL COMMENT 'Ide de la venta',
  `recdeta_tipo_ide` int(11) NOT NULL COMMENT 'Ide del tipo de pago 1 Completo 2 parcial ',
  `recdeta_forpago_ide` int(11) NOT NULL COMMENT 'Ide de la forma de pago ',
  `recdetaa_monto` double DEFAULT NULL COMMENT 'Monto',
  PRIMARY KEY (`recdeta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla detalle recibo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recibo_detalle`
--

LOCK TABLES `tbl_recibo_detalle` WRITE;
/*!40000 ALTER TABLE `tbl_recibo_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_recibo_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recibo_encab`
--

DROP TABLE IF EXISTS `tbl_recibo_encab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recibo_encab` (
  `recencab_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `recencab_num` int(11) NOT NULL COMMENT 'Identificador del recibo',
  `recencab_fec` date DEFAULT current_timestamp() COMMENT 'Fecha ',
  `recencab_monto` double DEFAULT 0 COMMENT 'Monto ',
  `recencab_vende_ide` int(11) NOT NULL COMMENT 'Ide del Cliente',
  `recencab_clien_ide` int(11) NOT NULL COMMENT 'Ide del Cliente',
  `recencab_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `recencab_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`recencab_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' encab recibo ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recibo_encab`
--

LOCK TABLES `tbl_recibo_encab` WRITE;
/*!40000 ALTER TABLE `tbl_recibo_encab` DISABLE KEYS */;
INSERT INTO `tbl_recibo_encab` VALUES (1,11111,'2024-05-13',0,1,1,0,0),(2,2222,'2024-05-13',200,3,7,0,0),(3,3333,'2023-11-09',300,6,112,0,0),(4,2534,'2024-05-15',4878.25,4,124,0,0),(5,2910,'2024-06-21',5714.17,6,1,0,0),(8,2913,'2024-06-26',2100,6,145,0,0),(9,2933,'2024-07-08',800,6,145,0,0),(10,2943,'2024-07-22',1000,6,145,0,0),(11,2629,'2024-05-09',1138.94,7,129,0,0),(12,2641,'2024-05-20',3365.15,7,140,0,0),(14,0,'2024-04-29',600,7,9,0,0),(15,2642,'2024-04-29',5000,7,9,0,0),(16,2643,'2024-08-06',40000,7,9,0,0);
/*!40000 ALTER TABLE `tbl_recibo_encab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recibo_nota`
--

DROP TABLE IF EXISTS `tbl_recibo_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recibo_nota` (
  `recnota_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `recnota_encab_ide` int(11) NOT NULL COMMENT 'Ide del encabezado del recibo',
  `recnota_venta_ide` int(11) NOT NULL COMMENT 'Ide de la nota ',
  `recnota_monto_aplicado` double DEFAULT 0 COMMENT 'monto aplicado',
  `recnota_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `recnota_fecha_proceso` datetime NOT NULL DEFAULT current_timestamp(),
  `recnota_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`recnota_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla notas de un recibo ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recibo_nota`
--

LOCK TABLES `tbl_recibo_nota` WRITE;
/*!40000 ALTER TABLE `tbl_recibo_nota` DISABLE KEYS */;
INSERT INTO `tbl_recibo_nota` VALUES (4,1,22,701.79,0,'0000-00-00 00:00:00',0),(5,4,24,129.91,0,'0000-00-00 00:00:00',0),(6,4,25,916.91,0,'0000-00-00 00:00:00',0),(7,4,26,1076.28,0,'0000-00-00 00:00:00',0),(8,4,27,771.04,0,'0000-00-00 00:00:00',0),(9,4,28,856.74,0,'0000-00-00 00:00:00',0),(10,4,29,505.28,0,'0000-00-00 00:00:00',0),(11,4,30,622.09,0,'0000-00-00 00:00:00',0),(12,5,32,366.07,0,'0000-00-00 00:00:00',0),(13,5,33,226.31,0,'0000-00-00 00:00:00',0),(14,5,35,481.73,0,'0000-00-00 00:00:00',0),(15,5,37,629.71,0,'0000-00-00 00:00:00',0),(16,5,38,1170.26,0,'0000-00-00 00:00:00',0),(17,5,31,703.75,0,'0000-00-00 00:00:00',0),(18,5,39,740.65,0,'0000-00-00 00:00:00',0),(19,5,40,103.96,0,'0000-00-00 00:00:00',0),(20,5,41,546.7,0,'0000-00-00 00:00:00',0),(30,8,77,121.4,1,'2024-08-07 14:51:58',0),(31,8,80,1978.6,1,'2024-08-07 14:52:20',0),(32,9,77,0,1,'2024-08-08 11:56:13',0),(33,9,80,800,1,'2024-08-08 11:56:21',0),(34,10,80,1000,1,'2024-08-08 14:53:25',0),(35,10,77,0,0,'2024-08-08 14:53:33',0),(36,11,103,600,1,'2024-08-20 16:09:02',0),(37,11,104,30,1,'2024-08-20 16:09:22',0),(38,11,105,385.26,0,'2024-08-20 16:09:33',0),(39,12,106,34.68,1,'2024-08-23 15:35:50',0),(40,12,107,187.61,1,'2024-08-23 15:36:12',0),(41,12,108,2259.76,1,'2024-08-23 15:36:21',0),(42,12,109,883.09,1,'2024-08-23 15:36:30',0),(43,14,110,600,1,'2024-08-23 17:33:16',0),(44,15,110,5000,1,'2024-08-23 17:40:07',0);
/*!40000 ALTER TABLE `tbl_recibo_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_recibo_pago`
--

DROP TABLE IF EXISTS `tbl_recibo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_recibo_pago` (
  `recpago_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `recpago_encab_ide` int(11) NOT NULL COMMENT 'Ide del encabezado del recibo',
  `recpago_pago_ide` int(11) NOT NULL COMMENT 'Ide de pago',
  `recpago_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `recpago_fecha_proceso` datetime NOT NULL COMMENT 'fecha de proceso',
  `recpago_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`recpago_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla pagos de un recibo ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_recibo_pago`
--

LOCK TABLES `tbl_recibo_pago` WRITE;
/*!40000 ALTER TABLE `tbl_recibo_pago` DISABLE KEYS */;
INSERT INTO `tbl_recibo_pago` VALUES (6,1,6,0,'2024-08-07 00:00:00',0),(7,1,7,0,'2024-08-07 00:00:00',0),(8,1,8,0,'2024-08-07 00:00:00',0),(9,1,9,0,'2024-08-07 00:00:00',0),(10,4,10,0,'2024-08-07 00:00:00',0),(16,8,16,0,'2024-08-07 15:31:16',0),(17,9,17,0,'2024-08-08 11:57:00',0),(20,10,20,0,'2024-08-08 16:11:27',0),(23,11,31,0,'2024-08-20 17:08:29',0),(24,12,32,0,'2024-08-23 15:46:07',0),(25,14,33,0,'2024-08-23 17:33:58',0),(26,15,34,0,'2024-08-23 17:41:13',0);
/*!40000 ALTER TABLE `tbl_recibo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_registro_operacion`
--

DROP TABLE IF EXISTS `tbl_registro_operacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_registro_operacion` (
  `ope_ide` int(11) NOT NULL AUTO_INCREMENT,
  `ope_descrip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ope_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_registro_operacion`
--

LOCK TABLES `tbl_registro_operacion` WRITE;
/*!40000 ALTER TABLE `tbl_registro_operacion` DISABLE KEYS */;
INSERT INTO `tbl_registro_operacion` VALUES (1,'Insercion'),(2,'Modificacion'),(3,'Eliminacion Logica'),(4,'Otras Operaciones'),(5,'Anulacion de Factura'),(6,'Anulacion de Nota de Entrega'),(7,'Retiro de Mercancia'),(8,'Auto-Consumo de Mercancia'),(9,'Anulacion Retiro de Merc.'),(10,'Anulacion Auto-Consumo Merc.');
/*!40000 ALTER TABLE `tbl_registro_operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_requisicion`
--

DROP TABLE IF EXISTS `tbl_requisicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_requisicion` (
  `req_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `req_clien_ide` int(11) DEFAULT NULL COMMENT 'Ide cliente',
  `req_vende_ide` int(11) DEFAULT NULL COMMENT 'Ide Vendedor',
  `req_monto` double DEFAULT NULL COMMENT 'Monto',
  `req_fecha` date DEFAULT NULL COMMENT 'Fecha',
  `req_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `req_tienda` int(11) NOT NULL,
  `req_fecha_reg` date DEFAULT NULL,
  `req_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`req_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tabla requisicion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_requisicion`
--

LOCK TABLES `tbl_requisicion` WRITE;
/*!40000 ALTER TABLE `tbl_requisicion` DISABLE KEYS */;
INSERT INTO `tbl_requisicion` VALUES (1,123,2,100,'2024-05-13',1,1,'2024-06-18',0),(2,123,2,150,'2024-05-13',0,1,'2024-06-18',0),(3,123,2,200,'2024-05-13',0,1,'2024-06-18',0),(4,123,2,250,'2024-05-13',0,1,'2024-06-18',0),(5,123,2,300,'2024-05-13',0,1,'2024-06-18',0),(6,123,2,490.09,'2024-05-13',0,1,'2024-06-18',0);
/*!40000 ALTER TABLE `tbl_requisicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_requisicion_deta`
--

DROP TABLE IF EXISTS `tbl_requisicion_deta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_requisicion_deta` (
  `reqdet_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `reqdet_req_ide` int(11) DEFAULT NULL COMMENT 'Ide del requerimiento padre',
  `reqdet_prove_ide` int(11) DEFAULT NULL COMMENT 'Ide Proveedor',
  `reqdet_ord_ide` int(11) DEFAULT NULL COMMENT 'Ide de la orden padre',
  `reqdet_monto` double DEFAULT NULL COMMENT 'Monto',
  `reqdet_fecha_reg` date DEFAULT NULL COMMENT 'Fecha',
  `reqdet_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `reqdet_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`reqdet_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Tabla requisicion detalle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_requisicion_deta`
--

LOCK TABLES `tbl_requisicion_deta` WRITE;
/*!40000 ALTER TABLE `tbl_requisicion_deta` DISABLE KEYS */;
INSERT INTO `tbl_requisicion_deta` VALUES (1,1,2,1,100,'2024-06-18',1,0),(2,2,2,1,150,'2024-06-18',0,0),(3,3,2,2,200,'2024-06-20',0,0);
/*!40000 ALTER TABLE `tbl_requisicion_deta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Update_Requisicion` AFTER UPDATE ON `tbl_requisicion_deta` FOR EACH ROW begin
  
  DECLARE monreq decimal(18,2);
  DECLARE monreqdet decimal(18,2);
  if new.reqdet_status=1 or new.reqdet_status=2 then
    SELECT req_monto INTO monreq FROM tbl_requisicion WHERE req_ide=new.reqdet_req_ide;
    SELECT SUM(reqdet_monto) INTO monreqdet FROM tbl_requisicion_deta WHERE reqdet_req_ide=new.reqdet_req_ide and (reqdet_status=1 OR reqdet_status=2);
    if monreq = new.reqdet_monto then
        UPDATE tbl_requisicion SET req_status=1 WHERE (req_ide=new.reqdet_req_ide);
    end if;
    if monreq = monreqdet then
        UPDATE tbl_requisicion SET req_status=1 WHERE (req_ide=new.reqdet_req_ide);
    end if;
  end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbl_submodul`
--

DROP TABLE IF EXISTS `tbl_submodul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_submodul` (
  `sumo_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `sumo_modu` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_modulos',
  `sumo_descrip` varchar(50) DEFAULT NULL COMMENT 'Descripción',
  `sumo_orden` int(11) DEFAULT NULL COMMENT 'Orden',
  `sumo_icono` varchar(20) DEFAULT NULL COMMENT 'icono',
  `sumo_visible` int(11) DEFAULT NULL COMMENT 'Visibilidad (1 visible, 0 oculto)',
  `sumo_url` varchar(100) DEFAULT NULL COMMENT 'Ruta de acceso',
  PRIMARY KEY (`sumo_ide`),
  KEY `modu_ide` (`sumo_modu`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='Almacena información de todas las opciones o submódulos de los que dispone el sistema para moverse dentro del mismo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_submodul`
--

LOCK TABLES `tbl_submodul` WRITE;
/*!40000 ALTER TABLE `tbl_submodul` DISABLE KEYS */;
INSERT INTO `tbl_submodul` VALUES (1,1,'Usuarios',1,'user',1,'app/usuarios/vst/admin.php'),(2,1,'Niveles y Permisos',2,'unlock',1,'app/tipousua/vst/admin.php'),(3,2,'Proveedores PRUEBA',1,'user',1,'app/proveedor/vst/admin.php'),(4,3,'Registrar Compras',3,'download',1,'app/compra/vst/admin.php'),(5,5,'Inventario',15,'desktop',1,'app/producto/vst/listainventario.php'),(6,5,'Servicios',18,'television',1,'app/producto/vst/listaservicio.php'),(7,3,'Facturacion',6,'money ',1,'app/facturacion/vst/admin.php'),(8,3,'Anulacion de Factura',12,'times',1,'app/facturacion/vst/adminfactura.php'),(9,3,'Reimprimir Factura',18,'print',1,'app/facturacion/vst/adminimprefactura.php'),(10,4,'Tipo',7,'group',1,'app/tipclien/vst/admin.php'),(11,3,'Nota de Entrega',9,'money',1,'app/notaentre/vst/admin.php'),(12,3,'Anulacion de Nota de Entrega',15,'times',1,'app/notaentre/vst/adminnotaentre.php'),(13,5,'Consulta de Precio',12,'barcode',1,'app/producto/vst/listaprecio.php'),(14,4,'Bancos',22,'bank',1,'app/banco/vst/admin.php'),(15,5,'Cuentas por Cobrar',6,'inbox',1,'app/reportes/vst/listacuentaporcobrar.php'),(16,5,'Cuentas por Pagar',9,'book',0,NULL),(17,4,'Marcas',10,'bookmark',1,'app/marca_wh/vst/admin.php'),(18,4,'Modelos',13,'external-link',1,'app/modelo/vst/admin.php'),(19,4,'Impuesto',16,'credit-card',1,'app/impuesto/vst/admin.php'),(20,4,'Unidades de Medida',19,'dashboard',1,'app/unidmed/vst/admin.php'),(21,5,'Cuadre de Caja',3,'edit',1,'app/reportes/vst/admincuadrecaja.php'),(22,2,'Productos',10,'product-hunt',1,'app/producto/vst/admin.php'),(23,5,'Listado de Clientes',30,'group',1,'app/cliente/vst/lista.php'),(24,5,'Mercancia con Existencia Baja',21,'file-text',1,'app/producto/vst/listainventariobajostock.php'),(25,4,'Tienda',4,'university',1,'app/tienda/vst/admin.php'),(26,5,'Listado de Compras',33,'bookmark',1,'app/compra/vst/listacompraverifica.php'),(27,5,'Libro de Ventas',39,'book',1,'app/reportes/vst/adminlibroventa.php'),(28,3,'Retiro y Auto-Consumo',21,'external-link',1,'app/producto/vst/adminretiro.php'),(29,3,'Movimiento de Productos',24,'exchange',1,'app/producto/vst/listakardex.php'),(30,5,'Libro de Compras',36,'book',1,'app/reportes/vst/adminlibrocompra.php'),(31,3,'Facturacion Pago Electronico',30,'money ',0,'app/facturacion10/vst/admin.php'),(32,5,'Libro de Inventario Mensual',42,'book',1,'app/reportes/vst/adminlibroinventariomensual.php'),(33,5,'Registro de Auditoria de Sistema',60,'eye',1,'app/auditoria/vst/admin.php'),(34,3,'Registrar Deposito en Efectivo',27,'edit',0,'app/deposito/vst/admin.php'),(35,3,'Reimprimir Factura Pago Electronico',33,'print',0,'app/facturacion10/vst/adminimprefactura.php'),(36,2,'Vendedores',4,'user',1,'app/vendedor/vst/admin.php'),(37,2,'Clientes',7,'user',1,'app/cliente/vst/admin.php'),(38,5,'Listado de Proveedores',24,'group',1,'app/proveedor/vst/lista.php'),(39,5,'Listado de Vendedores',27,'group',1,'app/vendedor/vst/lista.php'),(40,4,'Zonas',25,'globe',1,'app/zona/vst/admin.php'),(41,3,'Generar Requisicion',39,'book',1,'app/requisicion/vst/admin.php'),(42,3,'Registrar Compra (Nota de entrega)',45,'download',1,'app/compra_wh/vst/admin.php'),(43,3,'Ordenes',42,'check',1,'app/orden/vst/admin.php'),(44,5,'Listado de Requisiciones',45,'list',1,'app/reportes/vst/adminlistareq.php'),(45,4,'Monedas',24,'money',1,'app/moneda/vst/admin.php'),(46,3,'Referencia Moneda',36,'money',1,'app/moneda/vst/adminmonval.php'),(47,3,'Desglose',43,'money',1,'app/desglose/vst/admin.php'),(48,4,'Tipo de Mercancia',24,'money',1,'app/tipmerc/vst/admin.php'),(49,3,'Desglose - Venta',43,'money',1,'app/desglose/vst/detalle_venta.php'),(50,3,'Desglose - Resumen',43,'globe',1,'app/desglose/vst/admin_resumen.php'),(51,5,'Listado Ventas',43,'book',1,'app/venta/vst/admin_venta.php'),(52,3,'Procesar Recibo',43,'globe',1,'app/recibo/vst/admin.php'),(53,3,'Reportar Pago',45,'book',1,'app/pago/vst/admin.php'),(54,3,'Procesar Venta Taller',45,'money',1,'app/venta_wh/vst/admin_venta_taller.php'),(55,5,'Matriz General',45,'list',1,'app/compra_wh/vst/admin_matriz.php'),(56,3,'Procesar cruce',45,'book',1,'app/cruce/vst/admin.php'),(57,5,'Listado Ventas Taller',43,'book',1,'app/venta_wh/vst/lista_taller.php'),(58,5,'Listado General de Ventas',43,'book',1,'app/venta_wh/vst/lista_general_ventas.php'),(59,5,'Reporte Cobranza',45,'list',1,'app/reportes/vst/admin_cobranza.php'),(60,3,'Procesar Devoluciones',43,'eye',1,'app/devolucion/vst/admin_devolu.php'),(61,5,'Matriz con Filtros',45,'list',1,'app/compra_wh/vst/admin_matriz_confiltro.php'),(62,5,'Resumen',45,'list',1,'app/compra_wh/vst/admin_resumen.php'),(63,4,'Forma de Pago',45,'book',1,'app/forpago/vst/admin.php');
/*!40000 ALTER TABLE `tbl_submodul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_temp_compra`
--

DROP TABLE IF EXISTS `tbl_temp_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_temp_compra` (
  `compra_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `compra_prov_ide` int(11) NOT NULL COMMENT 'ide del proveedor',
  `compra_num` varchar(20) DEFAULT '',
  `compra_clien_ide` int(11) DEFAULT NULL COMMENT 'Ide del Cliente',
  `compra_fecha` date DEFAULT '2024-01-01' COMMENT 'Fecha de la nota',
  `compra_porc_desc` double DEFAULT NULL,
  `compra_monto` double DEFAULT 0,
  `compra_monto_credito` double DEFAULT NULL,
  `compra_bultos` double DEFAULT NULL,
  `compra_tasa` double DEFAULT 0,
  `compra_flete` double DEFAULT 0,
  `compra_sustitucion` varchar(30) DEFAULT '' COMMENT 'Numero de nota de sustitucion',
  `compra_condicion` int(11) DEFAULT 0 COMMENT '0 Contado, 1 Credito',
  `compra_tipo` int(11) DEFAULT NULL COMMENT 'tipo de factura',
  `compra_destino` int(11) DEFAULT NULL COMMENT '0 Oficina si cobra flete, 1 directo no cobra flete',
  `compra_fecha_registro` date DEFAULT NULL COMMENT 'Fecha proceso',
  `compra_estatus` int(11) DEFAULT 0 COMMENT 'Estatus de la venta',
  `compra_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`compra_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' Tabla tbl_compra temporal ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_temp_compra`
--

LOCK TABLES `tbl_temp_compra` WRITE;
/*!40000 ALTER TABLE `tbl_temp_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_temp_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipcli`
--

DROP TABLE IF EXISTS `tbl_tipcli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipcli` (
  `tipcli_ide` varchar(2) NOT NULL COMMENT 'identificador',
  `tipcli_descrip` varchar(30) DEFAULT NULL COMMENT 'Descripción',
  `tipcli_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`tipcli_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Almacena información del tipo de Cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipcli`
--

LOCK TABLES `tbl_tipcli` WRITE;
/*!40000 ALTER TABLE `tbl_tipcli` DISABLE KEYS */;
INSERT INTO `tbl_tipcli` VALUES ('E','Extranjero',0),('G','Gubernamental',1),('J','Juridico',0),('N','FORMULARIOX',1),('V','Venezolano',0);
/*!40000 ALTER TABLE `tbl_tipcli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipmercancia`
--

DROP TABLE IF EXISTS `tbl_tipmercancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipmercancia` (
  `tipomerc_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tipomerc_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `tipomerc_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`tipomerc_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='tipo de mercancia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipmercancia`
--

LOCK TABLES `tbl_tipmercancia` WRITE;
/*!40000 ALTER TABLE `tbl_tipmercancia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tipmercancia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_venta`
--

DROP TABLE IF EXISTS `tbl_tipo_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_venta` (
  `tipventa_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tipventa_descrip` varchar(30) DEFAULT '' COMMENT 'Descripción',
  `tipventa_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`tipventa_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tipo de Venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_venta`
--

LOCK TABLES `tbl_tipo_venta` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_venta` DISABLE KEYS */;
INSERT INTO `tbl_tipo_venta` VALUES (1,'Directa',0),(2,'Por desglose',0),(3,'Taller',0);
/*!40000 ALTER TABLE `tbl_tipo_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipousua`
--

DROP TABLE IF EXISTS `tbl_tipousua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipousua` (
  `tius_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tius_descrip` varchar(40) DEFAULT NULL COMMENT 'Descripción',
  `tius_borrado` int(11) DEFAULT 0 COMMENT '1 si, 0 no',
  PRIMARY KEY (`tius_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Información acerca de los tipos de usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipousua`
--

LOCK TABLES `tbl_tipousua` WRITE;
/*!40000 ALTER TABLE `tbl_tipousua` DISABLE KEYS */;
INSERT INTO `tbl_tipousua` VALUES (1,'ADMINISTRADOR DEL SISTEMA',0),(2,'ASISTENTE',0),(3,'ADMINISTRADOR DE TIENDA',0);
/*!40000 ALTER TABLE `tbl_tipousua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_unidmed`
--

DROP TABLE IF EXISTS `tbl_unidmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_unidmed` (
  `unidmed_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `unidmed_abrevia` varchar(32) DEFAULT '0' COMMENT 'Abreviatura de la Unidad de Medida',
  `unidmed_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `unidmed_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`unidmed_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Información de las Unidades de Medida';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidmed`
--

LOCK TABLES `tbl_unidmed` WRITE;
/*!40000 ALTER TABLE `tbl_unidmed` DISABLE KEYS */;
INSERT INTO `tbl_unidmed` VALUES (1,'Kg.','Kilogramos',0),(2,'mg.','Miligramos',0),(3,'L.','Litros',0),(4,'cc.','Mililitros',0),(5,'Km','KILOMETROS',1),(6,'mtrs','METROS',1),(7,'na','NO APLICA',0);
/*!40000 ALTER TABLE `tbl_unidmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `usua_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `usua_login` varchar(10) DEFAULT NULL COMMENT 'Nombre de usuario',
  `usua_clave` varchar(32) DEFAULT NULL COMMENT 'Clave de acceso',
  `usua_tipo` varchar(2) DEFAULT NULL,
  `usua_numiden` int(11) DEFAULT NULL,
  `usua_nombre` varchar(50) DEFAULT '',
  `usua_apelli` varchar(50) DEFAULT '',
  `usua_fecnaci` date DEFAULT NULL,
  `usua_direcci` varchar(255) DEFAULT '',
  `usua_telmovi` varchar(64) DEFAULT '',
  `usua_correo` varchar(100) DEFAULT '',
  `usua_estado` int(11) DEFAULT NULL COMMENT '1 activo, 2 inactivo, 0 borrado',
  `usua_visible` int(11) DEFAULT NULL COMMENT '1 visible en lista de usuario, 0 no',
  `usua_tius` int(11) DEFAULT NULL COMMENT 'Foránea de tbl_tipousua',
  `usua_tienda` int(11) DEFAULT 1 COMMENT 'foranea de empresas',
  PRIMARY KEY (`usua_ide`),
  KEY `usua_tienda` (`usua_tienda`),
  CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`usua_tienda`) REFERENCES `tbl_empresa` (`empresa_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Información de usuarios que tienen acceso al sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'ADMIN','569bbb11f1df07c575d6dd1a708fa273','V',13303247,'ADMIN','SISTEMA','1979-03-09','SAN CRISTOBAL','584247627193','JGILMER79@GMAIL.COM',1,1,1,1),(2,'WALTER','81dc9bdb52d04dc20036dbd8313ed055','V',12345678,'WALTER','HOME','2013-07-06','SC','0414','WALTER@GMAIL.COM',1,1,3,1),(3,'CARMEN','81dc9bdb52d04dc20036dbd8313ed055','V',16371469,'CARMEN','FERNANDEZ','1984-10-01','SC','0414-7121225','WALTER@GMAIL.COM',1,0,2,1),(4,'LISETH','81dc9bdb52d04dc20036dbd8313ed055','V',17812109,'LISETH','BALLEN','1987-11-22','SC','0414-7178647','WALTER@GMAIL.COM',1,1,2,1);
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vendedor`
--

DROP TABLE IF EXISTS `tbl_vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_vendedor` (
  `vende_ide` int(11) NOT NULL AUTO_INCREMENT,
  `vende_tipo` varchar(2) DEFAULT '' COMMENT 'Tipo: (V) Venezolano, (E) Extrangero, (J) Juridico, (G) Gubernamental',
  `vende_cedrif` int(11) DEFAULT NULL COMMENT 'Número de identificación (Cédula) o (RIF)',
  `vende_razonsocial` varchar(255) DEFAULT '' COMMENT 'Nombre o Razon Social',
  `vende_alias` varchar(50) DEFAULT '' COMMENT 'Alias de Vendedor',
  `vende_fecreg` date DEFAULT '2017-01-01' COMMENT 'Fecha de Registro',
  `vende_direcci` varchar(255) DEFAULT '' COMMENT 'Dirección especifica',
  `vende_telcon` varchar(11) DEFAULT '' COMMENT 'Número de celular',
  `vende_correo` varchar(100) DEFAULT '' COMMENT 'Correo electrónico',
  `vende_contriespec` int(11) DEFAULT 0 COMMENT 'Contribuyente Especial SI=1, NO=0',
  `vende_ubimap` longtext CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Contiene el Iframe de Google Map para Ubicar al Vendedor en el Mapa',
  `vende_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  PRIMARY KEY (`vende_ide`),
  KEY `clien_tipcli` (`vende_tipo`),
  CONSTRAINT `tbl_vendedor_ibfk_1` FOREIGN KEY (`vende_tipo`) REFERENCES `tbl_tipcli` (`tipcli_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Información de los clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vendedor`
--

LOCK TABLES `tbl_vendedor` WRITE;
/*!40000 ALTER TABLE `tbl_vendedor` DISABLE KEYS */;
INSERT INTO `tbl_vendedor` VALUES (1,'V',15989281,'WALTER HOME','WALTER HOME','2022-11-11','SAN CRISTOBAL','0414','WALTER@GMAIL.COM',0,'',0),(2,'V',16228229,'JESUS MANUEL PULIDO','JESUS MANUEL PULIDO','2022-11-11','CORDERO','04147020479','MANJES074@HOTMAIL.COM',0,'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3953.144796785642!2d-72.20498628522196!3d7.774466794397056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zN8KwNDYnMjguMSJOIDcywrAxMicxMC4xIlc!5e0!3m2!1ses!2sve!4v1678196681181!5m2!1ses!2sve',0),(3,'V',12345,'FREDDY VILLAMIZAR','FREDDY VILLAMIZAR','2023-01-09','','','',0,NULL,0),(4,'V',13149831,'CHELY CHACON','CHELY','2023-01-09','','','',0,NULL,0),(5,'V',12347,'CARLOS SERRANO','CARLOS CERRANO','2023-01-09','','','',0,NULL,0),(6,'V',12348,'DEXI BUITRAGO','DEXI BUITRAGO','2023-01-09','','','',0,NULL,0),(7,'V',12349,'JESUS PULIDO','JESUS PULIDO','2023-01-09','','','',0,NULL,0),(8,'V',12632634,'JESUS MORA','PANITA','2017-01-01','SC','04147235521','W@CUALQUIERA.COM',0,'0',0);
/*!40000 ALTER TABLE `tbl_vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venta`
--

DROP TABLE IF EXISTS `tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_venta` (
  `venta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `venta_num` int(11) NOT NULL COMMENT 'Numero de la factura de  venta',
  `venta_compra_encab_ide` int(11) NOT NULL COMMENT 'Id de la compra',
  `venta_compracom_deta_ide` int(11) NOT NULL COMMENT 'Identificador detalle de compra',
  `venta_vende_ide` int(11) NOT NULL COMMENT 'Identificador vendedor',
  `venta_fecha` date DEFAULT NULL COMMENT 'Fecha de venta segun factura',
  `venta_fecha_envio` date DEFAULT NULL COMMENT 'Fecha envio de venta segun factura',
  `venta_fecha_recepcion` date DEFAULT NULL COMMENT 'Fecha recepcion de mercancia',
  `venta_monto_asignado` double DEFAULT 0 COMMENT 'Monto asignado a la venta',
  `venta_monto_almacen` double DEFAULT 0 COMMENT 'Monto de almacen',
  `venta_flete` double DEFAULT 0 COMMENT 'Flete de la venta',
  `venta_flete_oficina` double DEFAULT 0 COMMENT 'Flete por oficina',
  `venta_descuento` int(11) NOT NULL DEFAULT 0 COMMENT 'Descuento aplicado',
  `venta_condicion` int(11) NOT NULL DEFAULT 0 COMMENT '0 Contado, 1 Credito',
  `venta_monto_neto` double DEFAULT NULL COMMENT 'Monto neto de la venta',
  `venta_status` int(11) NOT NULL DEFAULT 0,
  `venta_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`venta_ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' Tabla  venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venta`
--

LOCK TABLES `tbl_venta` WRITE;
/*!40000 ALTER TABLE `tbl_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_zona`
--

DROP TABLE IF EXISTS `tbl_zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_zona` (
  `zona_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `zona_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `zona_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`zona_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Información de las Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_zona`
--

LOCK TABLES `tbl_zona` WRITE;
/*!40000 ALTER TABLE `tbl_zona` DISABLE KEYS */;
INSERT INTO `tbl_zona` VALUES (1,'TACHIRA',0),(2,'APURE',0),(3,'MERIDA',0),(4,'ZULIA',0),(5,'BARINAS',0);
/*!40000 ALTER TABLE `tbl_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_abono_cruce`
--

DROP TABLE IF EXISTS `vw_abono_cruce`;
/*!50001 DROP VIEW IF EXISTS `vw_abono_cruce`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_abono_cruce` (
  `crudeta_nota_ide` tinyint NOT NULL,
  `abono` tinyint NOT NULL,
  `crudeta_encab_ide` tinyint NOT NULL,
  `cruce_encab_monto` tinyint NOT NULL,
  `cruce_encab_fec` tinyint NOT NULL,
  `cruce_encab_pago_ide` tinyint NOT NULL,
  `pago_titular` tinyint NOT NULL,
  `pago_ref` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_abonoventa`
--

DROP TABLE IF EXISTS `vw_abonoventa`;
/*!50001 DROP VIEW IF EXISTS `vw_abonoventa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_abonoventa` (
  `abono_recibo` tinyint NOT NULL,
  `recnota_ide` tinyint NOT NULL,
  `recnota_venta_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_auditoria`
--

DROP TABLE IF EXISTS `vw_auditoria`;
/*!50001 DROP VIEW IF EXISTS `vw_auditoria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_auditoria` (
  `audi_ide` tinyint NOT NULL,
  `usua_ide` tinyint NOT NULL,
  `usua_login` tinyint NOT NULL,
  `usua_tipo` tinyint NOT NULL,
  `usua_numiden` tinyint NOT NULL,
  `usua_nombre` tinyint NOT NULL,
  `usua_apelli` tinyint NOT NULL,
  `usua_telmovi` tinyint NOT NULL,
  `usua_correo` tinyint NOT NULL,
  `audi_operaci` tinyint NOT NULL,
  `ope_descrip` tinyint NOT NULL,
  `audi_registr` tinyint NOT NULL,
  `audi_tabla` tinyint NOT NULL,
  `audi_fechora` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_banco`
--

DROP TABLE IF EXISTS `vw_banco`;
/*!50001 DROP VIEW IF EXISTS `vw_banco`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_banco` (
  `banco_ide` tinyint NOT NULL,
  `banco_descrip` tinyint NOT NULL,
  `banco_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_cliente`
--

DROP TABLE IF EXISTS `vw_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_cliente` (
  `clien_ide` tinyint NOT NULL,
  `clien_codigo` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `clien_fecnaci` tinyint NOT NULL,
  `clien_direcci` tinyint NOT NULL,
  `clien_telmovi` tinyint NOT NULL,
  `clien_borrado` tinyint NOT NULL,
  `clien_correo` tinyint NOT NULL,
  `clien_contriespec` tinyint NOT NULL,
  `clien_ubimap` tinyint NOT NULL,
  `clien_vendedor` tinyint NOT NULL,
  `clien_zona` tinyint NOT NULL,
  `vende_razonsocial` tinyint NOT NULL,
  `vende_alias` tinyint NOT NULL,
  `zona_descrip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_1`
--

DROP TABLE IF EXISTS `vw_compra_deta_1`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_1` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_1_temp`
--

DROP TABLE IF EXISTS `vw_compra_deta_1_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_1_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_1_temp` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_2`
--

DROP TABLE IF EXISTS `vw_compra_deta_2`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_2` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `compradeta_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_2_temp`
--

DROP TABLE IF EXISTS `vw_compra_deta_2_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_2_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_2_temp` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `compradeta_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_3`
--

DROP TABLE IF EXISTS `vw_compra_deta_3`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_3` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `compradeta_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_deta_3_temp`
--

DROP TABLE IF EXISTS `vw_compra_deta_3_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_3_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_deta_3_temp` (
  `compradeta_ide` tinyint NOT NULL,
  `compradeta_compra` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `compradeta_cant` tinyint NOT NULL,
  `compradeta_costo` tinyint NOT NULL,
  `compradeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `compradeta_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_lista`
--

DROP TABLE IF EXISTS `vw_compra_lista`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_lista`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_lista` (
  `compra_ide` tinyint NOT NULL,
  `compra_ide_tienda` tinyint NOT NULL,
  `compra_control_tienda` tinyint NOT NULL,
  `compra_fecha` tinyint NOT NULL,
  `compra_fecha_registro` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `compra_sub_totalexe` tinyint NOT NULL,
  `compra_sub_totaliva` tinyint NOT NULL,
  `compra_total_general` tinyint NOT NULL,
  `compra_anulada` tinyint NOT NULL,
  `compra_fecha_anulada` tinyint NOT NULL,
  `compra_tienda` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_compra_verificacion_deta`
--

DROP TABLE IF EXISTS `vw_compra_verificacion_deta`;
/*!50001 DROP VIEW IF EXISTS `vw_compra_verificacion_deta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_compra_verificacion_deta` (
  `detaprod_faccom` tinyint NOT NULL,
  `compradeta_produc` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_cruce`
--

DROP TABLE IF EXISTS `vw_cruce`;
/*!50001 DROP VIEW IF EXISTS `vw_cruce`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_cruce` (
  `cruce_encab_ide` tinyint NOT NULL,
  `cruce_encab_monto` tinyint NOT NULL,
  `cruce_encab_fec` tinyint NOT NULL,
  `cruce_encab_pago_ide` tinyint NOT NULL,
  `cruce_encab_status` tinyint NOT NULL,
  `cruce_encab_borrado` tinyint NOT NULL,
  `cruce_encab_registro` tinyint NOT NULL,
  `pago_ide` tinyint NOT NULL,
  `forpago` tinyint NOT NULL,
  `monto` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `referencia` tinyint NOT NULL,
  `forpago_descrip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_cruce_detalle`
--

DROP TABLE IF EXISTS `vw_cruce_detalle`;
/*!50001 DROP VIEW IF EXISTS `vw_cruce_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_cruce_detalle` (
  `crudeta_ide` tinyint NOT NULL,
  `crudeta_encab_ide` tinyint NOT NULL,
  `crudeta_nota_ide` tinyint NOT NULL,
  `crudeta_monto` tinyint NOT NULL,
  `crudeta_observ` tinyint NOT NULL,
  `crudeta_fechareg` tinyint NOT NULL,
  `crudeta_estatus` tinyint NOT NULL,
  `crudeta_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_cuadre_caja`
--

DROP TABLE IF EXISTS `vw_cuadre_caja`;
/*!50001 DROP VIEW IF EXISTS `vw_cuadre_caja`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_cuadre_caja` (
  `clien_tipcli` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `ide` tinyint NOT NULL,
  `fact_nota` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `anulada` tinyint NOT NULL,
  `formapago` tinyint NOT NULL,
  `efectivo` tinyint NOT NULL,
  `debito` tinyint NOT NULL,
  `credito` tinyint NOT NULL,
  `alimentacion` tinyint NOT NULL,
  `cheque` tinyint NOT NULL,
  `transferencia` tinyint NOT NULL,
  `tienda` tinyint NOT NULL,
  `cliente` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_deposito`
--

DROP TABLE IF EXISTS `vw_deposito`;
/*!50001 DROP VIEW IF EXISTS `vw_deposito`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_deposito` (
  `deposito_ide` tinyint NOT NULL,
  `deposito_banco` tinyint NOT NULL,
  `banco_descrip` tinyint NOT NULL,
  `deposito_numerocuenta` tinyint NOT NULL,
  `deposito_monto` tinyint NOT NULL,
  `deposito_fechadeposito` tinyint NOT NULL,
  `deposito_fechadiaventa` tinyint NOT NULL,
  `deposito_fecharegistro` tinyint NOT NULL,
  `deposito_numero` tinyint NOT NULL,
  `deposito_tienda` tinyint NOT NULL,
  `deposito_borrado` tinyint NOT NULL,
  `empresa_nombre` tinyint NOT NULL,
  `empresa_nombre2` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desg_deta_vta`
--

DROP TABLE IF EXISTS `vw_desg_deta_vta`;
/*!50001 DROP VIEW IF EXISTS `vw_desg_deta_vta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desg_deta_vta` (
  `desgvtadet_ide` tinyint NOT NULL,
  `desgvtadet_desgvta_ide` tinyint NOT NULL,
  `desgvtadet_nota_ide` tinyint NOT NULL,
  `monto_venta` tinyint NOT NULL,
  `desgvtadet_fecproc` tinyint NOT NULL,
  `desgvtadet_status` tinyint NOT NULL,
  `desgvtadet_observ` tinyint NOT NULL,
  `desgvtadet_borrado` tinyint NOT NULL,
  `compra_ide` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `monto_nota` tinyint NOT NULL,
  `desgvta_ide` tinyint NOT NULL,
  `desg_ide` tinyint NOT NULL,
  `monto_contado` tinyint NOT NULL,
  `mto_flete` tinyint NOT NULL,
  `porc_asig` tinyint NOT NULL,
  `condicion` tinyint NOT NULL,
  `compra_monto_credito` tinyint NOT NULL,
  `compra_porc_desc` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `desgvta_clien_ide` tinyint NOT NULL,
  `total_nota` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose`
--

DROP TABLE IF EXISTS `vw_desglose`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose` (
  `desglose_ide` tinyint NOT NULL,
  `desglose_desc` tinyint NOT NULL,
  `desglose_status` tinyint NOT NULL,
  `desglose_fecha` tinyint NOT NULL,
  `desglose_borrado` tinyint NOT NULL,
  `desglose_fecha_proc` tinyint NOT NULL,
  `desglose_monto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose_cliente`
--

DROP TABLE IF EXISTS `vw_desglose_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose_cliente` (
  `desgcte_ide` tinyint NOT NULL,
  `desgcte_desg_ide` tinyint NOT NULL,
  `desgcte_clien_ide` tinyint NOT NULL,
  `desgcte_borrado` tinyint NOT NULL,
  `desgcte_fecha_proc` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `desglose_ide` tinyint NOT NULL,
  `descrip` tinyint NOT NULL,
  `cliente` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose_nota`
--

DROP TABLE IF EXISTS `vw_desglose_nota`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose_nota` (
  `desgnota_ide` tinyint NOT NULL,
  `desgnota_desglose_ide` tinyint NOT NULL,
  `desgnota_nota_ide` tinyint NOT NULL,
  `desgnota_status` tinyint NOT NULL,
  `desgnota_fecha_proc` tinyint NOT NULL,
  `desgnota_borrado` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `compra_borrado` tinyint NOT NULL,
  `compra_ide` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `compra_monto` tinyint NOT NULL,
  `compra_porc_desc` tinyint NOT NULL,
  `compra_condicion` tinyint NOT NULL,
  `compra_monto_credito` tinyint NOT NULL,
  `total_nota` tinyint NOT NULL,
  `disponible` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose_nota_dos`
--

DROP TABLE IF EXISTS `vw_desglose_nota_dos`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_dos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose_nota_dos` (
  `desgnota_ide` tinyint NOT NULL,
  `desgnota_desglose_ide` tinyint NOT NULL,
  `desgnota_nota_ide` tinyint NOT NULL,
  `desgnota_status` tinyint NOT NULL,
  `desgnota_borrado` tinyint NOT NULL,
  `desgnota_fecha_proc` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `compra_borrado` tinyint NOT NULL,
  `compra_ide` tinyint NOT NULL,
  `compra_monto` tinyint NOT NULL,
  `compra_porc_desc` tinyint NOT NULL,
  `compra_condicion` tinyint NOT NULL,
  `compra_monto_credito` tinyint NOT NULL,
  `total_nota` tinyint NOT NULL,
  `disponible` tinyint NOT NULL,
  `disponible2` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose_nota_sin_totales`
--

DROP TABLE IF EXISTS `vw_desglose_nota_sin_totales`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_sin_totales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose_nota_sin_totales` (
  `desgnota_ide` tinyint NOT NULL,
  `desgnota_desglose_ide` tinyint NOT NULL,
  `desgnota_nota_ide` tinyint NOT NULL,
  `desgnota_status` tinyint NOT NULL,
  `desgnota_fecha_proc` tinyint NOT NULL,
  `desgnota_borrado` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `compra_borrado` tinyint NOT NULL,
  `compra_ide` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `compra_monto` tinyint NOT NULL,
  `compra_porc_desc` tinyint NOT NULL,
  `compra_condicion` tinyint NOT NULL,
  `compra_monto_credito` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desglose_nota_tres`
--

DROP TABLE IF EXISTS `vw_desglose_nota_tres`;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_tres`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desglose_nota_tres` (
  `desgnota_ide` tinyint NOT NULL,
  `desgnota_desglose_ide` tinyint NOT NULL,
  `desgnota_nota_ide` tinyint NOT NULL,
  `desgnota_status` tinyint NOT NULL,
  `desgnota_borrado` tinyint NOT NULL,
  `desgnota_fecha_proc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desgvta`
--

DROP TABLE IF EXISTS `vw_desgvta`;
/*!50001 DROP VIEW IF EXISTS `vw_desgvta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desgvta` (
  `desgvta_ide` tinyint NOT NULL,
  `desgvta_desg_ide` tinyint NOT NULL,
  `desgvta_clien_ide` tinyint NOT NULL,
  `desgvta_porc_ide` tinyint NOT NULL,
  `desgvta_monto_cred` tinyint NOT NULL,
  `desgvta_monto_contado` tinyint NOT NULL,
  `desgvta_fecha_proc` tinyint NOT NULL,
  `desgvta_status` tinyint NOT NULL,
  `desgvta_borrado` tinyint NOT NULL,
  `desgvta_desc` tinyint NOT NULL,
  `desgvta_observ` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `cliente` tinyint NOT NULL,
  `porc_ide` tinyint NOT NULL,
  `porcentaje_nota` tinyint NOT NULL,
  `desgvta_vende_ide` tinyint NOT NULL,
  `vendedor` tinyint NOT NULL,
  `desgvta_porc_asig` tinyint NOT NULL,
  `desgvta_cond` tinyint NOT NULL,
  `desgvta_tipo` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_desgvta_detalle_uno`
--

DROP TABLE IF EXISTS `vw_desgvta_detalle_uno`;
/*!50001 DROP VIEW IF EXISTS `vw_desgvta_detalle_uno`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_desgvta_detalle_uno` (
  `desgvtadet_ide` tinyint NOT NULL,
  `desgvtadet_desgvta_ide` tinyint NOT NULL,
  `desgvtadet_nota_ide` tinyint NOT NULL,
  `desgvtadet_monto` tinyint NOT NULL,
  `desgvtadet_monto_contado` tinyint NOT NULL,
  `desgvtadet_mto_flete` tinyint NOT NULL,
  `desgvtadet_porc_asig` tinyint NOT NULL,
  `desgvtadet_condicion` tinyint NOT NULL,
  `desgvtadet_fecproc` tinyint NOT NULL,
  `desgvtadet_status` tinyint NOT NULL,
  `desgvtadet_observ` tinyint NOT NULL,
  `desgvtadet_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_deta_libro_venta`
--

DROP TABLE IF EXISTS `vw_deta_libro_venta`;
/*!50001 DROP VIEW IF EXISTS `vw_deta_libro_venta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_deta_libro_venta` (
  `Factura` tinyint NOT NULL,
  `BaseImp` tinyint NOT NULL,
  `MontoIVA` tinyint NOT NULL,
  `PorcenIVA` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_detallevta`
--

DROP TABLE IF EXISTS `vw_detallevta`;
/*!50001 DROP VIEW IF EXISTS `vw_detallevta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_detallevta` (
  `desgvtadet_ide` tinyint NOT NULL,
  `desgvtadet_desgvta_ide` tinyint NOT NULL,
  `desgvtadet_nota_ide` tinyint NOT NULL,
  `monto_venta` tinyint NOT NULL,
  `desgvtadet_fecproc` tinyint NOT NULL,
  `desgvtadet_status` tinyint NOT NULL,
  `desgvtadet_observ` tinyint NOT NULL,
  `desgvtadet_borrado` tinyint NOT NULL,
  `compra_ide` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `monto_nota` tinyint NOT NULL,
  `desgvtadet_porc_asig` tinyint NOT NULL,
  `desgvtadet_mto_flete` tinyint NOT NULL,
  `desgvtadet_monto_contado` tinyint NOT NULL,
  `desgvtadet_condicion` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura`
--

DROP TABLE IF EXISTS `vw_factura`;
/*!50001 DROP VIEW IF EXISTS `vw_factura`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura` (
  `fact_ide` tinyint NOT NULL,
  `fact_ide_tienda` tinyint NOT NULL,
  `fact_control_tienda` tinyint NOT NULL,
  `fact_fecha` tinyint NOT NULL,
  `fact_cliente` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `fact_sub_totalexe` tinyint NOT NULL,
  `fact_sub_totaliva` tinyint NOT NULL,
  `fact_descu_total` tinyint NOT NULL,
  `fact_subcondescu_total` tinyint NOT NULL,
  `fact_total_general` tinyint NOT NULL,
  `fact_anulada` tinyint NOT NULL,
  `fact_fecha_anulada` tinyint NOT NULL,
  `fact_tienda` tinyint NOT NULL,
  `clien_direcci` tinyint NOT NULL,
  `clien_telmovi` tinyint NOT NULL,
  `fact_pago_deuda` tinyint NOT NULL,
  `fact_forpag` tinyint NOT NULL,
  `fact_monto_deuda` tinyint NOT NULL,
  `fact_pago_electronico` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta`
--

DROP TABLE IF EXISTS `vw_factura_deta`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta` (
  `factdeta_ide` tinyint NOT NULL,
  `factdeta_factura` tinyint NOT NULL,
  `factdeta_produc` tinyint NOT NULL,
  `factdeta_cant` tinyint NOT NULL,
  `factdeta_precio` tinyint NOT NULL,
  `factdeta_monto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `factdeta_base` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta2`
--

DROP TABLE IF EXISTS `vw_factura_deta2`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta2` (
  `factdeta_ide` tinyint NOT NULL,
  `factdeta_factura` tinyint NOT NULL,
  `factdeta_produc` tinyint NOT NULL,
  `factdeta_cant` tinyint NOT NULL,
  `factdeta_precio` tinyint NOT NULL,
  `factdeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `factdeta_base` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `factdeta_producdeta` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `produc_color` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta3`
--

DROP TABLE IF EXISTS `vw_factura_deta3`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta3` (
  `factdeta_ide` tinyint NOT NULL,
  `factdeta_factura` tinyint NOT NULL,
  `factdeta_produc` tinyint NOT NULL,
  `factdeta_cant` tinyint NOT NULL,
  `factdeta_precio` tinyint NOT NULL,
  `factdeta_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `factdeta_base` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `factdeta_producdeta` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `produc_color` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta_temp`
--

DROP TABLE IF EXISTS `vw_factura_deta_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta_temp` (
  `factdetatemp_ide` tinyint NOT NULL,
  `factdetatemp_factura` tinyint NOT NULL,
  `factdetatemp_produc` tinyint NOT NULL,
  `factdetatemp_cant` tinyint NOT NULL,
  `factdetatemp_precio` tinyint NOT NULL,
  `factdetatemp_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta_temp1`
--

DROP TABLE IF EXISTS `vw_factura_deta_temp1`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta_temp1` (
  `factdetatemp_ide` tinyint NOT NULL,
  `factdetatemp_factura` tinyint NOT NULL,
  `factdetatemp_produc` tinyint NOT NULL,
  `factdetatemp_cant` tinyint NOT NULL,
  `factdetatemp_precio` tinyint NOT NULL,
  `factdetatemp_monto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `monto_base` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto7` tinyint NOT NULL,
  `Impuesto9` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta_temp2`
--

DROP TABLE IF EXISTS `vw_factura_deta_temp2`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta_temp2` (
  `factdetatemp_ide` tinyint NOT NULL,
  `factdetatemp_factura` tinyint NOT NULL,
  `factdetatemp_produc` tinyint NOT NULL,
  `factdetatemp_cant` tinyint NOT NULL,
  `factdetatemp_precio` tinyint NOT NULL,
  `factdetatemp_monto` tinyint NOT NULL,
  `precio_base` tinyint NOT NULL,
  `monto_base` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto7` tinyint NOT NULL,
  `Impuesto9` tinyint NOT NULL,
  `Base_Imponible10` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `factdetatemp_producdeta` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta_temp3`
--

DROP TABLE IF EXISTS `vw_factura_deta_temp3`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta_temp3` (
  `factdetatemp_ide` tinyint NOT NULL,
  `factdetatemp_factura` tinyint NOT NULL,
  `factdetatemp_produc` tinyint NOT NULL,
  `factdetatemp_cant` tinyint NOT NULL,
  `factdetatemp_precio` tinyint NOT NULL,
  `factdetatemp_monto` tinyint NOT NULL,
  `precio_base` tinyint NOT NULL,
  `monto_base` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `Impuesto7` tinyint NOT NULL,
  `Impuesto9` tinyint NOT NULL,
  `Base_Imponible10` tinyint NOT NULL,
  `Impuesto10` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `factdetatemp_producdeta` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_factura_deta_temp_resu`
--

DROP TABLE IF EXISTS `vw_factura_deta_temp_resu`;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp_resu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_factura_deta_temp_resu` (
  `Elementos` tinyint NOT NULL,
  `SubTotal` tinyint NOT NULL,
  `TotalImpuesto` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `factura` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_fichas`
--

DROP TABLE IF EXISTS `vw_fichas`;
/*!50001 DROP VIEW IF EXISTS `vw_fichas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_fichas` (
  `pefi_ide` tinyint NOT NULL,
  `pefi_tius` tinyint NOT NULL,
  `pefi_fich` tinyint NOT NULL,
  `pefi_estado` tinyint NOT NULL,
  `tius_ide` tinyint NOT NULL,
  `tius_descrip` tinyint NOT NULL,
  `tius_borrado` tinyint NOT NULL,
  `fich_ide` tinyint NOT NULL,
  `fich_descrip` tinyint NOT NULL,
  `fich_icono` tinyint NOT NULL,
  `fich_borrado` tinyint NOT NULL,
  `fich_orden` tinyint NOT NULL,
  `fich_url` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_forpago`
--

DROP TABLE IF EXISTS `vw_forpago`;
/*!50001 DROP VIEW IF EXISTS `vw_forpago`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_forpago` (
  `forpago_ide` tinyint NOT NULL,
  `forpago_descrip` tinyint NOT NULL,
  `forpago_moneda` tinyint NOT NULL,
  `forpago_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_impuesto`
--

DROP TABLE IF EXISTS `vw_impuesto`;
/*!50001 DROP VIEW IF EXISTS `vw_impuesto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_impuesto` (
  `impuesto_ide` tinyint NOT NULL,
  `impuesto_porcent` tinyint NOT NULL,
  `impuesto_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_kardex`
--

DROP TABLE IF EXISTS `vw_kardex`;
/*!50001 DROP VIEW IF EXISTS `vw_kardex`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_kardex` (
  `produc_ide` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `produc_servicio` tinyint NOT NULL,
  `produc_borrado` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `empresa_nombre` tinyint NOT NULL,
  `kardex_ide` tinyint NOT NULL,
  `kardex_tipo` tinyint NOT NULL,
  `kardex_producto` tinyint NOT NULL,
  `kardex_existen_ant` tinyint NOT NULL,
  `kardex_cantidad` tinyint NOT NULL,
  `kardex_existen_pos` tinyint NOT NULL,
  `kardex_factura` tinyint NOT NULL,
  `kardex_factura_num` tinyint NOT NULL,
  `kardex_fecha` tinyint NOT NULL,
  `kardex_tienda` tinyint NOT NULL,
  `kardex_precio_momento` tinyint NOT NULL,
  `kardex_borrado` tinyint NOT NULL,
  `kardex_observacion` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_kardex_mensual`
--

DROP TABLE IF EXISTS `vw_kardex_mensual`;
/*!50001 DROP VIEW IF EXISTS `vw_kardex_mensual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_kardex_mensual` (
  `kardex_ide` tinyint NOT NULL,
  `anomes` tinyint NOT NULL,
  `produc_ide` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `kardex_existen_ant` tinyint NOT NULL,
  `sum_cant` tinyint NOT NULL,
  `kardex_tipo` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `empresa_nombre` tinyint NOT NULL,
  `kardex_borrado` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_kardex_mensual_resumen`
--

DROP TABLE IF EXISTS `vw_kardex_mensual_resumen`;
/*!50001 DROP VIEW IF EXISTS `vw_kardex_mensual_resumen`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_kardex_mensual_resumen` (
  `anomes` tinyint NOT NULL,
  `produc_ide` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `empresa_nombre` tinyint NOT NULL,
  `kardex_borrado` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_marca`
--

DROP TABLE IF EXISTS `vw_marca`;
/*!50001 DROP VIEW IF EXISTS `vw_marca`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_marca` (
  `marca_ide` tinyint NOT NULL,
  `marca_descrip` tinyint NOT NULL,
  `marca_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_modelo`
--

DROP TABLE IF EXISTS `vw_modelo`;
/*!50001 DROP VIEW IF EXISTS `vw_modelo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_modelo` (
  `modelo_ide` tinyint NOT NULL,
  `modelo_descrip` tinyint NOT NULL,
  `modelo_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_moneda_tasa`
--

DROP TABLE IF EXISTS `vw_moneda_tasa`;
/*!50001 DROP VIEW IF EXISTS `vw_moneda_tasa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_moneda_tasa` (
  `moneda_ide` tinyint NOT NULL,
  `moneda_descrip` tinyint NOT NULL,
  `moneda_abreviada` tinyint NOT NULL,
  `monval_ide` tinyint NOT NULL,
  `monval_moneda_ide` tinyint NOT NULL,
  `monval_valor` tinyint NOT NULL,
  `monval_fecha_registro` tinyint NOT NULL,
  `monval_borrado` tinyint NOT NULL,
  `moneda_operacion` tinyint NOT NULL,
  `moneda_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_moneda_valor`
--

DROP TABLE IF EXISTS `vw_moneda_valor`;
/*!50001 DROP VIEW IF EXISTS `vw_moneda_valor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_moneda_valor` (
  `moneda_ide` tinyint NOT NULL,
  `moneda_descrip` tinyint NOT NULL,
  `moneda_abreviada` tinyint NOT NULL,
  `moneda_valor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre`
--

DROP TABLE IF EXISTS `vw_notaentre`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre` (
  `noen_ide` tinyint NOT NULL,
  `noen_ide_tienda` tinyint NOT NULL,
  `noen_control_tienda` tinyint NOT NULL,
  `noen_fecha` tinyint NOT NULL,
  `noen_cliente` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `noen_sub_totalexe` tinyint NOT NULL,
  `noen_sub_totaliva` tinyint NOT NULL,
  `noen_descu_total` tinyint NOT NULL,
  `noen_subcondescu_total` tinyint NOT NULL,
  `noen_total_general` tinyint NOT NULL,
  `noen_anulada` tinyint NOT NULL,
  `noen_fecha_anulada` tinyint NOT NULL,
  `noen_tienda` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre_deta_temp`
--

DROP TABLE IF EXISTS `vw_notaentre_deta_temp`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre_deta_temp` (
  `noendetatemp_ide` tinyint NOT NULL,
  `noendetatemp_notaentre` tinyint NOT NULL,
  `noendetatemp_produc` tinyint NOT NULL,
  `noendetatemp_cant` tinyint NOT NULL,
  `noendetatemp_precio` tinyint NOT NULL,
  `noendetatemp_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre_deta_temp1`
--

DROP TABLE IF EXISTS `vw_notaentre_deta_temp1`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre_deta_temp1` (
  `noendetatemp_ide` tinyint NOT NULL,
  `noendetatemp_notaentre` tinyint NOT NULL,
  `noendetatemp_produc` tinyint NOT NULL,
  `noendetatemp_cant` tinyint NOT NULL,
  `noendetatemp_precio` tinyint NOT NULL,
  `noendetatemp_monto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre_deta_temp2`
--

DROP TABLE IF EXISTS `vw_notaentre_deta_temp2`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre_deta_temp2` (
  `noendetatemp_ide` tinyint NOT NULL,
  `noendetatemp_notaentre` tinyint NOT NULL,
  `noendetatemp_produc` tinyint NOT NULL,
  `noendetatemp_cant` tinyint NOT NULL,
  `noendetatemp_precio` tinyint NOT NULL,
  `noendetatemp_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `noendetatemp_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre_deta_temp3`
--

DROP TABLE IF EXISTS `vw_notaentre_deta_temp3`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre_deta_temp3` (
  `noendetatemp_ide` tinyint NOT NULL,
  `noendetatemp_notaentre` tinyint NOT NULL,
  `noendetatemp_produc` tinyint NOT NULL,
  `noendetatemp_cant` tinyint NOT NULL,
  `noendetatemp_precio` tinyint NOT NULL,
  `noendetatemp_monto` tinyint NOT NULL,
  `Base_Imponible` tinyint NOT NULL,
  `Impuesto` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `noendetatemp_producdeta` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_notaentre_deta_temp_resu`
--

DROP TABLE IF EXISTS `vw_notaentre_deta_temp_resu`;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp_resu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_notaentre_deta_temp_resu` (
  `Elementos` tinyint NOT NULL,
  `SubTotal` tinyint NOT NULL,
  `TotalImpuesto` tinyint NOT NULL,
  `Total` tinyint NOT NULL,
  `notaentre` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_orden`
--

DROP TABLE IF EXISTS `vw_orden`;
/*!50001 DROP VIEW IF EXISTS `vw_orden`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_orden` (
  `orden_ide` tinyint NOT NULL,
  `orden_prove_ide` tinyint NOT NULL,
  `orden_clien_ide` tinyint NOT NULL,
  `orden_control` tinyint NOT NULL,
  `monto_ordenado` tinyint NOT NULL,
  `orden_fecha` tinyint NOT NULL,
  `orden_status` tinyint NOT NULL,
  `orden_tienda` tinyint NOT NULL,
  `orden_borrado` tinyint NOT NULL,
  `prove_tipo` tinyint NOT NULL,
  `prove_cedrif` tinyint NOT NULL,
  `prove_razonsocial` tinyint NOT NULL,
  `prove_alias` tinyint NOT NULL,
  `clien_codigo` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `orden_fecha_reg` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_pago`
--

DROP TABLE IF EXISTS `vw_pago`;
/*!50001 DROP VIEW IF EXISTS `vw_pago`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_pago` (
  `pago_ide` tinyint NOT NULL,
  `pago_forma` tinyint NOT NULL,
  `pago_monto` tinyint NOT NULL,
  `pago_fecha` tinyint NOT NULL,
  `pago_ref` tinyint NOT NULL,
  `pago_status` tinyint NOT NULL,
  `pago_proceso` tinyint NOT NULL,
  `pago_borrado` tinyint NOT NULL,
  `forpago_ide` tinyint NOT NULL,
  `forpago_descrip` tinyint NOT NULL,
  `forpago_moneda` tinyint NOT NULL,
  `pago_hora` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_permisos`
--

DROP TABLE IF EXISTS `vw_permisos`;
/*!50001 DROP VIEW IF EXISTS `vw_permisos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_permisos` (
  `perm_ide` tinyint NOT NULL,
  `perm_tius` tinyint NOT NULL,
  `perm_estado` tinyint NOT NULL,
  `sumo_ide` tinyint NOT NULL,
  `sumo_descrip` tinyint NOT NULL,
  `sumo_orden` tinyint NOT NULL,
  `sumo_icono` tinyint NOT NULL,
  `sumo_visible` tinyint NOT NULL,
  `sumo_url` tinyint NOT NULL,
  `modu_ide` tinyint NOT NULL,
  `modu_descrip` tinyint NOT NULL,
  `modu_icono` tinyint NOT NULL,
  `modu_visible` tinyint NOT NULL,
  `modu_orden` tinyint NOT NULL,
  `perm_sumo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_precio_unitario_venta`
--

DROP TABLE IF EXISTS `vw_precio_unitario_venta`;
/*!50001 DROP VIEW IF EXISTS `vw_precio_unitario_venta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_precio_unitario_venta` (
  `fact_ide_tienda` tinyint NOT NULL,
  `anomes` tinyint NOT NULL,
  `factdeta_produc` tinyint NOT NULL,
  `precio_venta_unitario` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_precio_unitario_venta1`
--

DROP TABLE IF EXISTS `vw_precio_unitario_venta1`;
/*!50001 DROP VIEW IF EXISTS `vw_precio_unitario_venta1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_precio_unitario_venta1` (
  `kardex_ide` tinyint NOT NULL,
  `kardex_producto` tinyint NOT NULL,
  `anomes` tinyint NOT NULL,
  `precio_venta_unitario` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_producto`
--

DROP TABLE IF EXISTS `vw_producto`;
/*!50001 DROP VIEW IF EXISTS `vw_producto`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_producto` (
  `produc_ide` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_costo` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `BASE` tinyint NOT NULL,
  `produc_foto` tinyint NOT NULL,
  `produc_color` tinyint NOT NULL,
  `produc_talla` tinyint NOT NULL,
  `produc_unidmed` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_medida` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `produc_servicio` tinyint NOT NULL,
  `produc_observa` tinyint NOT NULL,
  `produc_borrado` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `produc_stock` tinyint NOT NULL,
  `empresa_nombre` tinyint NOT NULL,
  `empresa_nombre2` tinyint NOT NULL,
  `produc_serializado` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL,
  `produc_preciodolar` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_producto_deta`
--

DROP TABLE IF EXISTS `vw_producto_deta`;
/*!50001 DROP VIEW IF EXISTS `vw_producto_deta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_producto_deta` (
  `produc_ide` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `produc_existen` tinyint NOT NULL,
  `produc_costo` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_precio2` tinyint NOT NULL,
  `produc_precio3` tinyint NOT NULL,
  `produc_precio4` tinyint NOT NULL,
  `produc_foto` tinyint NOT NULL,
  `produc_color` tinyint NOT NULL,
  `produc_talla` tinyint NOT NULL,
  `produc_unidmed` tinyint NOT NULL,
  `produc_medida` tinyint NOT NULL,
  `produc_marca` tinyint NOT NULL,
  `produc_modelo` tinyint NOT NULL,
  `produc_impuesto` tinyint NOT NULL,
  `produc_servicio` tinyint NOT NULL,
  `produc_observa` tinyint NOT NULL,
  `produc_borrado` tinyint NOT NULL,
  `produc_tienda` tinyint NOT NULL,
  `detaprod_ide` tinyint NOT NULL,
  `detaprod_imei` tinyint NOT NULL,
  `detaprod_serial` tinyint NOT NULL,
  `detaprod_borrado` tinyint NOT NULL,
  `detaprod_faccom` tinyint NOT NULL,
  `produc_unidmed_abrevia` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_productos_por_cobrar`
--

DROP TABLE IF EXISTS `vw_productos_por_cobrar`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_por_cobrar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_productos_por_cobrar` (
  `clien_ide` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_apelli1` tinyint NOT NULL,
  `clien_apelli2` tinyint NOT NULL,
  `noen_ide` tinyint NOT NULL,
  `noen_fecha` tinyint NOT NULL,
  `noen_forpag` tinyint NOT NULL,
  `noendeta_produc` tinyint NOT NULL,
  `produc_descrip` tinyint NOT NULL,
  `noendeta_cant` tinyint NOT NULL,
  `produc_precio1` tinyint NOT NULL,
  `produc_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_proveedor`
--

DROP TABLE IF EXISTS `vw_proveedor`;
/*!50001 DROP VIEW IF EXISTS `vw_proveedor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_proveedor` (
  `prove_ide` tinyint NOT NULL,
  `prove_tipo` tinyint NOT NULL,
  `prove_cedrif` tinyint NOT NULL,
  `prove_razonsocial` tinyint NOT NULL,
  `prove_alias` tinyint NOT NULL,
  `prove_fecreg` tinyint NOT NULL,
  `prove_direcci` tinyint NOT NULL,
  `prove_telcon` tinyint NOT NULL,
  `prove_correo` tinyint NOT NULL,
  `prove_contriespec` tinyint NOT NULL,
  `prove_ubimap` tinyint NOT NULL,
  `prove_borrado` tinyint NOT NULL,
  `tipcli_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_recdetalle`
--

DROP TABLE IF EXISTS `vw_recdetalle`;
/*!50001 DROP VIEW IF EXISTS `vw_recdetalle`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_recdetalle` (
  `recdeta_ide` tinyint NOT NULL,
  `recdeta_encab_ide` tinyint NOT NULL,
  `recdeta_venta_ide` tinyint NOT NULL,
  `recdeta_tipo_ide` tinyint NOT NULL,
  `recdeta_forpago_ide` tinyint NOT NULL,
  `recdetaa_monto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_recencab`
--

DROP TABLE IF EXISTS `vw_recencab`;
/*!50001 DROP VIEW IF EXISTS `vw_recencab`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_recencab` (
  `recencab_ide` tinyint NOT NULL,
  `recencab_num` tinyint NOT NULL,
  `recencab_fec` tinyint NOT NULL,
  `recencab_vende_ide` tinyint NOT NULL,
  `recencab_clien_ide` tinyint NOT NULL,
  `vendedor` tinyint NOT NULL,
  `cliente` tinyint NOT NULL,
  `recencab_status` tinyint NOT NULL,
  `recencab_borrado` tinyint NOT NULL,
  `recencab_monto` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_recibo_nota`
--

DROP TABLE IF EXISTS `vw_recibo_nota`;
/*!50001 DROP VIEW IF EXISTS `vw_recibo_nota`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_recibo_nota` (
  `recnota_ide` tinyint NOT NULL,
  `recnota_encab_ide` tinyint NOT NULL,
  `recnota_venta_ide` tinyint NOT NULL,
  `recnota_status` tinyint NOT NULL,
  `recnota_borrado` tinyint NOT NULL,
  `venta_num` tinyint NOT NULL,
  `descuento` tinyint NOT NULL,
  `monto_contado` tinyint NOT NULL,
  `monto_credito` tinyint NOT NULL,
  `flete` tinyint NOT NULL,
  `venta_condicion` tinyint NOT NULL,
  `monto_aplicado` tinyint NOT NULL,
  `venta_saldo` tinyint NOT NULL,
  `recencab_num` tinyint NOT NULL,
  `recencab_fec` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_recibo_pago`
--

DROP TABLE IF EXISTS `vw_recibo_pago`;
/*!50001 DROP VIEW IF EXISTS `vw_recibo_pago`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_recibo_pago` (
  `recpago_ide` tinyint NOT NULL,
  `recpago_encab_ide` tinyint NOT NULL,
  `recpago_pago_ide` tinyint NOT NULL,
  `recpago_status` tinyint NOT NULL,
  `recpago_borrado` tinyint NOT NULL,
  `monto` tinyint NOT NULL,
  `pago_forma` tinyint NOT NULL,
  `recpago_fecha_proceso` tinyint NOT NULL,
  `formapago` tinyint NOT NULL,
  `forpago_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_requisicion`
--

DROP TABLE IF EXISTS `vw_requisicion`;
/*!50001 DROP VIEW IF EXISTS `vw_requisicion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_requisicion` (
  `req_ide` tinyint NOT NULL,
  `req_clien_ide` tinyint NOT NULL,
  `req_vende_ide` tinyint NOT NULL,
  `req_monto` tinyint NOT NULL,
  `monto_ordenado` tinyint NOT NULL,
  `req_fecha` tinyint NOT NULL,
  `req_status` tinyint NOT NULL,
  `req_tienda` tinyint NOT NULL,
  `req_fecha_reg` tinyint NOT NULL,
  `req_borrado` tinyint NOT NULL,
  `clien_codigo` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `clien_zona` tinyint NOT NULL,
  `vende_tipo` tinyint NOT NULL,
  `vende_cedrif` tinyint NOT NULL,
  `vende_razonsocial` tinyint NOT NULL,
  `vende_alias` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_requisicion_deta`
--

DROP TABLE IF EXISTS `vw_requisicion_deta`;
/*!50001 DROP VIEW IF EXISTS `vw_requisicion_deta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_requisicion_deta` (
  `reqdet_ide` tinyint NOT NULL,
  `reqdet_req_ide` tinyint NOT NULL,
  `reqdet_prove_ide` tinyint NOT NULL,
  `prove_tipo` tinyint NOT NULL,
  `prove_cedrif` tinyint NOT NULL,
  `prove_razonsocial` tinyint NOT NULL,
  `prove_alias` tinyint NOT NULL,
  `reqdet_ord_ide` tinyint NOT NULL,
  `orden_control` tinyint NOT NULL,
  `orden_fecha` tinyint NOT NULL,
  `reqdet_monto` tinyint NOT NULL,
  `reqdet_fecha_reg` tinyint NOT NULL,
  `reqdet_status` tinyint NOT NULL,
  `reqdet_borrado` tinyint NOT NULL,
  `req_clien_ide` tinyint NOT NULL,
  `clien_tipcli` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_submodul`
--

DROP TABLE IF EXISTS `vw_submodul`;
/*!50001 DROP VIEW IF EXISTS `vw_submodul`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_submodul` (
  `sumo_ide` tinyint NOT NULL,
  `sumo_descrip` tinyint NOT NULL,
  `modu_descrip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_sumanotapordesglose`
--

DROP TABLE IF EXISTS `vw_sumanotapordesglose`;
/*!50001 DROP VIEW IF EXISTS `vw_sumanotapordesglose`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_sumanotapordesglose` (
  `suma_venta` tinyint NOT NULL,
  `nota` tinyint NOT NULL,
  `desgvtadet_nota_ide` tinyint NOT NULL,
  `monto_nota` tinyint NOT NULL,
  `desg_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_tbl_cruce_pago`
--

DROP TABLE IF EXISTS `vw_tbl_cruce_pago`;
/*!50001 DROP VIEW IF EXISTS `vw_tbl_cruce_pago`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_tbl_cruce_pago` (
  `cruce_encab_ide` tinyint NOT NULL,
  `cruce_encab_monto` tinyint NOT NULL,
  `cruce_encab_fec` tinyint NOT NULL,
  `cruce_encab_pago_ide` tinyint NOT NULL,
  `cruce_encab_status` tinyint NOT NULL,
  `cruce_encab_borrado` tinyint NOT NULL,
  `cruce_encab_registro` tinyint NOT NULL,
  `pago_ide` tinyint NOT NULL,
  `pago_forma` tinyint NOT NULL,
  `pago_monto` tinyint NOT NULL,
  `pago_fecha` tinyint NOT NULL,
  `pago_ref` tinyint NOT NULL,
  `pago_status` tinyint NOT NULL,
  `pago_borrado` tinyint NOT NULL,
  `forpago_ide` tinyint NOT NULL,
  `forpago_descrip` tinyint NOT NULL,
  `forpago_moneda` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_tbl_marca_wh`
--

DROP TABLE IF EXISTS `vw_tbl_marca_wh`;
/*!50001 DROP VIEW IF EXISTS `vw_tbl_marca_wh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_tbl_marca_wh` (
  `marca_ide` tinyint NOT NULL,
  `marca_descrip` tinyint NOT NULL,
  `marca_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_tipcli`
--

DROP TABLE IF EXISTS `vw_tipcli`;
/*!50001 DROP VIEW IF EXISTS `vw_tipcli`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_tipcli` (
  `tipcli_ide` tinyint NOT NULL,
  `tipcli_descrip` tinyint NOT NULL,
  `tipcli_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_total_nota_desglose`
--

DROP TABLE IF EXISTS `vw_total_nota_desglose`;
/*!50001 DROP VIEW IF EXISTS `vw_total_nota_desglose`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_total_nota_desglose` (
  `total_nota` tinyint NOT NULL,
  `desgvtadet_nota_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_unidmed`
--

DROP TABLE IF EXISTS `vw_unidmed`;
/*!50001 DROP VIEW IF EXISTS `vw_unidmed`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_unidmed` (
  `unidmed_ide` tinyint NOT NULL,
  `unidmed_abrevia` tinyint NOT NULL,
  `unidmed_descrip` tinyint NOT NULL,
  `unidmed_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_union_factura_notaentrega`
--

DROP TABLE IF EXISTS `vw_union_factura_notaentrega`;
/*!50001 DROP VIEW IF EXISTS `vw_union_factura_notaentrega`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_union_factura_notaentrega` (
  `ide` tinyint NOT NULL,
  `fact_nota` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `anulada` tinyint NOT NULL,
  `formapago` tinyint NOT NULL,
  `efectivo` tinyint NOT NULL,
  `debito` tinyint NOT NULL,
  `credito` tinyint NOT NULL,
  `alimentacion` tinyint NOT NULL,
  `cheque` tinyint NOT NULL,
  `transferencia` tinyint NOT NULL,
  `tienda` tinyint NOT NULL,
  `cliente` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_usuarios`
--

DROP TABLE IF EXISTS `vw_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_usuarios` (
  `usua_ide` tinyint NOT NULL,
  `usua_numiden` tinyint NOT NULL,
  `usua_nombre` tinyint NOT NULL,
  `usua_apelli` tinyint NOT NULL,
  `usua_fecnaci` tinyint NOT NULL,
  `usua_direcci` tinyint NOT NULL,
  `usua_telmovi` tinyint NOT NULL,
  `usua_tipo` tinyint NOT NULL,
  `usua_correo` tinyint NOT NULL,
  `usua_login` tinyint NOT NULL,
  `usua_clave` tinyint NOT NULL,
  `usua_estado` tinyint NOT NULL,
  `usua_visible` tinyint NOT NULL,
  `usua_tius` tinyint NOT NULL,
  `tius_descrip` tinyint NOT NULL,
  `tius_ide` tinyint NOT NULL,
  `usua_tienda` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vendedor`
--

DROP TABLE IF EXISTS `vw_vendedor`;
/*!50001 DROP VIEW IF EXISTS `vw_vendedor`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_vendedor` (
  `vende_ide` tinyint NOT NULL,
  `vende_tipo` tinyint NOT NULL,
  `vende_cedrif` tinyint NOT NULL,
  `vende_razonsocial` tinyint NOT NULL,
  `vende_alias` tinyint NOT NULL,
  `vende_fecreg` tinyint NOT NULL,
  `vende_direcci` tinyint NOT NULL,
  `vende_telcon` tinyint NOT NULL,
  `vende_correo` tinyint NOT NULL,
  `vende_contriespec` tinyint NOT NULL,
  `vende_ubimap` tinyint NOT NULL,
  `vende_borrado` tinyint NOT NULL,
  `tipcli_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_venta`
--

DROP TABLE IF EXISTS `vw_venta`;
/*!50001 DROP VIEW IF EXISTS `vw_venta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_venta` (
  `venta_ide` tinyint NOT NULL,
  `venta_num` tinyint NOT NULL,
  `venta_fecha` tinyint NOT NULL,
  `venta_vende_ide` tinyint NOT NULL,
  `venta_tienda` tinyint NOT NULL,
  `venta_fecha_registro` tinyint NOT NULL,
  `vendedor` tinyint NOT NULL,
  `alias_vendedor` tinyint NOT NULL,
  `venta_compra_ide` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `cliente_venta` tinyint NOT NULL,
  `venta_clien_ide` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `clien_nombre2` tinyint NOT NULL,
  `venta_porc_desc` tinyint NOT NULL,
  `venta_monto` tinyint NOT NULL,
  `venta_monto_credito` tinyint NOT NULL,
  `venta_flete` tinyint NOT NULL,
  `venta_condicion` tinyint NOT NULL,
  `venta_borrado` tinyint NOT NULL,
  `venta_saldo` tinyint NOT NULL,
  `venta_porc_asig` tinyint NOT NULL,
  `venta_tipo` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL,
  `venta_origen_ide` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_venta2`
--

DROP TABLE IF EXISTS `vw_venta2`;
/*!50001 DROP VIEW IF EXISTS `vw_venta2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_venta2` (
  `venta_ide` tinyint NOT NULL,
  `venta_num` tinyint NOT NULL,
  `venta_fecha` tinyint NOT NULL,
  `venta_vende_ide` tinyint NOT NULL,
  `venta_tienda` tinyint NOT NULL,
  `venta_fecha_registro` tinyint NOT NULL,
  `venta_compra_ide` tinyint NOT NULL,
  `venta_clien_ide` tinyint NOT NULL,
  `venta_porc_desc` tinyint NOT NULL,
  `venta_monto` tinyint NOT NULL,
  `venta_monto_credito` tinyint NOT NULL,
  `venta_flete` tinyint NOT NULL,
  `venta_condicion` tinyint NOT NULL,
  `venta_borrado` tinyint NOT NULL,
  `venta_saldo` tinyint NOT NULL,
  `venta_porc_asig` tinyint NOT NULL,
  `venta_tipo` tinyint NOT NULL,
  `venta_origen_ide` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `vendedor` tinyint NOT NULL,
  `cliente_venta` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL,
  `origenvta_descrip` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_wh_tbl_compra`
--

DROP TABLE IF EXISTS `vw_wh_tbl_compra`;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_compra`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_wh_tbl_compra` (
  `compra_ide` tinyint NOT NULL,
  `compra_num` tinyint NOT NULL,
  `compra_clien_ide` tinyint NOT NULL,
  `compra_fecha` tinyint NOT NULL,
  `compra_fecha_envio` tinyint NOT NULL,
  `compra_fecha_recep` tinyint NOT NULL,
  `compra_porc_desc` tinyint NOT NULL,
  `compra_monto` tinyint NOT NULL,
  `compra_destino` tinyint NOT NULL,
  `compra_condicion` tinyint NOT NULL,
  `compra_tienda` tinyint NOT NULL,
  `compra_borrado` tinyint NOT NULL,
  `compra_fecha_registro` tinyint NOT NULL,
  `compra_monto_credito` tinyint NOT NULL,
  `compra_tasa` tinyint NOT NULL,
  `compra_flete` tinyint NOT NULL,
  `clien_ide` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `nombre1` tinyint NOT NULL,
  `compra_prov_ide` tinyint NOT NULL,
  `prove_razonsocial` tinyint NOT NULL,
  `compra_bultos` tinyint NOT NULL,
  `compra_sustitucion` tinyint NOT NULL,
  `compra_estatus` tinyint NOT NULL,
  `compra_tipo` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL,
  `tipvta_color` tinyint NOT NULL,
  `tipvta_com_compra` tinyint NOT NULL,
  `tipvta_com_venta` tinyint NOT NULL,
  `comision` tinyint NOT NULL,
  `compra_comision_ex` tinyint NOT NULL,
  `abono` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_wh_tbl_tasa`
--

DROP TABLE IF EXISTS `vw_wh_tbl_tasa`;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_tasa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_wh_tbl_tasa` (
  `tasa_ide` tinyint NOT NULL,
  `descrip` tinyint NOT NULL,
  `tasa_monto` tinyint NOT NULL,
  `tasa_borrado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_wh_tbl_venta`
--

DROP TABLE IF EXISTS `vw_wh_tbl_venta`;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_venta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_wh_tbl_venta` (
  `venta_ide` tinyint NOT NULL,
  `venta_origen_ide` tinyint NOT NULL,
  `venta_compra_ide` tinyint NOT NULL,
  `venta_num` tinyint NOT NULL,
  `venta_fecha` tinyint NOT NULL,
  `venta_porc_desc` tinyint NOT NULL,
  `venta_monto` tinyint NOT NULL,
  `venta_monto_credito` tinyint NOT NULL,
  `venta_flete` tinyint NOT NULL,
  `venta_saldo` tinyint NOT NULL,
  `venta_condicion` tinyint NOT NULL,
  `venta_clien_ide` tinyint NOT NULL,
  `venta_vende_ide` tinyint NOT NULL,
  `venta_tienda` tinyint NOT NULL,
  `venta_fecha_registro` tinyint NOT NULL,
  `venta_borrado` tinyint NOT NULL,
  `clien_numiden` tinyint NOT NULL,
  `clien_nombre1` tinyint NOT NULL,
  `vendedor` tinyint NOT NULL,
  `venta_porc_asig` tinyint NOT NULL,
  `venta_tipo` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL,
  `tipvta_com_compra` tinyint NOT NULL,
  `tipvta_com_venta` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_wh_tipoventa`
--

DROP TABLE IF EXISTS `vw_wh_tipoventa`;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tipoventa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_wh_tipoventa` (
  `tipvta_ide` tinyint NOT NULL,
  `tipvta_descrip` tinyint NOT NULL,
  `tipvta_porc_desc` tinyint NOT NULL,
  `tipvta_prov_ide` tinyint NOT NULL,
  `tipvta_borrado` tinyint NOT NULL,
  `tipvta_com_compra` tinyint NOT NULL,
  `tipvta_com_venta` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wh_tbl_compra`
--

DROP TABLE IF EXISTS `wh_tbl_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_compra` (
  `compra_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `compra_prov_ide` int(11) NOT NULL COMMENT 'ide del proveedor',
  `compra_num` varchar(20) DEFAULT NULL,
  `compra_clien_ide` int(11) NOT NULL COMMENT 'Ide del Cliente',
  `compra_fecha` date DEFAULT NULL COMMENT 'Fecha de la nota',
  `compra_fecha_envio` date DEFAULT NULL,
  `compra_fecha_recep` date DEFAULT NULL,
  `compra_porc_desc` double DEFAULT NULL,
  `compra_monto` double DEFAULT NULL,
  `compra_monto_credito` double DEFAULT NULL,
  `compra_comision_ex` double DEFAULT NULL COMMENT 'Comision Excel',
  `compra_bultos` double DEFAULT 0,
  `compra_tasa` double DEFAULT NULL,
  `compra_flete` double DEFAULT NULL,
  `compra_sustitucion` varchar(30) DEFAULT NULL COMMENT 'Numero de nota de sustitucion',
  `compra_condicion` int(11) DEFAULT NULL COMMENT '0 Contado, 1 Credito',
  `compra_tipo` int(11) DEFAULT NULL COMMENT 'tipo de factura',
  `compra_destino` int(11) DEFAULT NULL COMMENT '0 Oficina si cobra flete, 1 directo no cobra flete',
  `compra_tienda` int(11) DEFAULT NULL,
  `compra_fecha_registro` date DEFAULT current_timestamp() COMMENT 'Fecha proceso',
  `compra_estatus` int(11) DEFAULT 0 COMMENT 'Estatus de la venta',
  `compra_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`compra_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' Tabla tbl_compra para Notas de entrega de Proveedores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_compra`
--

LOCK TABLES `wh_tbl_compra` WRITE;
/*!40000 ALTER TABLE `wh_tbl_compra` DISABLE KEYS */;
INSERT INTO `wh_tbl_compra` VALUES (2,0,'2222',5,'2024-05-13','2024-05-14','2024-05-14',22,22,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,1,'2024-06-20',0,0),(4,0,'34381',5,'2024-05-31','2024-08-01','2024-08-02',25,955.21,NULL,NULL,NULL,NULL,NULL,NULL,1,2,NULL,1,'2024-06-20',0,0),(5,0,'33478',74,'2024-05-14','2024-07-01','2024-07-02',0,69.37,NULL,NULL,NULL,NULL,NULL,NULL,0,3,NULL,1,'2024-06-20',0,0),(6,0,'33479',74,'2024-05-14','2024-07-30','2024-01-01',0,23.99,NULL,NULL,NULL,NULL,NULL,'33478',0,4,NULL,1,'2024-06-20',0,0),(7,0,'33715',74,'2024-05-13',NULL,NULL,33,124.62,NULL,NULL,NULL,NULL,NULL,NULL,0,5,NULL,1,'2024-06-20',0,0),(8,0,'33566',74,'2024-05-13',NULL,NULL,25,66.73,NULL,NULL,NULL,NULL,NULL,NULL,0,6,NULL,1,'2024-06-20',0,0),(9,0,'33481',74,'2024-05-14',NULL,NULL,25,240.07,NULL,NULL,NULL,NULL,NULL,NULL,0,7,NULL,1,'2024-06-20',0,0),(10,0,'33482',74,'2024-05-13',NULL,NULL,25,162.06,NULL,NULL,NULL,NULL,NULL,NULL,0,8,NULL,1,'2024-06-20',0,0),(11,0,'33484',74,'2024-05-13',NULL,NULL,25,127.19,NULL,NULL,NULL,NULL,NULL,NULL,0,9,NULL,1,'2024-06-20',0,0),(12,0,'33485',74,'2024-05-13',NULL,NULL,25,97.88,NULL,NULL,NULL,NULL,NULL,NULL,0,10,NULL,1,'2024-06-20',0,0),(13,0,'33486',74,'2024-05-13',NULL,NULL,25,81.87,NULL,NULL,NULL,NULL,NULL,NULL,0,11,NULL,1,'2024-06-20',0,0),(14,0,'33487',74,'2024-05-13',NULL,NULL,25,100.61,NULL,NULL,NULL,NULL,NULL,NULL,0,12,NULL,1,'2024-06-20',0,0),(15,0,'33468',74,'2024-05-13',NULL,NULL,25,41.4,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(16,0,'33568',74,'2024-05-13',NULL,NULL,25,266.93,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(17,0,'33567',74,'2024-05-13',NULL,NULL,25,190.87,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(18,0,'33302',94,'2024-05-09',NULL,NULL,25,26.54,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(19,0,'33301',94,'2024-05-09',NULL,NULL,25,492.66,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(20,0,'34658',94,'2024-05-31',NULL,NULL,25,307.37,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(21,0,'34664',94,'2024-05-13',NULL,NULL,25,150.91,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(22,0,'34668',94,'2024-05-31',NULL,NULL,25,157.6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(23,0,'34669',94,'2024-05-31',NULL,NULL,25,156.87,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-20',0,0),(24,0,'34380',5,'2024-05-28',NULL,NULL,33,40.2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-24',0,0),(25,0,'34381',5,'2024-05-28',NULL,NULL,25,955.31,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,1,'2024-06-24',0,0),(26,0,'34382',5,'2024-05-28',NULL,NULL,25,472.76,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-24',0,0),(27,0,'26881',125,'2024-01-12',NULL,NULL,15,173.92,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(28,0,'27089',125,'2024-01-15',NULL,NULL,15,237.41,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(29,0,'27087',125,'2024-01-15',NULL,NULL,15,256.86,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(30,0,'26769',124,'2024-01-11',NULL,NULL,15,516.28,774.68,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(31,0,'26770',124,'2024-01-11',NULL,NULL,30,1160.88,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(32,0,'26772',124,'2024-01-11',NULL,NULL,30,404.46,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-06-28',0,0),(33,0,'Taller 989',94,'2024-05-13',NULL,NULL,25,140.03,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,1,'2024-07-03',0,0),(51,2,'35258',64,'2024-05-13',NULL,NULL,25,249.68,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(54,2,'35255',64,'2024-06-13',NULL,NULL,25,458.33,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(55,2,'35260',64,'2024-06-13',NULL,NULL,25,1337.58,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(56,2,'35262',64,'2024-06-13',NULL,NULL,25,68.13,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(58,2,'35263',64,'2024-06-13',NULL,NULL,0,229.48,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(59,2,'35265',64,'2024-06-13',NULL,NULL,25,1589.67,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-08',0,0),(61,2,'35266',64,'2024-06-13',NULL,NULL,25,590.17,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-08',0,0),(63,2,'35267',64,'2024-06-13',NULL,NULL,25,895.74,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-08',0,0),(64,2,'35268',64,'2024-06-13',NULL,NULL,25,548.59,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(72,2,'35269',64,'2024-06-13',NULL,NULL,25,171.71,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(73,2,'35270',64,'2024-06-13',NULL,NULL,25,660.13,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(74,2,'35271',64,'2024-05-13',NULL,NULL,25,1260.74,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(75,2,'35272',64,'2024-06-13',NULL,NULL,25,912.68,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(76,2,'35273',64,'2024-06-13',NULL,NULL,25,316.96,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,'2024-07-09',0,0),(77,2,'32537',1,'2024-04-17',NULL,NULL,25,2524.74,3366.32,NULL,NULL,NULL,NULL,NULL,0,NULL,1,1,'2024-07-09',0,0),(78,2,'32538',1,'2024-04-17',NULL,NULL,25,161.06,214.75,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(79,2,'32527',1,'2024-04-17',NULL,NULL,25,210.37,280.49,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(80,2,'32532',1,'2024-04-17',NULL,NULL,25,241.99,322.66,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(81,2,'32533',1,'2024-04-17',NULL,NULL,33,185.59,277,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(83,2,'32535',1,'2024-01-01',NULL,NULL,25,65.99,87.99,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(84,2,'32536',1,'2024-04-17',NULL,NULL,33,5.64,8.42,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(85,2,'32521',1,'2024-01-01',NULL,NULL,25,5.32,7.09,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(86,2,'32531',1,'2024-04-17',NULL,NULL,33,276.04,412,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(87,2,'32545',1,'2024-04-17',NULL,NULL,25,1179.85,1573.14,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(88,2,'32547',1,'2024-01-01',NULL,NULL,25,891.09,1188.11,NULL,NULL,NULL,NULL,NULL,0,1,1,1,'2024-07-09',0,0),(89,2,'32534',1,'2024-04-17',NULL,NULL,0,23.99,23.99,NULL,NULL,NULL,NULL,NULL,0,5,1,1,'2024-07-09',0,0),(90,2,'32548',1,'2024-04-17',NULL,NULL,25,55.17,73.57,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2024-07-09',0,0),(92,2,'32550',1,'2024-04-17',NULL,NULL,25,1158.62,1544.82,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2024-07-09',0,0),(93,2,'32551',1,'2024-01-01',NULL,NULL,25,199.41,265.88,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2024-07-09',0,0),(94,2,'32552',1,'2024-04-17',NULL,NULL,25,73.98,98.64,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2024-07-09',0,0),(95,2,'32549',1,'2024-04-17',NULL,NULL,25,1003.54,1338.05,NULL,NULL,NULL,NULL,NULL,1,1,1,1,'2024-07-09',0,0),(97,2,'33053',124,'2024-01-01',NULL,NULL,25,658.31,877.74,NULL,NULL,36.47,6.58,NULL,0,1,2,1,'2024-07-11',0,0),(98,1,'taller 991',123,'2024-04-17',NULL,NULL,25,0,66.23,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(99,1,'TALLER 990',136,'2024-04-17',NULL,NULL,25,55.94,74.58,NULL,NULL,36.45,19.2,NULL,0,1,2,1,'2024-07-11',0,0),(100,1,'taller 992',127,'2024-04-17',NULL,NULL,25,16.24,16.24,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(101,1,'taller 993',131,'2024-04-17',NULL,NULL,25,37,36.99,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(102,1,'taller 994',137,'2024-04-17','0000-00-00','0000-00-00',25,37,88.42,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(103,1,'taller 995',138,'2024-04-17','0000-00-00','0000-00-00',25,10,15.93,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(104,1,'taller 996',26,'2024-04-17','0000-00-00','0000-00-00',25,30,44.76,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-11',0,0),(106,1,'taller 997',140,'2024-04-17','0000-00-00','0000-00-00',25,30,183.51,NULL,NULL,36.45,0,NULL,0,1,2,1,'2024-07-15',0,0),(107,1,'taller 998',129,'2024-04-17','0000-00-00','0000-00-00',25,30,79.98,NULL,NULL,36.3,0,NULL,0,1,2,1,'2024-07-15',0,0),(108,2,'32530',1,'2024-04-17',NULL,NULL,25,555.14,740.19,NULL,NULL,36.3,5.55,NULL,0,NULL,1,1,'2024-07-15',0,0),(109,2,'36061',142,'2024-07-04',NULL,NULL,20,809.25,1011.56,NULL,NULL,36.48,8.09,NULL,0,1,1,1,'2024-07-16',0,0),(110,2,'36062',142,'2024-07-04',NULL,NULL,20,5.75,7.19,NULL,NULL,36.48,0.06,NULL,0,1,1,1,'2024-07-16',0,0),(111,2,'taller 999',95,'2024-07-10',NULL,NULL,20,8.64,9,NULL,NULL,36.48,0.09,NULL,0,1,1,1,'2024-07-17',0,0),(112,2,'taller 1000',142,'2024-07-10',NULL,NULL,20,9.84,12.3,NULL,NULL,36.48,0.1,NULL,0,1,1,1,'2024-07-17',0,0),(113,2,'34092',143,'2024-05-13',NULL,NULL,0,85.61,85.61,NULL,NULL,36.57,0.86,NULL,0,1,0,1,'2024-07-18',0,0),(114,2,'prueba 5001',119,'2024-05-13',NULL,NULL,25,308.64,411.52,NULL,NULL,36.45,3.09,NULL,0,1,0,1,'2024-07-19',0,0),(115,2,'34647',94,'2024-05-31',NULL,NULL,25,218.21,290.94,NULL,NULL,36.54,2.18,NULL,0,1,0,1,'2024-07-20',0,0),(116,2,'26518',144,'2024-01-08',NULL,NULL,15,560.43,659.33,NULL,NULL,36.01,5.6,NULL,0,1,0,1,'2024-07-22',0,0),(117,2,'26795',124,'2024-01-11',NULL,NULL,30,1284.08,1834.4,NULL,NULL,35.94,12.84,NULL,1,1,0,1,'2024-07-22',0,0),(118,2,'26880',126,'2024-01-12',NULL,NULL,15,578.79,680.93,NULL,NULL,35.96,0,NULL,0,1,0,1,'2024-07-22',0,0),(119,2,'31303',137,'2024-03-22',NULL,NULL,25,361.6,482.13,NULL,NULL,36.32,3.62,NULL,0,1,0,1,'2024-07-29',0,0),(120,2,'31419',124,'2024-03-25',NULL,NULL,0,128.62,128.62,NULL,NULL,36.36,1.29,NULL,0,1,0,1,'2024-07-29',0,0),(121,2,'31420',124,'2024-03-25',NULL,NULL,33,907.83,1354.97,NULL,NULL,36.36,9.08,NULL,0,1,0,1,'2024-07-29',0,0),(122,2,'31421',124,'2024-03-25',NULL,NULL,25,1065.62,1420.82,NULL,NULL,36.36,10.66,NULL,0,1,0,1,'2024-07-29',0,0),(123,2,'31422',124,'2024-05-13',NULL,NULL,25,763.41,1017.89,NULL,NULL,36.36,7.63,NULL,0,1,0,1,'2024-07-29',0,0),(124,2,'31423',124,'2024-05-13',NULL,NULL,25,848.26,1404.08,NULL,NULL,36.36,8.48,NULL,0,1,0,1,'2024-07-29',0,0),(125,2,'31424',124,'2024-03-25',NULL,NULL,25,500.28,667.05,NULL,NULL,36.36,5,NULL,0,1,0,1,'2024-07-29',0,0),(126,2,'31432',124,'2024-05-13',NULL,NULL,20,705.57,881.96,NULL,NULL,36.36,7.06,NULL,0,2,0,1,'2024-07-29',0,0),(127,2,'35382',1,'2024-06-15',NULL,NULL,25,703.75,938.34,NULL,NULL,36.42,7.04,NULL,0,1,0,1,'2024-07-30',0,0),(128,2,'35371',1,'2024-06-14',NULL,NULL,25,366.07,488.1,NULL,NULL,36.43,3.66,NULL,0,1,0,1,'2024-07-30',0,0),(129,2,'35196',1,'2024-06-13',NULL,NULL,25,226.31,301.75,NULL,NULL,36.45,2.26,NULL,0,1,0,1,'2024-07-30',0,0),(130,2,'35188',1,'2024-05-13',NULL,NULL,33,481.73,719,NULL,NULL,36.45,4.82,NULL,0,1,0,1,'2024-07-30',0,0),(132,2,'35191',1,'2024-05-13',NULL,NULL,25,1170.26,1560.34,NULL,NULL,36.45,11.7,NULL,0,1,0,1,'2024-07-30',0,0),(133,2,'35194',1,'2024-05-13',NULL,NULL,25,629.71,839.61,NULL,NULL,36.45,6.3,NULL,0,1,0,1,'2024-07-30',0,0),(134,2,'35190',1,'2024-06-13',NULL,NULL,25,740.65,987.53,NULL,NULL,36.45,7.41,NULL,0,1,0,1,'2024-07-30',0,0),(135,2,'35187',1,'2024-06-13',NULL,NULL,0,103.96,103.96,NULL,NULL,36.45,1.04,NULL,0,1,0,1,'2024-07-30',0,0),(136,2,'35193',1,'2024-06-13',NULL,NULL,25,546.7,728.93,NULL,NULL,36.45,5.47,NULL,0,1,0,1,'2024-07-30',0,0),(137,2,'35192',1,'2024-06-13',NULL,NULL,25,649.32,865.76,NULL,NULL,36.45,6.49,NULL,0,1,0,1,'2024-07-30',0,0),(138,2,'35186',1,'2024-05-13',NULL,NULL,25,95.71,127.61,NULL,NULL,36.45,0.96,NULL,0,1,0,1,'2024-07-30',0,0),(139,2,'36446',136,'2024-07-16',NULL,NULL,20,231.98,289.98,NULL,NULL,36.5,2.32,NULL,0,2,0,1,'2024-08-01',0,0),(140,2,'36623',136,'2024-07-20',NULL,NULL,20,348.03,435.04,NULL,NULL,36.61,3.48,NULL,0,1,1,1,'2024-08-01',0,0),(141,2,'36624',136,'2024-07-20',NULL,NULL,20,198,247.5,NULL,NULL,36.61,1.98,NULL,0,1,1,1,'2024-08-01',0,0),(142,2,'36625',136,'2024-07-20',NULL,NULL,20,260.73,325.91,NULL,NULL,36.61,2.61,NULL,0,1,0,1,'2024-08-01',0,0),(143,2,'36626',136,'2024-07-20',NULL,NULL,20,452.64,565.8,NULL,NULL,36.61,4.53,NULL,0,1,1,1,'2024-08-01',0,0),(144,2,'36627',136,'2024-07-20',NULL,NULL,20,206.6,258.26,NULL,NULL,36.61,2.07,NULL,0,1,1,1,'2024-08-01',0,0),(145,2,'36628',136,'2024-05-13',NULL,NULL,20,224.53,280.66,NULL,NULL,36.61,2.25,NULL,0,1,0,1,'2024-08-01',0,0),(146,2,'36629',136,'2024-05-13',NULL,NULL,20,451.43,564.29,NULL,NULL,36.61,4.51,NULL,0,1,1,1,'2024-08-01',0,0),(147,2,'36630',136,'2024-07-20',NULL,NULL,20,346.94,433.68,NULL,NULL,36.61,3.47,NULL,0,1,1,1,'2024-08-01',0,0),(148,2,'36631',136,'2024-07-20',NULL,NULL,20,191.47,239.34,NULL,NULL,36.61,1.91,NULL,0,1,1,1,'2024-08-01',0,0),(149,2,'36632',136,'2024-07-20',NULL,NULL,20,50.42,63.02,NULL,NULL,36.61,0.5,NULL,0,1,0,1,'2024-08-01',0,0),(150,2,'1000',4,'2024-05-13',NULL,NULL,15,350.76,412.65,NULL,NULL,36.35,5,NULL,0,1,1,1,'2024-08-01',0,0),(151,2,'54535353453',5,'2024-05-13',NULL,NULL,25,30.94,41.25,NULL,NULL,36.36,0,NULL,0,1,0,1,'2024-08-01',0,0),(152,2,'666666',8,'2024-05-13',NULL,NULL,30,288.78,412.54,NULL,NULL,36.36,NULL,NULL,0,1,0,1,'2024-08-01',0,0),(153,2,'55555',5,'2024-05-13',NULL,NULL,15,350.66,412.54,NULL,NULL,36.36,0,NULL,0,1,0,1,'2024-08-01',0,0),(154,2,'888888',4,'2024-05-13',NULL,NULL,10,371.29,412.54,NULL,NULL,36.36,0,NULL,0,1,0,1,'2024-08-01',0,0),(155,2,'76757567567',141,'2024-05-13',NULL,NULL,15,350.66,412.54,NULL,NULL,36.36,3.51,NULL,0,1,3,1,'2024-08-01',0,0),(156,2,'36633',136,'2024-07-20',NULL,NULL,0,192.98,192.98,NULL,NULL,36.61,1.93,NULL,0,1,1,1,'2024-08-01',0,0),(157,2,'66666',5,'2024-01-01',NULL,NULL,20,80,100,NULL,NULL,36.65,0.8,NULL,0,1,1,1,'2024-08-02',0,0),(159,2,'54658',3,'2024-05-31','0000-00-00','0000-00-00',25,307.37,409.83,NULL,NULL,0,0,'',0,NULL,NULL,1,'2024-06-20',0,0),(160,2,'54664',3,'2024-05-13','0000-00-00','0000-00-00',25,150.91,201.21,NULL,NULL,0,0,'',0,NULL,NULL,1,'2024-06-20',0,0),(161,2,'54668',3,'2024-05-31','0000-00-00','0000-00-00',25,157.6,210.13,NULL,NULL,0,0,'',0,NULL,NULL,1,'2024-06-20',0,0),(162,2,'54669',3,'2024-05-31','0000-00-00','0000-00-00',25,156.87,209.17,NULL,NULL,0,0,'',0,NULL,NULL,1,'2024-06-20',0,0),(163,2,'Taller 589',3,'2024-05-13','0000-00-00','0000-00-00',25,140.03,140.03,NULL,NULL,0,0,'',0,NULL,NULL,1,'2024-07-03',0,0),(164,2,'prueba 5002',119,'2024-05-13','0000-00-00','0000-00-00',25,308.64,411.52,NULL,NULL,36.45,3.09,'',0,1,0,1,'2024-07-19',0,0),(165,2,'62100',119,'2024-05-13','0000-00-00','0000-00-00',25,30.94,41.25,NULL,NULL,36.5,0,NULL,0,1,0,1,'2024-08-06',0,0),(166,2,'33067',124,'2024-05-02',NULL,NULL,0,120.2,120.2,NULL,NULL,36.47,1.2,NULL,0,1,1,1,'2024-08-06',0,0),(169,2,'33025',124,'2024-05-02',NULL,NULL,25,187.44,249.92,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-06',0,0),(170,2,'33027',124,'2024-05-02',NULL,NULL,25,509.93,679.9,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(172,2,'33034',124,'2024-05-02',NULL,NULL,25,754.04,1005.39,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(173,2,'33036',124,'2024-05-02',NULL,NULL,25,450.2,600.27,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(174,2,'33037',124,'2024-05-02',NULL,NULL,25,379.57,506.1,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(175,2,'33040',124,'2024-05-02',NULL,NULL,25,421.3,561.74,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(176,2,'33041',124,'2024-05-02',NULL,NULL,25,236.17,314.89,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(177,2,'33030',124,'2024-05-02',NULL,NULL,25,647.49,863.32,NULL,NULL,36.47,0,NULL,1,1,0,1,'2024-08-07',0,0),(178,2,'33137',42,'2024-05-04',NULL,NULL,33,4669.96,6970.09,NULL,NULL,36.58,0,NULL,0,1,0,1,'2024-08-08',0,0),(179,2,'36131',141,'2024-05-13',NULL,NULL,20,149.17,186.46,NULL,NULL,36.51,1.49,NULL,0,1,1,1,'2024-08-09',0,0),(180,2,'36141',141,'2024-07-08',NULL,NULL,20,240.26,300.32,NULL,NULL,36.51,2.4,NULL,0,1,1,1,'2024-08-09',0,0),(181,2,'36781',146,'2024-07-25',NULL,NULL,20,604.19,755.24,NULL,NULL,36.56,6.04,NULL,0,1,1,1,'2024-08-10',0,0),(182,2,'36782',146,'2024-07-25',NULL,NULL,20,111.22,139.03,NULL,NULL,36.56,1.11,NULL,0,1,1,1,'2024-08-10',0,0),(183,2,'36783',146,'2024-07-25',NULL,NULL,0,104.52,104.52,NULL,NULL,36.56,1.05,NULL,0,1,1,1,'2024-08-10',0,0),(184,1,'taller prueba 9000',3,'2024-05-13',NULL,NULL,20,80,100,NULL,NULL,36.45,0,NULL,0,1,0,1,'2024-08-13',0,0),(185,2,'36917',140,'2024-08-02',NULL,NULL,20,378.66,473.32,NULL,0,36.64,0,NULL,0,1,0,1,'2024-08-19',0,0),(186,2,'50002',52,'2024-08-19',NULL,NULL,33,274.14,409.17,NULL,0,36.66,2.74,NULL,0,1,1,1,'2024-08-19',0,0),(187,2,'32759',129,'2024-04-25',NULL,NULL,25,693.71,924.95,NULL,0,36.42,0,NULL,0,1,0,1,'2024-08-20',0,0),(188,2,'32757',129,'2024-04-25',NULL,NULL,0,59.97,59.97,NULL,0,36.42,0,NULL,0,1,0,1,'2024-08-20',0,0),(189,2,'32758',129,'2024-04-25',NULL,NULL,33,385.26,575.01,NULL,0,36.42,0,NULL,0,1,0,1,'2024-08-20',0,0),(190,2,'34036',140,'2024-05-20',NULL,NULL,30,883.09,1261.56,NULL,0,36.57,0,NULL,0,1,0,1,'2024-08-23',0,0),(191,2,'33874',140,'2024-05-17',NULL,NULL,0,34.68,34.68,NULL,0,34.68,0,NULL,0,1,0,1,'2024-08-23',0,0),(192,2,'33876',140,'2024-05-17',NULL,NULL,33,187.62,280.02,NULL,0,36.63,0,NULL,0,1,0,1,'2024-08-23',0,0),(193,2,'33878',140,'2024-05-17',NULL,NULL,30,2259.76,3228.23,NULL,0,36.63,0,NULL,0,1,0,1,'2024-08-23',0,0),(194,2,'nota 9001',9,'2024-04-20',NULL,NULL,0,50000,50000,NULL,0,37.06,0,NULL,0,1,0,1,'2024-08-23',0,0),(195,2,'37826',124,'2024-08-21',NULL,NULL,20,892.72,1115.9,NULL,0,36.68,0,NULL,0,1,1,1,'2024-08-26',0,0),(196,2,'37176',27,'2024-08-09',NULL,NULL,20,2020.72,2525.9,NULL,0,36.68,0,NULL,0,1,1,1,'2024-08-29',0,0),(197,2,'prueba autoasia',128,'2024-09-04',NULL,NULL,5,26.06,27.43,NULL,0,36.45,0,NULL,0,2,1,1,'2024-09-04',0,0),(198,2,'prueba autoasia 3000',128,'2024-09-04',NULL,NULL,33,670,1000,NULL,0,50,50,NULL,0,4,1,1,'2024-09-04',0,0),(199,2,'39110',62,'2024-09-10',NULL,NULL,0,36.69,36.69,NULL,0,36.31,0.37,NULL,0,4,1,1,'2024-09-10',3,0),(200,2,'37193',94,'2024-08-09','0000-00-00','0000-00-00',0,632.25,632.25,NULL,0,36.68,6.32,'',0,3,1,1,'2024-08-23',3,0),(201,2,'37194',94,'2024-08-09','0000-00-00','0000-00-00',20,313.35,391.69,NULL,0,36.68,3.13,'',0,1,1,1,'2024-08-23',3,0),(202,2,'37195',94,'2024-08-09','0000-00-00','0000-00-00',20,478.84,598.55,NULL,0,36.68,4.79,'',0,1,1,1,'2024-08-23',3,0),(203,2,'37197',94,'2024-08-09','0000-00-00','0000-00-00',20,271.99,339.99,NULL,0,36.68,2.72,'',0,1,1,1,'2024-08-23',3,0),(204,2,'37196',94,'2024-08-09','0000-00-00','0000-00-00',20,128.06,160.08,NULL,0,36.68,1.28,'',0,1,1,1,'2024-08-23',3,0),(205,2,'35639',31,'2024-06-20',NULL,NULL,25,152.04,202.72,NULL,0,36.38,0,NULL,0,1,0,1,'2024-09-24',0,0),(206,3,'51235 FERIA',160,'2024-08-07',NULL,'2024-08-09',20,466.86,583.58,NULL,0,36.66,0,NULL,0,1,0,1,'2024-09-24',0,0),(207,2,'prueba 500',128,'2024-09-25',NULL,NULL,0,275.03,275.03,NULL,0,36.36,0,NULL,0,2,0,1,'2024-09-25',0,0);
/*!40000 ALTER TABLE `wh_tbl_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_desgcliente`
--

DROP TABLE IF EXISTS `wh_tbl_desgcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_desgcliente` (
  `desgcte_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `desgcte_desg_ide` int(11) DEFAULT NULL COMMENT 'Ide del desglose',
  `desgcte_clien_ide` int(11) DEFAULT NULL COMMENT 'Ide de la nota',
  `desgcte_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  `desgcte_fecha_proc` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  PRIMARY KEY (`desgcte_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla desglose cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_desgcliente`
--

LOCK TABLES `wh_tbl_desgcliente` WRITE;
/*!40000 ALTER TABLE `wh_tbl_desgcliente` DISABLE KEYS */;
INSERT INTO `wh_tbl_desgcliente` VALUES (1,1,74,0,'2024-06-28'),(2,2,3,0,'2024-06-28'),(3,2,4,0,'2024-06-28'),(4,3,124,0,'2024-06-28'),(5,3,125,0,'2024-06-28'),(6,4,124,0,'2024-06-29'),(7,4,125,0,'2024-06-29'),(8,8,94,0,'2024-07-03'),(9,9,5,0,'2024-07-05'),(10,10,1,0,'2024-07-09'),(11,10,140,0,'2024-07-15'),(12,10,127,0,'2024-07-15'),(13,10,131,0,'2024-07-15'),(14,10,26,0,'2024-07-15'),(15,10,123,0,'2024-07-15'),(16,10,137,0,'2024-07-15'),(17,10,138,0,'2024-07-15'),(18,10,136,0,'2024-07-15'),(19,10,129,0,'2024-07-15'),(20,11,142,0,'2024-07-16'),(21,11,95,0,'2024-07-17'),(22,12,NULL,0,'2024-07-19'),(23,12,119,0,'2024-07-19'),(24,12,32,0,'2024-07-19'),(25,13,136,0,'2024-08-01'),(26,6,5,0,'2024-08-02'),(27,14,1,0,'2024-08-03'),(28,14,2,0,'2024-08-03'),(29,14,3,0,'2024-08-03'),(30,14,4,0,'2024-08-03'),(31,15,3,0,'2024-08-03'),(32,16,119,0,'2024-08-06'),(33,17,119,0,'2024-08-06'),(34,18,124,0,'2024-08-07'),(35,19,141,0,'2024-08-09'),(36,20,146,0,'2024-08-10'),(37,21,27,0,'2024-08-29'),(38,22,62,0,'2024-09-10'),(39,23,94,0,'2024-09-11');
/*!40000 ALTER TABLE `wh_tbl_desgcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_desglose`
--

DROP TABLE IF EXISTS `wh_tbl_desglose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_desglose` (
  `desglose_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de desglose',
  `desglose_desc` varchar(50) DEFAULT NULL COMMENT 'Descripcion',
  `desglose_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `desglose_fecha` date DEFAULT NULL COMMENT 'Fecha de desglose',
  `desglose_monto` double DEFAULT 0 COMMENT 'monto desglose',
  `desglose_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  `desglose_fecha_proc` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  PRIMARY KEY (`desglose_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla desglose';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_desglose`
--

LOCK TABLES `wh_tbl_desglose` WRITE;
/*!40000 ALTER TABLE `wh_tbl_desglose` DISABLE KEYS */;
INSERT INTO `wh_tbl_desglose` VALUES (1,'abraham 17 may 2024',1,'2024-05-17',0,0,'2024-06-28'),(2,'desglose prueba de dos clientes',0,'2024-07-01',0,0,'2024-06-28'),(3,'DESGLOSE DE JAICAR CON DOS CLIENTES',1,'2024-01-20',0,0,'2024-06-28'),(4,'PRUEBA DOS - DESGLOSE DE JAICAR - EDIKSON CON DOS ',1,'2013-07-16',0,0,'2024-06-29'),(6,'PRUEBA 6 ALEXIS',1,'2024-07-03',0,0,'2024-07-03'),(7,'desglose 77777',1,'2024-07-03',0,0,'2024-07-03'),(8,'WILMER AGUILAR 07JUN2024	',1,'2024-06-07',0,0,'2024-07-03'),(9,'PRUEBA 05 DE JULIO',1,'2024-07-05',0,0,'2024-07-05'),(10,'JONATHAN 23-04-2024 PRUEBA',1,'2024-04-23',0,0,'2024-07-09'),(11,'DOUGLAS JOSE MEDINA DUQUE  10-07-2024',1,'2024-07-10',0,0,'2024-07-16'),(12,'PRUEBA DESGLOSE IDE 12',1,'2024-07-19',0,0,'2024-07-19'),(13,'DESGLOSE JOSE ROA 22 JULIO 2024',1,'2024-07-22',0,0,'2024-08-01'),(15,'DESGLOSE DE ABEL 03 DE AGOSTO',1,'2024-08-03',0,0,'2024-08-03'),(16,'PRUEBA 06/08/2024',1,'2024-08-06',0,0,'2024-08-06'),(17,'PRUEBA  06/08/2024  DESGLOSE 17',1,'2024-08-06',0,0,'2024-08-06'),(18,'JAICAR 14 MAY 2024',1,'2024-08-07',4781.53,0,'2024-08-07'),(19,'FIGUEROA 08JUL2024',0,'2024-07-08',0,0,'2024-08-09'),(20,'GERSON MORALES 06-08-2024',0,'2024-08-06',894.27,0,'2024-08-10'),(21,'PRUEBA DESARROLLO FREDY VILLAMIZAR 37176',0,'2024-08-29',2525.9,0,'2024-08-29'),(22,'PRUEBA  IRIS 39110',0,'2024-09-10',0,0,'2024-09-10'),(23,'WILMER AGUILAR 37193-197 15-AGOSTO-24',0,'2024-08-15',0,0,'2024-09-11');
/*!40000 ALTER TABLE `wh_tbl_desglose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_desglose_nota`
--

DROP TABLE IF EXISTS `wh_tbl_desglose_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_desglose_nota` (
  `desgnota_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `desgnota_desglose_ide` int(11) DEFAULT NULL COMMENT 'Ide del desglose',
  `desgnota_nota_ide` int(11) DEFAULT NULL COMMENT 'Ide de la nota',
  `desgnota_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `desgnota_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  `desgnota_fecha_proc` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  PRIMARY KEY (`desgnota_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla desglose';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_desglose_nota`
--

LOCK TABLES `wh_tbl_desglose_nota` WRITE;
/*!40000 ALTER TABLE `wh_tbl_desglose_nota` DISABLE KEYS */;
INSERT INTO `wh_tbl_desglose_nota` VALUES (1,1,15,0,0,'2024-06-28'),(2,1,16,0,0,'2024-06-28'),(3,1,17,0,0,'2024-06-28'),(4,1,8,0,0,'2024-06-28'),(5,1,9,0,0,'2024-06-28'),(6,1,10,0,0,'2024-06-28'),(7,1,11,0,0,'2024-06-28'),(8,1,12,0,0,'2024-06-28'),(9,1,13,0,0,'2024-06-28'),(10,1,14,0,0,'2024-06-28'),(11,3,30,0,0,'2024-06-28'),(12,3,27,0,0,'2024-06-28'),(13,3,28,0,0,'2024-06-28'),(14,3,29,0,0,'2024-06-28'),(15,4,30,0,0,'2024-06-29'),(18,4,27,0,0,'2024-06-29'),(19,4,28,0,0,'2024-06-29'),(20,4,29,0,0,'2024-06-29'),(21,8,21,0,0,'2024-07-03'),(22,8,20,0,0,'2024-07-03'),(23,8,22,0,0,'2024-07-03'),(24,8,23,0,0,'2024-07-03'),(25,8,33,0,0,'2024-07-03'),(26,9,4,0,0,'2024-07-05'),(27,10,77,0,0,'2024-07-09'),(28,10,78,0,0,'2024-07-09'),(29,10,79,0,0,'2024-07-09'),(30,10,80,0,0,'2024-07-09'),(31,10,81,0,0,'2024-07-09'),(32,10,89,0,0,'2024-07-09'),(33,10,83,0,0,'2024-07-09'),(34,10,85,0,0,'2024-07-09'),(35,10,86,0,0,'2024-07-09'),(36,10,87,0,0,'2024-07-09'),(37,10,88,0,0,'2024-07-09'),(39,10,90,0,0,'2024-07-09'),(40,10,92,0,0,'2024-07-09'),(41,10,93,0,0,'2024-07-09'),(42,10,94,0,0,'2024-07-09'),(43,10,95,0,0,'2024-07-09'),(44,10,84,0,0,'2024-07-09'),(45,10,99,0,0,'2024-07-11'),(46,10,100,0,0,'2024-07-11'),(47,10,101,0,0,'2024-07-11'),(48,10,98,0,0,'2024-07-11'),(49,10,102,0,0,'2024-07-11'),(50,10,103,0,0,'2024-07-11'),(51,10,104,0,0,'2024-07-11'),(52,10,106,0,0,'2024-07-15'),(53,10,100,0,0,'2024-07-15'),(54,10,101,0,0,'2024-07-15'),(55,10,104,0,0,'2024-07-15'),(56,10,98,0,0,'2024-07-15'),(57,10,102,0,0,'2024-07-15'),(58,10,103,0,0,'2024-07-15'),(59,10,99,0,0,'2024-07-15'),(60,10,108,0,0,'2024-07-15'),(61,10,107,0,0,'2024-07-15'),(62,11,109,0,0,'2024-07-16'),(63,11,110,0,0,'2024-07-16'),(64,11,111,0,0,'2024-07-17'),(65,11,112,0,0,'2024-07-17'),(66,12,114,0,0,'2024-07-19'),(67,13,140,0,0,'2024-08-01'),(68,13,141,0,0,'2024-08-01'),(69,13,142,0,0,'2024-08-01'),(70,13,143,0,0,'2024-08-01'),(71,13,144,0,0,'2024-08-01'),(72,13,145,0,0,'2024-08-01'),(73,13,146,0,0,'2024-08-01'),(74,13,147,0,0,'2024-08-01'),(75,13,148,0,0,'2024-08-01'),(76,13,149,0,0,'2024-08-01'),(77,13,156,0,0,'2024-08-01'),(78,6,157,0,0,'2024-08-02'),(79,15,159,0,0,'2024-08-03'),(80,15,160,0,0,'2024-08-03'),(81,15,161,0,0,'2024-08-03'),(82,15,162,0,0,'2024-08-03'),(83,15,163,0,0,'2024-08-03'),(84,16,114,0,0,'2024-08-06'),(85,17,164,0,0,'2024-08-06'),(86,17,165,0,0,'2024-08-06'),(87,18,169,0,0,'2024-08-07'),(88,18,170,0,0,'2024-08-07'),(89,18,177,0,0,'2024-08-07'),(90,18,172,0,0,'2024-08-07'),(91,18,173,0,0,'2024-08-07'),(92,18,174,0,0,'2024-08-07'),(93,18,175,0,0,'2024-08-07'),(94,18,176,0,0,'2024-08-07'),(95,19,179,0,0,'2024-08-09'),(96,19,180,0,0,'2024-08-09'),(102,20,181,1,0,'2024-08-10'),(103,20,182,0,0,'2024-08-10'),(104,21,196,0,0,'2024-08-29'),(105,2,159,0,0,'2024-09-04'),(106,2,154,0,0,'2024-09-04'),(108,22,199,0,0,'2024-09-10'),(109,23,200,0,0,'2024-09-11'),(110,23,201,0,0,'2024-09-11'),(111,23,202,0,0,'2024-09-11'),(112,23,204,0,0,'2024-09-11'),(113,23,203,0,0,'2024-09-11');
/*!40000 ALTER TABLE `wh_tbl_desglose_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_desgvta`
--

DROP TABLE IF EXISTS `wh_tbl_desgvta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_desgvta` (
  `desgvta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `desgvta_desg_ide` int(11) NOT NULL COMMENT 'Ide del desglose',
  `desgvta_clien_ide` int(11) DEFAULT NULL COMMENT 'Ide cliente',
  `desgvta_vende_ide` int(11) DEFAULT NULL,
  `desgvta_tipo` int(11) DEFAULT 1 COMMENT 'tipo de venta',
  `desgvta_porc_ide` int(11) DEFAULT NULL COMMENT 'Ide porcentaje de descuento',
  `desgvta_porc_asig` int(11) DEFAULT 0 COMMENT 'Porcentaje asignado',
  `desgvta_cond` int(11) DEFAULT NULL COMMENT 'Condicion de Venta 0 = Contado, 1 = credito',
  `desgvta_monto_cred` double DEFAULT NULL COMMENT 'Monto credito',
  `desgvta_monto_contado` double DEFAULT NULL COMMENT 'Monto contado',
  `desgvta_fecha_proc` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  `desgvta_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `desgvta_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  `desgvta_desc` varchar(20) DEFAULT NULL,
  `desgvta_observ` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`desgvta_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla desglose_venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_desgvta`
--

LOCK TABLES `wh_tbl_desgvta` WRITE;
/*!40000 ALTER TABLE `wh_tbl_desgvta` DISABLE KEYS */;
INSERT INTO `wh_tbl_desgvta` VALUES (1,1,123,2,1,8,NULL,NULL,NULL,NULL,'2024-06-28',0,0,NULL,NULL),(2,1,123,2,1,8,NULL,NULL,NULL,NULL,'2024-06-28',0,0,NULL,NULL),(3,3,123,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(4,3,26,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(5,4,123,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(6,4,26,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(7,4,123,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(8,4,124,2,1,6,NULL,NULL,NULL,NULL,'2024-06-29',0,0,NULL,NULL),(9,4,26,2,1,6,NULL,NULL,NULL,NULL,'2024-07-01',0,0,NULL,NULL),(10,4,126,2,1,6,NULL,NULL,NULL,NULL,'2024-07-01',0,0,NULL,NULL),(11,4,123,2,1,6,NULL,NULL,NULL,NULL,'2024-07-01',0,0,NULL,NULL),(12,4,123,2,1,6,NULL,NULL,NULL,NULL,'2024-07-01',0,0,NULL,NULL),(13,4,124,2,1,6,NULL,NULL,NULL,NULL,'2024-07-01',0,0,NULL,NULL),(14,8,76,2,1,8,NULL,NULL,NULL,NULL,'2024-07-03',0,0,NULL,NULL),(15,8,4,2,1,8,NULL,NULL,NULL,NULL,'2024-07-03',0,0,NULL,NULL),(16,8,56,2,1,8,NULL,NULL,NULL,NULL,'2024-07-03',0,0,NULL,NULL),(17,8,106,2,1,8,NULL,NULL,NULL,NULL,'2024-07-03',0,0,NULL,NULL),(18,8,0,2,1,0,NULL,NULL,NULL,NULL,'2024-07-04',0,0,NULL,NULL),(19,9,4,2,1,8,NULL,NULL,NULL,NULL,'2024-07-05',0,0,NULL,NULL),(20,10,127,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(21,10,128,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(22,10,51,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(23,10,129,2,1,9,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(24,10,131,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(25,10,131,2,1,9,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(26,10,131,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(27,10,132,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(28,10,133,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(29,10,134,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(30,10,135,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(32,10,94,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(33,10,26,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(34,10,136,2,1,8,NULL,NULL,NULL,NULL,'2024-07-10',0,0,NULL,NULL),(36,10,123,2,1,10,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(37,10,123,2,1,9,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(38,10,123,2,1,8,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(39,10,123,2,1,8,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(40,10,137,2,1,8,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(41,10,138,2,1,8,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(42,10,139,2,1,8,NULL,NULL,NULL,NULL,'2024-07-11',0,0,NULL,NULL),(43,10,140,2,1,8,NULL,NULL,NULL,NULL,'2024-07-15',0,0,NULL,NULL),(44,10,129,2,1,8,NULL,NULL,NULL,NULL,'2024-07-15',0,0,NULL,NULL),(45,11,142,2,1,7,NULL,NULL,NULL,NULL,'2024-07-16',0,0,NULL,NULL),(47,11,95,2,1,7,NULL,NULL,NULL,NULL,'2024-07-17',0,0,NULL,NULL),(48,12,NULL,2,1,8,NULL,NULL,NULL,NULL,'2024-07-19',0,0,NULL,NULL),(49,12,117,2,1,8,NULL,NULL,NULL,NULL,'2024-07-19',0,0,NULL,NULL),(50,6,5,2,1,7,0,NULL,NULL,NULL,'2024-08-02',0,0,NULL,NULL),(51,15,1,2,1,8,0,NULL,NULL,NULL,'2024-08-03',0,0,NULL,NULL),(52,15,2,2,1,8,0,NULL,NULL,NULL,'2024-08-03',0,0,NULL,NULL),(53,15,3,2,1,8,0,NULL,NULL,NULL,'2024-08-03',0,0,NULL,NULL),(54,15,4,2,1,8,0,NULL,NULL,NULL,'2024-08-03',0,0,NULL,NULL),(55,7,4,2,1,8,0,NULL,NULL,NULL,'2024-08-05',0,0,NULL,NULL),(56,16,4,6,1,8,0,NULL,NULL,NULL,'2024-08-06',0,0,NULL,NULL),(57,17,9,6,1,8,0,NULL,NULL,NULL,'2024-08-06',0,0,NULL,NULL),(58,17,123,6,1,8,0,NULL,NULL,NULL,'2024-08-06',0,0,NULL,NULL),(59,17,125,5,1,8,0,NULL,NULL,NULL,'2024-08-06',0,0,NULL,NULL),(60,18,145,6,1,8,0,NULL,NULL,NULL,'2024-08-07',0,0,NULL,NULL),(61,19,141,6,1,7,0,NULL,NULL,NULL,'2024-08-09',0,0,NULL,NULL),(62,19,139,6,1,7,0,NULL,NULL,NULL,'2024-08-09',0,0,NULL,NULL),(63,19,24,6,1,7,0,NULL,NULL,NULL,'2024-08-09',0,0,NULL,NULL),(68,20,148,7,1,7,6,NULL,NULL,NULL,'2024-08-13',1,0,NULL,NULL),(71,20,149,4,1,7,6,NULL,NULL,NULL,'2024-08-16',0,0,NULL,NULL),(75,21,151,7,1,7,5,0,NULL,NULL,'2024-08-29',1,0,NULL,NULL),(78,21,151,7,1,7,11,1,NULL,NULL,'2024-08-29',0,0,NULL,NULL),(79,2,141,7,1,7,15,0,NULL,NULL,'2024-09-04',1,0,NULL,NULL),(80,2,4,7,1,8,20,0,NULL,NULL,'2024-09-04',0,0,NULL,NULL),(81,2,6,7,2,8,15,0,NULL,NULL,'2024-09-04',1,0,NULL,NULL),(82,2,8,7,3,8,10,0,NULL,NULL,'2024-09-04',1,0,NULL,NULL),(83,22,128,4,2,8,20,0,NULL,NULL,'2024-09-10',1,0,NULL,NULL),(84,23,156,6,1,7,10,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(85,23,134,6,3,10,0,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(86,23,152,6,3,10,0,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(87,23,157,6,3,10,0,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(88,23,136,6,1,7,20,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(89,23,21,6,1,7,20,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(90,23,116,6,3,10,0,0,NULL,NULL,'2024-09-11',0,0,NULL,NULL),(91,23,123,6,3,10,0,0,NULL,NULL,'2024-09-11',1,0,NULL,NULL),(93,23,123,6,1,7,10,0,NULL,NULL,'2024-09-11',1,0,NULL,NULL);
/*!40000 ALTER TABLE `wh_tbl_desgvta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_desgvta_detalle`
--

DROP TABLE IF EXISTS `wh_tbl_desgvta_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_desgvta_detalle` (
  `desgvtadet_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `desgvtadet_desgvta_ide` int(11) NOT NULL COMMENT 'Ide de la venta ',
  `desgvtadet_nota_ide` int(11) NOT NULL COMMENT 'Ide de la nota',
  `desgvtadet_monto` double DEFAULT NULL COMMENT 'Monto credito monto full',
  `desgvtadet_monto_contado` double DEFAULT NULL COMMENT 'Monto contado monto con descuento',
  `desgvtadet_mto_flete` double DEFAULT NULL COMMENT 'Monto flete',
  `desgvtadet_porc_asig` double DEFAULT NULL COMMENT 'Porcentaje asignado',
  `desgvtadet_condicion` int(11) DEFAULT NULL COMMENT 'condicion 1 credito 0 contado',
  `desgvtadet_fecproc` date DEFAULT NULL COMMENT 'Fecha de registro en el sistema',
  `desgvtadet_status` int(11) NOT NULL DEFAULT 0 COMMENT 'Status ',
  `desgvtadet_observ` varchar(20) DEFAULT NULL,
  `desgvtadet_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`desgvtadet_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabla detalle de venta en el desglose';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_desgvta_detalle`
--

LOCK TABLES `wh_tbl_desgvta_detalle` WRITE;
/*!40000 ALTER TABLE `wh_tbl_desgvta_detalle` DISABLE KEYS */;
INSERT INTO `wh_tbl_desgvta_detalle` VALUES (1,1,15,100,NULL,NULL,NULL,NULL,'2024-06-28',0,NULL,0),(2,3,30,290,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(3,4,1,122,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(4,4,30,122,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(5,5,30,290,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(6,6,30,122.28,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(7,7,27,80,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(8,7,30,120,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(9,8,28,200,NULL,NULL,NULL,NULL,'2024-06-29',0,NULL,0),(10,9,27,60,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(11,9,30,10,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(12,10,27,33.92,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(13,11,28,37.41,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(15,12,29,100.1,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(16,13,29,156.76,NULL,NULL,NULL,NULL,'2024-07-01',0,NULL,0),(18,14,20,204.39,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(19,14,21,150.91,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(20,14,23,6.87,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(21,15,20,38.61,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(22,16,20,64.37,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(23,17,22,157.6,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(24,17,23,150,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(25,16,33,138.63,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(26,17,33,1.4,NULL,NULL,NULL,NULL,'2024-07-03',0,NULL,0),(27,19,4,100,75,NULL,NULL,NULL,'2024-07-05',0,NULL,0),(28,19,4,90,67.5,NULL,NULL,NULL,'2024-07-05',0,NULL,0),(29,19,4,122.28,91.71,0.92,25,0,'2024-07-05',0,NULL,0),(30,20,80,127.6,129.6,1.3,10,0,'2024-07-10',0,NULL,0),(31,21,90,73.57,66.21,0.66,10,0,'2024-07-10',0,NULL,0),(32,22,92,1188.52,1010.24,10.1,15,0,'2024-07-10',0,NULL,0),(33,23,86,412,276.04,2.76,33,0,'2024-07-10',0,NULL,0),(34,24,80,82.92,107.92,1.08,10,0,'2024-07-10',0,NULL,0),(35,25,84,8.42,5.64,0.06,33,0,'2024-07-10',0,NULL,0),(36,26,83,74.98,56.24,0.56,25,0,'2024-07-10',0,NULL,0),(37,27,94,17.61,15.85,0.16,10,0,'2024-07-10',0,NULL,0),(38,28,94,11.32,10.19,0.1,10,0,'2024-07-10',0,NULL,0),(39,29,85,2.29,1.95,0.02,15,0,'2024-07-10',0,NULL,0),(41,30,95,42.89,38.6,0.39,10,0,'2024-07-10',0,NULL,0),(42,30,92,273.93,246.54,2.47,10,0,'2024-07-10',0,NULL,0),(43,32,95,918.92,689.19,6.89,25,0,'2024-07-10',0,NULL,0),(44,33,95,376.24,319.8,3.2,15,0,'2024-07-10',0,NULL,0),(45,34,87,478.91,359.18,3.59,25,0,'2024-07-10',0,NULL,0),(46,34,88,848.78,636.59,6.37,25,0,'2024-07-10',0,NULL,0),(47,35,99,74.58,55.94,0.56,25,0,'2024-07-11',0,NULL,0),(48,34,99,74.58,55.94,0.56,25,0,'2024-07-11',0,NULL,0),(49,36,89,23.99,23.99,0.24,0,0,'2024-07-11',0,NULL,0),(50,37,81,277,185.59,1.86,33,0,'2024-07-11',0,NULL,0),(51,38,83,13,9.75,0.1,25,0,'2024-07-11',0,NULL,0),(52,20,100,16.24,12.18,0.12,25,0,'2024-07-11',0,NULL,0),(53,24,101,36.99,27.74,0.28,25,0,'2024-07-11',0,NULL,0),(54,39,80,107.16,91.09,0.91,15,0,'2024-07-11',0,NULL,0),(55,39,87,40.19,34.16,0.34,15,0,'2024-07-11',0,NULL,0),(56,39,98,66.23,56.3,0.56,15,0,'2024-07-11',0,NULL,0),(57,40,79,280.49,210.37,2.1,25,0,'2024-07-11',0,NULL,0),(58,40,87,1054.04,790.5,7.91,25,0,'2024-07-11',0,NULL,0),(59,40,102,88.42,66.32,0.66,25,0,'2024-07-11',0,NULL,0),(60,41,103,15.93,11.95,0.12,25,0,'2024-07-11',0,NULL,0),(61,41,88,299.55,224.66,2.25,25,0,'2024-07-11',0,NULL,0),(62,42,85,4.8,3.6,0.04,25,0,'2024-07-11',0,NULL,0),(63,33,104,44.76,33.57,0.34,25,0,'2024-07-11',0,NULL,0),(64,43,77,3366.32,2524.74,25.25,25,0,'2024-07-15',0,NULL,0),(65,43,78,214.74,161.06,1.61,25,0,'2024-07-15',0,NULL,0),(66,43,106,183.51,137.63,1.38,25,0,'2024-07-15',0,NULL,0),(67,44,107,79.98,59.99,0.6,25,0,'2024-07-15',0,NULL,0),(68,44,108,740.19,555.14,5.55,25,0,'2024-07-15',0,NULL,0),(69,45,109,775.45,630.21,6.3,20,0,'2024-07-16',0,NULL,0),(71,45,112,12.3,9.84,0.1,20,0,'2024-07-17',0,NULL,0),(72,47,110,7.19,6.11,0.06,15,0,'2024-07-17',0,NULL,0),(73,47,111,9,7.65,0.08,15,0,'2024-07-17',0,NULL,0),(74,47,109,236.11,200.69,2.01,15,0,'2024-07-17',0,NULL,0),(75,49,114,100,85,0.85,15,0,'2024-07-19',0,NULL,0),(76,50,157,100,80,0.8,20,0,'2024-08-02',0,NULL,0),(82,51,160,201.21,150.91,1.51,25,0,'2024-08-03',0,NULL,0),(83,51,159,255.49,191.62,1.92,25,0,'2024-08-03',0,NULL,0),(84,51,162,6.87,5.15,0.05,25,0,'2024-08-03',0,NULL,0),(85,52,159,48.26,36.2,0.36,25,0,'2024-08-03',0,NULL,0),(86,53,159,106.08,79.56,0.8,25,0,'2024-08-03',0,NULL,0),(87,53,163,138.63,103.97,1.04,25,0,'2024-08-03',0,NULL,0),(88,54,161,210.13,157.6,1.58,25,0,'2024-08-03',0,NULL,0),(89,54,162,202.3,151.73,1.52,25,0,'2024-08-03',0,NULL,0),(90,54,163,1.4,1.05,0.01,25,1,'2024-08-03',0,NULL,0),(91,56,114,200,160,2,20,1,'2024-08-06',0,NULL,0),(92,57,164,200,160,2,20,1,'2024-08-06',0,NULL,0),(93,59,164,102.88,77.16,1.03,25,1,'2024-08-06',0,NULL,0),(94,58,165,1.25,0.94,0.01,25,1,'2024-08-06',0,NULL,0),(95,57,165,40,30,0.4,25,1,'2024-08-06',0,NULL,0),(96,58,164,108.64,81.48,1.09,25,1,'2024-08-06',0,NULL,0),(97,60,169,249.92,199.94,2,20,0,'2024-08-07',0,NULL,0),(98,60,170,679.9,543.92,5.44,20,0,'2024-08-07',0,NULL,0),(99,60,177,863.32,690.66,6.91,20,0,'2024-08-07',0,NULL,0),(100,60,172,1005.39,804.31,8.04,20,0,'2024-08-07',0,NULL,0),(101,60,173,600.27,480.22,4.8,20,0,'2024-08-07',0,NULL,0),(102,60,174,506.1,404.88,4.05,20,0,'2024-08-07',0,NULL,0),(103,60,176,314.89,251.91,2.52,20,0,'2024-08-07',0,NULL,0),(104,60,175,561.74,449.39,4.49,20,0,'2024-08-07',0,NULL,0),(106,61,180,300.32,225.24,2.25,25,0,'2024-08-09',0,NULL,0),(107,61,179,8.96,6,0.06,25,0,'2024-08-09',0,NULL,0),(108,62,179,120.7,90.53,0.91,25,0,'2024-08-09',0,NULL,0),(110,63,179,56.8,42.6,0.43,20,0,'2024-08-09',0,NULL,0),(137,68,181,361.02,270.77,3.61,25,0,'2024-08-16',0,NULL,0),(138,69,181,227.88,170.91,5,25,0,'2024-08-16',0,NULL,0),(139,70,181,166.34,124.76,1.66,25,0,'2024-08-16',0,NULL,0),(142,75,196,1262.95,947.21,12.63,25,0,'2024-08-29',0,NULL,0),(143,78,196,1262.95,947.21,12.63,25,1,'2024-08-29',0,NULL,0),(144,84,202,100.39,90.35,2.01,10,0,'2024-09-11',0,NULL,0),(145,85,200,40,40,0.4,0,0,'2024-09-11',0,NULL,0),(146,86,200,40,40,0.4,0,0,'2024-09-11',0,NULL,0),(147,87,200,119.99,119.99,2.4,0,0,'2024-09-11',0,NULL,0),(148,88,201,231.63,185.3,4,20,0,'2024-09-11',0,NULL,0),(150,91,200,119.99,119.99,1.2,0,0,'2024-09-11',0,NULL,0),(151,93,201,30.48,27.43,0.27,10,0,'2024-09-11',0,NULL,0);
/*!40000 ALTER TABLE `wh_tbl_desgvta_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_marca`
--

DROP TABLE IF EXISTS `wh_tbl_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_marca` (
  `marca_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `marca_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `marca_orden` int(11) NOT NULL DEFAULT 1000 COMMENT 'Orden',
  `marca_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`marca_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Marcas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_marca`
--

LOCK TABLES `wh_tbl_marca` WRITE;
/*!40000 ALTER TABLE `wh_tbl_marca` DISABLE KEYS */;
INSERT INTO `wh_tbl_marca` VALUES (1,'AUTO ASIA',1000,0),(2,'EVOL',1000,0),(3,'PACE FOX',1000,0),(4,'CORDIAL',1000,0),(5,'YUANXING',1000,0),(6,'CHYZU',1000,0),(7,'GARCO',1000,0),(8,'BORRAR',1000,0),(9,'BORRAR 2',1000,0),(10,'PRUEBA',1000,0);
/*!40000 ALTER TABLE `wh_tbl_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_porcdesc`
--

DROP TABLE IF EXISTS `wh_tbl_porcdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_porcdesc` (
  `porc_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `porc_descrip` varchar(128) DEFAULT '0' COMMENT 'Descripcion',
  `porc_monto` double DEFAULT NULL COMMENT 'Monto del porcentaje',
  `porc_orden` double DEFAULT NULL COMMENT 'Orden',
  `porc_borrado` int(11) NOT NULL DEFAULT 0 COMMENT '1 Si, 0 No',
  PRIMARY KEY (`porc_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Porcentaje de descuento';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_porcdesc`
--

LOCK TABLES `wh_tbl_porcdesc` WRITE;
/*!40000 ALTER TABLE `wh_tbl_porcdesc` DISABLE KEYS */;
INSERT INTO `wh_tbl_porcdesc` VALUES (1,'compra',25,3,0),(2,'compra',15,2,0),(3,'compra',0,1,0),(4,'compra',33,4,0),(5,'venta',10,3,0),(6,'venta',15,4,0),(7,'venta',20,6,0),(8,'venta',25,5,0),(9,'venta',33,6,0),(10,'venta',0,1,0),(11,'venta',5,2,0);
/*!40000 ALTER TABLE `wh_tbl_porcdesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_prueba`
--

DROP TABLE IF EXISTS `wh_tbl_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_prueba` (
  `compra_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `compra_num` varchar(20) DEFAULT NULL,
  `compra_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`compra_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' prueba';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_prueba`
--

LOCK TABLES `wh_tbl_prueba` WRITE;
/*!40000 ALTER TABLE `wh_tbl_prueba` DISABLE KEYS */;
INSERT INTO `wh_tbl_prueba` VALUES (1,'25271',0);
/*!40000 ALTER TABLE `wh_tbl_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_tasa`
--

DROP TABLE IF EXISTS `wh_tbl_tasa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_tasa` (
  `tasa_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tasa_descrip` varchar(30) DEFAULT '' COMMENT 'Descripción',
  `tasa_monto` double DEFAULT NULL COMMENT 'Monto de tasa',
  `tasa_borrado` int(11) NOT NULL DEFAULT 0 COMMENT 'Si fue borrado = 1',
  PRIMARY KEY (`tasa_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='tabla de tasa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_tasa`
--

LOCK TABLES `wh_tbl_tasa` WRITE;
/*!40000 ALTER TABLE `wh_tbl_tasa` DISABLE KEYS */;
INSERT INTO `wh_tbl_tasa` VALUES (1,'0 %',0,0),(2,'5 %',5,0),(3,'10 %',10,0),(4,'15 %',15,0),(5,'20 %',20,0),(6,'25 %',25,0),(7,'30 %',30,0),(8,'33 %',33,0);
/*!40000 ALTER TABLE `wh_tbl_tasa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_tipoventa`
--

DROP TABLE IF EXISTS `wh_tbl_tipoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_tipoventa` (
  `tipvta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `tipvta_descrip` varchar(30) DEFAULT '' COMMENT 'Descripción',
  `tipvta_porc_desc` double DEFAULT NULL,
  `tipvta_prov_ide` int(11) NOT NULL COMMENT 'ide del proveedor',
  `tipvta_borrado` int(11) DEFAULT 0 COMMENT '0 no, 1 si',
  `tipvta_com_compra` double DEFAULT NULL COMMENT 'Comision',
  `tipvta_com_venta` double DEFAULT NULL COMMENT 'Comision venta',
  `tipvta_color` varchar(255) DEFAULT NULL COMMENT 'color',
  PRIMARY KEY (`tipvta_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='tipo de venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_tipoventa`
--

LOCK TABLES `wh_tbl_tipoventa` WRITE;
/*!40000 ALTER TABLE `wh_tbl_tipoventa` DISABLE KEYS */;
INSERT INTO `wh_tbl_tipoventa` VALUES (1,'AUTO ASIA',1000,2,0,6,NULL,'FFFFFF'),(2,'CHYZU',1000,2,0,4,NULL,'0066FF'),(3,'ACEITE',0,2,0,3,1.5,'e65200'),(4,'PACE FOX',0,2,0,3,1.5,'33ff93'),(5,'CASCOS NIÑOS',0,2,0,3,NULL,'CC6600'),(6,'YUANXING',0,0,0,3,NULL,'ff3358'),(8,'GARCO',NULL,0,0,0,NULL,'7fb3d5'),(9,'EVOL',NULL,0,0,5,NULL,'f7dc6f'),(10,'GP-MOTOS',NULL,0,0,4,NULL,'971238'),(11,'MOTO SONIC',NULL,0,0,3,NULL,'0e5407'),(12,'MOTO LED',NULL,0,0,NULL,NULL,'1e1687');
/*!40000 ALTER TABLE `wh_tbl_tipoventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wh_tbl_venta`
--

DROP TABLE IF EXISTS `wh_tbl_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wh_tbl_venta` (
  `venta_ide` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador venta',
  `venta_origen_ide` int(11) DEFAULT 0 COMMENT 'Origen de la venta',
  `venta_compra_ide` int(11) DEFAULT NULL COMMENT 'Identificador compra',
  `venta_num` varchar(100) DEFAULT '',
  `venta_fecha` date DEFAULT NULL COMMENT 'Fecha de la venta',
  `venta_porc_desc` double DEFAULT 0,
  `venta_porc_asig` double DEFAULT NULL,
  `venta_monto` double DEFAULT 0,
  `venta_monto_credito` double DEFAULT 0,
  `venta_flete` double DEFAULT 0,
  `venta_saldo` double DEFAULT 0 COMMENT 'saldo de la venta',
  `venta_condicion` int(11) DEFAULT 0 COMMENT '0 Contado, 1 Credito',
  `venta_clien_ide` int(11) NOT NULL COMMENT 'Identificador cliente',
  `venta_vende_ide` int(11) NOT NULL COMMENT 'Identificador vendedor',
  `venta_tipo` int(11) DEFAULT 1 COMMENT 'Tipo de Venta',
  `venta_tienda` int(11) DEFAULT NULL,
  `venta_fecha_registro` date DEFAULT current_timestamp() COMMENT 'Fecha proceso',
  `venta_borrado` int(11) DEFAULT 0 COMMENT '0 no esta borrado, 1 Registro Borrado',
  PRIMARY KEY (`venta_ide`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT=' Tabla tbl_venta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wh_tbl_venta`
--

LOCK TABLES `wh_tbl_venta` WRITE;
/*!40000 ALTER TABLE `wh_tbl_venta` DISABLE KEYS */;
INSERT INTO `wh_tbl_venta` VALUES (159,2,201,' 37194','2024-09-11',20,10,27.43,30.48,0.27,0,0,123,6,1,1,'2024-09-11',0),(160,2,200,' 37193','2024-09-11',0,0,119.99,119.99,1.2,0,0,123,6,3,1,'2024-09-11',0),(163,3,0,'TALLER  957','2024-09-12',20,20,49.37,0,0.49,0,0,76,8,3,1,'2024-09-12',0),(164,3,0,'TALLER 958','2024-09-13',20,5,1000,0,10,0,0,7,7,3,1,'2024-09-13',0),(165,1,205,'35639','2024-06-21',25,10,182.45,202.72,2.03,0,1,31,2,1,1,'2024-09-24',0);
/*!40000 ALTER TABLE `wh_tbl_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wejadminmot2'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_editarcedula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_editarcedula`(`ced1` INT(15), `ced2` INT(15)) RETURNS int(11)
    NO SQL
BEGIN

IF (ced1<>ced2) THEN

 UPDATE tbl_pacien SET pacien_cedrif=ced1 WHERE pacien_cedrif=ced2;

 UPDATE tbl_alerpac SET per_cedrif=ced1 WHERE per_cedrif=ced2;

 UPDATE tbl_antepac SET pers_cedrif=ced1 WHERE pers_cedrif=ced2;

 UPDATE tbl_examenes SET pacien_cedrif=ced1 WHERE pacien_cedrif=ced2;

 UPDATE tbl_citas SET citas_per=ced1 WHERE citas_per=ced2;

 UPDATE tbl_consulta SET consulta_pac=ced1 WHERE consulta_pac=ced2;

 UPDATE tbl_diagcons SET diagcons_paciente=ced1 WHERE diagcons_paciente=ced2;

 UPDATE tbl_rayos SET rayos_paciente=ced1 WHERE rayos_paciente=ced2;

 UPDATE tbl_recipe SET pacien_cedrif=ced1 WHERE pacien_cedrif=ced2;

 UPDATE tbl_usuario SET pers_cedrif=ced1 WHERE pers_cedrif=ced2;

 UPDATE tbl_informes SET pacien_cedrif=ced1 WHERE pacien_cedrif=ced2;

END IF;

RETURN 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_banco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_banco`(`ide` INT(11), `des` VARCHAR(128), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_banco WHERE banco_descrip=des;

IF tot>0 THEN

SET res='Banco ya registrado';

ELSE

INSERT INTO tbl_banco(banco_ide,banco_descrip) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'banco',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_banco WHERE banco_descrip=des AND banco_ide<>ide;

IF tot>0 THEN

SET res='Banco ya registrado';

ELSE

UPDATE tbl_banco SET banco_descrip=des WHERE banco_ide=ide;

CALL sp_auditori(usu,2,'banco',ide);

end IF;

ELSE

UPDATE tbl_banco SET banco_borrado=1 WHERE banco_ide=ide;

CALL sp_auditori(usu,3,'banco',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_cliente`(`ide` INT, `tipcli` VARCHAR(2), `numiden` VARCHAR(12), `codigo` VARCHAR(16), `nombre1` VARCHAR(50), `nombre2` VARCHAR(50), `ubimap` VARCHAR(1024), `fecnaci` DATE, `direcci` VARCHAR(150), `telmovi` VARCHAR(64), `corre` VARCHAR(100), `coes` INT, `zona` INT, `vende` INT, `ope` INT, `usua` INT) RETURNS varchar(100) CHARSET utf8mb4
BEGIN

DECLARE tot, tot1 int;

DECLARE res VARCHAR(100) DEFAULT 1;

DECLARE res_1 VARCHAR(100) DEFAULT 1;

DECLARE response VARCHAR(100);

IF ope=1 THEN 

SELECT COUNT(*) INTO tot FROM tbl_cliente WHERE clien_tipcli=tipcli AND clien_numiden=numiden;

IF tot>0 THEN 

	SELECT clien_ide, COUNT(*) INTO @ideexi, tot1 FROM tbl_cliente WHERE clien_tipcli=tipcli AND clien_numiden=numiden AND clien_borrado=1;

	IF tot1>0 THEN

		SET res=CONCAT('Cliente se encuentra Inactivo - ',@ideexi); 

		

	ELSE

		SET res='Cliente ya registrado - 0';

	end IF;

ELSE



INSERT INTO tbl_cliente(clien_tipcli,clien_numiden,clien_nombre1,clien_nombre2,clien_apelli1,clien_apelli2,clien_fecnaci,clien_direcci,clien_telmovi,clien_correo,clien_contriespec,clien_codigo,clien_ubimap,clien_zona,clien_vendedor) VALUES(tipcli,numiden,nombre1,nombre2,'','',fecnaci,direcci,telmovi,corre,coes,codigo,ubimap,zona,vende);

SET res= LAST_INSERT_ID();



CALL sp_auditori(usua,1,'cliente',res);

end IF;



ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_cliente WHERE clien_tipcli=tipcli AND clien_numiden=numiden AND clien_ide<>ide;

IF tot>0 THEN 

SET res='Cliente ya registrado';

ELSE

UPDATE tbl_cliente SET clien_tipcli=tipcli, clien_numiden=numiden, clien_nombre1=nombre1, clien_nombre2=nombre2, clien_codigo=codigo, clien_ubimap=ubimap, clien_fecnaci=fecnaci, clien_direcci=direcci, clien_telmovi=telmovi, clien_correo=corre, clien_contriespec=coes, clien_zona=zona, clien_vendedor=vende WHERE clien_ide=ide;

CALL sp_auditori(usua,2,'cliente',ide);

end IF;



ELSEIF ope=4 THEN 

SELECT COUNT(*) INTO tot FROM tbl_cliente WHERE clien_tipcli=tipcli AND clien_numiden=numiden;

IF tot>0 THEN 

SET res='Cliente ya registrado';

ELSE

INSERT INTO tbl_cliente(clien_codigo,clien_tipcli,clien_numiden,clien_nombre1,clien_nombre2,clien_apelli1,clien_apelli2,clien_fecnaci,clien_direcci,clien_telmovi,clien_correo,clien_contriespec,clien_codigo,clien_ubimap,clien_zona,clien_vendedor) VALUES(tipcli,numiden,nombre1,nombre2,'','',fecnaci,direcci,telmovi,corre,coes,codigo,ubimap,zona,vende);

SET res= LAST_INSERT_ID();

CALL sp_auditori(usua,1,'cliente',res);

end IF;



ELSEIF ope=8 THEN 

UPDATE tbl_cliente SET clien_borrado=0 WHERE clien_ide=ide;

CALL sp_auditori(usua,2,'cliente',ide);

SET res= LAST_INSERT_ID();



ELSE

UPDATE tbl_cliente SET clien_borrado=1 WHERE clien_ide=ide;

CALL sp_auditori(usua,3,'cliente',ide);

end IF;

return res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compra`(`ide` INT, `tienda` INT, `proveedor` INT, `factcomp` VARCHAR(20), `noencomp` VARCHAR(20), `fechcomp` DATE, `subtotal` DOUBLE, `totaliva` DOUBLE, `total` DOUBLE, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res0 VARCHAR(50) DEFAULT 1;



IF ope=1 THEN

INSERT INTO tbl_compra(compra_fecha_registro,compra_tienda,compra_proveedor,compra_ide_tienda,compra_control_tienda,compra_fecha,compra_sub_totalexe,compra_sub_totaliva,compra_total_general) VALUES(NOW(),tienda,proveedor,factcomp,noencomp,fechcomp,subtotal,totaliva,total);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'compra',res);



ELSEIF ope=2 THEN

UPDATE tbl_compra SET compra_ide_tienda=factcomp, compra_control_tienda=noencomp, compra_fecha=fechcomp, compra_sub_totalexe=subtotal, compra_sub_totaliva=totaliva, compra_total_general=total WHERE compra_ide=ide;

CALL sp_auditori(usu,2,'compra',ide);



ELSE

UPDATE tbl_compra SET compra_anulada=1, compra_fecha_anulada=NOW() WHERE compra_ide=ide;

CALL sp_auditori(usu,3,'compra',ide);

end IF;

SET res0 = res;

RETURN res0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compracom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compracom`(`ide` INT,`orden_ide` INT,`control` VARCHAR(20),`fec` DATE,`fec_envio` DATE,`fec_proc` DATE,`porc` DOUBLE,`mto_cont` DOUBLE,`mto_cred` DOUBLE,`tasa` DOUBLE,`flete` DOUBLE,`cond` INT,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;


IF ope=1 THEN
	INSERT INTO
	tbl_compra_encab (compra_encab_orden_ide,compra_encab_control,compra_encab_fecha,compra_encab_fecha_envio,compra_encab_fecha_registro,compra_encab_porcentaje,compra_encab_monto_contado,compra_encab_monto_credito,compra_encab_tasa,compra_encab_flete, compra_encab_condicion	)
	  VALUES (orden_ide,control,fec,fec_envio,now(),porc,mto_cont,mto_cred,tasa,flete,cond);
	SET res = LAST_INSERT_ID();
	CALL sp_auditori(usu,1,'compracom',res);
ELSEIF ope=2 THEN
  UPDATE tbl_compra_encab SET   
	compra_encab_fecha          = fec, 
	compra_encab_fecha_envio    = fec_envio, 
  compra_encab_porcentaje     = porc, 
	compra_encab_monto_contado  = mto_cont,
  compra_encab_monto_credito  = mto_cred,
  compra_encab_tasa 		   		= tasa, 
	compra_encab_flete 		   		= flete, 
	compra_encab_condicion      = cond
  where compra_encab_ide=ide;
	CALL sp_auditori(usu,2,'compracom',ide);

ELSEIF ope=3 THEN
	UPDATE tbl_compra_encab SET compra_encab_borrado=1 WHERE compra_encab_ide=ide;
	CALL sp_auditori(usu,3,'cliente',ide);

END IF;
RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compracom_deta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compracom_deta`(`ide` INT,`encab_ide` INT,`orden_ide` INT,`reqdet_ide` INT,`mto` DOUBLE,`observ` VARCHAR(20),`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;

IF ope=1 THEN

	SELECT count(*) INTO tot FROM tbl_compracom_deta where compracom_deta_encab_ide  = encab_ide AND compracom_deta_orden_ide  = orden_ide AND compracom_deta_reqdet_ide = reqdet_ide AND compracom_deta_borrado = 0;


	if tot > 0 THEN
			set res= 'Error';
	END IF;

	if tot =0  THEN
	
		INSERT INTO	tbl_compracom_deta (
		compracom_deta_encab_ide,
		compracom_deta_orden_ide,
	  compracom_deta_reqdet_ide,
	  compracom_deta_monto,
	  compracom_deta_observ,
	  compracom_deta_fecha_registro
	  )
	  VALUES (encab_ide,orden_ide,reqdet_ide,mto,observ,now());
	  SET res = LAST_INSERT_ID();
	 CALL sp_auditori(usu,1,'compracom_deta',res);
	END IF;

ELSEIF ope=2 THEN
	UPDATE tbl_compracom_deta SET compracom_deta_monto=mto, compracom_deta_observ=observ WHERE compracom_deta_ide=ide;
	CALL sp_auditori(usu,2,'compracom_deta',ide);
ELSEIF ope=3 THEN
	CALL sp_auditori(usu,3,'compracom_deta',ide);
END IF;
RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compradeta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compradeta`(`ide` INT(11), `factura` VARCHAR(32), `idep` INT(11), `idepd` INT(11), `cant` DECIMAL(11,2), `costo` DECIMAL(11,2), `monto` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

	DECLARE res VARCHAR(50) DEFAULT 1;

	IF ope=1 THEN

		INSERT INTO tbl_compra_deta(compradeta_compra,compradeta_produc,compradeta_producdeta,compradeta_cant,compradeta_costo,compradeta_monto) VALUES(factura,idep,idepd,cant,costo,monto);

		SET res = LAST_INSERT_ID();

		CALL sp_auditori(usu,1,'compradeta',res);

		

		SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

		SET @exinue=@exiant+cant;

		UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

		CALL sp_auditori(usu,5,'producto',idep);

		

		SELECT compra_ide_tienda INTO @factucompra FROM tbl_compra WHERE compra_ide=factura;

		

		INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num) VALUES(ide,idep,idepd,1,@exiant,cant,@exinue,factura,NOW(),@factucompra);

		CALL sp_auditori(usu,1,'kardex',factura);

	ELSEIF ope=5 THEN

		DELETE from tbl_compra_deta WHERE compradeta_compra=factura;

		CALL sp_auditori(usu,5,'compradeta',factura);

	end IF;

	RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compradeta_temp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compradeta_temp`(`ide` INT(11), `factura` VARCHAR(32), `idep` INT(11), `idepd` INT(11), `cant` DECIMAL(11,2), `costo` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE monto DOUBLE;

SET monto=(cant*costo);

IF ope=1 THEN

INSERT INTO tbl_compra_deta_temp(compradeta_ide,compradeta_compra,compradeta_produc,compradeta_producdeta,compradeta_cant,compradeta_costo,compradeta_monto) VALUES(ide,factura,idep,idepd,cant,costo,monto);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'compradeta_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_compra_deta_temp SET compradeta_cant=cant, compradeta_costo=costo, compradeta_monto=monto WHERE compradeta_ide=ide;

CALL sp_auditori(usu,2,'compradeta_temp',ide);



ELSEIF ope=3 THEN

DELETE from tbl_compra_deta_temp WHERE compradeta_ide=ide;

CALL sp_auditori(usu,3,'compradeta_temp',ide);



ELSEIF ope=5 THEN

DELETE from tbl_compra_deta_temp WHERE compradeta_compra=factura;

CALL sp_auditori(usu,5,'compradeta_temp',factura);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compra_temp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compra_temp`(`ide` INT, `tienda` INT, `proveedor` INT, `factcomp` VARCHAR(20), `noencomp` VARCHAR(20), `fechcomp` DATE, `subtotal` DOUBLE, `totaliva` DOUBLE, `total` DOUBLE, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res0 VARCHAR(50) DEFAULT 1;



IF ope=1 THEN

INSERT INTO tbl_compra_temp(compra_fecha_registro,compra_tienda,compra_proveedor) VALUES(NOW(),tienda,proveedor);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'compra_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_compra_temp SET compra_ide_tienda=factcomp, compra_control_tienda=noencomp, compra_fecha=fechcomp, compra_sub_totalexe=subtotal, compra_sub_totaliva=totaliva, compra_total_general=total WHERE compra_ide=ide;

CALL sp_auditori(usu,2,'compra_temp',ide);



ELSE

UPDATE tbl_compra_temp SET compra_anulada=1, compra_fecha_anulada=NOW() WHERE compra_ide=ide;

CALL sp_auditori(usu,3,'compra_temp',ide);

end IF;

SET res0 = res;

RETURN res0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compra_wh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compra_wh`(`ide` INT,`prov_ide` INT,`nro` varchar(20),`clien_ide` INT,`fec` DATE,`porct` DOUBLE,`mto_contado` DOUBLE,`mto_credito` DOUBLE,`tasa` DOUBLE,`mto_flete` DOUBLE, `cond` INT,`destino` INT,`tipo` INT, `tienda` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
	DECLARE res VARCHAR(50) DEFAULT 1;
	DECLARE tot INT;
	

IF ope = 1 THEN
	 if (destino = 2)  THEN
			set mto_flete = 0;
	 end if;			
	 if (tipo = 0)  THEN
			set res = 'DEBE SELECCIONAR UN TIPO DE FACTURA';
			RETURN res;
	 end if;			
   if clien_ide=0 THEN
			set res = 'DEBE SELECCIONAR UN CLIENTE';
			RETURN res;
	 end if;		
   if prov_ide=0 THEN
			set res = 'DEBE SELECCIONAR UN PROVEEDOR';
			RETURN res;
	 end if;		

   if nro="" THEN
			set res = 'NUMERO DE FACTURA NO PUEDE SER VACIO';
			RETURN res;
	 end if;	
			
	 SELECT COUNT(*) INTO tot FROM wh_tbl_compra WHERE compra_num=nro;
		if tot >0 then 
		set res = 'Compra ya registrada';
		RETURN res;
		ELSE
			
			INSERT INTO wh_tbl_compra (
			compra_prov_ide,
			compra_num,
			compra_clien_ide,
			compra_fecha,
			compra_porc_desc,
			compra_monto,
			compra_monto_credito,
			compra_tasa,
			compra_flete,
			compra_condicion,
			compra_destino,
			compra_tipo,
			compra_tienda,
			compra_fecha_registro)
			VALUES (prov_ide,UPPER(nro),clien_ide,fec,porct,mto_contado,mto_credito,tasa,mto_flete,cond,destino,tipo,tienda,now());
		SET res = LAST_INSERT_ID();					
		end if;
  RETURN res;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_compra_wh_matriz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_compra_wh_matriz`(`ide` INT,   `estatus` INT, `fec_envio` DATE,	`fec_recep` DATE,	`ope` INT,	`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

IF ope=2 THEN
/*
  IF xsust = 5 
			  UPDATE wh_tbl_compra SET compra_estatus	= 0 	where compra_ide=ide;
				CALL sp_auditori(usu,2,'wh_tbl_compra',ide);
	END IF;
*/

  UPDATE wh_tbl_compra  SET   compra_estatus= estatus , 
	compra_fecha_envio          = fec_envio, 
	compra_fecha_recep			    = fec_recep
  where compra_ide=ide;
	CALL sp_auditori(usu,2,'wh_tbl_compra',ide);

END IF;
RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_deposito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_deposito`(`ide` INT(11), `ban` INT(11), `ncu` VARCHAR(30), `num` INT(11), `mon` DOUBLE(13,2), `fde` DATE, `fdv` DATE, `tie` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_deposito WHERE deposito_numero=num AND deposito_banco=ban;

IF tot>0 THEN

SET res='Deposito ya registrado';

ELSE

INSERT INTO tbl_deposito(deposito_ide,deposito_banco,deposito_numerocuenta,deposito_numero,deposito_monto,deposito_fechadeposito,deposito_fechadiaventa,deposito_fecharegistro,deposito_tienda) VALUES(ide,ban,ncu,num,mon,fde,fdv,NOW(),tie);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'deposito',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_deposito WHERE deposito_numero=num AND deposito_banco=ban AND deposito_ide<>ide;

IF tot>0 THEN

SET res='Deposito ya registrado';

ELSE

UPDATE tbl_deposito SET deposito_banco=ban, deposito_numerocuenta=ncu, deposito_numero=num, deposito_monto=mon, deposito_fechadeposito=fde,deposito_fechadiaventa=fdv WHERE deposito_ide=ide;

CALL sp_auditori(usu,2,'deposito',ide);

end IF;

ELSE

UPDATE tbl_deposito SET deposito_borrado=1 WHERE deposito_ide=ide;

CALL sp_auditori(usu,3,'deposito',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desglose` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desglose`(`ide` INT,`descrip` varchar(50),`fec` DATE,   `mto` double,   `ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
	DECLARE res VARCHAR(50) DEFAULT 1;
	
IF ope = 1 THEN
			INSERT INTO wh_tbl_desglose (desglose_desc,desglose_fecha, desglose_monto,desglose_fecha_proc)
				VALUES (descrip,fec,mto,now());
		SET res = LAST_INSERT_ID();					
		CALL sp_auditori(usu,1,'desglose',res);
  RETURN res;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desglosecliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desglosecliente`(`ide` INT,`desg_ide` INT,`desg_clien_ide`  INT,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
	DECLARE res VARCHAR(50) DEFAULT 1;
	
IF ope = 1 THEN
			INSERT INTO wh_tbl_desgcliente (desgcte_desg_ide,desgcte_clien_ide,desgcte_fecha_proc)
				VALUES (desg_ide,desg_clien_ide,now());
		SET res = LAST_INSERT_ID();					
  RETURN res;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desglosedetalleventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desglosedetalleventa`(`ide` INT,`desglose_ide` INT, `nota_ide`  INT,`mto`  DOUBLE,`mto_contado`  DOUBLE,`mto_flete`  DOUBLE,`porc_asig`  DOUBLE,`condicion` INT,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
/*Insertar notas para un desglose**/
	DECLARE res VARCHAR(50) DEFAULT 1;
	DECLARE totalventanota, monto_nota, disponible  DOUBLE;
	SET disponible=0;
	SET totalventanota=0;
	SET monto_nota=0;
	
IF ope = 1 THEN
		select IFNULL(sum(monto_venta),0) INTO totalventanota   from vw_desg_deta_vta where desg_ide=desglose_ide and compra_ide = nota_ide group by nota ;

		/*if (select sum(monto_venta) INTO totalventanota   from vw_desg_deta_vta where desg_ide=desglose_ide and compra_ide = nota_ide group by nota NULL )
		; */
		select compra_monto_credito into monto_nota from wh_tbl_compra where compra_ide=nota_ide;
			
		set disponible = ROUND(monto_nota - totalventanota,2);
		/*SET res = disponible;*/
		/*SET res = "No Disponible";
		//return totalventanota;*/
	if  (disponible >= mto ) THEN
			INSERT INTO wh_tbl_desgvta_detalle  (desgvtadet_desgvta_ide,desgvtadet_nota_ide,desgvtadet_monto,desgvtadet_monto_contado,desgvtadet_porc_asig,desgvtadet_mto_flete,desgvtadet_condicion,desgvtadet_fecproc)
				VALUES (ide,nota_ide,mto,mto_contado,porc_asig,mto_flete,condicion,now());  
		  SET res = LAST_INSERT_ID();					
	else 
			/*SET res = "NO DISPONIBLE";*/
			SET res = "Monto Insuficiente";
		  /*SET res = "Disponible="+char(disponible);					*/
	end if;
	

/*	  SET res = totalventanota;*/

/*
			INSERT INTO wh_tbl_desgvta_detalle  (desgvtadet_desgvta_ide,desgvtadet_nota_ide,desgvtadet_monto,desgvtadet_fecproc)
				VALUES (ide,nota_ide,mto,now());  
		SET res = LAST_INSERT_ID();					*/

  RETURN res;

ELSE IF ope = 3 THEN
  delete from wh_tbl_desgvta_detalle where desgvtadet_ide = ide;
	CALL sp_auditori(usu,3,'wh_tbl_desgvta_detalle',ide);
end if;

END IF;
return res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desglosenota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desglosenota`(`ide` INT, `ide_compra` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
/*Insertar notas para un desglose**/
declare tot INT ;
	DECLARE res VARCHAR(50) DEFAULT 1;
	
IF ope = 1 THEN

			SELECT COUNT(*) INTO tot FROM wh_tbl_desglose_nota WHERE desgnota_desglose_ide = ide and desgnota_nota_ide = ide_compra and desgnota_borrado =0 ;

			IF tot>0 THEN

				SET res='Nota ya registrada para este desglose';

			ELSE

				INSERT INTO wh_tbl_desglose_nota  (desgnota_desglose_ide, desgnota_nota_ide, desgnota_fecha_proc)
				VALUES (ide,ide_compra,now());
				SET res = LAST_INSERT_ID();	
        UPDATE wh_tbl_compra set compra_estatus = 3 where compra_ide = ide_compra;				
				RETURN res;
			end if;

ELSE IF ope = 3 THEN
  delete from wh_tbl_desglose_nota where desgnota_ide = ide;
	CALL sp_auditori(usu,3,'wh_tbl_desglose_nota',ide);
end if;

END IF;
return res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desgloseventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desgloseventa`(`ide` INT, `clien_ide`  INT,`vende_ide`  INT, `tipo`  INT  ,`porc_ide`  INT,`porc_asig`  INT,`cond_venta`  INT  ,  `ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN

	DECLARE res VARCHAR(50) DEFAULT 1;
	
IF ope = 1 THEN
			INSERT INTO wh_tbl_desgvta  (
desgvta_desg_ide,
desgvta_clien_ide,
desgvta_vende_ide,
desgvta_tipo,
desgvta_porc_ide,
desgvta_porc_asig,
desgvta_cond,
desgvta_fecha_proc
)
				VALUES (
ide,
clien_ide,
vende_ide,
tipo, 
porc_ide,
porc_asig,
cond_venta,
now());
		SET res = LAST_INSERT_ID();					
  RETURN res;

ELSE IF ope = 3 THEN
  delete from wh_tbl_desgvta where desgvta_ide = ide;
	CALL sp_auditori(usu,3,'wh_tbl_desgvta',ide);
end if;

END IF;
return res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_desgnota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_desgnota`(`ide` INT,`desglose_ide` INT,`nota_ide` INT ,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
	DECLARE res VARCHAR(50) DEFAULT 1;
	

IF ope = 1 THEN
			INSERT INTO wh_tbl_desglose_nota (desgnota_desglose_ide,desgnota_nota_ide, desgnota_fecha_proc)
				VALUES (desglose_ide, nota_ide,fec,now());
		SET res = LAST_INSERT_ID();					
  RETURN res;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_detaprod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_detaprod`(`ide` INT(11), `imei` VARCHAR(32), `seri` VARCHAR(32), `producide` INT, `factura` INT, `cant` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN

	IF imei='' THEN

		SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE (detaprod_serial=seri);

	ELSE

		SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE (detaprod_imei=imei);

	end if;

	IF tot>0 THEN

		SET res='Elemento ya registrado';

	ELSE

		INSERT INTO tbl_detaprod(detaprod_ide,detaprod_imei,detaprod_serial,detaprod_faccom,detaprod_producto) VALUES(ide,imei,seri,factura,producide);

		SET res = LAST_INSERT_ID();

		CALL sp_auditori(usu,1,'detaprod',res);

	end IF;

ELSEIF ope=2 THEN

	SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE ((detaprod_imei=imei AND imei<>'') or (detaprod_serial=seri AND seri<>''))AND detaprod_ide<>ide;

	IF tot>0 THEN

		SET res='Elemento ya registrado';

	ELSE

		UPDATE tbl_detaprod SET detaprod_imei=imei, detaprod_serial=seri WHERE detaprod_ide=ide;

		CALL sp_auditori(usu,2,'detaprod',ide);

	end IF;

ELSEIF ope=3 THEN

	UPDATE tbl_detaprod SET detaprod_borrado=1 WHERE detaprod_ide=ide;

	CALL sp_auditori(usu,3,'detaprod',ide);

ELSEIF ope=5 THEN

	IF ide>0 THEN

		UPDATE tbl_detaprod SET detaprod_borrado=0 WHERE detaprod_ide=ide;

		CALL sp_auditori(usu,5,'detaprod',ide);

	ELSEIF ide=0 THEN

		UPDATE tbl_producto SET produc_borrado=0 WHERE produc_ide=producide;

		CALL sp_auditori(usu,5,'producto',producide);

	end IF;

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=producide;

	SELECT produc_servicio INTO @servi FROM tbl_producto WHERE produc_ide=producide;

	IF @servi=0 THEN

		SET @exinue=@exiant+cant;

		UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=producide;

		CALL sp_auditori(usu,5,'producto',producide);

	ELSEIF @servi=1 THEN

		SET @exinue=@exiant;

	end IF;

	

	SELECT fact_ide_tienda INTO @factuventa FROM tbl_factura WHERE fact_ide=factura;

	

	UPDATE tbl_kardex SET kardex_borrado=1 WHERE kardex_factura=factura AND kardex_tipo=2;

	

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num) VALUES(0,producide,ide,4,@exiant,cant,@exinue,factura,NOW(),@factuventa);

	CALL sp_auditori(usu,1,'kardex',producide);

ELSEIF ope=6 THEN

	IF ide>0 THEN

		UPDATE tbl_detaprod SET detaprod_borrado=0 WHERE detaprod_ide=ide;

		CALL sp_auditori(usu,5,'detaprod',ide);

	ELSEIF ide=0 THEN

		UPDATE tbl_producto SET produc_borrado=0 WHERE produc_ide=producide;

		CALL sp_auditori(usu,5,'producto',producide);

	end IF;

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=producide;

	SELECT produc_servicio INTO @servi FROM tbl_producto WHERE produc_ide=producide;

	IF @servi=0 THEN

		SET @exinue=@exiant+cant;

		UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=producide;

		CALL sp_auditori(usu,5,'producto',producide);

	ELSEIF @servi=1 THEN

		SET @exinue=@exiant;

	end IF;

	

	SELECT noen_ide_tienda INTO @notaentrega FROM tbl_notaentre WHERE noen_ide=notaentre;

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num) VALUES(0,producide,ide,14,@exiant,cant,@exinue,factura,NOW(),@notaentrega);

	CALL sp_auditori(usu,1,'kardex',producide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_detaprod_temp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_detaprod_temp`(`ide` INT, `imei` VARCHAR(32), `seri` VARCHAR(32), `producide` INT, `factura` INT, `cant` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

DECLARE tot1 INT;

IF ope=1 THEN

	IF imei='' THEN

		SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE (detaprod_serial=seri);

		SELECT COUNT(*) INTO tot1 FROM tbl_detaprod_temp WHERE (detaprod_serial=seri);

	ELSE

		SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE (detaprod_imei=imei);

		SELECT COUNT(*) INTO tot1 FROM tbl_detaprod_temp WHERE (detaprod_imei=imei);

	end if;

	IF tot>0 or tot1>0 THEN

		SET res='Elemento ya registrado';

	ELSE

		INSERT INTO tbl_detaprod_temp(detaprod_ide,detaprod_imei,detaprod_serial,detaprod_faccom,detaprod_producto) VALUES(ide,imei,seri,factura,producide);

		SET res = LAST_INSERT_ID();

		CALL sp_auditori(usu,1,'detaprod_temp',res);

	end IF;

ELSEIF ope=2 THEN

	SELECT COUNT(*) INTO tot FROM tbl_detaprod WHERE ((detaprod_imei=imei AND imei<>'') or (detaprod_serial=seri AND seri<>''))AND detaprod_ide<>ide;

	SELECT COUNT(*) INTO tot1 FROM tbl_detaprod_temp WHERE ((detaprod_imei=imei AND imei<>'') or (detaprod_serial=seri AND seri<>''))AND detaprod_ide<>ide;

	IF tot>0 or tot1>0 THEN

		SET res='Elemento ya registrado';

	ELSE

		UPDATE tbl_detaprod_temp SET detaprod_imei=imei, detaprod_serial=seri WHERE detaprod_ide=ide;

		CALL sp_auditori(usu,2,'detaprod_temp',ide);

	end IF;

ELSEIF ope=3 THEN

	DELETE FROM tbl_detaprod_temp WHERE detaprod_ide=ide;

	CALL sp_auditori(usu,3,'detaprod_temp',ide);

ELSEIF ope=5 THEN

	DELETE FROM tbl_detaprod_temp WHERE detaprod_faccom=factura;

	CALL sp_auditori(usu,5,'detaprod_temp',factura);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_empresa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_empresa`(`ide` INT(11), `rif` VARCHAR(13), `nom` VARCHAR(256), `dir` VARCHAR(512), `tel` VARCHAR(200), `cor` VARCHAR(100), `dol` DECIMAL(11,2), `fac` INT(11), `con` INT(11), `noe` INT(11), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_empresa WHERE empresa_rif=rif;

IF tot>0 THEN

SET res='Tienda ya registrada';

ELSE

INSERT INTO tbl_empresa(empresa_rif,empresa_nombre,empresa_direccion,empresa_telefono,empresa_email,fact_cont,ctrol_cont,noen_cont,valor_dolar) VALUES(rif,nom,dir,tel,cor,fac,con,noe,dol);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'empresa',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_empresa WHERE empresa_nombre=nom AND empresa_rif<>rif;

IF tot>0 THEN

SET res='Tienda ya registrada';

ELSE

UPDATE tbl_empresa SET empresa_rif=rif, empresa_nombre=nom, empresa_direccion=dir, empresa_telefono=tel, empresa_email=cor, fact_cont=fac, ctrol_cont=con, noen_cont=noe, valor_dolar=dol WHERE empresa_ide=ide;

CALL sp_auditori(usu,2,'empresa',ide);

end IF;

ELSE

UPDATE tbl_empresa SET empresa_borrado=1 WHERE empresa_ide=ide;

CALL sp_auditori(usu,3,'empresa',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_factura`(`ide` INT, `tienda` INT, `cliente` INT, `subtotal` DOUBLE, `totaliva` DOUBLE, `total` DOUBLE, `forpag` INT, `efecti` DOUBLE, `tardeb` DOUBLE, `tarcre` DOUBLE, `tarali` DOUBLE, `cheque` DOUBLE, `banche` INT, `numche` VARCHAR(32), `transf` DOUBLE, `bantra` INT, `numtra` VARCHAR(32), `tipfac` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res0 VARCHAR(50) DEFAULT 1;

DECLARE nf, nc BIGINT;



IF ope=1 THEN

	SELECT fact_cont INTO @nf FROM tbl_empresa WHERE (empresa_ide=tienda);

	SELECT ctrol_cont INTO @nc FROM tbl_empresa WHERE (empresa_ide=tienda);

	SET @nf=@nf+1;

	SET @nc=@nc+1;

	INSERT INTO tbl_factura(fact_fecha,fact_tienda,fact_cliente,fact_sub_totalexe,fact_sub_totaliva,fact_total_general,fact_forpag,fact_efecti,fact_tardeb,fact_tarcre,fact_tarali,fact_cheque,fact_banche,fact_numche,fact_transf,fact_bantra,fact_numtra,fact_ide_tienda,fact_control_tienda,fact_pago_electronico) VALUES(NOW(),tienda,cliente,subtotal,totaliva,total,forpag,efecti,tardeb,tarcre,tarali,cheque,banche,numche,transf,bantra,numtra,@nf,@nc,tipfac);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'factura',res);

	UPDATE tbl_empresa SET fact_cont=@nf, ctrol_cont=@nc WHERE (empresa_ide=tienda);

	CALL sp_auditori(usu,1,'empresa',tienda);



ELSEIF ope=2 THEN

UPDATE tbl_factura SET fact_cliente=cliente WHERE fact_ide=ide;

CALL sp_auditori(usu,2,'factura',ide);



ELSE

UPDATE tbl_factura SET fact_anulada=1, fact_fecha_anulada=NOW() WHERE fact_ide=ide;

CALL sp_auditori(usu,3,'factura',ide);

end IF;

SET res0 = res;

RETURN res0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_facturadeta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_facturadeta`(`ide` INT, `factura` VARCHAR(32), `idep` INT, `idepd` INT, `cant` DECIMAL(11,2), `base` DECIMAL(11,2), `piva` DECIMAL(11,2), `iva` DECIMAL(11,2), `precio` DECIMAL(11,2), `monto` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res1 VARCHAR(50) DEFAULT 1;

DECLARE exiant DOUBLE;

DECLARE exinue DOUBLE;



IF ope=1 THEN

	

	INSERT INTO tbl_factura_deta(factdeta_ide,factdeta_factura,factdeta_produc,factdeta_producdeta,factdeta_cant,factdeta_base,factdeta_piva,factdeta_iva,factdeta_precio,factdeta_monto) VALUES(ide,factura,idep,idepd,cant,base,piva,iva,precio,monto);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'factura_deta',res);

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant-cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,2,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,2,'detaprod',idepd);

	END IF;

	

	SELECT fact_ide_tienda INTO @factuventa FROM tbl_factura WHERE fact_ide=factura;

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num,kardex_precio_momento) VALUES(ide,idep,idepd,2,@exiant,cant,@exinue,factura,NOW(),@factuventa,(base/cant));

	CALL sp_auditori(usu,1,'kardex',factura);



ELSEIF ope=2 THEN

	

	UPDATE tbl_factura_deta SET factdeta_cant=cant, factdeta_precio=precio, factdeta_monto=monto WHERE factdeta_ide=ide;

	CALL sp_auditori(usu,2,'factura_deta',ide);



ELSEIF ope=5 THEN

	

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant-cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,2,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,2,'detaprod',idepd);

	END IF;

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num,kardex_observacion) VALUES(ide,idep,idepd,5,@exiant,cant,@exinue,0,NOW(),0,factura);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,7,'kardex',res);



ELSEIF ope=6 THEN

	

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant-cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,2,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,2,'detaprod',idepd);

	END IF;

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num,kardex_observacion) VALUES(ide,idep,idepd,6,@exiant,cant,@exinue,0,NOW(),0,factura);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,8,'kardex',res);



ELSEIF ope=15 THEN

	

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant+cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,2,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,2,'detaprod',idepd);

	END IF;

	

	UPDATE tbl_kardex SET kardex_borrado=1 WHERE kardex_ide=ide;

	

	INSERT INTO tbl_kardex(kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num,kardex_observacion,kardex_borrado) VALUES(idep,idepd,15,@exiant,cant,@exinue,0,NOW(),0,factura,15);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,9,'kardex',res);



ELSEIF ope=16 THEN

	

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant+cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,2,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,2,'detaprod',idepd);

	END IF;

	

	UPDATE tbl_kardex SET kardex_borrado=1 WHERE kardex_ide=ide;

	

	INSERT INTO tbl_kardex(kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num,kardex_observacion,kardex_borrado) VALUES(idep,idepd,16,@exiant,cant,@exinue,0,NOW(),0,factura,16);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,10,'kardex',res);



ELSE

	

	DELETE from tbl_factura_deta WHERE factdeta_ide=ide;

	CALL sp_auditori(usu,3,'factura_deta',ide);

end IF;

SET res1 = res;

RETURN res1;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_facturadetatemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_facturadetatemp`(`ide` INT, `factura` VARCHAR(32), `idep` INT, `idepd` INT, `cant` DECIMAL(11,2), `base` DECIMAL(11,2), `piva` DECIMAL(11,2), `iva` DECIMAL(11,2), `precio` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tbase, tiva, monto DOUBLE;

SET tbase=(cant*base);

SET tiva=(cant*iva);

SET monto=(cant*precio);

IF ope=1 THEN

INSERT INTO tbl_factura_deta_temp(factdetatemp_ide,factdetatemp_factura,factdetatemp_produc,factdetatemp_producdeta,factdetatemp_cant,factdetatemp_base,factdetatemp_piva,factdetatemp_iva,factdetatemp_precio,factdetatemp_monto) VALUES(ide,factura,idep,idepd,cant,tbase,piva,tiva,precio,monto);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'factura_deta_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_factura_deta_temp SET factdetatemp_cant=cant, factdetatemp_base=tbase, factdetatemp_iva=tiva, factdetatemp_precio=precio, factdetatemp_monto=monto WHERE factdetatemp_ide=ide;

CALL sp_auditori(usu,2,'factura_deta_temp',ide);



ELSEIF ope=3 THEN

DELETE from tbl_factura_deta_temp WHERE factdetatemp_ide=ide;

CALL sp_auditori(usu,3,'factura_deta_temp',ide);



ELSEIF ope=5 THEN

DELETE from tbl_factura_deta_temp WHERE factdetatemp_factura=factura;

CALL sp_auditori(usu,5,'factura_deta_temp',factura);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_facturatemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_facturatemp`(`ide` INT, `tienda` INT, `cliente` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;



IF ope=1 THEN

INSERT INTO tbl_factura_temp(fact_fecha,fact_tienda,fact_cliente) VALUES(NOW(),tienda,cliente);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'factura_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_factura_temp SET fact_cliente=cliente WHERE fact_ide=ide;

CALL sp_auditori(usu,2,'factura_temp',ide);



ELSE

DELETE from tbl_factura_deta_temp WHERE factdetatemp_ide=ide;

CALL sp_auditori(usu,3,'factura_temp',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_impuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_impuesto`(`ide` INT(11), `des` INT(11), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_impuesto WHERE impuesto_porcent=des;

IF tot>0 THEN

SET res='Tasa de Impuesto ya registrado';

ELSE

INSERT INTO tbl_impuesto(impuesto_ide,impuesto_porcent) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'impuesto',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_impuesto WHERE impuesto_porcent=des AND impuesto_ide<>ide;

IF tot>0 THEN

SET res='Tasa de Impuesto ya registrado';

ELSE

UPDATE tbl_impuesto SET impuesto_porcent=des WHERE impuesto_ide=ide;

CALL sp_auditori(usu,2,'impuesto',ide);

end IF;

ELSE

UPDATE tbl_impuesto SET impuesto_borrado=1 WHERE impuesto_ide=ide;

CALL sp_auditori(usu,3,'impuesto',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_marca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_marca`(`ide` INT(11), `des` VARCHAR(128), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_marca WHERE marca_descrip=des;

IF tot>0 THEN

SET res='Marca ya registrada';

ELSE

INSERT INTO tbl_marca(marca_ide,marca_descrip) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'marca',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_marca WHERE marca_descrip=des AND marca_ide<>ide;

IF tot>0 THEN

SET res='Marca ya registrada';

ELSE

UPDATE tbl_marca SET marca_descrip=des WHERE marca_ide=ide;

CALL sp_auditori(usu,2,'marca',ide);

end IF;

ELSE

UPDATE tbl_marca SET marca_borrado=1 WHERE marca_ide=ide;

CALL sp_auditori(usu,3,'marca',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_marca_wh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_marca_wh`(`ide` INT(11), `des` VARCHAR(128), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM wh_tbl_marca WHERE marca_descrip=des;

IF tot>0 THEN

SET res='Marca ya registrada';

ELSE

INSERT INTO wh_tbl_marca(marca_ide,marca_descrip) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'marca_wh',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM wh_tbl_marca WHERE marca_descrip=des AND marca_ide<>ide;

IF tot>0 THEN

SET res='Marca ya registrada';

ELSE

UPDATE wh_tbl_marca SET marca_descrip=des WHERE marca_ide=ide;

CALL sp_auditori(usu,2,'marca_wh',ide);

end IF;

ELSE

UPDATE wh_tbl_marca SET marca_borrado=1 WHERE marca_ide=ide;

CALL sp_auditori(usu,3,'marca_wh',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_modelo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_modelo`(`ide` INT(11), `des` VARCHAR(128), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_modelo WHERE modelo_descrip=des;

IF tot>0 THEN

SET res='Modelo ya registrado';

ELSE

INSERT INTO tbl_modelo(modelo_ide,modelo_descrip) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'modelo',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_modelo WHERE modelo_descrip=des AND modelo_ide<>ide;

IF tot>0 THEN

SET res='Modelo ya registrado';

ELSE

UPDATE tbl_modelo SET modelo_descrip=des WHERE modelo_ide=ide;

CALL sp_auditori(usu,2,'modelo',ide);

end IF;

ELSE

UPDATE tbl_modelo SET modelo_borrado=1 WHERE modelo_ide=ide;

CALL sp_auditori(usu,3,'modelo',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_moneda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_moneda`(`ide` INT(11), `des` VARCHAR(64), `mon` VARCHAR(8), `opera` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN

  SELECT COUNT(*) INTO tot FROM tbl_moneda WHERE moneda_descrip=des OR moneda_abreviada=mon;

  IF tot>0 THEN

    SET res='Moneda ya registrada';

  ELSE

    INSERT INTO tbl_moneda(moneda_descrip,moneda_abreviada,moneda_operacion) VALUES(des,mon,opera);

    SET res = LAST_INSERT_ID();

    CALL sp_auditori(usu,1,'moneda',res);

  end IF;

ELSEIF ope=3 THEN

  UPDATE tbl_moneda SET moneda_borrado=1 WHERE moneda_ide=ide;

  CALL sp_auditori(usu,3,'moneda',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_moneda_tasa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_moneda_tasa`(`ide` INT(11), `mon` INT, `tas` DECIMAL(18,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

IF ope=1 THEN

  INSERT INTO tbl_moneda_valor(monval_moneda_ide,monval_valor,monval_fecha_registro) VALUES(mon,tas,NOW());

  SET res = LAST_INSERT_ID();

  CALL sp_auditori(usu,1,'moneda_valor',res);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_notaentre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_notaentre`(`ide` INT, `tienda` INT, `cliente` INT, `subtotal` DOUBLE, `totaliva` DOUBLE, `total` DOUBLE, `forpag` INT, `efecti` DOUBLE, `tardeb` DOUBLE, `tarcre` DOUBLE, `tarali` DOUBLE, `cheque` DOUBLE, `banche` INT, `numche` VARCHAR(32), `transf` DOUBLE, `bantra` INT, `numtra` VARCHAR(32), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res0 VARCHAR(50) DEFAULT 1;

DECLARE nec BIGINT;



IF ope=1 THEN

	SELECT noen_cont INTO @nec FROM tbl_empresa WHERE (empresa_ide=tienda);

	SET @nec=@nec+1;

	INSERT INTO tbl_notaentre(noen_fecha,noen_tienda,noen_cliente,noen_sub_totalexe,noen_sub_totaliva,noen_total_general,noen_forpag,noen_efecti,noen_tardeb,noen_tarcre,noen_tarali,noen_cheque,noen_banche,noen_numche,noen_transf,noen_bantra,noen_numtra,noen_ide_tienda,noen_control_tienda) VALUES(NOW(),tienda,cliente,subtotal,totaliva,total,forpag,efecti,tardeb,tarcre,tarali,cheque,banche,numche,transf,bantra,numtra,@nec,@nec);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'notaentre',res);

	UPDATE tbl_empresa SET noen_cont=@nec WHERE (empresa_ide=tienda);

	CALL sp_auditori(usu,1,'empresa',tienda);



ELSEIF ope=2 THEN

UPDATE tbl_notaentre SET noen_cliente=cliente WHERE noen_ide=ide;

CALL sp_auditori(usu,2,'notaentre',ide);



ELSE

UPDATE tbl_notaentre SET noen_anulada=1, noen_fecha_anulada=NOW() WHERE noen_ide=ide;

CALL sp_auditori(usu,3,'notaentre',ide);

end IF;

SET res0 = res;

RETURN res0;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_notaentredeta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_notaentredeta`(`ide` INT(11), `notaentre` VARCHAR(32), `idep` INT(11), `idepd` INT(11), `cant` DECIMAL(11,2), `precio` DECIMAL(11,2), `monto` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE res1 VARCHAR(50) DEFAULT 1;

DECLARE exiant DOUBLE;

DECLARE exinue DOUBLE;



IF ope=1 THEN

	

	INSERT INTO tbl_notaentre_deta(noendeta_ide,noendeta_notaentre,noendeta_produc,noendeta_producdeta,noendeta_cant,noendeta_precio,noendeta_monto) VALUES(ide,notaentre,idep,idepd,cant,precio,monto);

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'notaentredeta',res);

	

	SELECT produc_existen INTO @exiant FROM tbl_producto WHERE produc_ide=idep;

	SET @exinue=@exiant-cant;

	UPDATE tbl_producto SET produc_existen=@exinue WHERE produc_ide=idep and produc_servicio=0;

	CALL sp_auditori(usu,5,'producto',idep);

	IF idepd>0 THEN

		

		UPDATE tbl_detaprod SET detaprod_borrado=5 WHERE detaprod_ide=idepd;

		CALL sp_auditori(usu,5,'detaprod',idepd);

	END IF;

	

	SELECT noen_ide_tienda INTO @notaentrega FROM tbl_notaentre WHERE noen_ide=notaentre;

	

	INSERT INTO tbl_kardex(kardex_ide,kardex_producto,kardex_producto_deta,kardex_tipo,kardex_existen_ant,kardex_cantidad,kardex_existen_pos,kardex_factura,kardex_fecha,kardex_factura_num) VALUES(ide,idep,idepd,12,@exiant,cant,@exinue,notaentre,NOW(),@notaentrega);

	CALL sp_auditori(usu,1,'kardex',notaentre);



ELSEIF ope=2 THEN

	

	UPDATE tbl_notaentre_deta SET noendeta_cant=cant, noendeta_precio=precio, noendeta_monto=monto WHERE noendeta_ide=ide;

	CALL sp_auditori(usu,2,'notaentredeta',ide);



ELSE

	

	DELETE from tbl_notaentre_deta WHERE noendeta_ide=ide;

	CALL sp_auditori(usu,3,'notaentredeta',ide);

end IF;

SET res1 = res;

RETURN res1;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_notaentredetatemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_notaentredetatemp`(`ide` INT(11), `notaentre` VARCHAR(32), `idep` INT(11), `idepd` INT(11), `cant` DECIMAL(11,2), `precio` DECIMAL(11,2), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE monto DOUBLE;

SET monto=(cant*precio);

IF ope=1 THEN

INSERT INTO tbl_notaentre_deta_temp(noendetatemp_ide,noendetatemp_notaentre,noendetatemp_produc,noendetatemp_producdeta,noendetatemp_cant,noendetatemp_precio,noendetatemp_monto) VALUES(ide,notaentre,idep,idepd,cant,precio,monto);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'notaentre_deta_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_notaentre_deta_temp SET noendetatemp_cant=cant, noendetatemp_precio=precio, noendetatemp_monto=monto WHERE noendetatemp_ide=ide;

CALL sp_auditori(usu,2,'notaentre_deta_temp',ide);



ELSEIF ope=3 THEN

DELETE from tbl_notaentre_deta_temp WHERE noendetatemp_ide=ide;

CALL sp_auditori(usu,3,'notaentre_deta_temp',ide);



ELSEIF ope=5 THEN

DELETE from tbl_notaentre_deta_temp WHERE noendetatemp_notaentre=notaentre;

CALL sp_auditori(usu,5,'notaentre_deta_temp',notaentre);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_notaentretemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_notaentretemp`(`ide` INT, `tienda` INT, `cliente` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;



IF ope=1 THEN

INSERT INTO tbl_notaentre_temp(noen_tienda,noen_cliente,noen_fecha) VALUES(tienda,cliente,NOW());

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'notaentre_temp',res);



ELSEIF ope=2 THEN

UPDATE tbl_notaentre_temp SET noen_cliente=cliente WHERE noen_ide=ide;

CALL sp_auditori(usu,2,'notaentre_temp',ide);



ELSE

DELETE from tbl_notaentre_deta_temp WHERE noendetatemp_ide=ide;

CALL sp_auditori(usu,3,'notaentre_temp',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_orden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_orden`(`ide` INT, `clien_ide` INT, `prove_ide` INT, `control`  varchar(25),`fec` DATE, `tienda` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

IF ope=1 THEN

	INSERT INTO tbl_orden (orden_prove_ide, orden_clien_ide, orden_control, orden_fecha, orden_tienda, orden_fecha_reg) VALUES (prove_ide,clien_ide,control,fec,tienda,now());

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'orden',res);

ELSEIF ope=2 THEN

	UPDATE tbl_orden SET orden_prove_ide=prove_ide, orden_clien_ide=clien_ide, orden_control=control, orden_fecha=fec WHERE orden_ide=ide;

	CALL sp_auditori(usu,2,'orden',ide);

ELSEIF ope=3 THEN

	UPDATE tbl_orden SET orden_borrado=1 WHERE orden_ide=ide;

	CALL sp_auditori(usu,3,'orden',ide);

ELSEIF ope=4 THEN

	UPDATE tbl_orden SET orden_status=1 WHERE orden_ide=ide;

	CALL sp_auditori(usu,4,'orden',ide);

END IF;

RETURN res;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_pago`(`ide` INT(11),`fec` DATE, `fpago` INT, `refer` VARCHAR(100), `bco_origen` INT, `bco_dest` INT, `envia` VARCHAR(100), `mto_bs` double, `mto` double, `tasa` double, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
IF ope=1 THEN
	SELECT COUNT(*) INTO tot FROM tbl_pago WHERE pago_forma= fpago AND pago_monto= mto AND pago_fecha = fec and pago_ref = refer;
	IF tot>0 THEN
		SET res='Pago ya registrado  15/08/2024';
	ELSE
		INSERT INTO tbl_pago(pago_forma,pago_monto,pago_fecha,pago_ref) VALUES (fpago,mto,fec,refer);
		SET res = LAST_INSERT_ID();
		CALL sp_auditori(usu,1,'pago',res);
	end IF;
end if;
RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_producto`(`ide` INT, `cod` VARCHAR(32), `des` VARCHAR(255), `exi` DECIMAL(11,2), `cos` DECIMAL(11,2), `pre1` DECIMAL(11,2), `pre2` DECIMAL(11,2), `pre3` DECIMAL(11,2), `pre4` DECIMAL(11,2), `col` VARCHAR(32), `tal` VARCHAR(32), `unm` INT, `med` DECIMAL(11,2), `mar` INT, `model` INT, `imp` INT, `ser` INT, `pse` INT, `obs` VARCHAR(512), `tie` INT, `sto` INT, `valdol` DECIMAL(11,2), `ope` INT, `usua` INT) RETURNS varchar(100) CHARSET latin1
BEGIN

DECLARE tot int;

DECLARE res VARCHAR(100) DEFAULT 1;

DECLARE res_1 VARCHAR(100) DEFAULT 1;

DECLARE response VARCHAR(100);

IF ope=1 THEN 

SELECT COUNT(*) INTO tot FROM tbl_producto WHERE produc_descrip=des AND produc_marca=mar AND produc_modelo=model AND produc_color=col;

IF tot>0 THEN 

SET res='Producto o Servicio ya registrado';

ELSE



INSERT INTO tbl_producto(produc_codigo,produc_descrip,produc_existen,produc_costo,produc_precio1,produc_precio2,produc_precio3,produc_precio4,produc_color,produc_talla,produc_unidmed,produc_medida,produc_marca,produc_modelo,produc_impuesto,produc_servicio,produc_serializado,produc_tienda,produc_stock,produc_observa,produc_preciodolar) VALUES(cod,des,exi,cos,pre1,pre2,pre3,pre4,col,tal,unm,med,mar,model,imp,ser,pse,tie,sto,obs,valdol);

SET res= LAST_INSERT_ID();



CALL sp_auditori(usua,1,'producto',res);

end IF;



ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_producto WHERE produc_descrip=des AND produc_marca=mar AND produc_modelo=model AND produc_color=col AND produc_ide<>ide;

IF tot>0 THEN 

SET res='Producto o Servicio ya registrado';

ELSE

UPDATE tbl_producto SET produc_codigo=cod, produc_descrip=des, produc_existen=exi, produc_costo=cos, produc_precio1=pre1, produc_precio2=pre2, produc_precio3=pre3, produc_precio4=pre4, produc_color=col, produc_talla=tal, produc_unidmed=unm, produc_medida=med, produc_marca=mar, produc_modelo=model, produc_impuesto=imp, produc_serializado=pse, produc_servicio=ser, produc_tienda=tie, produc_stock=sto, produc_observa=obs, produc_preciodolar=valdol WHERE produc_ide=ide;

CALL sp_auditori(usua,2,'producto',ide);

end IF;



ELSEIF ope=4 THEN 

SELECT COUNT(*) INTO tot FROM tbl_producto WHERE produc_ide=ide;

IF tot>0 THEN 

SET res='Producto o Servicio ya registrado';

ELSE

INSERT INTO tbl_producto(produc_codigo,produc_descrip,produc_existen,produc_costo,produc_precio1,produc_precio2,produc_precio3,produc_precio4,produc_color,produc_talla,produc_unidmed,produc_medida,produc_marca,produc_modelo,produc_impuesto,produc_servicio,produc_serializado,produc_tienda,produc_stock,produc_observa,produc_preciodolar) VALUES(cod,des,exi,cos,pre1,pre2,pre3,pre4,col,tal,unm,med,mar,model,imp,ser,pse,tie,sto,obs,valdol);

SET res= LAST_INSERT_ID();

CALL sp_auditori(usua,1,'producto',res);

end IF;



ELSE

UPDATE tbl_producto SET produc_borrado=1 WHERE produc_ide=ide;

CALL sp_auditori(usua,3,'producto',ide);

end IF;

return res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_proveedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_proveedor`(`ide` INT, `tipo` VARCHAR(2), `cedrif` INT, `nombre1` VARCHAR(50), `alias` VARCHAR(50), `fecreg` DATE, `direcci` VARCHAR(150), `telcon` VARCHAR(11), `corre` VARCHAR(100), `coes` INT, `ubimap` VARCHAR(512), `ope` INT, `usua` INT) RETURNS varchar(100) CHARSET latin1
BEGIN

DECLARE tot, tot1 int;

DECLARE res VARCHAR(100) DEFAULT 1;

DECLARE res_1 VARCHAR(100) DEFAULT 1;

DECLARE response VARCHAR(100);

IF ope=1 THEN 

SELECT COUNT(*) INTO tot FROM tbl_proveedor WHERE prove_tipo=tipo AND prove_cedrif=cedrif;

IF tot>0 THEN 

	SELECT prove_ide, COUNT(*) INTO @ideexi, tot1 FROM tbl_proveedor WHERE prove_tipo=tipo AND prove_cedrif=cedrif AND prove_borrado=1;

	IF tot1>0 THEN

		SET res=CONCAT('Proveedor se encuentra Inactivo - ',@ideexi); 

		

	ELSE

		SET res='Proveedor ya registrado - 0';

	end IF;

ELSE



INSERT INTO tbl_proveedor(prove_tipo,prove_cedrif,prove_razonsocial,prove_alias,prove_fecreg,prove_direcci,prove_telcon,prove_correo,prove_contriespec,prove_ubimap) VALUES(tipo,cedrif,nombre1,alias,fecreg,direcci,telcon,corre,coes,ubimap);

SET res= LAST_INSERT_ID();



CALL sp_auditori(usua,1,'proveedor',res);

end IF;



ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_proveedor WHERE prove_tipo=tipo AND prove_cedrif=cedrif AND prove_ide<>ide;

IF tot>0 THEN 

SET res='Proveedor ya registrado';

ELSE

UPDATE tbl_proveedor SET prove_tipo=tipo, prove_cedrif=cedrif, prove_razonsocial=nombre1, prove_alias=alias, prove_fecreg=fecreg, prove_direcci=direcci, prove_telcon=telcon, prove_correo=corre, prove_contriespec=coes, prove_ubimap=ubimap WHERE prove_ide=ide;

CALL sp_auditori(usua,2,'proveedor',ide);

end IF;



ELSEIF ope=4 THEN 

SELECT COUNT(*) INTO tot FROM tbl_proveedor WHERE prove_tipo=tipo AND prove_cedrif=cedrif;

IF tot>0 THEN 

SET res='Proveedor ya registrado';

ELSE

INSERT INTO tbl_proveedor(prove_tipo,prove_cedrif,prove_razonsocial,prove_alias,prove_fecreg,prove_direcci,prove_telcon,prove_correo,prove_contriespec,prove_ubimap) VALUES(tipo,cedrif,nombre1,alias,fecreg,direcci,telcon,corre,coes,ubimap);

SET res= LAST_INSERT_ID();

CALL sp_auditori(usua,1,'proveedor',res);

end IF;



ELSEIF ope=8 THEN 

UPDATE tbl_proveedor SET prove_borrado=0 WHERE prove_ide=ide;

CALL sp_auditori(usua,2,'proveedor',ide);

SET res= LAST_INSERT_ID();



ELSE

UPDATE tbl_proveedor SET prove_borrado=1 WHERE prove_ide=ide;

CALL sp_auditori(usua,3,'proveedor',ide);

end IF;

return res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_prueba`(`ide` INT,`nro` varchar(20), `ope` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
	DECLARE res VARCHAR(50) DEFAULT 1;
	

IF ope = 1 THEN
			INSERT INTO wh_tbl_prueba (compra_num) VALUES (nro);
		SET res = LAST_INSERT_ID();					
  RETURN res;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_recibo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_recibo`(`ide` INT(11),`num` INT(11),`fec` DATE,`mto` double,`clien_ide` INT(11),`vende_ide` INT(11),`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
/*DECLARE nota VARCHAR(25);*/


IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM tbl_recibo_encab WHERE recencab_num=num ;

IF tot>0 THEN
	SET res='Recibo ya registrada';

  /*SET res= tot;*/
	/*SET res= nota;*/
ELSE

	INSERT INTO tbl_recibo_encab(
recencab_num,
recencab_fec,
recencab_monto,
recencab_clien_ide,
recencab_vende_ide

)

	VALUES(num, fec,mto, clien_ide,vende_ide);
	SET res = LAST_INSERT_ID();

	/*SET res = LAST_INSERT_ID();*/
	CALL sp_auditori(usu,1,'tbl_recibo',res);
end IF;
RETURN res;
End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_recibonota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_recibonota`(`ide` INT(11), `mto` double,  `encab_ide` INT(11),`venta_ide` INT(11),`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
/*DECLARE nota VARCHAR(25);*/


IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM tbl_recibo_nota WHERE recnota_venta_ide = venta_ide AND recnota_encab_ide=encab_ide;

IF tot>0 THEN
	SET res='Nota  ya registrada para este recibo .... ';

  /*SET res= tot;*/
	/*SET res= nota;*/
ELSE

	INSERT INTO tbl_recibo_nota(
recnota_encab_ide,
recnota_venta_ide

)
	VALUES(encab_ide, venta_ide);
	SET res = LAST_INSERT_ID();

	/*SET res = LAST_INSERT_ID();*/
	CALL sp_auditori(usu,1,'tbl_recibo_nota',res);
end IF;
RETURN res;
End if;

IF ope=5 THEN /* Actualiza solo monto aplicado */
	UPDATE tbl_recibo_nota SET recnota_monto_aplicado =mto  , recnota_status = 1 WHERE recnota_ide=ide and recnota_status = 0;

	CALL sp_auditori(usu,2,'tbl_recibo_nota',ide);
  RETURN res;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_recibopago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_recibopago`(`encab_ide` INT(11),`forma` INT(11),`monto` INT(11),`fecha` DATE,`titular` INT(11),  `ref` varchar(100) ,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
DECLARE tot_pago INT;
/*DECLARE nota VARCHAR(25);*/


IF ope=1 THEN

SELECT COUNT(*) INTO tot_pago FROM tbl_pago WHERE pago_forma = forma and pago_monto = monto and pago_ref = ref and pago_fecha = fecha ;

IF tot_pago>0 THEN
	SET res='Pago  ya REPORTADO en PAGOS';
ELSE
	INSERT INTO tbl_pago(pago_forma,pago_monto,pago_fecha, pago_ref)	VALUES(forma, monto, fecha, ref);
	SET res = LAST_INSERT_ID();
	CALL sp_auditori(usu,1,'tbl_pago',res);
	SELECT COUNT(*) INTO tot FROM tbl_recibo_pago  WHERE  recpago_encab_ide=encab_ide AND recpago_pago_ide= res  ;
	IF tot_pago>0 THEN
		SET res='Pago ya registrado en este RECIBO...';
	ELSE
		insert into tbl_recibo_pago (recpago_encab_ide,recpago_pago_ide,recpago_fecha_proceso) VALUES (encab_ide,res,NOW());
		SET res = LAST_INSERT_ID();
		CALL sp_auditori(usu,1,'tbl_recibo_pago',res);
	END IF;
end IF;
RETURN res;
End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_requisicion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_requisicion`(`ide` INT, `tienda` INT, `clien_ide` INT, `vende_ide` INT, `mto`  DOUBLE,`fec` DATE, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

IF ope=1 THEN

	INSERT INTO tbl_requisicion (req_clien_ide, req_vende_ide, req_monto, req_fecha, req_tienda, req_fecha_reg) VALUES (clien_ide,vende_ide,mto,fec,tienda,now());

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'requisicion',res);

ELSEIF ope=2 THEN

	UPDATE tbl_requisicion SET req_monto=mto, req_vende_ide=vende_ide, req_fecha=fec WHERE req_ide=ide;

	CALL sp_auditori(usu,2,'requisicion',ide);

ELSEIF ope=3 THEN

	UPDATE tbl_requisicion SET req_borrado=1 WHERE req_ide=ide;

	CALL sp_auditori(usu,3,'requisicion',ide);

END IF;

RETURN res;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_requisiciondeta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_requisiciondeta`(`ide` INT, `req_ide` INT, `prove_ide` INT, `ord_ide` INT, `mtod`  DOUBLE,`fec` DATE, `estatus` INT, `tienda` INT, `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

IF ope=1 THEN

	IF ord_ide=0 THEN

		INSERT INTO tbl_orden (orden_prove_ide, orden_control, orden_fecha, orden_tienda, orden_fecha_reg) VALUES (prove_ide, '', now(), tienda, now());

		SET ord_ide = LAST_INSERT_ID();

		CALL sp_auditori(usu,1,'orden',ord_ide);

	END IF;



	INSERT INTO tbl_requisicion_deta (reqdet_req_ide, reqdet_prove_ide, reqdet_ord_ide, reqdet_monto, reqdet_fecha_reg) VALUES (req_ide,prove_ide,ord_ide,mtod,now());

	SET res = LAST_INSERT_ID();

	CALL sp_auditori(usu,1,'requisiciondeta',res);

ELSEIF ope=4 THEN

	UPDATE tbl_requisicion_deta SET reqdet_status=estatus WHERE reqdet_ide=ide;

	CALL sp_auditori(usu,4,'requisiciondeta',ide);

ELSEIF ope=3 THEN

	DELETE from tbl_requisicion_deta WHERE reqdet_ide=ide;

	CALL sp_auditori(usu,3,'requisiciondeta',ide);

END IF;

RETURN res;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_tipcli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_tipcli`(`ide` VARCHAR(2), `des` VARCHAR(100), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_tipcli WHERE tipcli_descrip=des;

IF tot>0 THEN

SET res='Tipo de Cliente ya registrado';

ELSE

INSERT INTO tbl_tipcli(tipcli_ide,tipcli_descrip) VALUES(ide,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'tipcli',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_tipcli WHERE tipcli_descrip=des AND tipcli_ide<>ide;

IF tot>0 THEN

SET res='Tipo de Cliente ya registrado';

ELSE

UPDATE tbl_tipcli SET tipcli_descrip=des WHERE tipcli_ide=ide;

CALL sp_auditori(usu,2,'tipcli',ide);

end IF;

ELSE

UPDATE tbl_tipcli SET tipcli_borrado=1 WHERE tipcli_ide=ide;

CALL sp_auditori(usu,3,'tipcli',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_tipousua` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_tipousua`(`ide` INT, `des` VARCHAR(100), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM tbl_tipousua WHERE tius_descrip=des;

IF tot>0 THEN

SET res='Nivel de seguridad ya registrado';

ELSE

INSERT INTO tbl_tipousua(tius_descrip) VALUES(des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'tipousua',res);

SET res = 1;

end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_tipousua WHERE tius_descrip=des AND tius_ide<>ide;

IF tot>0 THEN

SET res='Nivel de seguridad ya registrado';

ELSE

UPDATE tbl_tipousua SET tius_descrip=des WHERE tius_ide=ide;

CALL sp_auditori(usu,2,'tipousua',ide);

end IF;

ELSE

UPDATE tbl_tipousua SET tius_borrado=1 WHERE tius_ide=ide;

CALL sp_auditori(usu,3,'tipousua',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_unidmed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_unidmed`(`ide` INT(11), `abv` VARCHAR(32), `des` VARCHAR(128), `ope` INT, `usu` INT) RETURNS varchar(50) CHARSET latin1
BEGIN

DECLARE res VARCHAR(50) DEFAULT 1;

DECLARE tot INT;

IF ope=1 THEN



SELECT COUNT(*) INTO tot FROM tbl_unidmed WHERE unidmed_descrip=des;

IF tot>0 THEN

SET res='Unidad de Medida ya registrada';

ELSE

INSERT INTO tbl_unidmed(unidmed_ide,unidmed_abrevia,unidmed_descrip) VALUES(ide,abv,des);

SET res = LAST_INSERT_ID();

CALL sp_auditori(usu,1,'unidmed',res);



end IF;

ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_unidmed WHERE unidmed_descrip=des AND unidmed_ide<>ide;

IF tot>0 THEN

SET res='Unidad de Medida ya registrada';

ELSE

UPDATE tbl_unidmed SET unidmed_abrevia=abv, unidmed_descrip=des WHERE unidmed_ide=ide;

CALL sp_auditori(usu,2,'unidmed',ide);

end IF;

ELSE

UPDATE tbl_unidmed SET unidmed_borrado=1 WHERE unidmed_ide=ide;

CALL sp_auditori(usu,3,'unidmed',ide);

end IF;

RETURN res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_usuarios`(`ide` INT, `tipcli` VARCHAR(2), `numiden` INT, `nombre` VARCHAR(50), `apelli` VARCHAR(50), `fecnaci` DATE, `direcci` VARCHAR(150), `telmovi` VARCHAR(13), `corre` VARCHAR(100), `login` VARCHAR(100), `clave` VARCHAR(32), `tipo` INT, `tienda` INT, `ope` INT, `usua` INT) RETURNS varchar(100) CHARSET latin1
BEGIN

DECLARE tot int;

DECLARE res VARCHAR(100) DEFAULT 1;

DECLARE usuario_acceso INT;

IF ope=1 THEN 

SELECT COUNT(*) INTO tot FROM tbl_usuarios WHERE usua_tipo=tipcli AND usua_numiden=numiden;

IF tot>0 THEN 

SET res='Usuario ya registrado';

ELSE

INSERT INTO tbl_usuarios (usua_login,usua_clave,usua_tipo,usua_numiden,usua_nombre,usua_apelli,usua_fecnaci,usua_direcci,usua_telmovi,usua_correo,usua_estado,usua_visible,usua_tius,usua_tienda) VALUES(login,clave,tipcli,numiden,nombre,apelli,fecnaci,direcci,telmovi,corre,1,1,tipo,tienda);

SET res= LAST_INSERT_ID();

CALL sp_auditori(usua,1,'usuarios',res);

end IF;



ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_usuarios WHERE usua_tipo=tipcli AND usua_numiden=numiden AND usua_ide<>ide;

IF tot>0 THEN 

SET res='Usuario ya registrado';

ELSE

UPDATE tbl_usuarios SET usua_login=login, usua_clave=clave, usua_tipo=tipcli, usua_numiden=numiden, usua_nombre=nombre, usua_apelli=apelli, usua_fecnaci=fecnaci, usua_direcci=direcci, usua_telmovi=telmovi, usua_correo=corre, usua_tius=tipo, usua_tienda=tienda WHERE usua_ide=ide;

CALL sp_auditori(usua,2,'usuarios',ide);

end IF;



ELSEIF ope=5 THEN

  UPDATE tbl_usuarios SET usua_tienda=tienda WHERE usua_ide=ide;

  CALL sp_auditori(usua,5,'usuarios',ide);



ELSE

UPDATE tbl_usuarios SET usua_visible=0 WHERE usua_ide=ide;

CALL sp_auditori(usua,3,'usuarios',ide);

end IF;

return res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_vendedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_vendedor`(`ide` INT, `tipo` VARCHAR(2), `cedrif` INT, `nombre1` VARCHAR(50), `alias` VARCHAR(50), `fecreg` DATE, `direcci` VARCHAR(150), `telcon` VARCHAR(11), `corre` VARCHAR(100), `coes` INT, `ubimap` VARCHAR(512), `ope` INT, `usua` INT) RETURNS varchar(100) CHARSET latin1
BEGIN

DECLARE tot, tot1 int;

DECLARE res VARCHAR(100) DEFAULT 1;

DECLARE res_1 VARCHAR(100) DEFAULT 1;

DECLARE response VARCHAR(100);

IF ope=1 THEN 

SELECT COUNT(*) INTO tot FROM tbl_vendedor WHERE vende_tipo=tipo AND vende_cedrif=cedrif;

IF tot>0 THEN 

	SELECT vende_ide, COUNT(*) INTO @ideexi, tot1 FROM tbl_vendedor WHERE vende_tipo=tipo AND vende_cedrif=cedrif AND vende_borrado=1;

	IF tot1>0 THEN

		SET res=CONCAT('vendedor se encuentra Inactivo - ',@ideexi); 

		

	ELSE

		SET res='Vendedor ya registrado - 0';

	end IF;

ELSE



INSERT INTO tbl_vendedor(vende_tipo,vende_cedrif,vende_razonsocial,vende_alias,vende_fecreg,vende_direcci,vende_telcon,vende_correo,vende_contriespec,vende_ubimap) VALUES(tipo,cedrif,nombre1,alias,fecreg,direcci,telcon,corre,coes,ubimap);

SET res= LAST_INSERT_ID();



CALL sp_auditori(usua,1,'Vendedor',res);

end IF;



ELSEIF ope=2 THEN

SELECT COUNT(*) INTO tot FROM tbl_vendedor WHERE vende_tipo=tipo AND vende_cedrif=cedrif AND vende_ide<>ide;

IF tot>0 THEN 

SET res='Vendedor ya registrado';

ELSE

UPDATE tbl_vendedor SET vende_tipo=tipo, vende_cedrif=cedrif, vende_razonsocial=nombre1, vende_alias=alias, vende_fecreg=fecreg, vende_direcci=direcci, vende_telcon=telcon, vende_correo=corre, vende_contriespec=coes, vende_ubimap=ubimap WHERE vende_ide=ide;

CALL sp_auditori(usua,2,'vendedor',ide);

end IF;



ELSEIF ope=4 THEN 

SELECT COUNT(*) INTO tot FROM tbl_vendedor WHERE vende_tipo=tipo AND vende_cedrif=cedrif;

IF tot>0 THEN 

SET res='Vendedor ya registrado';

ELSE

INSERT INTO tbl_vendedor(vende_tipo,vende_cedrif,vende_razonsocial,vende_alias,vende_fecreg,vende_direcci,vende_telcon,vende_correo,vende_contriespec,vende_ubimap) VALUES(tipo,cedrif,nombre1,alias,fecreg,direcci,telcon,corre,coes,ubimap);

SET res= LAST_INSERT_ID();

CALL sp_auditori(usua,1,'vendedor',res);

end IF;



ELSEIF ope=8 THEN 

UPDATE tbl_vendedor SET vende_borrado=0 WHERE vende_ide=ide;

CALL sp_auditori(usua,2,'vendedor',ide);

SET res= LAST_INSERT_ID();



ELSE

UPDATE tbl_vendedor SET vende_borrado=1 WHERE vende_ide=ide;

CALL sp_auditori(usua,3,'vendedor',ide);

end IF;

return res;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_venta`(`ide` INT(11),  `compra_encab_ide` INT(11),`deta_ide` INT(11),`vende_ide` INT(11), `fec`  DATE, `fecha_envio`  DATE, `fecha_rec` DATE, `venta_num`  INT,`mto_asig`  DOUBLE,`mto_alm`  DOUBLE,`flete`  DOUBLE, `dcto`  INT,`cond`  INT,`mto_neto`  DOUBLE,`ope` INT, `usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;

IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM tbl_venta WHERE venta_compracom_deta_ide=deta_ide ;

IF tot>0 THEN
	SET res='Venta ya registrada';
ELSE
	INSERT INTO tbl_venta(venta_compra_encab_ide,venta_compracom_deta_ide,venta_num,venta_vende_ide,venta_fecha,venta_fecha_envio,venta_fecha_recepcion,venta_monto_asignado,venta_monto_almacen,venta_flete, venta_descuento,venta_condicion,venta_monto_neto) 
	VALUES(compra_encab_ide,deta_ide,venta_num,vende_ide,fec,fecha_envio,fecha_rec,mto_asig,mto_alm,flete,dcto,cond,mto_neto);
	SET res = LAST_INSERT_ID();
	CALL sp_auditori(usu,1,'venta',res);
end IF;
RETURN res;
End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_venta_taller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_venta_taller`(`ide` INT(11),`origen` INT(11),  `compra_ide` INT(11),`nota` VARCHAR(100),`fec_venta` DATE,    `porc_desc` double ,  `porc_asig` double,`monto_credito` double,`monto_contado` double,`wventa_flete` double,`cond_venta` INT,    `clien_venta_ide` INT(11),`vende_ide` INT(11), `saldo` double  ,`tienda` INT,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
/*DECLARE nota VARCHAR(25);*/

/*set nota = venta_num;*/
IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM wh_tbl_venta WHERE venta_num=nota AND venta_clien_ide= clien_venta_ide;

IF tot>0 THEN
	SET res='Venta ya registrada';

  /*SET res= tot;*/
	/*SET res= nota;*/
ELSE

  IF origen = 2 THEN
			UPDATE wh_tbl_desgvta SET desgvta_status = 1  WHERE desgvta_ide = ide;
			CALL sp_auditori(usu,8,'wh_tbl_desgvta',ide);
	end if;
	INSERT INTO wh_tbl_venta(venta_origen_ide,venta_compra_ide,venta_num,venta_fecha,venta_porc_desc,venta_porc_asig, venta_monto,venta_monto_credito ,venta_flete ,venta_condicion,venta_clien_ide,venta_vende_ide,venta_tienda) 
	VALUES(origen, compra_ide, nota,fec_venta,porc_desc, porc_asig, monto_contado, monto_credito, wventa_flete,cond_venta,clien_venta_ide,vende_ide,tienda);
	/*SET res = LAST_INSERT_ID();*/
	SET res = wventa_flete;
	/*SET res = LAST_INSERT_ID();*/
	CALL sp_auditori(usu,1,'wh_tbl_venta',res);
end IF;
RETURN res;
End if;

IF ope=8 THEN /* Actualiza solo monto saldo segun recibos pagados */
	UPDATE wh_tbl_venta SET venta_saldo =saldo  WHERE venta_ide=ide;

	CALL sp_auditori(usu,8,'wh_tbl_venta',ide);
  RETURN res;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `sf_venta_wh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_venta_wh`(`ide` INT(11),`origen` INT(11),  `compra_ide` INT(11),`nota` VARCHAR(100),`fec_venta` DATE,      `porc_asig` double,   `porc_desc` double,`monto_credito` double,`monto_contado` double,`wventa_flete` double,`cond_venta` INT,    `clien_venta_ide` INT(11),`vende_ide` INT(11), `tipoventa` INT(11) , `saldo` double  ,`tienda` INT,`ope` INT,`usu` INT) RETURNS varchar(50) CHARSET utf8mb4
BEGIN
DECLARE res VARCHAR(50) DEFAULT 1;
DECLARE tot INT;
/*DECLARE nota VARCHAR(25);*/

/*set nota = venta_num;*/
IF ope=1 THEN

SELECT COUNT(*) INTO tot FROM wh_tbl_venta WHERE venta_num=nota AND venta_clien_ide= clien_venta_ide AND venta_condicion=cond_venta;

IF tot>0 THEN
	SET res='Venta ya registrada';

  /*SET res= tot;*/
	/*SET res= nota;*/
ELSE

  IF origen = 2 THEN
			UPDATE wh_tbl_desgvta SET desgvta_status = 1  WHERE desgvta_ide = ide;
			CALL sp_auditori(usu,8,'wh_tbl_desgvta',ide);
	end if;
	INSERT INTO wh_tbl_venta(venta_origen_ide,venta_compra_ide,venta_num,venta_fecha,venta_porc_asig,venta_porc_desc,venta_monto,venta_monto_credito ,venta_flete ,venta_condicion,venta_clien_ide,venta_vende_ide, venta_tipo	,venta_tienda) 
	VALUES(origen, compra_ide, nota,fec_venta,porc_asig,porc_desc, monto_contado, monto_credito, wventa_flete,cond_venta,clien_venta_ide,vende_ide,tipoventa,tienda);
	/*SET res = LAST_INSERT_ID();*/
	SET res = wventa_flete;
	/*SET res = LAST_INSERT_ID();*/
	CALL sp_auditori(usu,1,'wh_tbl_venta',res);
end IF;
RETURN res;
End if;

IF ope=8 THEN /* Actualiza solo monto saldo segun recibos pagados */
	UPDATE wh_tbl_venta SET venta_saldo =saldo  WHERE venta_ide=ide;

	CALL sp_auditori(usu,8,'wh_tbl_venta',ide);
  RETURN res;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_auditori` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_auditori`(`usu` INT, `ope` INT, `tab` VARCHAR(128), `reg` INT)
BEGIN

INSERT INTO tbl_auditori (audi_usua,audi_operaci,audi_fechora,audi_tabla,audi_registr) VALUES(usu,ope,now(),tab,reg);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fichas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fichas`(`fich` INT, `tius` INT, `valor` INT, `usu` INT)
BEGIN

DECLARE tot INT;

DECLARE ide INT;



SELECT COUNT(*) INTO tot FROM tbl_permfich WHERE pefi_fich=fich AND pefi_tius=tius;

IF tot>0 THEN

SELECT pefi_ide INTO ide FROM tbl_permfich  WHERE pefi_fich=fich AND pefi_tius=tius;

UPDATE tbl_permfich SET pefi_estado=valor WHERE pefi_fich=fich AND pefi_tius=tius;

CALL sp_auditori(usu,2,'fichas',ide);

ELSE

INSERT INTO tbl_permfich(pefi_fich,pefi_tius,pefi_estado) VALUES(fich,tius,1);

SET ide= LAST_INSERT_ID();

CALL sp_auditori(usu,1,'fichas',ide);

END IF;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_permisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_permisos`(`sumo` INT, `tius` INT, `valor` INT, `usu` INT)
BEGIN

DECLARE tot INT;

DECLARE ide INT;



SELECT COUNT(*) INTO tot FROM tbl_permisos WHERE perm_sumo=sumo AND perm_tius=tius;

IF tot>0 THEN

SELECT perm_ide INTO ide FROM tbl_permisos  WHERE perm_sumo=sumo AND perm_tius=tius;

UPDATE tbl_permisos SET perm_estado=valor WHERE perm_sumo=sumo AND perm_tius=tius;

CALL sp_auditori(usu,2,'permisos',ide);

ELSE

INSERT INTO tbl_permisos(perm_sumo,perm_tius,perm_estado) VALUES(sumo,tius,1);

SET ide= LAST_INSERT_ID();

CALL sp_auditori(usu,1,'permisos',ide);

END IF;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_abono_cruce`
--

/*!50001 DROP TABLE IF EXISTS `vw_abono_cruce`*/;
/*!50001 DROP VIEW IF EXISTS `vw_abono_cruce`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_abono_cruce` AS select `vw_cruce_detalle`.`crudeta_nota_ide` AS `crudeta_nota_ide`,sum(`vw_cruce_detalle`.`crudeta_monto`) AS `abono`,`vw_cruce_detalle`.`crudeta_encab_ide` AS `crudeta_encab_ide`,`tbl_cruce_encab`.`cruce_encab_monto` AS `cruce_encab_monto`,`tbl_cruce_encab`.`cruce_encab_fec` AS `cruce_encab_fec`,`tbl_cruce_encab`.`cruce_encab_pago_ide` AS `cruce_encab_pago_ide`,`tbl_pago`.`pago_titular` AS `pago_titular`,`tbl_pago`.`pago_ref` AS `pago_ref` from ((`vw_cruce_detalle` join `tbl_cruce_encab`) join `tbl_pago`) where `vw_cruce_detalle`.`crudeta_nota_ide` = 36 and `vw_cruce_detalle`.`crudeta_encab_ide` = `tbl_cruce_encab`.`cruce_encab_ide` and `tbl_cruce_encab`.`cruce_encab_pago_ide` = `tbl_pago`.`pago_ide` group by `vw_cruce_detalle`.`crudeta_nota_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_abonoventa`
--

/*!50001 DROP TABLE IF EXISTS `vw_abonoventa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_abonoventa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_abonoventa` AS select sum(`tbl_recibo_nota`.`recnota_monto_aplicado`) AS `abono_recibo`,`tbl_recibo_nota`.`recnota_ide` AS `recnota_ide`,`tbl_recibo_nota`.`recnota_venta_ide` AS `recnota_venta_ide` from `tbl_recibo_nota` group by `tbl_recibo_nota`.`recnota_venta_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_auditoria`
--

/*!50001 DROP TABLE IF EXISTS `vw_auditoria`*/;
/*!50001 DROP VIEW IF EXISTS `vw_auditoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_auditoria` AS select `tbl_auditori`.`audi_ide` AS `audi_ide`,`vw_usuarios`.`usua_ide` AS `usua_ide`,`vw_usuarios`.`usua_login` AS `usua_login`,`vw_usuarios`.`usua_tipo` AS `usua_tipo`,`vw_usuarios`.`usua_numiden` AS `usua_numiden`,`vw_usuarios`.`usua_nombre` AS `usua_nombre`,`vw_usuarios`.`usua_apelli` AS `usua_apelli`,`vw_usuarios`.`usua_telmovi` AS `usua_telmovi`,`vw_usuarios`.`usua_correo` AS `usua_correo`,`tbl_auditori`.`audi_operaci` AS `audi_operaci`,`tbl_registro_operacion`.`ope_descrip` AS `ope_descrip`,`tbl_auditori`.`audi_registr` AS `audi_registr`,`tbl_auditori`.`audi_tabla` AS `audi_tabla`,`tbl_auditori`.`audi_fechora` AS `audi_fechora` from ((`tbl_auditori` join `vw_usuarios` on(`tbl_auditori`.`audi_usua` = `vw_usuarios`.`usua_ide`)) join `tbl_registro_operacion` on(`tbl_auditori`.`audi_operaci` = `tbl_registro_operacion`.`ope_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_banco`
--

/*!50001 DROP TABLE IF EXISTS `vw_banco`*/;
/*!50001 DROP VIEW IF EXISTS `vw_banco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_banco` AS select `a`.`banco_ide` AS `banco_ide`,`a`.`banco_descrip` AS `banco_descrip`,`a`.`banco_borrado` AS `banco_borrado` from `tbl_banco` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cliente`
--

/*!50001 DROP TABLE IF EXISTS `vw_cliente`*/;
/*!50001 DROP VIEW IF EXISTS `vw_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cliente` AS select `a`.`clien_ide` AS `clien_ide`,`a`.`clien_codigo` AS `clien_codigo`,`b`.`tipcli_ide` AS `clien_tipcli`,`a`.`clien_numiden` AS `clien_numiden`,`a`.`clien_nombre1` AS `clien_nombre1`,`a`.`clien_nombre2` AS `clien_nombre2`,`a`.`clien_apelli1` AS `clien_apelli1`,`a`.`clien_apelli2` AS `clien_apelli2`,`a`.`clien_fecnaci` AS `clien_fecnaci`,`a`.`clien_direcci` AS `clien_direcci`,`a`.`clien_telmovi` AS `clien_telmovi`,`a`.`clien_borrado` AS `clien_borrado`,`a`.`clien_correo` AS `clien_correo`,`a`.`clien_contriespec` AS `clien_contriespec`,`a`.`clien_ubimap` AS `clien_ubimap`,`a`.`clien_vendedor` AS `clien_vendedor`,`a`.`clien_zona` AS `clien_zona`,`c`.`vende_razonsocial` AS `vende_razonsocial`,`c`.`vende_alias` AS `vende_alias`,`d`.`zona_descrip` AS `zona_descrip` from (((`tbl_cliente` `a` join `tbl_tipcli` `b` on(`a`.`clien_tipcli` = `b`.`tipcli_ide`)) join `tbl_vendedor` `c` on(`a`.`clien_vendedor` = `c`.`vende_ide`)) join `tbl_zona` `d` on(`a`.`clien_zona` = `d`.`zona_ide`)) where `a`.`clien_borrado` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_1`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_1`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_1` AS select `tbl_compra_deta`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta`.`compradeta_monto` AS `compradeta_monto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,round(`tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta`.`compradeta_monto` - `tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta` join `vw_producto` on(`vw_producto`.`produc_ide` = `tbl_compra_deta`.`compradeta_produc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_1_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_1_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_1_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_1_temp` AS select `tbl_compra_deta_temp`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta_temp`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta_temp`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta_temp`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta_temp`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta_temp`.`compradeta_monto` AS `compradeta_monto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,round(`tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta_temp`.`compradeta_monto` - `tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta_temp` join `vw_producto` on(`vw_producto`.`produc_ide` = `tbl_compra_deta_temp`.`compradeta_produc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_2`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_2`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_2` AS select `tbl_compra_deta`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta`.`compradeta_monto` AS `compradeta_monto`,round(`tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta`.`compradeta_monto` - `tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,`tbl_compra_deta`.`compradeta_producdeta` AS `compradeta_producdeta`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta` join `vw_producto` on(`tbl_compra_deta`.`compradeta_produc` = `vw_producto`.`produc_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_2_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_2_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_2_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_2_temp` AS select `tbl_compra_deta_temp`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta_temp`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta_temp`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta_temp`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta_temp`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta_temp`.`compradeta_monto` AS `compradeta_monto`,round(`tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta_temp`.`compradeta_monto` - `tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,`tbl_compra_deta_temp`.`compradeta_producdeta` AS `compradeta_producdeta`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta_temp` join `vw_producto` on(`tbl_compra_deta_temp`.`compradeta_produc` = `vw_producto`.`produc_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_3`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_3`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_3` AS select `tbl_compra_deta`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta`.`compradeta_monto` AS `compradeta_monto`,round(`tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta`.`compradeta_monto` - `tbl_compra_deta`.`compradeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_compra_deta`.`compradeta_producdeta` AS `compradeta_producdeta`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta` join `vw_producto_deta` on(`tbl_compra_deta`.`compradeta_producdeta` = `vw_producto_deta`.`detaprod_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_deta_3_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_deta_3_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_deta_3_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_deta_3_temp` AS select `tbl_compra_deta_temp`.`compradeta_ide` AS `compradeta_ide`,`tbl_compra_deta_temp`.`compradeta_compra` AS `compradeta_compra`,`tbl_compra_deta_temp`.`compradeta_produc` AS `compradeta_produc`,`tbl_compra_deta_temp`.`compradeta_cant` AS `compradeta_cant`,`tbl_compra_deta_temp`.`compradeta_costo` AS `compradeta_costo`,`tbl_compra_deta_temp`.`compradeta_monto` AS `compradeta_monto`,round(`tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_compra_deta_temp`.`compradeta_monto` - `tbl_compra_deta_temp`.`compradeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_compra_deta_temp`.`compradeta_producdeta` AS `compradeta_producdeta`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_compra_deta_temp` join `vw_producto_deta` on(`tbl_compra_deta_temp`.`compradeta_producdeta` = `vw_producto_deta`.`detaprod_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_lista`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_lista`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_lista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_lista` AS select `tbl_compra`.`compra_ide` AS `compra_ide`,`tbl_compra`.`compra_ide_tienda` AS `compra_ide_tienda`,`tbl_compra`.`compra_control_tienda` AS `compra_control_tienda`,`tbl_compra`.`compra_fecha` AS `compra_fecha`,`tbl_compra`.`compra_fecha_registro` AS `compra_fecha_registro`,`tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_cliente`.`clien_apelli1` AS `clien_apelli1`,`tbl_cliente`.`clien_apelli2` AS `clien_apelli2`,`tbl_compra`.`compra_sub_totalexe` AS `compra_sub_totalexe`,`tbl_compra`.`compra_sub_totaliva` AS `compra_sub_totaliva`,`tbl_compra`.`compra_total_general` AS `compra_total_general`,`tbl_compra`.`compra_anulada` AS `compra_anulada`,`tbl_compra`.`compra_fecha_anulada` AS `compra_fecha_anulada`,`tbl_compra`.`compra_tienda` AS `compra_tienda` from (`tbl_compra` join `tbl_cliente` on(`tbl_compra`.`compra_proveedor` = `tbl_cliente`.`clien_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_compra_verificacion_deta`
--

/*!50001 DROP TABLE IF EXISTS `vw_compra_verificacion_deta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_compra_verificacion_deta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_compra_verificacion_deta` AS select `vw_producto_deta`.`detaprod_faccom` AS `detaprod_faccom`,`vw_compra_deta_2`.`compradeta_produc` AS `compradeta_produc`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_marca` AS `produc_marca`,`vw_producto_deta`.`produc_modelo` AS `produc_modelo`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`vw_producto_deta`.`produc_tienda` AS `produc_tienda`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`vw_compra_deta_2` join `vw_producto_deta` on(`vw_compra_deta_2`.`compradeta_compra` = `vw_producto_deta`.`detaprod_faccom`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cruce`
--

/*!50001 DROP TABLE IF EXISTS `vw_cruce`*/;
/*!50001 DROP VIEW IF EXISTS `vw_cruce`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cruce` AS select `tbl_cruce_encab`.`cruce_encab_ide` AS `cruce_encab_ide`,`tbl_cruce_encab`.`cruce_encab_monto` AS `cruce_encab_monto`,`tbl_cruce_encab`.`cruce_encab_fec` AS `cruce_encab_fec`,`tbl_cruce_encab`.`cruce_encab_pago_ide` AS `cruce_encab_pago_ide`,`tbl_cruce_encab`.`cruce_encab_status` AS `cruce_encab_status`,`tbl_cruce_encab`.`cruce_encab_borrado` AS `cruce_encab_borrado`,`tbl_cruce_encab`.`cruce_encab_registro` AS `cruce_encab_registro`,`tbl_pago`.`pago_ide` AS `pago_ide`,`tbl_pago`.`pago_forma` AS `forpago`,`tbl_pago`.`pago_monto` AS `monto`,`tbl_pago`.`pago_fecha` AS `fecha`,`tbl_pago`.`pago_ref` AS `referencia`,`tbl_forpago`.`forpago_descrip` AS `forpago_descrip` from ((`tbl_cruce_encab` join `tbl_pago`) join `tbl_forpago`) where `tbl_cruce_encab`.`cruce_encab_pago_ide` = `tbl_pago`.`pago_ide` and `tbl_pago`.`pago_forma` = `tbl_forpago`.`forpago_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cruce_detalle`
--

/*!50001 DROP TABLE IF EXISTS `vw_cruce_detalle`*/;
/*!50001 DROP VIEW IF EXISTS `vw_cruce_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cruce_detalle` AS select `tbl_cruce_detalle`.`crudeta_ide` AS `crudeta_ide`,`tbl_cruce_detalle`.`crudeta_encab_ide` AS `crudeta_encab_ide`,`tbl_cruce_detalle`.`crudeta_nota_ide` AS `crudeta_nota_ide`,`tbl_cruce_detalle`.`crudeta_monto` AS `crudeta_monto`,`tbl_cruce_detalle`.`crudeta_observ` AS `crudeta_observ`,`tbl_cruce_detalle`.`crudeta_fechareg` AS `crudeta_fechareg`,`tbl_cruce_detalle`.`crudeta_estatus` AS `crudeta_estatus`,`tbl_cruce_detalle`.`crudeta_borrado` AS `crudeta_borrado` from `tbl_cruce_detalle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cuadre_caja`
--

/*!50001 DROP TABLE IF EXISTS `vw_cuadre_caja`*/;
/*!50001 DROP VIEW IF EXISTS `vw_cuadre_caja`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cuadre_caja` AS select `tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_cliente`.`clien_apelli1` AS `clien_apelli1`,`tbl_cliente`.`clien_apelli2` AS `clien_apelli2`,`vw_union_factura_notaentrega`.`ide` AS `ide`,`vw_union_factura_notaentrega`.`fact_nota` AS `fact_nota`,`vw_union_factura_notaentrega`.`fecha` AS `fecha`,`vw_union_factura_notaentrega`.`total` AS `total`,`vw_union_factura_notaentrega`.`anulada` AS `anulada`,`vw_union_factura_notaentrega`.`formapago` AS `formapago`,`vw_union_factura_notaentrega`.`efectivo` AS `efectivo`,`vw_union_factura_notaentrega`.`debito` AS `debito`,`vw_union_factura_notaentrega`.`credito` AS `credito`,`vw_union_factura_notaentrega`.`alimentacion` AS `alimentacion`,`vw_union_factura_notaentrega`.`cheque` AS `cheque`,`vw_union_factura_notaentrega`.`transferencia` AS `transferencia`,`vw_union_factura_notaentrega`.`tienda` AS `tienda`,`vw_union_factura_notaentrega`.`cliente` AS `cliente` from (`tbl_cliente` join `vw_union_factura_notaentrega` on(`tbl_cliente`.`clien_ide` = `vw_union_factura_notaentrega`.`cliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_deposito`
--

/*!50001 DROP TABLE IF EXISTS `vw_deposito`*/;
/*!50001 DROP VIEW IF EXISTS `vw_deposito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_deposito` AS select `tbl_deposito`.`deposito_ide` AS `deposito_ide`,`tbl_deposito`.`deposito_banco` AS `deposito_banco`,`a`.`banco_descrip` AS `banco_descrip`,`tbl_deposito`.`deposito_numerocuenta` AS `deposito_numerocuenta`,`tbl_deposito`.`deposito_monto` AS `deposito_monto`,`tbl_deposito`.`deposito_fechadeposito` AS `deposito_fechadeposito`,`tbl_deposito`.`deposito_fechadiaventa` AS `deposito_fechadiaventa`,`tbl_deposito`.`deposito_fecharegistro` AS `deposito_fecharegistro`,`tbl_deposito`.`deposito_numero` AS `deposito_numero`,`tbl_deposito`.`deposito_tienda` AS `deposito_tienda`,`tbl_deposito`.`deposito_borrado` AS `deposito_borrado`,`tbl_empresa`.`empresa_nombre` AS `empresa_nombre`,`tbl_empresa`.`empresa_nombre2` AS `empresa_nombre2` from ((`tbl_banco` `a` join `tbl_deposito` on(`tbl_deposito`.`deposito_banco` = `a`.`banco_ide`)) join `tbl_empresa` on(`tbl_deposito`.`deposito_tienda` = `tbl_empresa`.`empresa_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desg_deta_vta`
--

/*!50001 DROP TABLE IF EXISTS `vw_desg_deta_vta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desg_deta_vta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desg_deta_vta` AS select `wh_tbl_desgvta_detalle`.`desgvtadet_ide` AS `desgvtadet_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_desgvta_ide` AS `desgvtadet_desgvta_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` AS `desgvtadet_nota_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto` AS `monto_venta`,`wh_tbl_desgvta_detalle`.`desgvtadet_fecproc` AS `desgvtadet_fecproc`,`wh_tbl_desgvta_detalle`.`desgvtadet_status` AS `desgvtadet_status`,`wh_tbl_desgvta_detalle`.`desgvtadet_observ` AS `desgvtadet_observ`,`wh_tbl_desgvta_detalle`.`desgvtadet_borrado` AS `desgvtadet_borrado`,`wh_tbl_compra`.`compra_ide` AS `compra_ide`,`wh_tbl_compra`.`compra_num` AS `nota`,`wh_tbl_compra`.`compra_monto` AS `monto_nota`,`wh_tbl_desgvta`.`desgvta_ide` AS `desgvta_ide`,`wh_tbl_desgvta`.`desgvta_desg_ide` AS `desg_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto_contado` AS `monto_contado`,`wh_tbl_desgvta_detalle`.`desgvtadet_mto_flete` AS `mto_flete`,`wh_tbl_desgvta_detalle`.`desgvtadet_porc_asig` AS `porc_asig`,`wh_tbl_desgvta_detalle`.`desgvtadet_condicion` AS `condicion`,`wh_tbl_compra`.`compra_monto_credito` AS `compra_monto_credito`,`wh_tbl_compra`.`compra_porc_desc` AS `compra_porc_desc`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`wh_tbl_desgvta`.`desgvta_clien_ide` AS `desgvta_clien_ide`,`vw_total_nota_desglose`.`total_nota` AS `total_nota` from ((((`wh_tbl_desgvta_detalle` join `wh_tbl_compra`) join `wh_tbl_desgvta`) join `tbl_cliente`) join `vw_total_nota_desglose`) where `wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` = `wh_tbl_compra`.`compra_ide` and `wh_tbl_desgvta`.`desgvta_ide` = `wh_tbl_desgvta_detalle`.`desgvtadet_desgvta_ide` and `wh_tbl_desgvta`.`desgvta_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` = `vw_total_nota_desglose`.`desgvtadet_nota_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose` AS select `wh_tbl_desglose`.`desglose_ide` AS `desglose_ide`,`wh_tbl_desglose`.`desglose_desc` AS `desglose_desc`,`wh_tbl_desglose`.`desglose_status` AS `desglose_status`,`wh_tbl_desglose`.`desglose_fecha` AS `desglose_fecha`,`wh_tbl_desglose`.`desglose_borrado` AS `desglose_borrado`,`wh_tbl_desglose`.`desglose_fecha_proc` AS `desglose_fecha_proc`,`wh_tbl_desglose`.`desglose_monto` AS `desglose_monto` from `wh_tbl_desglose` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose_cliente`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose_cliente`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose_cliente` AS select `wh_tbl_desgcliente`.`desgcte_ide` AS `desgcte_ide`,`wh_tbl_desgcliente`.`desgcte_desg_ide` AS `desgcte_desg_ide`,`wh_tbl_desgcliente`.`desgcte_clien_ide` AS `desgcte_clien_ide`,`wh_tbl_desgcliente`.`desgcte_borrado` AS `desgcte_borrado`,`wh_tbl_desgcliente`.`desgcte_fecha_proc` AS `desgcte_fecha_proc`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`wh_tbl_desglose`.`desglose_ide` AS `desglose_ide`,`wh_tbl_desglose`.`desglose_desc` AS `descrip`,`tbl_cliente`.`clien_nombre1` AS `cliente` from ((`wh_tbl_desgcliente` join `tbl_cliente`) join `wh_tbl_desglose`) where `wh_tbl_desgcliente`.`desgcte_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_desgcliente`.`desgcte_desg_ide` = `wh_tbl_desglose`.`desglose_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose_nota`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose_nota`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose_nota` AS select `wh_tbl_desglose_nota`.`desgnota_ide` AS `desgnota_ide`,`wh_tbl_desglose_nota`.`desgnota_desglose_ide` AS `desgnota_desglose_ide`,`wh_tbl_desglose_nota`.`desgnota_nota_ide` AS `desgnota_nota_ide`,`wh_tbl_desglose_nota`.`desgnota_status` AS `desgnota_status`,`wh_tbl_desglose_nota`.`desgnota_fecha_proc` AS `desgnota_fecha_proc`,`wh_tbl_desglose_nota`.`desgnota_borrado` AS `desgnota_borrado`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`wh_tbl_compra`.`compra_borrado` AS `compra_borrado`,`wh_tbl_compra`.`compra_ide` AS `compra_ide`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`wh_tbl_compra`.`compra_monto` AS `compra_monto`,`wh_tbl_compra`.`compra_porc_desc` AS `compra_porc_desc`,`wh_tbl_compra`.`compra_condicion` AS `compra_condicion`,`wh_tbl_compra`.`compra_monto_credito` AS `compra_monto_credito`,`vw_total_nota_desglose`.`total_nota` AS `total_nota`,ifnull(round(`wh_tbl_compra`.`compra_monto_credito` - `vw_total_nota_desglose`.`total_nota`,2),0) AS `disponible` from (((`wh_tbl_desglose_nota` join `wh_tbl_compra`) join `tbl_cliente`) join `vw_total_nota_desglose`) where `wh_tbl_desglose_nota`.`desgnota_nota_ide` = `wh_tbl_compra`.`compra_ide` and `wh_tbl_compra`.`compra_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_desglose_nota`.`desgnota_borrado` = 0 and `wh_tbl_desglose_nota`.`desgnota_nota_ide` = `vw_total_nota_desglose`.`desgvtadet_nota_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose_nota_dos`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose_nota_dos`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_dos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose_nota_dos` AS select `wh_tbl_desglose_nota`.`desgnota_ide` AS `desgnota_ide`,`wh_tbl_desglose_nota`.`desgnota_desglose_ide` AS `desgnota_desglose_ide`,`wh_tbl_desglose_nota`.`desgnota_nota_ide` AS `desgnota_nota_ide`,`wh_tbl_desglose_nota`.`desgnota_status` AS `desgnota_status`,`wh_tbl_desglose_nota`.`desgnota_borrado` AS `desgnota_borrado`,`wh_tbl_desglose_nota`.`desgnota_fecha_proc` AS `desgnota_fecha_proc`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`wh_tbl_compra`.`compra_borrado` AS `compra_borrado`,`wh_tbl_compra`.`compra_ide` AS `compra_ide`,`wh_tbl_compra`.`compra_monto` AS `compra_monto`,`wh_tbl_compra`.`compra_porc_desc` AS `compra_porc_desc`,`wh_tbl_compra`.`compra_condicion` AS `compra_condicion`,`wh_tbl_compra`.`compra_monto_credito` AS `compra_monto_credito`,ifnull(`vw_total_nota_desglose`.`total_nota`,0) AS `total_nota`,ifnull(round(`wh_tbl_compra`.`compra_monto_credito` - `vw_total_nota_desglose`.`total_nota`,2),0) AS `disponible`,round(`wh_tbl_compra`.`compra_monto_credito` - `vw_total_nota_desglose`.`total_nota`,2) AS `disponible2` from ((`wh_tbl_desglose_nota` join `wh_tbl_compra` on(`wh_tbl_desglose_nota`.`desgnota_nota_ide` = `wh_tbl_compra`.`compra_ide`)) left join `vw_total_nota_desglose` on(`wh_tbl_desglose_nota`.`desgnota_nota_ide` = `vw_total_nota_desglose`.`desgvtadet_nota_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose_nota_sin_totales`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose_nota_sin_totales`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_sin_totales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose_nota_sin_totales` AS select `wh_tbl_desglose_nota`.`desgnota_ide` AS `desgnota_ide`,`wh_tbl_desglose_nota`.`desgnota_desglose_ide` AS `desgnota_desglose_ide`,`wh_tbl_desglose_nota`.`desgnota_nota_ide` AS `desgnota_nota_ide`,`wh_tbl_desglose_nota`.`desgnota_status` AS `desgnota_status`,`wh_tbl_desglose_nota`.`desgnota_fecha_proc` AS `desgnota_fecha_proc`,`wh_tbl_desglose_nota`.`desgnota_borrado` AS `desgnota_borrado`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`wh_tbl_compra`.`compra_borrado` AS `compra_borrado`,`wh_tbl_compra`.`compra_ide` AS `compra_ide`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`wh_tbl_compra`.`compra_monto` AS `compra_monto`,`wh_tbl_compra`.`compra_porc_desc` AS `compra_porc_desc`,`wh_tbl_compra`.`compra_condicion` AS `compra_condicion`,`wh_tbl_compra`.`compra_monto_credito` AS `compra_monto_credito` from ((`wh_tbl_desglose_nota` join `wh_tbl_compra`) join `tbl_cliente`) where `wh_tbl_desglose_nota`.`desgnota_nota_ide` = `wh_tbl_compra`.`compra_ide` and `wh_tbl_compra`.`compra_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_desglose_nota`.`desgnota_borrado` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desglose_nota_tres`
--

/*!50001 DROP TABLE IF EXISTS `vw_desglose_nota_tres`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desglose_nota_tres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desglose_nota_tres` AS select `wh_tbl_desglose_nota`.`desgnota_ide` AS `desgnota_ide`,`wh_tbl_desglose_nota`.`desgnota_desglose_ide` AS `desgnota_desglose_ide`,`wh_tbl_desglose_nota`.`desgnota_nota_ide` AS `desgnota_nota_ide`,`wh_tbl_desglose_nota`.`desgnota_status` AS `desgnota_status`,`wh_tbl_desglose_nota`.`desgnota_borrado` AS `desgnota_borrado`,`wh_tbl_desglose_nota`.`desgnota_fecha_proc` AS `desgnota_fecha_proc` from `wh_tbl_desglose_nota` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desgvta`
--

/*!50001 DROP TABLE IF EXISTS `vw_desgvta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desgvta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desgvta` AS select `wh_tbl_desgvta`.`desgvta_ide` AS `desgvta_ide`,`wh_tbl_desgvta`.`desgvta_desg_ide` AS `desgvta_desg_ide`,`wh_tbl_desgvta`.`desgvta_clien_ide` AS `desgvta_clien_ide`,`wh_tbl_desgvta`.`desgvta_porc_ide` AS `desgvta_porc_ide`,`wh_tbl_desgvta`.`desgvta_monto_cred` AS `desgvta_monto_cred`,`wh_tbl_desgvta`.`desgvta_monto_contado` AS `desgvta_monto_contado`,`wh_tbl_desgvta`.`desgvta_fecha_proc` AS `desgvta_fecha_proc`,`wh_tbl_desgvta`.`desgvta_status` AS `desgvta_status`,`wh_tbl_desgvta`.`desgvta_borrado` AS `desgvta_borrado`,`wh_tbl_desgvta`.`desgvta_desc` AS `desgvta_desc`,`wh_tbl_desgvta`.`desgvta_observ` AS `desgvta_observ`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`tbl_cliente`.`clien_nombre1` AS `cliente`,`wh_tbl_porcdesc`.`porc_ide` AS `porc_ide`,`wh_tbl_porcdesc`.`porc_monto` AS `porcentaje_nota`,`wh_tbl_desgvta`.`desgvta_vende_ide` AS `desgvta_vende_ide`,`tbl_vendedor`.`vende_razonsocial` AS `vendedor`,`wh_tbl_desgvta`.`desgvta_porc_asig` AS `desgvta_porc_asig`,`wh_tbl_desgvta`.`desgvta_cond` AS `desgvta_cond`,`wh_tbl_desgvta`.`desgvta_tipo` AS `desgvta_tipo`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip` from ((((`wh_tbl_desgvta` join `tbl_cliente`) join `wh_tbl_porcdesc`) join `tbl_vendedor`) join `wh_tbl_tipoventa`) where `wh_tbl_desgvta`.`desgvta_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_desgvta`.`desgvta_porc_ide` = `wh_tbl_porcdesc`.`porc_ide` and `wh_tbl_desgvta`.`desgvta_vende_ide` = `tbl_vendedor`.`vende_ide` and `wh_tbl_desgvta`.`desgvta_tipo` = `wh_tbl_tipoventa`.`tipvta_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_desgvta_detalle_uno`
--

/*!50001 DROP TABLE IF EXISTS `vw_desgvta_detalle_uno`*/;
/*!50001 DROP VIEW IF EXISTS `vw_desgvta_detalle_uno`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_desgvta_detalle_uno` AS select `wh_tbl_desgvta_detalle`.`desgvtadet_ide` AS `desgvtadet_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_desgvta_ide` AS `desgvtadet_desgvta_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` AS `desgvtadet_nota_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto` AS `desgvtadet_monto`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto_contado` AS `desgvtadet_monto_contado`,`wh_tbl_desgvta_detalle`.`desgvtadet_mto_flete` AS `desgvtadet_mto_flete`,`wh_tbl_desgvta_detalle`.`desgvtadet_porc_asig` AS `desgvtadet_porc_asig`,`wh_tbl_desgvta_detalle`.`desgvtadet_condicion` AS `desgvtadet_condicion`,`wh_tbl_desgvta_detalle`.`desgvtadet_fecproc` AS `desgvtadet_fecproc`,`wh_tbl_desgvta_detalle`.`desgvtadet_status` AS `desgvtadet_status`,`wh_tbl_desgvta_detalle`.`desgvtadet_observ` AS `desgvtadet_observ`,`wh_tbl_desgvta_detalle`.`desgvtadet_borrado` AS `desgvtadet_borrado` from `wh_tbl_desgvta_detalle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_deta_libro_venta`
--

/*!50001 DROP TABLE IF EXISTS `vw_deta_libro_venta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_deta_libro_venta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_deta_libro_venta` AS select `tbl_factura_deta`.`factdeta_factura` AS `Factura`,sum(`tbl_factura_deta`.`factdeta_base`) AS `BaseImp`,sum(`tbl_factura_deta`.`factdeta_iva`) AS `MontoIVA`,`tbl_factura_deta`.`factdeta_piva` AS `PorcenIVA` from `tbl_factura_deta` group by `tbl_factura_deta`.`factdeta_factura`,`tbl_factura_deta`.`factdeta_piva` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_detallevta`
--

/*!50001 DROP TABLE IF EXISTS `vw_detallevta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_detallevta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_detallevta` AS select `wh_tbl_desgvta_detalle`.`desgvtadet_ide` AS `desgvtadet_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_desgvta_ide` AS `desgvtadet_desgvta_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` AS `desgvtadet_nota_ide`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto` AS `monto_venta`,`wh_tbl_desgvta_detalle`.`desgvtadet_fecproc` AS `desgvtadet_fecproc`,`wh_tbl_desgvta_detalle`.`desgvtadet_status` AS `desgvtadet_status`,`wh_tbl_desgvta_detalle`.`desgvtadet_observ` AS `desgvtadet_observ`,`wh_tbl_desgvta_detalle`.`desgvtadet_borrado` AS `desgvtadet_borrado`,`wh_tbl_compra`.`compra_ide` AS `compra_ide`,`wh_tbl_compra`.`compra_num` AS `nota`,`wh_tbl_compra`.`compra_monto` AS `monto_nota`,`wh_tbl_desgvta_detalle`.`desgvtadet_porc_asig` AS `desgvtadet_porc_asig`,`wh_tbl_desgvta_detalle`.`desgvtadet_mto_flete` AS `desgvtadet_mto_flete`,`wh_tbl_desgvta_detalle`.`desgvtadet_monto_contado` AS `desgvtadet_monto_contado`,`wh_tbl_desgvta_detalle`.`desgvtadet_condicion` AS `desgvtadet_condicion` from (`wh_tbl_desgvta_detalle` join `wh_tbl_compra`) where `wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` = `wh_tbl_compra`.`compra_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura` AS select `tbl_factura`.`fact_ide` AS `fact_ide`,`tbl_factura`.`fact_ide_tienda` AS `fact_ide_tienda`,`tbl_factura`.`fact_control_tienda` AS `fact_control_tienda`,`tbl_factura`.`fact_fecha` AS `fact_fecha`,`tbl_factura`.`fact_cliente` AS `fact_cliente`,`tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_cliente`.`clien_apelli1` AS `clien_apelli1`,`tbl_cliente`.`clien_apelli2` AS `clien_apelli2`,`tbl_factura`.`fact_sub_totalexe` AS `fact_sub_totalexe`,`tbl_factura`.`fact_sub_totaliva` AS `fact_sub_totaliva`,`tbl_factura`.`fact_descu_total` AS `fact_descu_total`,`tbl_factura`.`fact_subcondescu_total` AS `fact_subcondescu_total`,`tbl_factura`.`fact_total_general` AS `fact_total_general`,`tbl_factura`.`fact_anulada` AS `fact_anulada`,`tbl_factura`.`fact_fecha_anulada` AS `fact_fecha_anulada`,`tbl_factura`.`fact_tienda` AS `fact_tienda`,`tbl_cliente`.`clien_direcci` AS `clien_direcci`,`tbl_cliente`.`clien_telmovi` AS `clien_telmovi`,`tbl_factura`.`fact_pago_deuda` AS `fact_pago_deuda`,`tbl_factura`.`fact_forpag` AS `fact_forpag`,`tbl_factura`.`fact_monto_deuda` AS `fact_monto_deuda`,`tbl_factura`.`fact_pago_electronico` AS `fact_pago_electronico` from (`tbl_factura` join `tbl_cliente` on(`tbl_cliente`.`clien_ide` = `tbl_factura`.`fact_cliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta` AS select `tbl_factura_deta`.`factdeta_ide` AS `factdeta_ide`,`tbl_factura_deta`.`factdeta_factura` AS `factdeta_factura`,`tbl_factura_deta`.`factdeta_produc` AS `factdeta_produc`,`tbl_factura_deta`.`factdeta_cant` AS `factdeta_cant`,`tbl_factura_deta`.`factdeta_precio` AS `factdeta_precio`,`tbl_factura_deta`.`factdeta_monto` AS `factdeta_monto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,round(`tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,`tbl_factura_deta`.`factdeta_base` AS `factdeta_base`,round(`tbl_factura_deta`.`factdeta_monto` - `tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta`.`factdeta_iva`,2) AS `Impuesto10`,`vw_producto`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta` join `vw_producto` on(`vw_producto`.`produc_ide` = `tbl_factura_deta`.`factdeta_produc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta2`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta2`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta2` AS select `tbl_factura_deta`.`factdeta_ide` AS `factdeta_ide`,`tbl_factura_deta`.`factdeta_factura` AS `factdeta_factura`,`tbl_factura_deta`.`factdeta_produc` AS `factdeta_produc`,`tbl_factura_deta`.`factdeta_cant` AS `factdeta_cant`,`tbl_factura_deta`.`factdeta_precio` AS `factdeta_precio`,`tbl_factura_deta`.`factdeta_monto` AS `factdeta_monto`,round(`tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,`tbl_factura_deta`.`factdeta_base` AS `factdeta_base`,round(`tbl_factura_deta`.`factdeta_monto` - `tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta`.`factdeta_iva`,2) AS `Impuesto10`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_factura_deta`.`factdeta_producdeta` AS `factdeta_producdeta`,`vw_producto_deta`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto_deta`.`produc_marca` AS `produc_marca`,`vw_producto_deta`.`produc_modelo` AS `produc_modelo`,`vw_producto_deta`.`produc_color` AS `produc_color`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta` join `vw_producto_deta` on(`tbl_factura_deta`.`factdeta_produc` = `vw_producto_deta`.`produc_ide`)) where `vw_producto_deta`.`detaprod_ide` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta3`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta3`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta3` AS select `tbl_factura_deta`.`factdeta_ide` AS `factdeta_ide`,`tbl_factura_deta`.`factdeta_factura` AS `factdeta_factura`,`tbl_factura_deta`.`factdeta_produc` AS `factdeta_produc`,`tbl_factura_deta`.`factdeta_cant` AS `factdeta_cant`,`tbl_factura_deta`.`factdeta_precio` AS `factdeta_precio`,`tbl_factura_deta`.`factdeta_monto` AS `factdeta_monto`,round(`tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,`tbl_factura_deta`.`factdeta_base` AS `factdeta_base`,round(`tbl_factura_deta`.`factdeta_monto` - `tbl_factura_deta`.`factdeta_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta`.`factdeta_iva`,2) AS `Impuesto10`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_factura_deta`.`factdeta_producdeta` AS `factdeta_producdeta`,`vw_producto_deta`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto_deta`.`produc_marca` AS `produc_marca`,`vw_producto_deta`.`produc_modelo` AS `produc_modelo`,`vw_producto_deta`.`produc_color` AS `produc_color`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta` join `vw_producto_deta` on(`tbl_factura_deta`.`factdeta_producdeta` = `vw_producto_deta`.`detaprod_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta_temp` AS select `tbl_factura_deta_temp`.`factdetatemp_ide` AS `factdetatemp_ide`,`tbl_factura_deta_temp`.`factdetatemp_factura` AS `factdetatemp_factura`,`tbl_factura_deta_temp`.`factdetatemp_produc` AS `factdetatemp_produc`,`tbl_factura_deta_temp`.`factdetatemp_cant` AS `factdetatemp_cant`,`tbl_factura_deta_temp`.`factdetatemp_precio` AS `factdetatemp_precio`,`tbl_factura_deta_temp`.`factdetatemp_monto` AS `factdetatemp_monto`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` - `tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.1,2) AS `Impuesto10`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`vw_producto_deta`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta_temp` join `vw_producto_deta` on(`tbl_factura_deta_temp`.`factdetatemp_produc` = `vw_producto_deta`.`produc_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta_temp1`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta_temp1`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta_temp1` AS select `tbl_factura_deta_temp`.`factdetatemp_ide` AS `factdetatemp_ide`,`tbl_factura_deta_temp`.`factdetatemp_factura` AS `factdetatemp_factura`,`tbl_factura_deta_temp`.`factdetatemp_produc` AS `factdetatemp_produc`,`tbl_factura_deta_temp`.`factdetatemp_cant` AS `factdetatemp_cant`,`tbl_factura_deta_temp`.`factdetatemp_precio` AS `factdetatemp_precio`,`tbl_factura_deta_temp`.`factdetatemp_monto` AS `factdetatemp_monto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) AS `monto_base`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` - `tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,round(round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) * 0.07,2) AS `Impuesto7`,round(round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) * 0.09,2) AS `Impuesto9`,round(round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) * 0.1,2) AS `Impuesto10`,`vw_producto`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta_temp` join `vw_producto` on(`vw_producto`.`produc_ide` = `tbl_factura_deta_temp`.`factdetatemp_produc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta_temp2`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta_temp2`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta_temp2` AS select `tbl_factura_deta_temp`.`factdetatemp_ide` AS `factdetatemp_ide`,`tbl_factura_deta_temp`.`factdetatemp_factura` AS `factdetatemp_factura`,`tbl_factura_deta_temp`.`factdetatemp_produc` AS `factdetatemp_produc`,`tbl_factura_deta_temp`.`factdetatemp_cant` AS `factdetatemp_cant`,`tbl_factura_deta_temp`.`factdetatemp_precio` AS `factdetatemp_precio`,`tbl_factura_deta_temp`.`factdetatemp_monto` AS `factdetatemp_monto`,round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `precio_base`,round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) AS `monto_base`,round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) AS `Base_Imponible`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` - `tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.07,2) AS `Impuesto7`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.09,2) AS `Impuesto9`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible10`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.1,2) AS `Impuesto10`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_factura_deta_temp`.`factdetatemp_producdeta` AS `factdetatemp_producdeta`,`vw_producto_deta`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta_temp` join `vw_producto_deta` on(`tbl_factura_deta_temp`.`factdetatemp_produc` = `vw_producto_deta`.`produc_ide`)) where `vw_producto_deta`.`detaprod_ide` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta_temp3`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta_temp3`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta_temp3` AS select `tbl_factura_deta_temp`.`factdetatemp_ide` AS `factdetatemp_ide`,`tbl_factura_deta_temp`.`factdetatemp_factura` AS `factdetatemp_factura`,`tbl_factura_deta_temp`.`factdetatemp_produc` AS `factdetatemp_produc`,`tbl_factura_deta_temp`.`factdetatemp_cant` AS `factdetatemp_cant`,`tbl_factura_deta_temp`.`factdetatemp_precio` AS `factdetatemp_precio`,`tbl_factura_deta_temp`.`factdetatemp_monto` AS `factdetatemp_monto`,round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `precio_base`,round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) AS `monto_base`,round(round(`tbl_factura_deta_temp`.`factdetatemp_precio` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) * `tbl_factura_deta_temp`.`factdetatemp_cant`,2) AS `Base_Imponible`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` - `tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.07,2) AS `Impuesto7`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.09,2) AS `Impuesto9`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible10`,round(`tbl_factura_deta_temp`.`factdetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100) * 0.1,2) AS `Impuesto10`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_factura_deta_temp`.`factdetatemp_producdeta` AS `factdetatemp_producdeta`,`vw_producto_deta`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_factura_deta_temp` join `vw_producto_deta` on(`tbl_factura_deta_temp`.`factdetatemp_producdeta` = `vw_producto_deta`.`detaprod_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_factura_deta_temp_resu`
--

/*!50001 DROP TABLE IF EXISTS `vw_factura_deta_temp_resu`*/;
/*!50001 DROP VIEW IF EXISTS `vw_factura_deta_temp_resu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_factura_deta_temp_resu` AS select count(`vw_factura_deta_temp`.`factdetatemp_ide`) AS `Elementos`,sum(`vw_factura_deta_temp`.`Base_Imponible`) AS `SubTotal`,sum(`vw_factura_deta_temp`.`Impuesto`) AS `TotalImpuesto`,sum(`vw_factura_deta_temp`.`factdetatemp_monto`) AS `Total`,`vw_factura_deta_temp`.`factdetatemp_factura` AS `factura` from `vw_factura_deta_temp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_fichas`
--

/*!50001 DROP TABLE IF EXISTS `vw_fichas`*/;
/*!50001 DROP VIEW IF EXISTS `vw_fichas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_fichas` AS select `a`.`pefi_ide` AS `pefi_ide`,`a`.`pefi_tius` AS `pefi_tius`,`a`.`pefi_fich` AS `pefi_fich`,`a`.`pefi_estado` AS `pefi_estado`,`b`.`tius_ide` AS `tius_ide`,`b`.`tius_descrip` AS `tius_descrip`,`b`.`tius_borrado` AS `tius_borrado`,`c`.`fich_ide` AS `fich_ide`,`c`.`fich_descrip` AS `fich_descrip`,`c`.`fich_icono` AS `fich_icono`,`c`.`fich_borrado` AS `fich_borrado`,`c`.`fich_orden` AS `fich_orden`,`c`.`fich_url` AS `fich_url` from ((`tbl_permfich` `a` join `tbl_tipousua` `b` on(`a`.`pefi_tius` = `b`.`tius_ide`)) join `tbl_fichas` `c` on(`a`.`pefi_fich` = `c`.`fich_ide`)) where `c`.`fich_borrado` = 0 order by `c`.`fich_orden` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_forpago`
--

/*!50001 DROP TABLE IF EXISTS `vw_forpago`*/;
/*!50001 DROP VIEW IF EXISTS `vw_forpago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_forpago` AS select `tbl_forpago`.`forpago_ide` AS `forpago_ide`,`tbl_forpago`.`forpago_descrip` AS `forpago_descrip`,`tbl_forpago`.`forpago_moneda` AS `forpago_moneda`,`tbl_forpago`.`forpago_borrado` AS `forpago_borrado` from `tbl_forpago` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_impuesto`
--

/*!50001 DROP TABLE IF EXISTS `vw_impuesto`*/;
/*!50001 DROP VIEW IF EXISTS `vw_impuesto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_impuesto` AS select `a`.`impuesto_ide` AS `impuesto_ide`,`a`.`impuesto_porcent` AS `impuesto_porcent`,`a`.`impuesto_borrado` AS `impuesto_borrado` from `tbl_impuesto` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_kardex`
--

/*!50001 DROP TABLE IF EXISTS `vw_kardex`*/;
/*!50001 DROP VIEW IF EXISTS `vw_kardex`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_kardex` AS select `a`.`produc_ide` AS `produc_ide`,`a`.`produc_descrip` AS `produc_descrip`,`a`.`produc_existen` AS `produc_existen`,`b`.`marca_descrip` AS `produc_marca`,`c`.`modelo_descrip` AS `produc_modelo`,`d`.`impuesto_porcent` AS `produc_impuesto`,`a`.`produc_servicio` AS `produc_servicio`,`a`.`produc_borrado` AS `produc_borrado`,`a`.`produc_tienda` AS `produc_tienda`,`f`.`empresa_nombre` AS `empresa_nombre`,`tbl_kardex`.`kardex_ide` AS `kardex_ide`,`tbl_kardex`.`kardex_tipo` AS `kardex_tipo`,`tbl_kardex`.`kardex_producto` AS `kardex_producto`,`tbl_kardex`.`kardex_existen_ant` AS `kardex_existen_ant`,`tbl_kardex`.`kardex_cantidad` AS `kardex_cantidad`,`tbl_kardex`.`kardex_existen_pos` AS `kardex_existen_pos`,`tbl_kardex`.`kardex_factura` AS `kardex_factura`,`tbl_kardex`.`kardex_factura_num` AS `kardex_factura_num`,`tbl_kardex`.`kardex_fecha` AS `kardex_fecha`,`tbl_kardex`.`kardex_tienda` AS `kardex_tienda`,`tbl_kardex`.`kardex_precio_momento` AS `kardex_precio_momento`,`tbl_kardex`.`kardex_borrado` AS `kardex_borrado`,`tbl_kardex`.`kardex_observacion` AS `kardex_observacion`,`a`.`produc_codigo` AS `produc_codigo` from ((((((`tbl_producto` `a` join `tbl_marca` `b` on(`a`.`produc_marca` = `b`.`marca_ide`)) join `tbl_modelo` `c` on(`a`.`produc_modelo` = `c`.`modelo_ide`)) join `tbl_impuesto` `d` on(`a`.`produc_impuesto` = `d`.`impuesto_ide`)) join `tbl_unidmed` `e` on(`a`.`produc_unidmed` = `e`.`unidmed_ide`)) join `tbl_empresa` `f` on(`a`.`produc_tienda` = `f`.`empresa_ide`)) join `tbl_kardex` on(`a`.`produc_ide` = `tbl_kardex`.`kardex_producto`)) where `a`.`produc_borrado` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_kardex_mensual`
--

/*!50001 DROP TABLE IF EXISTS `vw_kardex_mensual`*/;
/*!50001 DROP VIEW IF EXISTS `vw_kardex_mensual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_kardex_mensual` AS select `vw_kardex`.`kardex_ide` AS `kardex_ide`,substr(`vw_kardex`.`kardex_fecha`,1,7) AS `anomes`,`vw_kardex`.`produc_ide` AS `produc_ide`,`vw_kardex`.`produc_descrip` AS `produc_descrip`,`vw_kardex`.`kardex_existen_ant` AS `kardex_existen_ant`,sum(`vw_kardex`.`kardex_cantidad`) AS `sum_cant`,`vw_kardex`.`kardex_tipo` AS `kardex_tipo`,`vw_kardex`.`produc_tienda` AS `produc_tienda`,`vw_kardex`.`empresa_nombre` AS `empresa_nombre`,`vw_kardex`.`kardex_borrado` AS `kardex_borrado`,`vw_kardex`.`produc_codigo` AS `produc_codigo` from `vw_kardex` where `vw_kardex`.`kardex_borrado` = 0 group by `vw_kardex`.`produc_ide`,`vw_kardex`.`kardex_tipo`,substr(`vw_kardex`.`kardex_fecha`,1,7) order by `vw_kardex`.`produc_ide`,`vw_kardex`.`kardex_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_kardex_mensual_resumen`
--

/*!50001 DROP TABLE IF EXISTS `vw_kardex_mensual_resumen`*/;
/*!50001 DROP VIEW IF EXISTS `vw_kardex_mensual_resumen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_kardex_mensual_resumen` AS select `vw_kardex_mensual`.`anomes` AS `anomes`,`vw_kardex_mensual`.`produc_ide` AS `produc_ide`,`vw_kardex_mensual`.`produc_descrip` AS `produc_descrip`,`vw_kardex_mensual`.`produc_tienda` AS `produc_tienda`,`vw_kardex_mensual`.`empresa_nombre` AS `empresa_nombre`,`vw_kardex_mensual`.`kardex_borrado` AS `kardex_borrado`,`vw_kardex_mensual`.`produc_codigo` AS `produc_codigo` from `vw_kardex_mensual` group by `vw_kardex_mensual`.`produc_ide`,`vw_kardex_mensual`.`anomes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_marca`
--

/*!50001 DROP TABLE IF EXISTS `vw_marca`*/;
/*!50001 DROP VIEW IF EXISTS `vw_marca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_marca` AS select `a`.`marca_ide` AS `marca_ide`,`a`.`marca_descrip` AS `marca_descrip`,`a`.`marca_borrado` AS `marca_borrado` from `tbl_marca` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_modelo`
--

/*!50001 DROP TABLE IF EXISTS `vw_modelo`*/;
/*!50001 DROP VIEW IF EXISTS `vw_modelo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_modelo` AS select `a`.`modelo_ide` AS `modelo_ide`,`a`.`modelo_descrip` AS `modelo_descrip`,`a`.`modelo_borrado` AS `modelo_borrado` from `tbl_modelo` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_moneda_tasa`
--

/*!50001 DROP TABLE IF EXISTS `vw_moneda_tasa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_moneda_tasa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_moneda_tasa` AS select `tbl_moneda`.`moneda_ide` AS `moneda_ide`,`tbl_moneda`.`moneda_descrip` AS `moneda_descrip`,`tbl_moneda`.`moneda_abreviada` AS `moneda_abreviada`,`tbl_moneda_valor`.`monval_ide` AS `monval_ide`,`tbl_moneda_valor`.`monval_moneda_ide` AS `monval_moneda_ide`,`tbl_moneda_valor`.`monval_valor` AS `monval_valor`,`tbl_moneda_valor`.`monval_fecha_registro` AS `monval_fecha_registro`,`tbl_moneda_valor`.`monval_borrado` AS `monval_borrado`,`tbl_moneda`.`moneda_operacion` AS `moneda_operacion`,`tbl_moneda`.`moneda_borrado` AS `moneda_borrado` from (`tbl_moneda` join `tbl_moneda_valor` on(`tbl_moneda`.`moneda_ide` = `tbl_moneda_valor`.`monval_moneda_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_moneda_valor`
--

/*!50001 DROP TABLE IF EXISTS `vw_moneda_valor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_moneda_valor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_moneda_valor` AS select `tbl_moneda`.`moneda_ide` AS `moneda_ide`,`tbl_moneda`.`moneda_descrip` AS `moneda_descrip`,`tbl_moneda`.`moneda_abreviada` AS `moneda_abreviada`,(select `tbl_moneda_valor`.`monval_valor` from `tbl_moneda_valor` where `tbl_moneda_valor`.`monval_moneda_ide` = `tbl_moneda`.`moneda_ide` order by `tbl_moneda_valor`.`monval_ide` desc limit 1) AS `moneda_valor` from `tbl_moneda` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre` AS select `tbl_notaentre`.`noen_ide` AS `noen_ide`,`tbl_notaentre`.`noen_ide_tienda` AS `noen_ide_tienda`,`tbl_notaentre`.`noen_control_tienda` AS `noen_control_tienda`,`tbl_notaentre`.`noen_fecha` AS `noen_fecha`,`tbl_notaentre`.`noen_cliente` AS `noen_cliente`,`tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_cliente`.`clien_apelli1` AS `clien_apelli1`,`tbl_cliente`.`clien_apelli2` AS `clien_apelli2`,`tbl_notaentre`.`noen_sub_totalexe` AS `noen_sub_totalexe`,`tbl_notaentre`.`noen_sub_totaliva` AS `noen_sub_totaliva`,`tbl_notaentre`.`noen_descu_total` AS `noen_descu_total`,`tbl_notaentre`.`noen_subcondescu_total` AS `noen_subcondescu_total`,`tbl_notaentre`.`noen_total_general` AS `noen_total_general`,`tbl_notaentre`.`noen_anulada` AS `noen_anulada`,`tbl_notaentre`.`noen_fecha_anulada` AS `noen_fecha_anulada`,`tbl_notaentre`.`noen_tienda` AS `noen_tienda` from (`tbl_notaentre` join `tbl_cliente` on(`tbl_cliente`.`clien_ide` = `tbl_notaentre`.`noen_cliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre_deta_temp`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre_deta_temp`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre_deta_temp` AS select `tbl_notaentre_deta_temp`.`noendetatemp_ide` AS `noendetatemp_ide`,`tbl_notaentre_deta_temp`.`noendetatemp_notaentre` AS `noendetatemp_notaentre`,`tbl_notaentre_deta_temp`.`noendetatemp_produc` AS `noendetatemp_produc`,`tbl_notaentre_deta_temp`.`noendetatemp_cant` AS `noendetatemp_cant`,`tbl_notaentre_deta_temp`.`noendetatemp_precio` AS `noendetatemp_precio`,`tbl_notaentre_deta_temp`.`noendetatemp_monto` AS `noendetatemp_monto`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` - `tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_notaentre_deta_temp` join `vw_producto_deta` on(`tbl_notaentre_deta_temp`.`noendetatemp_produc` = `vw_producto_deta`.`produc_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre_deta_temp1`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre_deta_temp1`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre_deta_temp1` AS select `tbl_notaentre_deta_temp`.`noendetatemp_ide` AS `noendetatemp_ide`,`tbl_notaentre_deta_temp`.`noendetatemp_notaentre` AS `noendetatemp_notaentre`,`tbl_notaentre_deta_temp`.`noendetatemp_produc` AS `noendetatemp_produc`,`tbl_notaentre_deta_temp`.`noendetatemp_cant` AS `noendetatemp_cant`,`tbl_notaentre_deta_temp`.`noendetatemp_precio` AS `noendetatemp_precio`,`tbl_notaentre_deta_temp`.`noendetatemp_monto` AS `noendetatemp_monto`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` - `tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`tbl_notaentre_deta_temp` join `vw_producto` on(`vw_producto`.`produc_ide` = `tbl_notaentre_deta_temp`.`noendetatemp_produc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre_deta_temp2`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre_deta_temp2`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre_deta_temp2` AS select `tbl_notaentre_deta_temp`.`noendetatemp_ide` AS `noendetatemp_ide`,`tbl_notaentre_deta_temp`.`noendetatemp_notaentre` AS `noendetatemp_notaentre`,`tbl_notaentre_deta_temp`.`noendetatemp_produc` AS `noendetatemp_produc`,`tbl_notaentre_deta_temp`.`noendetatemp_cant` AS `noendetatemp_cant`,`tbl_notaentre_deta_temp`.`noendetatemp_precio` AS `noendetatemp_precio`,`tbl_notaentre_deta_temp`.`noendetatemp_monto` AS `noendetatemp_monto`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` - `tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_notaentre_deta_temp`.`noendetatemp_producdeta` AS `noendetatemp_producdeta`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_notaentre_deta_temp` join `vw_producto_deta` on(`tbl_notaentre_deta_temp`.`noendetatemp_produc` = `vw_producto_deta`.`produc_ide`)) where `vw_producto_deta`.`detaprod_ide` is null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre_deta_temp3`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre_deta_temp3`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre_deta_temp3` AS select `tbl_notaentre_deta_temp`.`noendetatemp_ide` AS `noendetatemp_ide`,`tbl_notaentre_deta_temp`.`noendetatemp_notaentre` AS `noendetatemp_notaentre`,`tbl_notaentre_deta_temp`.`noendetatemp_produc` AS `noendetatemp_produc`,`tbl_notaentre_deta_temp`.`noendetatemp_cant` AS `noendetatemp_cant`,`tbl_notaentre_deta_temp`.`noendetatemp_precio` AS `noendetatemp_precio`,`tbl_notaentre_deta_temp`.`noendetatemp_monto` AS `noendetatemp_monto`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Base_Imponible`,round(`tbl_notaentre_deta_temp`.`noendetatemp_monto` - `tbl_notaentre_deta_temp`.`noendetatemp_monto` / (1 + `vw_producto_deta`.`produc_impuesto` / 100),2) AS `Impuesto`,`vw_producto_deta`.`produc_descrip` AS `produc_descrip`,`vw_producto_deta`.`produc_existen` AS `produc_existen`,`vw_producto_deta`.`produc_precio1` AS `produc_precio1`,`vw_producto_deta`.`produc_precio2` AS `produc_precio2`,`vw_producto_deta`.`produc_precio3` AS `produc_precio3`,`vw_producto_deta`.`produc_precio4` AS `produc_precio4`,`vw_producto_deta`.`produc_impuesto` AS `produc_impuesto`,`vw_producto_deta`.`detaprod_ide` AS `detaprod_ide`,`vw_producto_deta`.`detaprod_imei` AS `detaprod_imei`,`vw_producto_deta`.`detaprod_serial` AS `detaprod_serial`,`tbl_notaentre_deta_temp`.`noendetatemp_producdeta` AS `noendetatemp_producdeta`,`vw_producto_deta`.`produc_codigo` AS `produc_codigo` from (`tbl_notaentre_deta_temp` join `vw_producto_deta` on(`tbl_notaentre_deta_temp`.`noendetatemp_producdeta` = `vw_producto_deta`.`detaprod_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_notaentre_deta_temp_resu`
--

/*!50001 DROP TABLE IF EXISTS `vw_notaentre_deta_temp_resu`*/;
/*!50001 DROP VIEW IF EXISTS `vw_notaentre_deta_temp_resu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_notaentre_deta_temp_resu` AS select count(`vw_notaentre_deta_temp`.`noendetatemp_ide`) AS `Elementos`,sum(`vw_notaentre_deta_temp`.`Base_Imponible`) AS `SubTotal`,sum(`vw_notaentre_deta_temp`.`Impuesto`) AS `TotalImpuesto`,sum(`vw_notaentre_deta_temp`.`noendetatemp_monto`) AS `Total`,`vw_notaentre_deta_temp`.`noendetatemp_notaentre` AS `notaentre` from `vw_notaentre_deta_temp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orden`
--

/*!50001 DROP TABLE IF EXISTS `vw_orden`*/;
/*!50001 DROP VIEW IF EXISTS `vw_orden`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orden` AS select `tbl_orden`.`orden_ide` AS `orden_ide`,`tbl_orden`.`orden_prove_ide` AS `orden_prove_ide`,`tbl_orden`.`orden_clien_ide` AS `orden_clien_ide`,`tbl_orden`.`orden_control` AS `orden_control`,(select sum(`tbl_requisicion_deta`.`reqdet_monto`) AS `MontoOrdenado` from `tbl_requisicion_deta` where `tbl_requisicion_deta`.`reqdet_ord_ide` = `tbl_orden`.`orden_ide`) AS `monto_ordenado`,`tbl_orden`.`orden_fecha` AS `orden_fecha`,`tbl_orden`.`orden_status` AS `orden_status`,`tbl_orden`.`orden_tienda` AS `orden_tienda`,`tbl_orden`.`orden_borrado` AS `orden_borrado`,`tbl_proveedor`.`prove_tipo` AS `prove_tipo`,`tbl_proveedor`.`prove_cedrif` AS `prove_cedrif`,`tbl_proveedor`.`prove_razonsocial` AS `prove_razonsocial`,`tbl_proveedor`.`prove_alias` AS `prove_alias`,`tbl_cliente`.`clien_codigo` AS `clien_codigo`,`tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_orden`.`orden_fecha_reg` AS `orden_fecha_reg` from ((`tbl_orden` join `tbl_proveedor` on(`tbl_orden`.`orden_prove_ide` = `tbl_proveedor`.`prove_ide`)) left join `tbl_cliente` on(`tbl_orden`.`orden_clien_ide` = `tbl_cliente`.`clien_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pago`
--

/*!50001 DROP TABLE IF EXISTS `vw_pago`*/;
/*!50001 DROP VIEW IF EXISTS `vw_pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pago` AS select `tbl_pago`.`pago_ide` AS `pago_ide`,`tbl_pago`.`pago_forma` AS `pago_forma`,`tbl_pago`.`pago_monto` AS `pago_monto`,`tbl_pago`.`pago_fecha` AS `pago_fecha`,`tbl_pago`.`pago_ref` AS `pago_ref`,`tbl_pago`.`pago_status` AS `pago_status`,`tbl_pago`.`pago_proceso` AS `pago_proceso`,`tbl_pago`.`pago_borrado` AS `pago_borrado`,`tbl_forpago`.`forpago_ide` AS `forpago_ide`,`tbl_forpago`.`forpago_descrip` AS `forpago_descrip`,`tbl_forpago`.`forpago_moneda` AS `forpago_moneda`,`tbl_pago`.`pago_hora` AS `pago_hora` from (`tbl_pago` join `tbl_forpago`) where `tbl_pago`.`pago_forma` = `tbl_forpago`.`forpago_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_permisos`
--

/*!50001 DROP TABLE IF EXISTS `vw_permisos`*/;
/*!50001 DROP VIEW IF EXISTS `vw_permisos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_permisos` AS select `a`.`perm_ide` AS `perm_ide`,`a`.`perm_tius` AS `perm_tius`,`a`.`perm_estado` AS `perm_estado`,`b`.`sumo_ide` AS `sumo_ide`,`b`.`sumo_descrip` AS `sumo_descrip`,`b`.`sumo_orden` AS `sumo_orden`,`b`.`sumo_icono` AS `sumo_icono`,`b`.`sumo_visible` AS `sumo_visible`,`b`.`sumo_url` AS `sumo_url`,`c`.`modu_ide` AS `modu_ide`,`c`.`modu_descrip` AS `modu_descrip`,`c`.`modu_icono` AS `modu_icono`,`c`.`modu_visible` AS `modu_visible`,`c`.`modu_orden` AS `modu_orden`,`a`.`perm_sumo` AS `perm_sumo` from ((`tbl_permisos` `a` join `tbl_submodul` `b` on(`a`.`perm_sumo` = `b`.`sumo_ide`)) join `tbl_modulos` `c` on(`b`.`sumo_modu` = `c`.`modu_ide`)) where `c`.`modu_visible` = 1 and `b`.`sumo_visible` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_precio_unitario_venta`
--

/*!50001 DROP TABLE IF EXISTS `vw_precio_unitario_venta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_precio_unitario_venta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_precio_unitario_venta` AS select `tbl_factura`.`fact_ide_tienda` AS `fact_ide_tienda`,substr(`tbl_factura`.`fact_fecha`,1,7) AS `anomes`,`tbl_factura_deta`.`factdeta_produc` AS `factdeta_produc`,`tbl_factura_deta`.`factdeta_base` / `tbl_factura_deta`.`factdeta_cant` AS `precio_venta_unitario` from (`tbl_factura` join `tbl_factura_deta` on(`tbl_factura`.`fact_ide` = `tbl_factura_deta`.`factdeta_factura`)) where `tbl_factura`.`fact_anulada` = 0 order by `tbl_factura`.`fact_ide` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_precio_unitario_venta1`
--

/*!50001 DROP TABLE IF EXISTS `vw_precio_unitario_venta1`*/;
/*!50001 DROP VIEW IF EXISTS `vw_precio_unitario_venta1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_precio_unitario_venta1` AS select `tbl_kardex`.`kardex_ide` AS `kardex_ide`,`tbl_kardex`.`kardex_producto` AS `kardex_producto`,substr(`tbl_kardex`.`kardex_fecha`,1,7) AS `anomes`,`tbl_kardex`.`kardex_precio_momento` AS `precio_venta_unitario` from `tbl_kardex` where `tbl_kardex`.`kardex_tipo` = 2 and `tbl_kardex`.`kardex_borrado` = 0 order by `tbl_kardex`.`kardex_ide` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_producto`
--

/*!50001 DROP TABLE IF EXISTS `vw_producto`*/;
/*!50001 DROP VIEW IF EXISTS `vw_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_producto` AS select `a`.`produc_ide` AS `produc_ide`,`a`.`produc_descrip` AS `produc_descrip`,`a`.`produc_existen` AS `produc_existen`,`a`.`produc_costo` AS `produc_costo`,`a`.`produc_precio1` AS `produc_precio1`,`a`.`produc_precio2` AS `produc_precio2`,`a`.`produc_precio3` AS `produc_precio3`,`a`.`produc_precio4` AS `produc_precio4`,round(`a`.`produc_precio1` / (1 + `d`.`impuesto_porcent` / 100),2) AS `BASE`,`a`.`produc_foto` AS `produc_foto`,`a`.`produc_color` AS `produc_color`,`a`.`produc_talla` AS `produc_talla`,`e`.`unidmed_descrip` AS `produc_unidmed`,`e`.`unidmed_abrevia` AS `produc_unidmed_abrevia`,`a`.`produc_medida` AS `produc_medida`,`b`.`marca_descrip` AS `produc_marca`,`c`.`modelo_descrip` AS `produc_modelo`,`d`.`impuesto_porcent` AS `produc_impuesto`,`a`.`produc_servicio` AS `produc_servicio`,`a`.`produc_observa` AS `produc_observa`,`a`.`produc_borrado` AS `produc_borrado`,`a`.`produc_tienda` AS `produc_tienda`,`a`.`produc_stock` AS `produc_stock`,`tbl_empresa`.`empresa_nombre` AS `empresa_nombre`,`tbl_empresa`.`empresa_nombre2` AS `empresa_nombre2`,`a`.`produc_serializado` AS `produc_serializado`,`a`.`produc_codigo` AS `produc_codigo`,`a`.`produc_preciodolar` AS `produc_preciodolar` from (((((`tbl_producto` `a` join `tbl_marca` `b` on(`a`.`produc_marca` = `b`.`marca_ide`)) join `tbl_modelo` `c` on(`a`.`produc_modelo` = `c`.`modelo_ide`)) join `tbl_impuesto` `d` on(`a`.`produc_impuesto` = `d`.`impuesto_ide`)) join `tbl_unidmed` `e` on(`a`.`produc_unidmed` = `e`.`unidmed_ide`)) join `tbl_empresa` on(`a`.`produc_tienda` = `tbl_empresa`.`empresa_ide`)) where `a`.`produc_borrado` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_producto_deta`
--

/*!50001 DROP TABLE IF EXISTS `vw_producto_deta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_producto_deta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_producto_deta` AS select `vw_producto`.`produc_ide` AS `produc_ide`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`vw_producto`.`produc_existen` AS `produc_existen`,`vw_producto`.`produc_costo` AS `produc_costo`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_precio2` AS `produc_precio2`,`vw_producto`.`produc_precio3` AS `produc_precio3`,`vw_producto`.`produc_precio4` AS `produc_precio4`,`vw_producto`.`produc_foto` AS `produc_foto`,`vw_producto`.`produc_color` AS `produc_color`,`vw_producto`.`produc_talla` AS `produc_talla`,`vw_producto`.`produc_unidmed` AS `produc_unidmed`,`vw_producto`.`produc_medida` AS `produc_medida`,`vw_producto`.`produc_marca` AS `produc_marca`,`vw_producto`.`produc_modelo` AS `produc_modelo`,`vw_producto`.`produc_impuesto` AS `produc_impuesto`,`vw_producto`.`produc_servicio` AS `produc_servicio`,`vw_producto`.`produc_observa` AS `produc_observa`,`vw_producto`.`produc_borrado` AS `produc_borrado`,`vw_producto`.`produc_tienda` AS `produc_tienda`,`tbl_detaprod`.`detaprod_ide` AS `detaprod_ide`,`tbl_detaprod`.`detaprod_imei` AS `detaprod_imei`,`tbl_detaprod`.`detaprod_serial` AS `detaprod_serial`,`tbl_detaprod`.`detaprod_borrado` AS `detaprod_borrado`,`tbl_detaprod`.`detaprod_faccom` AS `detaprod_faccom`,`vw_producto`.`produc_unidmed_abrevia` AS `produc_unidmed_abrevia`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (`vw_producto` left join `tbl_detaprod` on(`vw_producto`.`produc_ide` = `tbl_detaprod`.`detaprod_producto`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_por_cobrar`
--

/*!50001 DROP TABLE IF EXISTS `vw_productos_por_cobrar`*/;
/*!50001 DROP VIEW IF EXISTS `vw_productos_por_cobrar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_por_cobrar` AS select `vw_cliente`.`clien_ide` AS `clien_ide`,`vw_cliente`.`clien_tipcli` AS `clien_tipcli`,`vw_cliente`.`clien_numiden` AS `clien_numiden`,`vw_cliente`.`clien_nombre1` AS `clien_nombre1`,`vw_cliente`.`clien_nombre2` AS `clien_nombre2`,`vw_cliente`.`clien_apelli1` AS `clien_apelli1`,`vw_cliente`.`clien_apelli2` AS `clien_apelli2`,`tbl_notaentre`.`noen_ide` AS `noen_ide`,`tbl_notaentre`.`noen_fecha` AS `noen_fecha`,`tbl_notaentre`.`noen_forpag` AS `noen_forpag`,`tbl_notaentre_deta`.`noendeta_produc` AS `noendeta_produc`,`vw_producto`.`produc_descrip` AS `produc_descrip`,`tbl_notaentre_deta`.`noendeta_cant` AS `noendeta_cant`,`vw_producto`.`produc_precio1` AS `produc_precio1`,`vw_producto`.`produc_codigo` AS `produc_codigo` from (((`vw_cliente` join `tbl_notaentre` on(`vw_cliente`.`clien_ide` = `tbl_notaentre`.`noen_cliente`)) join `tbl_notaentre_deta` on(`tbl_notaentre`.`noen_ide` = `tbl_notaentre_deta`.`noendeta_notaentre`)) join `vw_producto` on(`tbl_notaentre_deta`.`noendeta_produc` = `vw_producto`.`produc_ide`)) where `tbl_notaentre`.`noen_forpag` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_proveedor`
--

/*!50001 DROP TABLE IF EXISTS `vw_proveedor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_proveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_proveedor` AS select `tbl_proveedor`.`prove_ide` AS `prove_ide`,`tbl_proveedor`.`prove_tipo` AS `prove_tipo`,`tbl_proveedor`.`prove_cedrif` AS `prove_cedrif`,`tbl_proveedor`.`prove_razonsocial` AS `prove_razonsocial`,`tbl_proveedor`.`prove_alias` AS `prove_alias`,`tbl_proveedor`.`prove_fecreg` AS `prove_fecreg`,`tbl_proveedor`.`prove_direcci` AS `prove_direcci`,`tbl_proveedor`.`prove_telcon` AS `prove_telcon`,`tbl_proveedor`.`prove_correo` AS `prove_correo`,`tbl_proveedor`.`prove_contriespec` AS `prove_contriespec`,`tbl_proveedor`.`prove_ubimap` AS `prove_ubimap`,`tbl_proveedor`.`prove_borrado` AS `prove_borrado`,`tbl_tipcli`.`tipcli_ide` AS `tipcli_ide` from (`tbl_proveedor` join `tbl_tipcli` on(`tbl_proveedor`.`prove_tipo` = `tbl_tipcli`.`tipcli_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recdetalle`
--

/*!50001 DROP TABLE IF EXISTS `vw_recdetalle`*/;
/*!50001 DROP VIEW IF EXISTS `vw_recdetalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recdetalle` AS select `tbl_recibo_detalle`.`recdeta_ide` AS `recdeta_ide`,`tbl_recibo_detalle`.`recdeta_encab_ide` AS `recdeta_encab_ide`,`tbl_recibo_detalle`.`recdeta_venta_ide` AS `recdeta_venta_ide`,`tbl_recibo_detalle`.`recdeta_tipo_ide` AS `recdeta_tipo_ide`,`tbl_recibo_detalle`.`recdeta_forpago_ide` AS `recdeta_forpago_ide`,`tbl_recibo_detalle`.`recdetaa_monto` AS `recdetaa_monto` from `tbl_recibo_detalle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recencab`
--

/*!50001 DROP TABLE IF EXISTS `vw_recencab`*/;
/*!50001 DROP VIEW IF EXISTS `vw_recencab`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recencab` AS select `tbl_recibo_encab`.`recencab_ide` AS `recencab_ide`,`tbl_recibo_encab`.`recencab_num` AS `recencab_num`,`tbl_recibo_encab`.`recencab_fec` AS `recencab_fec`,`tbl_recibo_encab`.`recencab_vende_ide` AS `recencab_vende_ide`,`tbl_recibo_encab`.`recencab_clien_ide` AS `recencab_clien_ide`,`tbl_vendedor`.`vende_razonsocial` AS `vendedor`,`tbl_cliente`.`clien_nombre1` AS `cliente`,`tbl_recibo_encab`.`recencab_status` AS `recencab_status`,`tbl_recibo_encab`.`recencab_borrado` AS `recencab_borrado`,`tbl_recibo_encab`.`recencab_monto` AS `recencab_monto` from ((`tbl_recibo_encab` join `tbl_vendedor`) join `tbl_cliente`) where `tbl_recibo_encab`.`recencab_vende_ide` = `tbl_vendedor`.`vende_ide` and `tbl_recibo_encab`.`recencab_clien_ide` = `tbl_cliente`.`clien_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recibo_nota`
--

/*!50001 DROP TABLE IF EXISTS `vw_recibo_nota`*/;
/*!50001 DROP VIEW IF EXISTS `vw_recibo_nota`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recibo_nota` AS select `tbl_recibo_nota`.`recnota_ide` AS `recnota_ide`,`tbl_recibo_nota`.`recnota_encab_ide` AS `recnota_encab_ide`,`tbl_recibo_nota`.`recnota_venta_ide` AS `recnota_venta_ide`,`tbl_recibo_nota`.`recnota_status` AS `recnota_status`,`tbl_recibo_nota`.`recnota_borrado` AS `recnota_borrado`,`wh_tbl_venta`.`venta_num` AS `venta_num`,`wh_tbl_venta`.`venta_porc_desc` AS `descuento`,`wh_tbl_venta`.`venta_monto` AS `monto_contado`,`wh_tbl_venta`.`venta_monto_credito` AS `monto_credito`,`wh_tbl_venta`.`venta_flete` AS `flete`,`wh_tbl_venta`.`venta_condicion` AS `venta_condicion`,`tbl_recibo_nota`.`recnota_monto_aplicado` AS `monto_aplicado`,`wh_tbl_venta`.`venta_saldo` AS `venta_saldo`,`tbl_recibo_encab`.`recencab_num` AS `recencab_num`,`tbl_recibo_encab`.`recencab_fec` AS `recencab_fec` from ((`tbl_recibo_nota` join `wh_tbl_venta`) join `tbl_recibo_encab`) where `tbl_recibo_nota`.`recnota_venta_ide` = `wh_tbl_venta`.`venta_ide` and `tbl_recibo_nota`.`recnota_encab_ide` = `tbl_recibo_encab`.`recencab_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recibo_pago`
--

/*!50001 DROP TABLE IF EXISTS `vw_recibo_pago`*/;
/*!50001 DROP VIEW IF EXISTS `vw_recibo_pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recibo_pago` AS select `tbl_recibo_pago`.`recpago_ide` AS `recpago_ide`,`tbl_recibo_pago`.`recpago_encab_ide` AS `recpago_encab_ide`,`tbl_recibo_pago`.`recpago_pago_ide` AS `recpago_pago_ide`,`tbl_recibo_pago`.`recpago_status` AS `recpago_status`,`tbl_recibo_pago`.`recpago_borrado` AS `recpago_borrado`,`tbl_pago`.`pago_monto` AS `monto`,`tbl_pago`.`pago_forma` AS `pago_forma`,`tbl_recibo_pago`.`recpago_fecha_proceso` AS `recpago_fecha_proceso`,`tbl_forpago`.`forpago_descrip` AS `formapago`,`tbl_forpago`.`forpago_ide` AS `forpago_ide` from ((`tbl_recibo_pago` join `tbl_pago`) join `tbl_forpago`) where `tbl_recibo_pago`.`recpago_pago_ide` = `tbl_pago`.`pago_ide` and `tbl_pago`.`pago_forma` = `tbl_forpago`.`forpago_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_requisicion`
--

/*!50001 DROP TABLE IF EXISTS `vw_requisicion`*/;
/*!50001 DROP VIEW IF EXISTS `vw_requisicion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_requisicion` AS select `tbl_requisicion`.`req_ide` AS `req_ide`,`tbl_requisicion`.`req_clien_ide` AS `req_clien_ide`,`tbl_requisicion`.`req_vende_ide` AS `req_vende_ide`,`tbl_requisicion`.`req_monto` AS `req_monto`,(select sum(`tbl_requisicion_deta`.`reqdet_monto`) AS `MontoOrdenado` from `tbl_requisicion_deta` where `tbl_requisicion_deta`.`reqdet_req_ide` = `tbl_requisicion`.`req_ide`) AS `monto_ordenado`,`tbl_requisicion`.`req_fecha` AS `req_fecha`,`tbl_requisicion`.`req_status` AS `req_status`,`tbl_requisicion`.`req_tienda` AS `req_tienda`,`tbl_requisicion`.`req_fecha_reg` AS `req_fecha_reg`,`tbl_requisicion`.`req_borrado` AS `req_borrado`,`tbl_cliente`.`clien_codigo` AS `clien_codigo`,`tbl_cliente`.`clien_tipcli` AS `clien_tipcli`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`tbl_cliente`.`clien_zona` AS `clien_zona`,`tbl_vendedor`.`vende_tipo` AS `vende_tipo`,`tbl_vendedor`.`vende_cedrif` AS `vende_cedrif`,`tbl_vendedor`.`vende_razonsocial` AS `vende_razonsocial`,`tbl_vendedor`.`vende_alias` AS `vende_alias` from ((`tbl_requisicion` join `tbl_cliente` on(`tbl_requisicion`.`req_clien_ide` = `tbl_cliente`.`clien_ide`)) join `tbl_vendedor` on(`tbl_requisicion`.`req_vende_ide` = `tbl_vendedor`.`vende_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_requisicion_deta`
--

/*!50001 DROP TABLE IF EXISTS `vw_requisicion_deta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_requisicion_deta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_requisicion_deta` AS select `tbl_requisicion_deta`.`reqdet_ide` AS `reqdet_ide`,`tbl_requisicion_deta`.`reqdet_req_ide` AS `reqdet_req_ide`,`tbl_requisicion_deta`.`reqdet_prove_ide` AS `reqdet_prove_ide`,`tbl_proveedor`.`prove_tipo` AS `prove_tipo`,`tbl_proveedor`.`prove_cedrif` AS `prove_cedrif`,`tbl_proveedor`.`prove_razonsocial` AS `prove_razonsocial`,`tbl_proveedor`.`prove_alias` AS `prove_alias`,`tbl_requisicion_deta`.`reqdet_ord_ide` AS `reqdet_ord_ide`,`tbl_orden`.`orden_control` AS `orden_control`,`tbl_orden`.`orden_fecha` AS `orden_fecha`,`tbl_requisicion_deta`.`reqdet_monto` AS `reqdet_monto`,`tbl_requisicion_deta`.`reqdet_fecha_reg` AS `reqdet_fecha_reg`,`tbl_requisicion_deta`.`reqdet_status` AS `reqdet_status`,`tbl_requisicion_deta`.`reqdet_borrado` AS `reqdet_borrado`,`vw_requisicion`.`req_clien_ide` AS `req_clien_ide`,`vw_requisicion`.`clien_tipcli` AS `clien_tipcli`,`vw_requisicion`.`clien_numiden` AS `clien_numiden`,`vw_requisicion`.`clien_nombre1` AS `clien_nombre1`,`vw_requisicion`.`clien_nombre2` AS `clien_nombre2` from (((`tbl_requisicion_deta` join `tbl_proveedor` on(`tbl_requisicion_deta`.`reqdet_prove_ide` = `tbl_proveedor`.`prove_ide`)) join `tbl_orden` on(`tbl_requisicion_deta`.`reqdet_ord_ide` = `tbl_orden`.`orden_ide`)) join `vw_requisicion` on(`tbl_requisicion_deta`.`reqdet_req_ide` = `vw_requisicion`.`req_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_submodul`
--

/*!50001 DROP TABLE IF EXISTS `vw_submodul`*/;
/*!50001 DROP VIEW IF EXISTS `vw_submodul`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_submodul` AS select `a`.`sumo_ide` AS `sumo_ide`,`a`.`sumo_descrip` AS `sumo_descrip`,`b`.`modu_descrip` AS `modu_descrip` from (`tbl_submodul` `a` join `tbl_modulos` `b` on(`a`.`sumo_modu` = `b`.`modu_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sumanotapordesglose`
--

/*!50001 DROP TABLE IF EXISTS `vw_sumanotapordesglose`*/;
/*!50001 DROP VIEW IF EXISTS `vw_sumanotapordesglose`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sumanotapordesglose` AS select sum(`vw_desg_deta_vta`.`monto_venta`) AS `suma_venta`,`vw_desg_deta_vta`.`nota` AS `nota`,`vw_desg_deta_vta`.`desgvtadet_nota_ide` AS `desgvtadet_nota_ide`,`vw_desg_deta_vta`.`monto_nota` AS `monto_nota`,`vw_desg_deta_vta`.`desg_ide` AS `desg_ide` from `vw_desg_deta_vta` group by `vw_desg_deta_vta`.`compra_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_tbl_cruce_pago`
--

/*!50001 DROP TABLE IF EXISTS `vw_tbl_cruce_pago`*/;
/*!50001 DROP VIEW IF EXISTS `vw_tbl_cruce_pago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_tbl_cruce_pago` AS select `tbl_cruce_encab`.`cruce_encab_ide` AS `cruce_encab_ide`,`tbl_cruce_encab`.`cruce_encab_monto` AS `cruce_encab_monto`,`tbl_cruce_encab`.`cruce_encab_fec` AS `cruce_encab_fec`,`tbl_cruce_encab`.`cruce_encab_pago_ide` AS `cruce_encab_pago_ide`,`tbl_cruce_encab`.`cruce_encab_status` AS `cruce_encab_status`,`tbl_cruce_encab`.`cruce_encab_borrado` AS `cruce_encab_borrado`,`tbl_cruce_encab`.`cruce_encab_registro` AS `cruce_encab_registro`,`tbl_pago`.`pago_ide` AS `pago_ide`,`tbl_pago`.`pago_forma` AS `pago_forma`,`tbl_pago`.`pago_monto` AS `pago_monto`,`tbl_pago`.`pago_fecha` AS `pago_fecha`,`tbl_pago`.`pago_ref` AS `pago_ref`,`tbl_pago`.`pago_status` AS `pago_status`,`tbl_pago`.`pago_borrado` AS `pago_borrado`,`tbl_forpago`.`forpago_ide` AS `forpago_ide`,`tbl_forpago`.`forpago_descrip` AS `forpago_descrip`,`tbl_forpago`.`forpago_moneda` AS `forpago_moneda` from ((`tbl_cruce_encab` join `tbl_pago`) join `tbl_forpago`) where `tbl_cruce_encab`.`cruce_encab_pago_ide` = `tbl_pago`.`pago_ide` and `tbl_pago`.`pago_forma` = `tbl_forpago`.`forpago_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_tbl_marca_wh`
--

/*!50001 DROP TABLE IF EXISTS `vw_tbl_marca_wh`*/;
/*!50001 DROP VIEW IF EXISTS `vw_tbl_marca_wh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_tbl_marca_wh` AS select `wh_tbl_marca`.`marca_ide` AS `marca_ide`,`wh_tbl_marca`.`marca_descrip` AS `marca_descrip`,`wh_tbl_marca`.`marca_borrado` AS `marca_borrado` from `wh_tbl_marca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_tipcli`
--

/*!50001 DROP TABLE IF EXISTS `vw_tipcli`*/;
/*!50001 DROP VIEW IF EXISTS `vw_tipcli`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_tipcli` AS select `a`.`tipcli_ide` AS `tipcli_ide`,`a`.`tipcli_descrip` AS `tipcli_descrip`,`a`.`tipcli_borrado` AS `tipcli_borrado` from `tbl_tipcli` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_total_nota_desglose`
--

/*!50001 DROP TABLE IF EXISTS `vw_total_nota_desglose`*/;
/*!50001 DROP VIEW IF EXISTS `vw_total_nota_desglose`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_total_nota_desglose` AS select ifnull(sum(`wh_tbl_desgvta_detalle`.`desgvtadet_monto`),0) AS `total_nota`,`wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` AS `desgvtadet_nota_ide` from `wh_tbl_desgvta_detalle` group by `wh_tbl_desgvta_detalle`.`desgvtadet_nota_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_unidmed`
--

/*!50001 DROP TABLE IF EXISTS `vw_unidmed`*/;
/*!50001 DROP VIEW IF EXISTS `vw_unidmed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_unidmed` AS select `a`.`unidmed_ide` AS `unidmed_ide`,`a`.`unidmed_abrevia` AS `unidmed_abrevia`,`a`.`unidmed_descrip` AS `unidmed_descrip`,`a`.`unidmed_borrado` AS `unidmed_borrado` from `tbl_unidmed` `a` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_union_factura_notaentrega`
--

/*!50001 DROP TABLE IF EXISTS `vw_union_factura_notaentrega`*/;
/*!50001 DROP VIEW IF EXISTS `vw_union_factura_notaentrega`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_union_factura_notaentrega` AS select `tbl_factura`.`fact_ide` AS `ide`,`tbl_factura`.`fact_ide_tienda` AS `fact_nota`,`tbl_factura`.`fact_fecha` AS `fecha`,`tbl_factura`.`fact_total_general` AS `total`,`tbl_factura`.`fact_anulada` AS `anulada`,`tbl_factura`.`fact_forpag` AS `formapago`,`tbl_factura`.`fact_efecti` AS `efectivo`,`tbl_factura`.`fact_tardeb` AS `debito`,`tbl_factura`.`fact_tarcre` AS `credito`,`tbl_factura`.`fact_tarali` AS `alimentacion`,`tbl_factura`.`fact_cheque` AS `cheque`,`tbl_factura`.`fact_transf` AS `transferencia`,`tbl_factura`.`fact_tienda` AS `tienda`,`tbl_factura`.`fact_cliente` AS `cliente` from `tbl_factura` union all select `tbl_notaentre`.`noen_ide` AS `ide`,`tbl_notaentre`.`noen_ide_tienda` AS `fact_nota`,`tbl_notaentre`.`noen_fecha` AS `fecha`,`tbl_notaentre`.`noen_total_general` AS `total`,`tbl_notaentre`.`noen_anulada` AS `anulada`,`tbl_notaentre`.`noen_forpag` AS `formapago`,`tbl_notaentre`.`noen_efecti` AS `efectivo`,`tbl_notaentre`.`noen_tardeb` AS `debido`,`tbl_notaentre`.`noen_tarcre` AS `credito`,`tbl_notaentre`.`noen_tarali` AS `alimentacion`,`tbl_notaentre`.`noen_cheque` AS `cheque`,`tbl_notaentre`.`noen_transf` AS `transferencia`,`tbl_notaentre`.`noen_tienda` AS `tienda`,`tbl_notaentre`.`noen_cliente` AS `cliente` from `tbl_notaentre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuarios`
--

/*!50001 DROP TABLE IF EXISTS `vw_usuarios`*/;
/*!50001 DROP VIEW IF EXISTS `vw_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuarios` AS select `a`.`usua_ide` AS `usua_ide`,`a`.`usua_numiden` AS `usua_numiden`,`a`.`usua_nombre` AS `usua_nombre`,`a`.`usua_apelli` AS `usua_apelli`,`a`.`usua_fecnaci` AS `usua_fecnaci`,`a`.`usua_direcci` AS `usua_direcci`,`a`.`usua_telmovi` AS `usua_telmovi`,`a`.`usua_tipo` AS `usua_tipo`,`a`.`usua_correo` AS `usua_correo`,`a`.`usua_login` AS `usua_login`,`a`.`usua_clave` AS `usua_clave`,`a`.`usua_estado` AS `usua_estado`,`a`.`usua_visible` AS `usua_visible`,`a`.`usua_tius` AS `usua_tius`,`m`.`tius_descrip` AS `tius_descrip`,`m`.`tius_ide` AS `tius_ide`,`a`.`usua_tienda` AS `usua_tienda` from (`tbl_usuarios` `a` left join `tbl_tipousua` `m` on(`a`.`usua_tius` = `m`.`tius_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vendedor`
--

/*!50001 DROP TABLE IF EXISTS `vw_vendedor`*/;
/*!50001 DROP VIEW IF EXISTS `vw_vendedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vendedor` AS select `tbl_vendedor`.`vende_ide` AS `vende_ide`,`tbl_vendedor`.`vende_tipo` AS `vende_tipo`,`tbl_vendedor`.`vende_cedrif` AS `vende_cedrif`,`tbl_vendedor`.`vende_razonsocial` AS `vende_razonsocial`,`tbl_vendedor`.`vende_alias` AS `vende_alias`,`tbl_vendedor`.`vende_fecreg` AS `vende_fecreg`,`tbl_vendedor`.`vende_direcci` AS `vende_direcci`,`tbl_vendedor`.`vende_telcon` AS `vende_telcon`,`tbl_vendedor`.`vende_correo` AS `vende_correo`,`tbl_vendedor`.`vende_contriespec` AS `vende_contriespec`,`tbl_vendedor`.`vende_ubimap` AS `vende_ubimap`,`tbl_vendedor`.`vende_borrado` AS `vende_borrado`,`tbl_tipcli`.`tipcli_ide` AS `tipcli_ide` from (`tbl_vendedor` join `tbl_tipcli` on(`tbl_vendedor`.`vende_tipo` = `tbl_tipcli`.`tipcli_ide`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_venta`
--

/*!50001 DROP TABLE IF EXISTS `vw_venta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_venta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_venta` AS select `wh_tbl_venta`.`venta_ide` AS `venta_ide`,`wh_tbl_venta`.`venta_num` AS `venta_num`,`wh_tbl_venta`.`venta_fecha` AS `venta_fecha`,`wh_tbl_venta`.`venta_vende_ide` AS `venta_vende_ide`,`wh_tbl_venta`.`venta_tienda` AS `venta_tienda`,`wh_tbl_venta`.`venta_fecha_registro` AS `venta_fecha_registro`,`tbl_vendedor`.`vende_razonsocial` AS `vendedor`,`tbl_vendedor`.`vende_alias` AS `alias_vendedor`,`wh_tbl_venta`.`venta_compra_ide` AS `venta_compra_ide`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`tbl_cliente`.`clien_nombre1` AS `cliente_venta`,`wh_tbl_venta`.`venta_clien_ide` AS `venta_clien_ide`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`tbl_cliente`.`clien_nombre2` AS `clien_nombre2`,`wh_tbl_venta`.`venta_porc_desc` AS `venta_porc_desc`,`wh_tbl_venta`.`venta_monto` AS `venta_monto`,`wh_tbl_venta`.`venta_monto_credito` AS `venta_monto_credito`,`wh_tbl_venta`.`venta_flete` AS `venta_flete`,`wh_tbl_venta`.`venta_condicion` AS `venta_condicion`,`wh_tbl_venta`.`venta_borrado` AS `venta_borrado`,`wh_tbl_venta`.`venta_saldo` AS `venta_saldo`,`wh_tbl_venta`.`venta_porc_asig` AS `venta_porc_asig`,`wh_tbl_venta`.`venta_tipo` AS `venta_tipo`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip`,`wh_tbl_venta`.`venta_origen_ide` AS `venta_origen_ide` from ((((`wh_tbl_venta` left join `wh_tbl_compra` on(`wh_tbl_venta`.`venta_compra_ide` = `wh_tbl_compra`.`compra_ide`)) join `tbl_vendedor`) join `tbl_cliente`) join `wh_tbl_tipoventa`) where `wh_tbl_venta`.`venta_vende_ide` = `tbl_vendedor`.`vende_ide` and `wh_tbl_venta`.`venta_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_venta`.`venta_tipo` = `wh_tbl_tipoventa`.`tipvta_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_venta2`
--

/*!50001 DROP TABLE IF EXISTS `vw_venta2`*/;
/*!50001 DROP VIEW IF EXISTS `vw_venta2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_venta2` AS select `wh_tbl_venta`.`venta_ide` AS `venta_ide`,`wh_tbl_venta`.`venta_num` AS `venta_num`,`wh_tbl_venta`.`venta_fecha` AS `venta_fecha`,`wh_tbl_venta`.`venta_vende_ide` AS `venta_vende_ide`,`wh_tbl_venta`.`venta_tienda` AS `venta_tienda`,`wh_tbl_venta`.`venta_fecha_registro` AS `venta_fecha_registro`,`wh_tbl_venta`.`venta_compra_ide` AS `venta_compra_ide`,`wh_tbl_venta`.`venta_clien_ide` AS `venta_clien_ide`,`wh_tbl_venta`.`venta_porc_desc` AS `venta_porc_desc`,`wh_tbl_venta`.`venta_monto` AS `venta_monto`,`wh_tbl_venta`.`venta_monto_credito` AS `venta_monto_credito`,`wh_tbl_venta`.`venta_flete` AS `venta_flete`,`wh_tbl_venta`.`venta_condicion` AS `venta_condicion`,`wh_tbl_venta`.`venta_borrado` AS `venta_borrado`,`wh_tbl_venta`.`venta_saldo` AS `venta_saldo`,`wh_tbl_venta`.`venta_porc_asig` AS `venta_porc_asig`,`wh_tbl_venta`.`venta_tipo` AS `venta_tipo`,`wh_tbl_venta`.`venta_origen_ide` AS `venta_origen_ide`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`tbl_vendedor`.`vende_razonsocial` AS `vendedor`,`tbl_cliente`.`clien_nombre1` AS `cliente_venta`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip`,`tbl_origen_venta`.`origenvta_descrip` AS `origenvta_descrip` from (((((`wh_tbl_venta` left join `wh_tbl_compra` on(`wh_tbl_venta`.`venta_compra_ide` = `wh_tbl_compra`.`compra_ide`)) join `tbl_vendedor`) join `tbl_cliente`) join `wh_tbl_tipoventa`) join `tbl_origen_venta`) where `wh_tbl_venta`.`venta_vende_ide` = `tbl_vendedor`.`vende_ide` and `wh_tbl_venta`.`venta_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_venta`.`venta_tipo` = `wh_tbl_tipoventa`.`tipvta_ide` and `wh_tbl_venta`.`venta_origen_ide` = `tbl_origen_venta`.`origenvta_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_wh_tbl_compra`
--

/*!50001 DROP TABLE IF EXISTS `vw_wh_tbl_compra`*/;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_compra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_wh_tbl_compra` AS select `wh_tbl_compra`.`compra_ide` AS `compra_ide`,`wh_tbl_compra`.`compra_num` AS `compra_num`,`wh_tbl_compra`.`compra_clien_ide` AS `compra_clien_ide`,`wh_tbl_compra`.`compra_fecha` AS `compra_fecha`,`wh_tbl_compra`.`compra_fecha_envio` AS `compra_fecha_envio`,`wh_tbl_compra`.`compra_fecha_recep` AS `compra_fecha_recep`,`wh_tbl_compra`.`compra_porc_desc` AS `compra_porc_desc`,`wh_tbl_compra`.`compra_monto` AS `compra_monto`,`wh_tbl_compra`.`compra_destino` AS `compra_destino`,`wh_tbl_compra`.`compra_condicion` AS `compra_condicion`,`wh_tbl_compra`.`compra_tienda` AS `compra_tienda`,`wh_tbl_compra`.`compra_borrado` AS `compra_borrado`,`wh_tbl_compra`.`compra_fecha_registro` AS `compra_fecha_registro`,`wh_tbl_compra`.`compra_monto_credito` AS `compra_monto_credito`,`wh_tbl_compra`.`compra_tasa` AS `compra_tasa`,`wh_tbl_compra`.`compra_flete` AS `compra_flete`,`tbl_cliente`.`clien_ide` AS `clien_ide`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `nombre1`,`wh_tbl_compra`.`compra_prov_ide` AS `compra_prov_ide`,`tbl_proveedor`.`prove_razonsocial` AS `prove_razonsocial`,`wh_tbl_compra`.`compra_bultos` AS `compra_bultos`,`wh_tbl_compra`.`compra_sustitucion` AS `compra_sustitucion`,`wh_tbl_compra`.`compra_estatus` AS `compra_estatus`,`wh_tbl_compra`.`compra_tipo` AS `compra_tipo`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip`,`wh_tbl_tipoventa`.`tipvta_color` AS `tipvta_color`,`wh_tbl_tipoventa`.`tipvta_com_compra` AS `tipvta_com_compra`,`wh_tbl_tipoventa`.`tipvta_com_venta` AS `tipvta_com_venta`,round(`wh_tbl_compra`.`compra_monto` * `wh_tbl_tipoventa`.`tipvta_com_compra` / 100,2) AS `comision`,`wh_tbl_compra`.`compra_comision_ex` AS `compra_comision_ex`,`vw_abono_cruce`.`abono` AS `abono` from ((((`wh_tbl_compra` left join `vw_abono_cruce` on(`wh_tbl_compra`.`compra_ide` = `vw_abono_cruce`.`crudeta_nota_ide`)) join `tbl_cliente`) join `wh_tbl_tipoventa`) join `tbl_proveedor`) where `wh_tbl_compra`.`compra_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_compra`.`compra_tipo` = `wh_tbl_tipoventa`.`tipvta_ide` and `wh_tbl_compra`.`compra_prov_ide` = `tbl_proveedor`.`prove_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_wh_tbl_tasa`
--

/*!50001 DROP TABLE IF EXISTS `vw_wh_tbl_tasa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_tasa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_wh_tbl_tasa` AS select `wh_tbl_tasa`.`tasa_ide` AS `tasa_ide`,`wh_tbl_tasa`.`tasa_descrip` AS `descrip`,`wh_tbl_tasa`.`tasa_monto` AS `tasa_monto`,`wh_tbl_tasa`.`tasa_borrado` AS `tasa_borrado` from `wh_tbl_tasa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_wh_tbl_venta`
--

/*!50001 DROP TABLE IF EXISTS `vw_wh_tbl_venta`*/;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tbl_venta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_wh_tbl_venta` AS select `wh_tbl_venta`.`venta_ide` AS `venta_ide`,`wh_tbl_venta`.`venta_origen_ide` AS `venta_origen_ide`,`wh_tbl_venta`.`venta_compra_ide` AS `venta_compra_ide`,`wh_tbl_venta`.`venta_num` AS `venta_num`,`wh_tbl_venta`.`venta_fecha` AS `venta_fecha`,`wh_tbl_venta`.`venta_porc_desc` AS `venta_porc_desc`,`wh_tbl_venta`.`venta_monto` AS `venta_monto`,`wh_tbl_venta`.`venta_monto_credito` AS `venta_monto_credito`,`wh_tbl_venta`.`venta_flete` AS `venta_flete`,`wh_tbl_venta`.`venta_saldo` AS `venta_saldo`,`wh_tbl_venta`.`venta_condicion` AS `venta_condicion`,`wh_tbl_venta`.`venta_clien_ide` AS `venta_clien_ide`,`wh_tbl_venta`.`venta_vende_ide` AS `venta_vende_ide`,`wh_tbl_venta`.`venta_tienda` AS `venta_tienda`,`wh_tbl_venta`.`venta_fecha_registro` AS `venta_fecha_registro`,`wh_tbl_venta`.`venta_borrado` AS `venta_borrado`,`tbl_cliente`.`clien_numiden` AS `clien_numiden`,`tbl_cliente`.`clien_nombre1` AS `clien_nombre1`,`tbl_vendedor`.`vende_razonsocial` AS `vendedor`,`wh_tbl_venta`.`venta_porc_asig` AS `venta_porc_asig`,`wh_tbl_venta`.`venta_tipo` AS `venta_tipo`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip`,`wh_tbl_tipoventa`.`tipvta_com_compra` AS `tipvta_com_compra`,`wh_tbl_tipoventa`.`tipvta_com_venta` AS `tipvta_com_venta` from (((`wh_tbl_venta` join `tbl_cliente`) join `tbl_vendedor`) join `wh_tbl_tipoventa`) where `wh_tbl_venta`.`venta_clien_ide` = `tbl_cliente`.`clien_ide` and `wh_tbl_venta`.`venta_vende_ide` = `tbl_vendedor`.`vende_ide` and `wh_tbl_venta`.`venta_tipo` = `wh_tbl_tipoventa`.`tipvta_ide` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_wh_tipoventa`
--

/*!50001 DROP TABLE IF EXISTS `vw_wh_tipoventa`*/;
/*!50001 DROP VIEW IF EXISTS `vw_wh_tipoventa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_wh_tipoventa` AS select `wh_tbl_tipoventa`.`tipvta_ide` AS `tipvta_ide`,`wh_tbl_tipoventa`.`tipvta_descrip` AS `tipvta_descrip`,`wh_tbl_tipoventa`.`tipvta_porc_desc` AS `tipvta_porc_desc`,`wh_tbl_tipoventa`.`tipvta_prov_ide` AS `tipvta_prov_ide`,`wh_tbl_tipoventa`.`tipvta_borrado` AS `tipvta_borrado`,`wh_tbl_tipoventa`.`tipvta_com_compra` AS `tipvta_com_compra`,`wh_tbl_tipoventa`.`tipvta_com_venta` AS `tipvta_com_venta` from `wh_tbl_tipoventa` */;
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

-- Dump completed on 2024-12-05 11:00:06

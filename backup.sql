-- MySQL dump 10.13  Distrib 8.0.39, for macos14.4 (arm64)
--
-- Host: localhost    Database: dbPrueba
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add sede',7,'add_sede'),(26,'Can change sede',7,'change_sede'),(27,'Can delete sede',7,'delete_sede'),(28,'Can view sede',7,'view_sede'),(29,'Can add temporada',8,'add_temporada'),(30,'Can change temporada',8,'change_temporada'),(31,'Can delete temporada',8,'delete_temporada'),(32,'Can view temporada',8,'view_temporada'),(33,'Can add habitacion',9,'add_habitacion'),(34,'Can change habitacion',9,'change_habitacion'),(35,'Can delete habitacion',9,'delete_habitacion'),(36,'Can view habitacion',9,'view_habitacion'),(37,'Can add reserva',10,'add_reserva'),(38,'Can change reserva',10,'change_reserva'),(39,'Can delete reserva',10,'delete_reserva'),(40,'Can view reserva',10,'view_reserva');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'reservas','habitacion'),(10,'reservas','reserva'),(7,'reservas','sede'),(8,'reservas','temporada'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-16 22:21:00.503258'),(2,'auth','0001_initial','2024-08-16 22:21:00.619572'),(3,'admin','0001_initial','2024-08-16 22:21:00.648683'),(4,'admin','0002_logentry_remove_auto_add','2024-08-16 22:21:00.652896'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-16 22:21:00.655662'),(6,'contenttypes','0002_remove_content_type_name','2024-08-16 22:21:00.677571'),(7,'auth','0002_alter_permission_name_max_length','2024-08-16 22:21:00.698986'),(8,'auth','0003_alter_user_email_max_length','2024-08-16 22:21:00.707340'),(9,'auth','0004_alter_user_username_opts','2024-08-16 22:21:00.710367'),(10,'auth','0005_alter_user_last_login_null','2024-08-16 22:21:00.722778'),(11,'auth','0006_require_contenttypes_0002','2024-08-16 22:21:00.723342'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-16 22:21:00.726536'),(13,'auth','0008_alter_user_username_max_length','2024-08-16 22:21:00.741287'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-16 22:21:00.756506'),(15,'auth','0010_alter_group_name_max_length','2024-08-16 22:21:00.763225'),(16,'auth','0011_update_proxy_permissions','2024-08-16 22:21:00.767421'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-16 22:21:00.781752'),(18,'reservas','0001_initial','2024-08-16 22:21:00.803081'),(19,'sessions','0001_initial','2024-08-16 22:21:00.809009'),(20,'reservas','0002_reserva','2024-08-16 23:30:47.464782');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_habitacion`
--

DROP TABLE IF EXISTS `reservas_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_habitacion` (
  `IdHabitacion` int NOT NULL AUTO_INCREMENT,
  `TipoHabitacion` varchar(10) NOT NULL,
  `CupoMax` int NOT NULL,
  `Ocupado` varchar(3) NOT NULL,
  `TarifaTAlta` varchar(10) NOT NULL,
  `TarifaTBaja` varchar(10) NOT NULL,
  `Sede_id` int NOT NULL,
  PRIMARY KEY (`IdHabitacion`),
  KEY `reservas_habitacion_Sede_id_33d1fee4_fk_reservas_sede_IdSede` (`Sede_id`),
  CONSTRAINT `reservas_habitacion_Sede_id_33d1fee4_fk_reservas_sede_IdSede` FOREIGN KEY (`Sede_id`) REFERENCES `reservas_sede` (`IdSede`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_habitacion`
--

LOCK TABLES `reservas_habitacion` WRITE;
/*!40000 ALTER TABLE `reservas_habitacion` DISABLE KEYS */;
INSERT INTO `reservas_habitacion` VALUES (1,'premium',6,'no','220000','170000',1),(2,'premium',6,'no','220000','170000',1),(3,'premium',6,'no','220000','170000',1),(4,'premium',6,'no','220000','170000',1),(5,'premium',6,'no','220000','170000',1),(6,'premium',6,'no','220000','170000',1),(7,'premium',6,'no','220000','170000',1),(8,'premium',6,'no','220000','170000',1),(9,'premium',6,'no','220000','170000',1),(10,'premium',6,'no','220000','170000',1),(11,'premium',6,'no','220000','170000',1),(12,'premium',6,'no','220000','170000',1),(13,'premium',6,'no','220000','170000',1),(14,'premium',6,'no','220000','170000',1),(15,'premium',6,'no','220000','170000',1),(16,'premium',6,'no','220000','170000',1),(17,'premium',6,'no','220000','170000',1),(18,'premium',6,'no','220000','170000',1),(19,'premium',6,'no','220000','170000',1),(20,'premium',6,'no','220000','170000',1),(21,'vip',6,'no','300000','250000',1),(22,'vip',6,'no','300000','250000',1),(23,'estandar',8,'no','150000','120000',2),(24,'estandar',8,'no','150000','120000',2),(25,'estandar',8,'no','150000','120000',2),(26,'estandar',8,'no','150000','120000',2),(27,'estandar',8,'no','150000','120000',2),(28,'estandar',8,'no','150000','120000',2),(29,'estandar',8,'no','150000','120000',2),(30,'estandar',8,'no','150000','120000',2),(31,'estandar',8,'no','150000','120000',2),(32,'estandar',8,'no','150000','120000',2),(33,'premium',8,'no','250000','200000',2),(34,'estandar',6,'no','120000','90000',3),(35,'estandar',6,'no','120000','90000',3),(36,'estandar',6,'no','120000','90000',3),(37,'estandar',6,'no','120000','90000',3),(38,'estandar',6,'no','120000','90000',3),(39,'estandar',6,'no','120000','90000',3),(40,'estandar',6,'no','120000','90000',3),(41,'estandar',6,'no','120000','90000',3),(42,'estandar',6,'no','120000','90000',3),(43,'estandar',6,'no','120000','90000',3),(44,'estandar',6,'no','120000','90000',3),(45,'estandar',6,'no','120000','90000',3),(46,'estandar',6,'no','120000','90000',3),(47,'estandar',6,'no','120000','90000',3),(48,'estandar',6,'no','120000','90000',3),(49,'estandar',6,'no','120000','90000',3),(50,'estandar',6,'no','120000','90000',3),(51,'estandar',6,'no','120000','90000',3),(52,'estandar',6,'no','120000','90000',3),(53,'estandar',6,'no','120000','90000',3),(54,'premium',6,'no','200000','150000',3),(55,'premium',6,'no','200000','150000',3),(56,'premium',6,'no','200000','150000',3),(57,'premium',6,'no','200000','150000',3),(58,'premium',6,'no','200000','150000',3),(59,'premium',6,'no','200000','150000',3),(60,'premium',6,'no','200000','150000',3),(61,'premium',6,'no','200000','150000',3),(62,'premium',6,'no','200000','150000',3),(63,'premium',6,'no','200000','150000',3),(64,'premium',6,'no','200000','150000',3),(65,'premium',6,'no','200000','150000',3),(66,'premium',6,'no','200000','150000',3),(67,'premium',6,'no','200000','150000',3),(68,'premium',6,'no','200000','150000',3),(69,'premium',6,'no','200000','150000',3),(70,'premium',6,'no','200000','150000',3),(71,'premium',6,'no','200000','150000',3),(72,'premium',6,'no','200000','150000',3),(73,'premium',6,'no','200000','150000',3),(74,'vip',6,'no','300000','260000',3),(75,'vip',6,'no','300000','260000',3),(76,'estandar',4,'no','150000','110000',4),(77,'estandar',4,'no','150000','110000',4),(78,'estandar',4,'no','150000','110000',4),(79,'estandar',4,'no','150000','110000',4),(80,'estandar',4,'no','150000','110000',4),(81,'estandar',4,'no','150000','110000',4),(82,'estandar',4,'no','150000','110000',4),(83,'estandar',4,'no','150000','110000',4),(84,'estandar',4,'no','150000','110000',4),(85,'estandar',4,'no','150000','110000',4),(86,'estandar',4,'no','150000','110000',4),(87,'estandar',4,'no','150000','110000',4),(88,'estandar',4,'no','150000','110000',4),(89,'estandar',4,'no','150000','110000',4),(90,'estandar',4,'no','150000','110000',4),(91,'estandar',4,'no','150000','110000',4),(92,'estandar',4,'no','150000','110000',4),(93,'estandar',4,'no','150000','110000',4),(94,'estandar',4,'no','150000','110000',4),(95,'estandar',4,'no','150000','110000',4),(96,'estandar',4,'no','150000','110000',4),(97,'estandar',4,'no','150000','110000',4),(98,'estandar',4,'no','150000','110000',4),(99,'estandar',4,'no','150000','110000',4),(100,'estandar',4,'no','150000','110000',4),(101,'estandar',4,'no','150000','110000',4),(102,'estandar',4,'no','150000','110000',4),(103,'estandar',4,'no','150000','110000',4),(104,'estandar',4,'no','150000','110000',4),(105,'estandar',4,'no','150000','110000',4),(106,'premium',4,'no','190000','150000',4),(107,'premium',4,'no','190000','150000',4),(108,'premium',4,'no','190000','150000',4);
/*!40000 ALTER TABLE `reservas_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_reserva`
--

DROP TABLE IF EXISTS `reservas_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_reserva` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `NumPersonas` int NOT NULL,
  `TarifaTotal` int NOT NULL,
  `Habitacion_id` int NOT NULL,
  `Sede_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservas_reserva_Habitacion_id_aa9f5470_fk_reservas_` (`Habitacion_id`),
  KEY `reservas_reserva_Sede_id_0ff37161_fk_reservas_sede_IdSede` (`Sede_id`),
  CONSTRAINT `reservas_reserva_Habitacion_id_aa9f5470_fk_reservas_` FOREIGN KEY (`Habitacion_id`) REFERENCES `reservas_habitacion` (`IdHabitacion`),
  CONSTRAINT `reservas_reserva_Sede_id_0ff37161_fk_reservas_sede_IdSede` FOREIGN KEY (`Sede_id`) REFERENCES `reservas_sede` (`IdSede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_reserva`
--

LOCK TABLES `reservas_reserva` WRITE;
/*!40000 ALTER TABLE `reservas_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_sede`
--

DROP TABLE IF EXISTS `reservas_sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_sede` (
  `IdSede` int NOT NULL AUTO_INCREMENT,
  `NomSede` varchar(20) NOT NULL,
  `CupoMaximo` int NOT NULL,
  PRIMARY KEY (`IdSede`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_sede`
--

LOCK TABLES `reservas_sede` WRITE;
/*!40000 ALTER TABLE `reservas_sede` DISABLE KEYS */;
INSERT INTO `reservas_sede` VALUES (1,'Cali',150),(2,'Cartagena',100),(3,'Bogotá',260),(4,'Barranquilla',130);
/*!40000 ALTER TABLE `reservas_sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_temporada`
--

DROP TABLE IF EXISTS `reservas_temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_temporada` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `TtipoTemporada` varchar(6) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_temporada`
--

LOCK TABLES `reservas_temporada` WRITE;
/*!40000 ALTER TABLE `reservas_temporada` DISABLE KEYS */;
INSERT INTO `reservas_temporada` VALUES (1,'alta','2024-08-24','2024-08-30'),(2,'baja','2024-09-01','2024-09-30'),(3,'alta','2024-12-01','2024-12-31');
/*!40000 ALTER TABLE `reservas_temporada` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 18:45:41

-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: hostel
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.23.04.4

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
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint unsigned NOT NULL,
  `logo_max_width` smallint unsigned NOT NULL,
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`),
  CONSTRAINT `admin_interface_theme_chk_1` CHECK ((`logo_max_height` >= 0)),
  CONSTRAINT `admin_interface_theme_chk_2` CHECK ((`logo_max_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',0,'Django administration',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1),(2,'Hostel',1,'Django administration',1,'',1,'#000000','#F5DD5D','#FFFFFF','#FFFFFF','#C9F0DD','#000000','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','Hostel Administrator',1,'#E74C3C',1,1,1,'name',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0,'#29B864',0,1,0,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'user');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,2,72),(8,2,73),(3,2,76),(4,2,80),(5,2,84),(6,2,88),(7,2,92);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',7,'add_authgroup'),(26,'Can change auth group',7,'change_authgroup'),(27,'Can delete auth group',7,'delete_authgroup'),(28,'Can view auth group',7,'view_authgroup'),(29,'Can add auth group permissions',8,'add_authgrouppermissions'),(30,'Can change auth group permissions',8,'change_authgrouppermissions'),(31,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(32,'Can view auth group permissions',8,'view_authgrouppermissions'),(33,'Can add auth permission',9,'add_authpermission'),(34,'Can change auth permission',9,'change_authpermission'),(35,'Can delete auth permission',9,'delete_authpermission'),(36,'Can view auth permission',9,'view_authpermission'),(37,'Can add auth user',10,'add_authuser'),(38,'Can change auth user',10,'change_authuser'),(39,'Can delete auth user',10,'delete_authuser'),(40,'Can view auth user',10,'view_authuser'),(41,'Can add auth user groups',11,'add_authusergroups'),(42,'Can change auth user groups',11,'change_authusergroups'),(43,'Can delete auth user groups',11,'delete_authusergroups'),(44,'Can view auth user groups',11,'view_authusergroups'),(45,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',12,'view_authuseruserpermissions'),(49,'Can add department',13,'add_department'),(50,'Can change department',13,'change_department'),(51,'Can delete department',13,'delete_department'),(52,'Can view department',13,'view_department'),(53,'Can add django admin log',14,'add_djangoadminlog'),(54,'Can change django admin log',14,'change_djangoadminlog'),(55,'Can delete django admin log',14,'delete_djangoadminlog'),(56,'Can view django admin log',14,'view_djangoadminlog'),(57,'Can add django content type',15,'add_djangocontenttype'),(58,'Can change django content type',15,'change_djangocontenttype'),(59,'Can delete django content type',15,'delete_djangocontenttype'),(60,'Can view django content type',15,'view_djangocontenttype'),(61,'Can add django migrations',16,'add_djangomigrations'),(62,'Can change django migrations',16,'change_djangomigrations'),(63,'Can delete django migrations',16,'delete_djangomigrations'),(64,'Can view django migrations',16,'view_djangomigrations'),(65,'Can add django session',17,'add_djangosession'),(66,'Can change django session',17,'change_djangosession'),(67,'Can delete django session',17,'delete_djangosession'),(68,'Can view django session',17,'view_djangosession'),(69,'Can add employee',18,'add_employee'),(70,'Can change employee',18,'change_employee'),(71,'Can delete employee',18,'delete_employee'),(72,'Can view employee',18,'view_employee'),(73,'Can add fees',19,'add_fees'),(74,'Can change fees',19,'change_fees'),(75,'Can delete fees',19,'delete_fees'),(76,'Can view fees',19,'view_fees'),(77,'Can add grievence',20,'add_grievence'),(78,'Can change grievence',20,'change_grievence'),(79,'Can delete grievence',20,'delete_grievence'),(80,'Can view grievence',20,'view_grievence'),(81,'Can add hostel',21,'add_hostel'),(82,'Can change hostel',21,'change_hostel'),(83,'Can delete hostel',21,'delete_hostel'),(84,'Can view hostel',21,'view_hostel'),(85,'Can add rooms',22,'add_rooms'),(86,'Can change rooms',22,'change_rooms'),(87,'Can delete rooms',22,'delete_rooms'),(88,'Can view rooms',22,'view_rooms'),(89,'Can add student',23,'add_student'),(90,'Can change student',23,'change_student'),(91,'Can delete student',23,'delete_student'),(92,'Can view student',23,'view_student'),(93,'Can add login',24,'add_login'),(94,'Can change login',24,'change_login'),(95,'Can delete login',24,'delete_login'),(96,'Can view login',24,'view_login'),(97,'Can add Theme',25,'add_theme'),(98,'Can change Theme',25,'change_theme'),(99,'Can delete Theme',25,'delete_theme'),(100,'Can view Theme',25,'view_theme');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$lQ73heEGcZ8Y2zgOJeJlVU$JX8pgsdnFEI4DgA7CoEsbm2RDRk+8RUiNomJN97Lt9E=','2023-08-03 17:47:41.116047',1,'admin','','','',1,1,'2023-07-30 12:46:49.068975'),(2,'pbkdf2_sha256$600000$Xu2NI67lCReojnR3X6U03s$eyjU7CF8p6JMJl1FU46VfS9TRKBPeOPq2KxTKTk8XR8=','2023-08-03 17:46:45.761960',0,'user1','','','',0,1,'2023-08-03 17:43:20.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,2);
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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dno` varchar(5) NOT NULL,
  `dname` varchar(15) NOT NULL,
  `dloc` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('1','Finance','apex 101'),('2','Maintenance','esb 102'),('3','Mess','freshers block'),('4','Security','Aryabatta 23'),('5','IT and WIFI','apex 201');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-02 00:33:29.124083','E1','Employee object (E1)',1,'[{\"added\": {}}]',18,1),(2,'2023-08-02 00:33:41.122014','E1','Employee object (E1)',3,'',18,1),(3,'2023-08-02 11:56:19.738601','1','Department object (1)',1,'[{\"added\": {}}]',13,1),(4,'2023-08-02 11:57:40.392359','2','Department object (2)',1,'[{\"added\": {}}]',13,1),(5,'2023-08-02 11:58:30.502347','3','Department object (3)',1,'[{\"added\": {}}]',13,1),(6,'2023-08-02 11:58:46.846705','3','Department object (3)',2,'[{\"changed\": {\"fields\": [\"Dname\"]}}]',13,1),(7,'2023-08-02 11:59:21.926204','4','Department object (4)',1,'[{\"added\": {}}]',13,1),(8,'2023-08-02 12:00:18.921821','5','Department object (5)',1,'[{\"added\": {}}]',13,1),(9,'2023-08-02 12:00:28.987148','5','Department object (5)',2,'[{\"changed\": {\"fields\": [\"Dname\"]}}]',13,1),(10,'2023-08-03 00:20:50.491122','E1','Employee object (E1)',1,'[{\"added\": {}}]',18,1),(11,'2023-08-03 00:21:28.660717','E2','Employee object (E2)',1,'[{\"added\": {}}]',18,1),(12,'2023-08-03 00:22:02.110280','E3','Employee object (E3)',1,'[{\"added\": {}}]',18,1),(13,'2023-08-03 00:22:32.110600','E4','Employee object (E4)',1,'[{\"added\": {}}]',18,1),(14,'2023-08-03 00:23:07.013653','E5','Employee object (E5)',1,'[{\"added\": {}}]',18,1),(15,'2023-08-03 00:23:45.254359','E6','Employee object (E6)',1,'[{\"added\": {}}]',18,1),(16,'2023-08-03 00:24:57.862968','E7','Employee object (E7)',1,'[{\"added\": {}}]',18,1),(17,'2023-08-03 00:25:51.303113','H1','Hostel object (H1)',1,'[{\"added\": {}}]',21,1),(18,'2023-08-03 00:26:34.772154','H2','Hostel object (H2)',1,'[{\"added\": {}}]',21,1),(19,'2023-08-03 00:27:35.851861','H3','Hostel object (H3)',1,'[{\"added\": {}}]',21,1),(20,'2023-08-03 00:30:59.458500','H1R4','Rooms object (H1R4)',1,'[{\"added\": {}}]',22,1),(21,'2023-08-03 00:31:30.937366','H1R2','Rooms object (H1R2)',1,'[{\"added\": {}}]',22,1),(22,'2023-08-03 00:32:04.750962','H2R6','Rooms object (H2R6)',1,'[{\"added\": {}}]',22,1),(23,'2023-08-03 00:32:12.990946','H2R6','Rooms object (H2R6)',2,'[]',22,1),(24,'2023-08-03 00:32:31.007991','H1R4','Rooms object (H1R4)',2,'[{\"changed\": {\"fields\": [\"Tableid\", \"Chairid\"]}}]',22,1),(25,'2023-08-03 00:32:51.556108','H3R1','Rooms object (H3R1)',1,'[{\"added\": {}}]',22,1),(26,'2023-08-03 00:37:39.140398','1MS21IS098','Student object (1MS21IS098)',1,'[{\"added\": {}}]',23,1),(27,'2023-08-03 12:25:51.037807','1MS21IS098','Student object (1MS21IS098)',2,'[]',23,1),(28,'2023-08-03 14:58:59.998625','1MS20ME12','Student object (1MS20ME12)',1,'[{\"added\": {}}]',23,1),(29,'2023-08-03 17:41:05.684612','1','admin',1,'[{\"added\": {}}]',3,1),(30,'2023-08-03 17:41:43.312504','1','admin',3,'',3,1),(31,'2023-08-03 17:43:21.909960','2','user1',1,'[{\"added\": {}}]',4,1),(32,'2023-08-03 17:43:35.322208','2','user2',1,'[{\"added\": {}}]',3,1),(33,'2023-08-03 17:43:44.954940','2','user',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',3,1),(34,'2023-08-03 17:45:43.786177','2','user',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(35,'2023-08-03 17:46:16.837712','2','user1',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(36,'2023-08-03 17:48:20.862051','2','user',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(37,'2023-08-04 01:07:06.897316','2','Hostel',1,'[{\"added\": {}}]',25,1),(38,'2023-08-04 01:14:16.102751','2','Hostel',2,'[]',25,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(25,'admin_interface','theme'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'website','authgroup'),(8,'website','authgrouppermissions'),(9,'website','authpermission'),(10,'website','authuser'),(11,'website','authusergroups'),(12,'website','authuseruserpermissions'),(13,'website','department'),(14,'website','djangoadminlog'),(15,'website','djangocontenttype'),(16,'website','djangomigrations'),(17,'website','djangosession'),(18,'website','employee'),(19,'website','fees'),(20,'website','grievence'),(21,'website','hostel'),(24,'website','login'),(22,'website','rooms'),(23,'website','student');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-30 12:39:12.617543'),(2,'auth','0001_initial','2023-07-30 12:39:38.682079'),(3,'admin','0001_initial','2023-07-30 12:39:45.856054'),(4,'admin','0002_logentry_remove_auto_add','2023-07-30 12:39:46.041667'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-30 12:39:46.372240'),(6,'contenttypes','0002_remove_content_type_name','2023-07-30 12:39:49.584728'),(7,'auth','0002_alter_permission_name_max_length','2023-07-30 12:39:52.033183'),(8,'auth','0003_alter_user_email_max_length','2023-07-30 12:39:53.149609'),(9,'auth','0004_alter_user_username_opts','2023-07-30 12:39:53.359994'),(10,'auth','0005_alter_user_last_login_null','2023-07-30 12:39:56.014501'),(11,'auth','0006_require_contenttypes_0002','2023-07-30 12:39:56.152194'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-30 12:39:56.333745'),(13,'auth','0008_alter_user_username_max_length','2023-07-30 12:39:58.862596'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-30 12:40:01.814033'),(15,'auth','0010_alter_group_name_max_length','2023-07-30 12:40:02.274750'),(16,'auth','0011_update_proxy_permissions','2023-07-30 12:40:02.675670'),(17,'auth','0012_alter_user_first_name_max_length','2023-07-30 12:40:05.682077'),(18,'sessions','0001_initial','2023-07-30 12:40:08.164715'),(19,'website','0001_initial','2023-08-02 00:32:21.733261'),(20,'website','0002_alter_grievence_options','2023-08-03 15:55:16.578106'),(21,'admin_interface','0001_initial','2023-08-04 01:02:50.489121'),(22,'admin_interface','0002_add_related_modal','2023-08-04 01:03:00.862268'),(23,'admin_interface','0003_add_logo_color','2023-08-04 01:03:02.992693'),(24,'admin_interface','0004_rename_title_color','2023-08-04 01:03:05.010753'),(25,'admin_interface','0005_add_recent_actions_visible','2023-08-04 01:03:06.718169'),(26,'admin_interface','0006_bytes_to_str','2023-08-04 01:03:07.251339'),(27,'admin_interface','0007_add_favicon','2023-08-04 01:03:09.614388'),(28,'admin_interface','0008_change_related_modal_background_opacity_type','2023-08-04 01:03:12.887305'),(29,'admin_interface','0009_add_enviroment','2023-08-04 01:03:16.739061'),(30,'admin_interface','0010_add_localization','2023-08-04 01:03:17.009397'),(31,'admin_interface','0011_add_environment_options','2023-08-04 01:03:24.820370'),(32,'admin_interface','0012_update_verbose_names','2023-08-04 01:03:25.292582'),(33,'admin_interface','0013_add_related_modal_close_button','2023-08-04 01:03:27.536403'),(34,'admin_interface','0014_name_unique','2023-08-04 01:03:29.164128'),(35,'admin_interface','0015_add_language_chooser_active','2023-08-04 01:03:31.734948'),(36,'admin_interface','0016_add_language_chooser_display','2023-08-04 01:03:33.570824'),(37,'admin_interface','0017_change_list_filter_dropdown','2023-08-04 01:03:33.868445'),(38,'admin_interface','0018_theme_list_filter_sticky','2023-08-04 01:03:36.146431'),(39,'admin_interface','0019_add_form_sticky','2023-08-04 01:03:39.940039'),(40,'admin_interface','0020_module_selected_colors','2023-08-04 01:03:43.648421'),(41,'admin_interface','0021_file_extension_validator','2023-08-04 01:03:43.981464'),(42,'admin_interface','0022_add_logo_max_width_and_height','2023-08-04 01:03:54.388052'),(43,'admin_interface','0023_theme_foldable_apps','2023-08-04 01:03:56.155034'),(44,'admin_interface','0024_remove_theme_css','2023-08-04 01:03:57.581648'),(45,'admin_interface','0025_theme_language_chooser_control','2023-08-04 01:03:59.693979'),(46,'admin_interface','0026_theme_list_filter_highlight','2023-08-04 01:04:01.389766'),(47,'admin_interface','0027_theme_list_filter_removal_links','2023-08-04 01:04:04.045069'),(48,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2023-08-04 01:04:07.322440'),(49,'admin_interface','0029_theme_css_generic_link_active_color','2023-08-04 01:04:09.193873'),(50,'admin_interface','0030_theme_collapsible_stacked_inlines_and_more','2023-08-04 01:04:16.791575');
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
INSERT INTO `django_session` VALUES ('953j90pak3v2r0kyyihw8t36p3ujgrni','.eJxVjMsOwiAQRf-FtSF0KI9x6d5vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhZnMYjT7xYpPXLdAd-p3ppMra7LHOWuyIN2eW2cn5fD_Tso1Mu39goiJ0JUaLTKEZQB1oAGJ2s5JkN5HKwxNDrnLE8JAC0ykGfPZLV4fwDP0jeB:1qQzcB:9QzEyhzPQuzIq6liE2V4zO3Wf4tPFl87U_Dp82SrO-s','2023-08-16 00:21:23.936949'),('9lpu9fc54vxwm86x16vbkqcz48hahg8b','.eJxVjMsOwiAQRf-FtSF0KI9x6d5vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhZnMYjT7xYpPXLdAd-p3ppMra7LHOWuyIN2eW2cn5fD_Tso1Mu39goiJ0JUaLTKEZQB1oAGJ2s5JkN5HKwxNDrnLE8JAC0ykGfPZLV4fwDP0jeB:1qRcQH:R8tdvxGlSBHnz8VZQUTPKcnz7KdohdOb-zi2GM20D48','2023-08-17 17:47:41.410896'),('n97210dcuys73b4158visrimn5t83do8','.eJxVjMsOwiAQRf-FtSF0KI9x6d5vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhZnMYjT7xYpPXLdAd-p3ppMra7LHOWuyIN2eW2cn5fD_Tso1Mu39goiJ0JUaLTKEZQB1oAGJ2s5JkN5HKwxNDrnLE8JAC0ykGfPZLV4fwDP0jeB:1qQzcD:Kgm8wMIRGSLxDlNNsxaly1gpQ41mWZQ5N4aqNgx5u6s','2023-08-16 00:21:25.026296'),('nmgbjw1mnae526qtdb4gjuaqm1pqmmqf','.eJxVjMsOwiAQRf-FtSF0KI9x6d5vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhZnMYjT7xYpPXLdAd-p3ppMra7LHOWuyIN2eW2cn5fD_Tso1Mu39goiJ0JUaLTKEZQB1oAGJ2s5JkN5HKwxNDrnLE8JAC0ykGfPZLV4fwDP0jeB:1qRARF:AmlnDcncy6SdPG8yFRZ9cNFJIizO3XMrNj1_IDRrplI','2023-08-16 11:54:49.898881'),('qbpwauukgr9iaob6t3ldoaqzbwr6vsy1','.eJxVjMsOwiAQRf-FtSF0KI9x6d5vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhZnMYjT7xYpPXLdAd-p3ppMra7LHOWuyIN2eW2cn5fD_Tso1Mu39goiJ0JUaLTKEZQB1oAGJ2s5JkN5HKwxNDrnLE8JAC0ykGfPZLV4fwDP0jeB:1qQznB:c2tKpw3oJXEYyISGi_d3w35q17DpfvL3mykw-2Vxvmg','2023-08-16 00:32:45.824967');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `essn` varchar(5) NOT NULL,
  `ename` varchar(25) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dno` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`essn`),
  KEY `dno` (`dno`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `employee_chk_1` CHECK ((`age` > 18))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E1','SAM SHARK','M',28,'2'),('E2','Varun R','M',23,'5'),('E3','Rani','F',32,'3'),('E4','Suresh','M',42,'1'),('E5','Hanuma','M',23,'2'),('E6','Sahlini','F',45,'4'),('E7','Shiva','M',53,'4');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fees` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `status` varchar(10) DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `mode` varchar(10) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `usn` (`usn`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fees`
--

LOCK TABLES `fees` WRITE;
/*!40000 ALTER TABLE `fees` DISABLE KEYS */;
INSERT INTO `fees` VALUES (1,'processing','2023-08-03','online','1MS21IS098'),(2,'paid','2023-08-03','cash','1MS20ME12');
/*!40000 ALTER TABLE `fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grievence`
--

DROP TABLE IF EXISTS `grievence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grievence` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `gdate` date DEFAULT NULL,
  `desp` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `location` varchar(15) DEFAULT NULL,
  `usn` varchar(10) DEFAULT NULL,
  `dno` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grievence`
--

LOCK TABLES `grievence` WRITE;
/*!40000 ALTER TABLE `grievence` DISABLE KEYS */;
INSERT INTO `grievence` VALUES (1,'2023-08-03','test grievence','Pending','apex 1','1MS21IS098',NULL);
/*!40000 ALTER TABLE `grievence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `hid` varchar(5) NOT NULL,
  `hname` varchar(15) DEFAULT NULL,
  `hloc` varchar(15) DEFAULT NULL,
  `nrooms` int DEFAULT NULL,
  `warden_ssn` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  KEY `warden_ssn` (`warden_ssn`),
  CONSTRAINT `hostel_ibfk_1` FOREIGN KEY (`warden_ssn`) REFERENCES `employee` (`essn`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES ('H1','Aryabhatta','Gate 2',124,'E4'),('H2','Freshers Block','Opp School',213,'E7'),('H3','NRI Block','Gate 6',234,'E1');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `roomid` varchar(5) NOT NULL,
  `tableid` varchar(5) DEFAULT NULL,
  `chairid` varchar(5) DEFAULT NULL,
  `hid` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`roomid`),
  UNIQUE KEY `tableid` (`tableid`),
  UNIQUE KEY `chairid` (`chairid`),
  KEY `hid` (`hid`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hostel` (`hid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('H1R2','T2','C3','H1'),('H1R4','H1T1','H1C1','H1'),('H2R6','H2T8','H2C3','H2'),('H3R1','H3T2','H3C6','H3');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `sname` varchar(25) NOT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `roomid` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`usn`),
  KEY `roomid` (`roomid`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `rooms` (`roomid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_chk_1` CHECK ((`age` > 15))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1MS20ME12','HARI',20,'M','H1R2'),('1MS21IS098','Shiva',19,'M','H1R4');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04  6:59:39

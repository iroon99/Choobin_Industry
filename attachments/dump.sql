-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: choobin01
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add slider image',7,'add_sliderimage'),(26,'Can change slider image',7,'change_sliderimage'),(27,'Can delete slider image',7,'delete_sliderimage'),(28,'Can view slider image',7,'view_sliderimage'),(29,'Can add اطلاعات شرکت',8,'add_companyinfo'),(30,'Can change اطلاعات شرکت',8,'change_companyinfo'),(31,'Can delete اطلاعات شرکت',8,'delete_companyinfo'),(32,'Can view اطلاعات شرکت',8,'view_companyinfo'),(33,'Can add پیام کاربر',9,'add_usermessage'),(34,'Can change پیام کاربر',9,'change_usermessage'),(35,'Can delete پیام کاربر',9,'delete_usermessage'),(36,'Can view پیام کاربر',9,'view_usermessage'),(37,'Can add تبلیغ',10,'add_advertisement'),(38,'Can change تبلیغ',10,'change_advertisement'),(39,'Can delete تبلیغ',10,'delete_advertisement'),(40,'Can view تبلیغ',10,'view_advertisement'),(41,'Can add article like',14,'add_articlelike'),(42,'Can change article like',14,'change_articlelike'),(43,'Can delete article like',14,'delete_articlelike'),(44,'Can view article like',14,'view_articlelike'),(45,'Can add نویسنده',15,'add_author'),(46,'Can change نویسنده',15,'change_author'),(47,'Can delete نویسنده',15,'delete_author'),(48,'Can view نویسنده',15,'view_author'),(49,'Can add گالری مقاله',12,'add_articlegallery'),(50,'Can change گالری مقاله',12,'change_articlegallery'),(51,'Can delete گالری مقاله',12,'delete_articlegallery'),(52,'Can view گالری مقاله',12,'view_articlegallery'),(53,'Can add کلیدواژه',16,'add_keyword'),(54,'Can change کلیدواژه',16,'change_keyword'),(55,'Can delete کلیدواژه',16,'delete_keyword'),(56,'Can view کلیدواژه',16,'view_keyword'),(57,'Can add گروه مقاله',13,'add_articlegroup'),(58,'Can change گروه مقاله',13,'change_articlegroup'),(59,'Can delete گروه مقاله',13,'delete_articlegroup'),(60,'Can view گروه مقاله',13,'view_articlegroup'),(61,'Can add مقاله',11,'add_article'),(62,'Can change مقاله',11,'change_article'),(63,'Can delete مقاله',11,'delete_article'),(64,'Can view مقاله',11,'view_article'),(65,'Can add نوع پروژه',19,'add_projecttype'),(66,'Can change نوع پروژه',19,'change_projecttype'),(67,'Can delete نوع پروژه',19,'delete_projecttype'),(68,'Can view نوع پروژه',19,'view_projecttype'),(69,'Can add پروژه',18,'add_project'),(70,'Can change پروژه',18,'change_project'),(71,'Can delete پروژه',18,'delete_project'),(72,'Can view پروژه',18,'view_project'),(73,'Can add مدیر پروژه',17,'add_manager'),(74,'Can change مدیر پروژه',17,'change_manager'),(75,'Can delete مدیر پروژه',17,'delete_manager'),(76,'Can view مدیر پروژه',17,'view_manager'),(77,'Can add قیمت پایه سفارشات',20,'add_baseprice'),(78,'Can change قیمت پایه سفارشات',20,'change_baseprice'),(79,'Can delete قیمت پایه سفارشات',20,'delete_baseprice'),(80,'Can view قیمت پایه سفارشات',20,'view_baseprice'),(81,'Can add جنس مصرفی',21,'add_material'),(82,'Can change جنس مصرفی',21,'change_material'),(83,'Can delete جنس مصرفی',21,'delete_material'),(84,'Can view جنس مصرفی',21,'view_material'),(85,'Can add وضعیت سفارش',23,'add_orderstatus'),(86,'Can change وضعیت سفارش',23,'change_orderstatus'),(87,'Can delete وضعیت سفارش',23,'delete_orderstatus'),(88,'Can view وضعیت سفارش',23,'view_orderstatus'),(89,'Can add سفارش',22,'add_order'),(90,'Can change سفارش',22,'change_order'),(91,'Can delete سفارش',22,'delete_order'),(92,'Can view سفارش',22,'view_order');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$ey086KpW40oqzUpSpskY5o$QSClRk1qO1648AIplS/YF05b6oQ5NPY/uJrT9V1oGFo=','2026-08-17 17:36:44.355838',1,'admin','','','admin@admin.com',1,1,'2026-07-29 09:54:03.699389'),(2,'pbkdf2_sha256$1200000$w7Y34KWv3crN1qC1sA6u93$8XbEuytb2gB9ZYFrJylkOh7HUGduqkowSc49AvAqvfk=','2026-08-17 17:01:03.457872',0,'rezham55','رضا','حامد زاده','',0,1,'2026-08-03 06:11:23.798424'),(3,'pbkdf2_sha256$1500000$grEps1SlfaQQccCQM9TrFR$RNBRXTS8+RHeMuc9NZtKG477brWqgDGjdWTxlhLudSA=','2026-08-17 17:22:29.523788',0,'amiri456','امیر','امیری','',0,1,'2026-08-17 17:21:23.998420'),(4,'pbkdf2_sha256$1200000$VuWp61E2kmmGf3M9lt03Hc$fMJrHAnlxxjzCDY7I5T/n4incxuHOK17gcDEhOdoXco=','2026-08-17 17:38:18.834402',0,'rezrez87','رضا','رضوی','',0,1,'2026-08-17 17:34:35.374681');
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
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_title` varchar(80) NOT NULL,
  `article_main_picture` varchar(100) NOT NULL,
  `article_abstract` longtext NOT NULL,
  `article_text` longtext NOT NULL,
  `registered_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `views` int NOT NULL,
  `main_file` varchar(100) NOT NULL,
  `group_id` bigint NOT NULL,
  `author_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_article_group_id_55f7b7b4_fk_blog_articlegroup_id` (`group_id`),
  KEY `blog_article_author_id_905add38_fk_blog_author_id` (`author_id`),
  KEY `blog_article_slug_c3fca16d` (`slug`),
  CONSTRAINT `blog_article_author_id_905add38_fk_blog_author_id` FOREIGN KEY (`author_id`) REFERENCES `blog_author` (`id`),
  CONSTRAINT `blog_article_group_id_55f7b7b4_fk_blog_articlegroup_id` FOREIGN KEY (`group_id`) REFERENCES `blog_articlegroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (1,'معرفی نرم افزار تری دی مکس','attachments/articles/3dmx.jpg','نرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .','نرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .\r\nنرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .\r\nنرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .\r\nنرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .\r\nنرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .\r\nنرم افزار تری دی مکس از کاربردی ترین نرم افزار های حوزه طراحی داخلی می باشد در صنعت کابیت و کمد سازی کاربرد فراوانی دارد . این نرم افزار با استفاده از طراحی نما های سه بعدی دقیق ، به طراح و مشتری کمک خواهد کرد تا طرح پیشنهادی را بهتر بررسی کرده و اصلاح نمایند .','2026-08-04 08:19:34.650084','2026-08-09 18:53:44.360037','2026-08-04 08:18:35.000000',1,'3dmax-intro',0,'attachments/articles/files/main.pdf',1,1);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article_keywords`
--

DROP TABLE IF EXISTS `blog_article_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_article_keywords` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint NOT NULL,
  `keyword_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_keywords_article_id_keyword_id_9de3a8ff_uniq` (`article_id`,`keyword_id`),
  KEY `blog_article_keywords_keyword_id_43076791_fk_blog_keyword_id` (`keyword_id`),
  CONSTRAINT `blog_article_keywords_article_id_b4779209_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_keywords_keyword_id_43076791_fk_blog_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `blog_keyword` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_keywords`
--

LOCK TABLES `blog_article_keywords` WRITE;
/*!40000 ALTER TABLE `blog_article_keywords` DISABLE KEYS */;
INSERT INTO `blog_article_keywords` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `blog_article_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_articlegallery`
--

DROP TABLE IF EXISTS `blog_articlegallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_articlegallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_picture` varchar(100) NOT NULL,
  `article_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_articlegallery_article_id_8276b8b9_fk_blog_article_id` (`article_id`),
  CONSTRAINT `blog_articlegallery_article_id_8276b8b9_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articlegallery`
--

LOCK TABLES `blog_articlegallery` WRITE;
/*!40000 ALTER TABLE `blog_articlegallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_articlegallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_articlegroup`
--

DROP TABLE IF EXISTS `blog_articlegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_articlegroup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articlegroup`
--

LOCK TABLES `blog_articlegroup` WRITE;
/*!40000 ALTER TABLE `blog_articlegroup` DISABLE KEYS */;
INSERT INTO `blog_articlegroup` VALUES (1,'فنی مهندسی');
/*!40000 ALTER TABLE `blog_articlegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_articlelike`
--

DROP TABLE IF EXISTS `blog_articlelike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_articlelike` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `article_id` bigint DEFAULT NULL,
  `user_liked_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_articlelike_article_id_65698d50_fk_blog_article_id` (`article_id`),
  KEY `blog_articlelike_user_liked_id_11182e33_fk_auth_user_id` (`user_liked_id`),
  CONSTRAINT `blog_articlelike_article_id_65698d50_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_articlelike_user_liked_id_11182e33_fk_auth_user_id` FOREIGN KEY (`user_liked_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_articlelike`
--

LOCK TABLES `blog_articlelike` WRITE;
/*!40000 ALTER TABLE `blog_articlelike` DISABLE KEYS */;
INSERT INTO `blog_articlelike` VALUES (9,1,2),(12,1,1),(13,1,3),(14,1,4);
/*!40000 ALTER TABLE `blog_articlelike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_author`
--

DROP TABLE IF EXISTS `blog_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `family` varchar(20) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `registered_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_author_slug_5274c191` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_author`
--

LOCK TABLES `blog_author` WRITE;
/*!40000 ALTER TABLE `blog_author` DISABLE KEYS */;
INSERT INTO `blog_author` VALUES (1,'علی','احمدی','09387459863','ali.ahmadi56@gmail.com','ali-hmd','2026-08-04 08:13:11.089400','2026-08-04 08:13:11.089497');
/*!40000 ALTER TABLE `blog_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_keyword`
--

DROP TABLE IF EXISTS `blog_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_keyword` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keyword_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_keyword`
--

LOCK TABLES `blog_keyword` WRITE;
/*!40000 ALTER TABLE `blog_keyword` DISABLE KEYS */;
INSERT INTO `blog_keyword` VALUES (1,'3d max'),(2,'نرم افزار');
/*!40000 ALTER TABLE `blog_keyword` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-07-29 09:59:49.561210','1','SliderImage object (1)',1,'[{\"added\": {}}]',7,1),(2,'2026-07-29 10:00:55.828101','2','SliderImage object (2)',1,'[{\"added\": {}}]',7,1),(3,'2026-07-29 10:01:06.084622','2','SliderImage object (2)',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',7,1),(4,'2026-07-29 10:01:14.541069','1','SliderImage object (1)',2,'[{\"changed\": {\"fields\": [\"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a \\u062a\\u0635\\u0648\\u06cc\\u0631\"]}}]',7,1),(5,'2026-07-29 10:01:55.503037','3','SliderImage object (3)',1,'[{\"added\": {}}]',7,1),(6,'2026-07-29 10:30:59.754587','4','SliderImage object (4)',1,'[{\"added\": {}}]',7,1),(7,'2026-07-29 10:31:06.425326','4','SliderImage object (4)',2,'[{\"changed\": {\"fields\": [\"\\u0648\\u0636\\u0639\\u06cc\\u062a\"]}}]',7,1),(8,'2026-07-31 06:39:09.779217','1','چوبین صنعت',1,'[{\"added\": {}}]',8,1),(9,'2026-07-31 06:39:52.453321','1','سشیشس',1,'[{\"added\": {}}]',8,1),(10,'2026-07-31 06:46:24.152957','1','چوبین صنعت',1,'[{\"added\": {}}]',8,1),(11,'2026-07-31 06:59:07.921036','1','چوب درجه‌ یک و اروپایی',1,'[{\"added\": {}}]',10,1),(12,'2026-07-31 07:01:03.390235','2','طراحی منحصر به‌ فرد و به‌ روز',1,'[{\"added\": {}}]',10,1),(13,'2026-07-31 07:02:57.288408','3','تکنولوژی روز و صنعتگران ماهر',1,'[{\"added\": {}}]',10,1),(14,'2026-07-31 07:23:34.097443','1','صنایع چوبین',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0627\\u062e\\u062a\\u0635\\u0627\\u0631\\u06cc \\u0634\\u0631\\u06a9\\u062a\"]}}]',8,1),(15,'2026-08-04 08:13:11.091843','1','علی احمدی',1,'[{\"added\": {}}]',15,1),(16,'2026-08-04 08:13:29.304640','1','فنی مهندسی',1,'[{\"added\": {}}]',13,1),(17,'2026-08-04 08:18:12.662384','1','3d max',1,'[{\"added\": {}}]',16,1),(18,'2026-08-04 08:18:24.525787','2','نرم افزار',1,'[{\"added\": {}}]',16,1),(19,'2026-08-04 08:19:34.657943','1','معرفی نرم افزار تری دی مکس',1,'[{\"added\": {}}]',11,1),(20,'2026-08-09 18:53:02.155457','1','معرفی نرم افزار تری دی مکس',2,'[]',11,1),(21,'2026-08-09 18:53:44.364757','1','معرفی نرم افزار تری دی مکس',2,'[]',11,1),(22,'2026-08-10 09:30:46.605266','1','کابینت',1,'[{\"added\": {}}]',19,1),(23,'2026-08-10 09:35:11.535669','2','کمد دیواری',1,'[{\"added\": {}}]',19,1),(24,'2026-08-10 09:35:24.280561','3','میز و مبلمان',1,'[{\"added\": {}}]',19,1),(25,'2026-08-10 09:35:41.792781','3','مبلمان',2,'[{\"changed\": {\"fields\": [\"\\u0646\\u0648\\u0639 \\u067e\\u0631\\u0648\\u0698\\u0647\"]}}]',19,1),(26,'2026-08-10 09:38:57.800804','1','استاد علی وحیدی',1,'[{\"added\": {}}]',17,1),(27,'2026-08-10 09:50:32.178309','1','کابینت سازی انبوه فاز سوم مسکن مهر تهران',1,'[{\"added\": {}}]',18,1),(28,'2026-08-10 09:52:06.163162','2','استاد حامد محمدی',1,'[{\"added\": {}}]',17,1),(29,'2026-08-10 10:01:30.057494','2','پروژه ساخت مبلمان مجمع های مسکونی گلستان در تهران',1,'[{\"added\": {}}]',18,1),(30,'2026-08-10 10:02:56.973170','3','استاد رضا کریمی',1,'[{\"added\": {}}]',17,1),(31,'2026-08-10 10:09:01.645552','3','پروژه ساخت کمد دیواری مجمع های مسکونی گلستان در تهران',1,'[{\"added\": {}}]',18,1),(32,'2026-08-10 13:14:38.992231','2','کمد دیواری',2,'[]',19,1),(33,'2026-08-10 13:14:44.353946','3','مبلمان',2,'[{\"changed\": {\"fields\": [\"\\u0636\\u0631\\u06cc\\u0628 \\u0642\\u06cc\\u0645\\u062a\"]}}]',19,1),(34,'2026-08-10 13:14:49.180059','1','کابینت',2,'[{\"changed\": {\"fields\": [\"\\u0636\\u0631\\u06cc\\u0628 \\u0642\\u06cc\\u0645\\u062a\"]}}]',19,1),(35,'2026-08-10 13:15:22.204605','1','mdf',1,'[{\"added\": {}}]',21,1),(36,'2026-08-10 13:15:32.912541','2','چوب',1,'[{\"added\": {}}]',21,1),(37,'2026-08-10 13:15:51.762322','3','high-glass',1,'[{\"added\": {}}]',21,1),(38,'2026-08-10 13:17:35.583720','1','4000000',1,'[{\"added\": {}}]',20,1),(39,'2026-08-10 13:18:06.759276','1','ثبت شده',1,'[{\"added\": {}}]',23,1),(40,'2026-08-10 13:18:18.365641','2','در حال انجام',1,'[{\"added\": {}}]',23,1),(41,'2026-08-10 13:18:25.642659','3','انجام شده',1,'[{\"added\": {}}]',23,1),(42,'2026-08-10 14:14:12.058365','1','rezham55-ساخت کابینت خانگی',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062c\\u0631\\u06cc \\u067e\\u0631\\u0648\\u0698\\u0647\", \"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0633\\u0641\\u0627\\u0631\\u0634\"]}}]',22,1),(43,'2026-08-17 17:37:13.737689','2','rezrez87-ساخت کمد دیواری',2,'[{\"changed\": {\"fields\": [\"\\u0645\\u062c\\u0631\\u06cc \\u067e\\u0631\\u0648\\u0698\\u0647\", \"\\u0648\\u0636\\u0639\\u06cc\\u062a \\u0633\\u0641\\u0627\\u0631\\u0634\"]}}]',22,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(11,'blog','article'),(12,'blog','articlegallery'),(13,'blog','articlegroup'),(14,'blog','articlelike'),(15,'blog','author'),(16,'blog','keyword'),(5,'contenttypes','contenttype'),(10,'main','advertisement'),(8,'main','companyinfo'),(7,'main','sliderimage'),(9,'main','usermessage'),(20,'order','baseprice'),(21,'order','material'),(22,'order','order'),(23,'order','orderstatus'),(17,'project','manager'),(18,'project','project'),(19,'project','projecttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-07-28 13:44:47.084844'),(2,'auth','0001_initial','2026-07-28 13:44:48.874729'),(3,'admin','0001_initial','2026-07-28 13:44:49.323244'),(4,'admin','0002_logentry_remove_auto_add','2026-07-28 13:44:49.336076'),(5,'admin','0003_logentry_add_action_flag_choices','2026-07-28 13:44:49.354480'),(6,'contenttypes','0002_remove_content_type_name','2026-07-28 13:44:49.629830'),(7,'auth','0002_alter_permission_name_max_length','2026-07-28 13:44:49.814313'),(8,'auth','0003_alter_user_email_max_length','2026-07-28 13:44:49.859542'),(9,'auth','0004_alter_user_username_opts','2026-07-28 13:44:49.872908'),(10,'auth','0005_alter_user_last_login_null','2026-07-28 13:44:50.021383'),(11,'auth','0006_require_contenttypes_0002','2026-07-28 13:44:50.033251'),(12,'auth','0007_alter_validators_add_error_messages','2026-07-28 13:44:50.050995'),(13,'auth','0008_alter_user_username_max_length','2026-07-28 13:44:50.235894'),(14,'auth','0009_alter_user_last_name_max_length','2026-07-28 13:44:50.421469'),(15,'auth','0010_alter_group_name_max_length','2026-07-28 13:44:50.460694'),(16,'auth','0011_update_proxy_permissions','2026-07-28 13:44:50.475622'),(17,'auth','0012_alter_user_first_name_max_length','2026-07-28 13:44:50.665402'),(18,'sessions','0001_initial','2026-07-28 13:44:50.776974'),(19,'main','0001_initial','2026-07-29 09:54:27.287515'),(20,'main','0002_usermessage','2026-07-31 06:29:52.670619'),(21,'main','0003_advertisement','2026-07-31 06:57:04.531107'),(22,'blog','0001_initial','2026-08-04 08:11:03.880087'),(23,'project','0001_initial','2026-08-10 08:53:13.884657'),(24,'project','0002_alter_manager_manager_degree_and_more','2026-08-10 09:38:11.674669'),(25,'project','0003_projecttype_project_price_factor','2026-08-10 13:09:51.193312'),(26,'order','0001_initial','2026-08-10 13:09:52.782125'),(27,'order','0002_alter_order_order_end_date_alter_order_order_manager_and_more','2026-08-10 14:13:32.809361');
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
INSERT INTO `django_session` VALUES ('2t8x3aed6m5kjbqtffibyjsbcg2a5oi7','.eJxVjEEOwiAQRe_C2hAKRcCl-56BDDOMVA0kpV0Z765NutDtf-_9l4iwrSVuPS9xJnERozj9bgnwkesO6A711iS2ui5zkrsiD9rl1Cg_r4f7d1Cgl2-dvWGNygETnLXyySgkBZZC8F5jspkHG8gYowNZP47Oc3AKeHBgkLV4fwDtzTfg:1ww1Hu:37zNuqoTyv4nyNIkdxD498DtudIZg0zB23wMN7vUgWg','2026-08-31 17:38:18.844305'),('vs08um01vgrcthqiz7t1of8owcqwcm5s','.eJxVjDsOwjAQBe_iGln-xR9Kes5g7dprHEC2FCcV4u4QKQW0b2bei0XY1hq3QUucMzszyU6_G0J6UNtBvkO7dZ56W5cZ-a7wgw5-7Zmel8P9O6gw6rf2apICdS5WUXFWow_eaNSQgjQuCNBWGHTFTJRRiICkQSnpkZyDpIC9P8qGN5Y:1wpgl8:q8rQsTxej5bkLKiwPRls7Sy7HejIkZWaqeBZxNhdE6A','2026-08-14 06:30:18.815702');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_advertisement`
--

DROP TABLE IF EXISTS `main_advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_advertisement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `advertisement_title` varchar(50) NOT NULL,
  `advertisement_description` longtext NOT NULL,
  `advertisement_picture` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_advertisement`
--

LOCK TABLES `main_advertisement` WRITE;
/*!40000 ALTER TABLE `main_advertisement` DISABLE KEYS */;
INSERT INTO `main_advertisement` VALUES (1,'چوب درجه‌ یک و اروپایی','تمام محصولات ما از مرغوب‌ترین چوب‌های طبیعی (راش، گردو، بلوط و ملیامین‌های باکیفیت) ساخته می‌شوند که نه تنها زیبایی، بلکه مقاومتی خیره‌کننده در برابر رطوبت، گرما و ضربه دارند .','images/main/advertisement/best-wood.png',1),(2,'طراحی منحصر به‌ فرد و به‌ روز','تیم طراحی ما با الهام از مدرن‌ترین ترندهای اروپایی و معماری اصیل ایرانی، برای هر سلیقه‌ای چیزی دارد؛ از مینیمال و نئوکلاسیک تا کلاسیک و رویایی. امکان سفارشی‌سازی کامل بر اساس متراژ، رنگ و سبک مورد علاقه‌تان.','images/main/advertisement/wood-update.jpg',1),(3,'تکنولوژی روز و صنعتگران ماهر','ترکیب دستگاه‌های CNC آلمانی و مهارت دست‌های هنرمند ایرانی، محصولاتی بی‌نظیر از نظر دقت برش، روکش‌زنی و مونتاژ خلق می‌کند. هر درز، هر لولا و هر ریل، با وسواس تمام کنترل می‌شود .','images/main/advertisement/wood-tech.jpg',1);
/*!40000 ALTER TABLE `main_advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_companyinfo`
--

DROP TABLE IF EXISTS `main_companyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_companyinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) NOT NULL,
  `company_full_name` varchar(50) NOT NULL,
  `company_slogan` varchar(100) NOT NULL,
  `company_description` longtext NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_companyinfo`
--

LOCK TABLES `main_companyinfo` WRITE;
/*!40000 ALTER TABLE `main_companyinfo` DISABLE KEYS */;
INSERT INTO `main_companyinfo` VALUES (1,'صنایع چوبین','شرکت چوبین صنعت ایرانیان','هویت خانه شما','شرکت چوبین صنعت ایرانیان با تکیه بر نیم‌قرن تجربه و عشق به چوب، به عنوان یکی از پیشگامان صنعت مبلمان و دکوراسیون داخلی، مأموریت خود را خلق فضاهایی می‌داند که هم‌نشین گرما، زیبایی و دوام هستند . ما فقط یک محصول نمی سازیم بلکه سبک زندگی شما را طراحی می کنیم .','images/main/company/wood-logo_pFJTJsr.jpg','تهران ، بزرگ راه بسیج ، شهرک صنعتی شماره 5 ، پلاک 167','info@choobin.com','02145897536');
/*!40000 ALTER TABLE `main_companyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_sliderimage`
--

DROP TABLE IF EXISTS `main_sliderimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_sliderimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_file` varchar(100) NOT NULL,
  `image_title` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_sliderimage`
--

LOCK TABLES `main_sliderimage` WRITE;
/*!40000 ALTER TABLE `main_sliderimage` DISABLE KEYS */;
INSERT INTO `main_sliderimage` VALUES (1,'images/main/slider/Wood-Craft-07.jpg','نوآوری در طراحی','نوآوری در طراحی از اصول اساسی چوبین صنعت می باشد',1),(2,'images/main/slider/Wood-Craft-11.jpg','اصالت در ساخت','چوبین صنعت هویت خانه شماست',1),(3,'images/main/slider/Wood-Craft-09.jpg','کیفیت در تولید','کیفیت در تولید اصل اول در چوبین صنعت می باشد',1),(4,'images/main/slider/Wood-Craft-12.jpg','زندگی در طبیعت','زندگی در طبیعت',1);
/*!40000 ALTER TABLE `main_sliderimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_usermessage`
--

DROP TABLE IF EXISTS `main_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_usermessage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_family` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `message_title` varchar(100) NOT NULL,
  `message_text` longtext NOT NULL,
  `registered_at` datetime(6) NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_usermessage`
--

LOCK TABLES `main_usermessage` WRITE;
/*!40000 ALTER TABLE `main_usermessage` DISABLE KEYS */;
INSERT INTO `main_usermessage` VALUES (9,'احمد','احمدی','ahmad@gmail.com','درخواست همکاری','درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری درخواست همکاری','2026-08-02 18:06:35.394756',0),(10,'علی','احمدی','ali.ahmadi22@gmail.com','تشکر','تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر تشکر','2026-08-17 17:33:58.659790',0);
/*!40000 ALTER TABLE `main_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_baseprice`
--

DROP TABLE IF EXISTS `order_baseprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_baseprice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `base_price` int NOT NULL,
  `price_reg_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_baseprice`
--

LOCK TABLES `order_baseprice` WRITE;
/*!40000 ALTER TABLE `order_baseprice` DISABLE KEYS */;
INSERT INTO `order_baseprice` VALUES (1,4000000,'2026-08-10 13:17:35.581662');
/*!40000 ALTER TABLE `order_baseprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_material`
--

DROP TABLE IF EXISTS `order_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_material` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materal_name` varchar(20) NOT NULL,
  `price_factor` int NOT NULL,
  `price_reg_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_material`
--

LOCK TABLES `order_material` WRITE;
/*!40000 ALTER TABLE `order_material` DISABLE KEYS */;
INSERT INTO `order_material` VALUES (1,'mdf',1,'2026-08-10 13:15:22.203129'),(2,'چوب',3,'2026-08-10 13:15:32.911137'),(3,'high-glass',2,'2026-08-10 13:15:51.760577');
/*!40000 ALTER TABLE `order_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_title` varchar(20) NOT NULL,
  `orderer_name` varchar(20) NOT NULL,
  `orderer_family` varchar(20) NOT NULL,
  `orderer_phone` varchar(11) NOT NULL,
  `orderer_address` varchar(40) NOT NULL,
  `order_metrics` int NOT NULL,
  `order_unit` int NOT NULL,
  `order_reg_date` datetime(6) NOT NULL,
  `order_end_date` date DEFAULT NULL,
  `order_manager_id` bigint DEFAULT NULL,
  `order_material_id` bigint NOT NULL,
  `order_type_id` bigint NOT NULL,
  `orderer_user_id` int NOT NULL,
  `order_status_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_order_material_id_1ad7b36a_fk_order_material_id` (`order_material_id`),
  KEY `order_order_order_type_id_fec7053f_fk_project_projecttype_id` (`order_type_id`),
  KEY `order_order_orderer_user_id_b58f389e_fk_auth_user_id` (`orderer_user_id`),
  KEY `order_order_order_manager_id_8123d482_fk_project_manager_id` (`order_manager_id`),
  KEY `order_order_order_status_id_12616e9a_fk_order_orderstatus_id` (`order_status_id`),
  CONSTRAINT `order_order_order_manager_id_8123d482_fk_project_manager_id` FOREIGN KEY (`order_manager_id`) REFERENCES `project_manager` (`id`),
  CONSTRAINT `order_order_order_material_id_1ad7b36a_fk_order_material_id` FOREIGN KEY (`order_material_id`) REFERENCES `order_material` (`id`),
  CONSTRAINT `order_order_order_status_id_12616e9a_fk_order_orderstatus_id` FOREIGN KEY (`order_status_id`) REFERENCES `order_orderstatus` (`id`),
  CONSTRAINT `order_order_order_type_id_fec7053f_fk_project_projecttype_id` FOREIGN KEY (`order_type_id`) REFERENCES `project_projecttype` (`id`),
  CONSTRAINT `order_order_orderer_user_id_b58f389e_fk_auth_user_id` FOREIGN KEY (`orderer_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_order`
--

LOCK TABLES `order_order` WRITE;
/*!40000 ALTER TABLE `order_order` DISABLE KEYS */;
INSERT INTO `order_order` VALUES (1,'ساخت کابینت خانگی','محمد','صادقی','09359851215','تهران رسالت خیابان احمدی پلاک 126',10,1,'2026-08-10 14:14:12.056767',NULL,1,1,1,2,1),(2,'ساخت کمد دیواری','رضا','رضوی','09324521896','تهران ستاری خیابان محمدی پلاک 456',-7,1,'2026-08-17 17:37:13.732958',NULL,3,2,2,4,1);
/*!40000 ALTER TABLE `order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_orderstatus`
--

DROP TABLE IF EXISTS `order_orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_orderstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_orderstatus`
--

LOCK TABLES `order_orderstatus` WRITE;
/*!40000 ALTER TABLE `order_orderstatus` DISABLE KEYS */;
INSERT INTO `order_orderstatus` VALUES (1,'ثبت شده'),(2,'در حال انجام'),(3,'انجام شده');
/*!40000 ALTER TABLE `order_orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_manager`
--

DROP TABLE IF EXISTS `project_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_manager` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(20) NOT NULL,
  `manager_family` varchar(20) NOT NULL,
  `manager_degree` varchar(10) NOT NULL,
  `manager_email` varchar(254) NOT NULL,
  `manager_phone` varchar(11) NOT NULL,
  `manager_slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_manager_manager_slug_6016e0f3` (`manager_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_manager`
--

LOCK TABLES `project_manager` WRITE;
/*!40000 ALTER TABLE `project_manager` DISABLE KEYS */;
INSERT INTO `project_manager` VALUES (1,'علی','وحیدی','استاد','ali.vahidi55@gmail.com','09354856218','ali-vhd'),(2,'حامد','محمدی','استاد','hamed.mmdi@gmail.com','09475369771','hmd-mhmd'),(3,'رضا','کریمی','استاد','reza.karimi@gmail.com','09185247863','rz-krm');
/*!40000 ALTER TABLE `project_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_project`
--

DROP TABLE IF EXISTS `project_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_title` varchar(60) NOT NULL,
  `project_detail` longtext NOT NULL,
  `project_price` varchar(15) NOT NULL,
  `project_start_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `project_picture` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `project_manager_id` bigint NOT NULL,
  `project_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_project_project_manager_id_8f8a9b66_fk_project_m` (`project_manager_id`),
  KEY `project_project_project_type_id_bb6eec6c_fk_project_p` (`project_type_id`),
  CONSTRAINT `project_project_project_manager_id_8f8a9b66_fk_project_m` FOREIGN KEY (`project_manager_id`) REFERENCES `project_manager` (`id`),
  CONSTRAINT `project_project_project_type_id_bb6eec6c_fk_project_p` FOREIGN KEY (`project_type_id`) REFERENCES `project_projecttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_project`
--

LOCK TABLES `project_project` WRITE;
/*!40000 ALTER TABLE `project_project` DISABLE KEYS */;
INSERT INTO `project_project` VALUES (1,'کابینت سازی انبوه فاز سوم مسکن مهر تهران','در این پروژه کابینت سازی برای 2500 واحد مسکن مهر ، واقع در منطقه پردیس تهران به صورت کامل طراحی و اجرا گردید . کیفیت مرغوب ، قیمت منصفانه و طراحی بروز از مهم ترین ویژگی های اجرایی این پروژه بوده است . در این پروژه کابینت سازی برای 2500 واحد مسکن مهر ، واقع در منطقه پردیس تهران به صورت کامل طراحی و اجرا گردید . کیفیت مرغوب ، قیمت منصفانه و طراحی بروز از مهم ترین ویژگی های اجرایی این پروژه بوده است . در این پروژه کابینت سازی برای 2500 واحد مسکن مهر ، واقع در منطقه پردیس تهران به صورت کامل طراحی و اجرا گردید . کیفیت مرغوب ، قیمت منصفانه و طراحی بروز از مهم ترین ویژگی های اجرایی این پروژه بوده است . در این پروژه کابینت سازی برای 2500 واحد مسکن مهر ، واقع در منطقه پردیس تهران به صورت کامل طراحی و اجرا گردید . کیفیت مرغوب ، قیمت منصفانه و طراحی بروز از مهم ترین ویژگی های اجرایی این پروژه بوده است .','115,000,000,000','2025-01-07','2025-04-07','kb4.jpg',1,1,1),(2,'پروژه ساخت مبلمان مجمع های مسکونی گلستان در تهران','در این پروژه مبلمان مورد نیاز جهت تجهیز واحد های مجمع مسکونی گلستان در شهرک شهید بهشتی در شرق تهران طراحی و ساخته شد . این پروژه از بزرگترین پروژه های تامین و ساخت مبلمان کشور در سال 1404 بوده است و توجه بسیاری از کارشناسان فنی و اقتصادی این حوزه را به خود جلب نموده است .','20,000,000,000','2025-03-15','2025-06-24','mb4.jpg',1,2,3),(3,'پروژه ساخت کمد دیواری مجمع های مسکونی گلستان در تهران','پروژه ساخت کمد دیواری های واحد های مسکونی مجمع گلستان در واقع در شهرک شهید بهشتی تهران از بزرگترین پروژه های ساخت کمد دیواری در شرکت چوبین صنعت بوده است . در این پروژه کمد دیواری مورد نیاز برای 200 واحد مسکونی طراحی و ساخته شد . پروژه ساخت کمد دیواری های واحد های مسکونی مجمع گلستان در واقع در شهرک شهید بهشتی تهران از بزرگترین پروژه های ساخت کمد دیواری در شرکت چوبین صنعت بوده است . در این پروژه کمد دیواری مورد نیاز برای 200 واحد مسکونی طراحی و ساخته شد . پروژه ساخت کمد دیواری های واحد های مسکونی مجمع گلستان در واقع در شهرک شهید بهشتی تهران از بزرگترین پروژه های ساخت کمد دیواری در شرکت چوبین صنعت بوده است . در این پروژه کمد دیواری مورد نیاز برای 200 واحد مسکونی طراحی و ساخته شد . پروژه ساخت کمد دیواری های واحد های مسکونی مجمع گلستان در واقع در شهرک شهید بهشتی تهران از بزرگترین پروژه های ساخت کمد دیواری در شرکت چوبین صنعت بوده است . در این پروژه کمد دیواری مورد نیاز برای 200 واحد مسکونی طراحی و ساخته شد .','50,000,000,000','2025-03-15','2025-06-24','kmd2.jpg',1,3,2);
/*!40000 ALTER TABLE `project_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_projecttype`
--

DROP TABLE IF EXISTS `project_projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_projecttype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `project_type` varchar(15) NOT NULL,
  `project_price_factor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_projecttype`
--

LOCK TABLES `project_projecttype` WRITE;
/*!40000 ALTER TABLE `project_projecttype` DISABLE KEYS */;
INSERT INTO `project_projecttype` VALUES (1,'کابینت',2),(2,'کمد دیواری',1),(3,'مبلمان',3);
/*!40000 ALTER TABLE `project_projecttype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-17 21:26:59

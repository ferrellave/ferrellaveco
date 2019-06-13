-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: ferrellaveco
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Categoria',7,'add_categoria'),(20,'Can change Categoria',7,'change_categoria'),(21,'Can delete Categoria',7,'delete_categoria'),(22,'Can add Marca',8,'add_marca'),(23,'Can change Marca',8,'change_marca'),(24,'Can delete Marca',8,'delete_marca'),(25,'Can add Producto',9,'add_producto'),(26,'Can change Producto',9,'change_producto'),(27,'Can delete Producto',9,'delete_producto'),(28,'Can add Blog',10,'add_blog'),(29,'Can change Blog',10,'change_blog'),(30,'Can delete Blog',10,'delete_blog');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$UENOiKA1ghDw$9rXjdOELqavOZyd35M3eVw9teI/nk4tsuJhyYwyxCOM=','2019-06-12 22:10:03.987201',1,'almaginet','','','almaginet@gmail.com',1,1,'2019-06-11 21:08:45.101857');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'La importancia de tener un duplicado de llaves','Resulta fundamental tener un duplicado de la llave de nuestro vehículo. Sobre todo, cuando vamos de viaje, porque si solo tenemos una y la perdemos, podemos vivir un auténtico infierno. Son problemas innecesarios que en la actualidad cuentan con una fácil solución que además resulta accesible económicamente. Sólo hace falta encontrar el establecimiento especializado adecuado para duplicar una llave del coche, que lo hará a un precio mucho más económico que un concesionario oficial.','productos/llavesmotos_7nJ6Xl9.jpg','2019-06-11 21:30:47.417113','2019-06-11 21:30:47.433513','la-importancia-de-tener-un-duplicado-de-llaves'),(2,'Reserve su servicio y reciba un descuento del 25%','Reserve su servicio para el fin de semana y reciba un descuento del 25%. Clone una copia a la llave de su auto con Chip. Es una necesidad para una eventualidad','','2019-06-11 21:33:22.948901','2019-06-11 21:33:48.095704','reserve-su-servicio-y-reciba-un-descuento-del-25');
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categoria`
--

DROP TABLE IF EXISTS `blog_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_categoria_2dbcba41` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categoria`
--

LOCK TABLES `blog_categoria` WRITE;
/*!40000 ALTER TABLE `blog_categoria` DISABLE KEYS */;
INSERT INTO `blog_categoria` VALUES (1,'Servicios de Cerrajeria','Los mejores servicios en cerrajeria','categorias/llavesmotos.jpg','2019-06-11 21:17:06.923638','2019-06-11 21:17:07.037909','servicios-de-cerrajeria'),(2,'Electricidad','Servicios de Electricidad','','2019-06-11 21:19:06.524909','2019-06-11 21:19:06.531625','electricidad'),(3,'Suministros','Los mejores suministros','','2019-06-11 21:19:23.686436','2019-06-11 21:19:23.693790','suministros'),(4,'Adecuaciones','Las mejores adecuaciones','','2019-06-11 21:19:47.039314','2019-06-11 21:19:47.046518','adecuaciones'),(5,'Albañileria','El mejor servicio de albañileria','','2019-06-11 21:20:08.974350','2019-06-11 21:20:09.006764','albanileria'),(6,'Estructuras Metalicas','Lo mejor en trabajos de estructuras metalicas','','2019-06-11 21:20:34.508844','2019-06-11 21:20:34.516657','estructuras-metalicas'),(7,'Enchapes','Lo mejor en trabajos de enchapes','','2019-06-11 21:20:50.404228','2019-06-11 21:20:50.412592','enchapes'),(8,'Mantenimiento y Reparaciones','Lo mejor en servicios de mantenimiento y reparaciones','','2019-06-11 21:21:18.099778','2019-06-11 21:21:18.107674','mantenimiento-y-reparaciones'),(9,'Plomeria','Lo mejor en servicios de plomeria','','2019-06-11 21:21:50.255188','2019-06-11 21:21:50.259560','plomeria'),(10,'Pintura y Acabados','Lo mejor en servicios y productos de pintura y acabados','','2019-06-11 21:22:11.699566','2019-06-11 21:22:11.709347','pintura-y-acabados');
/*!40000 ALTER TABLE `blog_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_marca`
--

DROP TABLE IF EXISTS `blog_marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_marca_categoria_id_26c065096f10285_fk_blog_categoria_id` (`categoria_id`),
  KEY `blog_marca_2dbcba41` (`slug`),
  CONSTRAINT `blog_marca_categoria_id_26c065096f10285_fk_blog_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `blog_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_marca`
--

LOCK TABLES `blog_marca` WRITE;
/*!40000 ALTER TABLE `blog_marca` DISABLE KEYS */;
INSERT INTO `blog_marca` VALUES (2,'Eternit','','marcas/eternit.png','2019-06-11 21:23:06.740535','2019-06-11 21:23:06.750830','eternit',NULL),(3,'Pavco','','','2019-06-11 21:23:20.361025','2019-06-11 21:23:20.369537','pavco',NULL),(4,'Yale','','marcas/Yale.jpg','2019-06-11 21:23:31.984871','2019-06-11 21:23:31.993967','yale',NULL),(5,'Sika','','marcas/sika.png','2019-06-11 21:23:44.081811','2019-06-11 21:23:44.096562','sika',NULL),(6,'Pintuco','','marcas/Pintuco.jpg','2019-06-11 21:23:54.929351','2019-06-11 21:23:54.943579','pintuco',NULL),(7,'Renault','','marcas/renault.png','2019-06-11 21:24:04.931426','2019-06-11 21:24:04.946341','renault',NULL),(9,'Wolsvagen','','marcas/wolsvagen.gif','2019-06-11 21:24:27.072849','2019-06-11 21:24:27.086979','wolsvagen',NULL),(11,'Hiunday','','marcas/hyundai.jpg','2019-06-11 21:24:47.507209','2019-06-11 21:24:47.523015','hiunday',NULL),(14,'Mitsubishi','','marcas/mitsubishi_iYyU8uy.jpg','2019-06-11 21:25:04.518600','2019-06-11 21:25:04.559682','mitsubishi',NULL),(15,'Toyota','','marcas/toyota.jpg','2019-06-11 21:25:18.599292','2019-06-11 21:25:18.614421','toyota',NULL),(17,'Dodge','','marcas/dodge.jpg','2019-06-11 21:25:30.781900','2019-06-11 21:25:30.802981','dodge',NULL),(19,'Kia','','marcas/kia.jpg','2019-06-11 21:25:41.138963','2019-06-11 21:25:41.147798','kia',NULL),(20,'Mazda','','marcas/mazda.png','2019-06-11 21:25:50.348812','2019-06-11 21:25:50.363515','mazda',NULL),(21,'Chevrolet','','marcas/chevrolet.png','2019-06-11 21:26:05.329242','2019-06-11 21:26:05.338558','chevrolet',NULL);
/*!40000 ALTER TABLE `blog_marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_producto`
--

DROP TABLE IF EXISTS `blog_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `creado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_producto_categoria_id_1c3fb6fe6ded9938_fk_blog_categoria_id` (`categoria_id`),
  KEY `blog_producto_marca_id_3cd465cd41b44f71_fk_blog_marca_id` (`marca_id`),
  KEY `blog_producto_2dbcba41` (`slug`),
  CONSTRAINT `blog_producto_categoria_id_1c3fb6fe6ded9938_fk_blog_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `blog_categoria` (`id`),
  CONSTRAINT `blog_producto_marca_id_3cd465cd41b44f71_fk_blog_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `blog_marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_producto`
--

LOCK TABLES `blog_producto` WRITE;
/*!40000 ALTER TABLE `blog_producto` DISABLE KEYS */;
INSERT INTO `blog_producto` VALUES (1,'Carcazas','Las mejores carcazas','productos/carcazas.jpg','2019-06-11 21:18:09.641624','2019-06-11 21:56:08.767596','carcazas',1,NULL),(2,'Controles','','','2019-06-11 21:26:39.661498','2019-06-11 21:26:39.690801','controles',1,NULL),(3,'Mandos','','','2019-06-11 21:26:54.514838','2019-06-11 21:26:54.533988','mandos',1,NULL),(4,'Llaves de seguridad','','','2019-06-11 21:27:09.691234','2019-06-11 21:27:09.721117','llaves-de-seguridad',1,NULL),(5,'Llaves de Punto','','','2019-06-11 21:27:27.562265','2019-06-11 21:27:27.579856','llaves-de-punto',1,NULL),(6,'Llaves de regata','','','2019-06-11 21:27:40.402210','2019-06-11 21:27:40.441061','llaves-de-regata',1,NULL),(7,'Cerraduras ECT','','','2019-06-11 21:27:53.414278','2019-06-11 21:27:53.439213','cerraduras-ect',1,NULL),(8,'Llaves para motos','','','2019-06-11 21:28:13.925858','2019-06-11 21:28:13.959952','llaves-para-motos',1,NULL);
/*!40000 ALTER TABLE `blog_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-06-11 21:17:07.041419','1','Servicios de Cerrajeria',1,'',7,1),(2,'2019-06-11 21:17:47.576285','1','Varias',1,'',8,1),(3,'2019-06-11 21:18:09.680306','1','Carcazas',1,'',9,1),(4,'2019-06-11 21:19:06.541142','2','Electricidad',1,'',7,1),(5,'2019-06-11 21:19:23.698152','3','Suministros',1,'',7,1),(6,'2019-06-11 21:19:47.056075','4','Adecuaciones',1,'',7,1),(7,'2019-06-11 21:20:09.011529','5','Albañileria',1,'',7,1),(8,'2019-06-11 21:20:34.526452','6','Estructuras Metalicas',1,'',7,1),(9,'2019-06-11 21:20:50.426830','7','Enchapes',1,'',7,1),(10,'2019-06-11 21:21:18.119329','8','Mantenimiento y Reparaciones',1,'',7,1),(11,'2019-06-11 21:21:50.262627','9','Plomeria',1,'',7,1),(12,'2019-06-11 21:22:11.718863','10','Pintura y Acabados',1,'',7,1),(13,'2019-06-11 21:23:06.754423','2','Eternit',1,'',8,1),(14,'2019-06-11 21:23:20.374318','3','Pavco',1,'',8,1),(15,'2019-06-11 21:23:31.999861','4','Yale',1,'',8,1),(16,'2019-06-11 21:23:44.101930','5','Sika',1,'',8,1),(17,'2019-06-11 21:23:54.953571','6','Pintuco',1,'',8,1),(18,'2019-06-11 21:24:04.950183','7','Renault',1,'',8,1),(19,'2019-06-11 21:24:05.106364','8','Renault',1,'',8,1),(20,'2019-06-11 21:24:27.094043','9','Wolsvagen',1,'',8,1),(21,'2019-06-11 21:24:27.290304','10','Wolsvagen',1,'',8,1),(22,'2019-06-11 21:24:47.540168','11','Hiunday',1,'',8,1),(23,'2019-06-11 21:24:47.685908','12','Hiunday',1,'',8,1),(24,'2019-06-11 21:25:04.556338','13','Mitsubishi',1,'',8,1),(25,'2019-06-11 21:25:04.567136','14','Mitsubishi',1,'',8,1),(26,'2019-06-11 21:25:18.620308','15','Toyota',1,'',8,1),(27,'2019-06-11 21:25:18.730636','16','Toyota',1,'',8,1),(28,'2019-06-11 21:25:30.815377','17','Dodge',1,'',8,1),(29,'2019-06-11 21:25:30.914471','18','Dodge',1,'',8,1),(30,'2019-06-11 21:25:41.150762','19','Kia',1,'',8,1),(31,'2019-06-11 21:25:50.367013','20','Mazda',1,'',8,1),(32,'2019-06-11 21:26:05.343125','21','Chevrolet',1,'',8,1),(33,'2019-06-11 21:26:39.696956','2','Controles',1,'',9,1),(34,'2019-06-11 21:26:54.538249','3','Mandos',1,'',9,1),(35,'2019-06-11 21:27:09.727717','4','Llaves de seguridad',1,'',9,1),(36,'2019-06-11 21:27:27.584996','5','Llaves de Punto',1,'',9,1),(37,'2019-06-11 21:27:40.450384','6','Llaves de regata',1,'',9,1),(38,'2019-06-11 21:27:53.444065','7','Cerraduras ECT',1,'',9,1),(39,'2019-06-11 21:28:13.966708','8','Llaves para motos',1,'',9,1),(40,'2019-06-11 21:30:47.438600','1','La importancia de tener un duplicado de llaves',1,'',10,1),(41,'2019-06-11 21:33:22.968608','2','Reserve su servicio y reciba un descuento del 25%',1,'',10,1),(42,'2019-06-11 21:33:48.105171','2','Reserve su servicio y reciba un descuento del 25%',2,'Modificado/a descripcion.',10,1),(43,'2019-06-11 21:55:42.165496','8','Renault',3,'',8,1),(44,'2019-06-11 21:55:42.217860','10','Wolsvagen',3,'',8,1),(45,'2019-06-11 21:55:42.263292','12','Hiunday',3,'',8,1),(46,'2019-06-11 21:55:42.341025','13','Mitsubishi',3,'',8,1),(47,'2019-06-11 21:55:42.408463','16','Toyota',3,'',8,1),(48,'2019-06-11 21:55:42.451943','18','Dodge',3,'',8,1),(49,'2019-06-11 21:56:08.835032','1','Carcazas',2,'Modificado/a marca.',9,1),(50,'2019-06-11 21:56:22.704239','1','Varias',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'blog','blog'),(7,'blog','categoria'),(8,'blog','marca'),(9,'blog','producto'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-06-11 21:07:21.488217'),(2,'auth','0001_initial','2019-06-11 21:07:30.956914'),(3,'admin','0001_initial','2019-06-11 21:07:33.248813'),(4,'contenttypes','0002_remove_content_type_name','2019-06-11 21:07:34.791594'),(5,'auth','0002_alter_permission_name_max_length','2019-06-11 21:07:35.728297'),(6,'auth','0003_alter_user_email_max_length','2019-06-11 21:07:36.889403'),(7,'auth','0004_alter_user_username_opts','2019-06-11 21:07:37.015788'),(8,'auth','0005_alter_user_last_login_null','2019-06-11 21:07:37.784132'),(9,'auth','0006_require_contenttypes_0002','2019-06-11 21:07:37.838105'),(10,'blog','0001_initial','2019-06-11 21:07:44.253593'),(11,'sessions','0001_initial','2019-06-11 21:07:45.624017');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7w3hgtlcozbw0lcft2rlrebaduq4i25j','NDAxMjVkYTExM2FmNTE5YmU4YjYzM2QyMTBlNmI1ZDNjZTYzMTI5NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1MTQ4MGZjMjQ3YzZmZWJjZmY4OGRjZWVmYjYzYmNmZTAxZDY2MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-25 21:10:36.766380'),('p31owhc0vzisabitk1zje2ayhoz9f5gi','NDAxMjVkYTExM2FmNTE5YmU4YjYzM2QyMTBlNmI1ZDNjZTYzMTI5NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1MTQ4MGZjMjQ3YzZmZWJjZmY4OGRjZWVmYjYzYmNmZTAxZDY2MWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2019-06-26 22:10:04.045086');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12 17:34:09

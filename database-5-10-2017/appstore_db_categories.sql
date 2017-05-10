-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: appstore_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `image_link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (11,'Business','https://lh5.ggpht.com/z7Sl53At5xLj1e1rKHWjBsjfZ6auDw-79NS91hnwnbAbg3RrJVABzsTGilCCYtco_w=w300-rw'),(12,'Entertainment','https://lh3.googleusercontent.com/IKW5EWVX4qUYF6LPP1_O1sWiZsMblSQVnBrtkMAd07Br69lEApDez9yzFe09iAgJAg=w300-rw'),(13,'Finance','https://lh3.googleusercontent.com/vIJ7bv0rBwc3IdHaocUXloyLhJR6_vGhpwQGpXMR3ZD8dK_OnXpzPgb2FSpXnol-QipG=w300-rw'),(14,'Games','https://lh3.googleusercontent.com/XRQ6jqZEi63GoDXdqDYwBKR1N_ZOLpNFt5UPR0tImzfHI4shk1D06HcW0w_xP7vhoQ=w300-rw'),(15,'Health & Fitness','https://lh3.googleusercontent.com/WkGXEesGEu4ayZctjADlDKdscS3Ve1hmoVzhHQYh9NuK9QpDA3Rx6ae3jg7VH2dFZqk=w300-rw'),(16,'Photo & Video','https://lh3.googleusercontent.com/3qybHqE4ff9MOts7v5l4S09W3HtOymwDic4LYzNVU-PhDIFvYAbju8qfRKB7AoxeWA=w300-rw'),(17,'Productivity','https://lh3.googleusercontent.com/ircln0IYnHCkr7BfY3ZUQUFqMU5nzetq3YS6eA05Gr9VbWGvdmyAG9P67fyrCWA5-xw=w300-rw'),(18,'Shopping','https://lh3.googleusercontent.com/2JPRbBcHwelRTO-y25hyKGejNLf0UPAw_apJtyuu7PXSBk0n8iKUvlG0CihfebSPLQ=w300-rw'),(19,'Social Networking','https://lh3.googleusercontent.com/OjgWQ60f0O1zbSZWRSEqjbbP9xYwkU1y8iVp4FiFA56yzpJGdi6B0HofQYOIqXed5fo=w300-rw'),(20,'Utilities','https://lh3.googleusercontent.com/Wm4H9g3ucDhGfO70LTYb23L93Xi6mQz1VZoZKb9ZZjLh6BjvqtiqF70GFFUZe1vCnn8=w300-rw');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-09  0:06:01

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
  `name` varchar(45) DEFAULT NULL,
  `image_link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (0,'Books','https://lh5.ggpht.com/sxnFjIWmIPhBg09VXkKdVY-Rwn7l1Bfxq-eo6wIM1d2wWHDApGk3w-3NN77Td_BwYz4=w300-rw'),(1,'Bussines','https://lh5.ggpht.com/z7Sl53At5xLj1e1rKHWjBsjfZ6auDw-79NS91hnwnbAbg3RrJVABzsTGilCCYtco_w=w300-rw'),(2,'Catalogs','https://lh3.googleusercontent.com/tf4OtsLx35PgsUiWqoFwh-tTwxv9sliUja5h7IPcIrt1WrpV2OHuCoQgNX5RE-jWe9lj=w300-rw'),(3,'Education','https://lh3.ggpht.com/cDanO7DuSF96V4N66b9unk5M_rFbJ6XoQryFXHcWC7S0UYMoqmJZVistkKhRCue_Pqg=w300-rw'),(4,'Entertainment','https://lh3.googleusercontent.com/IKW5EWVX4qUYF6LPP1_O1sWiZsMblSQVnBrtkMAd07Br69lEApDez9yzFe09iAgJAg=w300-rw'),(5,'Finance','https://lh3.googleusercontent.com/vIJ7bv0rBwc3IdHaocUXloyLhJR6_vGhpwQGpXMR3ZD8dK_OnXpzPgb2FSpXnol-QipG=w300-rw'),(6,'Food And Drink','https://lh3.googleusercontent.com/6J7H63eKu9rKUWPY-dFB9tZ9JRvCC8DXRa_PpgY86_4qzdvySnYOs4_iQP7ibfTLH1k=w300-rw'),(7,'Games','https://cdn0.iconfinder.com/data/icons/social-flat-rounded-rects/512/steam-128.png'),(8,'Fitness','https://lh3.googleusercontent.com/WkGXEesGEu4ayZctjADlDKdscS3Ve1hmoVzhHQYh9NuK9QpDA3Rx6ae3jg7VH2dFZqk=w300-rw'),(9,'Life Style','https://lh3.googleusercontent.com/FdqkpvNKychYLF2ShKxgHFoKJXC-XQsNvAgKoPtx79YJOicbtuEleCmNREwc43FY4vYi=w300-rw');
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

-- Dump completed on 2017-04-23 15:14:19

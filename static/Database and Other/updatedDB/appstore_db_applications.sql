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
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `image_link` varchar(150) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `ratings_count` int(11) DEFAULT NULL,
  `ratings` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (0,'Finance','PayPal','https://lh3.googleusercontent.com/vIJ7bv0rBwc3IdHaocUXloyLhJR6_vGhpwQGpXMR3ZD8dK_OnXpzPgb2FSpXnol-QipG=w300',231,829,4.0),(1,'Finance','Venmo','http://brand.venmo.com/img/logo-mark.png',519,162,3.5),(2,'Finance','Square Chash','https://lh3.googleusercontent.com/wdFgfoxO5xFb5s194SbECtHEe-HU3BfM5MqL3896G1esFN02J_aqp5yaQ39-IMHqRjY=w300',102,123,3.2),(3,'Finance','Credit Karma','https://lh3.googleusercontent.com/hGTX7WKu0WWKUQMg1YJgK6xNu2OZ_NboJB-XhvDG7mAXRmhJLIjoAaL4gxUnm2Pf9A=w300',50,412,4.5),(4,'Finance','Chase Mobile','https://lh4.ggpht.com/zfXLEYjCcn-peZoNQpwfqYTg-KtFuzs80Twae8obhfL_HS4ydGsJ1EUHIoKcyhLw8Pk=w300',1020,342,2.5),(5,'Finance','Bank of America','https://lh6.ggpht.com/x8OtRvnO93xdOxzbOHZ5DSSTuk92OgI0koX3nFzl5eAx1onCjZooiCUDvVRfXUeDUQ=w300-rw',34,123,3.0),(6,'Finance','Capital One Mobile','https://lh3.googleusercontent.com/EVSmn_zgELy3h3xag6zG_9ZwgP25BqiR5EZarmal2vObgP6fjekqW-h_lR-OypglbPqQ=w170',203,12,3.8),(7,'Finance','Wells Fargo Mobile','https://lh4.ggpht.com/1FRy4cMiMxA4IXROI_NCabGG6rfA3sBlBQ2N8NLrm1L1NrjEZPHBiNJ-QnUV0LLg3oc=w300',17,55,2.8),(8,'Finance','GEICO Mobile','https://lh4.ggpht.com/AXZDbrStZWn_w-x6YVe8453q37EcgBdBgRW9EOc6eyW3QVDJR9PXqV8rEHkFVyhsUg=w300',803,105,4.2),(9,'Finance','Stash Invest','https://lh3.googleusercontent.com/NQibl3dT9NcNaC2HBPI-_pRtkQPthln3pkHKIbbe_skEMgKMOIEdDP85YAoW7VfOFw=w300',174,29,3.2);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-03 19:17:21

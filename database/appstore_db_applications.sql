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
  `category_name` varchar(500) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `image_link` varchar(500) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `ratings_count` int(11) DEFAULT NULL,
  `ratings` decimal(2,1) DEFAULT NULL,
  `details_image` varchar(500) DEFAULT NULL,
  `description` mediumtext,
  `seller` varchar(500) DEFAULT NULL,
  `updated` varchar(500) DEFAULT NULL,
  `version` varchar(500) DEFAULT NULL,
  `size` varchar(500) DEFAULT NULL,
  `family_sharing` varchar(500) DEFAULT NULL,
  `compatibility` varchar(500) DEFAULT NULL,
  `languages` varchar(500) DEFAULT NULL,
  `privacy` mediumtext,
  `app_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (0,'Finance','My Boost','https://lh3.googleusercontent.com/qleRsnA5f6Mi-N3eHoScRb7xhL46munUxSVchumvTyEiVbtmEREbGXFa64XGZmUHVaM=w300-rw',10000,102,4.0,'https://lh3.googleusercontent.com/3mjf2hlik_oMkmuR0MNg2H1zBCkUiswj1Jm9Wq9Sq5ocpIdyxKfs9emnzSoqp-yFVCey=h900-rw','Access your My Boost account on the go. Quickly review your account details to add funds, check usage and account settings to fit your needs all from your Boost Mobile device. Simplify the way you manage your Boost Mobile account.','Sprint Nextel Corporation','May 2, 2017','6.1.1','16.4 MB','Yes','IOS 9.0 or later','English, Spanish','Boost Mobile\'s opt-in Mobile Advertising program, which allows Boost Mobile to use information it collects to provide service to you to make the ads you see on your device more relevant and Boost Mobile\'s opt-out Reporting and Analytics program, which creates and shares certain business and marketing reports, are governed by this privacy policy. We do not share any information that identifies you personally under either of these programs. For detailed information on these programs and to learn how to opt in or out, please visit  boostmobile.com/privacy. ',1),(1,'Finance','Venmo','http://brand.venmo.com/img/logo-mark.png',519,162,3.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(2,'Finance','Square Chash','https://lh3.googleusercontent.com/wdFgfoxO5xFb5s194SbECtHEe-HU3BfM5MqL3896G1esFN02J_aqp5yaQ39-IMHqRjY=w300',102,18,3.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),(3,'Finance','Credit Karma','https://lh3.googleusercontent.com/hGTX7WKu0WWKUQMg1YJgK6xNu2OZ_NboJB-XhvDG7mAXRmhJLIjoAaL4gxUnm2Pf9A=w300',330,82,4.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4),(4,'Finance','Chase Mobile','https://lh4.ggpht.com/zfXLEYjCcn-peZoNQpwfqYTg-KtFuzs80Twae8obhfL_HS4ydGsJ1EUHIoKcyhLw8Pk=w300',1020,342,2.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5),(5,'Finance','Bank of America','https://lh6.ggpht.com/x8OtRvnO93xdOxzbOHZ5DSSTuk92OgI0koX3nFzl5eAx1onCjZooiCUDvVRfXUeDUQ=w300-rw',3012,123,3.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(6,'Finance','Capital One Mobile','https://lh3.googleusercontent.com/EVSmn_zgELy3h3xag6zG_9ZwgP25BqiR5EZarmal2vObgP6fjekqW-h_lR-OypglbPqQ=w170',203,12,3.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7),(7,'Finance','Wells Fargo Mobile','https://lh4.ggpht.com/1FRy4cMiMxA4IXROI_NCabGG6rfA3sBlBQ2N8NLrm1L1NrjEZPHBiNJ-QnUV0LLg3oc=w300',2050,492,2.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8),(8,'Finance','GEICO Mobile','https://lh4.ggpht.com/AXZDbrStZWn_w-x6YVe8453q37EcgBdBgRW9EOc6eyW3QVDJR9PXqV8rEHkFVyhsUg=w300',803,105,4.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9),(9,'Finance','Stash Invest','https://lh3.googleusercontent.com/NQibl3dT9NcNaC2HBPI-_pRtkQPthln3pkHKIbbe_skEMgKMOIEdDP85YAoW7VfOFw=w300',174,29,3.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10);
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

-- Dump completed on 2017-05-10 12:11:09

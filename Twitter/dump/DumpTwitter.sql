-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: twitter
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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `text` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_comments_users1_idx` (`user_id`),
  KEY `fk_comments_posts1_idx` (`post_id`),
  CONSTRAINT `fk_comments_posts1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  UNIQUE KEY `userid_followerid_UNIQUE` (`user_id`,`follower_id`),
  KEY `fk_followers_users_idx` (`user_id`),
  KEY `fk_followers_users1_idx` (`follower_id`),
  CONSTRAINT `fk_followers_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_followers_users1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
INSERT INTO `followers` VALUES (1,2),(1,3),(1,5),(1,7),(1,12),(2,1),(2,3),(2,5),(2,7),(3,1),(3,2),(3,5),(5,2),(5,3),(7,5),(8,2),(8,3),(8,12),(9,2),(9,5),(9,8),(11,1),(11,2),(11,3),(11,5),(11,12),(12,1),(12,2),(12,3),(12,5),(12,11);
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_posts_users1_idx` (`user_id`),
  CONSTRAINT `fk_posts_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Lorem ipsum dolor sit amet','2017-02-03','13:25:16',1),(2,'consectetur adipiscing elit','2017-02-03','13:26:12',2),(3,'Nullam augue dui, interdum at congue ut','2017-02-03','13:51:22',3),(4,'uis ex neque, congue eu dolor id, convallis rutrum nulla','2017-02-03','13:59:55',5),(5,'Duis pellentesque mi vitae odio volutpat tincidunt a ut sapien','2017-02-03','14:28:14',7),(6,'Curabitur dictum ex quis leo posuere, a maximus est pellentesque','2017-02-03','15:55:36',8),(7,'Ut ultricies orci vel dolor rhoncus accumsan.','2017-02-03','16:08:03',9),(8,'Vestibulum ornare urna sed porttitor vulputate. ','2017-02-03','22:11:14',11),(9,'Vivamus luctus turpis orci, ut commodo urna feugiat eu.','2017-02-04','07:25:18',12),(10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-02-04','11:38:17',1),(11,'In a purus vitae orci fringilla ultrices nec non mauris.','2017-02-04','15:55:41',2),(12,'Nulla rutrum, arcu in scelerisque interdum.','2017-02-04','15:59:02',3),(13,'Vitae consectetur est turpis id sem.','2017-02-04','16:23:32',5),(14,'Nulla pharetra mollis vehicula.','2017-02-04','16:44:22',7),(15,'Donec mollis ante nunc, non imperdiet ex aliquet id.','2017-02-04','18:14:51',8),(16,'Aliquam bibendum luctus quam, vitae ornare ex.','2017-02-04','18:32:01',9),(17,'Donec lacus quam, dictum at sapien vel, tincidunt molestie erat. ','2017-02-04','18:59:53',11),(18,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2017-02-04','19:01:02',12),(19,'Aliquam tempor scelerisque nulla, porttitor rhoncus quam fermentum ac.','2017-02-04','19:03:51',1),(20,'Donec quis aliquet est. Praesent porta pharetra erat, vel ultrices neque. ','2017-02-04','19:14:33',11),(21,'Donec fringilla dapibus cursus. Donec leo erat, rhoncus sed ultricies ac, commodo commodo ipsum.','2017-02-04','19:21:21',12),(22,'Mauris ullamcorper porttitor nisi, vitae congue justo volutpat sed.','2017-02-04','19:26:52',2),(23,'Curabitur maximus quam non imperdiet hendrerit.','2017-02-04','19:51:02',1),(24,'Etiam imperdiet fermentum mauris, sit amet efficitur augue aliquet non.','2017-02-04','20:03:55',1),(25,'Praesent interdum mauris quis vehicula consectetur.','2017-02-04','20:33:14',12);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'James',21),(2,'John',25),(3,'Robert',24),(4,'Michael',19),(5,'William',18),(6,'David',17),(7,'Richard',16),(8,'Charles',30),(9,'Joseph',29),(10,'Thomas',26),(11,'Christopher',29),(12,'Daniel',33),(13,'Paul',34),(14,'Mark',38),(15,'Donald',86);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'twitter'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-04 19:34:30

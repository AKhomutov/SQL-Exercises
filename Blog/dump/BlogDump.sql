-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
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
-- Table structure for table `binder`
--

DROP TABLE IF EXISTS `binder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binder` (
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  UNIQUE KEY `posts_id_tags_id_UNIQUE` (`posts_id`,`tags_id`),
  KEY `fk_binder_posts_idx` (`posts_id`),
  KEY `fk_binder_tags_idx` (`tags_id`),
  CONSTRAINT `fk_binder_posts` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_binder_tags1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binder`
--

LOCK TABLES `binder` WRITE;
/*!40000 ALTER TABLE `binder` DISABLE KEYS */;
INSERT INTO `binder` VALUES (1,6),(2,5),(3,6),(4,4),(5,2),(6,1),(7,3),(8,3),(11,3),(12,1),(12,2),(16,4),(16,5),(17,6),(18,2),(18,3),(18,4),(18,5),(19,1),(19,3),(19,6),(20,1),(20,2),(20,3),(20,4),(20,5),(20,6);
/*!40000 ALTER TABLE `binder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` varchar(10000) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_posts_author1_idx` (`user_id`),
  CONSTRAINT `fk_posts_author1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Once in a blue moon','Phasellus tempor sed odio ac mattis. Nunc vel tellus nisl. Vestibulum vulputate velit elit, a blandit leo luctus vitae. Integer commodo risus quis aliquam vulputate.','2017-01-25',5),(2,'Missed the boat','Morbi erat dolor, pellentesque in iaculis sit amet, aliquet et urna. Duis suscipit aliquet volutpat. Proin eu elit eget elit porttitor pharetra.','2017-01-26',3),(3,'Hit the nail on the head ','Mauris pellentesque mi elit, non maximus ante ullamcorper a. Curabitur eu urna nisi. Nunc auctor metus ut lectus volutpat, a efficitur nisi tempor. ','2017-01-27',6),(4,'Curiosity killed the cat ','Aliquam iaculis lectus sed vehicula malesuada. Ut vel vulputate ante, in lobortis erat. Nunc blandit orci ultricies, imperdiet ligula fermentum, pulvinar ex. Nullam id dignissim dolor.','2017-01-28',3),(5,'Can\'t judge a book by its cover ','Nullam aliquet ipsum purus. Aenean tincidunt diam sed arcu ultricies, id porttitor sem gravida. Integer a aliquam mauris, sed rhoncus quam. Suspendisse viverra euismod ullamcorper.','2017-01-28',3),(6,'Caught between two stools','Mauris egestas maximus risus, vitae efficitur mauris sagittis quis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis fermentum ante quam, nec tincidunt massa venenatis ac. Aliquam quis ante suscipit, ultricies libero at, mattis arcu.','2017-01-29',4),(7,'Burning the midnight oil','Etiam non mi quis leo commodo semper. Aliquam lacinia finibus sapien iaculis lacinia. Mauris non ligula erat. Quisque id accumsan dolor, sed ultrices mauris.','2017-01-29',4),(8,'Add insult to injury','Nullam pulvinar arcu justo, ullamcorper sagittis dui hendrerit sed. Phasellus nec sagittis orci, vitae iaculis justo.','2017-01-29',4),(9,'Ball is in your court ','Suspendisse cursus risus vitae eros fringilla vestibulum sed a dolor. Morbi interdum iaculis nulla ac ultricies.','2017-01-29',7),(10,'A hot potato','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget orci ac massa efficitur placerat pulvinar sed sapien.','2017-01-30',7),(11,'Random text','Sed nec lacinia libero. Fusce porta, nunc vitae blandit bibendum, enim justo malesuada ante, nec ornare lorem nulla eget ante.','2017-01-31',4),(12,'My post','Nam posuere cursus risus, in condimentum diam molestie at. Donec lacinia accumsan augue vitae hendrerit.','2017-01-31',2),(13,'Blog db','Ut varius erat ante, eget lobortis urna tincidunt vel. Vivamus augue sapien, porttitor eu pharetra eget, egestas vel enim. Etiam sed neque arcu.','2017-02-01',6),(14,'Twitter db','Nullam ornare tincidunt mattis. Morbi sit amet blandit mauris. Praesent egestas, sapien quis tristique vehicula, mauris nulla posuere mauris, et rutrum lectus enim ut nisl.','2017-02-02',7),(15,'Another post','Fusce eleifend iaculis ligula at condimentum. Phasellus sed lectus vel risus laoreet ultricies nec quis arcu. Suspendisse potenti.','2017-02-02',6),(16,'Godlike title','Quisque dictum tortor sit amet lorem tempor, in blandit risus faucibus. In aliquam eleifend egestas. In gravida cursus semper. ','2017-02-03',2),(17,'Posts_id and tags_id have only uniqe combinations','Nullam id nisi felis. Duis odio elit, maximus sed diam fermentum, bibendum tristique augue.','2017-02-03',5),(18,'Starts with \"S\" last time','Ut nec tincidunt lacus. Morbi nisl mi, blandit et turpis at, vestibulum ultrices dolor. Interdum et malesuada fames ac ante ipsum primis in faucibus.','2017-02-04',1),(19,'Starts with \"S\" again','Integer in lacus magna. Etiam sagittis aliquam tincidunt. Cras tempus consequat est et imperdiet. Vivamus purus est, porttitor at orci nec, imperdiet efficitur mi','2017-02-04',1),(20,'Starts with \"S\". Should be 2 more','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas egestas metus felis, sit amet rutrum metus pretium ut. Vestibulum euismod ipsum purus, nec pretium magna commodo eu. Nunc dapibus, ante eu interdum vulputate, risus ex euismod dui, sed condimentum lectus urna ut sapien.','2017-02-04',2);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `tag_name_UNIQUE` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'tag_1'),(2,'tag_2'),(3,'tag_3'),(4,'tag_4'),(5,'tag_5'),(6,'tag_6');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John'),(2,'Jack'),(3,'Jacob'),(4,'Jason'),(5,'Jeffrey'),(6,'James'),(7,'Jake');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-04 17:31:34

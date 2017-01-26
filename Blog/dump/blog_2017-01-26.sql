# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.6.34)
# Database: blog
# Generation Time: 2017-01-26 18:11:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table binder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `binder`;

CREATE TABLE `binder` (
  `posts_id` int(11) DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  KEY `fk_binder_posts_idx` (`posts_id`),
  KEY `fk_binder_tags1_idx` (`tags_id`),
  CONSTRAINT `fk_binder_posts` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_binder_tags1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `binder` WRITE;
/*!40000 ALTER TABLE `binder` DISABLE KEYS */;

INSERT INTO `binder` (`posts_id`, `tags_id`)
VALUES
	(1,1),
	(1,2),
	(2,3),
	(2,4),
	(2,1),
	(3,2),
	(6,3),
	(6,4),
	(6,1),
	(8,2),
	(9,3),
	(9,4),
	(10,1),
	(10,2),
	(10,3);

/*!40000 ALTER TABLE `binder` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `body` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `title`, `body`, `date`)
VALUES
	(1,'This post is last','Super blog is finished','2017-01-26'),
	(2,'Almost last post','Figure 9.10 A Table on an EER Diagram','2017-01-26'),
	(3,'Some stuff','Clicking the mouse on this icon changes the m','2017-01-26'),
	(4,'Continuing posting things','Tables can also be added to an EER Diagram us','2017-01-25'),
	(5,'This is also a middle','You must be logged in to post a comment.','2017-01-25'),
	(6,'This is almost a middle','With the exception of the deletion item, thes','2017-01-24'),
	(7,'Doing posts','Right-clicking a table opens a pop-up menu wi','2017-01-23'),
	(8,'Posting smth','As shown in the preceding diagram, the primar','2017-01-23'),
	(9,'Another post','Choosing the table tool changes the contents ','2017-01-23'),
	(10,'This post is first','Super blog is started','2017-01-23');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `tag_name`)
VALUES
	(1,'first tag'),
	(2,'second tag'),
	(3,'third tag'),
	(4,'fourth tag');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

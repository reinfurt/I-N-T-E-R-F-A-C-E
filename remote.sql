-- MySQL dump 10.13  Distrib 5.6.23, for FreeBSD8.2 (amd64)
--
-- Host: db153.pair.com    Database: reinfurt_interface
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `object` int(10) unsigned DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'jpg',
  `caption` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,0,'2015-08-07 12:40:53','2015-09-18 22:00:54',5,NULL,1,'png',''),(2,1,'2015-08-07 12:43:23','2015-08-07 12:47:48',6,NULL,1,'jpg','The Interface Experience'),(3,1,'2015-08-07 12:45:12','2015-08-07 12:48:08',7,NULL,1,'jpg','From Sundials to Atomic Clocks'),(4,1,'2015-08-07 12:46:40','2015-09-18 18:24:27',8,NULL,1,'jpg','By Design'),(5,1,'2015-09-18 17:51:45','2015-09-18 18:19:25',9,NULL,1,'jpg','Design Interface'),(6,1,'2015-09-18 17:55:45','2015-09-18 18:20:15',10,NULL,1,'jpg','Designing Interactions'),(7,1,'2015-09-18 17:57:27','2015-09-18 18:20:25',11,NULL,1,'jpg','A Note on the Time'),(8,0,'2015-09-18 17:59:57','2015-09-18 21:14:50',12,NULL,1,'png','In the Beginning was the Command Line'),(9,1,'2015-09-18 18:05:16','2015-09-18 18:19:49',13,NULL,1,'jpg','Reading a Wave'),(10,1,'2015-09-18 18:11:14','2015-09-18 18:24:12',14,NULL,1,'jpg','Material Design'),(11,1,'2015-09-18 18:14:44','2015-09-18 18:19:40',15,NULL,1,'jpeg','Human Interface Guidelines (Watch OS)'),(12,1,'2015-09-18 18:17:13','2015-09-18 18:19:02',16,NULL,1,'jpg','Spatial Data Management'),(13,1,'2015-09-18 18:27:45','2015-09-18 18:29:01',17,NULL,1,'jpg','A Primer of Visual Literacy'),(14,1,'2015-09-18 21:14:50','2015-09-18 21:14:56',12,NULL,1,'jpg','In the Beginning was the Command Line'),(15,1,'2015-09-18 21:31:10','2015-09-18 21:31:26',18,NULL,1,'jpg','Code: An Essay'),(16,0,'2015-09-18 21:59:57','2015-09-20 17:19:11',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e'),(17,0,'2015-09-18 21:59:57','2015-09-18 22:11:19',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e'),(18,1,'2015-09-18 22:06:40','2015-09-18 22:07:12',19,NULL,1,'jpg','I am a Handle'),(19,1,'2015-09-18 23:09:11','2015-09-19 21:41:44',20,NULL,1,'jpg','Einstein\'s Clocks: The Place of Time'),(20,1,'2015-09-19 21:33:44','2015-09-19 21:34:44',22,NULL,1,'jpg','What is this X Hour?'),(21,1,'2015-09-19 21:34:13','2015-09-19 21:34:55',21,NULL,1,'jpg','University of Reading'),(22,1,'2015-09-19 21:38:19','2015-09-19 21:38:40',23,NULL,1,'jpg','The Tetracone'),(23,0,'2015-09-19 21:38:32','2015-09-19 21:38:56',23,NULL,1,'jpg',''),(24,0,'2015-09-20 17:19:00','2015-09-20 17:22:42',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e'),(25,1,'2015-09-20 17:22:28','2015-09-20 17:22:42',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `rank` int(10) unsigned DEFAULT NULL,
  `name1` tinytext,
  `name2` tinytext,
  `address1` text,
  `address2` text,
  `city` tinytext,
  `state` tinytext,
  `zip` tinytext,
  `country` tinytext,
  `phone` tinytext,
  `fax` tinytext,
  `url` tinytext,
  `email` tinytext,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `head` tinytext,
  `deck` blob,
  `body` blob,
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,1,'2015-08-07 12:35:45','2015-08-07 12:35:45',10,'Class',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(2,1,'2015-08-07 12:35:59','2015-08-07 12:35:59',20,'Library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(3,1,'2015-08-07 12:36:31','2015-09-20 14:04:50',10,'Introduction',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(4,1,'2015-08-07 12:37:29','2015-09-20 14:51:18',20,'Class Schedule',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','September 22\r\nIntroduction		\r\nLecture — “I-n-t-e-r-f-a-c-e” \r\nExercise — What time is it?\r\n\r\nSeptember 29\r\nAssignment 1\r\nLecture —  “Zapotecs and Pulsars”\r\nExercise — A clock, *now* . . .\r\nReading — From Sundials to Atomic Clocks, James Jespersen and Jane Fitz-Randolph\r\n\r\nOctober 6\r\nAssignment 1 continues\r\nStudent presentations begin\r\nLecture — “Olivetti’s Interfaces”\r\nExercise — 20  Questions\r\nReading — Design Interface, Gianni Barbacetto, “By Design,”Alice Rawsthorne\r\n\r\nOctober 13\r\nAssignment 2\r\nStudent presentations end		\r\nLecture — ”Bruno Munari, c.1962”\r\nDemonstration — Swatch, @internet time, and Ivrea\r\nExercise — Reading a wave\r\nReading —  “The Tetracone,” “What is this X Hour?,” Bruno Munari, “Reading a Wave,” Italo Calvino\r\n\r\nOctober 20\r\nAssignment 2\r\nLecture — “Press Start to Begin (on the Metrocard AVM)”\r\nExercise — Please swipe your card . . . \r\nDemonstration — 12 o’clocks, John Maeda, Reactive Books\r\nReading — Designing Interactions, Bill Moggridge,  The Interface Experience, Kimon Keramidas\r\n\r\nOctober 27\r\nField trip, New York City\r\nReading — “Material design,” Google inc., “I am a Handle,” Rob Giampietro, “A Primer of Visual Literacy,” Donis A. Dondis\r\n\r\nNovember 3\r\nFall break, no class\r\n\r\nNovember 10\r\nAssignment 2 continues\r\nProject review, in-class critique\r\nLecture — “Hans Hilfiker and the Swiss Railway Clock”\r\nDemonstration — Bloom, Karel Martens’ clocks, Halmos\r\nReading — “Einstein’s Clocks: The Place of Time,” Peter Gallison\r\n\r\nNovember 17\r\nAssignment 3\r\nGuest lecture — “Ten Minutes after Ten o’Clock,” Stuart Bailey\r\nReading — “A Note on the Time,” Dexter Sinister, “University of Reading,” Stuart Bailey\r\n\r\nNovember 24\r\nAssignment 3 continues\r\nLecture — “You Will (past predictions for future interfaces)”\r\nDemonstration — Macintosh debut keynote\r\nReading — Human Interface Guidelines (WatchOS), Apple Computer,  “Spatial Data Management,” Muriel Cooper, Richard Bolt, Nicholas Negroponte\r\n\r\nDecember 1\r\nAssignment 3 continues\r\nProject review, in-class critique\r\nLecture — “Eno, Bloom, and The Clock of the Long Now”\r\nDemonstration — Christian Marclay, The Clock\r\nReading — “Code: An Essay,” Paul Ford\r\n\r\nDecember 8\r\nAssignment 3 continues\r\nIndividual meetings and class discussion\r\nLecture — “Put that there.*” \r\nReading — In the Beginning was the Command Line, Neal Stephenson\r\n\r\nDecember 15\r\nAssignment 3 ends\r\nFinal review of all work from the semester with visiting critics \r\n\r\nJanuary 4\r\nFinal portfolio due at 1:30 pm',''),(5,1,'2015-08-07 12:40:11','2015-09-20 17:22:42',NULL,'Syllabus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'I-n-t-e-r-f-a-c-e','<a href = \'MEDIA/PDF/I-n-t-e-r-f-a-c-e.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(6,1,'2015-08-07 12:43:22','2015-09-18 22:01:24',40,'The Interface Experience',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By KimonKeramidas','<a href = \'MEDIA/PDF/The-Interface-Experience.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n\r\n<a href=\"http://interface-experience.org\" target=\"new\">http://interface-experience.org</a>',''),(7,1,'2015-08-07 12:45:12','2015-09-19 21:39:38',10,'From Sundials to Atomic Clocks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By James Jespersen & Jane Fitz-Randolph','<a href = \'MEDIA/PDF/From-Sundials-to-Atomic-Clocks.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(8,1,'2015-08-07 12:46:40','2015-09-20 14:32:22',25,'By Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Alice Rawsthorne','<a href = \'MEDIA/PDF/By-Design.pdf\' target=\'_BLANK\'>Download the PDF here.</a>\r\n\r\nOriginally appeared in Frieze, July-August 2015.\r\n',''),(9,1,'2015-09-18 17:51:45','2015-09-19 21:39:47',20,'Design Interface',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Gianni Barbacetto','<a href = \'MEDIA/PDF/Design-Interface.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(10,1,'2015-09-18 17:55:45','2015-09-19 21:40:43',40,'Designing Interactions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Bill Moggridge','<a href = \'MEDIA/PDF/Designing-Interactions.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(11,1,'2015-09-18 17:57:27','2015-09-19 21:41:54',70,'A Note on the Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Dexter Sinister','<a href = \'MEDIA/PDF/A-Note-on-the-Time.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(12,1,'2015-09-18 17:59:57','2015-09-19 21:42:46',100,'In the Beginning was the Command Line',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Neal Stephenson','<a href = \'MEDIA/PDF/In-the-Beginning-was-the-Command-Line.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(13,1,'2015-09-18 18:05:16','2015-09-18 22:01:59',30,'Reading a Wave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Italo Calvino','<a href = \'MEDIA/PDF/Reading-a-Wave.pdf\' target=\'_BLANK\'>Download the PDF here.</a>\r\n',''),(14,1,'2015-09-18 18:11:14','2015-09-20 14:09:11',50,'Material Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Google, inc.','<a href = \'https://www.google.com/design/spec/material-design/introduction.html\' target=\'_BLANK\'>Read online here.</a>',''),(15,1,'2015-09-18 18:14:44','2015-09-20 14:08:59',80,'Human Interface Guidelines (Watch OS)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Apple Computer','<a href = \'https://developer.apple.com/watch/human-interface-guidelines/\' target=\'_BLANK\'>Read online here.</a>',''),(16,1,'2015-09-18 18:17:13','2015-09-19 21:42:07',80,'Spatial Data Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Dr. Richard Bolt, Architecture Machine Group, Massachusetts Institute of Technology','<a href = \'MEDIA/PDF/Spatial-Data-Management.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(17,1,'2015-09-18 18:27:45','2015-09-20 14:23:47',55,'A Primer of Visual Literacy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Donis A. Dondis, designed by Muriel Cooper and published by MIT Press 1973','<a href = \'MEDIA/PDF/A-Primer-of-Visual-Literacy.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(18,1,'2015-09-18 21:31:10','2015-09-19 21:42:36',90,'Code: An Essay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Paul Ford','<a href = \'MEDIA/PDF/Code-an-Essay.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(19,1,'2015-09-18 22:06:40','2015-09-19 21:41:30',50,'I am a Handle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Rob Giampietro','<a href = \'MEDIA/PDF/I-am-a-Handle.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(20,1,'2015-09-18 23:09:11','2015-09-19 21:41:44',60,'Einstein\'s Clocks: The Place of Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Peter Galison','<a href = \'MEDIA/PDF/The-Place-of-Time.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(21,1,'2015-09-19 21:29:30','2015-09-19 21:43:08',70,'University of Reading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Stuart Bailey','<a href = \'MEDIA/PDF/University-of-Reading.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(22,1,'2015-09-19 21:30:07','2015-09-20 14:07:49',30,'What is this X Hour?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Bruno Munari','<a href = \'MEDIA/PDF/What-is-this-X-Hour.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(23,1,'2015-09-19 21:30:38','2015-09-19 21:40:11',30,'The Tetracone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Bruno Munari','<a href = \'MEDIA/PDF/The-Tetracone.pdf\' target=\'_BLANK\'>Download the PDF here.</a>','');
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wires`
--

DROP TABLE IF EXISTS `wires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wires` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `fromid` int(10) unsigned DEFAULT NULL,
  `toid` int(10) unsigned DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '1',
  `notes` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wires`
--

LOCK TABLES `wires` WRITE;
/*!40000 ALTER TABLE `wires` DISABLE KEYS */;
INSERT INTO `wires` VALUES (1,1,'2015-08-07 12:35:45','2015-08-07 12:35:45',0,1,1,NULL),(2,1,'2015-08-07 12:35:59','2015-08-07 12:35:59',0,2,1,NULL),(3,1,'2015-08-07 12:36:31','2015-08-07 12:36:31',1,3,1,NULL),(4,1,'2015-08-07 12:37:29','2015-08-07 12:37:29',1,4,1,NULL),(5,1,'2015-08-07 12:40:11','2015-08-07 12:40:11',2,5,1,NULL),(6,1,'2015-08-07 12:43:22','2015-08-07 12:43:22',2,6,1,NULL),(7,1,'2015-08-07 12:45:12','2015-08-07 12:45:12',2,7,1,NULL),(8,1,'2015-08-07 12:46:40','2015-08-07 12:46:40',2,8,1,NULL),(9,1,'2015-09-18 17:51:45','2015-09-18 17:51:45',2,9,1,NULL),(10,1,'2015-09-18 17:55:45','2015-09-18 17:55:45',2,10,1,NULL),(11,1,'2015-09-18 17:57:27','2015-09-18 17:57:27',2,11,1,NULL),(12,1,'2015-09-18 17:59:57','2015-09-18 17:59:57',2,12,1,NULL),(13,1,'2015-09-18 18:05:16','2015-09-18 18:05:16',2,13,1,NULL),(14,1,'2015-09-18 18:11:14','2015-09-18 18:11:14',2,14,1,NULL),(15,1,'2015-09-18 18:14:44','2015-09-18 18:14:44',2,15,1,NULL),(16,1,'2015-09-18 18:17:13','2015-09-18 18:17:13',2,16,1,NULL),(17,1,'2015-09-18 18:27:45','2015-09-18 18:27:45',2,17,1,NULL),(18,1,'2015-09-18 21:31:10','2015-09-18 21:31:10',2,18,1,NULL),(19,1,'2015-09-18 22:06:40','2015-09-18 22:06:40',2,19,1,NULL),(20,1,'2015-09-18 23:09:11','2015-09-18 23:09:11',2,20,1,NULL),(21,1,'2015-09-19 21:29:30','2015-09-19 21:29:30',2,21,1,NULL),(22,1,'2015-09-19 21:30:07','2015-09-19 21:30:07',2,22,1,NULL),(23,1,'2015-09-19 21:30:38','2015-09-19 21:30:38',2,23,1,NULL);
/*!40000 ALTER TABLE `wires` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-20 20:28:42

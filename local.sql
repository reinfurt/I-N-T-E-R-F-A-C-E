-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: interface_local
-- ------------------------------------------------------
-- Server version	5.6.16

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,0,'2015-08-07 12:40:53','2015-09-18 22:00:54',5,NULL,1,'png',''),(2,1,'2015-08-07 12:43:23','2015-08-07 12:47:48',6,NULL,1,'jpg','The Interface Experience'),(3,1,'2015-08-07 12:45:12','2015-08-07 12:48:08',7,NULL,1,'jpg','From Sundials to Atomic Clocks'),(4,1,'2015-08-07 12:46:40','2015-09-18 18:24:27',8,NULL,1,'jpg','By Design'),(5,1,'2015-09-18 17:51:45','2015-09-18 18:19:25',9,NULL,1,'jpg','Design Interface'),(6,1,'2015-09-18 17:55:45','2015-09-18 18:20:15',10,NULL,1,'jpg','Designing Interactions'),(7,1,'2015-09-18 17:57:27','2015-09-18 18:20:25',11,NULL,1,'jpg','A Note on the Time'),(8,0,'2015-09-18 17:59:57','2015-09-18 21:14:50',12,NULL,1,'png','In the Beginning was the Command Line'),(9,1,'2015-09-18 18:05:16','2015-09-18 18:19:49',13,NULL,1,'jpg','Reading a Wave'),(10,1,'2015-09-18 18:11:14','2015-09-18 18:24:12',14,NULL,1,'jpg','Material Design'),(11,1,'2015-09-18 18:14:44','2015-09-18 18:19:40',15,NULL,1,'jpeg','Human Interface Guidelines (Watch OS)'),(12,1,'2015-09-18 18:17:13','2015-09-18 18:19:02',16,NULL,1,'jpg','Spatial Data Management'),(13,1,'2015-09-18 18:27:45','2015-09-18 18:29:01',17,NULL,1,'jpg','A Primer of Visual Literacy'),(14,1,'2015-09-18 21:14:50','2015-09-18 21:14:56',12,NULL,1,'jpg','In the Beginning was the Command Line'),(15,1,'2015-09-18 21:31:10','2015-09-18 21:31:26',18,NULL,1,'jpg','Code: An Essay'),(16,1,'2015-09-18 21:59:57','2015-09-18 22:00:54',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e'),(17,0,'2015-09-18 21:59:57','2015-09-18 22:11:19',5,NULL,1,'jpg','I-n-t-e-r-f-a-c-e'),(18,1,'2015-09-18 22:06:40','2015-09-18 22:07:12',19,NULL,1,'jpg','I am a Handle'),(19,1,'2015-09-18 23:09:11','2015-09-19 21:41:44',20,NULL,1,'jpg','Einstein\'s Clocks: The Place of Time'),(20,1,'2015-09-19 21:33:44','2015-09-19 21:34:44',22,NULL,1,'jpg','What is this X Hour?'),(21,1,'2015-09-19 21:34:13','2015-09-19 21:34:55',21,NULL,1,'jpg','University of Reading'),(22,1,'2015-09-19 21:38:19','2015-09-19 21:38:40',23,NULL,1,'jpg','The Tetracone'),(23,0,'2015-09-19 21:38:32','2015-09-19 21:38:56',23,NULL,1,'jpg','');
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
INSERT INTO `objects` VALUES (1,1,'2015-08-07 12:35:45','2015-08-07 12:35:45',10,'Class',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(2,1,'2015-08-07 12:35:59','2015-08-07 12:35:59',20,'Library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','',''),(3,1,'2015-08-07 12:36:31','2015-09-19 21:54:35',10,'Introduction',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','Dial +44 20 3598 2801, and you’ll hear this:\r\n\r\nAt the third stroke, the time will be six forty-seven and ten seconds.  \r\n. . . [beep] . . . [beep] . . . [beep].\r\n\r\nIt’s a “speaking clock,” an automated electronic announcement which provides the current time. The distinct, British accent belongs to Pat Simmons, a former London telephone exchange employee who spoke the time from 1963 – 1985. Simmons followed Jane Cain, the “golden voice” of the first British telephone time system starting in 1936. That first setup was a room-sized mechanism of electric motors and gears which produced an automated time announcement from glass disc recordings of Ms. Cain reading the parts of numbers. (Between 1936 and 1963, dialing “T-I-M” from a UK telephone set this elaborate machine into motion.) Before this, speaking clocks were delivered live, by an operator sitting in front of a clock face (or two), answering phone calls and reading out what time it is. \r\n\r\nOf course what you hear *now* when you call the number above depends on exactly when you call. And the voice, well that’s not quite so live either; Simmons spoke the clock only from 1963 until 1985. The service up now is a software simulation run by speaking clock enthusiasts at telephonesuk.co.uk. This speaking clock is clearly an anachronism, but, it also provides a crisp example of something very contemporary — an interface.\r\n\r\nWhatever “lies between” is called interface, whatever allows us to link two different elements, to reconcile them, to put them into communication.\r\n \r\nThis definition was offered in 1987 by Italian critic Giancarlo Barbarcetto in his introduction to Design Interface. Barbacetto’s book chronicled Olivetti corporation’s early attempts in designing user controls for photocopiers, computers, typewriters, and calculatiors. The volume place this design task in a broad cultural, and temporal, context. Appearing opposite Barbacetto’s introduction is a reproduction of the Rosetta Stone, offered up as a kind of orginal (ur-) interface, a shared surface which facilitates contact and communication between otherwise unreconcileable languages and the cultures from which they came. \r\n\r\nLike the Rosetta Stone, an interface is inevitably a product of its culture. It is made in a specific time and place to be used in a specific time and place and the design decisions that go into that interface inevitably reveal certain shared conventions, assumptions, and histories. An interface designed *now* will not necessarily work 20 years in the future. \r\n\r\n“Well, of course,” you say. \r\n\r\nBut it is not just only technical considerations, but cultural assumptions which might be an interface’s Achilles heel. Imagine trying to explain the iPhone messages interface to someone in 1971, or even in 2004. Easy enough, but the nuance would be lost. It would be completely unclear why tapping out a message on a virtual keyboard on a portable phone would be a useful thing to do. 30 years in the future, it might be similarly illegible. \r\n\r\n“Interface” is an extraordinarily elastic word. Definitions from fields as diverse as chemistry, theatre, fashion, and computer science describe interface as “a shared boundary,” “a contact surface,” “a border condition,” “a process or active threshold.” Barbacetto calls “interface” a magic word and, I think, got it quite right in identifying it as something that lies between. But all of these definititions share a central idea — an interface is a thing in and of itself. Therefore, its design decisions change not only what it looks like, but also how it works. And further, these interfaces have the possibility of conveying more than simply utility, they may also transmit a point of view. Interfaces now surround us, manifested in compiled code, running on silicon, and fronting the computer services we all use, all the time. So, we had better understand at least a little about how they are made.\r\n\r\nThe June 15, 2015 issue of Bloomberg BusinessWeek was given over to a single text by writer and computer programmer, Paul Ford. “Code: An Essay” presents fundamentals of programming languages and techniques for a broad audience, with depth and finesse. In its introduction, Ford offers a concise and surprisingly robust definition of a computer:\r\n\r\nA computer is a clock with benefits.\r\n\r\nand continues . . .\r\n\r\nThey all work the same, doing second-grade math, one step at a time: Tick, take a number and put it in box one. Tick, take another number, put it in box two. Tick, operate (an operation might be addition or subtraction) on those two numbers and put the resulting number in box one. Tick, check if the result is zero, and if it is, go to some other box and follow a new set of instructions. A computer’s processing power is even measured by the rate of its CPU, called “clock speed.”\r\n\r\nIf your computer is (already) fundamentally a clock, then clearly the telephone service you dialed at the beginning of this essay is more of an antique curiosity than working tool. Even a regular wrist watch seems like a gentile affordance when your phone, your laptop, and every message you send through these already registers the time. And in the face of all this, the Apple Watch arrived last spring. Is it some kind of cutting edge anachronism?\r\n\r\nWell, it *does* have an extremely challenging interface design problem. Its touchscreen is tiny, screen real estate is limited, batteries are finite, and fingers are not shrinking any time soon. The ways in which Watch OS software solves many of these interface design issues is instructive. The device’s screen lights only when you raise your wrist to look at it. The watch’s face can be almost instantly swapped out with a strong push and a swipe. The  watch reveals its full range of utilities when you press its digital crown and this pulls up the Launcher, a kind of iOS home screen seen through a roving digital magnifying lens. From here, the watch will fluidly transform itself into an iPod, a mail reader, weather station, text messager, and so on. What is interesting to me is not so much what the Watch can do, but rather how what it can do is all packaged behind its familiar clock interface.\r\n\r\n. . .\r\n\r\nStanding alone on a train platform this summer in the small Swiss town of St. Margarethen one morning around 5:30 am, I noticed two station clocks in my line of sight. These clocks were (of course?) the iconic Swiss Railway Clocks designed by Hans Hilfiker in 1944. The Swiss Railway Clock is a graphically concise clock face with no numbers, only bold black strokes marking hours, smaller (still bold) strokes for minutes, and two workman-like clock arms. Seconds are registered by a bright red lollipop, whose distinctive form was added in 1953, based on the shape of an engineer’s signalling disk used to indicate when the train is clear to depart the station. This resulting clock face design is austere, specific, and exagerratedly functional. It is so distinctive that Apple borrowed it for the clock app on iPad before being sued by the Swiss Railways before eventually settling on a 17m dollar licensing fee. (The offending interface has since been removed from iOS.)\r\n\r\n(“Swiss”-ness of the interface graphics...)\r\n\r\nAnyway, staring at the two clocks through my morning fog, I noticed that they were perfectly synchronized. I suppose, this shouldn’t be surprising, particularly in a train station (and even, a train station in Switzerland!) where inaccurate clocks would have definite consequences on how passengers get where they are going (communicate?). But as I stood there staring at the clock close to me and the one on another platform and across a set of tracks, I noticed something quite surprising. Each time the second hands reached the top (12), they paused in a decidedly long click. After which, the two continued again to sweep around the face. \r\n\r\nThis pause, turns out, allows the clocks to synchronize with one another via an electrical signal passed from a master clock in the station. (I later learned that the second hand pauses for ~1.5 seconds, leaving only 58.5 seconds to sweep the cface in that minute.) This makes sense. But what did not make so much sense was the result. As the second hand pauses to receive and process this signal for considerably more than a second, then the rest of that minute it is displaying seconds that are shorter than a second. \r\n\r\nYou can’t cheat time, even in a Swiss train station. Making time strange again, as a second is not really a second. The (dividend) time left over is for communication.(interface as boundary across which two systems communicate(!))\r\nit’s all a big lie. a fiction. the best interfaces are. yet it is exactly the clock’s authority (as well as accuracy) which makes it work. For the interface to work, we have to believe it can be trusted. \r\n\r\nIn the United States, as well as in Europe, the railroads drove consistent time keeping. Before trains connected distant points, each place had its own local time. And the bumps and gaps between towns could be significant. With railroads, it was impossible to set a timetable without shared points of reference at the origin and destination. (time zones?)\r\n\r\nBefore he was living in Princeton, Albert Einstein worked in a Swiss patent office, reviewing applications for (among other things) technical systems for coordinating time at a distance. It was here that he had his first insights into his specific and general theories of relativity.  (Peter Gallison, Empires of Time)\r\n\r\n+ in the frozen moment as the second hand returns, time bends and the clocks orchestrate a kind of interface between the central scheduling clock and each individual one (interface 1?)\r\n\r\nThe station clocks, all linked together to a master by radio signal, implement a very accurate (at least once a minute, anyway), but even more important, *consitstent* clock system for the Swiss Railroad System. With this coordination, you can be certain that, standing on a rural train platform in St. Margarethen or the central station in Zürich, that the clock you are looking at tells the same time. \r\n\r\n+ the blank stare of hilfiker’s minimal graphics produce a legible, useful, if not absolutely accurate interface between me and the Swiss train network (SBB?). Between me, now, and me, where I want to be in the future. Between where I am now and where I want to be in the future. (interface 2?)\r\n(if what lies between is an interface ...)\r\n\r\nThe clock face, its specifically Swiss design, minimal, very high contrast without numbers to clutter its layout, is what makes you *believe* that the time is accurate. (It communicates what now might be called “central brand attributes” of precision, efficiency, simplicity.) The bright red, exagerrat  ed second hand can be seen from a distance and you can visually scan that these clocks are in sync. (maybe dont write this in the first person) As I stood and looked at that individual clock on the early morning platform, I realized that through and its specific design, orchestrates an interface. It is an interface between me and the train, coordinating our communcication and assuring that, if I trust the simple interface, I will arrive where I am headed.  (I will get where I am going)',''),(4,1,'2015-08-07 12:37:29','2015-09-19 21:48:03',20,'Class Schedule',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'','September 22\r\nIntroduction		\r\nLecture — “I-n-t-e-r-f-a-c-e” \r\nExercise — What time is it?\r\n\r\nSeptember 29\r\nAssignment 1\r\nProject introduction\r\nLecture —  “Zapotecs and Pulsars”\r\nExercise — Find a clock, *now* . . .\r\nReading — From Sundials to Atomic Clocks, James Jespersen and Jane Fitz-Randolph\r\n\r\nOctober 6\r\nAssignment 1 continues\r\nStudent presentations begin\r\nLecture — “Olivetti’s Interfaces”\r\nExercise — Reading a wave\r\nReading — Design Interface, Gianni Barbacetto\r\n\r\nOctober 13\r\nAssignment 1 ends\r\nProject introduction\r\nLecture — ”Bruno Munari, c.1962”\r\nDemonstration — Swatch, @internet time, and Ivrea\r\nExercise — 20  Questions\r\nReading —  “The Tetracone,” “What is this X Hour?,” Bruno Munari, “Reading a Wave,” Italo Calvino\r\n\r\nOctober 20\r\nAssignment 2\r\nStudent presentations end\r\nBring in one example of an interface widget to share with the class\r\nLecture — “Press Start to Begin (on the Metrocard AVM)”\r\nExercise — Please swipe your card . . . \r\nDemonstration — 12 o’clocks, John Maeda, Reactive Books\r\nReading — Designing Interactions, Bill Moggridge,  The Interface Experience, Kimon Keramidas, “By Design,”Alice Rawsthorne, “A Primer of Visual Literacy,” Donis A. Dondis\r\n\r\nOctober 27\r\nField trip, New York City\r\nGoogle material design group\r\nReading — “Material design,” Google inc., “I am a Handle,” Rob Giampietro\r\n\r\nNovember 3\r\nFall break, no class\r\n\r\nNovember 10\r\nAssignment 2 continues\r\nProject review, in-class critique\r\nLecture — “Hans Hilfiker and the Swiss Railway Clock”\r\nDemonstration — Bloom, Karel Martens’ clocks, Halmos\r\nReading — “Einstein’s Clocks: The Place of Time,” Peter Gallison\r\n\r\nNovember 17\r\nAssignment 3\r\nGuest lecture — “Ten Minutes after Ten o’Clock,” Stuart Bailey\r\nReading — “A Note on the Time,” Dexter Sinister, “University of Reading,” Stuart Bailey\r\n\r\nNovember 24\r\nAssignment 3 continues\r\nLecture — “You Will (past predictions for future interfaces)”\r\nDemonstration — Macintosh debut keynote\r\nReading — Human Interface Guidelines (WatchOS), Apple Computer,  “Spatial Data Management,” Muriel Cooper, Richard Bolt, Nicholas Negroponte\r\n\r\nDecember 1\r\nAssignment 3 continues\r\nProject review, in-class critique\r\nLecture — “Eno, Bloom, and The Clock of the Long Now”\r\nDemonstration — Christian Marclay, The Clock\r\nReading — “Code: An Essay,” Paul Ford\r\n\r\nDecember 8\r\nAssignment 3 continues\r\nIndividual meetings and class discussion\r\nLecture — “Put that there.*” \r\nReading — In the Beginning was the Command Line, Neal Stephenson\r\n\r\nDecember 15\r\nAssignment 3 ends\r\nFinal review of all work from the semester with visiting critics \r\n\r\nJanuary 4\r\nFinal portfolio due at 1:30 pm',''),(5,1,'2015-08-07 12:40:11','2015-09-19 21:39:55',NULL,'Syllabus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'I-n-t-e-r-f-a-c-e','<a href = \'MEDIA/PDF/I-n-t-e-r-f-a-c-e.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(6,1,'2015-08-07 12:43:22','2015-09-18 22:01:24',40,'The Interface Experience',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By KimonKeramidas','<a href = \'MEDIA/PDF/The-Interface-Experience.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n\r\n<a href=\"http://interface-experience.org\" target=\"new\">http://interface-experience.org</a>',''),(7,1,'2015-08-07 12:45:12','2015-09-19 21:39:38',10,'From Sundials to Atomic Clocks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By James Jespersen & Jane Fitz-Randolph','<a href = \'MEDIA/PDF/From-Sundials-to-Atomic-Clocks.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(8,1,'2015-08-07 12:46:40','2015-09-19 21:41:01',40,'By Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Alice Rawsthorne','<a href = \'MEDIA/PDF/By-Design.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />\r\n\r\nOriginally appeared in Frieze, July-August 2015\r\n',''),(9,1,'2015-09-18 17:51:45','2015-09-19 21:39:47',20,'Design Interface',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Gianni Barbacetto','<a href = \'MEDIA/PDF/Design-Interface.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(10,1,'2015-09-18 17:55:45','2015-09-19 21:40:43',40,'Designing Interactions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Bill Moggridge','<a href = \'MEDIA/PDF/Designing-Interactions.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(11,1,'2015-09-18 17:57:27','2015-09-19 21:41:54',70,'A Note on the Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Dexter Sinister','<a href = \'MEDIA/PDF/A-Note-on-the-Time.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(12,1,'2015-09-18 17:59:57','2015-09-19 21:42:46',100,'In the Beginning was the Command Line',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Neal Stephenson','<a href = \'MEDIA/PDF/In-the-Beginning-was-the-Command-Line.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(13,1,'2015-09-18 18:05:16','2015-09-18 22:01:59',30,'Reading a Wave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Italo Calvino','<a href = \'MEDIA/PDF/Reading-a-Wave.pdf\' target=\'_BLANK\'>Download the PDF here.</a>\r\n',''),(14,1,'2015-09-18 18:11:14','2015-09-19 21:41:21',50,'Material Design',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Google, inc.','<a href = \'https://www.google.com/design/spec/material-design/introduction.html\' target=\'_BLANK\'>Read it here.</a>',''),(15,1,'2015-09-18 18:14:44','2015-09-19 21:42:26',80,'Human Interface Guidelines (Watch OS)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'By Apple Computer','https://developer.apple.com/watch/human-interface-guidelines/',''),(16,1,'2015-09-18 18:17:13','2015-09-19 21:42:07',80,'Spatial Data Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Dr. Richard Bolt, Architecture Machine Group, Massachusetts Institute of Technology','<a href = \'MEDIA/PDF/Spatial-Data-Management.pdf\' target=\'_BLANK\'>Download the PDF here.</a><br />',''),(17,1,'2015-09-18 18:27:45','2015-09-19 21:41:10',40,'A Primer of Visual Literacy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Donis A. Dondis, designed by Muriel Cooper and published by MIT Press 1973','<a href = \'MEDIA/PDF/A-Primer-of-Visual-Literacy.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(18,1,'2015-09-18 21:31:10','2015-09-19 21:42:36',90,'Code: An Essay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Paul Ford','<a href = \'MEDIA/PDF/Code-an-Essay.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(19,1,'2015-09-18 22:06:40','2015-09-19 21:41:30',50,'I am a Handle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Rob Giampietro','<a href = \'MEDIA/PDF/I-am-a-Handle.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(20,1,'2015-09-18 23:09:11','2015-09-19 21:41:44',60,'Einstein\'s Clocks: The Place of Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Peter Galison','<a href = \'MEDIA/PDF/The-Place-of-Time.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(21,1,'2015-09-19 21:29:30','2015-09-19 21:43:08',70,'University of Reading',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Stuart Bailey','<a href = \'MEDIA/PDF/University-of-Reading.pdf\' target=\'_BLANK\'>Download the PDF here.</a>',''),(22,1,'2015-09-19 21:30:07','2015-09-19 21:40:20',30,'What is this X Hour?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Bruno Munari','<a href = \'MEDIA/PDF/What-is-this-X-Hour?\' target=\'_BLANK\'>Download the PDF here.</a>',''),(23,1,'2015-09-19 21:30:38','2015-09-19 21:40:11',30,'The Tetracone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'by Bruno Munari','<a href = \'MEDIA/PDF/The-Tetracone.pdf\' target=\'_BLANK\'>Download the PDF here.</a>','');
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

-- Dump completed on 2015-09-19 21:58:18

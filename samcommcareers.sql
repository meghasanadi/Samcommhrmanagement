CREATE DATABASE  IF NOT EXISTS `db1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db1`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	5.0.15-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `content` longblob,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'sam','$2a$10$4eqIF5s/ewJwHK1p8lqlFOEm2QIA0S8g6./Lok.pQxqcxaBZYChRm','Sam','Smith','samy@xyz.com',NULL),(70,'meghasanadi','$2a$10$He.bZwwrelt.7V8aqLn1pOUpYXST132GgUietDAuBzfGnLXN1UtxG','megha','sanadi','meghakf@yahoo.com',NULL);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_user_profile`
--

DROP TABLE IF EXISTS `app_user_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user_user_profile` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`),
  CONSTRAINT `FK_APP_USER` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`),
  CONSTRAINT `FK_USER_PROFILE` FOREIGN KEY (`user_profile_id`) REFERENCES `user_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_user_profile`
--

LOCK TABLES `app_user_user_profile` WRITE;
/*!40000 ALTER TABLE `app_user_user_profile` DISABLE KEYS */;
INSERT INTO `app_user_user_profile` VALUES (70,1),(1,2);
/*!40000 ALTER TABLE `app_user_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_tbl`
--

DROP TABLE IF EXISTS `emp_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_tbl` (
  `id` int(11) NOT NULL,
  `address` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `telephone` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_tbl`
--

LOCK TABLES `emp_tbl` WRITE;
/*!40000 ALTER TABLE `emp_tbl` DISABLE KEYS */;
INSERT INTO `emp_tbl` VALUES (0,'qqq','qq','qq','qq'),(1,'dd','dd','dd','dd'),(2,'java','SSE','3-5 years','core java, automation testing'),(3,'Java developer','Software Engineer','1-2 years','Java, jdbc, j2ee'),(4,'Hadoop','Hadoop dev','2-3 years','hadoop, spark'),(5,'Hadoop Admin','Hadoop admin','7-10','advanced hadoop,kafka'),(6,'aa','aa','aa','aa');
/*!40000 ALTER TABLE `emp_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_seeker_application`
--

DROP TABLE IF EXISTS `job_seeker_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_seeker_application` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(20) default NULL,
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `phoneno` varchar(45) default NULL,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `position` varchar(45) default NULL,
  `salary_exp` varchar(45) default NULL,
  `noticeperiod` varchar(45) default NULL,
  `willingTorellocate` varchar(45) default NULL,
  `relocatelocation` varchar(45) default NULL,
  `pancard` varchar(45) default NULL,
  `curcompany` varchar(45) default NULL,
  `comments` varchar(100) default NULL,
  `Applied` varchar(45) default NULL,
  `date` varchar(45) default NULL,
  `experience` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_seeker_application`
--

LOCK TABLES `job_seeker_application` WRITE;
/*!40000 ALTER TABLE `job_seeker_application` DISABLE KEYS */;
INSERT INTO `job_seeker_application` VALUES (1,'meghasanadi','Megha','Sanadi','meghakf@gmail.com','989898989','2017-12-13','Female','SAMJID_02','2356','0-15days',NULL,NULL,'1234qwerqwe','samcomm','ddd','Applied','2017-12-18 12:47:57','6'),(2,'meghasanadi','Megha','Sanadi','meghakf@yahoo.com','909090909','2017-12-13','Female','SAMJID_01','90','0-15days',NULL,NULL,'wwwwwwww','samcomm','ww','Applied','2017-12-18 12:47:57','6'),(3,'meghasanadi','mm','mm','mm','mm','2017-12-13','Female','SAMJID_01','12','15-30days',NULL,NULL,'1234','122','rwa','Applied','2017-12-18 12:47:57','6');
/*!40000 ALTER TABLE `job_seeker_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tbl`
--

DROP TABLE IF EXISTS `job_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tbl` (
  `id` int(10) NOT NULL auto_increment,
  `job_name` varchar(45) default NULL,
  `date` timestamp NULL default NULL,
  `time` time default NULL,
  `keyskills` varchar(45) default NULL,
  `job_designation` varchar(45) default NULL,
  `job_description` text,
  `description` varchar(2000) default NULL,
  `experience` varchar(45) default NULL,
  `job_type` varchar(45) default NULL,
  `companyname` varchar(45) default NULL,
  `status` varchar(20) default NULL,
  `salary` varchar(45) default NULL,
  `functionalarea` varchar(3000) default NULL,
  `shortdescription` varchar(200) default NULL,
  `jobid` varchar(45) default NULL,
  `education` varchar(100) default NULL,
  `roles` varchar(1000) default NULL,
  `responsiblities` varchar(1000) default NULL,
  `responses` int(10) default NULL,
  `postedBy` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jobid_UNIQUE` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tbl`
--

LOCK TABLES `job_tbl` WRITE;
/*!40000 ALTER TABLE `job_tbl` DISABLE KEYS */;
INSERT INTO `job_tbl` VALUES (1,'System Engineer','2017-12-11 07:46:16',NULL,'Networking, C,C++','Bangalore','Ãƒ?Ã‚Â¢?Ãƒ?Ã‚Â¢	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','','1-2 years','full time',NULL,'Active','',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_02',NULL,NULL,NULL,0,'Sam'),(3,'Hadoop Analyst','2017-12-11 07:56:26',NULL,'Hadoop, Hive, Pig, HBase,Scoop,','Chennai','Primary Skills (Mandatory):\r\n<li>	Python, C/C++, Strong OOP concepts\r\n<li>	Development of user interface with QT\r\n<li>	Very good in software development and design with a scripting language Python, 4+ years of experience\r\n<li>	Very good in software development and design with 4+ years of experience in C, C++, GUI toolkit like QT(5)\r\n<li>	Strong aptitude\r\n<li>	Knowledge of Design Patterns\r\n<li>	Ability to quickly grasp complex products to understand the different layers of the product.\r\n<li>	Knowledge of coding guidelines and compliance.\r\n<li>	Good written and verbal communication skills\r\n<li>	Experience with Linux Operating system\r\n<li>	\r\nSecondary Skills (Good to have):\r\n<li>	HPC, Multithreading, OpenMP, MPI, CUDA\r\n<li>	Graphics, Geometry\r\n<li>	Familiarity with Agile development processes','SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','2-3 years','full time',NULL,'Active','9lpa',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_01',NULL,NULL,NULL,2,'Sam'),(4,'Hadoop Analyst','2017-12-11 08:07:00',NULL,'Hadoop, Advanced Hadoop','Bangalore','<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li><br>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\no	unflinching support to all level of companies enabling them to vie in their respective fields with IT enabled services precisely to \r\n<li>	accelerate its focus on software testing outsourcing and management. Now Samcomm has educational based solutions as yet another \r\n 	strategic area to unwind innovations prompted by its experience in IT industry spanning 14 yrs.!@#$%%^^&&&***(()\r\n<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\n','','7-11years','Fulltime',NULL,'Active','',NULL,'Short Description(50 word only),Short Description(50 word only),Short Description(50 word only)\r\n\r\n\r\n','SAMJID_03',NULL,NULL,NULL,0,'Sam');
/*!40000 ALTER TABLE `job_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_document`
--

DROP TABLE IF EXISTS `user_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_document` (
  `id` bigint(20) NOT NULL auto_increment,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) default NULL,
  `type` varchar(100) NOT NULL,
  `content` longblob NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `document_user` (`user_id`),
  CONSTRAINT `document_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_document`
--

LOCK TABLES `user_document` WRITE;
/*!40000 ALTER TABLE `user_document` DISABLE KEYS */;
INSERT INTO `user_document` VALUES (2,70,'JADHAVAMOLASHOKRAO[3_0].docx','develop','application/vnd.openxmlformats-officedocument.wordprocessingml.document','PK\0\0\0\0\0!\0ùh\"\0\0­\0\0\0[Content_Types].xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0´U\ËN\Ã0¼#ñ‘¯(q\Ë!”¤G¨Dù\0\×Ş´‰m\Ù\Û\×ß³I\Û!šˆ–\\\"E\Ñ\Î\Ì\Î\În\ÒÉ¶*£5ø ­\É\Ø8±Œ´J›E\Æ>f/ñ=‹\n£Di\rdlMò\ë«t¶s\"ª6!cKD÷ÀyK¨DH¬C_\n\ë+ô\ê\Ü	ù)ÀoG£;.­A0cÁòôx­ š\n¯¢\"¾±^ñ\ÂZ4!$Ç¢\Ç}]M1\á\\©¥@\Î\×Fı mQh	\Ê\ÊUETI\rç¼•µV•I}SCó<}‚B¬JŒ·¤mo‡‡2üõ\ĞfB•²°\Ô.t0t·uPvÒ¶»n˜3\Üi‘+¡\ÍQÿIfU\ÍÁ“¯ÿ?¦ºWDÀ]9DPö¸½ô`\Ô@I=\"wI yM½u\ÓV\\<¨7@Šiax\Ô\ĞFød R\0X\Ô#rWûÍ±@:>À›\çøb\Z˜^Ê‚\ÒL\ÌK¸˜\ï—ût€\î±ùû`\î\ï\Ò\æOZ†Ç³YWÿ’:\Şülò/\0\0\0ÿÿ\0PK\0\0\0\0\0!\0‘\Z·ó\0\0\0N\0\0\0_rels/.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Œ’\ÛJA†\ï\ßa\È}7\Û\n\"\Ò\Ù\ŞH¡w\"\ë„™\ìwÌ¤Ú¾½£ ºP\Û^\æô\ç\ËOÖ›ƒ›\Ô;§<¯aYÕ Ø›`G\ßkxm·‹PY\È[š‚g\rGÎ°ino\Ö/<‘”¡<Œ1«¢â³†A$>\"f3°£\\…È¾TºI	S‘\ÌõŒ«º¾\ÇôWš™¦\ÚY\rig\ï@µ\ÇX6_\Ö]7\Z~\nf\ï\ØË‰\Èao\Ù.b*lI\Ærj)õ,\Zl0\Ï%‘b¬\n6\ài¢\ÕõDÿ_‹…,	¡	‰\Ïó|uœZ^tÙ¢yÇ¯;!Y,}{ûCƒ³/h>\0\0ÿÿ\0PK\0\0\0\0\0!\06H•h \0\0¾\0\0\0word/_rels/document.xml.rels ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¬\Ô\ÍNƒ@ğ»‰\ï@ö.U«1]z1&½*>À\ÃG„Y²;Uy{\'6Pª\r½\ìqşdg~™6\Û\ï®\r>ÁºÆ q‰\007Eƒ•\ï\é\ËÍ£i,tk”À‰mr}µy…VruÓ»€» S¢&êŸ¤ty\rv¡\éùIil§‰K[\É^\çº¹Š¢µ´ó\"9\é\ì\n%\ì®\àù\é\Ğó\äË½MY69<›|\ßÒ™’\Ø\ÜP\Û\nH‰\ßò\Æ!C…<o¸õip@\Ä\ÛuGÆ˜,|Jƒ”ê¬­bŠ–+ŸGC\Ë/\Ót‡zi|\ìs<\î»,_\ÄQ0EKˆµO`†\æ[“%Â½OBiı1L\Ñ\â\Î\'\â²·Ÿ\Å,!òä¯“ü\0\0\0ÿÿ\0PK\0\0\0\0\0!\0föü;+\0\0\ß\Ú\0\0\0\0word/document.xml\ì}İ–›È²\æı¬5\ïÀ\ÒYkÖœuÊ¶ú­Ù¥3\è¯m»]»T\îŞ·e•\ØF \r¨\Ê\ÕWó\Zózó$‘$ˆT”H¨L_´\\AfD\ä?ù·ÿü¹6¥\'â¸†m\İ4Z\ï›\r‰Xº½4¬Ç›\Æ÷ûÙ»~Cr=\ÍZj¦m‘›\Æqÿ9ü\ïÿ\ío\Ï\×K[ß®‰\åIğË½~‚oW·¹şğÁ\ÕWd­¹\ï\í\r±\à\Ë\ÛYkü\é<~XkÎ\í\æn¯7šg,\Óğ^>\È\Íf·Ác\ß4¶u\Íñnm\è\í\Úş\ä\Ú~x0t\Â>‚_8Y\Ş\ëÿrÂ†L\ßøÁ!&ŒÁ¶Ü•±qƒ§­‹>\r¦¸\nò”6‰§µ\Ü÷¼\Éò¶¥£=?Ö¦?\ìg\ÛYn[\'®W\'ş—\á[Í´w3\â#\Â_dÿ\Î`$kÍ°\ÂÇ t\ìñ?d\Ş{`\Şÿ\İğQ»‰\0-† K{ù‚Ÿ\éù\Zdqyw\Óh6\'\Í^W7‚K·À\èfS\év\Ô\î4¼8!\Ú\Öôğ›ñ¨3´‚onñR¯\Õ(=ú†Í­ƒ/p\Ø\ÇÌ¶<¬¹ºa\Ü4ş \ÎR³4üñJµ\ÜÈ•txôÿ\î_ğõ“f\Ş4\äfƒ]\ãC\"\×>°WÀgğF¸N‰ÿ)\Çò|M\×èµ»\Ñt`\Ò\Æ!.qHc(%ÿ÷7˜€7\Äÿûd&Tm¶{j+/7\ä\róa\ãe³\"\ÂökMlĞ’\åN‚\â\Z‡Î´ÓšN8x`—¨,\Ôğb€ƒ[b\0*†\Ã\Ï\ê\ä£ú‡¤~ıöER\ç¿ı×ú{\ì*jÏš#yH\Ï‡\åÁL#Â¦(Í‰\Â\Ût\ÚV\àRD\Øk	?5\É¨¯N³\r¦\×óõƒ\á¸\Ş•i/\Ğ2ÿ\Ô\áªc\ãq\åùª§˜\"«†\n\Ë3Šd\åu˜i9BUZ“\É \à1\Åtv)Â´3t°}‰s7•3+tÛ´q\åRiMÿ–Np5J÷¯$\Û\'™e1°‘ó\Çô=”\éö\åñ,\ä¿F‘ƒÅ–ŒÏ¤s&i®øT|bIs@­pÁüJ›V¯\Ûiöì’Šp\Ë}Y£®\è¦ñ\'8‘\è\î»|úJ/kÖ”U\\ö±\ÖÿsM’\Òø6•\å\ŞhFô1H‘S¹\ru\Í4Ó†5nvºüB\ÇX\è\â\Ï;\Ö÷ÿÔ–+\í)m¸Yi*j÷?B„\Â\Ä\à7\âX/§­0–•\É\Î¦¶»±6£%õ¶\çÙ¸\â¨ZõV†u¿2ôó5°ş7mƒ\Ärÿ‚¨B›ş\Ë÷\Òi ƒj›†¶õl¶ƒG¾m3$§\\b\è0Wt#«\ÑÁ‰ÍµqaQ´©\\ªÆ’d\\0¡\Î\ê%ê¬¶\"·G¾\ïu´—l¦±h\ÔRF\n\Ä\â\Ë\Ğ¢¦5ü´œI½ZƒAS–\ín«\Å\r/V@`Sn‡1d^\Ù´¸ùü\í~\Ğ\Âi´À1\ÂlT\Îù\Ì?\"ŒQ5‡Gú¶ø\'\Ñ=\ã‰fr¿­\0“\â\×R“ù\Û)“Ù¥“‹q\"Cy\Å e¼Ü\Û=y”yJ=\îv_nıK‘)m\æŞ‹I€ \ÔjÁ\Í=ùÉ¢O;ól›\ân÷\Z­»7\r|\Û2ü‡¡HD1o;(\É{[\Òô•Aˆ¤I\Û5p—Q2,øö^`»\Ê}g;†–\î„r\"™\r:\ÉmY\éL›Å¼s‰7­4\ë\åJz^&¨ÿkk80÷‡aš®[Å©^Ö \İô$õ,R„#Ë­N·‚“8Q	¹Š\ç…ôt—D\Úz°›şpÂ³Ÿ5%\Ëòkû\Ù[Q\Öh\Ë\'\Í\Ò	İ··¨ô3\éWkˆ:¿\ç59%¦\"£¸r\n¯H0,-ª¡,\ãtş¡¡\ÄÏ·kH\Åx9\Ì\î´ğ‡\Æ$\";\Õ,µÛœ¨ÁØ–8¯Y~\Çô³%o˜n±¶k3\Î0ŸLx…‹ö\Õ|÷	7Mv\×@F\ÃœY	+°9\éeVÂ“–¢ôB3„’Š=!²XÂ¹\"†–R\Ã\Ó.>	>Š\á^t\ÒMC\é\Ò\Ø>ü$¸SˆV?f¥R\0¹_‡Ò\ÚBS\Õ×´Õ\Î:\Å\Ôq‘n‰\îòDQf\ã&\İ\Ã;1m\â™(½\ÍqÓ¨6€@o[9\ÕÆ™6\Ä^§İœú\æ1®	X\rŸ\î%òsCĞ„\ÕI\êr©©Áò^‚1nÚ›CË»=\è*}\Z†l\ÏI÷¡¶Ù˜†o¦\nröiÂƒB9G› İ‹i‹ù‰\Òg\íIûğYN3Ø–\ÓNw \ï’û8«\ÔÖ¾±Á\ß^kĞˆv\àHwvµj-]	<\àŒ ¡6[ƒ\İ\Ş\n„;óT\0I\Ò`›¼ø ‹óŸ\'£qÒ°ª$W‰\Ä4\Êb\ä›C6¬I¼D¨48!¸ZQ~\ß&	 ±¦“\æ¨38\Å5¼\Ê0š@¡ø\ì=zˆ…d/Ay¦~2k«j\è62t<\Ï\è‡w\Óù}\ÚX\ÇJo¢´\à{!¢3X\Z9}u¥\Ù\êLCK«¶4\Îni?jVš\äµfJ$_\ã¬v¤¸z\á¯l¡£\â<ªgø\í\î+D‘\íÔ¼¤\nSX2\é~i9ƒ/†Vq,\Í\ãw.#+5\èÑ–eN\ÑM× ±úd,z~±U±@l!ò%hĞ‰ú4xx3Ši<n{j€sµbŠ,›ó`g¼<‚¶\Êût\ã·Õšt&gEyÁ…\Ö\Ø\Ğ\İ8\ÊIZP‚]hhñ\ä–mM \ÒôG\ÉcÎ‹ª\â-S¶»\Æ\Z\0ª\0I‰K~\Ğ\ïtZ	ˆ\'3Z‡©v\Èh¢4Ç¡¾…J9—Qü¢?¼#!¨„Œ6\Å\è§\è?“\'³\Ğ\á<‡\Ïd!iI[%j\î6LCŒH\ÕÎ¸9h}\ç/\Õ;D\ÕB\Êt8§z^úúGb8™R±Ùõiµ\ê97\ÉÄ«R¹%O{\á¦k­J«®J#\ÛI)hzü‚ÛŠ\æ©:†f6\n%q,5O“š›¨Z\Ï5H(?\×`–%T\ëİ§\ßq†\äø9X	™24\ÂRbxMñBxo\'H\ßM7/\åÄµgj&­!¯ê—´\äP-7;\Í~_dÀ\àõ*\Ìbù†”\á¸S\ç3\é4§	-7\nyCe\Í\'fRteWù\Ó\Ëš˜†)<\Ò2aj»+\Ï\ÊH\í\ß)^¡3\"®ñhIĞ‡\Úx¤n&`b‚V–x£¸/ù¦˜D,{\İ9§ã£¦­Ái¯İ\no>‘E:ÛŒi\ã†òµ	ä£Ÿ™´K\Zó\át\ßt\0  \ÌJxm{	\Å:šù\âA‚h\êş¬2mb¿©óR4^5–\Ä$D^¡\Ç\æ\Â$kÉµMZ€•m¶|‚\Ìg\×°’·÷|\È	\Í®»`\Ît“\Zt+º~«ZÈŠ´¥¶ñ$¨z\Ô˜/xÁ\"\Ï\Ğ4÷É€*V¬«s¯$J,z\İ#úÊ‚¦Z\ëKbB…²?Ö°ñ­„;T\Ò\ÖZ\Â%\ì\Ê\én± \Ä^`x\Û%Á§¯	ñ\à‡\ÚÒ„ú¼*\0T[1ƒÂ‹8\à0+RW\Æ\ß^;ªuTU(\0\æ\áP\è@A0\nD\â2,+!N’r®\0\İA«\ê\nt\Òh((ó\åd….´À÷`-v_\îª\"{5\ãOd\Ã\ÅöQz0~–šmpü(3\à[_•û\ìDø\Û)¾±KÔ–ğƒ±Ø¡Kj@ i‡P¬\àd\ÜmMh\Z4Šz¾öi$zDy4\r€iƒ–RbG‹Á¤Ù”³\Ó\ê\åz­p_šÒ=!B¿ yV©ı¸%möG°n:\n…Z\Ê\æüc²Á\áŸ)y7ù’›=e\×g•Wı…{\Å\Ç\Z\ïŸH\Ó0— I\à<”YG•…§k£ùu\Ú@\Ó\ÖR5Îå™®ZÀ6\ZhAb§\Í!¸/b/ò·\'\àÁy\ë\İc§\Ù\ìµ\'\ãı¶\ê¸Û›\ì«‘i*\Ón³jp:\ÍÎ´\Õ\éti\ÍX\Õ=²ò D©\0˜bÁPq†s) Õ«ø\ê5\Ø\ädD±\àØ»Š¬´©\æ*wìš›\è\à\è\'İ–¨]U\ÊÏ‰e@\î4ú|\Ù	P\ïx\×DœI—\Ø5`Gø@W\"\"M­G°]!\àq`{,c,Á)rf‹(Q~L\ãH¿ß›L\É+ó•¾°ÁŞ¦\r¶\Ó\è\ÙW13¥;\ZÈ•]©ë_­Iw6.\Ø7-bO\nc\É\'KOc\Ê\Ñô+A´\Â\Ñ3F\êg¯\áóşjµ\ÛSeZ]YOò¢úb¶\àù\Õ×l¼4‰Œ\ÛcÙ·C‹¸(yHeJz\Ó\Æ\ßW›}ùL/yü\Ğ\íÏ” ±0KÏ¾X¯bÏŒˆxü\íÔ«`—¨[\æ£j¯\â´^E¼c¬B¿`óæ²°|›±:=2\É3ò(E÷\Ë\ÒVggĞ–GF\ÔA\Ò\ç­E$À÷ñ\Ômb\âz§++ƒ\ê:U©X³ß«†B±•}±9¿ªŒ_ºYòx$f¡\Ò#;\èö˜½/dÉ›	y²5‚Xwlğ,gkZv{D§U0 xôœ\êMBƒ<B‰1?U×–¼•ş¹pLñ\ë~Ò¿Œ\Ìö§JW\ÙOBœµ•nüÁ½ü7\Ô\Ü\ì\É\İi‡\ë\\››\ÍM€\ìeG\ÛKúº¯Aƒ\È\n\rŸB_nX$\'`óNÔ¨\ß\ßCªU\Ú\È[°£\å}…Ì×ƒÌ‰ñ&\0A\Çp\0À<\çú\á~ª3H$,\Úc\å\è9ÿ‡¶\Şü¯0‚‹™‡B-Ê¬Õš‰L\ë=z	ŒHœÑ´;\í¢L\Ç\Í~\ÛG¨\Üá£\'1üüûı÷+\é\ãdj-µ*£-·ú\İs\r4\Úbÿƒvk\ĞŸi¥\çi²0\èw\Ç\İÙ™†OMˆÃ¥zgg\0ô\ÈR\Ãl2œ\Ë4-¸ñpü:Ê\È\Å[\'L\á\í]Œ\Ä\Îøo¨1\Ã.EüŒ_Ë˜6	ª—y\Íğb\Î(\ÕX8~Cõõ8…™i\àt^\ë\à•!ó\Ê\\\È0ö2eE’&QY©¡¡\ÈôQŸ×˜ù4©Ÿ¤\ï–FÀYYp´Ô„¬m¹µ’F\È`\Ö\é\İ\Å;\Ãúô\Å\ã¬>\êb9‰¤lGÀw\ÒùH\ÅÀ¹¨Nf\İ]É«“\ßnX”?“‰w\Ùc¨\Å\ßN-v)bÁDCÂ­&t¢9\'ò„^tü6\Â÷C| 5F\Ì\"KÁ¼9\Ô.FDg\Ò\éö[a\ZzBlª±$\Äz\ë\ØP$g)¦W¾ò\Ì\Ë{!d‹\ä‰±!\æô¬DŠcƒ\Ã9…•¿=AX«±\Ç\á-Ld|°>CóOX~\Ï7t2¡ï¼—\r”´,j>¶À­Ÿ 4’İ“p\Ç\Èv $\â{fc.=(Ï¡1	–\Ê\à1\ë´\İ\r–\ÒÀ\ÓihŠ&jD‹gğ˜´¢¿\åkKò¾\Ù1W…_mX®±$‹\Üÿù\Å~\âŠ’a~\Ñ^\ì-\Î\Æ\ç$”u‘e\È\Ë/¶ı#xp<<Š.\"¿9\Æ…\ä>\Ç6\â\ÑVZmÿ!\Üe88ˆ^ö\ÇüÒƒ²ù]	A\Z.°û\îjZ¶›Ól\Ğ\éO&«cbš_5‡şE\ÅDEhOVC!ˆı\Şcø,ÿ\Ï[‡½…\éP\ÏùH˜0¬ü\â.òS\Ó=b*ÓŠ\Ü	iùªƒ‰\ãk@/ø½NG©³å¥³\ÕE\É\Ï\Øğ“jb/öl¦uğñ86ö®=)\ï\"Z”¿\Ó`GcV¦À]•Àp÷ö;² óóõ6˜\'[1¦C$c³¦Æ¹ \Z%\ËhC‡ß ñ\0\ì*B\Ø}ş\âzd£?(¿|\ÆÇ²Ÿ.“7\Ëşüdz\ÒT©X”\êO0²\ígWú\Ç\í‡^¯÷ZLğk\ì\Û`ngX’\Åy‚¼A!¾\à9v–l\İâ‡¯]Ş„\âò•\"7j\Õt]\\B*©‹¾@\ÛĞ­ö¸×\Ä_²L˜\Ñt¨•P\Ã?˜]±\áa\ÍT·#\Õ|3-\\õz#\Ïft\àñW\Òü\ï_b4c4~¼9\Ô\ê„I`\Åó\Û6¨\ßj©»>ñş„\Şöxò#„’Eû1,\Zš•û¬Q;º’7w´[Á\n°¼ˆ›ı–º\"g—J\ã\n¢‘\î\í5dr&H}µ7‰\ÒqŠû÷bdĞ.Y¨k\Ô[BMµ­Tˆ©\Ş4ş Npe/\âô\Æ$$\r\Ö;9õ\İ>t{NjpuN‹5>I.1C®B–vyg(ƒ$-·\0\n\é‡B**´D*Xq/h€9y±şcNN4\êRQ5Æ¸¬4~À+ªm  ò\Û\ÜPyc\ê\ín2úÊ§wƒ\ìB™	r\Å\ìş”İ„]³Kôö\Îiı\Ó®¾¾\Ìÿ\Å÷O\çD¡Æ´\Z\Ó.Ã¯›Gİ¾±0V’jD@5\Å·\á\éñÉ‡* ™\Ë÷O¿«\×3O=Z\Z‡>RÚ­‰°¶ü\r~xµ|­,~Œ¢üâ‚’Q\Ù\İ<\Üô€4\ÚG\Ğk\Ø¸˜`³-w \İ\Ø$˜£CMaB[2 7#{\æ>‘\"|\ãJ³û\ãı\×/©A¼´¤¡sZ\éñº.1ˆ‡j¢İ‡\èS¹¥\æùÁ\0u\î \Ïu\ÇHo—Ç†_=¢§\ÛS\èºßšˆª‡.F`RQL\Íù<¿’\Ô\Ï\ê?’A­v\êj§\î2œº{\Û6/ÇŸô\äÙ€\ïB_Jzw~xˆh\çs\"\ëğ«öD¬«\Ï4EòúP5G\ĞX]XÓ‹ü¤BUE¬†•6\Èn_n‰kQlW÷3>†»G\È^»5“Ï¬’®\Ô\ßø.J(ˆaœùM\ê!\è•[§ù¾µ4\ßO“)œb\Ä\çDV¦Ê¤öQ\ë%g#\æOu\ÓØ¸$™\Í­ğ\Ã/\Ú\ä\n2TH€UöOH.\Å\ço§<»„#\ç\Èg©­:¦Œ\\\î÷Zıı`\É\Ó\æo÷\ã³VWõû‹³io\æŞ‹IÀD§uX\Ô!\ZZ<Áò\Ë\à\ãˆ\ØFJ?òı\ÌôHœe[ı±¾\Ï\Şs©o>@\0\'Y¨\æM›n·5\ê‡Eô\Ñ\Â@şJv\éq \Ã\Í.‘0;£H±\Ó\è\Ï\ä\ÎX	‚P\Ñiğ\ß\Ô\Ó\à’\æN\Ã\rnG#¾H½\ÛE±ˆ_ünM\Ì\Üø\ÛÄ¯nR‘<©\ÈñNL\Íõ\î\èL–·P5rˆöƒ>-aû‚ñÿ$º9qğšr\Æ\"Qz’´\Âpx‰øo¨(LgMP54D\ÇMsD)¸\ç\Ñ;Ò¥(œ@\Ée/Š¥ƒ\Ü\ì¶;ÙşvJv)¢m.‘8À œÁÙ™…ö$“\èk\ÅX”¡	I\Û*\à\á¬3A¤\Â\î[ø:\ÚS\"oKl,á·–\0ó%wS\è¯Ã9\ZŠD_ ±Gô\ç…Z{¼~@\Î\æ»À\ê\Ûc´÷ˆvğh«a½Ü¡Š\Òø%\×Á£\ÛkG\ßÁƒ_À±z\Ñ\ï\à¡4»#\Ù\ï*š\à£\ÒQ\0qy›8Í¸v\ŞaşvŠ3‘\n„³À0a\n\Zˆ®\Â7­}U0v\é§e\0\ì	ğEú][§8­\ÈHŠ/û\rP¨˜•\Ä÷©\ÜR\Æ\áÀ\Æ÷\â\nDkuNe€h¶.:‘\ê¬\Ù\íT\á\ÜÎ¡\í@2n¨¸|EwyP¨±+¬¨Ú«±¢hQ\r\ìJl(\Å><,T\Ã\ZR\å4\"\ÙØ„†ÿ)µ¥gÁ°qW\îC\ï+¶òjÛ¹\Ôò+\Æ\êøt–·¼«·x}¥\ÓwŠ¥VP¹B\ÄwÿD\Ó\Z©c\Âñ\Æ~Ã¶S\Ì1+~Ê³÷J4b\æd‹-\Ğl~“š“¼³ f³\ÕUg·üJ¤}D`\Ê0E\0R<\È~\Õ^RQ¶=îš\Ó.N€²ñ“\ÂC%SO\Õ(\ÑX.UpJ&gU\ï\éCf@_–ø¥\Ê³µª:£ax\Ä0\Çmá¸\ŞOµ³\ãa³¯ƒG¶ı:\ÎÎmV-\\\Ãé…¹:Ah„\Û÷¬,’`<œ\êñDLšØ¾¯ñ„\ĞU¸i(]Á~C8DÄ®»(‰Š·‹î‰¶–\æ\Æ_D¢ÿ%‹\ÙYœ„I_™\Ì\Ô:´\ì\È\å‘Sôıö¯ù\Õì½ô0‰úA\È\æwò3<4€\î¡AÎŸ¥m\îm\ÜEƒeM#WÁ¡ı¾ ¶ø{ğhª<@\ËwúµIŠE,{/;C*¸N8	”\ê©õdÀ†\ÂZ`(8\Îõó÷7¯Yº^\ì\çt\Ò\íN&4±\Í	V\Ã7’L\Å\ßN-\'v	-Wœ%H\Ú9$+R\ÓRly”8h¤x•\è÷\ï\å4aÄ¯ö­\Ç\'öW€É™>|f\éƒónv\Í,\Å5ò9¹5š ,nS‡¸)| ¹\Â2qr\\¦0YoVšk¸\áS\Ò\Ü¤§©®¡\İ4\Æö\Ö1\à\Ğ\é\ß\É3®ú¸=¸di\ÍÀTP\Îl$\È\åœö}¸’üƒ%\Ë\ç9¹\ëw-À\ãÌ©\ŞTa¢®ùÍ“¤Vó±±\"ƒò‡8—4Y û00™’ò\Ï\å&Œ.\\¦Œ³Á\á\Z\äŠQC@,ù\"`fbˆ;\Ë\ÌOöyH“\Ä\Z‚\ã…\è5x\Ç\à\Şğ\à¬3?°®ƒ‘†%1O\Òÿ¹h#\ç´ P\n¤0t¿\æ%¢±†\âÒ†\r°\ÑxÍ©&_\Ş÷€¡3\éu{ûµ@“1‹\ĞS\ê\è©B\ãy Ë½vXFB\İk<\ç`\Øù«’XwØŒ\èˆÿk+ÓŸw1JªmLÓº$Ã•4\É]iÀŸºw\Óm+³iÁ®T‡D3;±\Ñ8\Şp\Z!;-½ò‡\013(«\Í	Ç \ÉUIÓª\Ø†K\ÍÓ¤\Õ\Â+C_I+\Ûõ$\İ^¯mK¢_y+\ÍC±rÈ¿¶Š\Õ\âEZoM\Ï\Ø@±Ÿ\æº¶Š¤\İs4SÚ˜p6e\Òì‘©\Íq§«J\É±’$ûAJ\Émª\Zÿ\ŞK\ã­\ã\0\í\ÍÉ œZL\îÛº>¯\Èxœ]a\Ã+\é\Ó\í:\ãL5÷el[\ßôk.Fy\Ô\n;y0—)¬ó7L\æö\æ2_kŸ7¹7ª/4yb,¨\0µÿ¾µ=r‰ö–ş’6\âªS[Ûúã¾—>y‰z½j\ÈJc­\à’&\İ2­h@-\ß`\Ù8öû‹úE3\ßy\Æ\Z”Š®\Ã9Ù ˆ%ypˆ\rı\r<\Ì\"d	˜\ÅD—#L\Óo²1\r8\å¬\İº½\í§„h–\á®Ã—h¦kK+bn\\HÒ7­\í\'\"A‡*\ê\Ç^ƒ\ÆCla\Ùy\ÒB\ÓÀóH¸\ãK.ip~3}’±\ÆQi\n\àyøqKØXƒ¬‘ª£¯\Ê\"·9‰cşÚ§\ÚùC\Õ6ªYü¡8Zt|\Ñ½#\îÆ†ò\ï…a\ZA\Ü\îS.±§-\\¤	|\Æ4õká\íú{\î`…ƒ¯\Ü)\áy¶5g	?q¼\\À©5\0·r¿ºu\ïbÄ¯œôš£I\ØeÁ÷+ıKô\É~y—µ]ûÿ0\Ì\'<Q;º5\ß}\n·\Ã#\n\Ã_”ºšFl\Øs\é©]¨\\u\ÍL\n’	»ò; \Äz÷\Û\İx\n‚ñ†ß±¦\Üõ\0A\Ñ4EP_l\áøj„y\æW\à\"EØ¥ú@ò4÷¸ :Àu$×³!\à\Öüš„Ş¢7\â\Ã%õ\Ñ\0Ÿ\äB·\Ê\íúß¥¯\Ä[\ÙKÛ´_2 0/~\Ìtd$Œ\ãZZ\Í`‹=`n€\0\ÇIk™û7\ÃOÖ“m>Q\Ãr¸\\<(~b¸ú\ÖuÁb@kKDË¨«k)Á“\Åh\0¨ˆ/%yF\n>*Ošc\Ø[W\Â\íG€°\'\çöƒ÷±³ ×‚\Ì\ãH\ãB\Ë\ä\Ëø\ß%wÀ¦(t=j\0F Ğ•\Ö,~Ò„A|È•\ä×£ß†\èEJÑ–`\Â\Ú/xcTÖ©Ss\é\Õ8¤\Ê+ƒ„B\r¨C\Û@\Óø’§~óO°\ß\Ã©\å^­\Â\ì\ËŒ”\í›ÀvM\Î+	4, V|j\Ì\Ìø‰¾í£‹ñZp“!%Œ H¸\0$\n K§Ğ•¹|\ÛœnhU„\à)pq\ë\\;‡5\Èÿºk7g\ÑEG&¨(X\Ò#K)\à/ÀĞ–\ë1÷\Çòœ€\áÁ}Ï†·BQT zƒ^\'Ò€ªöoJòo*\æ\ßBÈ”\î£ÿ\ì†GhX\Õ\Ù\êFu©W„_~G\ß{\îû\Ş„,Yøoht‡]ŠDwN¢©;ÿ?_E\Ğx¢±˜Dr\Ê{w\r!ff°\èMJBfœ–‘\rˆn#\Ò\æ\ì\ãA2\è\'s\ÆFÀ>–9~˜şQ÷‡[¥j5h©5£h\0¤ø±„º?m4\Ì/\à\Øõ\î÷‡´{\Ö[%¡OX®şp\Ş\í\Ç\ßNq&2 W\å%\áL¯;$A,\×÷{\ß:˜xŸ/%%À—“ô‡\ã+oQ¾¥©ğ™—\Ã÷\â\nD˜\Û7\ãTF$JÁ\ĞoÁRan\Í\Ã4i\è¶¹ñ¬=nÜ¾ªƒÿ#ò\à\ÕÍ,,œLÁªLh ıh K–ò0ûˆÊ¡5‹\Ë wQ@\ão¿0EVRa5\äN\é­\Æ3#VÕ˜`F‰«µ<[©\ÄA£gvª\Şj5\n21½\Õ\Î`5•HûˆÀT“\â7P\æd“œL1cª:«!¶Q“T\Èc4±£Z·6\Ó`û’‘\ê¶47\r\Ö^#“ŒzŠ6W9ñ“¿ıÂŒ´À)m(Å‘ûÇ¶¹\âYU›p¿|ğx½{\â6W¤2j¯ñ·_Ş”aª\ä`öi3„/fÿ\È\Ôp\İ\å*\nÒ„a]\ÛA*Y3V¢\ËL±\êõ »\Ì‘(º \É*Y’\Ğ\Æ\âRüu‰ó]\íO£¸ò9Íˆã­‘W\å”\Ñi\\R£ª\áœõ¤‚ò\â”½‰%.•Kšo<;_7vŠòStS*!\Éo±µ¿š»§YbÃ·\nó{,\Ôÿ¦\Ş\æ\Ïz\ãWÀ\ÅHj%¯\Æ:—©—1(\ìo\ïv‰q³8¦³O\"f\r{.t–}\"®¶„t6Ÿ6{Õ²{TH——\×\æıj¢õªx4\ÇÁ\ì“V§	§nÆ¬1şº\Æjše\Í1;\àD¼!B\ÂJt‚^w~Â¦h?5Ù›Hl\'G÷2sup\Û\Ã_ñK\à\0O\Ù\ÍÍ‘\',lS¨‹œ\æŸ.˜Bxe\Ì,nú		rò²\è!Š’N»h=j-‚§eKX°…yöK[\ßÒŒ+\è¤\å\çOø•\îP©\é¬\ïym4+±•M\Èõ™¬T ·\Ö^‘,´ó3#\ŞcTiEÀĞ®Æ‚f5‘~;\ÒHï‹ğ¯´\'\ä\Ù\Òxx \ØtKrƒ’a,\è\Ög¶Áb\nlb`xğK\àz \0Ø‚›¥!\ËCş;D·%m¢… Ô“^ˆ\æ@«Şµ\Ú>²N8ø\"¿\ß´û\Âòõ°t³u =”\Â+l\çz\àüE‹Œ\ßK\Ü(`@½\İ`\Å37Y\Ö± \Ğ{gA\ë	=û\Z)\0 \Ó\r\r\'­tšÜ»8?&\Ö\ÔQG­¶\ë\Ò1uøoÔ¶8¸9“mWÀAx­s\ÅQA\Ô	]ü@³\Òõ\î._²¼…\Ñ4˜úA;$\Ô\ÓJ¯\"Aa\É1¬8Œ	^¡^E±†Â‘E§*ÚŠ«5Ê“\ŞHh,$\í&Iü7	6:Ô–¨\İkøq\Â_ˆ _0µ\ÌJ¶Bph#½\î4B·\ß\Ô*Îˆ\Ê\Êœyëœ[%B\0ùm\ÂÊ˜÷:\é0C\ç(¾¨­–<˜^ıYq¥òeWG>\ÑR\Ï ˜\Ô\ïÀ\È%J	–ø§ ³—\ßp‘5Fy§¡¶*y >\à\ïFÁ|\Å/\ÂO$Pa\×go…~8.\İe\Úk˜	C\Ä=j\Õó\ì{Ã«şğFLÎ„›(*³–S\È*\Æ\'hš\ì9¶i‚,§\Ük)-\È\Íñ(À\å_r	\áİ«ˆ÷§ß™Q\È0™W´\Ğ\æ\Ù9\Â>?¶®c¯\ïe\Ğ\ë\Ô\í\Òo\ÙPş\Ú\Ëo¨\Z¨€\ÉÂ7^·ç·‚e\Åi`«¤\×\í\Îbƒ™.GØµ˜\Ïì„¶ú(•Pº	Tû×€ô\İ\'\'\ØM®tFN¦\áH”\æƒpVŠWñ D.y\Ô\çÁˆ·\ànıH÷¿)ñ[\İ\Za«Z8\âø\êş……\Zø\È#©\Ûc0-B‚¿¢ˆg¨*g‚­’\ÓUˆò\ï=`\r¡\ào\Z;¼œ\ËC›:úğ01Á\0\æ|\í1j¾\ë†q\Óøƒ¤·ˆ\Ò2\ÃOëµ\Í\î°Uó\ÜÓ¼­+\İ;p:š\Äó8‚oN‘9Z\Ğ}\Î&¤q\Æ8¬±¼\r3xQ«¡-(~¯´%‹ø¤\Ğl246ı¦\ÓC\ê¼CN/Nø\ÖiLgÆº=?%\Ê{Ù€I±üI\ÛuS\éóo\ä\Îh\à}’».\Ì/«\ÚJ\æÿš¹6~pL\å\Âikq‡•\á‘\İ\ZÿP=‹Wv%úa()Ï´+Yş\ÏV‰\Îk\İÚ°\Ï{ºº\á+\ÑcÖµ9\Ør·5A\Åk[\ÏöCu\Å\"‚%.\äúTVYµmP\ÕÁ&Y6\ÂMª\\:¨)\È1Œ |\ŞZ\Û\åÈ˜Ğ¨nñ\ßJ0µÁ[|‡\Ã\Ãr¯B«‹ªcL\Õ\İùœø\"¨\rÏµ‹	şğ[to»ÿ\Åa\\ˆ\Ø?lƒ‚±W‡‹\0­\íqx¨4«\Ûÿ‚_\'G¸kUª³=Ì”ò$+\Ù\ä\á\ÙÅ«It÷^\î^2\ÉË€ğü~ıƒónvÇ¶+™\Ó†\åü–3#\Å\ï\İ\ŞM+E¯\Ù¯Šô8¼n\Ì\æ¬O\ÆGcAR\ÊÍ¶KšnüŠ{\ÍNÁ«íœ²\ê7Ô¨À3\0\0y€ ñœúÛpôh«	\'‹\æ\Ô|\Ùİ§\á\Ùpª›\Æ\Æ%q»\éMoO]¦\ÆG\Í\î\Âxş~dí¬‘\Ë`z\'\Ïø\Ç6š¸„<Ÿ\à\Â%³l\Òb\Şm9a\á¨†´‹m¬À¤0jC\äÃª£¬9V\0ºx£\î\Ì0¹\æğõd|Ï‘ó+.{ZHÔ¥¥¶\ÛJ²Qi›?H‚´	\Ã3!I^“\É\â¢f¤hP\"Ped¿À\r‹ZP8ı¹!gÀˆöÃƒ¡š\éblX\ÓWœ\àMoY+8À[\"ôb\é/’— şŞ±¡\Ú‰ï„ŸúyJP§¸µŒ\'â¸†g@5¾\Ç\é@\0òù\Ö<iªó1»ƒ\çG¶ø±SÀ<\Ú>Ào°\Úg¤G}²3\êwG3º\Ş_\ëZ¼\Ğ^\0°,Lòˆ¿_8¶4€|8]\Úpñ\ÆÁ\Îô±ğ8_šz\åıx29^6I[®\r¸„[ƒ#\Òu{e$8zHõ÷¹z%}ÿ¯+Iı>¿¿S¿|R\é‹\Æ\ê\ï\êD…r-\ÚnÀ¥\éYHmûh!…¦§–j8\Õp¦½\ĞL‰@1ƒOBo¥yÒ³½5—ÀNmö<p\åÁ?ˆv	E\İk÷*\Ê+˜Ã£,¤},<\Ür\Å\î†\ß#l¹¥™¼ı!\Ş[Ë³\Â@\Ç[¼\Éw2Hª––?l—PI5-¡u\Ûò€ƒÃ³³ˆ-\r!\Ö;¾„	I[\Ö*	¸#\î°\ÎX&\ë¢&@\ÇS\'˜\Ë¨¿Œ†!g^§+¬œ\Ù/£‡õªù\ë²\Ê0\"‚ò®hµP8VjkE„¢T«\ïğHï‰¡:<÷¥\İ\ìMgj\ÈL\ß\íd®À\ØıÓ›9[\Ä\îü‹\×`K^…Eôläˆ`\İT\Ô`‰\áa\ía{.l·„VY`ñ6Dv•’|F\î±u\Ğ\á¼d¸8B8vN’\àñº»«h E¼\Ël8¨/¥0\Ğ\ì»\Ô\ê]j\æ{ø/tR$8k†Z¦Ğ«y¾\Ö\Ü,•&;s\å0C\"*\è\âe\Ê\ßÄ¾ş1\\º¨‹\Ëú\0`KÁZœª-N{•Hîµ•½¦¥€N¶y\ÈT?,ûhôü\é8¿\ÒDıöÿş\Ïÿõ=d\ß\ë7¸\Æ+°úoµƒ­Z„.J„\Äj°@h oúMz\ÓA[ù¨\æˆ’A¯\Õî‡­jS(b:²“s¸\Ó\Ùf‚V\rôE…®‹R„¢\Í-X5 ¡<\â<@;k\\J\Óû\ç4\ì~%}¼ÿú…\ëR(\ĞUPG\í	¸\Ø\Åı\á³\åE>Âò<\Ñsˆ÷Ù \á\ïµeñlò¶\Ö;U\àb\ç¨„}Ñ­\ßÓ¹0…PöU`\ì·Q4M(0@krbó`Ä–\Ş59ƒš\çZ:³\á~½Ø¡øMC\éÒ¼`À™\0e‹}kr\Ö\ä\äv32…\'™ƒ\Ï\0\ãi6\nüQ“³&§Ÿ•dj´\äŒZ\0°ƒXJ\ÇDyjC©6”n\Zy²)k\Í^«¢ZÕªˆõq«C ¶·Êš.]cg5v\Ö\ØYc§À­\í\ÎA¯\ÓĞ­)–øZ‡@®\Ó\ZM\Ö{EÎ®C ¾©77\ê\Í\r¤@õ\Æp½1¬A(vJj\'³v2k\'³v2k\'³v2r_k\'³¨“ùÿ\0\0\0ÿÿ\ìV\ßo£0şWNy?¬+?ªQ©\í®{š„:\é\ŞSH!#(	‡¶¿ş\ì„Pªnw“ö\n/Á‰\í\Ï&ŸIDI´\\&d}ß¯\ÚL\áb\ØQ\ë~õ‡\Õ)©ù\ÉZ©S²r³¾¿9[¾\ä\Şğ(M…›ıJ¹\Ã\Ô^6F\Ã6Ó¹)ù\ÍUÁ\Z†‡q¦\ÍF–’¬FUµiô\Ä\Èt\Üi»æ²–\Êû	\ì\ã<\éw¯½µõ+ı¾C—6t¯«YSzo~>n‡lœ‹MW‹X*-ŠCzFÈ«ø‰uµ¹\Ş\É&*{\È\ç\'ô¢\ï:ß‰sw\Î?û|w¼3Üªó\İ	\Ôó*¢I\ídJ\ËN*ºÜ±pªoQ‘h\np†ôŸ’\È_`\×tÿOş\Ümi¸ßAg\nyr.7\á¯Q9\É\ä\Ò\ÜeSJ\ÃéŒ¢[–K\èµh¸›I0P]\r\n\Öù\ÕA\äÃ©\ãû3\Çg\Õ<7N2\ã„q™ò\á#„\á#\Ä\í6h¼wP”\Ï\È-}J(M\Û¼‡ñ\âq\Íe8$„¶|b\è\Ò\È\Öİ‹²‚3i\Äh£›‘¯g\Ù\İ\ïVœ+‡¦\')\Í(”\Î^X p?öL!óG%l3A2arˆõ<I:L\ìPy”Å›}OºWŞ˜õ_\0\0\0ÿÿ\0PK\0\0\0\0\0!\0\Ãcq\0\0\Ş\0\0\0\0\0word/footnotes.xml¬R\ËN\Ã0¼#ñ‘ï­“\"*5éŠ3\âñ\Æq\Z‹\Øk\ÙNBÿ\Í\ÃJUUˆ‹»Ş™Y\ïl¶ªZa‘d“Hh…\ÔûŒ¼¾<,\îH\ä<\Ó«A‹Œ„#\ÛüújÓ¥%€\×\à…‹C»´\Åt\å½I)u¼Š¹%¡1Y‚U\Ì\ã\Õ\î©bö½1\Ê0/\ßd-ı®\âxM&\ÈHcu:A,”\ä”¾/I¡,%\Ó*\ì%¼c\åx£„ö#µ¢F\r ]%h\ê¯h\Øb@\ÚsM´ª\ï:s	[aY‡Qõ(»[\\8‡\Ñİ˜œ“ø÷ô=\Ä\\q‰„ŸœA‰bR\Ï0½=\æ?o‰Ã£#7í¡¾\ZÁ¿È¿™)\êR0ˆ\ä„a–y°C²\ÈH<¼3xC³Oˆ×«duƒÆ™B;Q²¦ö¿3}\è>¾]£\Ëz2\Û/3\Í7tˆ\áj†spöIa´—ºŒó|,2ùg‘\'\É\Î	\Æ‚z—\0\0ÿÿ\0PK\0\0\0\0\0!\0\Òb2\íp\0\0\Ø\0\0\0\0\0word/endnotes.xml¬S\Ën\Ã ¼W\ê?X\Ü\ìT*+vz®úø\0ŠqŒ\n,l7\ßõ3j\ZEQ\Õ6»\ì\Ì,;l¶_ZEp^‚\ÉH²ŒI$‡Bš}F\Şß$ò™‚)0\"#\á\É6¿½Ù´©0… |„Æ§\rf«lJ©\ç•\Ğ\Ì/Á\nƒ\Éœf·nO5sŸµ]pĞ–ù!•ºŠ\ã5a #µ3\é±Ğ’;ğP†®$…²”\\ŒŸ©\Â]\Ã;T\î€\×Z˜\Ğ3R\'j\0\ã+iı„¦ÿŠ†-VHs©‰F«\é\\k¯a+kqZ\r²[p…uÀ…÷\İ\r\É1‰/q\ØA\Ì\×Hø\É9)\ÑLš¦s\Ç\Éü\ç\á-qxt\à¦Ô±¼‹üè¥¨M\ÃÁ\"–9À\É\"#q\Ì\â­Z¼` ^¯’\Õúf\íD\Éj~g»\Ğc|¿F“u\\®[fšoh\Ã\Õöÿ£¯\Ï\É\â`‚4u\ïš\×S‰\É?K<KvA.60=\Éü\0\0ÿÿ\0PK\0\0\0\0\0!\0–µ­\â–\0\0P\0\0\0\0\0word/theme/theme1.xml\ìYOo\Û6¿\Øw toc\'v\ZuŠØ±›-M\Än‡i‰–\ØP¢@\ÒI}\Ú\ã€Ãºa‡\Øm‡a[Ø¥û4\Ù:lĞ¯°GR’\ÅX^’6ØŠ­>$ù\ãûÿ©«\×\î\Ç!)O\Ú^ır\ÍC$ñy@“°\í\İö/­yH*œ˜ñ„´½)‘Şµ÷ß»Š\×UDb‚`}\"\×qÛ‹”J×—–¤\ÃX^\æ)I`n\ÌEŒ¼Šp)ø\è\Æli¹V[]Š1M<”\à\È\Ş\Z©O\ĞP“ô6r\â=¯‰’zÀgb Ig…ÁuS\Ùeb\Öö€OÀ†\ä¾ò\ÃRÁDÛ«™Ÿ·´qu	¯g‹˜Z°¶´®o~ÙºlAp°lxŠpT0­÷­+[}`j\×\ëõº½zA\Ï\0°ïƒ¦V–2\ÍF­\Ş\Éi–@öqv·Ö¬5\\|‰şÊœÌ­N§\Óle²X¢dsøµ\Újcs\ÙÁ\Å7\çğ\Îf·»\ê\à\r\È\âW\çğı+­Õ†‹7 ˆ\Ñ\ä`­\Ú\ïg\ÔÈ˜³\íJø\ZÀ\×j|†‚h(¢K³óD-Šµ\ß\ã¢\0\rdX\Ñ©iJ\ÆØ‡(\î\âx$(\Öğ:Á¥;\äË¹!\ÍI_\ĞTµ½S1£÷\êù÷¯?E\Ç?ø\éø\á\Ã\ã?ZBÎªmœ„\åU/¿ı\ì\Ï\Ç£?~óò\Ñ\ÕxY\Æÿú\Ã\'¿üüy5\Òg&Î‹/Ÿüö\ìÉ‹¯>ıı»GğMGeø\ÆD¢›\ä\íó3Vq%\'#q¾\Ã\ÓòŠ\Í$”8ÁšKıŠô\Í)f™w9:Äµ\à\å£\nx}r\Ïx‰‰¢œw¢\Ø\îr\Î:\\TZaGó*™y8I\Âj\æbR\Æ\íc|XÅ»‹Ç¿½I\nu3KGñnD1÷NIB\Òsü€\n\í\îR\ê\Øu—ú‚K>V\è.EL+M2¤#\'šf‹¶i~™V\éşvl³{u8«\Òz‹ºH\È\n\Ì*„\æ˜ñ:(W‘â˜•\r~«¨J\ÈÁTøe\\O*ğtHG½€HYµ\æ–\0}KN\ßÁP±*İ¾Ë¦±‹ŠTÑ¼9/#·øA7\ÂqZ…\Ğ$*c?¢\íqU\ß\ån†\èwğNºû%»O¯·i\èˆ4=3Ú—Pª\n\Ó\ä\ï\Ê1£Pm\\\\9†ø\â\ë\Ç‘õ¶\âMØ“ª2aûDù]„;Yt»\\ôí¯¹[x’\ìóù\ç]\É}Wr½ÿ|\É]”\Ïg-´³\Ú\neW÷\r¶)6-r¼°CS\Æj\Ê\È\rišd	ûDĞ‡A½ÎœIqbJ#x\Ìêºƒ6k\à\ê#ª¢A„Sh°\ë&ÊŒt(Q\Ê%\ì\Ìp%m‡&]\ÙcaSl=X\íòÀ¯\è\áü\\P1»MhŸ9£M\à¬\ÌV®dDA\í\×aV\×B™[İˆfJÃ­P|8¯\ZÖ„A\ÛV^…ó¹f\r\ÌH \ín÷\Ş\Ü-\Æ\é\"\á€d>\Òz\Ïû¨nœ”ÇŠ¹	€Ø©ğ‘>\äbµ·–&û\Ü\Î\â¤2»\Æv¹÷\Ş\ÄKyÏ¼¤óöD:²¤œœ,AGm¯\Õ\\nz\È\Çi\ÛÃ™\ã¼.uÏ‡YC¾6\ìOMf“\å3o¶r\Å\Ü$¨\Ã5…µûœ\ÂNH…T[XF64\ÌT,Ñœ¬ü\ËM0\ëE)`#ı5¤XYƒ`ø×¤\0;º®%\ã1ñU\ÙÙ¥m;ûš•R>QD¢\à\ØD\ìcp¿U\Ğ\' ®&LE\Ğ/p¦­m¦\Ü\âœ%]ùö\Ê\à\ì8fi„³r«S4\Ïd7y\\\È`\ŞJ\ân•²\åÎ¯ŠIùR¥\Æÿ3Uô~7+ö€×¸#¯mq¨BiDı¾€\ÆÁ\Ôˆ¸‹…i*¸L6ÿ9\Ôÿm\ÎY\Z&­\áÀ§öiˆ…ıHE‚=(K&úN!V\Ïö.K’e„LD•Ä•©{D	\ê\Z¸ª÷vEê¦šdeÀ\àNÆŸûe\Ğ(\ÔMN9ßœ\ZR\ì½6ş\é\Î\Ç&3(\å\Öa\Ó\Ğ\äö/D¬\ØU\íz³<\ß{ËŠ\è‰Y›\ÕÈ³˜•¶‚V–ö¯)\Â9·Z[±\æ4^n\æÂ\ç5†Á¢!J\á¾\é?°ÿQ\á3ûeBo¨C¾µÁ‡M\Â¢ú’m<.vp“´Á¤IY\Óf­“¶Z¾Y_p§[ğ=al-\ÙYü}NcÍ™\Ë\Î\ÉÅ‹4vfa\Ç\Övl¡©Á³\'S†\ÆùA\Æ8\Æ|\Ò*u\â£{\à\è-¸ßŸ0%M0Á7%¡õ˜<€\ä·\ÍÒ¿\0\0\0ÿÿ\0PK\0\0\0\0\0!\0$~’\0ü\0\0¤Q\0\0\0\0\0word/settings.xmlœ\\\ÙrcI}\'‚pø™®}q\à!j…˜Àğ²t»[1\ÚB’\Û\Ó|=\çZ†Só@û¦ªn\ŞÊ¬\\Nf\Õo÷óvsóy:\Öû\İı­üF\Ü\ŞL»\å~µ\Ş}¼¿ıû\ßú»p{s:/v«\Åf¿›\îo¿L§\Û\ß}û\ë_ıöù\î4\Ïø\Ù\éS\ìNwûûÛ§\ã\î\î´ü4m§w\Ûõò¸?\í?œ\ß-÷Û»ı‡\ë\åôú·¯#÷·Ÿ\Î\ç\Ã\İû÷¯ƒ¾\Ù¦fû°?n\ç\Ó7û\ã\Ç÷—‘u¿|\ÚN»ó{%„{œ6‹3>}ZN\×Ù¶ÿ\ïlxÕ§\ë$Ÿÿ\ÛG|\Şn®¿{–\â¿ıòõsŸ÷\ÇÕ¿Fü/\ì\Í\Çır:°²\Û\Í\ås·‹õ\î:\Íió¿\ÌsY\Ï\ï×\Ç\Åñ\Ë/&ùbû\Ç~¿½y¾;L\Ç%2\âöıL˜¶\Ó\ê\á\Ë\é<mû~w>½<<¿l¦»©¿È¤¯7\ç\éˆ\áŸ`Dw!/cWÓ‡\Å\Ó\æü·\Å\ã\Ãy¸Ò½zz·ÿñi·<?½H\íO\Óq‡¯{™~ùiq\\,1\å\Ãa±\ÄÃ‚÷›\ë«ıŸ÷\ç²\ßX‘Ë›>\ì÷\ç\İş<ıxœy¾ş…\ë\Õı\í\ë\ëş\í\é\ï\ß~|:\íVoó¼şñõ4_?¼\Îò\Õ8\èöaq~ùl¡\Õi\æiş\Ç_Á\åõ#„\èFgc/ü\Ï\Ô7ŠB\É2 \è\Ğ9\Å*›8\Å”9EJk_\×\í\ßx“Ú¹Hg“VW\Í)NG? \ØÁ—*•…£c”¡RŠ¢ğuÓ²f\Ójô=Z‡\Ä90\Ò&E90\Ê\æÁ\ã\Ò6>\r\ÖÀ\n;a°V6Á\åcµ\é†rmurRœ’‚¯¨S\Åó÷x¡3—¶7µğ1Aµ\Äu\'\è`¹´ƒ‘n0\Æ7\İ\è÷D[—\\²\Åñ/MN¾: ¾K »š\ÏV°ø>-:\Z¾nÅº\Ä×­\Øî¹¾Ÿ4·.U\Ô\Ìw}•­òÕ©V´NW´™<Ğª\æ±S\é˜.\Ó`¶nµ¤_*…´®(¹\Ğ5\0¥†E99˜\Íd®\×ÿ\Ótu@°‰ê¨”JtNQ\Â\ëE{.S©LHtE¥jğ-÷R›,ù\ê@E³a’“\Æv–4~`\ã¥u‘û,i½\r\\\Ú\Ø#–\ê›t>dê•ªü{¼V•j¼ô\Öp»#½SşÅ»_|÷›w–ò\æ\ï	XSº\ç0F{º\ëe\ĞI\ÆXW¹´ƒsu0›Ë’iZğ1Q©\Ä÷BTi°n\Ñù4˜\Íù\Îe\Z}\ã^S&+¸­¥sk)³l…\ëh1®R\Û+‹iRR½†/\ë|Lb°«\ë\Üú\Ë&K\æ«›\È#!\Ù|ÑšòÖ•\\CºÊ¡ñ1\Zª\È)\Æ)\Î[·RS\É!½qDi¾G	#;õšJ \Z\Ì“\È)R5.%},tu”‘Ç°Ji]8o\Ê\ZCm¼2ªr®Œ.s`LUT«V@Ò½\rt«Lr\ÊzQ\è>%\ÖÑ˜\Ê\ãQø?\Ùø—:i:ÿg2\Ï$”W9ñ1\ŞEC-¹ò^·Á\ì®UA™†/¹—Q6Ï–¬Êœ·ä£¦»De\é—i–=ò-\ÂjwTH¹€\Â=“*\Ğyj\ãU|ø—V©,_ëª´¥vú®¹MT\Õ$K= j¢I\ÎA3‰Giª‹(8oÛÛƒn\ë@\ã»k•Î¦\ç’\îzP¼§;”\ÎuG—•¶–°£œ\é\Z\×­¤•\íz­”­œ7-l ’\ÓZT[jmz\Ó÷hoUkˆ¶\ÎğlJ\Ã\Çğ¬M;üGw–v¦ğøM;›\çzfš\ÏuRE˜jù®\×I H¢«“d\å]\'x>&‹>“\å \â\Ò\Ğ)\îRy¡¼U\ÑµºJS¸†TMà³¹\ÜøZW_Ó„\â{[7¡š\ØD\ç\ŞY7%µ!ºc8Á\í\Ğ\È¸|º(D\×\0œ\r¾´[Ó¸: !ºŒ\çF¸*©ö\Z\á[\ç)ª¡ò1RV¾\ç\ÒCnaA L©¡ºc¤o’S”<Z7p2®µQ&vş=\ÊynßŒV&SkiŒ‘\Ê\è\Âh&m\ãl\àùñH(9\×T¹G7&„	¢qûf¢‰ò\æñµI2\Æ$—Bg\Ş<\à-\Î\ã2-\Úòh\Ğ—96h*À\ê·Mõ²\Ól°OU§\\wYxFiºŠŠ\ëNW•g¦C¨tŸbi\0¡3¬Z\Ò÷ oER\ÉÇ˜\Î\í\Îqağ\ï±\nø(\Õ«\à9o0\"ÜºX(\Ü\ËX«…¡’³@‚õ2 hZ§=Gó¬ƒ†p)8h\Õ\ë\Í@GAÁ\ÒQ)x’Rğ*>&\Z\Ås&S\íµ\Ñ%n]f\n¯\"Ø„\\“sP\\r)\Ä\ÊtŸ\Úb-·ş3…\ã.¶øn¨—A\È	‡®[CeˆZX\ÛPz\à:Ú¡¤\Ô&\İ‘sĞ½\à8i™®C\Ï\ëˆt¤\Özh,\İ?Px\Å#. ƒŠ\Û‡\àŸ\ÇbN«²\rJ\æ ƒ\é\å¾\Ñ‰¨\Én\0§\è\Ş\èZ\Ïx\Ç:•8º˜\ëTCœó•£\î\Øô¨\ÌP®a\Ãxu\Ìy×¹\İqAI\ÇW\'¨/qXA\í›K\Òñxµ\åH–K¨¹Zú=\ÙWl»yoó1E4Ãµ·\È\Æk`®x”E()Ÿ­\"³\ç2­Z\Å\Å9^ÿq\Õ×|šL‰óD“\ãb9÷\Û^¨\Ä÷¶¨\ÜQMœe\Í@¤€¯¨G‰ƒW­@I\Üÿxé¢¦ş\Å\nDŠL>p¥«J²TG½rWy<6£¢;¥Á\ãQo‡ğ10\×\Ş¢Xş¥°ı<õ\n_\nµU(5^…óuª£H#2\Ç\Ò|@—kH´n !\Ñ^Eğ@¸=@…_ñ\å\Ğ.Ó¬<\ÇG}V\Íp\rÉ¦òˆ\Ëg\ßy…p\ÆZ¹¥pÿ\ãr#\Îu…M¤¶\×7a8r\nJH¡!Ë¡\ŞşÄ«ò \ä<c#¯\Øø)pM\ì\n/İ§_:cc\äû§û\Æ3\Ê \r{\ÌD\æ»> V\çyp@İ™ûzP\0¸\Ò÷\ÌI\á¤Èœ7”Rx\Ä °M\Ù\Â1ü€Ì™\×5AÑƒu\Ó6ğúO0¨¬*\Ê*6™\Ê4 8\Æq±`°¨}VjÁj?˜\Í\Ú\Â\ë´\É\Éaªª£ZœŠ·\Î#v k€\ê\Ï‚÷†{MP·£ló:F¾6ºKªË\Ë\'j€ø”kX\å º¬¹¾% 2\Ô\"¡™\"pÿ’\n\É%E ¼Á’şØ’\ï,\Ô|y^¥.ƒUĞšÀe\nVÑ¼1 \îÍ«ÿ 8„¤z™\ĞÀ\rº]4¤c\Ûs=\èˆw¨/‰B\0\Ïc\ïA $]\ë(\\\ç\ØS„\å\ã±(\Ş\Ğ\Z\á9\n\Zµ(Cy˜g©´£‘‘{Àht\àxb4&òj_4(\ÌP) \ÔÄ£õ…#Ñ¡\\Oµ\n\ä ;”\ì]„Ä¼g!zÕ£¥c<\à€ÄŠ\Ú^”x\n\ÏôbD\ïÿ(3÷?±ú\à=¨ÿ4ºbA Ï¹.hõ\à:Z \\\ã‹)Š¯h\æ@\íND‡Šâ»¤\"ğ\æ::\×røŠ¶Q\×klFòşƒˆÜƒÇ‰–‚g9±\Ë\Ê#ü\Øu\ãı£±C©¸:J¡\\Ú ğ9ûŠsH\Ây$?G\ãª\ÓG)\×Iú\ÄQĞ¹\Ü\Èô¤e\åzP^Tp\àÁƒ\"\êKb¤Nµm\\}0û—W}‚\ê\Äy³&ó,\'9\ãybBw GJ\Ò\\Rÿ“¢òšs-œ#³U	†”÷˜¥\èø\Ò1I&TŠº“•)\\C2ª\â\Ô\î$\ä€<¦H\Ù&Şµ—ÀÇ„f\n÷Î©\è\Îk”	ˆs§\Ö- w& L¼¿7“\ÊüK«±<g\Â¯ R\0~lF®MU\Ş’šö¼ÆŸ\Z\â7\Îu›Qo\Î0.®;8½`ùŠv;@\ÌRGC…£\ï\éÀui„‚\Æ”Ø˜,ºS\Ş\Ğy¾\0&j)fµ\æ}Y9\Ãû\Å\Ğ\Ú$yv˜\Ñ[\ËQ‚l\ĞôÊ¿t.\"(™c((’6^µÊ°H\ÜVe,Jm	†\×v¬k®£\È6÷? tS©\ä–‡\Æ9ø©?\ÍqT“È¨q”\0[¯\ÔZ\æd˜g\Ïk,y*İ§9£\ĞÅ¿§ŒN-e\Äb‘¥zş‚ô‡K®¢\"\Í×ºj´\íQ)TxT“JS|LsG}\Ä\Ìÿ \èÜ¢=q\ĞEU„uü\Ü(™÷\æ‰\é¨|Š”™gp2\ÂPKQ@\à\È(÷\'\Ô\íx\nÈÉ§(“xGaÁzò¼¤h Î†<\ŞÍ\ã?š\ã;€—*\ï\Ş,\íHü=Vw£‹\Z—‚C“Õ·\â\ÊP›·\Ö\rú¥¨\Âq½.ó9	\ê1\nÀA\ŞiQ‚FfB\ßL\è€1‚–(õ,P‘j‰Vñ>‡’€Ró5\0ò\ÃÑ¼’…\áù\\Á\ÙE—|”K® ã’«.qÌ®4€º\\¦]\×J\ãÒ\îs:úM¸LmğºL\éul&ÓŠóYu¯\Ù\Ô\ÂV¡·|Hv¯*Vœ\Ï*|6Tû8b††iQ¨EªRkOı\Ú-}¦\ëV¥E\"L\×\0\İ\Â‡\ÅÅ£§Š&QÕ ™{€Õ€¢¹gªHô8ŠJ\çg}\Ñ\Z\é\è÷À\Õó\ÊPµ8ı\ÉW\Ç:\Ø\n:›Ã‘;º\ç*²\êVœK\\r°b¼¶[½\È|Ï¡am\ĞX½JS­q/Ík0~ôKgrkYƒ’ztP*\ÏÀj@m—zŒ\Z¼\áµ\İ\nP•\çvTPRpq„)ğS1¸G#jrƒúOM\Ş®Y\à7]ÑŒ\ê%\Íejƒ¾\Z((R:[‘£û\ÂÀ\"\Í \çº\0%\à6±`/pKQ\\ó\\¦\Õw~¦«6©8RR›©ü\ìem^t7;p£v‘øyôÚ¥QQ\Ñ{–ø^\è\ĞQºƒQ\à`h4ô\Ğ6N2*P\n\ç­I\\1@¥€\ã-kUCj\Æ\ãP;¸¡¾À\Ï\"4-g­P\æ\Â\á¦£pô!Ó½\Ğ`•\ÕkP\"¯ş7\ã\"ÇšE:_\ÔD¸?mxŒqƒ.^”\Êg\å\ÚöxbCO	×ª\è–\×B\Û\Üc\ÆWƒ\ãşh°#Š3\ßi	p½€h•ip–÷q\á(Q\çQZ›@t\Ï\á\0.JZô= t\êeZ\Za\Ñ\r`\r\ï™k\ÙV~Öª¡b\Äk,\0ıQ¤¼x\Î\ÔpWIú\ïõÁ­ŠÌ»tpùAL|\İ\nqœ-ın°›(]i\r­\Ô|­›œ—i¨¤ğ˜”\Ñ{º@=–®(ºZx\n@£\áY(\Ë¾³pLOò\è©#\ç±?5#”g¼u\Ô1¸´;6	?£\n“ò\Ùt\áu\ç®\ÑdM÷(@H\élh\Ğ\ç\ÑF\ê\Ïû¸:®)\á6±£¡\İQğZqd´\Óq\ŞÆf\Ü4„Dop2q$K÷\Â\\®¼­¿\Üct\ïaü(\×\èH;ª\È\ã\ë\Z‹§zÃš…£y7²p\ïÜ‘oó\nT\Ïh¹\áz€nºR\è÷\à\Ü.\ÇaqY\0*¨|-q™\"\å¹f/€¶©}%ñºs/\è ^¦£k[\å^zó1¨¤ğ\Ú{‡Õ¹dm¸_\ëõ¬\í\İ|£\Ú|\É\Ö\å_óeb7\ÛËae±}<®7?\Ìw®\áÚ¬\í\İ\ãñ§¼\Ş]\é\î~›~Iyxz¼ß½»N\Û\Åf\ÓqoØ•€\ë\Ö.”\Õút¨Ó‡—‰7?,\ßf~	H¶wGú×—ıñ_³\Í×¢M\Ç\ß÷O‡Ë¬\Ï\Ç\Å\á»\İ\n¯/Ä‰¹\×ùÖ»ó÷\ë\íõù\é\éñ\á:j‡«\×~AzÚ­şòù8Oøşm\ïÎ¸-w«a–\Å\î\ãõ\æ‘i÷\î\ïóOŸï–›\ã\Ã|£\Şô\Ã\âpÀiø\É\ãGy»Yüt–·øóŒ¿V‹\ãO/<~T¯4õB\Ã_3\í\å\Årş2üúõó.ÿÄ¯^ÿñöL_Ÿ\é·g\æúÌ¼=³\×göí™»>só³O_p\×\Üf½û	7\×]ÿ9?ÿ°\ßlö\Ï\Ó\ê×‡÷·ÿñ\è²/\×À}·[nVôaµ_¾\Û=œ\×;\ê>-\Ä>\ß@‡\Øöw§ùÁ\ë•t§›\Ïw\ÓÏ¸\çnZ­Ï¸\Ëğ°^m?\ß\ß*q9§òú\ë\Í\â\Ëş\éü\Õo\ç™\æ¾zz³Zœ¸5\ïE’_\r†dq)\â×¼<ß­¦\å\Zúúğeûøv¯\İ7—\ïÚ¬O\ç‡\é€+ğ\Îû#V\ä\åR½ß¼\Ìüv½\â·ÿ\0\0\0ÿÿ\0PK\0\0\0\0\0!\0ü!Ö«\â\0\0$\0\0\0\0\0word/webSettings.xml\ìVKo£0¾¯´ÿù¾ƒy•TJ«ö´\Ûı8Áxí†¶¿~‡GS\Ò6Q¢ôÖœ0ób<\ß\Ì\\\ß<Õ•³\ÚHP¡Wq„Ê¡j‘÷¿\â\ËUÁ+P\"#\ÏÂ›ù\Ï\×mÚŠ\å_a-Z\Z£(“êŒ”\Ö6©ëš¼57W\Ğ…º\èš[|\ÕkV+™‹;\Èk¡¬\ë{^\äjQq‹˜R6†Œ\Ñ\Úc¢µ ‹FC.ŒÁD\êjˆWs©\Ès,\äÆŒO§Me‘\æ\ÇÌ\Â\Ä\ëõK(\ï\äu^\áı‰\ÛY\×\\ÿ+û*õ¶\Ò?r]~\"~€\æ£\í¬…úóYºû†}óQXY‚†\æ%#X<4<\ÇZ÷\ç*ÀºòGC\Z\Õ$³\Ó<—;æ«§7?\Å\Õ\íA\è/=wá˜±\È\Â$ñ‡#\n>\Çc\"¿\0²ÿš\02ğã¶”U±‹\n\rhL½8¡a\Ë|ğ\Ù{v±\Õ|kN\ì…`Æ¼0Y‹À¾úòo]ı×4<\ÍÈ„\Ã\Ò1l\Ò\İ0¡	‹£8@¬.\íë”¡Ğ¦_1Oör‡z!‹fõ\é¹\ä\Ù6)l—ö5\î \ÇL8¦,`³—ù\Ñmu6¹¯\àÀ\á^u°¯u#\Z+kù\"\îA/4´Fh\\€\Ñk²\Û\Ïÿ\0\0ÿÿ\0PK\0\0\0\0\0!\0:úø¦¡\r\0\0ER\0\0\0\0\0word/styles.xml\Ü\\msÛ¸şŞ™ş>µ\Ó\ÉYo–\ì\Ì97Ÿ\Óq|¾\È\é}¦(\Ø\â™\"U’Š\ãüú./¹H\ÈÎ¤m>\ÄA<v÷Y,Kıü\Ë\×m|ayg\é\Ù`ô\Óp°4\Ê\Öqz6ø|{ñ\êde˜®\Ã$K\Ù\Ù\à‰ƒ_\Şüõ/??¾.Ê§„\0¤\Å\ëül°)\Ë\İë££\"Ú°mXü”\íX\nmwY¾\rKøš\ßewwq\Ä\Şe\Ñ~\Ë\Òòh<Îr–„%<¼\ØÄ»b \Ñû =fùz—g+\n\í6x\Û0No`x\ë,z\Ç\î\Â}Rük~“Ë¯òş¹\ÈÒ²_‡E\Çgƒ\Ûx3ºfÁ§l¦haaQq\ØÚ¸9O‹önQA;ñG&az°_\Â\älÀ\ÒWŸ—õ‡\èK«x\r\Èaşjy>€G8õ×˜\ÉN\ÏK\ÜÕ˜6D½ª¡°»«,z`\ëe	\rgP7^üü\á&³<.ŸªkK¶/\ãõša\èû\ÒM¼flXú¹`\ë\êú\ï¨fy!\Êöiy6\Ïæ¨‰¤X¿ÿ\Z±W3<.\r·ğ\äk\Ş!\áÿ·\ê;\â	µİ¾a!·\É`\Ä{\ì\ãj´§\ŞcŞ£0&\'03Ã‹^C›´\ã6Çºöƒ¦\íz6\îñwÂ}\'\Üùw\Â—÷]Mõ\r/\n‘R/<\ÚÛ¸L\Ç\ìeü\Ëıªô\ëP\æYz\ÏñM‘”½ø~»Û„EkE\Ï!\Ş$a\Ä6Y²fypË¾–\íò2iz\êpD\×Y°Ü…ø¢\æú{Œ«ø~S\Ë\rº´&\Ìl\èxº\èy8S‚3—÷\İ~\Í\ã5y\Ú\Øñ´l\ï·j \Ô÷\Î&ı;£‚kvw\æmy\ìqÏô™³\î\\J-Ïœ÷\ìIŸyÒ³\'®5	¹\ìğ]˜?m†0w\Ù\Ï\"K²ünŸ(6\Ía\î²\"İ¹õ±.C\Ò=\ÛLpî²¢\ZU‚ó(‚h¦E;®9Wœ±÷wM»\"½¿kòM\ÙQ\\‚h Œ\í(½ye‡p\ìûó\İ7º˜õu£\È\ì›0\ïóp·\áX½œÿ\ïû¬\Ä\Å\É\äÉ¸ø!…p¸`A+\Î£\Ü^\ã\ÚÀY8T\Ñ\Û\İ\ØU\Ñ\Û\ï\Ø!z; ;D/Od\í\î\å’\ì(.’jƒ*±ù‰¹‹§\ZW\0+„‹¤­ŞŠ®~ŞŠöw	‚z+\Ú\ß%…†Ÿ)uP— \Z(š\"\Å\Û[Q—·j%*…ğ&*…ğ&*…ğ&*…ğ\"*\é~Q)Š\Ë>5\ËL¢R—‰j“¨\ÂeŸ­D¥˜Qi— (Qi—\Z\ÓD¥(.A4P4Q)Š7Q)„7Q)„7Q)„7Q)„7Q)„QI÷ƒˆJQ\\ö©Yf•B¸LTC˜D¥.ûl%*&À\Ì°\çY­e´¿K”¨´¿K\n\rŠi¢R— \Z(š¨Å›¨Â›¨Â›¨Â›¨Â›¨Â‹¨¤ûAD¥(.û\Ô,3‰J!\\&ª!L¢R—}¶3\Ê\Ï *\í\ï%*\í\ï’Bƒbš¨\Å%ˆŠ&*Eñ&*…ğ&*…ğ&*…ğ&*…ğ&*…ğ\"*\é~Q)Š\Ë>5\ËL¢R—‰j“¨\ÂeŸ­D\Å#šg•öw	‚•öwI¡A1MTŠ\âDE•¢x•Bx•Bx•Bx•Bx•Bx•t?ˆ¨\ÅeŸše&Q)„\ËD5„IT\n\á²O~´–°À<\ï2:ò\ÏzÚ \Æı®\ä >±;–C¡k LúC©\\¬÷ô½ò±o³\ì!\Ğ\'—¦˜&¸\ß\è¯’8Ã„ôSgv{‚§\Ïô0\ß^\Âpû\Û\"¸e\İ\è¨\\ŠNò\äPb–xğú	¬ËË§\ÔY\ì\Ì;”ğ‚(ôÁğªP\Å!k1xg^œ}±<E^\ÆI\âg(¥Á\ç|S7¥ƒ,¾-x1\rv×Œ²V\Çøğ>\")§Ö˜cª\ê@p(«\ÊP~\ãU%d\Ä)õ¶]O\âôA]WYl\Â\\œ\ÒU¦£\î‘Şª&€\å#‡\Ãñ\É|tr!ºC5Ÿ\âc»kx>±\Ç\Å\ĞaÅ \Z\nt2\âICxW2¨›R›\×l_\Â\Ø\ØÕ—DcsP¡D•r\ÏEK‹p»\Ê\ãkT\Ö#©+BD\âÿEX®¥5‘¬ĞŠ¬®TŠT\×x\á’†uˆF\ÇV\ÊÁ¼ŒFÇ•FWÜŸ‘R\Ä*+7BÁTI¸t*\é6\Ü@E™¡#yÁPQ,UT©c,ó{5^\è\Å\Ø\éeô1±\êC.M/£I¥+\Ã\ê\Ş\çx¸\î\'\Úa§>\Åz‘\ÎĞ¨\âjRv}	·\n#ğÜœ,.]V\êV\î3ˆª\åM¾+À\ÛPô\Õ\Ñ.|µ“½W¢Z\È2[\Ş\î\\_¼E\Øtí¡°‚­\áO\áÃ‡”»\\(E\×)Ö¶õ\×PôƒöK’!z\ß2\Û\ÙoM\Ø_\0h4\ÄB¯P½Ì¶öş9\Ö\îX@R\æ`\ÄW>	»\Óıv\ÅrYPd\ãu\ÆCQ¢@(F\Â\ë>\Z«zÁ}›­Ÿxqˆ*,Èƒx3Oò|¢\Ã7\È%«¢¡\\\ìFÊ§Å¨O®³ÁD, \"\ìfU\Íòõ\Ø/!\Ğ\Éù²N†]µ\àx\å\Zñ\"\Ğ0†Cøw!W\ï?c\éX\î\ÚÇ¤C\ífP¥pD5\'l=\Æ±t?½]›‚p°‘ˆh	şm\Üq(\Ñ•4d\åÉ¡h\Üƒ\Ó9l$pôDû*ò\r‘¾\â\ëù¾Ì¤ÈˆT‰¸¿5nøn3iŠ2q\"m\Ü^Qp6y\Ì\ÏG\ã©Mj¢‚\rjF\Ò\ÖD‘¸˜©ñEû\\×’Gõ\Í¿6Ø¦I\êù\Õ\\LÕ«\ÎB<u­›³”ô2V»g\ìj´rÌ¬\Â7g&ƒ‘efª³˜™52©OÙŒ÷\å”HH\Ş\í<e(‚f›\Çn\Êğ\İ[T^qµ+Q[\Î\ç»\ìn\ÛÁ«M.·\\dıƒl\Ë\à¢5òì¶£v*\Ò-M±ˆ«¸\nô\\Y°G\åyjKbm…1‰\'W˜j‹\ÆC!\"6\Ö\íM›\ì\ìar\ÖÁ¨*9(lwX]%V\ÙZ\ÌÍû‹qb$|I\ì]…Nñ‡xš=Ôº.o?^\İ\ä<a¯•lMVm~CP»\Ã\Ç\èšğ•ıÙ¥\'m¶<øFüUA$cùfl—Ák_§#I5\Û\r£•S±\İ1Oe\İv\Çd6“‹«\í\éñ‰´P\Û\Ç\ÓÓ‘Î¦#\é\×móÉ¸c¤\'\ãi\ÇHA`#…°q\Ş1\Ô\Ñğô´c¬£\Ñ)lù\ĞJl\Óa¸·Læ¾s£Lg\Ç8\\0~xX|\Öc‹²}\Ã*ğ\î!7¤\ê­\ÃE½AeøŒ«íŒ„\Z¨Ãª\å\ä]½“I½CŠ}‘_MF(lñmM²Š™Ù‰úò2–\ĞT†K\ì‡:=xU)Nñ¥¦¨°E¼¾„î¹¶j@ÿö¯³\Ç\ä‹ò¬‰~|Á›\ÂwIöx³O#E;h¡vsKHu³w\ï­-\×Í–õŸ°gù\ÄS*\"¿c–8O\âû”¿,¬:òyó,9¦/©l\ÜùA©\ëÆ®p)t÷—aC»p<\r\Ù\ÕÀÁ\á¿hş_6\Òy;»“ğ«\Ş\Ïs^:\ÕÄ³m7úD­©3<.®š»ˆjt\'§ó\ã·B±r\İ(ö»]¯ºó|¤µ\à\rlq c\æ\Ñ\æ*¹{=û0áŒ„\Ôb[\ä›\è\ÕR\Óö²9Îœ\Ï?\0EºV5‘öÕ’¹\åWøa7	Ô°%À¦6‰`³\Ìc{]\Í\'\ÇÇ‹\Ñ[!\nŸ|ğ[øu\0øY>t‘F\×\"P`Å·³V¸ñ\äK0/…q-|\Æ\â™2_|`oM>°¿\Ê6\Ø=†Ÿ\'X³K\å<ıg/\0şu(\0\Ğtfª\â9Qß¾\rV\Ù1z’V\åÕº\Ï\Ò\ÚòmÆ¡Y\Ã„ÿò\\Z¹ÁsPTGj±Z\ì\Ô6ÅŒÅµn\ï\Ø7\Ô\ÂiÿY9\İ_\Ñ.’{|\Î\ìjŠv¬i\Âk\Æ;z`\"ó\ìÿF\ã\0š\ÛŸ\İ\ç-†Ç³¡\Ü\ïHı\Â!‘8€t\Ö}Š‹&¨K7\Ë|:\Ø’\ÄÑŠüòi\Ïó\Â<LÃ©r\'\êx€ğqğ\×\â÷k’Ñ¾Ÿ§Q!÷\Ò\\ùz/R2Pú`/\Ô0M_ Ù‚\Õ¹ÀB\ÔÜŒ\ËL\Ì\Z·\ã\Óã‘¤\ÜÑ•¢_­v\ì\Ãqûv\Í.ˆ¾0&\Ôh²¾hl³zS\Ä\ê\Õ\æ\Õä´º&\×{œ¿ş™™jõ—D €¸öÉ·[ÁE\ï\æR+¸—»`Z@ú?²cBM+M+ÿ¥VP£€öKñû\Íi\Ê\Ëh4?ÿ-öˆxx<™^\ÈÌŒ´ú•0©*áˆ¹°Úƒ¬—6\â™‘«†.6\ÎÔº%¦eÚ¶zNe\İı&-×ze™eOP-\êÜµ^q¦\á«%À#}~oWû\"X†i\\Õ“U—¿\ã4\Úğ²ş\'ÿ\ä\ÍrgIº5S\Ë\æÁ7Ï•¯V	ÆšO“y¼\ç\ìajö\ëX\åk\Z³Y‡…Àªo…[LºyRAdV¹\ë%j\Ûò\á±y\ì+x&\égH\"\Õ\"\ÄÚˆ-ZKŸ¼ğQ»ß•\î\Z]¼b§iÆ¯u¹\êe±€—?hOÀ„¤¿¾ò9<©­ö\\N‰8\àR—L¯iˆM®´zB½ıQOVš¨İH‡¹¬pxÏ‘N_csƒ²tü\Ônø¯á‰²‹+\Ñ\0=}‰\á@¥jT^;<(T¤)\Şü\0\0ÿÿ\0PK\0\0\0\0\0!\0\ê|Ø„\0\0.\0\0\0\0word/numbering.xml\ì]Û\ãF’}_`ÿ¡!À»€İ¼K,Ly +\à…\Ç;{\águ»KX]\n’ªË½o\ëù‰ùÿÁ\î\Ëş“aƒ\ÉK%\Åd’™)&\å\ì\Ë%’’x\'2.úó/»\í»\Ï\Éñ´9\ì\ïG\î7\Î\è]²8<nöŸ\îGÿñ\Ó\ê\ë\É\è\İ\é¼\Ş?®·‡}r?ú’œFşöŸÿ\éO¯wû—İ‡\ä\'¾ƒ\ÏØŸ\î>\Ã\á§óùù\îıû\Ó\ÃS²[Ÿ¾9<\'{8øñpÜ­\Ïğ\çñ\Óû\İúøŸ/\Ï_?v\Ï\ëó\æ\Ãf»9y\ï9N4\Ê?\æp?z9\î\ïòøz·y8N‡\çô’»\ÃÇ›‡$)®8vù\Ş\ì\Ê\Å\á\áe—\ì\Ï\ä\ß“-ü†\Ãşô´y>Ÿ¶“ı4¸Å§\âC>ón\âón[œ÷ú\Ü\å\Û\ëWÀy·\Í~ö\ë\áøø|<<$§¼»\È–Ÿ\è:¼\ï\ÎL?¢¼¢\ËO¨~gñKv\ëÍ¾ü˜T<.ùğ¾‡÷>û\î÷\éG½\İ`ñ-\Óú\Ã\é|\\?œxÙ½«üõ\İ\ãı\È!§\ìO›G8öy½½­²\Ë\Ñûô\â\İ\Ëö¼ù>ùœlúòœ\ç¤\àlòvv\Úy÷¼-\æ°Êl?§6ğR~\Ù\Ënµ;g?&›\İz[üSòKy\ì_\Ëwÿ\í¡8›|<§o¿½ƒ\Ï$¯\Ô\r¶Ş¯[»_\'ûf\ß%q¿\ÕØ¯w%L?ÿ<\Ğ]·¼$@û\å\Í\æg\êS\è|x\Ùnr¿\ävip~ÿõ\ËÏ­\Ãóz÷ü\×cŠ\Æ\Ğ\É_\á+FğÿÏ‡\Óıh\ì99šÅ‰›}*\n)\Ì\ÙQø\ãi½ÿOü~\äG\Å\Ùù§³/9®ûó	\Î\\Ÿ6›ûÑ_v ‰p\éd«|#{n\ä\"\É\ç\ç1\ßÜf³)\ïù=}ùp\Ü<ş%•\åm*\ËÙ¹´Ğº³¹\Æó\\\ê«B·q~\Ş>€üNO;“¡k<<úY¸7$ˆb=Œô\élöğ”“k€&—ƒ\Ê\Ó!R\'fú\ë¦\ß_\Â\'\ï€\ÕcŸ.R\Ğ²‡€#\Õ40^\è\Ë3?¼7\Éñ\İ\É+%ª\ï>€’\\¼%ˆšWCü\Ü3*j¿ÿú›(n¾\Ê\áö3Ø‚Ô‹u½Tğ\ê{bb•	QU\ÃRAC¨“¹¤Ë\Çr\05™¿.1h‚šì˜ qA\Ës©H\Ù\âpñ®º\ÆeúETö²@	k\\Hšğªve¨U\ß+`†<3\í\È\0	k\\\äJšr<× 1Aã¢‰¤­¾Ğ­\Ü»xW]\ã€\Ê^”\Z7%MxU»d4\\b\â\×[/v½©\Ï%b\ím\ìxA0™urlg\ä7¨9¶ÿG?¤ ğ\n‚Cx§~V¢şLMu‡[\àtƒ \àmÅ™´ŸC§¾‰(³¸0#l\ã\"\èñ˜\ä-`5H©\ç–t¸8“†•–[NMò¯ š Lx’ê¥‡e \Åó\Ìñ\È[ „X\rJrXJJo’\Ã\Şk\às#f\ä°¬\ØJo’‹\ßiqµ<øTœI\ÛQrXR<¥7‡\0Á+@Rsœ\Â1wI\"‡e Ô¡ô&q†X£€»,‘\Ã2°ª+½ \Ë\ê,c\ìÄ¿\Ìwk\Ø\Û\í,c\ìûso¼ğJ\ß\Ğ(ö|\à+1\ã\ë±ÚŠ¤ı<\"SI^\n _0‰Ğ¸Yÿ~T\ìÈ–[€¬\Ç›°ùn)\rŒ^ÿ[]\ãLr\ÉiÜ¬ƒİ¢q\Ö]N\Ó\Z§\×ùU\×8“üaZ\ã†\ãİ†5\ï\ÖuQ\äz“\Ì/•õn½`\Z‹i\ĞÅ»EÈ€bfO\êZ‹\íAš“L\ÒBşlôrqª™gv¾[`µ\Ñs*\ÓG\åIx<Ë±+À§\r¹SA¼‚\íª\Òlô\\‹\Ò\Û\è9º\Ò\Û\è9Q\ŞNi£-Jo£\çZ”şf¢\çQ_ŒCß‰W\Ü\âö\èy\è\Ñ2\Ğ\Í\â´\ë \ÆÛƒ3‡/\ĞÀH€;í¨©Œ\rœ\ËÆ…Õ·Ìªû1&%\ÇĞ‚%\Æ\Ó8sR]h`¤ÀW\Ò8S\ç\Òqal3)3…,\éø0Æ™“gB#\0¾’Æ™\Z8‡”ƒ¾r\ÓB\Æu\Çv\â.‚‰«\Î\Ç\'šc’\İU]v	0=¥…´°@=%±\ØV\Ôw¸N>\×Bªmø=’f\Ã\çh‘4>×¢ô6|®ô6|¦ô6|®E\éo&|>©³Œ\Øu#o©Ø»%œûÁl\é\æI>ğ`C·ÿ\äó·x¨,Ã˜ü&]¼/šcR\ì½E\Z-›@w,,›@s,ze\ê{p&\í´\ØK0\Ğ\í€%hv W‚¡nLÚ§h±7\Ã9bç˜„\Ş|\ì«\íl\Äñb\îB\Ñk—”\ë¼¶<ÕrØ…F\'\Ñp{xM\ß\'\çsr,Ÿ\Èş•÷Mù>§\ÙdªŠD¤h„Z\İ«qw¦\Â\ß»õ¾¼\×\n>ƒ\ã\æ\ÓS\Şv¶[YQ\á–õ\äó\Ù \ÔssV’ ğº°¨Uµ¶H¢»\Ï –£OBu65÷Y›*D,„UAÔ‡\î¤\nõ¤-ª0f! ª\nŠ/[\nj©1úTa‚‚Z\'65R›*\Ä,„UAÔlP\0C¤•¢[oj\ïN\çs\é(¦³øñté»“<\\\Í4\'›œ.ü€a±‚Ñ¹]\éÑ´vS´õ^”t8‰,Né³°t\Ó\Ã2PvÊ’,®­¹N¶Š\"7øÅ¨\ç	(9,+v\ÂU\İ\Í$\ÒN=“ùƒW€†\ÄW\èö©^\È\íQG\Ë@Š§ô5\Ç\Ö\É\àE£$\Ì÷¸½\é\Èa(u(}\ÍQ6W\éı˜¿*¥‡e`\ÅVúº\Ûm¬\Òwy\"‡e \ÅSúšoªÒ‡wI\"‡e Ô¡ô5J`®\ÒC#\ŞJO\ËÀª®ô¢#s\î\é©Y\î,\Z;e<X¶\Ñ\Ì4­&D\Ã\"z¢\Ê³“\î\ÄP‡\Õ\ÛÎ¤m!”º\Şcx\ZŠa\ä×»†Y\\Œú\æ‹q(\ã\ÚqªQ›;\ÜWŸöÕªq“U\å@À…b\\¿Q»’Ú³‡2”j¯2\ï[\íYœCWµÃ¿\Êò-¯ƒZ\Õh\ÆhUµg‘L1\Ô^1´\ß(­\Ôrúö†’Ú³(‡2”jƒ©,Ê¸â¨½\èCj/J;\ê\ÃO\İy“\é8\ÛÚ—¥\Şd6ù\İ\Êt¯·¯AoS¤C†\Z¾™‘\ê \Úô³\Ä|1s¶)h\\i¦GV\0?W\"—‡;	ù·2µ…“\ÆC\ã&İ¶§uñ+–‹¯ Nk \Ùş<x\Z\Çr\ÙÑ¡é´–\ÓÀ\İ`c9\ä\è¨u\\©iÜˆ7.ƒ¶Æ±¼k\r\0	kq­e\0\Â\Ó8–·Œ°\ÆI÷\å¹\Ò\ZgR\Ö8\â\Ë”ºÆ‰:¶õ\á§^úo5WtlCplƒq·\ÊĞ¬y¼R¸£Yl	W¾’\âDú©¦Gûy¨\Õe–?¬\Ì\0;Ù†x j\É$§9\á\Éø4eq¤Ğ¦\å W‚Ù´´J0›–£¥Õ„M\ËAWz›–ƒ¦ô6-G‹\Ò\ßNZN}º©\ç…q8+\æı»K/˜\ÌgQe¿\Óø3ºòI\Ô\Ùa;‘\0|qC\Ä\ÄB´\Äñ\Çñ÷“¯¦`%\è \ãŒ\Ã=k)w™±E×¤\à}+&a\ëfVLƒ4ôXdN¸¿J]y%W²&m´ ­+\Û\Û˜´¥\Ğ©ZYj£i½\ÅMˆ(u%š\\\É˜´mÑ‚4dğ\n\Èa™\ÅK\İˆnt\Ô\'\ÔzQ\ì;+Oq‚\ÔjºZ¡	\æ Š\Âõ‡\Ú\ÎO”cô|DÁ\ëd\Ó\\†D>úª„t@\äCŸ\Ãs:C>tñ8J? ¦¡‹\Óa/FCb\Z·rŞ¦;¥ND·\æj½.K¢ºœºÒ‹ÒŠú`Z/ö‚q\äq7>H¹À6ùœl3\Úp\Ş=§­ó\É~\İ*šyñŒ9¥\ìı\âL»\×CD|\n¨\Zş¯°²´TÁ„½º(ºK”†\Ş·G$DAÍ¨j\ã¤]cˆ„(¤µ0RMU\Ç\â[ÒŒ`©.B¡ÒŒ^©9dBTJ3za ¤\æ\ì‰Bš\ÕT˜©¦ ıŠŸQ!5‡P´K©(Å¨ö¦\á\Ôñ\ænFdk\çÌÈ°º\â\"\åı\ì.±\Ø\Ãóö\á~¡•\Øq }š2\ë\Äh4l\Åñö~Ô‘ Ğ¸ÙŠ\ãûQ­‘x [qü¤‘\Î\Í\ê\ÓOÛ«\\(\ÖÁ¤0?›­8n\Ñ8‚§Bğ´\äØŠc¹5n@\ÇõY´\Şb½)I4z½“ug#7š;³±\ÇM\ÄY\åÿ\Ôİ·[‰¤i›Ï·„<róJš’£ÔrKşŸ®\ÊñP_N©”vj-\Ò©¦Hº\ÈöL*%G˜\èo”º\"\è—^y\Öñò]i_]¨8JoN/§TJNH1”^WO\é©DúÀ\ÄPú¦\ä\èG\éÍ‰ _*=ü-4ƒ¬>xÖ‡y±ş\Ü\ç¦\ä<}ùp\Ü<ş\åe{\Ş4$æ¸¾\ç~hX-2ÍM—÷\Ã\Zhtlü\\.¶`\ã\ç-\Ñ<’d/³O…·zS.{¹CÕ¿\Æ\Ùø¹œ\Æ\Ùøy‹\Æ\Ùø¹Ÿ¿l·I>(]®9\í\'~)é³§\'`ù‘?u\İ8|\Ë\Æ\Ï\ã\é\ÜqW«N\é \×kE\ßJ\ãı@Š\é§\n\ëTşŞº\Ì\ê\Õ\ÙÏº\\\à¯ğ\Ì\êİ©¾> *W\Û\Ş½ÓŸm\ï‰\Ö\é¯\×ö\êvÀ¤Œ˜‹k;~¢\Û\Ûñ\Íô\ÚñS\İ©öVfózõÙ¼şl\ê»ó…¯–¨¾Š \ézº\ìxÏ‚ÿj³şû\Ê\"\ÎP£ó®«~k\æDª<Õ“\Ä6ªY”\å:\É\îmˆN¸½¨ˆ_-…½\Ü\×g\îö«›$EQ\Æg\ïO—ÿ\\C\ró:©´Ÿ<\ìmNd\Â\ã6\á ~¶Œ´rb©ŒR‡\ÅÔµƒ ,ûıºü\ä+©=‹‘(ãŠ£öº\Üe\íjO%ş˜¦öºüfJ¯ÿczuõÆ¿’Ú³ˆ!jM¸+9,³2iP{Á\Ô¯>¦7ğf‘­\Ô\ÈÔ‰\'\ã¹7/y\à\Ó4†\àz½\Õ!¤Á1,‚ı§X\Äp\ê¡V Œlq\ã•‹ £\Ö\Ñ_ q“\Î\İh5‚b\Åòñ5\0\Ô)Ë—H:IO\ãX>;:4|x\Z\é\äŒ+i\Ë#GGMB\ã¤k±5\å^k\0HXã¤“4ğ4Ê’7(\Ïò~\å®¤q,gXƒ@ıVºgœ°-m©\Æqo\rFD=\Ûúœ\ŞÀŸ­ü\Õb¡\æ\ÙF«È›ú~Õ¬i$»ÿş“ğøºU\Íöl%\ÚB\ê—\nÚŒù\îù»-H°¶\Ôz\r¦º\Ó\Ú\ß\é\niÍ¶½Òªo­™\äÑ·\í\0kkM·ƒª­5\ÛôZ[«nL\â-v\àf\Êm½ú\è\ß`\ê-\İq¨Ø2Š¦F†1“\n}”dx\á3C\î–6t§\r´<I\ï\á`\0M\r¹\ÛB\Ût9Ÿ\\CKôfÍ•€&9\è4n\Ò{8\Ø\Zgj\È]z/o33\ä.½Ys%3\É¦5NzG]\ãDC\îõ‰±Á\ÌqÆ«¹b¡­:\Ë\é\Â\é\ä\Ø\Î\ZUşı]öEZøŠ»úCmoÔ½\ì´!\Ş\ç@\ÛU\æÑ‹l97p„²£\×\Ô\Ù	²h5u½F\Ù³®Lò\Ø[l©\r©£+½\r©£)}¯!uA¥7‰4´(ı\í\Ä\Ï\ëdƒ\Ù\Ä÷\Æ^^\ï*\Û\Ï\Ç/ƒxLK\ç\áşs\Ö[«šŒ0\'\à\Şd¯C}\'Ï¤¬ø¤-\ç@w?,\ç@s?z\å\êvÀÒ‹^Œ\"zA\'Ï¤­†\Ójišè•†¨\Û\ËL\ì€\èH}ğl0_,\İ\ØUl¤.\Ü(^AoN\è\ÜYß“*–3=h\Õöó4ï–¡^›\äø\î‡\ä•4e¶ó\Õ\ÒóSUu“rŒZ\ÜKG\ĞÜ^éˆ \Ò[î®ô–{\Ğ\rº.ùÊ§9‰Q-ö³W\î!ª%\ZJ/J4\ê#ƒ\ÅÌ‹\"\ÕL«e\äDn8\é´b3­ö\çû\Ñcòq\r#\ĞRffKœÿzLù)©ó†—\Õa>Á\Úúô°\ÙÜ:\åq\n\ZK3Œ¥’Š·ûiN¿¡\Ã\Ò¹‘H-°\ÚL+ô­N»Å[°4C‹\Ò\ßN¦U}0p\è^¸r&\ÙN„l¦\Õ\Z‘ø“i§ıŒ~ºƒ¦iU\àº>­÷Ÿ6ûO÷#Xs?/&lprñ\\s¶%\èj$[©l+•óaxxó$;µ+¢\ËV*\ÛJe@	·*´•\Êv$pwO™6E\Ä-–Yü;E¸n+µ‡\Æm8•\Ê~}$0´¼wı¹¨9¶\î2‚J\å‰am\ï[‚¶„\0|ºÁ\×(«\ÛL·Áô\Æ\É\à\Ö?§üóƒ\Úk0]\İ\Ø4t;`\Óxl\Z\Ï)5 ´¿lyF÷XZ‹Å½™»_	\Îf\áH…\Z3qüy´šN—Ù§À¾§¸Ù–¦¡˜«o\Ñ2ò7KU*Î¤-’Ş‰À‚ ‰„°]\Ô+™,P\Â\îö5 2\î·RÓ€\ås8¹=q¹y\ÉRz2.XF:;…;A÷ˆ&<¥\'³‚e`\ÅVú!q€;°Œ\n–oW~0%½NTú!•ô5\n¸RÁ¿>ù7\\\Æ\ÑØ(\Ö*\Ïb7‚je~	ã—\Ë \ë\ät:¯gPk²[—\Ï@Ø¿\ìV»ò\Í\Ç\äa³[oK\îò•Uø•û/\åû]§Ø‰&÷¤1µ\éq¿ µ>›‹¼ÿ×»Å¯\Ï3š^Š¿÷‡}’;†İ¦ŸŒ\ê\Å\á$\æ\0o¯\Éñû\ä|N%(°¼o\Ê÷;‚Õ–ñrl2mĞ¤’r\Şó[š©\Ü\Ò\ß»õ¾ü\å•;òYwt\Ü|z\"5\Ì\æïµ±À{ò§D²»Ø·D9\Ï\Ù-9+\É[\âŠsÀºŸmò‘s;-›Ù·C¹¯º….¾%AOu­!ÿ}K”ó¨Y\è\"\Öñ…®–\ÒI\è(\çM§ĞY÷\Ãº¶>÷\ì\'D¹Oº…n\"~Kc\àI\ÂBG9/š….f\İ_\èj)\rBOkı\át>®\Î?¼\ìRcNı	P}÷Ù°õ\áª\ájG\ËE¾|\Ë&‡^-<?\ÏÂ ª\Ñ\É\"Š¼•\ã\Í1:½ÿ_¹¨p–Ã‚5\Ã+`A\ÜğORQy>€gğ–\\œH\Ç\ÔÒ£¡j,—§¯w‡\í\áXü\ÄõË™$5À³\í\æ{˜=i\Íög\ì’w\Û)M²\Óy¶ı)zñû¯R™\Û µ“W\×HIV6¹\âZvÀ/¢\Û[¼\Ø=%»Å¤öZ¼¨dE\Ñ\Óg\Ä\ÜNrE}òj\äNV\ÑØ™e4@–¶Ä«ñ|¹yô¯¶\äÙ¶M¹ŸZ~¢\Ş6E\İQ[\Ó\í‘\å\'\è~‰mØˆ\æ—X~bùIu/ŒŠ\á\ç¦5\ËDˆ§°ü\ÍX~r-;p;ü¤>@7rg¡MB5~²ò;v*Kµ\Éßµ[a(nvMşÎ¶öj\Û\Ş-(’\İİœ©l“¿}(Z µ\É\ßhn\É\în–N›ü-§ô$»»V›ü-®ô$»»R›üİ½\0\İ&C\ÎııWŒÄˆ\èf’¿\ë#t#o½ß¡ü4ğõNv#d<[\Ì}/\ÎkUù!\×k\ì\Ø\æmğË£$ó·ğjN†S]\ê”y\Ô\ät&œ›–I…\ëThö‡\Ú!\\­y­”¦r\âI‡|nL\åÌ›ú\ÔE\ãğ\ì\0•±Ÿƒ™Á‹\ZG\Æèƒ¥‹¾]\ÉPe¦o…\êbw\Øv`@[ º˜ Š(Ì¶ºİ•\ìÀR´\\n\n\Âe</u;\0şU<\Ò^YR¡ó8X„Šıo‚™\ç-qT\Ö{\0 (÷#ª²$ˆ¦\Ë\ÕÄ•©,yşñüe›µ?P¯\êz\Ïy\Õ^bl\Ö¨o\ç*ÿ§^²ƒ\áŸôZJ\"¸»D\åe• ‚”I\Ôsûµc„G˜—¥RT^–>01”¾×¼,A¥§ˆ>Pqb¢,\Ñ	)†\Ò*	K˜J\ßk– \ÒStC¨8J;WõAºQ¸šyS\èí¡´2q—K×‰ø]prönLEˆ.¿XEVj³!¢\Ë#¾R\0„\â¦Bu9\ÊØ¢; \r]3^ t0\"ºœ\ä+\ÙŠ˜ntù\Î\Øv`@\"º|h<;0˜\r]~ó•\ì\0\ÅPL·/Zú±RQ\È\áalˆ\ÔgğFñb\á\Î\ç9·MÕŠ‹\É8;\r0†¡\è\ÙòÀ6\îƒ\á\'ºß•\ìÑø‰\ËM2$D±{T¥\Ö\â\'º(_2~¢‹\ê]\ÉˆŸ\èb‚\ØKØø	ø¢i°2MX®a„2¦\Ï†Ÿ\è¢zW²\â\'º˜ ºL\Ø\İK“ºö§\Í#()[Œf\ë®bÂ–?Ÿ/Wa\ìq¶r\Zz½R”z<\ËbÓ¨\0“šË˜\Ü+\Ù	“x›-gT\Ò\0Ù©_T\rh˜tÄ—Á\Zg’‡N\ãf\ë´[4\ÎV]7hœtJı•\Ö8“|aZ\ãH\rµŒ¥º¾g[\Å­\Üh\ÅyŸW\Ù\È{¼rtÁ\ï\ÆN&de\ŞueBV\îW\'dq’»¿.=h\ÓF\\ü´\Ù%§w?$¯\ï²ùN \Éút6\ëû\ã\à\Óhû\È\åL.~Y*\ËmNõ¼‚s^\n\ßgŒ|\Å\È+ãŠ“²¨+«\Õ,¥u\éÕ“\Äd•‘GÀ#Q¹‡|Š&EŸÅ d\Åã•¡\ÄPûŒ¿+ãŠ£ö½\Å\ÛUÕ€GÀC\íu\åXQz-ôoo(©=+ü®%†\Ú\ß`¸]Wµ\ï-¼.®ö¢ñöú\Ü\Şñt:õfs_­bÁ\r¦óI4\ëÔº\ézù@4uŒxõ\Ã«9{\Ègrf\ãõ³\Z\rBd\à¸R\0‚\n²\ç(eA@\Ôn5­›‰©69@™`!\ÔiÅ¯\0\Ô2N¸qb\å\Ûru\ê\riG½\Ô0uÜ¢÷N+8\rñ\Ò\r\Ö8*\Èn”\Æ\\·*m\Î|\Â\ê{bbEù\ÔFiœY)*iqe$\çJkd7J\ãˆû+ƒ[U»d4NÔ­O’CúH\äGy§\Ù »\ã^86}dÃŸ\éuVº{å•´òl{/ƒ¡q³\é#-›\Ù6}$\r\Ï<g\ãi\É\Ñ; ‰\\ª¦˜\ãFy¶FiœMi\Ñ8›>Ò q6}:/JDo”>R6<»‘»X)/‘¿*’P\Òc_O\á&`º\Ü1l¾D\Åtó\Æ\Ğ\Ş\Ú7˜!D7²\×Ñ®\ÕBğ\n?”.@²Oº\Åğ|\0—¥·ŒA\Ñe%ˆh€´S¹\r\Ò4´\Ü\\ªEòI\à§?­÷Ÿ6ûO÷#ˆ¸\æ§\çN\ë1•½:\ì\Ï\'8s}z\Ø@F`¥ˆ ƒ\Ù)ò\Ü\å\r¦Œ \ãŒczK!´Tt»,‹\Ò\0)†\è!ƒDLV\Î:˜v\àsH\ĞqÆ±½å”´Š®hÌ½>fx<Ÿ\Å\Ş8Tlz¹ŒC\Çyz¼e&[’®b™Iòñ|?\ZP¾J\ï1\Æ\ß\Ï2“\ä—3¬„²ış+†G\ÒC*{«Y¯fYfrx9n’cZ/D\ÙÕ‹…\Û\Úkh±–™ \Û\ËL\Ğ&[f’¯Pœ\Ú\Ì?3+¬\Üğ\ß\ïÁ\'$½c¨ù`ß•MdR~	\ÌNM÷\Ğ*\×e9ğ\Ì\ë|’\ßp]–lÄ¼\Î\ã}_¶•Ã¼÷u\Ïb_\çM\Ö\íeÓ™™×¹$-ª\áö²\Ùi\ì\ë\Î÷eC˜\×ù¤ \áû²Ö¤\ì\ëxpºYU3óBo\Ìù¡.G`üw!Gb\\\î…<‘\á^È‘*üœTŞ™\àø¼§¢\Ñx!O\Ú\\\Øx$®\áñC‡§\Æ/\ä>~\Ü<}‚‡\Í_\Èû¥ Üò\nn¿ñ:\î÷ñ¤†÷=\Ôğ¢Ç‘š²=\Ë\Öx©q¹\ß\È—û9bğT\Ê\ã\ÈM\Öm¬AP}Ü¼«şısr<n\Ó\Å`\Èô\áW\ÃX\é;Ju>ot5ù´~ø_¶%ÿ“.†\å?>¯’|2evø»ı#Ô…”;b\ägq\Ú9T’»$[©lªÁƒ\0\Ü\nDIoF–ğù½\ä­>G/aq\Év™_\ÈSLĞ‚\åm´ ^œo\ä(&,gœ9ŠY{e\Ş#G1y,õ·ğŒ–\Ï\ÑK0/Í·˜÷d.u<C\0¾a\ã/õ¹_È‘Ÿ\'p°,5~#¬Ÿœ[\ä\ÈMÀ[BÀ6~#\ïa±µ\áüRØ¸\äÂŠNSV>“}ˆˆ7û\ç‰\Z²¯\"7\Î>D\ä…}ˆHûyt\ìCU\É–\É\Ò¾ı\0\0\0ÿÿ\0PK\0\0\0\0\0!\0f›p\\\0\0¡\0\0\0docProps/core.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œR\Ën\Ã ¼W\ê?X\ÜmlGJ+\Ë&R95U\Õ$j\Õ‚M‚j0j\'_°7Q{ª\Äewf‡–r¶—uÔ‚±¢QÊ’E XÃ…\ÚVh½šÇ·(²*N\ëFA…`ÑŒ\\_•L¬1ğb\Z\r\Æ	°‘WR¶`ºB;\çt±e;\Ô&¡<¸iŒ¤Î—f‹5eŸt8O\Ó)–\à(§\â \ëQ%9%õ—©{\Î0\Ô A9‹³$\Ã?\\F\Ú?z\äŒ)…;hŸ\éh÷\\›³\Ù{+Fb\×uI7\émxÿ~_<-û¨±P\á­ RrV8\áj \Ï\Â\î¨r\ÑÒˆ–z¸-ñˆ3@]cˆ²„S;<t\í\ç~\'ü\î@\Ö\Ë\Ç\×ÿ\îªV„]’¼gŒ¥¿©?\\<òŠ!ş	y›\Ü?¬\æˆ\äiv§şLWYVLò\"M?‚\ç‹ùphÈ£±+H\ïøòS‘o\0\0\0ÿÿ\0PK\0\0\0\0\0!\0\îŠ\Ïbó\0\0h\0\0\0\0\0word/fontTable.xml\ÔW[o\Ú0~Ÿ´ÿ`\å}c.¥¨´¢¬lšº>¬\İöl‚!–bÙ¡´ÿ~\Çv¸”˜B6\Úm \n›ƒùò]N\Ï/E˜6\\\É^”œ\à1™ª1—\Ó^ôı~ø¡!SP9¦¹’¬=1]^¼w¾\èN”,‚\ÏK\ÓÕ½(+ŠY7Mš1AÍ‰š1	k¥-à­\Æj2\á)û¨Ò¹`²ˆ	\Æ\íX³œğ\İ&\ã3•\İ‡t[(=i•2c\à°\"÷ı\å2º(O‡]Iœú\îIŒT\î\ê3*•a	,=Ğ¼\á\ÜL\àqŠ\Ûğ\ÜÂ§Ql¤Õ†«Ä—\'TğüiY\ÕJP\éf¼H³eıjNG9óK†OaanF¾°¼E¾’\0\è\Ï+¤²§ñ¼’º>OAú¬:\Ãñcy*@\ÜsÁºeôÍ\Ün\ØF„\0\nm\Ü\0$šğ ğªF‘k88\é‡kDP9\í4“²²Fä¬¬q¿?ñ}Gd \æš3m1	òƒ\0/\Zøp°\Ü €I4„\Z3\"È„?²q•;±h¼?AHVù&ˆDkI°õs˜A¥\Ğy¡üöÿB(}\Ğo\Ø0¾y4!,)€a‚ò0nL-ş.%TŒ\0Š !¬Z¥QXÃ¨‡D}\ë\ì[\â‘\ë\r£h:*6¯*\â€s†û‚Qœ¹>‡\Å=\ÍÀ2w\0\á)\á=\ÓR\ã•)‘8l\0a³[ \È>\ÇLpmÇ¼\åb47\èJƒn4/n!g—\á\çµ\Ñ#i\Â]vøS^\å\Íğó\×}\Ë=»™Pö9œ	Ÿ?¡¯\\¦™B7|š\èK„\í¤=#8\å>¯Š\Æ¦\ÇTş\Â\è\ÛYª½)\ë\Üa$ûy‘\ÔuˆU|\"´	;>øQ†L\'G0@\ëû\å\Şx\Ô\ì\Ãü¬$\"aq\è¸\ÄH Clr4‚H\\%¾ü|\èş=tğrüC» :‡\ÛÅ€\æ2tC7Uº1¢v„\Ö&\Â\n3nE +s}Á8÷\n¤ü7\Ä\\ü\0\0ÿÿ\0PK\0\0\0\0\0!\0¦o¤•ü\0\0ù\0\0\0docProps/app.xml ¢( \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0œSÁn\Û0½\Ø?¾7r²tiEE‘ \è!k\ÄMÏšL\Ç\ÂdIT£\Ù×²›\ÄYwšO\ä#ıôD>±»÷F“|P\Ö,²ñ(\ÏiKeö‹\ì¥x¸º\ÉHˆÂ”B[‹\ì\0!»\ã_¿°·|TR˜°\È\êİœ\Ò khDa\Ù`¥²¾S¿§¶ª”„••o\r˜H\'yş\Â{SBy\åN„Y\Ï8o\ãÿ’–V&}aW\næ¬€\Æi?%9š\ÑÀ\n….T<Gø”°\ØC\àSFû€½Z_>»¹e´Ù²^Èˆ\Ã\ã\Ó\ëÿ\0\ì\Ş9­¤ˆ8WşCIoƒ­\"y\î&@£\Ã†SÙ‚|ó*’a\Ê\ÖÊ ”o3Fûµy±÷\ÂÕ±y²­\Z–xy^	€\Ñ3ÀA¤\Ån„BÉ¬ód´õW;\É\ÈO l‘µ\Â+a\".µõIk¢ç…Š\Z¹±\Ö\ç]8l\Æj\Ê\Ç]—‰ ×€…Ku\İ	\á¹Â»\Åˆ\Åv\Zz©½œ\'jTO¶^µ\í\Û~’\Ú]ıë˜¥mœ0~ÿ°&›]1\"\ëb5\Â\Å~Ài¿Â‹+\ì*™\écÂ—\àÀ¯*\Ö[\'$.\ïz2C\ãœ\r2(±-úJ\Üø‘ğ°GÜ†\×\éTü\×\ì¡<ö|.$\Ë\íú—\ÌÇ“Q_\ç±#†>9=1ş\0\0ÿÿ\0PK-\0\0\0\0\0\0!\0ùh\"\0\0­\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0‘\Z·ó\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Æ\0\0_rels/.relsPK-\0\0\0\0\0\0!\06H•h \0\0¾\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ê\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0föü;+\0\0\ß\Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0L	\0\0word/document.xmlPK-\0\0\0\0\0\0!\0\Ãcq\0\0\Ş\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0‹4\0\0word/footnotes.xmlPK-\0\0\0\0\0\0!\0\Òb2\íp\0\0\Ø\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,6\0\0word/endnotes.xmlPK-\0\0\0\0\0\0!\0–µ­\â–\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ë7\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0$~’\0ü\0\0¤Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0”>\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0ü!Ö«\â\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¿P\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0:úø¦¡\r\0\0ER\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ÓR\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0\ê|Ø„\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0¡`\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0f›p\\\0\0¡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0U~\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0\îŠ\Ïbó\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\è€\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0¦o¤•ü\0\0ù\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0„\0\0docProps/app.xmlPK\0\0\0\0\0\0€\0\0=‡\0\0\0\0');
/*!40000 ALTER TABLE `user_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` bigint(20) NOT NULL auto_increment,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (2,'ADMIN'),(3,'DBA'),(1,'USER');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL auto_increment,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY  (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`role`,`username`),
  KEY `fk_username_idx` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'praveen','ROLE_ADMIN'),(2,'alex','ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  `firstname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `phoneno` varchar(45) default NULL,
  `dob` date default NULL,
  `passordconfirmation` varchar(45) default NULL,
  `document` mediumblob,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('alex','123456',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('praveen','admin',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-20 13:54:35

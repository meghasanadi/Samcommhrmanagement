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
INSERT INTO `job_tbl` VALUES (1,'System Engineer','2017-12-11 07:46:16',NULL,'Networking, C,C++','Bangalore','Ã?Â¢?Ã?Â¢	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','','1-2 years','full time',NULL,'Active','',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_02',NULL,NULL,NULL,0,'Sam'),(3,'Hadoop Analyst','2017-12-11 07:56:26',NULL,'Hadoop, Hive, Pig, HBase,Scoop,','Chennai','Primary Skills (Mandatory):\r\n<li>	Python, C/C++, Strong OOP concepts\r\n<li>	Development of user interface with QT\r\n<li>	Very good in software development and design with a scripting language Python, 4+ years of experience\r\n<li>	Very good in software development and design with 4+ years of experience in C, C++, GUI toolkit like QT(5)\r\n<li>	Strong aptitude\r\n<li>	Knowledge of Design Patterns\r\n<li>	Ability to quickly grasp complex products to understand the different layers of the product.\r\n<li>	Knowledge of coding guidelines and compliance.\r\n<li>	Good written and verbal communication skills\r\n<li>	Experience with Linux Operating system\r\n<li>	\r\nSecondary Skills (Good to have):\r\n<li>	HPC, Multithreading, OpenMP, MPI, CUDA\r\n<li>	Graphics, Geometry\r\n<li>	Familiarity with Agile development processes','SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focusSAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','2-3 years','full time',NULL,'Active','9lpa',NULL,'SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus','SAMJID_01',NULL,NULL,NULL,2,'Sam'),(4,'Hadoop Analyst','2017-12-11 08:07:00',NULL,'Hadoop, Advanced Hadoop','Bangalore','<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li><br>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\no	unflinching support to all level of companies enabling them to vie in their respective fields with IT enabled services precisely to \r\n<li>	accelerate its focus on software testing outsourcing and management. Now Samcomm has educational based solutions as yet another \r\n 	strategic area to unwind innovations prompted by its experience in IT industry spanning 14 yrs.!@#$%%^^&&&***(()\r\n<li>	SAMCOMM is a privately owned software company that provides a wide range of IT, ITES and outsourcing services with prime focus\r\n<li>	brought upon design, development, re<li>engineering, maintenance, support, training and consulting assistance. SAMCOMM renders an \r\n','','7-11years','Fulltime',NULL,'Active','',NULL,'Short Description(50 word only),Short Description(50 word only),Short Description(50 word only)\r\n\r\n\r\n','SAMJID_03',NULL,NULL,NULL,0,'Sam');
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
INSERT INTO `user_document` VALUES (2,70,'JADHAVAMOLASHOKRAO[3_0].docx','develop','application/vnd.openxmlformats-officedocument.wordprocessingml.document','PK\0\0\0\0\0!\0�h\"�\0\0�\0\0\0[Content_Types].xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�U\�N\�0�#���(q\�!��G�D�\0\�޴�m\�\�\�߳I\�!���\\\"E\�\�\�\�\�n\�ɶ*�5���\�\�8���J�E\�>f/�=�\n�Di\rdl�M�\�t�s\"�6!cKD��y�K�DH�C_\n\�+��\�\�	�)�oG�;.�A0c����x� �\n���\"��^�\�Z4!$Ǣ\�}]M�1\�\\��@\�\�F� �mQh	\�\�UETI\r缕�V�I}SC�<}�B�J����mo��2���\�fB����\�.t0t�uPvҞ��n�3\�i�+�\�Q�IfU\�����?��WD�]9DP����`\�@I=\"wI�yM�u�\�V\\<�7@��iax\�\�F�d R\0X\�#rW�ͱ@:>��\��b\Z�^ʂ\�L\�K��\��t�\�����`\�\�\�\�OZ�ǳYW��:\��l�/\0\0\0��\0PK\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0_rels/.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�JA�\�\�a\�}7\�\n\"\�\�\�H�w\"\���\�w̤ھ�� �P\�^\��\�\�O֛��\�;�<�aYՠ؛`G\�kxm��PY\�[��g\rGΰino\�/<���<�1��ⳆA$>\"f3��\\�ȾT��I	S��\������\��W���\�Y\rig\�@�\�X6_\�]7\Z~\nf\�\�ˉ\�ao\�.b*lI\�r�j)�,\Zl0\�%��b�\n6\�i�\��D�_���,	�	�\��|u�Z^t٢yǯ;!Y,}{�C��/h>\0\0��\0PK\0\0\0\0\0!\06H�h \0\0�\0\0\0word/_rels/document.xml.rels �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\�N�@�\�@�.U�1]z1&�*>�\�G�Y�;Uy{\'6P�\r�\�q�dg~�6\�\�\r>��Ơq�\007E��\�\�\�ͣi,tk���mr}�y�Vruӻ���S�&꟤ty\r�v�\��Iil��K[\�^\��������\"9\�\�\n%\�\��\�\��\�˽MY69<�|\�ҙ�\�\�P\�\nH�\��\�!C�<o��ip@\�\�uGƘ,|J��꬝�b��+�GC\�/\�t�zi|\�s<\�,_\�Q0EK��O`��\�[�%½OBi�1L\�\�\�\'\����\�,!�䯓�\0\0\0��\0PK\0\0\0\0\0!\0f��;+\0\0\�\�\0\0\0\0word/document.xml\�}ݖ�Ȳ\���5\��\�Yk֜uʶ��٥3\�m�]�T\�޷e�\�F�\r�\�\�W�\Z�z�$�$�T�H�L_�\\AfD\�?�����6�\'⸆m\�4Z\�\r�X��4�Ǜ\���ٻ~Cr=\�Zj�m��\�q�9�\��\�o\�\�K[߮�\�I�˽~�oW������\�Wd��\�\�\r�\�\�\�Yk�\�<~XkΏ\�\�n�7�g,\��^>\�\�f��c\�4��u\��nm\�\�\��\�\�~x0t\�>�_8Y\�\��rL\���!&���ܕ�q����>\r��\n�6���\���\�򶥣=?֦?\�g\�Yn[\'�W\'��\�[ʹw3\�#\�_d�\�`$kͰ\�Ǡt\��?d\�{`\��\��Q��\0-� K{���\��\Zdqyw\�h6\'\�^W7�K��\�fS\�v\�\�4�8!\�\����3���on�R�\�(=��ͭ�/p\�\�̶<����a\�4� \�R�4��J�\�ȕtx��\�_���f\�4\�f�]\�C\"\�>�W�g�F��N��)\��|M\�赻\�t`\�\�!.q�Hc(%��7��7\���d&�Tm�{j+�/�7\�\r��a\�e�\"\��kMlВ\�N�\�\Z��δӚN8x`��,\��b��[b\0*�\�\�\�\����~��ER\���ם��{\�*jϚ#yH\��\��L#¦(͉\�\�t\�V\�RD\�k	?5\���N�\r�\����\�\��i/\�2�\�\��c\�q\�����\"��\n\�3�d\�u�i9BUZ�\� \�1\�tv)´3t�}�s7�3+t۴q\�RiM��Np5�J��$\�\'�e1���\��=�\��\��,\��F��Ŗ�Ϥs&i��T|bIs@�p��J�V�\�i�쒊p\�}Y��\��\'8�\�\�|�J/k֔U\\��\��sM�\��6�\�\�hF�1H�S�\ru\�4ӆ5nv��B\�X\�\�\�;\���Ԗ+\�)m�Yi*�j�?B�\�\�\�7\�X/��0��\�\�����6�%���\�ٸ\�Z�V�u�2��5��7m�\�r���B��\��\�i �j�����l��G�m3$�\\b\�0Wt#�\���͞�qaQ���\\�ƒd\\0�\�\�%ꬶ\"�G�\�u��l��h\�RF\n\�\�\�\���5����I�Z�AS�\�n�\�\r/V@`Sn�1d^\������\�~\�\�i��1\�lT\��\�?\"�Q�5�G���\'\�=\�fr��\0�\�\�R��\�)�٥��q\"��Cy\� e�܎\�=y�yJ=\�v_n�K�)m\�ދI� \�j�\�=�ɢO;�l�\�n�\Z��7\r|\�2���HD1o;(\�{[\���A���I\�5p�Q2,��^`�\�}g;���\�r\"�\r:\�mY\�L�żs�7�4\�\�Jz^&��kk80��a��[ũ^֠\��$�,R�#˭N���8Q	��\��t�D\�z���p³�5%\��k�\�[Q\�h\�\'\�\�	ݷ���3\�Wk�:�\�59%�\"��r\n�H0,-��,\�t���\�ϷkH\�x9\�\���\�$\";\�,�ۜ��ؖ8�Y~\���%o�n��k3\�0�Lx���\�|�	7Mv\�@F\��Y	+�9\�eV���B3���=!�X¹\"���R\�\�.>	>�\�^�t\�MC\�\�\�>�$�S�V?f�R\0�_��ҏ\�BS\�״՞\�:\�\�q��n�\��DQf\��&\�\�;1m\�(�\�qӨ6�@o[9\�ƙ6\�^�ݜ�\�1�	X\r�\�%�sCЄ\�I\�r����^�1nڛC˻=\�*}\Z�l\�I���٘�o��\nr�iB9G� ݋i���\�g\�I��Y�N3ؖ\�Nw \��8�\�־��\�^kЈv\�Hwv�j-]	<\����6[�\�\�\n�;�T\0I\�`���� ��\'�qҰ�$W�\�4\�b\�C6�I�D�48!�ZQ~�\�&	 ���\�38�\�5�\�0�@��\�=z��d/Ay��~2k�j\�62t<\�\�w\��}\�X\�Jo���\�{!�3X\Z9}u�\�\�LCK��4\�ni?jV�\�fJ$�_\�v��z\�l��\�<�g�\�\�+D�\�Լ�\nSX2�\�~i9�/�V�q,\�\�w.#+5\�іeN\�Mנ��d,z~�U�@l!�%hЉ��4xx3�i<n�{j�s�b�,��`g�<��\��t\�՚t&gEy��\�\�\�\�8\�IZP�]hh�\�mM�\��G\�c΋�\�-S��\��\Z\0�\0I�K~\�\�tZ	�\'3Z��v\�h�4ǡ��J9�Q��?�#!���6\�\�\�?�\'�\�\�<��\�d!iI[%j\�6LC�H\�θ9h�}\�/\�;D\�B\�t8�z^��Gb8�R�ٞ�i�\�97\�īR�%O{\�k�J��J#\�I)hz��ۊ\�:�f6\n%q,5O����Z\�5H(?\�`��%T\�ݧ\�q��\��9X	�24\�R�bxM�Bxo\'H\�M7/�\�ĵgj&�!�ꐗ�\�P-7;\�~_d�\��*\�b���\��S\�3\�4�	-7\nyCe\�\'fRteW�\�\����)<\�2�aj�+\�\�H\�\�)^�3\"��hIЇ\�x�n&�`b�V�x���/���D,{\�9�㣦��i�ݝ\no>�E:یi\��	䣟��K\Z�\�t\�t\0��\�Jxm{	\�:��\�A�h\���2mb���R4^5��\�$D^�\�\�\�$kɵMZ��m�|�\�g\�����|\�	�\���`\�t�\Zt+�~�ZȊ�����$�z\��/x�\"\�\�4�ɀ*V��s�$J,z\�#�ʂ�Z��\�KbB��?ְ�;T\�\�Z\�%\�\�\�n��\�^`x\�%���	�\��\�҄��*\0T[1�8\�0+RW\�\�^;�uTU(\0\�\�P\�@A0\nD\�2,+!N��r�\0\�A�\�\nt\�h((�\�d�.���`-v_\�\"{5\�Od�\�\��Qz0~��mp�(3\�[_���\�D�\�)��KԖ���ءKj@�i�P�\�d\�mMh\Z4�z����i$zDy4\r�i��RbG���ٔ�\�\�\�z�p_�ҏ=!B��yV����%m�G�n:\n�Z\�\��c���\�)y7���=e\�g�W��{\�\�\Z\�H\�0� I\�<�YG���k��u\�@\�\�R5΍噮Z�6\ZhAb�\�!�/b/�\'\��y\�\�c�\�\�\'\���\�ۛ\���i*\�n�jp:\�δ\�\�ti\�X\�=��� D�\0�b�Pq�s) ի�\�5\�\�dD�\�ػ�����\�*w욛\�\�\�\'ݖ�]U\�ωe@\�4�|\�	P\�x\�D�I�\�5`G�@W\"\"M�G�]!\�q`{,c,�)rf�(Q~L\�H�ߛL�\�+󕾰�ަ\r�\�\�\�W13�;\Zȕ]�끍�_�Iw6.\�7-bO\nc\�\'KOc\�\��+A�\�\�3F\�g�\���j�\�SeZ]YO��b�\��\�אl�4��\�cٷC��(yH�eJz\�\�\�W�}�L/y�\�\�ϔ �0KϾX�bό�x�\�ԫ`��[\��j�\�^E�c�B�`�沰|��:�=2\�3��(E�\�\�VggЖGF\�A\�\�E$���\�mb\�z�++�\�:U�X�߫�B��}�9���_�Y�x$f�\�#�;\����/dɛ	y�5�Xwl�,gkZv{D�U0 x��\�M�B��<B�1?Uז�����pL�\�~ҿ�\���JW\�OB���n����7\�\�\�\�\�i�\�\\��\�M�\�eG\�K���A�\�\n\r�B_�nX$\'`�NԨ\�\�C�U\�\�[��\�}�́׃̉�&\0A\�p\0�<\��\�~�3H$,\�c\�\�9���\���0����B-ʬ՚�L\�=z	�H�Ѵ;�\��L\�\�~\�G�\�፣\'1�����+\�\�dj-�*�-��\�s\r4�\�b��vk\��i�\�i�0\�w\�\�ٙ�OM�åzgg\0�\�R\�l2�\�4-��p�:ʐ\�\�[\'L\�\�]�\�\��o�1\�.E��_˘6	��y\��b\�(\�X8~C��8��i\�t^\�\��!�\�\\\�0�2eE�&QY���\��Q�ט�4����\��F�YYp�Ԅ�m���F��\�`\�\�\�\�;\���\�\�>\�b9��lG�w\��H\����Nf\�]ɫ�\�nX�?��w\�c�\�\�N-v)b�DC­&t�9\'�^t�6\��C|� 5F\�\"K��9\�.FDg\�\��[a\ZzBl���$\�z\�\�P$g)�W��\�\�{!d�\���!\���D�c�\�9���=AX��\�\�-Ld|�>C�OX~\�7�t2��７\r��,j>�����4�ݓp\�\�v $\�{fc.=(ϡ1	�\�\�1\�\�\r�\��\�ih�&jD�g𘴢�\�kK�\�1W�_mX��$��\���\�~\���a~\�^\�-\�\�\�$�u�e\�\�/��#xp<<�.\"�9\��\�>\�6\�\�VZm�!\�e88�^�\��҃��]	A\Z.��\�jZ��ӎl\�\�O&�cb�_5��E\�DEhOVC!��\�c�,�\�[���\�P\��H�0��\�.�S\�=b*ӊ\�	i����\�k@/��NG��女\�E\�\�\��jb/�l��u��86���=)\�\"Z���\�`GcV���]��p��;�����6�\'[�1�C$c����ƹ�\Z%\�h�C�ߠ�\0\�*B\�}�\�zd�?(�|\�ǲ�.�7\���dz\�T�X�\�O0�\�gW�\�\�^��ZL�k\�\�`ngX�\�y��A!�\�9v�l\�⇯]ބ\���\"7j\�t]\\B*���@\�Э��א\�_�L�\�t��P\�?�]��\�a\�T�#\�|3-\\�z#\�ft\��W\��\�_b4c4~�9\�\�I`\��\�6�\�j��>���\��x�#��E�1,\Z����Q;��7�w�[�\n�������\"g��J\�\n��\�\�5dr&H�}�7�\�q���b�dЎ.Y�k\�[B�M��T��\�4� Npe/\��\�$�$\r\�;9�\�>t{NjpuN�5>I.1C�B�vyg(�$-�\0\n\�B**�D*Xq/h�9y���cNN4\�R�Q5Ƹ�4~�+�m  �\�\�Pyc\�\�n2�ʧw�\�B��	r\�\���݄]�K��\�i�\����\��\��O\�D�ƴ\Z\�.ï�Gݾ�0V�jD@5\��\�\��ɇ*��\��O���\�3O=Z\Z�>Rڭ����\r�~x��|�,~����ₒQ\�\�<\��4\�G\�k\���`�-w�\�\�$��CMaB[2�7#{\�>�\"|\�J��\��\�/�A����sZ\��.1��j�݇\�S��\���\0u\�\�u\�Ho�ǆ_=��\�S\�ߚ���.F`RQL\��<��\�\�\�?�A�v\�j�\�2��{\�6/ǟ�\�ـ\�B_Jzw~x�h\�s\"\���D��\�4E��P5G\�X]XӋ��BUE���6\�n_n�kQl�W�3>��G\�^�5�Ϭ��\�\��.J(�a��M\�!\�[����4\�O�)�b\�\�DV�ʤ�Q\�%g#\�Ou\�ظ$�\���\�/\�\�\n2TH�U�OH.\�\�o��<��#\�\�g��:��\\\��Z���`\�\�\�o�\��VW����io\�ދI�D�uX\�!\ZZ<��\�\�\�\�FJ?��\��H��e[����\�\�s�o>@\0\'Y�\�M�n�5\�E�\�\�@�Jv\�q�\�\�.�0;�H�\�\�\�\�\�X	�P\�i�\�\�\�\��\�N\�\rnG#�H�\�E��_�nM\�\��\�įnR�<�\��NL\��\�\�L��P5r���>-a����$�9q�r\�\"Qz��\�px��o�(LgMP54D\�M�sD)�\�\�;ҥ(�@\�e/����\�\�;ٍ�vJv)�m.�8� ��ٙ��$�\�k\�X��	I\�*\��\��3A��\�\�[�:\�S\"oKl,ᷖ\0�%wS�\�Î9\Z�D_��G�\�Z{�~@\�\���\�\�c���v�h�a�ܡ�\��%\���\�kG\���_��z\�\�\�4�#\�\�*�\�\�Q\0qy�8͸v\�a�v�3��\n���0a\n\Z��\�7�}U0v\�e\0\�	�E�][�8�\�H�/�\rP���\���\�R\�\��\��\�\nDkuNe�h�.:�\�\�\�T\�\�Ρ\�@2n��|EwyP��+��ګ��hQ\r\�Jl(\�><,T\�\ZR\�4\"\�؄��)��g��qW\�C\�+��j۹\��+\�\��t������x}�\�w��VP�B\�w�D\�\Z�c\��\�~ö�S\�1+~ʳ�J4b\�d�-\�l~������f�\�Ug��J�}D`\�0E\0R<\�~\�^RQ�=\�.N���\�C%SO\�(\�X.�UpJ&gU\�\�Cf@_���\����:�ax\�0\�mᏸ\�O��\�a���G��:\�ΝmV-\\\�酹:Ah�\���,�`<�\��DL�ؾ��\�U�i(]�~C�8DĮ�(�����\�\�_D��%�\�Y��I_�\�\�:�\�\�\�S�����\�쐽�0��A\�\�w�3<4�\�AΟ�m\�m\�E�eM#W���� ��{�h�<@\�w��I�E,{/;�C*�N8	�\��d��\�Z`(8\����7�Y�^\�\�t\�\�N&4�\�	V\��7�L\�\�N-\'v	-�W�%H\�9$+R\�Rly�8h��x�\��\�\�4aį��\�\'�W�ə>|f\��nv\�,\�5�9�5��,nS��)| �\�2qr\\�0YoV�k�\�S\�\������\�4\��\�1\�\�\�\�\�3���=�di\��TP\�l�$\�\��}�����%\�\�9�\�w�-�\�̩\�Ta����͓�V��\"��8�4Y��0�0���\�\�&�.\\�����\�\Z\�QC@,�\"`fb�;\�\�O�yH�\�\Z�\�\�5x\�\�\��\�3?������%1O\���h#\� P\n�0t�\�%���\�҆\r�\�xͩ&_\����3\�u{��@�1�\�S\�\�B\�y ˽vXFB��\�k<\�`\����Xw،\���k+ӟw1J�mLӺ$Õ4\�]i����w\�m+�i��T�D3;�\�8\�p\Z!;-��\013(�\�	Ǡ\�UIӪ\��K\�Ӥ\�\�+C_I+\��$\�^�mK�_y+\�C�rȿ��\�\�EZoM\�\�@��\�����\�s4Sژp6e\�쑩\�q��J\���$�AJ\�m�\Z�\�K\�\�\0\�\�ɠ�ZL\�ۺ>�\�x��]a\�+\�\�\�:\�L5�el[\��k.Fy\�\n;y0�)��7L\��\�2_k�7�7��/�4yb,�\0����=r�����6\�S[۝�㾗>y�z�j\�Jc�\��&\�2�h@-\�`\�8����E3\�y\�\Z���\�9٠��%yp�\r�\r<\�\"d	�\�D�#L\�o�1\r8\��\���\���h�\�×h�kK+bn\\Hҁ7�\�\'\"A�*\�\�^�\�Cla\�y\�B\����H�\�K.ip~3}��\�Qi\n\�y�qK؎X������\�\"�9�c�ڧ\��C\�6�Y��8Zt|\��#\�Ɔ�\�a\Z�A\�\�S.��-\\�	|\�4�kᏍ\��{\�`���\�)�\�y�5g	?q�\\��5\0�r��u\�bį����I\�e��+�K�\�~y��]��0\�\'<Q;�5\�}\n�\�#\n\�_���Fl\�s\�]�\\u\�L\n�	��; \�z�\�\�x\n��߱�\��\0A\�4EP_l\��j�y\�W\�\"Eإ��@�4���:��u$׳!\�\����ޏ�7\�\�%�\�\0�\�B�\�\��ߥ�\�[\�K۴_2�0/~\�td$�\�ZZ\�`�=`n�\0\�Ik��7\�O֓m>Q\�r�\\<(~b��\�u�b�@kKD˨�k)��\�h\0���/%yF�\n>*O�c\�[W\�\�G��\'\������ ׏�\�\�H\��B\�\�\��\�%w���(t=j\0F�Е\�,~҄A|ȕ\�ף߆\�E�Jі`\�\�/xc�T֩S�s\�\�8�\�+��B\r�C\�@\����~�O�\�\���\�^�\�\�\���\��vM\�+	4,�V|j\�\������Zp�!%��H�\0$\n�K�Е�|\��nhU�\�)p�q\�\\;�5\���k7g\�EG&�(X\�#K)\�/��Ж\�1�\����\��}φ�B�QT�z�^\'Ҁ��oJ�o*\�\�BȔ\���\��GhX\�\�\�Fu�W�_~G\�{\��\��,Y��oht�]�DwN��;�?_E\�x���Dr\�{�w\r!ff�\�MJBf���\r�n#\�\�\�\�A2\�\'s\�F�>�9~��Q��[�j5h�5�h\0�����?m4\�/\�\��\����{\�[%�OX��p\�\�\�\�Nq&2�W\�%\�L�;$A,\��{�\�:�x�/%%����\�+oQ������\��\�\nD�\�7\�TF$J�\�o�R�an\�\�4i\����=nܾ���#�\�\�͞,,�L���Lh �h K��0��ʡ5�\� wQ@\�o�0EVRa5\�N\�\�3#V՘`F���<[�\�A�gv�\�j5\n21�\�\�`5�H���T�\�7P\�d��L1c�:�!�Q�T\�c4��Z�6\�`���\�47\r\�^#���z�6W9����)m(ő�Ƕ�\�YU�p�|��x�{\�6W�2j��_ޔa�\�`�i3�/f�\�\�p\�\�*\n҄a]\�A*Y3V�\��L�\�� �\��(� \�*Y�\�\�\�R�u��]\�O���9͈㭑W\�\�i\\R��\�����\����%.�K�o<;_7v��StS*!\�o�������Yb÷\n�{,\���\�\�\�z\�W�\�Hj%�\�:���1(\�o\�v�q�8��O�\"f\r{.t�}\"���t6�6{ղ{TH��\�\���j���x4\��\�V�	�nƬ1��\�j�e\�1;\�D�!B\�Jt�^w~¦h?5ٛHl\'G�2sup\�\�_�K\�\0O\�\�͑\',lS���\�.�Bxe\�,n�		r��\�!����N�h=j-��eKX��y�K[\�Ҍ+\�\�\�O��\�P�\�\�ym4+��M\����T��\�^�,��3#\�c�TiE�ЮƂf5�~;\�H���\'\�\�\�xx \�tKr��a,\�\�g���b\nlb`x�K\�z \0؂��!\�C�;D��%m����ԓ^�\�@��޵\�>�N8�\"�\���\�����t�u�=��\�+l\�z\��E��\�K\�(`@���\�`\�37Y\�� \�{gA\�	=�\Z)\0�\�\r\r\'�t�ܻ8?&\�\�QG���\�\�1u�oԶ8�9�mW�Ax�s\�QA\�	]��@�\��\�._���\�4��A;$\�\�J�\"A�a\�1�8�	�^�^E��E�*ڊ�5ʓ\�Hh,$\�&I�7	�6:Ԗ�\�k��q\�_� _0�\�J�Bph#�\�4B�\�\�*Έ\�\��y뜍[%B\0�m�\�ʘ�:\�0C\�(����<�^�Yq��eWG>\�R\� ��\�\��\�%J	������\�p�5Fy���*y�>\�\�F�|\��/\�O$Pa\�go�~8.\�e\�k�	C\�=j\��\�{ë��FL΄�(*��S\�*\�\'h�\�9�i�,�\�k)-\�\��(�\�_r�	\�ݫ���ߙQ\�0�W�\�\�\�9\�>?��c�\�e\�\�\�\�\�o\�P�\�\�o�\Z��\�7�^�緞��e�\�i`��\�\�\�b��.Gص�\�섶�(�P�	T�׀�\�\'\'�\�M�tFN�\�H�\�pV�W� D.y\�\����\�n�H��)�[\�\Za�Z8\��\����\Z�\�#�\�c0-B����g�*g���\�U��\�=`\r��\�o\Z;��\�C�:��01�\0\�|\�1j�\�q\������\�2\�O뵁\�\�U�\�Ӽ�+\�;p:�\��8�oN�9Z\�}\�&�q\�8���\r3xQ��-(~��%����\�l246����\�C\�CN�/N�\�iLg�ƺ=?%\�{ـI��I\�uS\��o\�\�h\�}��.\�/�\�J\����6~pL�\�\�ikq��\��\�\Z�P=��Wv%�a()ϴ+Y�\�V�\�k\�ڰ\�{��\�+\�cֵ9\�r�5A\�k[\��Cu\�\"�%.\��TVY��mP\��&Y6\�M�\\:�)\�1� |\�Z\�\�ȘШn�\�J�0��[|�\�\�r�B���cL\�\����\"�\rϵ�	��[to��\�a\\�\�?l���W��\0��\�qx�4�\���_\'G�kU��=̔�$+\�\�\�\�ūIt�^\�^2\�ˀ��~���nvǶ+�\��\���3#\�\�\�\�M+�E�\����8�n\�\�O\�GcAR\�ͶK�n��{\�N��휲\�7Ԩ�3\0\0y� ��۝p�h�	\'�\�\�|\�ݧ\�\�p��\�\�%q�\�MoO]�\�G\�\�\�x�~d�\�`z�\'\��\�6���<�\�\�%�l\�b\�m9a\�����m���0jC\�ê��9V\0�x�\�\�0�\���d|ϑ�+.{ZHԥ��\�J�Qi�?H��	\�3!I^��\�\��f�hP\"Ped��\r�ZP8��!�g���Ã��\�blX\�W�\�MoY�+8�[\"�b\�/����ޱ�\���yJP����\'⸆g@5�\�\�@\0���\�<i��1��\�G���S�<\�>�o�\��g�G}�3\�wG3�\�_\�Z�\�^\0�,L�_8�4�|8]\�p�\��\����8_�z\��x29^6I[�\r���[�#\�u{e$8zH���z%}��+I�>��S�|R\�\�\�\�\�D�r-\�n��\�YHm�h!����j8\�p��\�L�@1�OBo�yҳ�5��Nm�<p\��?���v	E\�k�*\�+�ã�,�},<\�r\�\�\�#l�����!\�[˳\�@\�[�\�w2H���?l�PI5-�u\��ó��-\r!\�;��	I[�\�*	�#\��\�X&\�&@\�S\'�\�����!g�^�+��\�/�����\�\�0\"��h�P8VjkE��T�\��H�:<��\�\�Mgj\�L\�\�d��\��ӛ9[\�\���\�`K^�E�l䈝`\�T�\�`�\�a\�a{.l��VY`��6Dv��|F\�u\�\��d�8B8v�N�\�񺻫h�E��\�l8�/�0\�\�\�\�]j�\�{�/tR$8k��Z�Ыy�\�\�,�&;s\�0C\"*\�\�e\�\�Đ��1\\���\��\0`K�Z��-N{�H�����N�y\�T?,�h��\�8�\�D����\���=d\�\�7�\�+��o���Z�.J�\�j�@h o�Mz\�A[���\��A�\�jS(b:��s�\�\�f�V\r�E���R��\�-X5��<\�<@�;k\\J\��\�4\�~%}����\�R(\�UPG\�	�\�\��\�\�E>�<\�s��٠\�\�e�l�\�;U\�b\���}ѭ\�ӹ0�P�U`\�Q4M(0@krb�`ā�\�59��\�Z:�\�~�ء�MC\�Ҽ`��\0e�}kr\�\�\�v32�\'��\�\0\�i6\n�Q��&���dj�\�Z\0��XJ\�DyjC�6�n\Zy�)k\�^��Zժ��q�C ��ʚ.]cg��5v\�\�Yc���\�\�A�\�Э)��Z�@�\�\ZM\�{EήC ��77\�\�\r�@���\�p�1�A(vJj\'�v2k\'�v2k\'�v2r_k\'�����\0\0\0��\�V\�o�0�WNy?��+?�Q�\�{��:\�\�SH!#(	����\�P�nw��\n/���\�\�&�IDI�\\&d}߯\�L\�b\�Q\�~��\�)��\�Z�S�r���9[�\�\��(M���J�\�\�^6F\�6ӹ)�\�U�\Z��q�\�F����FU�i�\�\�t\�i�沖\��	\�\�<\�w�����+��C�6t��YSzo~>n�l���MW�X*-�CzFȫ��u��\�\�&*{\�\�\'��\�:߉sw\�?�|w�3ܪ�\�	\��*�I\�dJ\�N*�ܱp�oQ�h\np����\�_`\�t�O�\�mi�ߎAg\nyr.7\�Q9\�\�\�\�eSJ\�錢[�K\�h��I0P]\r\n\��\�A\�é\��3\�g\�<7N2\�q��\�#��\�#\�\�6�h�wP�\�\�-}J(M\����\�q\�e8$��|b\�\�\�\�݋��3i\�h����g\�\�\�V�+��\')\�(��\�^X p?�L!�G%l3A�2ar��<I:L\�Py�ś}�O�Wޘ�_\0\0\0��\0PK\0\0\0\0\0!\0\�c�q\0\0\�\0\0\0\0\0word/footnotes.xml�R\�N\�0�#��ﭓ\"*5遊3\��\�q\Z�\�k\�NB��\�\�JUU���ޙY\�l���Za���d�Hh�\�����<,\�H\�<\��A���#\���jӥ%�\�\���C��\�t\�I)u���%�1Y�U\�\�\�\�b��1\�0/\�d-���\�xM&\�Hcu:A,�\���/I�,%\�*\�%�c\�x���#��F\r�]%�h\�h\�b@\�sM��\�:s	[aY�Q�(�[\\8�\�ݘ�����=\�\\q����A�bR\�0�=�\�?o�ã#7�\Z��ȿ�)\�R0�\�a�y�C�\�H<�3xC�O�׫du�ƙB;Q����3�}\�>�]�\�z2\�/3\�7t�\�j�sp�Ia�����|,2�g�\'\�\�	\��z�\0\0��\0PK\0\0\0\0\0!\0\�b2\�p\0\0\�\0\0\0\0\0word/endnotes.xml�S\�n\� �W\�?X\�\�T�*+v�z���\0�q�\n,l7\��3j\ZEQ\�6�\�\�,;l�_ZE�p^�\�H��I$�B�}F\�ߞ$򁙂)0\"#\�\�6��ٴ�0�� |�Ƨ\rf�lJ�\�\�\�/�\n�\��f�nO5s��]pЖ�!���\�5a #�3\��В;�P��$���\\���\�]\�;T\�\�Z�\�3R\'j\0\�+i������-VHs��F�\�\\k�a+kqZ\r�[p�u���\�\r\�1�/q�\�A\�\�H�\�9)\�L��s\�\��\�\�-qxt\�Ա���襨M\��\"��9�\�\"#q\�\��Z�` ^��\��f\�D\�j~g��\�c|�F�u\\�[f�oh\�\�����\�\�\�`�4u\�\�S�\�?K<KvA.60=\��\0\0��\0PK\0\0\0\0\0!\0���\�\0\0P\0\0\0\0\0word/theme/theme1.xml\�YOo\�6�\�w toc\'v\Zu�ر�-M\�n�i��\�P�@\�I}\�\�úa�\�m�a[�إ�4\�:lЯ�GR�\�X^�6؊�>$�\�����\�\�\�!)O\�^�r\�C$�y@��\�\��/�yH*��񄴽)�޵��߻�\�UDb�`}\"\�qۋ�Jח��\�X^\�)I`n\�E���p)�\�\�li�V[]�1M<�\�\�\�\Z��O\�P��6r\�=���z�gb�Ig��u��S\�eb\���O���\��\�R�D۫����qu	�g��Z����o~ٺlAp�lx�pT0���+[}`j\�\����zA\�\0�V�2\�F�\�\�i�@�q�v�֬5\\|��ʜ̭N�\�le�X�ds��\�jcs\���\�7\���\�f��\�\�\r\�\�W\���+�Ն�7��\�\�`�\�\�g\�Ș�\�J�\Z�\�j|��h(�K��D-��\�\�\0\rdX\��iJ\�؇(\�\�x$(\��:��;\�˹!\�I_\�T��S1��\�����?E\��?�\��\�\�\�?ZBΪm��\�U/��\�\�\��?�~��\�\�xY\���\�\'���y5\�g&΋/���\�ɋ�>���G�M�Ge��\�D��\�\��3Vq%\'#q�\�\��\�$�8��K����\�)f�w9:ĵ\�\�\nx}r\�x����w�\�\�r\�:\\TZaG�*�y8I\�j\�bR\�\�c|XŻ�ǿ�I\nu3KG�nD1�NIB\�s���\n\�\�R\�\�u���K>V\�.EL+M2�#\'�f��i~�V\��vl�{u8�\�z��H\�\n\�*�\��:�(W�☕\r~��J\��T�e\\O*�tHG��HY�\�\0}KN\��P�*ݾ˦���TѼ�9/#��A7\�qZ�\�$*c?��\�qU\�\�n�\�w�N��%��O��i\�4=3ڗP��\n\�\�\�\�1�P�m\\\\9��\�\�\����\�Mؓ�2a�D�]�;Yt�\\��[x�\����\�]\�}Wr��|\�]�\�g-��\�\neW�\r�)6-r��CS\�j\�\�\ri�d	�DЇA�ΜIqbJ#x\�꺃6k�\�\�#��A�Sh�\�&ʌt(Q\�%\�\�p%m��&]\�caSl=�X\����\�\��\\P�1�Mh�9�M\�\�V�dDA\�\�aV\�B��[݈fJ�íP|8�\ZքA\�V^��f\r\�H�\�n�\�\�-\�\�\"\�d>\�z\���n��Ǌ�	�ة�>\�b���&�\�\�\�2�\�v��\�\�Kyϼ���D:����,AGm�\�\\nz\�\�i\�Ù\��.uχYC�6\�OMf�\�3o�r\�\�$�\�5����\�NH�T[XF64\�T,ќ��\�M0\�E)`#�5�XY�`�פ\0;��%\�1�U\�٥m;���R>QD�\��\�D\�cp�U\�\'��&LE\�/p���m�\�\�%]��\�\�\�8fi��r�S4\�d7y\\\�`\�J\�n��\�ί�I�R�\��3U�~7+���׸#��m�q�BiD���\��\�����i*�L6�9\��m\�Y\Z&�\����i���HE��=(K&�N!V\��.K�e�LD�ĕ�{D	\�\Z���vEꦚde�\�NƟ��e\�(\�MN9ߜ\ZR\�6�\�\�\�&3(\�\�a\�\�\��/D�\�U\�z�<\�{ˊ\�Y�\�ȳ����V���)\�9�Z[�\�4^n\�\�5���!J\�\�?��Q\�3�eBo�C����M\����m<�.�vp�����IY\�f���Z�Y_p�[�=al-\�Y�}Nc͙\�\�\�ŋ4vfa\�\�vl����\'S�\��A\�8\�|\�*u\�{\�\�-�ߟ0%M0�7%����<�\�\�ҍ�\0\0\0��\0PK\0\0\0\0\0!\0$~�\0�\0\0�Q\0\0\0\0\0word/settings.xml�\\\�rcI}\'�p����}q\�!j������t�[1\�B�\�\�|=\�Z��S�@���n\�ʬ\\Nf\�o��vs�y:�\��\����F\�\�L�\�~�\�}����\���p{s:/v�\�f��\�o�L�\�\�}�\�_���\�4�\��\�\�S\�Nw��ۧ\�\�\��4m�w\���?\�?�\�-�ۻ��\�\�����#����\�\�\�\������\��f��?n\�\�7�\�\����u�|\�N��{%�{�6�3>}ZN\�ٶ�\�lxէ\�$��\�G|\�n��{�\����s��\�տF�/\�\�\��r:���\�\�\�s���\�:\�i�\�sY\�\�׏\�\��\�/&�b�\�~��y�;L\�%2\���L���\�\�\�\�\�<m�~w>�<<��l����Ȥ�7\�\�\�`Dw!/cWӇ\�\�\���\�\�\�y�ҽz�z���i�<?�H\�O\�q��{�~�iq\\,1\�\�a�\�Â��\�����\�\��X�˛>\��\�\��<�x�y���\�\��\�\�\��\�\��\�\�~|:\�Vo����4_?�\��\�8\��aq~�l�\�i\�i�\�_�\��#�\�Fgc/�\�\�7�B\�2�\�\�9\�*�8\���9EJk_\�\�\�x�ڹHg�VW\�)NG?�\���*���c��R���uӲf\�j�=Z�\�90\�&E90\�\��\�\�6>\r\��\n;��a�V6�\�c�\�rmur�R�����S\���x�3��7��1A�\�u\'\�`����n0\�7\�\��D[�\\�\��/MN�:��K���\�V��>-:\Z�nź\�׭\��4�.U\�\�w}���թV�NW��<Ъ\�S\�.\�`�n��_*����(�\�5\0��E99�\�d�\��\�tu@��ꨔJtNQ\�\�E{.S�LHtE�j�-�R�,�\�@E�a��\�v�4~`\�u��,i�\r\\\�\�#�\�t>dꕪ�{�V�j��\�p�#�S�Ż_|��w��\�\�	XS�\�0F{�\�e\�I\�XW���su0�˒iZ�1Q�\��BTi�n\��4�\��\�e\Z}\�^S&+���sk)�l�\�h1�R\�+�iRR��/\�|Lb��\�\��\�&K\��\�#!\�|њ�֕\\C�ʡ�1\Z�\�)\�)\�[�RS\�!�qDi��G	#;��J \Z\��\�)R5.%},tu��ǰJi]8o\�\ZCm�2�r���.�s`LUT�V@ҽ\rt�Lr\�zQ\�>%\�ј\�\�Q�?\���:i:�g2\�$�W9�1\�EC-��^��\��UA���/��Q6�ϖ�ʜ�䣦�De\��i�=�-\�jwT�H��\�=�*\�yj\�U�|��V�,_몴�v���MT\�$K=�j�I\�A3�Gi��(8o۞ۃn\�@\�k�Φ\��\�zP��;�\�uG�������\�\Z\����\�z����7-l��\�ZT[jmz\��ho�U�k��\��lJ\�\��M;�Gw�v���M;�\�zf�\�uRE�j��\�I H���d\�]\'x>&�>�\� \�\�\�)\��Ry��U\���JS��TM೹\��ZW_ӄ\�{[7��\�D\�\�Y7%�!�c8�\�\�\��|�(D\�\0�\r��[Ӹ: !���\�F�*��\Z\�[\�)���1RV�\�\�CnaA L����c�o�S�<Z7p2���Q&v�=\�ynߌV&Ski���\�\�\�h&m\�l\����H(9\�T�G7&��	�q�f����\��I2\�$�Bg\�<\�-\�\�2-\��h\��96h*�\�M��\�l�OU�\\wYxFi���\�NW�g�C�t�bi\0�3��Z\�� oER\�ǘ\�\�\�q�a�\�\n�(\��\�9o0\"ܺX(\�\�X�����@��2�h�Z�=G󬃆p)8h\�\�\�@GA�\�Q)x�R�*>&\Z\�s&�S\�\�%n]f\n�\"؄\\�sP\\r)\�\�t�\�b-��3�\�.��n��A\�	��[Ce�ZX\�Pz\�:ڡ�\�&\��sн\�8i���C\�\��t�\�zh,\�?Px\�#. ��\��\��\�bN��\rJ\���\�\�\����\�n\0�\�\�\�Z\�x\�:��8��\�TC��\�\���\�P�a\�xu\�y׹\�qAI\�W\'��/qXA\�K\��x�\�H�K��Z�=\�W�l�yo�1E4õ�\�\�k`�x�E()��\"�\�2�Z\�\�9^�q\�ׁ|�L��D�\�b9�\�^�\����\�QM�e\�@�����G��W�@I\��x颦�\�\nD�L>p���J�TG�r�Wy<6��;��\�Qo��10\�\��X����<�\n_�\n�U(�5^��u��H#2\�\�|@�kH�n�!\�^E�@�=@�_�\�\�.Ӭ<\�G}V\�p\rɦ�\�g\�y�p\�Z��p�\�r#\�u�M��\�7a8r\nJH�!ˡ\��ī�\�<c#�\��)pM\�\n�/ݧ_:cc\����\�3\� \r{\�D\�> V\�yp@ݙ�zP\0�\��\�I�\��Ȝ7�Rx\����M\�\�1��̙\�5Aуu\�6��O0��*\�*6�\�4�8\�q�`��}Vj�j?�\�\�\�\�\��\�a���Z���\�#v�k�\�\����{MP��l�:F�6�K�˝\�\'j���kX\������% 2\�\"��\"p��\n\�%�E������ؒ\�,\�|y^�.��UК�e\nVѼ1�\�ͫ��8���z�\��\r�]�4�c\�s=\�w�/�B\0\�c\�A�$]\�(\\\�\�S�\�\�(\�\�\Z\�9\n\Z�(Cy�g�����{�ht\�xb4&�j_4(\�P) \�ģ��#ѡ\\O�\n\�;�\�]�ļg!zգ�c<\��Ċ\�^�x\n\��bD\���(3�?��\�=��4�bA Ϲ.h�\�:Z�\\\�)��h\�@\�ND��⻤\"�\�::\�r���Q\�klF����܃ǉ��g9�\�\�#�\�u\����C��:J�\\ڠ�9���sH\�y$?G\�\�G)\�I�\�Qй\�\���e\�z�P^�Tp\���\"\�Kb�N�m\\}0��W}�\�\�y�&�,\'9\�ybBw GJ\�\\R����s-�#�U	�����\��\�1I�&T����)\\C2�\�\�\�$\�<�H\�&޵��Ǆf\n�Ω\�\�k�	�s�\�- �w& L��7�\��K��<g\���R\0~lF�MU\�����Ɵ\Z\�7\�u�Qo\�0.�;8�`��v;@\�RGC��\�\��ui��\��ؘ,�S\�\�y��\0&j)f�\�}Y9\��\�\�\�$yv�\�[\�Q�l\��ʿt.\"�(�c((�6^�ʰH\�Ve,�Jm	�\�v�k��\�6�?�tS�\���\�9��?\�qT�Ȩ�q�\0[�\�Z\�d�g\�k,y*ݧ9�\�ſ��N-e\�b��z����K��\"\�׺j�\�Q)TxT�JS|Ls�G}\��\�� \�܎�=q\�EU�u�\�(��\��\�|���gp2\�PKQ@\�\�(��\'\�\�x\nȎɧ(�xGa�z�h �Ά<\�͍\�?�\�;��*\�\�,\�H�=Vw���\Z��C�շ\�\�P���\�\r���\�q�.�9	\�1\n�A\�iQ�FfB\�L\��1���(�,P�j�V�>���R�5\0�\�Ѽ��\��\\�\�E�|�K� 㒫.q̮4��\\�]\�J\�ҁ\�s:�M�Lm�L\�ul&ӊ�Yu��\�\�\�V��|Hv�*V�\�*|6T�8b��iQ�E�RkO�\�-}�\�V�E\"L\�\0\�\��\�ţ��&Q�ՠ�{�Հ��g�H�8�J\�g}\�\Z�\�\���\��\�P�8�\�W\�:\�\n:�Ñ;�\�*��\�V�K\\r�b��[�\�|ϡam\�X�JS�q/͝k�0~�K�grkY���ztP*\��j@m�z�\Z�\�\�\nP�\�vTPR�pq���)�S1�G#jr��OM\��Y\�7]ь\�%\�ej��\Z((R:[����\��\"\� \�\0%\�6�`/pKQ\\�\\�\�w~��6�8RR���\�em^t7;p�v��y�ځ�Q�Q\�{��^\�\�Q��Q\�`h4�\�6�N2*P\n\�I\\1@��\�-�kUCj\�\�P;����\�\"4-g�P\�\�\���p�!ӽ\�`�\�kP\"��7\�\"Ǟ�E:_\�D�?mx�q�.^�\�g\�\��xbCO	ת\�\�B\�\�c\�W�\��h�#�3\�i	p��h�ip��q\�(Q\�QZ�@t\�\�\0.JZ�=�t\�eZ\Za\�\r`\r\�k\�V~֪�b\�k,\0�Q��x\�\�p�WI�\�����̻tp�AL|\�\nq�-�n��(]i\r�\�|����i����\�{�@=��(�Zx\n@�\�Y(�\���pLO�\�#\�?5#�g�u\�1��;6	?�\n���\�t\�u\�\�dM�(@H\�lh\�\�\�F\�\���:�)\�6���\�Q��Zqd�\�q\�Əf\�4�Dop2q$K�\�\\����\�ct\�a�(\�\�H;�\�\�\�\Z��z�Ú��y7�p\�ܑo�\nT\�h�\�z�n�R\��\�\�.\�aqY\0*�|-q�\"\�f/���}%�s/\��^��k�[\�^z�1���\�{�չdm�_\���\�\�|�\�|\�\�\�_�eb7\�ˍae�}<�7?\�w�\�ڬ\�\�\��\�]\�\�~�~Iyxz�߽�N\�\�f\�qoؕ�\�\�.�\��t�Ӈ��7?,�\�f~	H�wG�ח��_�\�עM\�\��O�ˬ\�\�\�\�\�\n��/ĉ�\��ֻ��\�\���\�\��\�:j��\�~Azڭ���8O��m��\�θ-w�a�\�\�\��\�i�\�\��O�\�\�|�\��\�\�p�i�\�\�Gy�Y�t����V�\�O/<~T�4�B\�_3\�\�\�r�2����.�į^���L_�\�g\��̼=�\�g�홻>s�O_p\�\�f��	7\�]�9?��\�l�\�\�\�ׇ����\�/\��}�[n�V�a�_��\�=�\�;\�>-\�>\�@�\��w���\�t��\�w\�ϸ\�nZ�ϸ\��^m?\�\�*q9���\�\�\�\��\��\�o\�\��zz�Z��5\�E�_\r�dq)\�׼<߭�\�\Z���e��v�\�7�\�ڬO\�\�+�\��#V\�\�R�߼\��v�\��\0\0\0��\0PK\0\0\0\0\0!\0�!֫\�\0\0$\0\0\0\0\0word/webSettings.xml\�VKo�0�������y�TJ����\��8�x�톶�~�GS\�6Q��֜0�b<\�\�\\\�<Օ�\�HP�Wq�ʡ�j����\�\�U�+P\"#\���\�\�mڊ\�_a-Z\Z�(�ꌔ\�6�뚼57W\���\�[|\�kV+��;\�k��\�{^\�jQq��R6��\�\�c����FC.��D\�j�Ws�\�s,\�ƌO�Me�\�\�̏\�\�\��K(�\�\�u^\���\�Y\�\\�+�*��\�?r]~\"~�\�\������Y���}�QXY��\�%#X<4<\�Z�\�*���GC\Z\�$�\�<�;�櫧7?\�\�\�A\�/=wᘱ\�\�$�#\n>\�c\"�\0���\02�㶔U��\n\rhL�8�a\�|�\�{v�\�|kN\�`Ƽ0Y�������o]�׎4<\�Ȅ\�\�1l\�\�0�	��8@�.\�딡Ц_1O�r�z!�f�\�\�\�6)l���5\� \�L�8�,`����\�mu6��\��\�^u��u#\Z+k�\"\�A/4�Fh\\�\�k�\�\��\0\0��\0PK\0\0\0\0\0!\0:����\r\0\0ER\0\0\0\0\0word/styles.xml\�\\ms۸�ޙ��>�\�\�Yo�\�\�97��\�q|�\�\�}�(\�\�\"U��\���./�H\�Τm>\�A<v�Y,K��\�\�m|ayg\�\�`�\�p�4\�\�qz6�|{�\�de��\�$K\�\�\���_\���/??�.ʧ�\0�\�\��l�)\�\�룣\"ڰmX��\�X\nmwY�\rK��\�ewwq\�\�e\�~\�\��h<Ύr��%<�\�Ļb \���=f�z�g+\n\�6x\�0No`x\�,z\�\�\�}R�k~�˯���\�Ҳ_�E\�g�\�x3�f���l�haaQ�q\�ڸ9O��nQA;�G&az�_\�\�l�\�W����\�K�x\r\�a�jy>��G8�ט\�N\�K\�՘6D������,z`\�e	\rgP7^��\�&��<.��kK��/\����a\��\�M�flX��`\�\��\��fy!\��iy6\�樉�X��\Z�W3<.\r��\�k\�!\���\�;\�	�ݾa!�\�`\�{\�\�j��\�cޣ0&\'03Ë^C��\�6Ǻ���\�z6\��w}\'\��w\���]M�\r/\n�R/<\�۸L\�\�e�\����\�P\�Yz\��M������~�ۄEkE\�!\�$a\�6Y�fyp˾�\��2iz\�pD\�Y�܅��\��{���~S\�\r��&\�l\�x�\�y8S�3��\�~\�\�5y\�\��l\�j�\��\�&�;��k�vw\�my\�qϞ���\�\\J-Ϝ�\�I�yҳ\'�5	�\��]�?m�0w\�\�\"K��n�(�6\�a\�\"ݹ��.C\�=\�Lp\ZU��(�h�E;�9W���wM�\"���k�M\�Q\\�h��\�(�ye�p\���\�7���u�\�\�0\��p�\�X���\���\�\�\�\�ɸ�!�p�`A+\��\�^\�\��Y8T\�\�\�\�U\�\�\�\�!z; ;D/Od\�\�\�\�(.�j�*������\ZW\0+����ފ�~ފ�w	�z+\�\�%���)uP� \Z(�\"\�\�[Q��j%*��&*��&*��&*��\"*\�~Q)�\�>5\�L�R��j��\�e��D��Qi� (Qi�\Z\�D�(.A4P4Q)�7Q)�7Q)�7Q)�7Q)�7Q)�QI���JQ\\��Yf�B�LTC�D�.�l%*&�\��\�Y�e��K����K\n\r�i�R� \Z(��ś��������AD�(.�\�,3�J!\\&�!L�R�}�3\�\� *\�\�%*\�\�B�b��\�%��&*E�&*��&*��&*��&*��&*��\"*\�~Q)�\�>5\�L�R��j��\�e��D\�#�g��w	���wI�A1MT�\�DE��x�Bx�Bx�Bx�Bx�Bx�t?��\�e��e&Q)�\�D5�IT\n\�O~����<\�2:�\�zڠ\����\�>�;�C�k L�C�\\�����o�\�!\�\'���&�\�\���8Ä�Sgv{��\��0\�^\�p�\�\"�e\�\�\\�N�\�Pb�x��	�ˁ˧\�Y\�\�;���(���P\�!k1xg^�}�<E^\�I\�g(��\�|S7���,�-x1\rv׌�V\���>\")�֏�c�\�@p(�\�P~\�U%d\�)��]O\��A]W�Yl\�\\�\�U��\�ު&��\�#�\��\�|tr!�C5�\�c�kx>��\�\�\�aŠ\Z\nt2�\�ICxW2��R�\�l_\�\�\�՗DcsP�D�r\�EK�p�\�\�kT\�#�+BD\��E�X��5��Њ��T�T\�x\���u�F\�V�\����FǕFWܟ�R\�*+7B�TI��t*\�6\�@E��#y�PQ,UT�c,�{5^\�\�\�\�e�1�\�C.M/��I�+\�\�\�\�x�\�\'\�a�>\�z�\�Ш\�j�Rv}	��\n#�ܜ,.]V\�V\�3��\�M��+�\�P�\�\�.|���W�Z\�2�[\�\�\\_�E\�t���\�O\�Ç��\\(E\�)ֶ�\�P��K��!z\�2\�\�oM\�_\0h4\�B�P�̶��9\�\�X@R\�`\�W>	�\��v\�rYPd\�u\�CQ�@(F\�\�>\Z�z�}���xq�*,ȃx3O�|�\�7\�%���\\\�FʧŨO����D,� \"\�fU\���\�/!\�\���N�]�\�x\�\Z�\"\�0�C�w!W\�?c\�X\�\�ǤC\�fP�pD5\'l=\��t?�]��p���h	�m\�q(\��4d\�ɡh\��\�9l$p�D�*�\r��\�\���̤�ȈT���5n�n3i�2q\"m\�^Qp6y\�\�G\�Mj��\rjF\�\�D������E�\\גG�\��6ئI\��\�\\Lի\�B<u�����2V�g\�j�r̬\�7g&��ef����52�Oٌ�\�HH\�\�<e(�f�\�n\��\�[T^�q�+Q[\�\�\�n\���M.�\\d��l\�\�5�춣v*\�-M����\n�\\Y�G\�yjKbm�1�\'W�j�\�C!\"6\�\�M�\�\�ar\���*9(lwX]%�V\�Z\�͐��qb$|�I\�]�N��x�=Ժ.o?^\�\�<a���lMVm~CP�\�\�\���٥\'m�<�F�UA$c�fl��k_�#I5\�\r��S�\�1�Oe�\�v\�d6���\�\��P\�\�\�ӎ�Φ#\�\�m�ɸc�\'\�i\�HA`#��q\�1\�\����c��\�)l�\�Jl\��a��L搾s�Lg\�8\\0~xX|�\�c��}\�*�\�!7�\�\�E�Ae���팄\Z�ê\�\�]��I�C�}�_MF(l�mM���ى��2��\�T�K\�:=xU)N�����E���j@����\�\�򬞉~|���\�wI�x�O#�E;h��vsKHu�w\�-\�͖���g�\�S*\"�c���8O\����,�:�y�,9�/�l\��A�\�Ʈp)t��aC�p<\r\�\���\��h�_6\�y;���\�\�s^:\�ĳm7�D��3<.����j�t\'��\�B�r\�(��]���|��\�\rlq�c\�\�\�*�{�=�0ጄ\�b[\�\�\�R\���9Μ\�?\0E�V5��Ւ�\�W�a7	԰%��6�`�\�c{]\�\'\�ǋ\�[!\n�|�[�u\0�Y>t�F\�\"P`ŷ�V��\�K0/�q-|\�\�2_|`o�M>��\�6\�=��\'X�K\�<�g/\0�u(\0\�tf�\�9Q߾\rV\�1z�V\�պ\�\�\��mơY�\����\\Z��sPTGj�Z\�\�6Ōŵn\�\�7\�\�i��Y9\�_�\�.�{|\�\�j�v�i\�k�\�;z`\"�\��F\�\0�\��\�\�-�ǳ�\�\�H�\�!�8�t\�}��&�K7\�|:\���\�ъ��i\��\�<Lér\'\�x��q�\�\��k�Ѿ��Q!�\�\\�z/R2P�`/\�0M_ ق\���B\�܌\�L\�\Z�\�\�㑤\�ѕ�_�v\�\�q�v\�.��0&\��h��hl�zS\�\�\�\�\�䴺&\�{�����j��D����ɷ[�E\�\�R+���`Z�@�?�cBM+M+���VP���K��\�i\�\�h4?��-��xx<�^\�̌���0�*ሹ�ڃ��6\������.6\�Ժ%�eڶzNe\��&-ׁze�eOP-\�ܵ^q�\�%�#}~oW�\"X�i\\ՓU��\�4\���\'�\�\�rgI�5S\�\��7�ϕ�V	ƚO�y�\�\�aj�\�X\�k\Z�Y����o�[L�yRAdV�\�%j\��\�y\�+x&\�gH\"\�\"\�ڈ-ZK�����Q�ߕ\�\Z]�b�iƯu�\�e���?hO�������9<����\\N�8\�R�L�i��M��zB��QOV��ݐH���pxϑN_cs��t�\�n��ቲ�+\�\0=}�\�@�jT^;<(T�)\��\0\0��\0PK\0\0\0\0\0!\0\�|؄\0\0.\0\0\0\0word/numbering.xml\�]ێ\�F�}_`��!���ݼK,Ly�+\��\�;{\�gu�KX]\n��˽o\������\�\���a�\�K%\�d��)&\�\�\�%��x\'2.��/�\�\�\��9\�\�G\�7\�\�]�8<n��\�G��\�\�\�\�\�\�\�\�?���}r?���F����\�O�w��݇\�\'��\�؟\�>\�\����\���\�\�S�[��9<\'{8��pܭ\��\��\��\����/\�_?v\�\��\�\�f�9y\�9N4\�?\�p?z9\�\���z�y8N��\����\�Ǐ��$)�8v�\�\�\�\�\�\�e�\�\�\�\��-��\����y>����4�ŧ\�C>�n\��n[���\�\�\��\�W�y�\�~�\�\���|<<$���\���\�:�\�\�L?���\�O�~g�Kv\�;��T<.��𾁇�>�\��\�G�\�`�-\��\�\�|\\?�xٽ���\�\��\�!�\�O�G8�y����\�\���\�\�\����>��l��\�\�l�vv\�y��-\��ʎl?�6�R~\�\�n�;g?&�\�z[��S�Ky\�_\�w�\�8�|<�o���\�$�\�\r�ޯ[�_\'�f\�%q�\�دw%L?�<\�]���$@��\�\�\�g�\�S\�|x\�nr�\�vip~��\�ϭ\��z��\�c�\�\�\�_\�+F��χ\��h\�99�ŉ�}*\n)\�\�Q�\�i��O�~\�G\�\����/9���	\�\\�6��я_v��p\�d�|#{n\�\"\�\�\�1�\�܏f�)\��=}�p\�<�%�\�m*\�ٹ�к��\��\\\�B�q~\�>��NO;��k<<�Y�7$�b=��\�l����k�&��\�\�!R\'f�\�\�_�\�\'\�\�c�.R\�����#\�40^\�\�3?�7\��\�\�+%�\�>��\\�%��WC��\�3*j����(n�\�\��3؂ԋ�u�T�\�{bb�	QU\�RAC����ˏ\�r\05��.1h��옠qA\�s�H\�\�p�\�e�ET��@	k\\H��ve�U\�+`�<3\�\�\0	k\\\�J�r<�נ1A㢉���Э\��xW]\�\�^�\Z7%MxU�d4\\b\�\�[/v��\�%b\�m\�xA0�urlg\�7�9��G?� �\n�Cx�~V��LMu�[\�t��\�mř��C���(��0#l\�\"\��\�-`5H�\�t�8�����[NM��� �Lx�ꥇe \��\��\�[��X\rJrXJJo�\�\�k\�s#f\��\�Jo��\�iq�<�T�I\�QrXR<�7�\0�+@Rs�\�1wI\"�e�ԡ�&q�X���,�\�2��+� \�\�,c\�Ğ�\�wk\�\�\�,c\��so��J\�\�(�|\�+1\�\�ڊ��<\"SI��^\n�_0�иY�~T\�Ȗ[���\����n)\r�^�[]\�Lr\�iܬ�ݢq\�]N\�\Z�\��U\�8��aZ\�\�݆5\�\�uQ\�z�\�/��n�`\Z�i\�ŻEȀbfO\�Z�\�A��L\�B�l�rq��g�v�[`�\�s*\�G\�Ix<˱+��\r���S�A��\�\�l�\\�\�\�\�9�\�\�\�9Q\�Ni�-Jo�\�Z��f�\�Q�_�C߉W\�\��\�y\�\�2\�\�\��\� \�ۃ3�/\��H�;��\r�\�ƅշ̪�1&%\�Ђ%\�\�8sR]h`��W\�8S\�\�qal�3)3�,\��0�ƙ�gB#\0��ƙ\Z8����r\�B\�u\�v\�.���\�\�\'��c�\�U]v	0=����@=%�\�V\�w�N>\�B�m�=�f\�\�h�4>ע�6|���6|���6|�E\�o&|>���\�u#o�ػ%���l\�\�I>�`C��\���x�,Ø�&]�/�cR\�E\Z-�@w,,�@s,ze\�{p&\��\�K0\�\�%hv�W��nLڧh�7\�9b瘄\�|\�\�l\��b\�B\�k���\���<Ձr؅F\'\�p{xM�\�\'\�sr,��\����M�>�\�d��D�h�Z\��qw�\�\�����\�\n>�\�\�\�S\�v�[YQ\��\��\� \�ssV� ���U��H���\�����OBu65�Y�*D,�UAԇ\�\n��-�0f! �\n�/[\nj�1�Ta��Z\'65R�*\�,�UAԍlP\0C���[oj\�N\�s\�(����t黓<\\\�4\'��.��a��ѹ]\�ѴvS��^�t8�,N鳰�t\�\�2Pvʒ,����N��\"7�Ũ�\�	(9,+v\�U\�\�$\�N=���W��\�W\���^\�\�QG\�@���5\�\�\�\�E�$\����\�\�a(u(}\�Q6W\����*��e`\�V��\�m�\�wy\"�e \�S��o�҇wI\"�e�ԡ�5J`�\�C#\�JO\������#s\�\�Y\�,\Z;e<X�\�\�4�&�D\�\"z�\���\�\�P�\�\�Τm!��\�cx\Z�a\�׻�Y\\����\��q(\�\�q�Q�;\�W��ժq�U\�@��b\\�Q��ڳ�2�j�2\�[\�Y�CW��ÿ\��-��Z\�h\�hU�g�L1\�^1�\�(�\�r�����ڳ(�2�j��,ʸ⨽\�C�j/J;\�\�O\�y�\�8\�ڗ�\�d6��\�\�t���AoS�C�\Z���\� \���\�|1s�)h\\i��GV\0?W\"��;	��2���\�C\�&ݶ�u�+����Nk \��<x\Z\�r\�ѡ鴖\��\�`�c9\�\�u\\�i܈7.��Ʊ�k\r\0	kq�e\0\�\�8�����\�I�\�\�\ZgR�\�8\�\���Ɖ:��\�^�o5WtlCpl�q�\�Ьy�R��Yl	W��\�D���G�y�\�e�?�\�\0;نx j\�$�9\�\��4eq�Ц\�W�ٴ�J0����ՄM\�AWz�����6-G�\�\�NZN}��\�q8+\���K/�\�gQe�\��3��I\�\�a;�\0|qC\�\�B�\��\������`%\�\�\�=k)w��Eפ\�}+&a\�fVL�4�XdN��J]y%W�&m� �+\�\����\��ZYj�i�\�M�(u%�\\\���mт4d�\n\�a�\�K\��nt\�\'\�zQ\�;+Oq�\�j�Z��	\���\���\�\�O�c�|D�\�d\�\\�D>���t@\�C�\�s:C>t�8J? ���\�a/FCb\Z�rަ;�ND�\�j�.K����ҋҊ�`Z/��q\�q7>H��6��l3\�p\�=���\�~\�*�y�9�\��\�L�\�CD|\n�\Z������T�����(�K��\��G$DAͨj\��]c��(��0RMU\�\�[Ҍ`�.B�Ҍ^�9dBTJ3za �\�\��B�\�T���� ���Q!5�P�K�(Ũ���\�\��\�nFdk�\�̝Ȱ��\�\"\��\�.�\�\���\�~��\�q�}�2\�\�h4l\���~ԑ иي\��Q��x [q����\�\�\�\�O۫\\�(\���0?���8n\�8��B�\�؊c�5n@\��Y�\�b��)I4z��ug#7�;��\�M\�Y\��\�ݷ[��i��Ϸ�<r�J���Ԏ�rK���\��P_N����vj-\���H�\��L*%G��\�o��\"\�^y\���]i_]�8JoN�/�TJ�NH1�^WO\�D��\�P���\�\�G\�͉�_*=�-4��>xևy��\�\�\�<}�p\�<�\�e{\�4$渾\�~hX-2͞M���\�\Zhtl�\\.�`\�\�-\�<�d/�O��zS.{�Cտ\�\����\�\��y�\�\������l�I>(]�9\�\'~)鳧\'`��?u\�8�|\�\�\�\�\�\�qW�N\� \�kE\�J\��@�\�\n\�T�޺\�\�\�\�Ϻ\\\���\�\�ݩ�>�*W\�\��ӟm\�\�\�\���\�v�����k;~�\�\��\��\��S\���Vf�z�ټ�l\�󅯖��� \�z�\�xς�j���\�\"\�P��~k\�D�<Փ\�6�Y�\�:\�\�m�N����_-��\�\�g\����$EQ\�g\�O��\\C\r�:���<\�mNd\�\�6\� ~���rb��R�\�Ԟ���,�����\�+�=��(㊣��\�e\�jO%������fJ��czu�ƿ�ڳ�!jM�+9,�2iP{�\��>�7�f��\�\�ԉ\'\�7/y\�\�4�\�z�\�!���1,���X\�p\�V��lq\����\�\�_�q�\�\�h5�b\���5\0\�)˗H:IO\�X>;:4�|x\Z\�\�+i\�#GGMB\�k�5�\�^k\0HX㤓4�4�ʒ7(\��~\���q,gX�@�V�g��-m�\�qo\rFD=\���\�����\�b�\�\�F�ț�~լi$�������U\��l%\�B\��\nڌ�\���-H���\�z\r��\�\�\�\�\niͶ�Ҫo��\�ѷ\�\0kkM����5\��Z[�nL\�-v\�f\�m��\�\�`\�-\�q�؞2���F�1�\n}�d�x\�3C\�6t�\r�<I\�\�`\0M\r�\�B\�t9�\\CK��f͕�&9\�4n\�{8\�\Zgj\�]z/o�33\�.�Ys%�3\��5NzG]\�DC\�����\�qƫ�b��:\�\�\�\�\�\�\�\ZU��]�EZ������CmoԎ�\�!\�\�@\�U\�ыl97p����\�\�\�	�h5u�F\���L�\�[l�\r��+�\r��)}�!uA�7�4�(�\�\�\�\�d�\�\��\�^^\�*\�\�\�/�xLK\�\��s\�[����0\'\�\�d�C}\'Ϥ���-\�@w?,\�@s?z\�\�v�Ґ�^�\"zA\'Ϥ��\�ji�蕆�\�\�L\�\�H}�l0_,\�\�Ul�.\�(^AoN\�\�Y�ߓ*�3=h\���4^��\��\�\�4e��\�\��SUu�r�Z\�KG\�ܐ^鈠\�[��{\�\r�.�ʧ9�Q-��W\�!�%\ZJ/J4\�#��\�̋\"\�L�e\�Dn8\�b3��\��\�c�q\r#\�RffK��zL�)��\�a>�\����\�܏:\�q\n\ZK3�������iN���\�\���H-�\�L+��N�Ł[�4C�\�\�N�U}0p\�^�r&\�N�l�\�\Z���i���~���iU\�>���6�O�#Xs?/&lpr�\\s�%\�j$[�l+��axx�$;�+�\�V*\�Je�@	�*��\�v$pwO�6E\�-�Y�;E�n+��\�m8�\�~}$0��w���9�\�2�J\�am\�[���\0|��\�(�\�L���\�\�\�\�?����\�k0]\�\�4t;`\�xl\Z\�)5 ��lyF�XZ�Ž���_	\�f\�H�\Z3q�y��N�٧����ٖ����o\�2�7KU*Τ-�މ�������]\�+�,P\�\��5�2\�RӀ\�s8�=q�y\�Rz2.XF:;�;A��&<�\'��e`\�V�!q��;���\n��oW~0%�NT�!��5\n�R��>�7\\\�\�؝(\�*\�b7�je~	�し\� \�\�t:��gPk�[�\�@ؿ\�V��\�\�\�a�[oK\���U���/\��]�؉&��1�\�q� �>����׻ů\�3�^����}�;�ݦ���\�\�\�$\�\0o�\���\�|N�%(��o\��;�Ֆ�rl2�mФ�r\��[��\�\�\�����\�;�Ywt\�|z\"5\�\�ﵱ�{�D��طD9\�\�-9+\�[\�s���m�s;-�ٷC����.�%AOu�!��}K��Y\�\"\�񅮖�\�I\�(\�M�ЍY�\���>�\�\'D�O��n\"~Kc\�I\�BG9/��.f\�_\�j)\rBOk�\�t>�\�?�\�RcN�	�P}�ٰ�\�\�jG\�E�|\�&�^-<?\� �\�\�\"���\�\�1:��_��p�Â5\�+`A\��ORQy>�g�\\�H\�\�ң�j,����w�\�\�X�\��˙$5��\�\�{�=i\��g\�w\�)M�\�y��)z����R�\� ��W\�HIV6�\�Zv�/�\�[�\�=%�Ť�Z���dE\�\�g\�\�NrE}�j\�NV\�ؙe4@��ī�|�y����\�ٶM��Z~�\�6E\�Q[\�\�\�\'\�~�m؈\�X~b�Iu/��\�\�5\�D����\�X~r-;p;��>@7rg�MB5~���;�v*K�\�ߵ�[a(nv�M�ζ�j\�\�-�(�\�ݜ�l��}(Z �\�\�hn\�\�n�N��-��$��V��-��$��R��ݽ\0\�&C�\���W�Ĉ\�f��\�#t#o�ߡ�4��Nv#d<[\�}/\�kU�!\�k\�\�\�m�ˣ$��jN�S]\�y\�\�t&���I�\�Th��\�!\\�y���r\�I�|nL\�̛�\�E\��\�\0�������\ZG\�胥��]\�Pe�o�\�bw\�v`@[ �����(̶�ݕ\���R�\\n\n\�e</u;\0�U<\�^YR��8X���o��\�-qT\�{\0 (�#��$��\�\�ĕ�,y���e��?�P�\�z\�y\�^��bl\��o\�*��^��\��ZJ\"��D\�e� ��I\�s��c�G���RT^�>01��׼,A���>Pqb�,\�	)�\�*	K�J\�k��\�StC�8J;W�A�Q��yS\��2q�K׉�]pr�nLE�.�X�EVj�!�\�#�R\0�\��Bu9\�آ;�\r]3^ t0\"��\�+\����nt�\�\�v`@\"�|h<;0�\r]~�\�\0\�PL�/Z��RQ\�\�al�\�g�F�b\�\�\�9��MՊ�\�8;\r0��\�\���6\�\�\'�ߕ\�ѐ��\�M2$D�{T�\�\�\'�(�_2~��\�]\���\�b�\�Kؐ�	��i�2MX�a�2�\���\�zW�\�\'����L\�\�K����\�#()[�f�\��b?�/Wa\�q�r\Zz�R�z<\�bӨ\0��˘\�+\�	�x��-gT�\�\0٩_T\rh�tė�\Zg��N\�f\�[4\�V]7h�tJ��\�8�|aZ\�H\r�����g[\��\�h\�y�W\�\�{�rt�\�\�N&de\�ueBV\�W\'dq���.=h\�F\\��\�%�w?$�\��N \��t��6\��\�\�\�h�\�\�L.~Y*\�mN���s^\n\�g�|\�\�+㊓��+�\�,�u\�Փ\�d��G�#Q��|�&E�Šd\�㕡\�P���+㊣��\�\�U՞�G�C\�u\�XQz�-�oo(�=+��%�\�\�`�]W�\�-�.������\�\��t:�fs_�b�\r��I4\�Ժ\�z�@4u��x�\��9{\�grf\���\Z\rBd\�R\0�\n�\�(eA@\�n5�����69@�`!\�iů\0\�2N�qb\�\�r�u\�\riG�\�0uܢ�N+8\r�\�\r\�8*\�n�\�\\�*m\�|\�\�{bbE�\�Fi�Y)*iq�e$\�Jkd7J\��+�[U�d4Nԝ�O�C�H\�Gy�\� �\�^86}dß\�uV�{啴��l{/��q�\�#-�\�6}$\r\�<g\�i\�\�; ��\\���\�Fy�Fi�Mi\�8�>Ҡq6}:/JDo�>R6<����X)�/��*�P\�c_O\�&`�\�1l�D\�t�\�\�\�\�7�!D7�\�Ѯ\�B�\n?��.@�O�\��|\0����A\�e%�h��S�\r\�4�\�\\�E�I\�?���6�O�#��\�\�N\�1��:\�\�\'8s}z\�@F�`����\�)�\�\�\r���\�czK!�Tt�,�\�\0)�\�!�DLV\�:�v\�sH\�qƱ�唴��h̽>fx<�\�\�8Tlz��C\�yz�e&[��b�I��|?\ZP�J\�1\�\�\�2�\�3�����+�G\�C*{�Y�f�Yfrx9n�cZ/D\�Ջ��\�\�kh����\�\�L\�&�[f��P�\�\�?3�+�\��\�\��\'$�c��`ߕMdR~	\�NM�\�*\�e9�\�\�|�\�p]�lļ\�\�}_��ü��u\�b_\�M\�\�eә�׹$-�\���\�i\�\�\��eC�\����\���֤\�\�xp�YU3�Bo\���.G`��w!Gb\\\�<�\�^ȑ�*��Tޙ\�����\�x!O\�\\�\�x$�\��C��\�/\�>~�\�<}��\�_\����܍�\nn��:\����=�\���Ǒ��=\�\�x�q�\�\���9b�T\�\�\�M\�m�AP}�ܼ���sr<n\��\�`\��\�W\�X\�;Ju>ot5��~�_�%��.�\�?>��|2ev���#ԅ�;b\�gq\�9T��$[�l���\0\�\nDIoF����\�>G/aq\�v�_\�SL�Ђ\�m� ^�o\�(&,g�9�Y{e\�#G1y,������\�\�K0/ͷ��d.u<C\0�a\�/��_ȑ�\'p�,5~#���[\�\�M�[B�6~#\�a��\��R�ظ\�NSV>�}��7�\��\Z��\"7\�>D\�}�H�yt\�CU\��\�\���\0\0\0��\0PK\0\0\0\0\0!\0f�p\\\0\0�\0\0\0docProps/core.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�R\�n\� �W\�?X\�mlGJ+\�&R95U\�$j\��M�j0j\'_�7Q{�\�ewf��r��uԂ��QʒE�XÅ\�Vh��Ƿ(��*N\�FA�`ь\\_�L�1�b\Z\r\�	��WR�`�B;\�t��e;�\�&��<�i��Ηf�5e�t8O\�)�\�(��\� \�Q%9%���{\�0\� A9��$\�?\\F\�?z\�)�;h�\�h�\\��\�{+Fb\�uI7\�mx�~_<-���P\� RrV8\�j \�\�\�r\�҈�z�-�3@]c���S;<t\�\�~\'�\�@\�\�\�\��\���V�]��g�����?\\<�!�	y�\�?�\�\�iv��LWYVL�\"M?�\��phȣ�+�H\���S�o\0\0\0��\0PK\0\0\0\0\0!\0\�\�b�\0\0h\0\0\0\0\0word/fontTable.xml\�W[o\�0~���`\�}�c.�����l��>�\��l�!�b١��~\�v���B6\�m \n����]N\�/E��6\\\�^��\�1��1�\�^��~��!SP9����=1]^�w�\�N�,�\�K\�ս(+�Y7�M�1A͉�1	k�-୞\�j2\�)��ҹ`��	\�\�X���\�&\�3�\��t[(=�i�2c\�\"��\�2�(O�]I��\�I�T\�\�3*�a	,=м\�\�L\�q�\��\�§Ql�Ն��ė\'T��iY\�JP\�f�H�e��jNG9�K�OaanF���E��\0\�\�+���񼒺>��OA��:\��cy*@\�s��e�͝\�n\�F�\0\nm\�\0$�� �F�k88\��kDP9\�4���F䬬q�?�}Gd�\�3m1	�\0/\Z�p�\� �I4�\Z3\"Ȅ?�q�;�h�?AHV�&�DkI��s�A�\�y����B(}\�o\�0�y4!,)�a��0nL-�.%T�\0� !�Z�QXè�D}\�\�[\�\�\r�h:*6�*\�s���Q��>�\�=\��2w\0\�)\�=\�R\�)�8l\0a��[ \�>\�LpmǼ\�b47\�J�n4/n!g�\�\�\�#i\�]v�S^\�\���\�}\�=��P�9�	�?��\\��B7|�\�K�\�=�#8\�>��\��\�T�\�\�\�Y��)\�\�a$�y�\�u�U|\"�	;>�Q�L\'G0@\��\�\�x\�\�\���$\"aq\�\�H Clr4�H\\%��|\��=�t�r��C� �:�\�ŀ\�2tC7U�1�v�\�&\�\n3nE +s}�8�\n��7\�\\�\0\0��\0PK\0\0\0\0\0!\0�o���\0\0�\0\0\0docProps/app.xml �(�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�S�n\�0�\�?�7r�tiEE��\�!k\�MϚL\�\�dI�T�\�׏��\�Yw�O\�#��D>���F�|P\�,��(\�iKe��\�x��\�H�B[�\�\0!�\�_����|TR��\�\�ݜ\� khDa\�`���S��������o\r�H\'y��\�{SBy\�N�Y\�8o\����V&}aW\n欀\�i�?%9�\��\n�.T<G����\�C\�SF���Z_>��e�ٲ^Ȉ\�\�\�\��\0\�\�9���8W�CIo��\"y\�&@�\��Sق|�*��a\�\�ʠ�o3F��y��\�Ձ��y���\Z�xy^	�\�3�A�\�n�Bɬ��d���W;\�\�O �l��\�+a\"�.��Ik�煊\Z��\�\�]8l\�j\�\�]����׀�Ku\�	\�»\��\�v\Zz���\'jTO�^�\�\�~�\�]�똥m�0~��&�]1\"\�b5\�\�~�i�+\�*�\�c\���*\�[\'$.\�z2C\�\r2(�-�J\�����G܆\�\�T�\�\�<�|.$\�\���\�ǓQ�_\�#�>9=1�\0\0��\0PK-\0\0\0\0\0\0!\0�h\"�\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0[Content_Types].xmlPK-\0\0\0\0\0\0!\0�\Z��\0\0\0N\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0_rels/.relsPK-\0\0\0\0\0\0!\06H�h \0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/_rels/document.xml.relsPK-\0\0\0\0\0\0!\0f��;+\0\0\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0L	\0\0word/document.xmlPK-\0\0\0\0\0\0!\0\�c�q\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�4\0\0word/footnotes.xmlPK-\0\0\0\0\0\0!\0\�b2\�p\0\0\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0,6\0\0word/endnotes.xmlPK-\0\0\0\0\0\0!\0���\�\0\0P\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�7\0\0word/theme/theme1.xmlPK-\0\0\0\0\0\0!\0$~�\0�\0\0�Q\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�>\0\0word/settings.xmlPK-\0\0\0\0\0\0!\0�!֫\�\0\0$\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�P\0\0word/webSettings.xmlPK-\0\0\0\0\0\0!\0:����\r\0\0ER\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�R\0\0word/styles.xmlPK-\0\0\0\0\0\0!\0\�|؄\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0�`\0\0word/numbering.xmlPK-\0\0\0\0\0\0!\0f�p\\\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0U~\0\0docProps/core.xmlPK-\0\0\0\0\0\0!\0\�\�b�\0\0h\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\�\0\0word/fontTable.xmlPK-\0\0\0\0\0\0!\0�o���\0\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\0\0docProps/app.xmlPK\0\0\0\0\0\0�\0\0=�\0\0\0\0');
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

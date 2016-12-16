-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mylib
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `type` varchar(30) NOT NULL,
  `remark` varchar(600) NOT NULL,
  `exist` varchar(15) NOT NULL DEFAULT 'yes',
  `author` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'C','IT','','no','不详'),(2,'java','IT','really sorry','no','不详'),(3,'PHP','IT','hypertext','yes','不详'),(4,'JavaScript','IT','best language','no','不详'),(5,'从入门到精通','IT','fake','yes','马士兵'),(9,'高数1','数学','xxx','no','王妍'),(11,'安徒生童话','小说','xxx','no','安徒生'),(12,'格林童话','小说','xxx','yes','格林兄弟'),(15,'黄昏里的男孩','小说','新增','yes','余华'),(16,'活着','小说','新增','yes','余华'),(17,'兄弟','小说','新增','yes','余华'),(18,'许三光卖血记','小说','新增','yes','余华'),(19,'java','IT','新增','yes','不详'),(20,'java语言程序设计','IT','新增','no','詹姆斯·高斯林'),(21,'javascript','IT','新增','yes','陈会安'),(22,'三体','科幻','新增','no','刘慈欣'),(23,'时间移民','科幻','新增','yes','刘慈欣'),(24,'球状闪电','科幻','新增','yes','刘慈欣'),(25,'会唱歌的机器人','科幻','新增','yes','四川人民出版社'),(26,'陈先达文集','哲学','新增','yes','陈先达'),(27,'中国哲学原典导读','哲学','新增','yes','张周志'),(29,'少年维特之烦恼','小说','','no','歌德'),(30,'都是','速度','dvadgakg','yes','说的是'),(31,'YY','IT','it','yes','me'),(32,'数据库课程设计','DB','无','yes','test');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exceptions`
--

DROP TABLE IF EXISTS `exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exceptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `exception` varchar(60) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `exceptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `exceptions_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exceptions`
--

LOCK TABLES `exceptions` WRITE;
/*!40000 ALTER TABLE `exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_records`
--

DROP TABLE IF EXISTS `loan_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `loan_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `remark` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `loan_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `loan_records_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_records`
--

LOCK TABLES `loan_records` WRITE;
/*!40000 ALTER TABLE `loan_records` DISABLE KEYS */;
INSERT INTO `loan_records` VALUES (7,2,1,'2016-03-01 19:59:53','2016-04-21 20:00:00',''),(8,2,2,'2016-04-15 20:01:54','2016-04-21 20:00:00',''),(9,2,1,'2016-04-15 20:37:05','2016-04-21 20:00:00',''),(10,2,1,'2016-04-15 20:37:20','2016-04-21 20:00:00',''),(11,2,5,'2016-04-17 16:34:14','2016-04-21 20:00:00',''),(12,5,2,'2016-04-18 16:11:33','2016-04-21 20:00:00',''),(13,6,2,'2016-04-24 13:07:01','2016-04-21 20:00:00',''),(14,6,4,'2016-04-24 14:15:32','2016-04-21 20:00:00',''),(15,6,9,'2016-04-24 14:17:05','2016-05-24 14:17:05',''),(16,8,2,'2016-04-25 15:29:03','2016-05-25 15:29:03',''),(17,2,2,'2016-04-26 09:11:50','2016-05-26 09:11:50',''),(18,9,2,'2016-04-26 10:04:13','2016-05-26 10:04:13',''),(19,8,2,'2016-04-26 10:41:11','2016-05-26 10:41:11',''),(20,11,11,'2016-05-04 07:52:32','2016-06-04 07:52:32',''),(21,11,2,'2016-05-04 07:59:38','2016-06-04 07:59:38',''),(22,11,20,'2016-05-04 07:59:42','2016-06-04 07:59:42',''),(23,11,19,'2016-05-04 08:38:36','2016-06-04 08:38:36',''),(24,8,22,'2016-05-06 13:32:31','2016-06-06 13:32:31',''),(25,8,20,'2016-05-09 11:13:40','2016-06-09 11:13:40',''),(26,8,19,'2016-05-09 11:16:07','2016-06-09 11:16:07',''),(27,8,21,'2016-05-09 11:16:09','2016-06-09 11:16:09',''),(28,13,1,'2016-05-09 21:42:51','2016-06-09 21:42:51',''),(29,13,11,'2016-05-09 21:43:00','2016-06-09 21:43:00',''),(30,14,19,'2016-05-09 21:45:33','2016-06-09 21:45:33',''),(31,14,5,'2016-05-09 21:46:10','2016-06-09 21:46:10',''),(32,14,15,'2016-05-09 21:46:12','2016-06-09 21:46:12',''),(33,14,25,'2016-05-09 21:46:14','2016-06-09 21:46:14',''),(34,15,22,'2016-09-08 19:17:54','2016-10-08 19:17:54',''),(35,15,23,'2016-09-08 19:17:59','2016-10-08 19:17:59',''),(36,16,22,'2016-09-14 19:03:14','2016-10-14 19:03:14',''),(37,17,22,'2016-09-14 19:24:27','2016-10-14 19:24:27',''),(38,18,19,'2016-10-04 20:02:13','2016-11-04 20:02:13',''),(39,19,19,'2016-10-04 20:12:31','2016-11-04 20:12:31',''),(40,19,20,'2016-10-04 20:12:46','2016-11-04 20:12:46',''),(41,20,18,'2016-10-16 23:28:03','2016-11-16 23:28:03',''),(42,22,27,'2016-10-16 23:31:28','2016-11-16 23:31:28','');
/*!40000 ALTER TABLE `loan_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'root','root'),(7,'hcy','123');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `querys`
--

DROP TABLE IF EXISTS `querys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `querys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `querys`
--

LOCK TABLES `querys` WRITE;
/*!40000 ALTER TABLE `querys` DISABLE KEYS */;
INSERT INTO `querys` VALUES (1,'我想借关于%的书'),(3,'我想借有关于%的书'),(5,'有没有关于%的书'),(6,'有没有书名包括%的书'),(7,'关于%的书'),(8,'有关于%的书吗'),(9,'查找关于%的书'),(10,'%'),(11,'借%的书'),(12,'想要一本%的书'),(13,'%的书'),(14,'借一本%'),(15,'砂锅大'),(16,'java');
/*!40000 ALTER TABLE `querys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_records`
--

DROP TABLE IF EXISTS `return_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) NOT NULL,
  `return_date` datetime NOT NULL,
  `remark` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_id` (`loan_id`),
  CONSTRAINT `return_records_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `loan_records` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_records`
--

LOCK TABLES `return_records` WRITE;
/*!40000 ALTER TABLE `return_records` DISABLE KEYS */;
INSERT INTO `return_records` VALUES (1,7,'2016-04-15 20:35:27',''),(2,8,'2016-04-15 20:37:00',''),(3,9,'2016-04-15 20:37:15',''),(4,11,'2016-04-17 16:34:20',''),(5,12,'2016-04-18 16:11:39',''),(6,13,'2016-04-24 14:15:12',''),(7,16,'2016-04-26 08:20:41',''),(8,17,'2016-04-26 09:11:55',''),(9,10,'2016-04-26 09:12:16',''),(10,18,'2016-04-26 10:04:41',''),(11,19,'2016-04-26 10:41:17',''),(12,20,'2016-05-04 07:52:44',''),(13,23,'2016-05-04 08:39:26',''),(14,22,'2016-05-04 08:39:29',''),(15,24,'2016-05-09 11:14:01',''),(16,25,'2016-05-09 11:16:44',''),(17,26,'2016-05-09 11:16:46',''),(18,27,'2016-05-09 11:16:48',''),(19,30,'2016-05-09 21:46:25',''),(20,33,'2016-05-09 21:46:28',''),(21,32,'2016-05-09 21:46:29',''),(22,31,'2016-05-09 21:46:31',''),(23,34,'2016-09-08 19:18:10',''),(24,35,'2016-09-08 19:18:13',''),(25,36,'2016-09-14 19:03:54',''),(26,38,'2016-10-04 20:02:23',''),(27,39,'2016-10-04 20:12:51',''),(28,41,'2016-10-16 23:28:14',''),(29,42,'2016-10-16 23:31:39','');
/*!40000 ALTER TABLE `return_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `exception` varchar(600) NOT NULL DEFAULT '无',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'qwe','1111','男','无'),(3,'bbb','ddd','女','未按时还书,损坏书籍'),(4,'sss','sss','男','损坏书籍'),(5,'hcy','525500','女','未按时还书'),(6,'hcy ','root','女','无'),(7,'yyy','root','男','无'),(8,'yyyll','root','女','损坏书籍'),(9,'zzz','111','男','无'),(10,'韩楚怡','111','男','损坏书籍'),(11,'zhenyanjie','zhenyanjie','女','无'),(12,'test','test','女','无'),(13,'root','123456','男','无'),(14,'root','qweqwe','222','无'),(15,'123','253029','女','无'),(16,'qwe','qwe','nan','无'),(17,'tushuguan','tushuguan','男','无'),(18,'reader','reader','女','无'),(19,'zhao','zhao','女','无'),(20,'testuser','testuser','男','无'),(21,'testuser','qwer','nan','无'),(22,'yi','yi','女','无');
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

-- Dump completed on 2016-10-30 22:01:50

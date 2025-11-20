-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: finance
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Raoul','Barz','raoul@example.com','hash123','2025-01-15'),(2,'Alicia','Stone','alicia@example.com','hash456','2025-01-20'),(3,'User1','Last1','user1@example.com','hash1001','2024-01-25'),(4,'User2','Last2','user2@example.com','hash1002','2023-11-17'),(5,'User3','Last3','user3@example.com','hash1003','2023-02-26'),(6,'User4','Last4','user4@example.com','hash1004','2023-06-25'),(7,'User5','Last5','user5@example.com','hash1005','2023-07-30'),(8,'User6','Last6','user6@example.com','hash1006','2023-04-03'),(9,'User7','Last7','user7@example.com','hash1007','2023-02-07'),(10,'User8','Last8','user8@example.com','hash1008','2024-10-29'),(11,'User9','Last9','user9@example.com','hash1009','2023-01-08'),(12,'User10','Last10','user10@example.com','hash1010','2023-01-03'),(13,'User11','Last11','user11@example.com','hash1011','2023-04-27'),(14,'User12','Last12','user12@example.com','hash1012','2024-11-09'),(15,'User13','Last13','user13@example.com','hash1013','2024-11-27'),(16,'User14','Last14','user14@example.com','hash1014','2023-10-28'),(17,'User15','Last15','user15@example.com','hash1015','2024-11-17'),(18,'User16','Last16','user16@example.com','hash1016','2024-03-05'),(19,'User17','Last17','user17@example.com','hash1017','2024-07-24'),(20,'User18','Last18','user18@example.com','hash1018','2023-08-23'),(21,'User19','Last19','user19@example.com','hash1019','2023-12-04'),(22,'User20','Last20','user20@example.com','hash1020','2023-07-25'),(23,'User21','Last21','user21@example.com','hash1021','2024-08-26'),(24,'User22','Last22','user22@example.com','hash1022','2024-08-02'),(25,'User23','Last23','user23@example.com','hash1023','2023-04-25'),(26,'User24','Last24','user24@example.com','hash1024','2024-06-22'),(27,'User25','Last25','user25@example.com','hash1025','2024-11-12'),(28,'User26','Last26','user26@example.com','hash1026','2023-08-21'),(29,'User27','Last27','user27@example.com','hash1027','2024-04-03'),(30,'User28','Last28','user28@example.com','hash1028','2023-08-25'),(31,'User29','Last29','user29@example.com','hash1029','2023-03-17'),(32,'User30','Last30','user30@example.com','hash1030','2023-05-05'),(33,'User31','Last31','user31@example.com','hash1031','2023-05-14'),(34,'User32','Last32','user32@example.com','hash1032','2023-10-13'),(35,'User33','Last33','user33@example.com','hash1033','2023-11-15'),(36,'User34','Last34','user34@example.com','hash1034','2024-01-01'),(37,'User35','Last35','user35@example.com','hash1035','2024-05-09'),(38,'User36','Last36','user36@example.com','hash1036','2023-11-28'),(39,'User37','Last37','user37@example.com','hash1037','2023-11-04'),(40,'User38','Last38','user38@example.com','hash1038','2023-02-11'),(41,'User39','Last39','user39@example.com','hash1039','2023-02-15'),(42,'User40','Last40','user40@example.com','hash1040','2023-06-04'),(43,'User41','Last41','user41@example.com','hash1041','2024-09-08'),(44,'User42','Last42','user42@example.com','hash1042','2023-06-15'),(45,'User43','Last43','user43@example.com','hash1043','2024-01-02'),(46,'User44','Last44','user44@example.com','hash1044','2024-07-25'),(47,'User45','Last45','user45@example.com','hash1045','2024-09-28'),(48,'User46','Last46','user46@example.com','hash1046','2023-07-04'),(49,'User47','Last47','user47@example.com','hash1047','2024-01-26'),(50,'User48','Last48','user48@example.com','hash1048','2024-01-19'),(51,'User49','Last49','user49@example.com','hash1049','2024-05-12'),(52,'User50','Last50','user50@example.com','hash1050','2024-07-12'),(53,'User51','Last51','user51@example.com','hash1051','2023-03-21'),(54,'User52','Last52','user52@example.com','hash1052','2024-01-21'),(55,'User53','Last53','user53@example.com','hash1053','2023-04-11'),(56,'User54','Last54','user54@example.com','hash1054','2023-01-26'),(57,'User55','Last55','user55@example.com','hash1055','2023-10-11'),(58,'User56','Last56','user56@example.com','hash1056','2023-07-15'),(59,'User57','Last57','user57@example.com','hash1057','2023-01-10'),(60,'User58','Last58','user58@example.com','hash1058','2023-02-18'),(61,'User59','Last59','user59@example.com','hash1059','2024-11-24'),(62,'User60','Last60','user60@example.com','hash1060','2024-04-06'),(63,'User61','Last61','user61@example.com','hash1061','2023-05-15'),(64,'User62','Last62','user62@example.com','hash1062','2024-11-12'),(65,'User63','Last63','user63@example.com','hash1063','2023-09-20'),(66,'User64','Last64','user64@example.com','hash1064','2023-04-04'),(67,'User65','Last65','user65@example.com','hash1065','2024-05-31'),(68,'User66','Last66','user66@example.com','hash1066','2023-02-22'),(69,'User67','Last67','user67@example.com','hash1067','2023-07-15'),(70,'User68','Last68','user68@example.com','hash1068','2024-06-09'),(71,'User69','Last69','user69@example.com','hash1069','2023-06-30'),(72,'User70','Last70','user70@example.com','hash1070','2023-10-20'),(73,'User71','Last71','user71@example.com','hash1071','2023-09-11'),(74,'User72','Last72','user72@example.com','hash1072','2024-11-01'),(75,'User73','Last73','user73@example.com','hash1073','2024-01-12'),(76,'User74','Last74','user74@example.com','hash1074','2023-09-04'),(77,'User75','Last75','user75@example.com','hash1075','2023-12-12'),(78,'User76','Last76','user76@example.com','hash1076','2024-11-01'),(79,'User77','Last77','user77@example.com','hash1077','2023-11-16'),(80,'User78','Last78','user78@example.com','hash1078','2024-09-07'),(81,'User79','Last79','user79@example.com','hash1079','2024-06-08'),(82,'User80','Last80','user80@example.com','hash1080','2023-03-30'),(83,'User81','Last81','user81@example.com','hash1081','2023-05-27'),(84,'User82','Last82','user82@example.com','hash1082','2024-12-04'),(85,'User83','Last83','user83@example.com','hash1083','2023-07-15'),(86,'User84','Last84','user84@example.com','hash1084','2023-08-20'),(87,'User85','Last85','user85@example.com','hash1085','2024-11-02'),(88,'User86','Last86','user86@example.com','hash1086','2024-04-12'),(89,'User87','Last87','user87@example.com','hash1087','2024-08-22'),(90,'User88','Last88','user88@example.com','hash1088','2023-01-22'),(91,'User89','Last89','user89@example.com','hash1089','2023-06-27'),(92,'User90','Last90','user90@example.com','hash1090','2023-04-15'),(93,'User91','Last91','user91@example.com','hash1091','2024-10-01'),(94,'User92','Last92','user92@example.com','hash1092','2023-06-15'),(95,'User93','Last93','user93@example.com','hash1093','2023-01-13'),(96,'User94','Last94','user94@example.com','hash1094','2023-10-10'),(97,'User95','Last95','user95@example.com','hash1095','2023-06-04'),(98,'User96','Last96','user96@example.com','hash1096','2023-11-02'),(99,'User97','Last97','user97@example.com','hash1097','2023-12-22'),(100,'User98','Last98','user98@example.com','hash1098','2023-05-22'),(101,'User99','Last99','user99@example.com','hash1099','2023-08-08'),(102,'User100','Last100','user100@example.com','hash1100','2023-09-29');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-20 12:53:23

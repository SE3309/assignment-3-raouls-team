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
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `budgetID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `monthlyLimit` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`budgetID`),
  KEY `fk_budget_user` (`userID`),
  CONSTRAINT `fk_budget_user` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (1,1,'Food & Groceries',450.00),(2,31,'Health',288.98),(3,70,'Car',1904.75),(4,45,'Rent',340.33),(5,60,'Health',840.57),(6,4,'Food',908.55),(7,56,'Food',1367.83),(8,90,'Food',608.33),(9,94,'Food',1333.97),(10,78,'Travel',355.94),(11,3,'Entertainment',1240.33),(12,85,'Entertainment',1913.34),(13,47,'Entertainment',1284.54),(14,78,'Travel',1120.79),(15,28,'Health',188.79),(16,47,'Health',194.54),(17,64,'Travel',1453.37),(18,82,'Food',1995.55),(19,87,'Entertainment',1145.32),(20,90,'Car',1769.67),(21,27,'Travel',1588.21),(22,32,'Entertainment',1488.90),(23,77,'Food',1463.92),(24,34,'Car',1597.23),(25,52,'Entertainment',433.94),(26,51,'Entertainment',854.12),(27,95,'Car',230.05),(28,37,'Health',1849.67),(29,45,'Travel',702.93),(30,32,'Rent',1824.74),(31,58,'Food',649.72),(32,91,'Entertainment',1899.28),(33,80,'Entertainment',1447.67),(34,70,'Travel',1448.89),(35,82,'Food',1244.35),(36,33,'Rent',990.88),(37,4,'Rent',1626.84),(38,23,'Rent',886.58),(39,13,'Food',434.80),(40,90,'Travel',1206.42),(41,63,'Health',696.22),(42,31,'Rent',1682.52),(43,74,'Entertainment',199.39),(44,68,'Entertainment',221.00),(45,29,'Health',1096.44),(46,82,'Entertainment',842.68),(47,27,'Travel',54.35),(48,4,'Health',683.33),(49,97,'Travel',733.21),(50,7,'Entertainment',77.71),(51,85,'Entertainment',1846.27),(52,24,'Food',1306.32),(53,5,'Health',446.78),(54,63,'Car',1087.30),(55,31,'Travel',1480.62),(56,73,'Food',1445.78),(57,39,'Car',89.77),(58,36,'Entertainment',456.87),(59,92,'Rent',1518.21),(60,97,'Entertainment',247.86),(61,26,'Health',967.84),(62,77,'Travel',1373.99),(63,77,'Food',760.70),(64,73,'Entertainment',1083.45),(65,94,'Rent',269.11),(66,79,'Health',291.94),(67,13,'Health',568.27),(68,59,'Entertainment',1657.08),(69,84,'Rent',1296.05),(70,16,'Car',517.38),(71,35,'Health',1261.86),(72,63,'Food',1372.77),(73,25,'Rent',1412.65),(74,12,'Entertainment',74.94),(75,82,'Entertainment',587.32),(76,18,'Rent',1879.89),(77,15,'Rent',68.85),(78,16,'Car',1565.60),(79,92,'Car',1304.78),(80,49,'Travel',417.50),(81,36,'Entertainment',688.66),(82,14,'Food',1237.62),(83,28,'Health',1017.53),(84,93,'Rent',126.33),(85,50,'Food',276.77),(86,86,'Food',557.19),(87,16,'Entertainment',1522.41),(88,49,'Health',378.70),(89,17,'Car',313.27),(90,31,'Rent',1600.29),(91,40,'Car',1387.50),(92,26,'Travel',1381.89),(93,41,'Car',1877.16),(94,31,'Car',1374.19),(95,46,'Car',1598.47),(96,93,'Food',706.86),(97,72,'Health',1293.22),(98,10,'Travel',1788.08),(99,56,'Rent',749.95),(100,61,'Health',1500.43),(101,10,'Car',159.96),(102,38,'Food',877.97),(103,60,'Car',1346.07),(104,55,'Car',776.82),(105,43,'Health',1867.23),(106,99,'Entertainment',1660.73),(107,96,'Entertainment',843.41),(108,90,'Travel',985.86),(109,72,'Food',1814.84),(110,76,'Food',1491.27),(111,56,'Car',1157.26),(112,91,'Travel',859.38),(113,34,'Rent',1720.22),(114,50,'Car',639.54),(115,52,'Travel',552.62),(116,1,'Car',1883.44),(117,84,'Entertainment',1556.31),(118,22,'Food',958.55),(119,45,'Food',1988.71),(120,19,'Travel',590.78),(121,15,'Food',1839.24),(122,79,'Rent',1560.33),(123,71,'Travel',535.98),(124,70,'Rent',243.39),(125,13,'Travel',1925.48),(126,60,'Car',495.34),(127,48,'Food',1308.94),(128,39,'Health',115.91),(129,2,'Car',993.78),(130,98,'Entertainment',202.52),(131,21,'Travel',401.74),(132,92,'Entertainment',1433.94),(133,59,'Health',737.93),(134,96,'Entertainment',941.19),(135,66,'Rent',1807.45),(136,13,'Food',1695.03),(137,62,'Rent',182.78),(138,60,'Rent',650.35),(139,27,'Health',318.52),(140,48,'Travel',1654.68),(141,52,'Travel',1529.33),(142,45,'Food',1252.73),(143,18,'Car',1593.46),(144,33,'Health',1080.46),(145,55,'Travel',593.63),(146,14,'Travel',1109.57),(147,49,'Entertainment',70.43),(148,73,'Entertainment',467.74),(149,7,'Travel',1173.94),(150,81,'Entertainment',306.35),(151,12,'Travel',619.61),(152,99,'Car',216.90),(153,48,'Travel',140.66),(154,97,'Rent',1128.29),(155,42,'Health',808.90),(156,54,'Health',504.33),(157,59,'Rent',1298.33),(158,36,'Health',783.17),(159,82,'Health',1342.42),(160,84,'Rent',1875.70),(161,17,'Food',1509.57),(162,88,'Rent',567.61),(163,64,'Car',1418.66),(164,81,'Rent',799.55),(165,96,'Health',1043.95),(166,40,'Rent',1170.64),(167,78,'Car',720.68),(168,70,'Health',1921.13),(169,42,'Rent',1756.52),(170,95,'Food',517.42),(171,50,'Travel',1882.17),(172,26,'Health',1469.13),(173,2,'Travel',1747.11),(174,41,'Health',1569.68),(175,77,'Entertainment',1359.60),(176,7,'Health',384.68),(177,43,'Car',1076.69),(178,91,'Travel',234.88),(179,32,'Travel',1030.90),(180,66,'Entertainment',1000.18),(181,93,'Health',805.80),(182,97,'Health',629.43),(183,62,'Rent',1110.06),(184,70,'Entertainment',1306.50),(185,76,'Food',815.51),(186,59,'Rent',1093.94),(187,21,'Food',1446.48),(188,4,'Entertainment',987.24),(189,85,'Food',1539.21),(190,64,'Food',76.35),(191,27,'Car',191.33),(192,98,'Food',387.45),(193,61,'Entertainment',1534.00),(194,49,'Food',1507.37),(195,41,'Health',1186.51),(196,89,'Car',1330.42),(197,40,'Travel',340.51),(198,68,'Health',1282.84),(199,48,'Health',1553.78),(200,66,'Food',1756.29),(201,72,'Travel',1523.83),(202,5,'Car',70.30),(203,56,'Rent',1025.11),(204,21,'Entertainment',953.91),(205,68,'Travel',441.01),(206,39,'Rent',591.16),(207,75,'Health',723.50),(208,47,'Car',1325.97),(209,23,'Rent',1105.43),(210,8,'Travel',1790.76),(211,11,'Entertainment',185.97),(212,89,'Entertainment',1995.82),(213,96,'Car',1730.10),(214,98,'Entertainment',580.57),(215,76,'Food',135.81),(216,14,'Food',537.54),(217,74,'Health',1878.39),(218,88,'Travel',948.33),(219,15,'Food',1629.18),(220,12,'Food',1168.45),(221,86,'Health',1201.86),(222,82,'Rent',1028.38),(223,54,'Entertainment',760.81),(224,52,'Rent',601.50),(225,66,'Car',1123.84),(226,43,'Rent',653.95),(227,65,'Rent',133.49),(228,34,'Entertainment',723.78),(229,1,'Rent',293.45),(230,37,'Food',1771.26),(231,72,'Entertainment',660.05),(232,45,'Health',1203.04),(233,71,'Car',1356.51),(234,84,'Travel',1453.87),(235,85,'Rent',393.76),(236,29,'Health',429.03),(237,38,'Travel',1656.43),(238,89,'Entertainment',482.88),(239,14,'Travel',1953.62),(240,44,'Food',1656.59),(241,65,'Health',1160.79),(242,96,'Car',371.04),(243,76,'Entertainment',1961.29),(244,26,'Car',1754.74),(245,90,'Rent',1276.02),(246,48,'Travel',581.39),(247,59,'Health',1918.39),(248,84,'Travel',1087.40),(249,72,'Travel',1712.86),(250,11,'Rent',1507.54),(251,46,'Health',1166.07),(252,9,'Entertainment',190.97),(253,57,'Health',1767.31),(254,44,'Health',944.45),(255,50,'Car',299.62),(256,1,'Food',884.54),(257,52,'Health',1845.62),(258,14,'Rent',718.88),(259,39,'Travel',1665.45),(260,1,'Rent',390.38),(261,22,'Car',1949.13),(262,91,'Rent',867.59),(263,71,'Rent',627.84),(264,57,'Travel',950.13),(265,79,'Food',217.54),(266,92,'Car',1126.44),(267,62,'Rent',907.73),(268,14,'Food',1812.30),(269,95,'Food',1745.19),(270,40,'Entertainment',1284.10),(271,47,'Food',1943.10),(272,29,'Rent',165.42),(273,39,'Health',738.20),(274,36,'Travel',382.89),(275,95,'Food',165.74),(276,5,'Car',1605.79),(277,88,'Food',1650.08),(278,42,'Food',1834.27),(279,38,'Food',217.92),(280,33,'Car',150.80),(281,85,'Rent',465.50),(282,64,'Rent',843.20),(283,41,'Health',1334.97),(284,26,'Food',1280.46),(285,33,'Travel',774.06),(286,19,'Entertainment',1602.21),(287,38,'Food',1195.43),(288,44,'Entertainment',978.21),(289,42,'Food',215.93),(290,78,'Entertainment',1630.01),(291,73,'Car',1476.75),(292,68,'Travel',614.58),(293,71,'Health',487.22),(294,53,'Entertainment',1649.33),(295,26,'Food',1735.72),(296,66,'Car',1011.65),(297,32,'Travel',1289.26),(298,81,'Health',1294.41),(299,98,'Entertainment',1338.96),(300,11,'Entertainment',1989.10),(301,80,'Food',1324.91);
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-20 12:53:32

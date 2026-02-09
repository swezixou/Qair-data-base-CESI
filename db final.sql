-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: fix
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agence` (
  `ID_Agence` int NOT NULL,
  `Nom_agence` varchar(50) DEFAULT NULL,
  `Adresse_agence` varchar(100) DEFAULT NULL,
  `ID_Ville` int NOT NULL,
  PRIMARY KEY (`ID_Agence`),
  KEY `ID_Ville` (`ID_Ville`),
  CONSTRAINT `agence_ibfk_1` FOREIGN KEY (`ID_Ville`) REFERENCES `ville` (`ID_Ville`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (1,'Agence Paris Centre','1 Rue de la Paix, 75001 Paris',1),(2,'Agence Paris Montparnasse','15 Boulevard Montparnasse, 75006 Paris',1),(3,'Agence Paris Bastille','5 Place de la Bastille, 75011 Paris',1),(4,'Agence Bordeaux Nord','Place de la Bourse, 33000 Bordeaux',2),(5,'Agence Bordeaux Sud','Rue Sainte-Catherine, 33000 Bordeaux',2),(6,'Agence Toulouse Capitole','1 Place du Capitole, 31000 Toulouse',3),(7,'Agence Toulouse Blagnac','10 Avenue Didier Daurat, 31700 Blagnac',3),(8,'Agence Rennes Centre','Place de la Mairie, 35000 Rennes',4),(9,'Agence Rennes Gare','18 Boulevard Solférino, 35000 Rennes',4),(10,'Agence Lyon Presqu\'île','Place Bellecour, 69002 Lyon',5),(11,'Agence Lyon Part-Dieu','5 Rue du Docteur Bouchut, 69003 Lyon',5),(12,'Agence Lyon Confluence','112 Cours Charlemagne, 69002 Lyon',5),(13,'Agence Marseille Vieux-Port','Quai des Belges, 13001 Marseille',6),(14,'Agence Marseille Prado','281 Avenue du Prado, 13008 Marseille',6),(15,'Agence Lille Centre','Place du Général de Gaulle, 59000 Lille',7),(16,'Agence Lille Flandres','Place des Buisses, 59800 Lille',7),(17,'Agence Rouen Rive Droite','Rue Jeanne d?Arc, 76000 Rouen',8),(18,'Agence Rouen Centre','Place du Vieux Marché, 76000 Rouen',8),(19,'Agence Nantes Commerce','Place du Commerce, 44000 Nantes',9),(20,'Agence Nantes Erdre','25 Boulevard de Doulon, 44300 Nantes',9),(21,'Agence Strasbourg Centre','Place Kléber, 67000 Strasbourg',10),(22,'Agence Strasbourg Gare','20 Place de la Gare, 67000 Strasbourg',10),(23,'Agence Orléans République','Place du Martroi, 45000 Orléans',11),(24,'Agence Orléans Sud','Rue Eugène Vignat, 45100 Orléans',11),(25,'Agence Dijon Wilson','Place Wilson, 21000 Dijon',12),(26,'Agence Dijon Gare','3 Avenue Foch, 21000 Dijon',12),(27,'Agence Limoges Centre','12 Rue François Chénieux, 87000 Limoges',13),(28,'Agence Limoges Montjovis','20 Rue François Perrin, 87000 Limoges',13),(29,'Agence Montpellier Comédie','Place de la Comédie, 34000 Montpellier',14),(30,'Agence Montpellier Sud','Rue de la Fontaine, 34070 Montpellier',14),(31,'Agence Nice Masséna','Place Masséna, 06000 Nice',15),(32,'Agence Nice Gare','12 Avenue Thiers, 06000 Nice',15);
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capteurs`
--

DROP TABLE IF EXISTS `capteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capteurs` (
  `ID_Capteurs` int NOT NULL,
  `Nom_cap` varchar(50) DEFAULT NULL,
  `ID_Gaz` int NOT NULL,
  `ID_Secteur` int NOT NULL,
  `ID_Agence` int NOT NULL,
  `ID_Personnel` int NOT NULL,
  PRIMARY KEY (`ID_Capteurs`),
  KEY `ID_Gaz` (`ID_Gaz`),
  KEY `ID_Secteur` (`ID_Secteur`),
  KEY `ID_Agence` (`ID_Agence`),
  KEY `ID_Personnel` (`ID_Personnel`),
  CONSTRAINT `capteurs_ibfk_1` FOREIGN KEY (`ID_Gaz`) REFERENCES `gaz` (`ID_Gaz`),
  CONSTRAINT `capteurs_ibfk_2` FOREIGN KEY (`ID_Secteur`) REFERENCES `secteur` (`ID_Secteur`),
  CONSTRAINT `capteurs_ibfk_3` FOREIGN KEY (`ID_Agence`) REFERENCES `agence` (`ID_Agence`),
  CONSTRAINT `capteurs_ibfk_4` FOREIGN KEY (`ID_Personnel`) REFERENCES `personnels` (`ID_Personnel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capteurs`
--

LOCK TABLES `capteurs` WRITE;
/*!40000 ALTER TABLE `capteurs` DISABLE KEYS */;
INSERT INTO `capteurs` VALUES (1,'CAP-PAR-01',1,1,1,33),(2,'CAP-PAR-02',2,2,1,33),(3,'CAP-PAR-03',3,3,1,33),(4,'CAP-PAR-04',4,2,2,34),(5,'CAP-PAR-05',5,3,2,34),(6,'CAP-PAR-06',6,4,2,34),(7,'CAP-PAR-07',1,3,3,35),(8,'CAP-PAR-08',2,4,3,35),(9,'CAP-PAR-09',3,5,3,35),(10,'CAP-BOR-01',4,6,4,36),(11,'CAP-BOR-02',5,7,4,36),(12,'CAP-BOR-03',6,8,4,36),(13,'CAP-BOR-04',1,7,5,37),(14,'CAP-BOR-05',2,8,5,37),(15,'CAP-BOR-06',3,9,5,37),(16,'CAP-TOU-01',4,11,6,38),(17,'CAP-TOU-02',5,12,6,38),(18,'CAP-TOU-03',6,13,6,38),(19,'CAP-TOU-04',1,12,7,39),(20,'CAP-TOU-05',2,13,7,39),(21,'CAP-TOU-06',3,14,7,39),(22,'CAP-REN-01',4,16,8,40),(23,'CAP-REN-02',5,17,8,40),(24,'CAP-REN-03',6,18,8,40),(25,'CAP-REN-04',1,17,9,41),(26,'CAP-REN-05',2,18,9,41),(27,'CAP-REN-06',3,19,9,41),(28,'CAP-LYO-01',4,21,10,42),(29,'CAP-LYO-02',5,22,10,42),(30,'CAP-LYO-03',6,23,10,42),(31,'CAP-LYO-04',1,22,11,43),(32,'CAP-LYO-05',2,23,11,43),(33,'CAP-LYO-06',3,24,11,43),(34,'CAP-LYO-07',4,23,12,44),(35,'CAP-LYO-08',5,24,12,44),(36,'CAP-LYO-09',6,25,12,44),(37,'CAP-MAR-01',1,26,13,45),(38,'CAP-MAR-02',2,27,13,45),(39,'CAP-MAR-03',3,28,13,45),(40,'CAP-MAR-04',4,27,14,46),(41,'CAP-MAR-05',5,28,14,46),(42,'CAP-MAR-06',6,29,14,46),(43,'CAP-LIL-01',1,31,15,47),(44,'CAP-LIL-02',2,32,15,47),(45,'CAP-LIL-03',3,33,15,47),(46,'CAP-LIL-04',4,32,16,48),(47,'CAP-LIL-05',5,33,16,48),(48,'CAP-LIL-06',6,34,16,48),(49,'CAP-ROU-01',1,36,17,49),(50,'CAP-ROU-02',2,37,17,49),(51,'CAP-ROU-03',3,38,17,49),(52,'CAP-ROU-04',4,37,18,50),(53,'CAP-ROU-05',5,38,18,50),(54,'CAP-ROU-06',6,39,18,50),(55,'CAP-NAN-01',1,41,19,51),(56,'CAP-NAN-02',2,42,19,51),(57,'CAP-NAN-03',3,43,19,51),(58,'CAP-NAN-04',4,42,20,52),(59,'CAP-NAN-05',5,43,20,52),(60,'CAP-NAN-06',6,44,20,52),(61,'CAP-STR-01',1,46,21,53),(62,'CAP-STR-02',2,47,21,53),(63,'CAP-STR-03',3,48,21,53),(64,'CAP-STR-04',4,47,22,54),(65,'CAP-STR-05',5,48,22,54),(66,'CAP-STR-06',6,49,22,54),(67,'CAP-ORL-01',1,51,23,55),(68,'CAP-ORL-02',2,52,23,55),(69,'CAP-ORL-03',3,53,23,55),(70,'CAP-ORL-04',4,52,24,56),(71,'CAP-ORL-05',5,53,24,56),(72,'CAP-ORL-06',6,54,24,56),(73,'CAP-DIJ-01',1,56,25,57),(74,'CAP-DIJ-02',2,57,25,57),(75,'CAP-DIJ-03',3,58,25,57),(76,'CAP-DIJ-04',4,57,26,58),(77,'CAP-DIJ-05',5,58,26,58),(78,'CAP-DIJ-06',6,59,26,58),(79,'CAP-LIM-01',1,61,27,59),(80,'CAP-LIM-02',2,62,27,59),(81,'CAP-LIM-03',3,63,27,59),(82,'CAP-LIM-04',4,62,28,60),(83,'CAP-LIM-05',5,63,28,60),(84,'CAP-LIM-06',6,64,28,60),(85,'CAP-MPL-01',1,66,29,61),(86,'CAP-MPL-02',2,67,29,61),(87,'CAP-MPL-03',3,68,29,61),(88,'CAP-MPL-04',4,67,30,62),(89,'CAP-MPL-05',5,68,30,62),(90,'CAP-MPL-06',6,69,30,62),(91,'CAP-NCE-01',1,71,31,63),(92,'CAP-NCE-02',2,72,31,63),(93,'CAP-NCE-03',3,73,31,63),(94,'CAP-NCE-04',4,72,32,64),(95,'CAP-NCE-05',5,73,32,64),(96,'CAP-NCE-06',6,74,32,64);
/*!40000 ALTER TABLE `capteurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_agc`
--

DROP TABLE IF EXISTS `chef_agc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef_agc` (
  `ID_Personnel` int NOT NULL,
  `Diplome` varchar(50) DEFAULT NULL,
  `ID_Agence` int NOT NULL,
  PRIMARY KEY (`ID_Personnel`),
  KEY `ID_Agence` (`ID_Agence`),
  CONSTRAINT `chef_agc_ibfk_1` FOREIGN KEY (`ID_Personnel`) REFERENCES `personnels` (`ID_Personnel`),
  CONSTRAINT `chef_agc_ibfk_2` FOREIGN KEY (`ID_Agence`) REFERENCES `agence` (`ID_Agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_agc`
--

LOCK TABLES `chef_agc` WRITE;
/*!40000 ALTER TABLE `chef_agc` DISABLE KEYS */;
INSERT INTO `chef_agc` VALUES (1,'Master en Environnement',1),(2,'Ingénieur Chimiste',2),(3,'Doctorat Climatologie',3),(4,'Master Environnement Urbain',4),(5,'Ingénieur Environnement',5),(6,'Doctorat Pollution Atmosphérique',6),(7,'Master Gestion Air',7),(8,'Master Développement Durable',8),(9,'Master Environnement',9),(10,'Doctorat Climatologie',10),(11,'Master Risques Environnementaux',11),(12,'Ingénieur Pollution',12),(13,'Master Qualité Air',13),(14,'Doctorat Physique Atmosphérique',14),(15,'Master Pollution Urbaine',15),(16,'Ingénieur Climat',16),(17,'Master Hydrologie',17),(18,'Doctorat Sciences Environnement',18),(19,'Master Pollution',19),(20,'Master Environnement',20),(21,'Doctorat Gaz à Effet de Serre',21),(22,'Master Développement Durable',22),(23,'Doctorat Air et Santé',23),(24,'Master Mesures Environnementales',24),(25,'Ingénieur Pollution',25),(26,'Master Gaz Atmosphériques',26),(27,'Master Environnement Chimique',27),(28,'Doctorat Pollution Chimique',28),(29,'Master Détection Gaz',29),(30,'Doctorat Pollution Industrielle',30),(31,'Master Surveillance Air',31),(32,'Doctorat Climatologie',32);
/*!40000 ALTER TABLE `chef_agc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `données`
--

DROP TABLE IF EXISTS `données`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `données` (
  `ID_Données` int NOT NULL,
  `date_de_relever` date DEFAULT NULL,
  `quantite_de_gaz` double DEFAULT NULL,
  `Résultat_qualité` varchar(50) DEFAULT NULL,
  `ID_Capteurs` int NOT NULL,
  PRIMARY KEY (`ID_Données`),
  KEY `ID_Capteurs` (`ID_Capteurs`),
  CONSTRAINT `données_ibfk_1` FOREIGN KEY (`ID_Capteurs`) REFERENCES `capteurs` (`ID_Capteurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `données`
--

LOCK TABLES `données` WRITE;
/*!40000 ALTER TABLE `données` DISABLE KEYS */;
INSERT INTO `données` VALUES (1,'2023-11-01',472.08,'Polluée',49),(2,'2022-07-01',340.58,'Polluée',83),(3,'2021-10-01',172.07,'Médiocre',86),(4,'2024-02-01',74.73,'Acceptable',29),(5,'2019-08-01',496.74,'Polluée',74),(6,'2023-03-01',32.74,'Bonne',62),(7,'2023-07-01',198.28,'Médiocre',35),(8,'2022-12-01',231.08,'Médiocre',15),(9,'2018-04-01',29.38,'Bonne',43),(10,'2019-12-01',356.71,'Polluée',92),(11,'2024-05-01',58.8,'Acceptable',47),(12,'2022-12-01',201.44,'Médiocre',16),(13,'2021-04-01',328.89,'Polluée',35),(14,'2022-01-01',66.38,'Acceptable',47),(15,'2019-09-01',382.96,'Polluée',42),(16,'2018-04-01',175.66,'Médiocre',54),(17,'2021-05-01',455.77,'Polluée',83),(18,'2024-07-01',481.7,'Polluée',63),(19,'2024-05-01',289.15,'Médiocre',40),(20,'2021-03-01',328.85,'Polluée',65),(21,'2021-05-01',132.37,'Acceptable',16),(22,'2023-10-01',17.71,'Bonne',3),(23,'2021-12-01',282.27,'Médiocre',13),(24,'2022-05-01',445.09,'Polluée',45),(25,'2020-06-01',252.19,'Médiocre',34),(26,'2018-03-01',475.86,'Polluée',14),(27,'2018-07-01',219.72,'Médiocre',16),(28,'2020-03-01',100.44,'Acceptable',43),(29,'2018-06-01',266.63,'Médiocre',58),(30,'2020-03-01',78.8,'Acceptable',88),(31,'2024-03-01',271.19,'Médiocre',57),(32,'2021-05-01',203.16,'Médiocre',3),(33,'2020-08-01',238.77,'Médiocre',72),(34,'2022-07-01',415.23,'Polluée',2),(35,'2023-10-01',19.66,'Bonne',62),(36,'2018-08-01',236.87,'Médiocre',45),(37,'2018-02-01',377.56,'Polluée',88),(38,'2018-01-01',234.44,'Médiocre',25),(39,'2022-05-01',491.76,'Polluée',28),(40,'2021-07-01',183.02,'Médiocre',65),(41,'2023-08-01',213.04,'Médiocre',50),(42,'2019-09-01',464.85,'Polluée',39),(43,'2022-05-01',217.83,'Médiocre',22),(44,'2023-09-01',452.96,'Polluée',26),(45,'2019-08-01',241.21,'Médiocre',88),(46,'2021-07-01',122.05,'Acceptable',56),(47,'2020-03-01',82.96,'Acceptable',51),(48,'2020-01-01',212.63,'Médiocre',41),(49,'2018-11-01',498.36,'Polluée',34),(50,'2021-11-01',421.68,'Polluée',75),(51,'2020-09-01',397.79,'Polluée',55),(52,'2020-03-01',415.63,'Polluée',58),(53,'2024-01-01',231.61,'Médiocre',79),(54,'2022-11-01',261.35,'Médiocre',59),(55,'2020-06-01',176,'Médiocre',7),(56,'2020-06-01',370.92,'Polluée',81),(57,'2018-03-01',342.48,'Polluée',17),(58,'2023-01-01',313.94,'Polluée',12),(59,'2024-04-01',142.13,'Acceptable',40),(60,'2022-10-01',435.08,'Polluée',89),(61,'2022-10-01',134.72,'Acceptable',48),(62,'2019-10-01',171.09,'Médiocre',80),(63,'2022-06-01',199.68,'Médiocre',72),(64,'2020-07-01',1.52,'Bonne',36),(65,'2024-01-01',301.95,'Polluée',73),(66,'2020-02-01',364.46,'Polluée',83),(67,'2022-06-01',113.46,'Acceptable',64),(68,'2023-10-01',11.3,'Bonne',90),(69,'2023-09-01',284.25,'Médiocre',84),(70,'2024-03-01',19.75,'Bonne',70),(71,'2022-12-01',378.36,'Polluée',71),(72,'2024-10-01',220.75,'Médiocre',90),(73,'2020-12-01',345.36,'Polluée',13),(74,'2019-07-01',245.03,'Médiocre',1),(75,'2019-09-01',68.86,'Acceptable',45),(76,'2018-10-01',332.45,'Polluée',90),(77,'2019-04-01',140.32,'Acceptable',10),(78,'2020-10-01',44.23,'Bonne',84),(79,'2023-05-15',232.38,'Médiocre',50),(80,'2022-07-01',45.22,'Bonne',56),(81,'2018-03-01',258.04,'Médiocre',35),(82,'2021-11-01',428.32,'Polluée',17),(83,'2019-04-01',410.5,'Polluée',64),(84,'2022-08-01',238.66,'Médiocre',33),(85,'2024-06-01',108.73,'Acceptable',53),(86,'2019-07-01',453.49,'Polluée',74),(87,'2024-10-01',20.3,'Bonne',47),(88,'2021-06-01',81.33,'Acceptable',91),(89,'2021-06-01',63.82,'Acceptable',64),(90,'2022-02-01',342.61,'Polluée',24),(91,'2023-08-01',318.7,'Polluée',42),(92,'2021-04-01',87.9,'Acceptable',26),(93,'2021-12-01',287.99,'Médiocre',6),(94,'2020-01-01',455.43,'Polluée',31),(95,'2019-03-01',29.99,'Bonne',44),(96,'2023-06-20',488.64,'Polluée',69),(97,'2023-05-30',446.2,'Polluée',76),(98,'2018-02-01',135.36,'Acceptable',54),(99,'2023-07-01',177.11,'Médiocre',44),(100,'2023-07-01',49.87,'Bonne',27),(101,'2019-05-01',177.38,'Médiocre',9),(102,'2020-05-01',389.77,'Polluée',76),(103,'2024-06-01',199.62,'Médiocre',69),(104,'2018-01-01',139.4,'Acceptable',73),(105,'2021-08-01',394.33,'Polluée',34),(106,'2019-07-01',9.03,'Bonne',17),(107,'2019-04-01',115.55,'Acceptable',29),(108,'2024-08-01',225.17,'Médiocre',1),(109,'2022-07-01',388.49,'Polluée',89),(110,'2022-05-01',186.28,'Médiocre',57),(111,'2024-01-01',42.72,'Bonne',38),(112,'2020-11-01',245.01,'Médiocre',36),(113,'2020-05-01',254.86,'Médiocre',80),(114,'2024-11-01',51.13,'Acceptable',20),(115,'2020-02-01',497.92,'Polluée',24),(116,'2023-05-01',264.96,'Médiocre',1),(117,'2020-02-01',63.84,'Acceptable',57),(118,'2022-11-01',96.22,'Acceptable',20),(119,'2023-10-01',316.58,'Polluée',68),(120,'2018-03-01',455.5,'Polluée',22),(121,'2018-06-01',384.63,'Polluée',58),(122,'2019-02-01',120.41,'Acceptable',36),(123,'2023-02-01',213.47,'Médiocre',10),(124,'2022-08-01',450.03,'Polluée',72),(125,'2023-09-01',406.47,'Polluée',44),(126,'2021-02-01',0.07,'Bonne',65),(127,'2019-04-01',400.94,'Polluée',72),(128,'2023-09-01',110.43,'Acceptable',58),(129,'2021-04-01',275.95,'Médiocre',15),(130,'2020-03-01',219.15,'Médiocre',76),(131,'2021-05-01',109.16,'Acceptable',61),(132,'2024-10-01',333.04,'Polluée',54),(133,'2023-10-01',111.99,'Acceptable',94),(134,'2018-07-01',480.75,'Polluée',4),(135,'2018-08-01',412.35,'Polluée',18),(136,'2022-05-01',136.04,'Acceptable',30),(137,'2024-08-01',422.46,'Polluée',83),(138,'2018-08-01',104.78,'Acceptable',95),(139,'2024-12-01',109.84,'Acceptable',91),(140,'2021-01-01',165.34,'Médiocre',93),(141,'2021-12-01',104.69,'Acceptable',54),(142,'2024-01-01',493.4,'Polluée',75),(143,'2024-11-01',413.61,'Polluée',6),(144,'2023-03-01',375.19,'Polluée',40),(145,'2020-04-01',420.74,'Polluée',62),(146,'2018-08-01',175.5,'Médiocre',17),(147,'2021-12-01',291.69,'Médiocre',15),(148,'2024-11-01',471.63,'Polluée',62),(149,'2024-12-01',238.94,'Médiocre',88),(150,'2022-04-01',382.06,'Polluée',20),(151,'2023-06-01',26.34,'Bonne',64),(152,'2020-01-01',435.59,'Polluée',61),(153,'2024-09-01',280.6,'Médiocre',38),(154,'2019-02-01',135.7,'Acceptable',46),(155,'2021-10-01',264.76,'Médiocre',93),(156,'2023-02-01',55.67,'Acceptable',16),(157,'2023-06-01',24.1,'Bonne',17),(158,'2023-09-01',108.75,'Acceptable',55),(159,'2019-10-01',314.45,'Polluée',28),(160,'2020-11-01',47.1,'Bonne',30),(161,'2019-01-01',279.92,'Médiocre',67),(162,'2024-11-01',23.57,'Bonne',59),(163,'2019-03-01',22.06,'Bonne',11),(164,'2019-01-01',303.86,'Polluée',80),(165,'2018-11-01',80.35,'Acceptable',74),(166,'2019-06-01',55.03,'Acceptable',21),(167,'2021-01-01',60.02,'Acceptable',47),(168,'2024-04-01',56.84,'Acceptable',12),(169,'2022-01-01',178.38,'Médiocre',65),(170,'2022-03-01',478.74,'Polluée',86),(171,'2023-01-01',113.89,'Acceptable',91),(172,'2022-08-01',365.07,'Polluée',44),(173,'2020-08-01',214.82,'Médiocre',32),(174,'2024-01-01',316.31,'Polluée',42),(175,'2022-11-01',167.36,'Médiocre',9),(176,'2019-08-01',492.85,'Polluée',53),(177,'2024-10-01',237.19,'Médiocre',74),(178,'2021-02-01',210.55,'Médiocre',82),(179,'2022-08-01',54.66,'Acceptable',23),(180,'2019-07-01',126.48,'Acceptable',47),(181,'2018-09-01',256.42,'Médiocre',74),(182,'2023-11-01',119.82,'Acceptable',74),(183,'2024-04-01',290.5,'Médiocre',30),(184,'2018-12-01',29.47,'Bonne',60),(185,'2022-08-01',398.49,'Polluée',68),(186,'2018-10-01',175.51,'Médiocre',38),(187,'2020-12-01',265.34,'Médiocre',73),(188,'2019-03-01',68.28,'Acceptable',92),(189,'2023-02-01',482.62,'Polluée',36),(190,'2022-08-01',304.37,'Polluée',22),(191,'2021-03-01',113.37,'Acceptable',24),(192,'2018-12-01',270.16,'Médiocre',38),(193,'2023-02-01',170.83,'Médiocre',5),(194,'2023-04-01',22.36,'Bonne',68),(195,'2021-06-01',417.39,'Polluée',92),(196,'2021-09-01',276.57,'Médiocre',32),(197,'2023-10-01',232.27,'Médiocre',15),(198,'2023-02-01',185.91,'Médiocre',30),(199,'2018-01-01',102.7,'Acceptable',49),(200,'2024-06-01',317.01,'Polluée',10),(201,'2023-08-01',245.08,'Médiocre',87),(202,'2022-11-01',113.38,'Acceptable',68),(203,'2024-05-01',194.63,'Médiocre',85),(204,'2023-06-01',456.11,'Polluée',46),(205,'2021-04-01',391.59,'Polluée',50),(206,'2021-09-01',422.04,'Polluée',91),(207,'2020-10-01',77.3,'Acceptable',88),(208,'2019-10-01',460.06,'Polluée',81),(209,'2018-10-01',20.06,'Bonne',38),(210,'2022-10-01',414.9,'Polluée',96),(211,'2021-02-01',221.57,'Médiocre',57),(212,'2023-04-01',333.85,'Polluée',85),(213,'2023-12-01',304.38,'Polluée',41),(214,'2021-09-01',220.12,'Médiocre',90),(215,'2018-04-01',178.35,'Médiocre',71),(216,'2021-06-01',175.63,'Médiocre',33),(217,'2019-05-01',210.02,'Médiocre',76),(218,'2023-10-01',272.51,'Médiocre',39),(219,'2024-12-01',403.35,'Polluée',94),(220,'2019-03-01',448.04,'Polluée',90),(221,'2018-02-01',123.8,'Acceptable',85),(222,'2021-04-01',451.44,'Polluée',31),(223,'2022-05-01',228.61,'Médiocre',23),(224,'2021-12-01',197.41,'Médiocre',3),(225,'2020-08-01',166.34,'Médiocre',53),(226,'2019-08-01',347.19,'Polluée',89),(227,'2019-08-01',399.41,'Polluée',92),(228,'2018-12-01',497.09,'Polluée',73),(229,'2023-05-01',166.33,'Médiocre',12),(230,'2020-07-01',222.16,'Médiocre',33),(231,'2018-02-01',16,'Bonne',92),(232,'2019-08-01',40.64,'Bonne',69),(233,'2024-04-01',140.45,'Acceptable',91),(234,'2020-04-01',202.54,'Médiocre',14),(235,'2021-02-01',437.88,'Polluée',1),(236,'2019-12-01',388.83,'Polluée',9),(237,'2023-09-01',265.63,'Médiocre',14),(238,'2023-05-01',375.71,'Polluée',27),(239,'2021-09-01',389.93,'Polluée',24),(240,'2018-12-01',382.08,'Polluée',30),(241,'2020-07-01',362.77,'Polluée',75),(242,'2018-11-01',187.86,'Médiocre',3),(243,'2022-11-01',386.24,'Polluée',60),(244,'2021-05-01',93.31,'Acceptable',25),(245,'2022-12-01',394.79,'Polluée',51),(246,'2019-05-01',399.58,'Polluée',82),(247,'2018-12-01',200.87,'Médiocre',36),(248,'2021-09-01',477.83,'Polluée',42),(249,'2024-01-01',21.94,'Bonne',95),(250,'2023-12-01',77.95,'Acceptable',67),(251,'2023-01-01',60.83,'Acceptable',51),(252,'2020-10-01',220.89,'Médiocre',14),(253,'2020-05-01',84.13,'Acceptable',90),(254,'2024-02-01',384.24,'Polluée',68),(255,'2023-01-01',460.78,'Polluée',89),(256,'2023-06-01',457.12,'Polluée',1),(257,'2020-05-01',206.43,'Médiocre',58),(258,'2023-05-01',370.92,'Polluée',75),(259,'2024-07-01',1.97,'Bonne',66),(260,'2021-10-01',480.6,'Polluée',2),(261,'2021-07-01',11.43,'Bonne',67),(262,'2020-08-01',200.68,'Médiocre',68),(263,'2018-07-01',275.35,'Médiocre',83),(264,'2020-02-01',374.97,'Polluée',60),(265,'2021-02-01',243.44,'Médiocre',13),(266,'2018-08-01',347.81,'Polluée',59),(267,'2018-02-01',322.01,'Polluée',30),(268,'2020-08-01',233.71,'Médiocre',4),(269,'2023-10-01',222.16,'Médiocre',57),(270,'2023-01-01',56.74,'Acceptable',23),(271,'2023-05-01',251.79,'Médiocre',26),(272,'2020-08-01',339.4,'Polluée',52),(273,'2018-03-01',380.96,'Polluée',87),(274,'2022-06-01',367.1,'Polluée',93),(275,'2023-09-01',75.25,'Acceptable',84),(276,'2021-03-01',158.62,'Médiocre',64),(277,'2022-11-01',156.3,'Médiocre',3),(278,'2021-05-01',383.72,'Polluée',23),(279,'2023-08-01',158.66,'Médiocre',89),(280,'2019-08-01',496.32,'Polluée',53),(281,'2022-02-01',82.21,'Acceptable',21),(282,'2018-07-01',251.27,'Médiocre',73),(283,'2021-11-01',67.62,'Acceptable',86),(284,'2023-09-01',36.61,'Bonne',1),(285,'2020-06-01',126.76,'Acceptable',47),(286,'2019-01-01',182.62,'Médiocre',20),(287,'2019-10-01',270.82,'Médiocre',42),(288,'2020-11-01',15.24,'Bonne',38),(289,'2023-03-01',357.91,'Polluée',44),(290,'2024-10-01',497.56,'Polluée',51),(291,'2024-12-01',378.8,'Polluée',45),(292,'2022-07-01',160.52,'Médiocre',84),(293,'2022-01-01',252.03,'Médiocre',15),(294,'2019-06-01',115.1,'Acceptable',47),(295,'2022-06-01',30.73,'Bonne',80),(296,'2020-06-01',333.41,'Polluée',65),(297,'2018-04-01',23.56,'Bonne',9),(298,'2020-08-01',254.49,'Médiocre',61),(299,'2021-07-01',234.96,'Médiocre',10),(300,'2020-03-01',65.04,'Acceptable',93),(301,'2022-05-01',68.94,'Acceptable',33),(302,'2022-05-01',304.85,'Polluée',87),(303,'2024-12-01',133.24,'Acceptable',39),(304,'2021-05-01',190.87,'Médiocre',68),(305,'2023-12-01',256.48,'Médiocre',78),(306,'2019-05-01',393.07,'Polluée',43),(307,'2022-09-01',485.21,'Polluée',24),(308,'2024-04-01',183.56,'Médiocre',52),(309,'2019-05-01',489.34,'Polluée',43),(310,'2019-07-01',365.86,'Polluée',82),(311,'2021-02-01',419.53,'Polluée',37),(312,'2021-12-01',346.87,'Polluée',2),(313,'2023-10-01',192.43,'Médiocre',68),(314,'2024-05-01',472.71,'Polluée',73),(315,'2023-08-01',323.81,'Polluée',72),(316,'2022-01-01',135.24,'Acceptable',85),(317,'2024-04-01',305.72,'Polluée',80),(318,'2023-02-01',261.86,'Médiocre',7),(319,'2022-03-01',72.65,'Acceptable',63),(320,'2024-06-01',274.41,'Médiocre',66),(321,'2020-02-01',147.55,'Acceptable',67),(322,'2022-07-01',88.01,'Acceptable',16),(323,'2021-11-01',331.95,'Polluée',64),(324,'2018-12-01',56.68,'Acceptable',88),(325,'2019-04-01',428.48,'Polluée',80),(326,'2022-04-01',97.74,'Acceptable',35),(327,'2018-02-01',406.3,'Polluée',29),(328,'2021-09-01',418.48,'Polluée',53),(329,'2018-01-01',141.15,'Acceptable',66),(330,'2019-02-01',6.21,'Bonne',71),(331,'2018-11-01',435.18,'Polluée',85),(332,'2022-01-01',323.43,'Polluée',69),(333,'2022-04-01',117.91,'Acceptable',49),(334,'2020-01-01',96.83,'Acceptable',5),(335,'2021-11-01',258.93,'Médiocre',46),(336,'2018-05-01',142.42,'Acceptable',45),(337,'2018-07-01',71.32,'Acceptable',77),(338,'2018-05-01',23.2,'Bonne',48),(339,'2022-04-01',110,'Acceptable',23),(340,'2024-09-01',293.59,'Médiocre',70),(341,'2021-07-01',439.36,'Polluée',19),(342,'2023-02-01',238.74,'Médiocre',65),(343,'2021-05-01',3.87,'Bonne',11),(344,'2018-12-01',358.53,'Polluée',47),(345,'2022-06-01',107.46,'Acceptable',35),(346,'2023-01-01',187.24,'Médiocre',57),(347,'2018-05-01',230.06,'Médiocre',7),(348,'2018-02-01',166.99,'Médiocre',91),(349,'2021-10-01',37.98,'Bonne',90),(350,'2020-11-01',458.9,'Polluée',72),(351,'2020-01-01',198.26,'Médiocre',31),(352,'2023-09-01',249.53,'Médiocre',53),(353,'2024-12-01',145.05,'Acceptable',24),(354,'2024-04-01',393.86,'Polluée',75),(355,'2020-04-01',244.34,'Médiocre',1),(356,'2022-05-01',299.16,'Médiocre',11),(357,'2022-03-01',411.84,'Polluée',35),(358,'2018-12-01',291.73,'Médiocre',17),(359,'2022-01-01',12.59,'Bonne',47),(360,'2021-05-01',114.38,'Acceptable',60),(361,'2024-02-01',19.58,'Bonne',30),(362,'2018-11-01',127.23,'Acceptable',64),(363,'2024-02-01',448.03,'Polluée',32),(364,'2023-08-01',321.26,'Polluée',72),(365,'2018-05-01',70.46,'Acceptable',40),(366,'2023-10-01',137,'Acceptable',91),(367,'2024-01-01',266.64,'Médiocre',77),(368,'2019-08-01',5.17,'Bonne',57),(369,'2022-11-01',248.55,'Médiocre',82),(370,'2018-08-01',83.47,'Acceptable',11),(371,'2023-08-01',395.64,'Polluée',44),(372,'2022-01-01',473.26,'Polluée',47),(373,'2024-02-01',93.05,'Acceptable',77),(374,'2023-01-01',196.88,'Médiocre',51),(375,'2020-01-01',112.41,'Acceptable',35),(376,'2024-12-01',246.98,'Médiocre',64),(377,'2022-01-01',23.55,'Bonne',22),(378,'2023-04-01',136.89,'Acceptable',67),(379,'2024-09-01',295.81,'Médiocre',53),(380,'2022-01-01',474.28,'Polluée',71),(381,'2020-01-01',408.29,'Polluée',90),(382,'2021-02-01',281.49,'Médiocre',22),(383,'2024-07-01',121.17,'Acceptable',84),(384,'2018-09-01',321.59,'Polluée',13),(385,'2023-08-01',61.76,'Acceptable',22),(386,'2018-09-01',215.27,'Médiocre',34),(387,'2024-10-01',110.19,'Acceptable',16),(388,'2019-07-01',214.63,'Médiocre',60),(389,'2019-02-01',457.43,'Polluée',81),(390,'2020-03-01',480.91,'Polluée',59),(391,'2018-09-01',189.16,'Médiocre',58),(392,'2024-12-01',231.8,'Médiocre',3),(393,'2020-10-01',53.34,'Acceptable',65),(394,'2022-03-01',63.74,'Acceptable',51),(395,'2022-10-01',354.62,'Polluée',40),(396,'2018-07-01',315.42,'Polluée',61),(397,'2021-11-01',213.64,'Médiocre',89),(398,'2019-04-01',96.04,'Acceptable',63),(399,'2021-12-01',358.15,'Polluée',37),(400,'2024-04-01',180.8,'Médiocre',60),(401,'2024-04-01',83.27,'Acceptable',51),(402,'2024-10-01',428.76,'Polluée',44),(403,'2020-05-01',313.78,'Polluée',48),(404,'2024-08-01',238.66,'Médiocre',31),(405,'2022-08-01',400.53,'Polluée',7),(406,'2021-01-01',359.62,'Polluée',37),(407,'2020-11-01',269.8,'Médiocre',1),(408,'2021-12-01',369.82,'Polluée',54),(409,'2018-02-01',152.42,'Médiocre',61),(410,'2018-08-01',437.24,'Polluée',81),(411,'2021-12-01',204.72,'Médiocre',43),(412,'2023-09-01',100.05,'Acceptable',25),(413,'2019-09-01',26.58,'Bonne',39),(414,'2023-03-01',53.73,'Acceptable',74),(415,'2019-05-01',395.5,'Polluée',23),(416,'2023-11-01',278.54,'Médiocre',8),(417,'2018-01-01',208.06,'Médiocre',64),(418,'2019-12-01',103.7,'Acceptable',42),(419,'2020-11-01',336.06,'Polluée',56),(420,'2019-12-01',184.05,'Médiocre',15),(421,'2022-07-01',48.67,'Bonne',5),(422,'2018-08-01',438.24,'Polluée',89),(423,'2020-11-01',499.46,'Polluée',59),(424,'2019-03-01',188.82,'Médiocre',57),(425,'2020-02-01',403.49,'Polluée',45),(426,'2019-05-01',254.96,'Médiocre',94),(427,'2021-02-01',21.82,'Bonne',36),(428,'2018-07-01',130.84,'Acceptable',72),(429,'2023-01-01',354.69,'Polluée',69),(430,'2018-06-01',476.74,'Polluée',19),(431,'2019-04-01',472.18,'Polluée',16),(432,'2020-07-01',130.46,'Acceptable',64),(433,'2021-07-01',297.39,'Médiocre',18),(434,'2019-01-01',445.8,'Polluée',55),(435,'2021-07-01',227.7,'Médiocre',13),(436,'2020-07-01',418.84,'Polluée',39),(437,'2021-04-01',236.64,'Médiocre',80),(438,'2021-07-01',336.86,'Polluée',33),(439,'2018-10-01',81.26,'Acceptable',34),(440,'2024-12-01',252.87,'Médiocre',9),(441,'2021-04-01',396.33,'Polluée',17),(442,'2018-08-01',403.7,'Polluée',11),(443,'2020-11-01',173.91,'Médiocre',5),(444,'2022-03-01',77.03,'Acceptable',59),(445,'2018-02-01',469.95,'Polluée',59),(446,'2018-03-01',126.26,'Acceptable',68),(447,'2022-05-01',148.33,'Acceptable',66),(448,'2023-11-01',59.28,'Acceptable',32),(449,'2019-02-01',473.88,'Polluée',64),(450,'2024-03-01',401.77,'Polluée',87),(451,'2024-01-01',205.8,'Médiocre',78),(452,'2021-06-01',143.89,'Acceptable',52),(453,'2019-12-01',265.73,'Médiocre',90),(454,'2018-05-01',405.05,'Polluée',15),(455,'2018-01-01',96.71,'Acceptable',57),(456,'2020-07-01',243.43,'Médiocre',92),(457,'2019-10-01',332.46,'Polluée',84),(458,'2021-10-01',321.1,'Polluée',12),(459,'2024-09-01',83.35,'Acceptable',60),(460,'2023-05-01',491.03,'Polluée',30),(461,'2023-08-01',455.74,'Polluée',52),(462,'2022-03-01',67.47,'Acceptable',39),(463,'2024-07-01',162.76,'Médiocre',52),(464,'2024-10-01',120.23,'Acceptable',16),(465,'2019-10-01',465.77,'Polluée',41),(466,'2024-02-01',223.49,'Médiocre',58),(467,'2018-01-01',204.39,'Médiocre',24),(468,'2024-09-01',160.4,'Médiocre',50),(469,'2023-01-01',131.59,'Acceptable',92),(470,'2022-11-01',357.01,'Polluée',91),(471,'2018-11-01',25.01,'Bonne',34),(472,'2021-01-01',183.83,'Médiocre',82),(473,'2021-11-01',417.88,'Polluée',56),(474,'2023-04-01',273.24,'Médiocre',86),(475,'2022-07-01',211.78,'Médiocre',40),(476,'2023-05-01',341.89,'Polluée',55),(477,'2022-04-01',259.46,'Médiocre',25),(478,'2020-02-01',58.27,'Acceptable',53),(479,'2023-01-01',150.66,'Médiocre',78),(480,'2020-07-01',44.81,'Bonne',37),(481,'2024-01-01',71.6,'Acceptable',32),(482,'2020-04-01',60.64,'Acceptable',62),(483,'2022-05-01',24.78,'Bonne',10),(484,'2021-02-01',485.26,'Polluée',32),(485,'2024-07-01',479.93,'Polluée',69),(486,'2020-02-01',353.48,'Polluée',46),(487,'2024-01-01',112.29,'Acceptable',50),(488,'2021-05-01',0.17,'Bonne',19),(489,'2021-05-01',142.39,'Acceptable',88),(490,'2019-02-01',477.76,'Polluée',80),(491,'2022-06-01',58.57,'Acceptable',9),(492,'2023-02-01',88.97,'Acceptable',12),(493,'2019-12-01',385.19,'Polluée',38),(494,'2019-02-01',288.5,'Médiocre',73),(495,'2024-08-01',386.97,'Polluée',42),(496,'2019-02-01',97.46,'Acceptable',71),(497,'2024-10-01',152.37,'Médiocre',19),(498,'2019-07-01',209.18,'Médiocre',35),(499,'2024-12-01',496.5,'Polluée',1),(500,'2023-12-01',108.5,'Acceptable',45),(501,'2023-05-15',320.5,'Médiocre',3),(502,'2023-06-10',295.8,'Polluée',3),(503,'2023-05-20',310.2,'Médiocre',27),(504,'2023-06-05',289.7,'Acceptable',27),(505,'2023-05-10',340.1,'Polluée',21),(506,'2023-06-18',300.6,'Médiocre',21),(507,'2020-01-10',100.5,'Acceptable',4),(508,'2021-05-20',89.4,'Médiocre',4),(509,'2021-03-12',74.6,'Acceptable',10),(510,'2020-08-10',70.2,'Bonne',10),(511,'2020-06-07',95.8,'Polluée',16),(512,'2019-11-03',85.7,'Médiocre',16),(513,'2022-09-01',110.3,'Polluée',22),(514,'2021-04-05',98.4,'Acceptable',22),(515,'2020-03-15',255.5,'Acceptable',3),(516,'2020-06-10',198.7,'Médiocre',2),(517,'2020-10-05',310.9,'Polluée',6),(518,'2023-05-01',280.5,'Acceptable',3),(519,'2023-06-15',410.2,'Polluée',6),(520,'2023-04-20',180.9,'Médiocre',2),(521,'2023-07-15',305.6,'Polluée',4),(522,'2023-09-15',390.7,'Acceptable',5),(523,'2023-10-05',250.3,'Médiocre',1),(524,'2022-12-27',293.6,'Bonne',10),(525,'2023-01-11',467.57,'Polluée',9),(526,'2023-01-26',314.48,'Acceptable',10),(527,'2023-02-10',198.92,'Médiocre',10),(528,'2023-02-25',68.21,'Polluée',10),(529,'2023-03-12',337.27,'Bonne',2),(532,'2023-04-26',372.03,'Bonne',2),(533,'2023-05-11',178.27,'Bonne',3),(534,'2023-05-26',482.91,'Polluée',5),(535,'2023-06-10',287.86,'Polluée',15),(536,'2023-06-25',209.21,'Acceptable',17),(537,'2023-07-10',450.03,'Médiocre',18),(538,'2023-07-25',355.52,'Acceptable',5),(539,'2023-08-09',389.49,'Acceptable',5),(541,'2023-09-08',389.96,'Médiocre',16),(543,'2023-10-08',123.25,'Bonne',10),(544,'2023-10-23',424.12,'Acceptable',5),(545,'2023-11-07',147.9,'Polluée',4),(546,'2023-11-22',468.87,'Médiocre',18),(547,'2023-12-07',204.23,'Polluée',11),(548,'2023-12-22',246.77,'Médiocre',3),(549,'2024-01-06',455.16,'Bonne',17),(550,'2024-01-21',340.28,'Bonne',15),(551,'2024-02-05',208.55,'Acceptable',2),(553,'2024-03-06',486.71,'Acceptable',12),(554,'2024-03-21',254.7,'Acceptable',8),(556,'2024-04-20',336.16,'Acceptable',4),(558,'2024-05-20',297.31,'Acceptable',17),(559,'2024-06-04',145.04,'Acceptable',16),(560,'2024-06-19',402.39,'Bonne',8),(561,'2024-07-04',172.1,'Bonne',4),(562,'2024-07-19',159.18,'Acceptable',15),(563,'2024-08-03',433.4,'Bonne',18),(564,'2024-08-18',171.08,'Bonne',10),(565,'2024-09-02',196.38,'Bonne',3),(568,'2024-10-17',69.59,'Médiocre',17),(569,'2024-11-01',132.57,'Polluée',5),(570,'2024-11-16',208.71,'Polluée',18),(572,'2024-12-16',391.31,'Acceptable',15);
/*!40000 ALTER TABLE `données` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaz`
--

DROP TABLE IF EXISTS `gaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gaz` (
  `ID_Gaz` int NOT NULL,
  `Nom_du_Gaz` varchar(50) DEFAULT NULL,
  `Formule` varchar(50) DEFAULT NULL,
  `id_type_gaz` int NOT NULL,
  PRIMARY KEY (`ID_Gaz`),
  KEY `id_type_gaz` (`id_type_gaz`),
  CONSTRAINT `gaz_ibfk_1` FOREIGN KEY (`id_type_gaz`) REFERENCES `type_gaz` (`id_type_gaz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaz`
--

LOCK TABLES `gaz` WRITE;
/*!40000 ALTER TABLE `gaz` DISABLE KEYS */;
INSERT INTO `gaz` VALUES (1,'Protoxyde d\'azote','N2O',1),(2,'Ozone troposphérique','O3',1),(3,'Méthane','CH4',1),(4,'Hydrofluorocarbures','HFC',2),(5,'Hexafluorure de soufre','SF6',2),(6,'Dioxyde de carbone','CO2',1);
/*!40000 ALTER TABLE `gaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnels`
--

DROP TABLE IF EXISTS `personnels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnels` (
  `ID_Personnel` int NOT NULL,
  `Nom_du_personnel` varchar(50) DEFAULT NULL,
  `Prenom_du_personnel` varchar(50) DEFAULT NULL,
  `date_de_naissance` date DEFAULT NULL,
  `Date_de_prise_de_poste` date DEFAULT NULL,
  `num_du_telephone` int DEFAULT NULL,
  `Adresse_personnel` varchar(100) DEFAULT NULL,
  `Poste` enum('Chef d''agence','Agent technique','Agent administratif') DEFAULT NULL,
  `ID_Agence` int NOT NULL,
  PRIMARY KEY (`ID_Personnel`),
  KEY `ID_Agence` (`ID_Agence`),
  CONSTRAINT `personnels_ibfk_1` FOREIGN KEY (`ID_Agence`) REFERENCES `agence` (`ID_Agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnels`
--

LOCK TABLES `personnels` WRITE;
/*!40000 ALTER TABLE `personnels` DISABLE KEYS */;
INSERT INTO `personnels` VALUES (1,'Dupont','Jean','1980-05-15','2018-01-15',612345678,'5 rue de Paris, 75001','Chef d\'agence',1),(2,'Martin','Sophie','1982-08-22','2019-03-10',623456789,'10 avenue Bordeaux, 33000','Chef d\'agence',2),(3,'Bernard','Claire','1977-03-10','2017-07-01',634567891,'12 rue Toulouse, 31000','Chef d\'agence',3),(4,'Petit','Luc','1983-06-12','2020-09-25',645678912,'8 bd Rennes, 35000','Chef d\'agence',4),(5,'Durand','Paul','1979-12-30','2016-02-18',656789123,'3 avenue Lyon, 69000','Chef d\'agence',5),(6,'Leroy','Julie','1981-04-07','2021-01-10',667891234,'35 rue Marseille, 13000','Chef d\'agence',6),(7,'Moreau','Thomas','1975-11-11','2015-05-05',678912345,'14 place Lille, 59000','Chef d\'agence',7),(8,'Roux','Alice','1984-02-14','2018-10-20',689123456,'27 rue Rouen, 76000','Chef d\'agence',8),(9,'Fournier','Élise','1988-04-25','2021-02-14',690123456,'85 bd Nantes, 44000','Chef d\'agence',9),(10,'Colin','Laura','1992-10-15','2021-01-30',690123444,'125 cours Strasbourg, 67000','Chef d\'agence',10),(11,'Girard','Maxime','1986-06-01','2020-06-10',691234567,'20 rue Orléans, 45000','Chef d\'agence',11),(12,'Andre','Lucie','1989-08-19','2019-12-01',692345678,'11 rue Dijon, 21000','Chef d\'agence',12),(13,'Mercier','Romain','1982-09-15','2017-08-01',693456789,'16 rue Limoges, 87000','Chef d\'agence',13),(14,'Lemoine','Camille','1981-07-22','2019-05-15',694567890,'9 rue Montpellier, 34000','Chef d\'agence',14),(15,'Gaillard','Luc','1980-10-11','2018-11-01',695678901,'4 avenue Nice, 06000','Chef d\'agence',15),(16,'Masson','Hugo','1983-12-17','2020-01-20',696789012,'45 rue Paris, 75010','Chef d\'agence',16),(17,'Barbier','Emma','1987-01-05','2018-03-10',697890123,'65 rue Rouen, 76000','Chef d\'agence',17),(18,'Garnier','Nina','1985-09-09','2017-10-12',698901234,'78 rue Nantes, 44000','Chef d\'agence',18),(19,'Chevalier','Axel','1982-03-03','2016-06-15',699012345,'31 rue Strasbourg, 67000','Chef d\'agence',19),(20,'Faure','Manon','1986-05-26','2021-01-05',610123456,'87 rue Orléans, 45000','Chef d\'agence',20),(21,'Lucas','Victor','1981-04-15','2020-03-01',611234567,'19 rue Dijon, 21000','Chef d\'agence',21),(22,'Gauthier','Léa','1990-11-27','2021-04-18',612345678,'77 avenue Limoges, 87000','Chef d\'agence',22),(23,'Lopez','Mehdi','1984-01-30','2020-07-11',613456789,'18 bd Montpellier, 34000','Chef d\'agence',23),(24,'Henry','Sarah','1987-07-12','2019-02-20',614567890,'92 rue Nice, 06000','Chef d\'agence',24),(25,'Pires','Yacine','1978-09-17','2018-05-25',615678901,'55 rue Paris, 75001','Chef d\'agence',25),(26,'Nicolas','Chloé','1989-02-08','2021-01-10',616789012,'35 rue Bordeaux, 33000','Chef d\'agence',26),(27,'Robin','Karim','1991-07-18','2021-09-05',617890123,'70 rue Toulouse, 31000','Chef d\'agence',27),(28,'Schmitt','Jules','1979-03-17','2020-08-20',618901234,'60 rue Rennes, 35000','Chef d\'agence',28),(29,'Roy','Clara','1983-06-21','2019-04-30',619012345,'45 rue Lyon, 69000','Chef d\'agence',29),(30,'Bertrand','Noah','1985-11-30','2020-05-12',620123456,'40 bd Marseille, 13000','Chef d\'agence',30),(31,'Leclerc','Anna','1990-09-09','2021-03-15',621234567,'25 avenue Lille, 59000','Chef d\'agence',31),(32,'Leroy','Thomas','1979-03-17','2021-01-10',622345678,'35 rue Limoges, 87000','Chef d\'agence',32),(33,'Mercier','Axel','1980-05-24','2021-01-05',612300033,'20 bd Paris, 75001','Agent technique',1),(34,'Vidal','Romain','1980-09-10','2020-12-17',612300034,'37 place Bordeaux, 33000','Agent technique',2),(35,'Paul','Zoé','1994-03-26','2021-08-26',612300035,'91 rue Toulouse, 31000','Agent technique',3),(36,'Benoit','Manon','1993-12-12','2019-04-02',612300036,'82 avenue Rennes, 35000','Agent technique',4),(37,'Benoit','Julien','1995-09-22','2021-03-14',612300037,'11 rue Lyon, 69000','Agent technique',5),(38,'Gillet','Tom','1987-04-09','2021-09-05',612300038,'97 rue Marseille, 13000','Agent technique',6),(39,'Langlois','Anna','1991-05-22','2019-08-24',612300039,'19 bd Lille, 59000','Agent technique',7),(40,'Renard','Lina','1985-01-28','2021-01-21',612300040,'52 avenue Rouen, 76000','Agent technique',8),(41,'Dubois','Lina','1990-04-30','2019-07-08',612300041,'97 avenue Nantes, 44000','Agent technique',9),(42,'Vidal','Clément','1983-01-21','2020-05-19',612300042,'46 cours Strasbourg, 67000','Agent technique',10),(43,'Henry','Julie','1982-11-04','2020-03-17',612300043,'38 rue Orléans, 45000','Agent technique',11),(44,'Simon','Lucas','1983-06-18','2019-11-09',612300044,'67 rue Dijon, 21000','Agent technique',12),(45,'Masson','Julie','1984-10-11','2021-02-01',612300045,'58 bd Limoges, 87000','Agent technique',13),(46,'Lopez','Marc','1989-12-26','2020-06-30',612300046,'35 rue Montpellier, 34000','Agent technique',14),(47,'Dubois','Nicolas','1993-08-15','2020-10-12',612300047,'24 rue Nice, 06000','Agent technique',15),(48,'Hardy','Julie','1990-02-07','2021-07-22',612300048,'70 rue Paris, 75010','Agent technique',16),(49,'Poulain','Eva','1982-03-03','2019-05-28',612300049,'55 rue Rouen, 76000','Agent technique',17),(50,'Roger','Axel','1994-01-14','2021-04-11',612300050,'33 av Nantes, 44000','Agent technique',18),(51,'Lejeune','Marc','1990-07-09','2020-09-17',612300051,'80 rue Strasbourg, 67000','Agent technique',19),(52,'Marchand','Manon','1987-09-30','2021-03-29',612300052,'12 rue Orléans, 45000','Agent technique',20),(53,'Guerin','Tom','1985-05-25','2020-12-05',612300053,'29 cours Dijon, 21000','Agent technique',21),(54,'Blanc','Clément','1988-08-11','2021-08-09',612300054,'66 bd Limoges, 87000','Agent technique',22),(55,'Baron','Julie','1981-04-02','2019-04-14',612300055,'21 rue Montpellier, 34000','Agent technique',23),(56,'Henry','Romain','1992-10-05','2020-11-03',612300056,'47 rue Nice, 06000','Agent technique',24),(57,'Giraud','Lucas','1986-06-07','2021-01-26',612300057,'64 rue Paris, 75011','Agent technique',25),(58,'Vasseur','Zoé','1993-03-18','2020-02-12',612300058,'35 rue Bordeaux, 33000','Agent technique',26),(59,'Collet','Pierre','1984-12-08','2021-02-15',612300059,'18 rue Toulouse, 31000','Agent technique',27),(60,'Rolland','Julie','1991-01-29','2020-06-06',612300060,'50 rue Rennes, 35000','Agent technique',28),(61,'Hardy','Nicolas','1983-07-23','2019-10-18',612300061,'74 rue Lyon, 69000','Agent technique',29),(62,'Lopez','Eva','1994-11-04','2021-06-19',612300062,'26 bd Marseille, 13000','Agent technique',30),(63,'Roger','Clara','1981-09-16','2020-09-08',612300063,'92 av Lille, 59000','Agent technique',31),(64,'Simon','Noé','1995-04-27','2021-04-21',612300064,'31 rue Rouen, 76000','Agent technique',32),(65,'Gillet','Tom','1982-08-30','2019-12-12',612300065,'40 rue Paris, 75012','Agent technique',17),(66,'Benoit','Julie','1986-02-12','2020-07-01',612300066,'28 rue Nantes, 44000','Agent technique',18),(67,'Renard','Marc','1990-10-20','2021-03-03',612300067,'71 rue Strasbourg, 67000','Agent technique',19),(68,'Masson','Lucas','1985-03-11','2019-11-20',612300068,'49 rue Orléans, 45000','Agent technique',20),(69,'Guerin','Anna','1983-05-19','2020-08-27',612300069,'38 cours Dijon, 21000','Agent technique',21),(70,'Langlois','Axel','1991-01-13','2021-06-30',612300070,'83 bd Limoges, 87000','Agent technique',22),(71,'Renard','Inès','1984-06-04','2020-03-31',612300071,'25 rue Montpellier, 34000','Agent technique',23),(72,'Collet','Hugo','1992-02-09','2021-05-16',612300072,'12 rue Nice, 06000','Agent technique',24),(73,'Vidal','Nicolas','1987-04-26','2020-09-15',612300073,'68 rue Paris, 75013','Agent technique',25),(74,'Rolland','Emma','1981-12-06','2019-07-21',612300074,'16 av Bordeaux, 33000','Agent technique',26),(75,'Baron','Clément','1993-09-03','2021-07-03',612300075,'43 rue Toulouse, 31000','Agent technique',27),(76,'Perrin','Lucas','1985-11-17','2020-01-09',612300076,'27 rue Rennes, 35000','Agent technique',28),(77,'Giraud','Julie','1992-07-14','2021-02-11',612300077,'30 rue Lyon, 69000','Agent technique',29),(78,'Dubois','Marc','1984-08-28','2019-12-28',612300078,'77 rue Marseille, 13000','Agent technique',30),(79,'Lopez','Laura','1989-02-22','2021-08-01',612300079,'65 av Lille, 59000','Agent technique',31),(80,'Henry','Tom','1994-03-09','2020-06-17',612300080,'13 rue Rouen, 76000','Agent technique',32),(81,'Roger','Julie','1986-05-30','2021-05-27',612300081,'48 bd Paris, 75014','Agent technique',31),(82,'Paul','Eva','1991-10-25','2020-04-12',612300082,'22 rue Paris, 75015','Agent technique',29),(83,'Mercier','Hugo','1983-11-02','2019-05-07',612300083,'69 av Bordeaux, 33000','Agent technique',26),(84,'Benoit','Lucas','1990-06-18','2021-07-12',612300084,'52 rue Toulouse, 31000','Agent technique',27),(85,'Renard','Clara','1988-10-14','2019-03-22',612300085,'18 bd Rennes, 35000','Agent technique',31),(86,'Masson','Zoé','1983-07-07','2020-11-28',612300086,'37 rue Rennes, 35000','Agent technique',31),(87,'Simon','Lucas','1992-01-29','2021-01-08',612300087,'10 rue Rennes, 35000','Agent technique',31),(88,'Dubois','Marc','1984-04-11','2019-10-19',612300088,'40 rue Limoges, 87000','Agent technique',32),(89,'Paul','Clément','1993-08-21','2021-04-02',612300089,'51 rue Limoges, 87000','Agent technique',32),(90,'Lopez','Nicolas','1987-06-06','2020-08-13',612300090,'27 rue Limoges, 87000','Agent technique',32),(91,'Vasseur','Julie','1989-12-23','2021-02-24',612300091,'73 bd Limoges, 87000','Agent technique',32),(92,'Roger','Lucas','1981-09-05','2019-12-01',612300092,'66 bd Limoges, 87000','Agent technique',32),(93,'Renard','Anna','1994-05-10','2020-05-22',612300093,'25 rue Limoges, 87000','Agent technique',32),(94,'Hardy','Tom','1985-11-19','2021-06-14',612300094,'30 rue Limoges, 87000','Agent technique',32),(95,'Gillet','Emma','1991-03-27','2020-10-08',612300095,'42 rue Limoges, 87000','Agent technique',32),(96,'Blanc','Romain','1984-02-04','2019-08-30',612300096,'58 rue Limoges, 87000','Agent technique',32),(97,'Benoit','Eva','1990-07-31','2021-07-18',612300097,'80 bd Limoges, 87000','Agent technique',32),(98,'Guerin','Pierre','1986-01-12','2020-02-27',612300098,'15 cours Limoges, 87000','Agent technique',32),(99,'Marchand','Lina','1993-04-16','2021-03-10',612300099,'33 cours Limoges, 87000','Agent technique',32),(100,'Mercier','Noé','1988-09-09','2019-11-07',612300100,'62 rue Limoges, 87000','Agent technique',32),(101,'Collet','Julie','1982-12-30','2020-09-22',612300101,'44 rue Limoges, 87000','Agent technique',32),(102,'Rolland','Axel','1992-02-18','2021-05-05',612300102,'90 rue Limoges, 87000','Agent technique',32),(103,'Fournier','Élise','1988-04-25','2021-02-14',690100103,'85 bd Paris, 75015','Agent administratif',1),(104,'Colin','Laura','1992-10-15','2021-01-30',690100104,'125 cours Paris, 75016','Agent administratif',1),(105,'Gillet','Romain','1986-03-04','2020-04-18',690100105,'9 rue Bordeaux, 33000','Agent administratif',2),(106,'Masson','Chloé','1990-08-22','2021-03-22',690100106,'15 rue Toulouse, 31000','Agent administratif',3),(107,'Giraud','Manon','1987-11-30','2020-09-17',690100107,'10 rue Rennes, 35000','Agent administratif',4),(108,'Perrin','Axel','1989-12-09','2021-01-01',690100108,'55 avenue Lyon, 69000','Agent administratif',5),(109,'Benoit','Eva','1991-06-06','2020-05-25',690100109,'33 rue Marseille, 13000','Agent administratif',6),(110,'Lemoine','Éric','1992-09-09','2021-06-12',690100110,'20 rue Lille, 59000','Agent administratif',7),(111,'Langlois','Sonia','1986-12-12','2021-04-01',690100111,'24 avenue Rouen, 76000','Agent administratif',8),(112,'Guerin','Julie','1985-08-19','2020-10-28',690100112,'17 bd Nantes, 44000','Agent administratif',9),(113,'Hardy','Marc','1984-01-30','2021-05-08',690100113,'42 rue Strasbourg, 67000','Agent administratif',10),(114,'Blanc','Zoé','1989-04-14','2019-08-03',690100114,'67 rue Orléans, 45000','Agent administratif',11),(115,'Roger','Tom','1983-02-18','2020-12-22',690100115,'54 rue Dijon, 21000','Agent administratif',12),(116,'Marchand','Anna','1994-06-09','2021-07-29',690100116,'60 rue Limoges, 87000','Agent administratif',13),(117,'Vidal','Lucas','1987-05-11','2020-08-14',690100117,'41 rue Montpellier, 34000','Agent administratif',14),(118,'Renard','Clara','1991-03-03','2021-02-05',690100118,'22 rue Nice, 06000','Agent administratif',15),(119,'Collet','Romain','1984-10-24','2019-06-09',690100119,'39 rue Lille, 59000','Agent administratif',17),(120,'Dubois','Julie','1990-07-17','2020-09-12',690100120,'27 rue Nantes, 44000','Agent administratif',18),(121,'Masson','Eva','1986-09-05','2021-03-27',690100121,'71 bd Strasbourg, 67000','Agent administratif',19),(122,'Guerin','Axel','1992-12-31','2020-12-18',690100122,'18 rue Orléans, 45000','Agent administratif',20),(123,'Simon','Emma','1983-08-08','2019-04-29',690100123,'33 cours Dijon, 21000','Agent administratif',21),(124,'Henry','Lina','1989-11-29','2021-06-07',690100124,'85 bd Limoges, 87000','Agent administratif',22),(125,'Baron','Lucas','1985-02-27','2020-07-05',690100125,'12 rue Montpellier, 34000','Agent administratif',23),(126,'Giraud','Julie','1994-01-12','2021-01-24',690100126,'44 rue Nice, 06000','Agent administratif',24),(127,'Perrin','Manon','1987-06-16','2019-03-12',690100127,'92 rue Paris, 75017','Agent administratif',25),(128,'Lopez','Axel','1985-05-20','2020-10-10',690100128,'18 av Bordeaux, 33000','Agent administratif',26),(129,'Marchand','Clément','1991-09-18','2021-05-16',690100129,'40 rue Toulouse, 31000','Agent administratif',27),(130,'Mercier','Zoé','1988-02-07','2020-11-06',690100130,'27 rue Rennes, 35000','Agent administratif',28),(131,'Dubois','Lucas','1993-05-11','2021-06-01',690100131,'30 rue Lyon, 69000','Agent administratif',29),(132,'Henry','Julie','1984-07-23','2020-02-19',690100132,'66 rue Marseille, 13000','Agent administratif',30);
/*!40000 ALTER TABLE `personnels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapports`
--

DROP TABLE IF EXISTS `rapports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapports` (
  `ID_Rapport` int NOT NULL,
  `Titre_du_Rapport` varchar(75) DEFAULT NULL,
  `Analyse` varchar(255) DEFAULT NULL,
  `Date_du_Rapport_` date DEFAULT NULL,
  PRIMARY KEY (`ID_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapports`
--

LOCK TABLES `rapports` WRITE;
/*!40000 ALTER TABLE `rapports` DISABLE KEYS */;
INSERT INTO `rapports` VALUES (1,'Bilan qualité air 2020','Analyse annuelle des concentrations moyennes','2021-01-15'),(2,'Bilan qualité air 2021','Analyse annuelle des concentrations moyennes','2022-01-18'),(3,'Bilan qualité air 2022','Analyse annuelle des concentrations moyennes','2023-01-20'),(4,'Rapport semestriel Île-de-France S1-2021','Synthèse des relevés de janvier à juin 2021','2021-07-10'),(5,'Rapport semestriel Bretagne S2-2021','Synthèse des relevés de juillet à décembre 2021','2022-01-12'),(6,'Rapport semestriel Occitanie S1-2022','Synthèse des relevés de janvier à juin 2022','2022-07-08'),(7,'Rapport semestriel Auvergne-Rhône-Alpes S2-2022','Synthèse des relevés de juillet à décembre 2022','2023-01-14'),(8,'Pic d?ozone été 2021','Analyse des dépassements d?O3 durant la canicule de juin-août 2021','2021-09-05'),(9,'Variation CH4 régions agricoles 2022','Étude des émissions de méthane dans les zones à forte activité agricole','2022-11-02'),(10,'Épisodes HFC zone industrielle PACA 2023','Corrélation émissions HFC et pics d?activité industrielle','2023-06-18'),(11,'Comparatif multi-gaz Métropoles 2021','Comparaison N2O, CH4, O3 et CO2 dans 10 grandes villes','2022-03-22'),(12,'Étude SF6 secteurs résidentiels 2022','Évaluation du SF6 dans les quartiers résidentiels','2023-02-14'),(13,'Tendance GES 2019-2023','Évolution agrégée des GES sur cinq ans','2024-02-10'),(14,'Impact politiques locales 2020-2023','Corrélation plans climat-air-énergie territoriaux et niveaux de pollution','2024-05-09'),(15,'Étude CO2 grandes villes 2023','Comparatif des émissions urbaines','2023-11-30'),(16,'Rapport CH4 Paris 2023','Mesures de méthane à Paris','2023-06-01'),(17,'Rapport CO2 Lyon 2023','Analyse CO2 à Lyon','2023-07-01'),(18,'Rapport O3 Bordeaux','Relevé d\'ozone à Bordeaux','2023-05-10'),(19,'Rapport HFC Rennes','Étude industrielle HFC','2023-08-01'),(20,'Rapport SF6 Dijon','Présence SF6 zones résidentielles','2023-10-10'),(21,'Rapport N2O Toulouse','Étude protoxyde de azote','2023-11-01'),(22,'Rapport Hydrofluorocarbures AutoGen #1','Analyse automatique sur Hydrofluorocarbures, campagne 2023','2023-01-01'),(23,'Rapport Méthane AutoGen #2','Analyse automatique sur Méthane, campagne 2024','2023-01-16'),(24,'Rapport Hydrofluorocarbures AutoGen #3','Analyse automatique sur Hydrofluorocarbures, campagne 2023','2023-01-31'),(25,'Rapport Hydrofluorocarbures AutoGen #4','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2023-02-15'),(26,'Rapport Hydrofluorocarbures AutoGen #5','Analyse automatique sur Hydrofluorocarbures, campagne 2023','2023-03-02'),(27,'Rapport Ozone troposphérique AutoGen #6','Analyse automatique sur Ozone troposphérique, campagne 2024','2023-03-17'),(30,'Rapport Ozone troposphérique AutoGen #9','Analyse automatique sur Ozone troposphérique, campagne 2023','2023-05-01'),(31,'Rapport Méthane AutoGen #10','Analyse automatique sur Méthane, campagne 2024','2023-05-16'),(32,'Rapport Hexafluorure de soufre AutoGen #11','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2023-05-31'),(33,'Rapport Méthane AutoGen #12','Analyse automatique sur Méthane, campagne 2024','2023-06-15'),(34,'Rapport Hexafluorure de soufre AutoGen #13','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2023-06-30'),(35,'Rapport Dioxyde de carbone AutoGen #14','Analyse automatique sur Dioxyde de carbone, campagne 2024','2023-07-15'),(36,'Rapport Hexafluorure de soufre AutoGen #15','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2023-07-30'),(37,'Rapport Hexafluorure de soufre AutoGen #16','Analyse automatique sur Hexafluorure de soufre, campagne 2024','2023-08-14'),(39,'Rapport Hydrofluorocarbures AutoGen #18','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2023-09-13'),(41,'Rapport Hydrofluorocarbures AutoGen #20','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2023-10-13'),(42,'Rapport Hexafluorure de soufre AutoGen #21','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2023-10-28'),(43,'Rapport Hydrofluorocarbures AutoGen #22','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2023-11-12'),(44,'Rapport Dioxyde de carbone AutoGen #23','Analyse automatique sur Dioxyde de carbone, campagne 2023','2023-11-27'),(45,'Rapport Hexafluorure de soufre AutoGen #24','Analyse automatique sur Hexafluorure de soufre, campagne 2024','2023-12-12'),(46,'Rapport Méthane AutoGen #25','Analyse automatique sur Méthane, campagne 2023','2023-12-27'),(47,'Rapport Hexafluorure de soufre AutoGen #26','Analyse automatique sur Hexafluorure de soufre, campagne 2024','2024-01-11'),(48,'Rapport Méthane AutoGen #27','Analyse automatique sur Méthane, campagne 2023','2024-01-26'),(49,'Rapport Ozone troposphérique AutoGen #28','Analyse automatique sur Ozone troposphérique, campagne 2024','2024-02-10'),(51,'Rapport Dioxyde de carbone AutoGen #30','Analyse automatique sur Dioxyde de carbone, campagne 2024','2024-03-11'),(52,'Rapport Ozone troposphérique AutoGen #31','Analyse automatique sur Ozone troposphérique, campagne 2023','2024-03-26'),(54,'Rapport Hydrofluorocarbures AutoGen #33','Analyse automatique sur Hydrofluorocarbures, campagne 2023','2024-04-25'),(56,'Rapport Hexafluorure de soufre AutoGen #35','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2024-05-25'),(57,'Rapport Hydrofluorocarbures AutoGen #36','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2024-06-09'),(58,'Rapport Ozone troposphérique AutoGen #37','Analyse automatique sur Ozone troposphérique, campagne 2023','2024-06-24'),(59,'Rapport Hydrofluorocarbures AutoGen #38','Analyse automatique sur Hydrofluorocarbures, campagne 2024','2024-07-09'),(60,'Rapport Méthane AutoGen #39','Analyse automatique sur Méthane, campagne 2023','2024-07-24'),(61,'Rapport Dioxyde de carbone AutoGen #40','Analyse automatique sur Dioxyde de carbone, campagne 2024','2024-08-08'),(62,'Rapport Hydrofluorocarbures AutoGen #41','Analyse automatique sur Hydrofluorocarbures, campagne 2023','2024-08-23'),(63,'Rapport Méthane AutoGen #42','Analyse automatique sur Méthane, campagne 2024','2024-09-07'),(66,'Rapport Hexafluorure de soufre AutoGen #45','Analyse automatique sur Hexafluorure de soufre, campagne 2023','2024-10-22'),(67,'Rapport Hexafluorure de soufre AutoGen #46','Analyse automatique sur Hexafluorure de soufre, campagne 2024','2024-11-06'),(68,'Rapport Dioxyde de carbone AutoGen #47','Analyse automatique sur Dioxyde de carbone, campagne 2023','2024-11-21'),(70,'Rapport Méthane AutoGen #49','Analyse automatique sur Méthane, campagne 2023','2024-12-21');
/*!40000 ALTER TABLE `rapports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regroupe`
--

DROP TABLE IF EXISTS `regroupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regroupe` (
  `ID_Données` int NOT NULL,
  `ID_Rapport` int NOT NULL,
  PRIMARY KEY (`ID_Données`,`ID_Rapport`),
  KEY `ID_Rapport` (`ID_Rapport`),
  CONSTRAINT `regroupe_ibfk_1` FOREIGN KEY (`ID_Données`) REFERENCES `données` (`ID_Données`),
  CONSTRAINT `regroupe_ibfk_2` FOREIGN KEY (`ID_Rapport`) REFERENCES `rapports` (`ID_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regroupe`
--

LOCK TABLES `regroupe` WRITE;
/*!40000 ALTER TABLE `regroupe` DISABLE KEYS */;
INSERT INTO `regroupe` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,4),(101,4),(102,4),(103,4),(104,4),(105,4),(106,4),(107,4),(108,4),(109,4),(110,4),(111,4),(112,4),(113,4),(114,4),(115,4),(116,4),(117,4),(118,4),(119,4),(120,4),(121,4),(122,4),(123,4),(124,4),(125,4),(126,4),(127,4),(128,4),(129,4),(130,4),(131,4),(132,4),(133,5),(134,5),(135,5),(136,5),(137,5),(138,5),(139,5),(140,5),(141,5),(142,5),(143,5),(144,5),(145,5),(146,5),(147,5),(148,5),(149,5),(150,5),(151,5),(152,5),(153,5),(154,5),(155,5),(156,5),(157,5),(158,5),(159,5),(160,5),(161,5),(162,5),(163,5),(164,5),(165,5),(166,6),(167,6),(168,6),(169,6),(170,6),(171,6),(172,6),(173,6),(174,6),(175,6),(176,6),(177,6),(178,6),(179,6),(180,6),(181,6),(182,6),(183,6),(184,6),(185,6),(186,6),(187,6),(188,6),(189,6),(190,6),(191,6),(192,6),(193,6),(194,6),(195,6),(196,6),(197,6),(198,6),(199,7),(200,7),(201,7),(202,7),(203,7),(204,7),(205,7),(206,7),(207,7),(208,7),(209,7),(210,7),(211,7),(212,7),(213,7),(214,7),(215,7),(216,7),(217,7),(218,7),(219,7),(220,7),(221,7),(222,7),(223,7),(224,7),(225,7),(226,7),(227,7),(228,7),(229,7),(230,7),(231,7),(232,8),(233,8),(234,8),(235,8),(236,8),(237,8),(238,8),(239,8),(240,8),(241,8),(242,8),(243,8),(244,8),(245,8),(246,8),(247,8),(248,8),(249,8),(250,8),(251,8),(252,8),(253,8),(254,8),(255,8),(256,8),(257,8),(258,8),(259,8),(260,8),(261,8),(262,8),(263,8),(264,8),(265,9),(266,9),(267,9),(268,9),(269,9),(270,9),(271,9),(272,9),(273,9),(274,9),(275,9),(276,9),(277,9),(278,9),(279,9),(280,9),(281,9),(282,9),(283,9),(284,9),(285,9),(286,9),(287,9),(288,9),(289,9),(290,9),(291,9),(292,9),(293,9),(294,9),(295,9),(296,9),(297,9),(298,10),(299,10),(300,10),(301,10),(302,10),(303,10),(304,10),(305,10),(306,10),(307,10),(308,10),(309,10),(310,10),(311,10),(312,10),(313,10),(314,10),(315,10),(316,10),(317,10),(318,10),(319,10),(320,10),(321,10),(322,10),(323,10),(324,10),(325,10),(326,10),(327,10),(328,10),(329,10),(330,10),(331,11),(332,11),(333,11),(334,11),(335,11),(336,11),(337,11),(338,11),(339,11),(340,11),(341,11),(342,11),(343,11),(344,11),(345,11),(346,11),(347,11),(348,11),(349,11),(350,11),(351,11),(352,11),(353,11),(354,11),(355,11),(356,11),(357,11),(358,11),(359,11),(360,11),(361,11),(362,11),(363,11),(364,12),(365,12),(366,12),(367,12),(368,12),(369,12),(370,12),(371,12),(372,12),(373,12),(374,12),(375,12),(376,12),(377,12),(378,12),(379,12),(380,12),(381,12),(382,12),(383,12),(384,12),(385,12),(386,12),(387,12),(388,12),(389,12),(390,12),(391,12),(392,12),(393,12),(394,12),(395,12),(396,12),(397,13),(398,13),(399,13),(400,13),(401,13),(402,13),(403,13),(404,13),(405,13),(406,13),(407,13),(408,13),(409,13),(410,13),(411,13),(412,13),(413,13),(414,13),(415,13),(416,13),(417,13),(418,13),(419,13),(420,13),(421,13),(422,13),(423,13),(424,13),(425,13),(426,13),(427,13),(428,13),(429,13),(430,14),(431,14),(432,14),(433,14),(434,14),(435,14),(436,14),(437,14),(438,14),(439,14),(440,14),(441,14),(442,14),(443,14),(444,14),(445,14),(446,14),(447,14),(448,14),(449,14),(450,14),(451,14),(452,14),(453,14),(454,14),(455,14),(456,14),(457,14),(458,14),(459,14),(460,14),(461,14),(462,14),(463,15),(464,15),(465,15),(466,15),(467,15),(468,15),(469,15),(470,15),(471,15),(472,15),(473,15),(474,15),(475,15),(476,15),(477,15),(478,15),(479,15),(480,15),(481,15),(482,15),(483,15),(484,15),(485,15),(486,15),(487,15),(488,15),(489,15),(490,15),(491,15),(492,15),(493,15),(494,15),(495,15),(496,15),(497,15),(498,15),(499,15),(500,15),(518,16),(519,17),(520,18),(521,19),(522,20),(523,21),(524,22),(525,23),(526,24),(527,25),(528,26),(529,27),(532,30),(533,31),(534,32),(535,33),(536,34),(537,35),(538,36),(539,37),(541,39),(543,41),(544,42),(545,43),(546,44),(547,45),(548,46),(549,47),(550,48),(551,49),(553,51),(554,52),(556,54),(558,56),(559,57),(560,58),(561,59),(562,60),(563,61),(564,62),(565,63),(568,66),(569,67),(570,68),(572,70);
/*!40000 ALTER TABLE `regroupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rédige`
--

DROP TABLE IF EXISTS `rédige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rédige` (
  `ID_Personnel` int NOT NULL,
  `ID_Rapport` int NOT NULL,
  PRIMARY KEY (`ID_Personnel`,`ID_Rapport`),
  KEY `ID_Rapport` (`ID_Rapport`),
  CONSTRAINT `rédige_ibfk_1` FOREIGN KEY (`ID_Personnel`) REFERENCES `personnels` (`ID_Personnel`),
  CONSTRAINT `rédige_ibfk_2` FOREIGN KEY (`ID_Rapport`) REFERENCES `rapports` (`ID_Rapport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rédige`
--

LOCK TABLES `rédige` WRITE;
/*!40000 ALTER TABLE `rédige` DISABLE KEYS */;
INSERT INTO `rédige` VALUES (103,1),(104,2),(105,3),(106,4),(107,5),(108,6),(109,7),(110,8),(111,9),(112,10),(113,11),(114,12),(115,13),(116,14),(132,15);
/*!40000 ALTER TABLE `rédige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `région`
--

DROP TABLE IF EXISTS `région`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `région` (
  `ID_Région` varchar(50) NOT NULL,
  `Nom_région` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Région`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `région`
--

LOCK TABLES `région` WRITE;
/*!40000 ALTER TABLE `région` DISABLE KEYS */;
INSERT INTO `région` VALUES ('ARA','Auvergne-Rhône-Alpes'),('BFC','Bourgogne-Franche-Comté'),('BRE','Bretagne'),('CVL','Centre-Val de Loire'),('GES','Grand Est'),('HDF','Hauts-de-France'),('IDF','Île-de-France'),('NAQ','Nouvelle-Aquitaine'),('NOR','Normandie'),('OCC','Occitanie'),('PAC','Provence-Alpes-Côte d\'Azur'),('PDL','Pays de la Loire');
/*!40000 ALTER TABLE `région` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secteur`
--

DROP TABLE IF EXISTS `secteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secteur` (
  `ID_Secteur` int NOT NULL,
  `Nom_secteur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Secteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secteur`
--

LOCK TABLES `secteur` WRITE;
/*!40000 ALTER TABLE `secteur` DISABLE KEYS */;
INSERT INTO `secteur` VALUES (1,'Paris - Centre-ville'),(2,'Paris - Zone industrielle'),(3,'Paris - Résidentiel'),(4,'Paris - Périurbain'),(5,'Paris - Zone commerciale'),(6,'Bordeaux - Centre-ville'),(7,'Bordeaux - Zone industrielle'),(8,'Bordeaux - Résidentiel'),(9,'Bordeaux - Périurbain'),(10,'Bordeaux - Zone commerciale'),(11,'Toulouse - Centre-ville'),(12,'Toulouse - Zone industrielle'),(13,'Toulouse - Résidentiel'),(14,'Toulouse - Périurbain'),(15,'Toulouse - Zone commerciale'),(16,'Rennes - Centre-ville'),(17,'Rennes - Zone industrielle'),(18,'Rennes - Résidentiel'),(19,'Rennes - Périurbain'),(20,'Rennes - Zone commerciale'),(21,'Lyon - Centre-ville'),(22,'Lyon - Zone industrielle'),(23,'Lyon - Résidentiel'),(24,'Lyon - Périurbain'),(25,'Lyon - Zone commerciale'),(26,'Marseille - Centre-ville'),(27,'Marseille - Zone industrielle'),(28,'Marseille - Résidentiel'),(29,'Marseille - Périurbain'),(30,'Marseille - Zone commerciale'),(31,'Lille - Centre-ville'),(32,'Lille - Zone industrielle'),(33,'Lille - Résidentiel'),(34,'Lille - Périurbain'),(35,'Lille - Zone commerciale'),(36,'Rouen - Centre-ville'),(37,'Rouen - Zone industrielle'),(38,'Rouen - Résidentiel'),(39,'Rouen - Périurbain'),(40,'Rouen - Zone commerciale'),(41,'Nantes - Centre-ville'),(42,'Nantes - Zone industrielle'),(43,'Nantes - Résidentiel'),(44,'Nantes - Périurbain'),(45,'Nantes - Zone commerciale'),(46,'Strasbourg - Centre-ville'),(47,'Strasbourg - Zone industrielle'),(48,'Strasbourg - Résidentiel'),(49,'Strasbourg - Périurbain'),(50,'Strasbourg - Zone commerciale'),(51,'Orléans - Centre-ville'),(52,'Orléans - Zone industrielle'),(53,'Orléans - Résidentiel'),(54,'Orléans - Périurbain'),(55,'Orléans - Zone commerciale'),(56,'Dijon - Centre-ville'),(57,'Dijon - Zone industrielle'),(58,'Dijon - Résidentiel'),(59,'Dijon - Périurbain'),(60,'Dijon - Zone commerciale'),(61,'Limoges - Centre-ville'),(62,'Limoges - Zone industrielle'),(63,'Limoges - Résidentiel'),(64,'Limoges - Périurbain'),(65,'Limoges - Zone commerciale'),(66,'Montpellier - Centre-ville'),(67,'Montpellier - Zone industrielle'),(68,'Montpellier - Résidentiel'),(69,'Montpellier - Périurbain'),(70,'Montpellier - Zone commerciale'),(71,'Nice - Centre-ville'),(72,'Nice - Zone industrielle'),(73,'Nice - Résidentiel'),(74,'Nice - Périurbain'),(75,'Nice - Zone commerciale'),(76,'Paris - Quartier Latin'),(77,'Lyon - Croix-Rousse'),(78,'Marseille - Zone portuaire'),(79,'Toulouse - Rangueil'),(80,'Bordeaux - La Bastide'),(81,'Strasbourg - Neudorf'),(82,'Nantes - Île de Nantes'),(83,'Nice - Cimiez'),(84,'Montpellier - Port Marianne'),(85,'Rennes - Beaulieu'),(86,'Dijon - Université'),(87,'Limoges - La Bastide'),(88,'Rouen - Docks'),(89,'Orléans - La Source'),(90,'Lille - Wazemmes'),(91,'Marseille - La Joliette'),(92,'Paris - La Défense'),(93,'Bordeaux - Mérignac'),(94,'Toulouse - Purpan'),(95,'Rouen - Zone portuaire');
/*!40000 ALTER TABLE `secteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_gaz`
--

DROP TABLE IF EXISTS `type_gaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_gaz` (
  `id_type_gaz` int NOT NULL,
  `Nom_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_type_gaz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_gaz`
--

LOCK TABLES `type_gaz` WRITE;
/*!40000 ALTER TABLE `type_gaz` DISABLE KEYS */;
INSERT INTO `type_gaz` VALUES (1,'GES'),(2,'GESI');
/*!40000 ALTER TABLE `type_gaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ville` (
  `ID_Ville` int NOT NULL,
  `Nom_ville` varchar(50) DEFAULT NULL,
  `ID_Région` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Ville`),
  KEY `ID_Région` (`ID_Région`),
  CONSTRAINT `ville_ibfk_1` FOREIGN KEY (`ID_Région`) REFERENCES `région` (`ID_Région`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
INSERT INTO `ville` VALUES (1,'Paris','IDF'),(2,'Bordeaux','NAQ'),(3,'Toulouse','OCC'),(4,'Rennes','BRE'),(5,'Lyon','ARA'),(6,'Marseille','PAC'),(7,'Lille','HDF'),(8,'Rouen','NOR'),(9,'Nantes','PDL'),(10,'Strasbourg','GES'),(11,'Orléans','CVL'),(12,'Dijon','BFC'),(13,'Limoges','NAQ'),(14,'Montpellier','OCC'),(15,'Nice','PAC');
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-16 16:52:25

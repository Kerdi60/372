CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `istatistik`
--

DROP TABLE IF EXISTS `istatistik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `istatistik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OyuncuId` int DEFAULT NULL,
  `TakimId` int DEFAULT NULL,
  `Mac_sayisi` int DEFAULT NULL,
  `Mac_basina_sayi` float DEFAULT NULL,
  `Mac_basina_ribaund` float DEFAULT NULL,
  `Mac_basina_asist` float DEFAULT NULL,
  `Mac_basina_top_calma` float DEFAULT NULL,
  `Mac_basina_blok` float DEFAULT NULL,
  `Sezon` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_oyuncu_istatistik` (`OyuncuId`),
  KEY `fk_takim_istatistik` (`TakimId`),
  CONSTRAINT `fk_oyuncu_istatistik` FOREIGN KEY (`OyuncuId`) REFERENCES `oyuncu` (`OyuncuID`),
  CONSTRAINT `fk_takim_istatistik` FOREIGN KEY (`TakimId`) REFERENCES `takim` (`TakimID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `istatistik`
--

LOCK TABLES `istatistik` WRITE;
/*!40000 ALTER TABLE `istatistik` DISABLE KEYS */;
INSERT INTO `istatistik` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `istatistik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lig`
--

DROP TABLE IF EXISTS `lig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lig` (
  `LigID` int NOT NULL AUTO_INCREMENT,
  `Lig_ismi` varchar(45) NOT NULL,
  `Takım_sayısı` int NOT NULL,
  PRIMARY KEY (`LigID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lig`
--

LOCK TABLES `lig` WRITE;
/*!40000 ALTER TABLE `lig` DISABLE KEYS */;
INSERT INTO `lig` VALUES (1,'Kuzey',8),(2,'Güney',8);
/*!40000 ALTER TABLE `lig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mac`
--

DROP TABLE IF EXISTS `mac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mac` (
  `MacID` int NOT NULL AUTO_INCREMENT,
  `OynanmaTarihi` date NOT NULL,
  `Deplasman_takim` int NOT NULL,
  `Skor` varchar(45) DEFAULT NULL,
  `Evsahibi_takim` int NOT NULL,
  PRIMARY KEY (`MacID`),
  KEY `fk_maç_maç` (`Evsahibi_takim`),
  KEY `fk_maç_maç_maç` (`Deplasman_takim`),
  CONSTRAINT `fk_maç_maç` FOREIGN KEY (`Evsahibi_takim`) REFERENCES `takim` (`TakimID`),
  CONSTRAINT `fk_maç_maç_maç` FOREIGN KEY (`Deplasman_takim`) REFERENCES `takim` (`TakimID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mac`
--

LOCK TABLES `mac` WRITE;
/*!40000 ALTER TABLE `mac` DISABLE KEYS */;
INSERT INTO `mac` VALUES (1,'2009-05-13',2,'93-87',1),(2,'2013-07-21',1,'99-43',2);
/*!40000 ALTER TABLE `mac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mac_istatistik`
--

DROP TABLE IF EXISTS `mac_istatistik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mac_istatistik` (
  `Mac_id` int NOT NULL,
  `Sayi` int DEFAULT NULL,
  `Ribaund` int DEFAULT NULL,
  `Asist` int DEFAULT NULL,
  `Top_calma` int DEFAULT NULL,
  `Blok` int DEFAULT NULL,
  `OyuncuID` int DEFAULT NULL,
  KEY `fk_oyuncu_oyuncu_mac_istatistik` (`OyuncuID`),
  KEY `fk_mac_oyuncu_mac_istatistik` (`Mac_id`),
  CONSTRAINT `fk_mac_oyuncu_mac_istatistik` FOREIGN KEY (`Mac_id`) REFERENCES `mac` (`MacID`),
  CONSTRAINT `fk_oyuncu_oyuncu_mac_istatistik` FOREIGN KEY (`OyuncuID`) REFERENCES `oyuncu` (`OyuncuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mac_istatistik`
--

LOCK TABLES `mac_istatistik` WRITE;
/*!40000 ALTER TABLE `mac_istatistik` DISABLE KEYS */;
INSERT INTO `mac_istatistik` VALUES (1,0,0,0,0,0,1),(1,10,5,5,3,2,17);
/*!40000 ALTER TABLE `mac_istatistik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oyuncu`
--

DROP TABLE IF EXISTS `oyuncu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oyuncu` (
  `OyuncuID` int NOT NULL AUTO_INCREMENT,
  `isim` varchar(45) NOT NULL,
  `soy_isim` varchar(45) NOT NULL,
  `İKİLİK_ŞUT_YETENEĞİ` int NOT NULL,
  `ÜÇLÜK_ŞUT_YETENEĞİ` int NOT NULL,
  `Boy` int NOT NULL,
  `Yaş` int NOT NULL,
  `DIŞ_SAVUNMA` int NOT NULL,
  `İÇ_SAVUNMA` int NOT NULL,
  `SAVUNMA_RİBAUNDU` int NOT NULL,
  `HÜCUM_RİBAUNDU` int NOT NULL,
  `TakımID` int DEFAULT NULL,
  `PAS` int NOT NULL,
  PRIMARY KEY (`OyuncuID`),
  KEY `fk_takım_oyuncu` (`TakımID`),
  CONSTRAINT `fk_takım_oyuncu` FOREIGN KEY (`TakımID`) REFERENCES `takim` (`TakimID`),
  CONSTRAINT `chk_durumlar` CHECK ((`PAS` between 1 and 20)),
  CONSTRAINT `chk_hepsi` CHECK (((`HÜCUM_RİBAUNDU` between 1 and 20) and (`SAVUNMA_RİBAUNDU` between 1 and 20) and (`DIŞ_SAVUNMA` between 1 and 20) and (0 <> `İÇ_SAVUNMA`) and (`İKİLİK_ŞUT_YETENEĞİ` between 1 and 20) and (`ÜÇLÜK_ŞUT_YETENEĞİ` between 1 and 20)))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oyuncu`
--

LOCK TABLES `oyuncu` WRITE;
/*!40000 ALTER TABLE `oyuncu` DISABLE KEYS */;
INSERT INTO `oyuncu` VALUES (1,'Lebron','James',16,15,203,33,13,13,14,14,1,19),(2,'Cristiano','Ronaldo',14,16,183,37,7,6,5,5,1,17),(3,'Alperen','Şengün',18,12,211,21,10,16,15,18,1,16),(4,'Lionel','Messi',19,20,170,30,13,13,3,2,1,20),(5,'Kenan','Yıldız',3,3,150,49,2,1,1,1,1,3),(6,'Sururi','Say',12,17,200,18,16,9,8,6,1,14),(7,'Alex','john',15,7,217,34,10,18,12,12,1,10),(8,'Boris','Dio',13,13,203,31,14,14,11,8,1,12),(9,'Bronny','James',1,1,178,19,1,1,1,1,1,1),(10,'Onye','OKongu',20,10,222,27,18,20,20,20,1,10),(11,'Simis','Intkala',13,18,191,29,17,14,5,5,1,15),(12,'Vamos','Kalkala',15,15,201,25,15,15,15,15,2,15),(13,'Onur','Erdoğan',11,17,180,19,13,5,8,2,2,17),(14,'Thananis','Ante',19,11,205,27,15,16,13,11,2,9),(15,'Josh','Hart',13,14,180,30,11,7,18,19,2,10),(16,'Dia','Manka',17,4,220,21,9,19,17,17,2,3),(17,'Sabdu','Banga',17,5,218,22,10,15,14,13,2,7),(18,'Ralf','Ralgnick',11,16,190,29,15,13,8,11,2,14),(19,'Lavar','Ball',15,15,192,23,17,5,7,7,2,15),(20,'Musa','Cis',12,12,189,33,12,12,12,12,2,12),(21,'Franz','Wagner',16,16,200,31,13,13,11,9,2,15),(22,'Kabo','Kabo',5,5,233,40,20,20,5,5,2,3),(23,'Adam','Hanga',7,15,185,35,11,4,3,2,2,15),(24,'Carlos','Vini',10,10,197,18,8,8,11,11,2,20),(25,'Donald','Biden',13,7,221,23,9,17,15,12,3,7),(26,'Joe','Trump',7,13,184,26,17,9,12,15,3,7),(27,'Barack','White',17,19,195,31,18,15,14,13,3,17),(28,'Dereck','Obama',15,20,189,34,18,12,6,7,3,19),(29,'Alex','Mckirmish',13,12,202,19,17,17,11,12,3,10),(30,'Assana','Buande',15,3,214,25,4,16,15,15,3,12),(31,'Southnes','Abdi',13,14,199,25,9,9,7,8,3,16),(32,'Baba','Ganda',5,5,156,31,4,2,1,1,3,7),(33,'Simin','Ossane',16,11,183,32,13,6,4,3,3,15),(34,'Victor','Osimhen',11,11,197,37,11,11,11,11,3,8),(35,'Alp','Kaplan',12,4,210,29,5,11,12,12,3,9),(36,'Hideo','Kojima',7,13,190,30,10,4,3,3,3,12),(37,'Aslan','Kul',13,12,198,23,8,8,7,9,3,8),(38,'Kutay','Yanık',15,16,200,25,18,18,11,11,4,12),(39,'Carol','Pasha',16,15,205,21,18,18,15,15,4,17),(40,'Sabo','Pasha',14,17,206,19,15,17,14,13,4,17),(41,'Steven','Farioli',11,11,180,20,12,5,4,3,4,18),(42,'Kangan','Hunbe',9,14,183,24,14,7,3,2,4,14),(43,'Komidi','Pef',14,6,214,18,4,13,15,11,4,5),(44,'Saka','Bukayo',7,12,190,31,8,9,10,10,4,11),(45,'Mauro','Nara',8,15,193,30,14,1,1,2,4,15),(46,'Oğuz','Kaan',9,13,188,29,12,4,6,6,4,13),(47,'Jake','Paul',11,12,180,23,7,3,3,4,4,12),(48,'Samar','Sika',15,15,200,24,7,7,7,7,4,11),(49,'Fil','Necati',12,5,215,30,11,13,17,16,4,7),(50,'Wesley','So',12,4,222,29,10,13,9,6,4,8),(51,'Magnus','Carlsen',11,18,181,18,19,11,4,4,5,10),(52,'Mr','P',20,10,235,18,8,15,19,17,5,6),(53,'Carl','Spin',14,14,203,19,14,14,14,14,5,14),(54,'Melodie','Drake',13,16,175,19,15,12,10,8,5,17),(55,'Apoth','Bo',15,11,205,20,11,13,13,11,5,9),(56,'Yosaf','Abdul',15,3,214,20,8,16,13,14,5,11),(57,'Kosman','Dembele',11,14,190,21,13,6,4,8,5,13),(58,'Goege','Goef',10,3,210,30,3,12,10,9,5,3),(59,'Colt','Shell',11,12,207,30,10,12,11,14,5,10),(60,'Nita','Bully',8,8,203,31,8,8,8,8,5,8),(61,'Max','Rico',5,13,190,32,9,5,3,2,5,11),(62,'Kolos','Tolros',3,3,200,25,17,18,3,3,5,4),(63,'Akif','Demir',8,7,185,26,6,7,2,5,5,15),(64,'Gökrem','Coşgun',13,15,201,25,16,16,11,10,6,14),(65,'Defne','Samyeli',13,11,207,18,10,10,13,14,6,15),(66,'Alango','Sangare',7,14,191,25,13,7,7,4,6,12),(67,'Kupasto','Felek',8,14,186,25,11,9,4,4,6,17),(68,'Kevin','Durant',12,11,195,26,11,10,11,10,6,9),(69,'Russel','Westbrook',18,9,225,26,9,20,20,20,6,20),(70,'Lewis','Hamilton',13,12,197,29,12,13,9,7,6,8),(71,'Dodos','Kulras',6,10,175,24,10,1,1,1,6,14),(72,'Patrick','Mahomes',7,4,180,30,10,5,4,3,6,20),(73,'Kevin','Alcaraz',10,5,191,36,7,8,9,10,6,5),(74,'Dimitris','Diamantidis',11,6,214,37,6,11,13,13,6,6),(75,'Sagopa','Kajj',12,4,219,24,9,12,10,11,6,5),(76,'Kemal','Sunal',20,20,204,40,20,20,20,20,7,20),(77,'Emre','Fel',10,16,190,34,13,10,9,9,7,16),(78,'Pimos','Quer',9,14,188,36,12,9,11,11,7,17),(79,'Nolnosno','Tokjoru',16,1,215,32,13,15,14,15,7,12),(80,'Gedson','Fernandez',13,13,206,33,13,13,13,13,7,6),(81,'Arkansas','Dodo',13,5,222,36,7,16,17,13,7,5),(82,'Gorozlich','Maslima',4,15,182,33,11,4,5,4,7,16),(83,'Fopl','Dollo',10,3,209,33,9,12,8,8,7,8),(84,'Semerdo','Weres',10,10,200,32,10,10,10,10,7,10),(85,'Yassine','Julolo',14,14,189,18,5,5,4,3,7,7),(86,'Şakir','Ahmet',7,12,177,19,3,4,5,6,7,14),(87,'Demertis','Andone',5,3,160,21,1,1,1,1,7,10),(88,'Afol','Gaffar',11,15,199,30,15,15,10,8,7,4),(89,'Abdülrezzak','Abdür',20,20,170,18,5,5,3,2,8,13),(90,'Abidin','Kammali',13,19,188,19,16,11,13,6,8,17),(91,'Donsq','Wersaf',13,13,193,20,9,12,7,9,8,15),(92,'Pilav','Reis',13,13,201,24,13,13,13,13,8,13),(93,'Testo','Taylan',16,3,231,25,5,17,11,11,8,3),(94,'Kadir','Hoca',15,15,207,25,13,16,14,14,8,12),(95,'Jonathan','Jotaro',11,10,199,26,17,17,13,15,8,9),(96,'Anna','Vanna',3,11,166,27,5,1,2,1,8,14),(97,'Jimmy','Johnson',11,11,201,28,11,11,11,11,8,11),(98,'Son','Ming',13,16,197,29,12,12,8,11,8,10),(99,'Kada','Kadnafa',13,6,218,30,6,15,14,14,8,15),(100,'Muhammed','Kaddafi',20,20,190,33,10,12,7,8,8,5);
/*!40000 ALTER TABLE `oyuncu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pozisyon`
--

DROP TABLE IF EXISTS `pozisyon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pozisyon` (
  `PozisyonID` int NOT NULL AUTO_INCREMENT,
  `OyuncuID` int NOT NULL,
  `Pozisyon` varchar(45) NOT NULL,
  PRIMARY KEY (`PozisyonID`),
  KEY `fk_oyuncu_pozisyon` (`OyuncuID`),
  CONSTRAINT `fk_oyuncu_pozisyon` FOREIGN KEY (`OyuncuID`) REFERENCES `oyuncu` (`OyuncuID`),
  CONSTRAINT `chk_durum` CHECK ((`Pozisyon` in (_utf8mb4'gard',_utf8mb4'forvet',_utf8mb4'pivot')))
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozisyon`
--

LOCK TABLES `pozisyon` WRITE;
/*!40000 ALTER TABLE `pozisyon` DISABLE KEYS */;
INSERT INTO `pozisyon` VALUES (1,1,'gard'),(2,1,'forvet'),(3,1,'pivot'),(4,2,'gard'),(5,4,'gard'),(6,5,'gard'),(7,3,'pivot'),(8,6,'forvet'),(9,7,'pivot'),(10,8,'forvet'),(11,9,'gard'),(12,10,'pivot'),(13,11,'gard'),(14,12,'forvet'),(15,13,'gard'),(16,14,'forvet'),(17,15,'gard'),(18,16,'pivot'),(19,17,'pivot'),(20,18,'gard'),(21,19,'gard'),(22,20,'gard'),(23,21,'forvet'),(24,22,'pivot'),(25,23,'gard'),(26,24,'forvet'),(27,25,'pivot'),(28,26,'gard'),(29,27,'forvet'),(30,28,'gard'),(31,29,'forvet'),(32,30,'pivot'),(33,31,'forvet'),(34,32,'gard'),(35,33,'gard'),(36,34,'forvet'),(37,35,'pivot'),(38,36,'gard'),(39,37,'forvet'),(40,38,'forvet'),(41,39,'forvet'),(42,40,'forvet'),(43,41,'gard'),(44,42,'gard'),(45,43,'pivot'),(46,44,'gard'),(47,45,'gard'),(48,46,'gard'),(49,47,'gard'),(50,48,'forvet'),(51,49,'pivot'),(52,50,'pivot'),(53,51,'gard'),(54,52,'pivot'),(55,53,'forvet'),(56,54,'gard'),(57,55,'forvet'),(58,56,'pivot'),(59,57,'gard'),(60,58,'pivot'),(61,59,'pivot'),(62,60,'forvet'),(63,61,'gard'),(64,62,'forvet'),(65,63,'gard'),(66,64,'forvet'),(67,65,'pivot'),(68,66,'gard'),(69,67,'gard'),(70,68,'forvet'),(71,69,'pivot'),(72,70,'forvet'),(73,71,'gard'),(74,72,'gard'),(75,73,'gard'),(76,74,'pivot'),(77,75,'pivot'),(78,76,'forvet'),(79,77,'gard'),(80,78,'gard'),(81,79,'pivot'),(82,80,'forvet'),(83,81,'pivot'),(84,82,'gard'),(85,83,'pivot'),(86,84,'forvet'),(87,85,'gard'),(88,86,'gard'),(89,87,'gard'),(90,88,'forvet'),(91,89,'gard'),(92,90,'gard'),(93,91,'gard'),(94,92,'forvet'),(95,93,'pivot'),(96,94,'forvet'),(97,95,'forvet'),(98,96,'gard'),(99,97,'forvet'),(100,98,'forvet'),(101,99,'pivot'),(102,100,'gard'),(103,6,'gard'),(104,11,'forvet'),(105,8,'gard'),(106,12,'gard'),(107,12,'pivot'),(108,14,'pivot'),(109,19,'forvet'),(110,20,'forvet'),(111,21,'gard'),(112,24,'gard'),(113,27,'gard'),(114,27,'pivot'),(115,28,'forvet'),(116,29,'pivot'),(117,31,'gard'),(118,39,'gard'),(119,39,'pivot'),(120,40,'gard'),(121,40,'pivot'),(122,49,'forvet'),(123,38,'gard'),(124,53,'gard'),(125,53,'pivot'),(126,55,'pivot'),(127,59,'forvet'),(128,64,'gard'),(129,65,'forvet'),(130,69,'forvet'),(131,73,'forvet'),(132,76,'gard'),(133,76,'pivot'),(134,77,'forvet'),(135,78,'forvet'),(136,80,'pivot'),(137,88,'gard'),(138,90,'forvet'),(139,92,'gard'),(140,94,'gard'),(141,94,'pivot'),(142,95,'pivot'),(143,97,'gard'),(144,98,'gard'),(145,99,'forvet');
/*!40000 ALTER TABLE `pozisyon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sozlesme`
--

DROP TABLE IF EXISTS `sozlesme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sozlesme` (
  `SozlesmeID` int NOT NULL AUTO_INCREMENT,
  `OyuncuID` int NOT NULL,
  `Ucret` int NOT NULL,
  `Başlangic_Tarihi` date NOT NULL,
  `Bitis_Tarihi` date DEFAULT NULL,
  PRIMARY KEY (`SozlesmeID`),
  KEY `fk_oyuncu_sözleşme` (`OyuncuID`),
  CONSTRAINT `fk_oyuncu_sözleşme` FOREIGN KEY (`OyuncuID`) REFERENCES `oyuncu` (`OyuncuID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sozlesme`
--

LOCK TABLES `sozlesme` WRITE;
/*!40000 ALTER TABLE `sozlesme` DISABLE KEYS */;
INSERT INTO `sozlesme` VALUES (1,1,500,'2007-09-11','2009-11-15'),(2,1,750,'2009-11-15',NULL),(3,2,313,'2000-12-03',NULL),(4,3,400,'2006-10-25',NULL),(5,4,1500,'2003-03-29',NULL),(6,5,1000,'2024-07-29',NULL),(7,6,1000,'2024-07-29',NULL),(8,7,1000,'2024-07-29',NULL),(9,8,1000,'2024-07-29',NULL),(10,9,1000,'2024-07-29',NULL),(11,10,1000,'2024-07-29',NULL),(12,11,1000,'2024-07-29',NULL),(13,12,1000,'2024-07-29',NULL),(14,13,1000,'2024-07-29',NULL),(15,14,1000,'2024-07-29',NULL),(16,15,1000,'2024-07-29',NULL),(17,16,1000,'2024-07-29',NULL),(18,17,1000,'2024-07-29',NULL),(19,18,1000,'2024-07-29',NULL),(20,19,1000,'2024-07-29',NULL),(21,20,1000,'2024-07-29',NULL),(22,21,1000,'2024-07-29',NULL),(23,22,1000,'2024-07-29',NULL),(24,23,1000,'2024-07-29',NULL),(25,24,1000,'2024-07-29',NULL),(26,25,1000,'2024-07-29',NULL),(27,26,1000,'2024-07-29',NULL),(28,27,1000,'2024-07-29',NULL),(29,28,1000,'2024-07-29',NULL),(30,29,1000,'2024-07-29',NULL),(31,30,1000,'2024-07-29',NULL),(32,31,1000,'2024-07-29',NULL),(33,32,1000,'2024-07-29',NULL),(34,33,1000,'2024-07-29',NULL),(35,34,1000,'2024-07-29',NULL),(36,35,1000,'2024-07-29',NULL),(37,36,1000,'2024-07-29',NULL),(38,37,1000,'2024-07-29',NULL),(39,38,1000,'2024-07-29',NULL),(40,39,1000,'2024-07-29',NULL),(41,40,1000,'2024-07-29',NULL),(42,41,1000,'2024-07-29',NULL),(43,42,1000,'2024-07-29',NULL),(44,43,1000,'2024-07-29',NULL),(45,44,1000,'2024-07-29',NULL),(46,45,1000,'2024-07-29',NULL),(47,46,1000,'2024-07-29',NULL),(48,47,1000,'2024-07-29',NULL),(49,48,1000,'2024-07-29',NULL),(50,49,1000,'2024-07-29',NULL),(51,50,1000,'2024-07-29',NULL),(52,51,1000,'2024-07-29',NULL),(53,52,1000,'2024-07-29',NULL),(54,53,1000,'2024-07-29',NULL),(55,54,1000,'2024-07-29',NULL),(56,55,1000,'2024-07-29',NULL),(57,56,1000,'2024-07-29',NULL),(58,57,1000,'2024-07-29',NULL),(59,58,1000,'2024-07-29',NULL),(60,59,1000,'2024-07-29',NULL),(61,60,1000,'2024-07-29',NULL),(62,61,1000,'2024-07-29',NULL),(63,62,1000,'2024-07-29',NULL),(64,63,1000,'2024-07-29',NULL),(65,64,1000,'2024-07-29',NULL),(66,65,1000,'2024-07-29',NULL),(67,66,1000,'2024-07-29',NULL),(68,67,1000,'2024-07-29',NULL),(69,68,1000,'2024-07-29',NULL),(70,69,1000,'2024-07-29',NULL),(71,70,1000,'2024-07-29',NULL),(72,71,1000,'2024-07-29',NULL),(73,72,1000,'2024-07-29',NULL),(74,73,1000,'2024-07-29',NULL),(75,74,1000,'2024-07-29',NULL),(76,75,1000,'2024-07-29',NULL),(77,76,1000,'2024-07-29',NULL),(78,77,1000,'2024-07-29',NULL),(79,78,1000,'2024-07-29',NULL),(80,79,1000,'2024-07-29',NULL),(81,80,1000,'2024-07-29',NULL),(82,81,1000,'2024-07-29',NULL),(83,82,1000,'2024-07-29',NULL),(84,83,1000,'2024-07-29',NULL),(85,84,1000,'2024-07-29',NULL),(86,85,1000,'2024-07-29',NULL),(87,86,1000,'2024-07-29',NULL),(88,87,1000,'2024-07-29',NULL),(89,88,1000,'2024-07-29',NULL),(90,89,1000,'2024-07-29',NULL),(91,90,1000,'2024-07-29',NULL),(92,91,1000,'2024-07-29',NULL),(93,92,1000,'2024-07-29',NULL),(94,93,1000,'2024-07-29',NULL),(95,94,1000,'2024-07-29',NULL),(96,95,1000,'2024-07-29',NULL),(97,96,1000,'2024-07-29',NULL),(98,97,1000,'2024-07-29',NULL),(99,98,1000,'2024-07-29',NULL),(100,99,1000,'2024-07-29',NULL),(101,100,1000,'2024-07-29',NULL);
/*!40000 ALTER TABLE `sozlesme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `SponsorID` int NOT NULL AUTO_INCREMENT,
  `Sponsor_ismi` varchar(45) NOT NULL,
  PRIMARY KEY (`SponsorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'Metın'),(2,'Alı'),(3,'Feyyaz'),(4,'Mark Zuckerberg'),(5,'Ben Tennyson'),(6,'Lex Luthor'),(7,'Ali Ağaoğlu'),(8,'Kerem Kazandır'),(9,'Harambe'),(10,'TOBB');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsorluk`
--

DROP TABLE IF EXISTS `sponsorluk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsorluk` (
  `SponsorlukID` int NOT NULL AUTO_INCREMENT,
  `TakımID` int NOT NULL,
  `SponsorID` int NOT NULL,
  `Başlangıc_tarihi` date NOT NULL,
  `Bitis_tarihi` date DEFAULT NULL,
  PRIMARY KEY (`SponsorlukID`),
  KEY `fk_takım_sponsorluk` (`TakımID`),
  KEY `fk_sponsor_sponsorluk` (`SponsorID`),
  CONSTRAINT `fk_sponsor_sponsorluk` FOREIGN KEY (`SponsorID`) REFERENCES `sponsor` (`SponsorID`),
  CONSTRAINT `fk_takım_sponsorluk` FOREIGN KEY (`TakımID`) REFERENCES `takim` (`TakimID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorluk`
--

LOCK TABLES `sponsorluk` WRITE;
/*!40000 ALTER TABLE `sponsorluk` DISABLE KEYS */;
INSERT INTO `sponsorluk` VALUES (1,1,1,'2000-10-10',NULL),(2,2,1,'2011-01-01','2012-12-31'),(3,1,2,'2009-03-07',NULL),(4,2,3,'2000-12-12',NULL),(5,2,3,'2009-11-28','2010-04-16'),(6,8,4,'2024-07-28',NULL),(7,6,9,'2024-07-28',NULL),(8,6,8,'2024-07-28',NULL),(9,8,10,'2024-07-28',NULL),(10,3,6,'2024-07-28',NULL),(11,4,9,'2024-07-28',NULL),(12,5,8,'2024-07-28',NULL),(13,7,5,'2024-07-28',NULL),(14,7,9,'2024-07-28',NULL),(15,5,10,'2024-07-28',NULL),(16,3,7,'2024-07-28',NULL),(17,4,8,'2024-07-28',NULL),(18,1,4,'2024-07-28',NULL),(19,2,5,'2024-07-28',NULL);
/*!40000 ALTER TABLE `sponsorluk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadyum`
--

DROP TABLE IF EXISTS `stadyum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadyum` (
  `StadyumID` int NOT NULL AUTO_INCREMENT,
  `stadyum_ismi` varchar(45) NOT NULL,
  `Bulunduğu_şehir` varchar(45) NOT NULL,
  `TakımID` int NOT NULL,
  PRIMARY KEY (`StadyumID`),
  KEY `fk_takım_stadyum` (`TakımID`),
  CONSTRAINT `fk_takım_stadyum` FOREIGN KEY (`TakımID`) REFERENCES `takim` (`TakimID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadyum`
--

LOCK TABLES `stadyum` WRITE;
/*!40000 ALTER TABLE `stadyum` DISABLE KEYS */;
INSERT INTO `stadyum` VALUES (1,'Vodafone','Erbaa',1),(2,'Timsah','Konya',2),(3,'Oscar','Pekin',3),(4,'Bomba','Şam',4),(5,'Ice Latte','Kuzey Bağdat',5),(6,'Mandela','Elon',6),(7,'Amir Khan','Delhi',7),(8,'Reptilian','Underground',8);
/*!40000 ALTER TABLE `stadyum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takim`
--

DROP TABLE IF EXISTS `takim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takim` (
  `TakimID` int NOT NULL AUTO_INCREMENT,
  `Takim_ismi` varchar(45) NOT NULL,
  `LigID` int NOT NULL,
  `Sehir` varchar(45) NOT NULL,
  PRIMARY KEY (`TakimID`),
  KEY `fk_lig_takım` (`LigID`),
  CONSTRAINT `fk_lig_takım` FOREIGN KEY (`LigID`) REFERENCES `lig` (`LigID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takim`
--

LOCK TABLES `takim` WRITE;
/*!40000 ALTER TABLE `takim` DISABLE KEYS */;
INSERT INTO `takim` VALUES (1,'Erbaaspor',1,'Tokat'),(2,'Ayısporr',1,'Konya'),(3,'Xi jinping',1,'Çin'),(4,'Kaplanspor',1,'Şam'),(5,'Kahveland',2,'Bağdat'),(6,'Afrikaspor',2,'Cape Town'),(7,'Filspor',2,'Delhi'),(8,'Silikon Vadisi',2,'Roma');
/*!40000 ALTER TABLE `takim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teknikdirektor`
--

DROP TABLE IF EXISTS `teknikdirektor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teknikdirektor` (
  `TeknikDirektorID` int NOT NULL AUTO_INCREMENT,
  `isim` varchar(45) NOT NULL,
  `soyisim` varchar(45) NOT NULL,
  `TakimID` int NOT NULL,
  PRIMARY KEY (`TeknikDirektorID`),
  KEY `fk_takım_td` (`TakimID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teknikdirektor`
--

LOCK TABLES `teknikdirektor` WRITE;
/*!40000 ALTER TABLE `teknikdirektor` DISABLE KEYS */;
INSERT INTO `teknikdirektor` VALUES (1,'Aykut','Kocaman',2),(2,'Fatih','Terim',1),(3,'Kolo','Muani',7),(4,'Yusuf','Çoban',6),(5,'Mehmet','İspirli',5),(6,'Mao','Zedong',3),(7,'King','Simba',4),(8,'Bill','Gates',8);
/*!40000 ALTER TABLE `teknikdirektor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `TransferID` int NOT NULL,
  `OyuncuID` int NOT NULL,
  `TeknikDirektörID` int NOT NULL,
  `Tarih` date NOT NULL,
  PRIMARY KEY (`TransferID`),
  KEY `fk_oyuncu_transfer` (`OyuncuID`),
  KEY `fk_td_transfer` (`TeknikDirektörID`),
  CONSTRAINT `fk_oyuncu_transfer` FOREIGN KEY (`OyuncuID`) REFERENCES `oyuncu` (`OyuncuID`),
  CONSTRAINT `fk_td_transfer` FOREIGN KEY (`TeknikDirektörID`) REFERENCES `teknikdirektor` (`TeknikDirektorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
INSERT INTO `transfer` VALUES (1,1,2,'2009-11-15');
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-24  1:21:08

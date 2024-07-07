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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lig`
--

LOCK TABLES `lig` WRITE;
/*!40000 ALTER TABLE `lig` DISABLE KEYS */;
INSERT INTO `lig` VALUES (1,'Çin',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oyuncu`
--

LOCK TABLES `oyuncu` WRITE;
/*!40000 ALTER TABLE `oyuncu` DISABLE KEYS */;
INSERT INTO `oyuncu` VALUES (1,'Lebron','James',16,15,203,33,13,13,14,14,2,19),(2,'Cristiano','Ronaldo',14,16,183,37,7,6,5,5,2,17),(3,'Alperen','Şengün',18,12,211,21,10,16,15,18,1,16),(4,'Lionel','Messi',19,20,170,30,13,13,3,2,1,20),(5,'Kenan','Yıldız',3,3,150,49,2,1,1,1,NULL,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozisyon`
--

LOCK TABLES `pozisyon` WRITE;
/*!40000 ALTER TABLE `pozisyon` DISABLE KEYS */;
INSERT INTO `pozisyon` VALUES (1,1,'gard'),(2,1,'forvet'),(3,1,'pivot'),(4,2,'gard'),(5,4,'gard'),(6,5,'gard'),(7,3,'pivot');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sozlesme`
--

LOCK TABLES `sozlesme` WRITE;
/*!40000 ALTER TABLE `sozlesme` DISABLE KEYS */;
INSERT INTO `sozlesme` VALUES (1,1,500,'2007-09-11','2009-11-15'),(2,1,750,'2009-11-15',NULL),(3,2,313,'2000-12-03',NULL),(4,3,400,'2006-10-25',NULL),(5,4,1500,'2003-03-29',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'Metın'),(2,'Alı'),(3,'Feyyaz');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsorluk`
--

LOCK TABLES `sponsorluk` WRITE;
/*!40000 ALTER TABLE `sponsorluk` DISABLE KEYS */;
INSERT INTO `sponsorluk` VALUES (1,1,1,'2000-10-10',NULL),(2,2,1,'2011-01-01','2012-12-31'),(3,1,2,'2009-03-07',NULL),(4,2,3,'2000-12-12',NULL),(5,2,3,'2009-11-28','2010-04-16');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadyum`
--

LOCK TABLES `stadyum` WRITE;
/*!40000 ALTER TABLE `stadyum` DISABLE KEYS */;
INSERT INTO `stadyum` VALUES (1,'Vodafone','Erbaa',1),(2,'Timsah','Konya',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takim`
--

LOCK TABLES `takim` WRITE;
/*!40000 ALTER TABLE `takim` DISABLE KEYS */;
INSERT INTO `takim` VALUES (1,'Erbaaspor',1,'Tokat'),(2,'Konyaspor',1,'Konya');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teknikdirektor`
--

LOCK TABLES `teknikdirektor` WRITE;
/*!40000 ALTER TABLE `teknikdirektor` DISABLE KEYS */;
INSERT INTO `teknikdirektor` VALUES (1,'Aykut','Kocaman',2),(2,'Fatih','Terim',1);
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

-- Dump completed on 2024-07-07 23:05:12

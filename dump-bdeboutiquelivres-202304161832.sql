-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bdeboutiquelivres
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `idCategorie` varchar(20) NOT NULL,
  `libelleCatg` varchar(60) NOT NULL,
  `descriptionCatg` varchar(250) NOT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('eco123','Economique','livres d\'economie'),('hist123','Histoire','livres d\'histoire'),('litt123','Litterature','livres de litterature'),('philos123','Philosophie','livres de Philosophie');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `dateNaissance` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'TestNom','TestPrenom','admin','admin@gmail.com','TestAdresse','5145551234','F','01/01/2001'),(2,'test1','test1','123','tst@gmail.com','h1w','5142222222','femme','01/01/1998'),(3,'gg','gg','123','ggjg@ghj.kk','ff','1231231234','homme','01/01/1101'),(4,'rr','rr','124','fd@jhgjh.v','tt','1231234567','homme','02/02/2021');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `commandes` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `dateCommande` date DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  `idLivre` varchar(20) NOT NULL,
  PRIMARY KEY (`idCommande`),
  KEY `idClient` (`idClient`),
  KEY `idLivre` (`idLivre`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`),
  CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`idLivre`) REFERENCES `livres` (`idLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailscommades`
--

DROP TABLE IF EXISTS `detailscommades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailscommades` (
  `quantite` int(11) NOT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `idCommande` int(11) NOT NULL,
  `idLivre` varchar(20) NOT NULL,
  KEY `idCommande` (`idCommande`),
  KEY `idLivre` (`idLivre`),
  CONSTRAINT `detailscommades_ibfk_1` FOREIGN KEY (`idCommande`) REFERENCES `commandes` (`idCommande`),
  CONSTRAINT `detailscommades_ibfk_2` FOREIGN KEY (`idLivre`) REFERENCES `livres` (`idLivre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailscommades`
--

LOCK TABLES `detailscommades` WRITE;
/*!40000 ALTER TABLE `detailscommades` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailscommades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livres`
--

DROP TABLE IF EXISTS `livres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livres` (
  `idLivre` varchar(20) NOT NULL,
  `libelleProd` varchar(60) NOT NULL,
  `descriptionProduit` varchar(250) NOT NULL,
  `marque` varchar(200) DEFAULT NULL,
  `prix` decimal(10,2) NOT NULL,
  `dateParution` varchar(20) DEFAULT NULL,
  `imageLivre` varchar(255) DEFAULT NULL,
  `idCategorie` varchar(20) NOT NULL,
  PRIMARY KEY (`idLivre`),
  KEY `idCategorie` (`idCategorie`),
  CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `categories` (`idCategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livres`
--

LOCK TABLES `livres` WRITE;
/*!40000 ALTER TABLE `livres` DISABLE KEYS */;
INSERT INTO `livres` VALUES ('brn123','Burn','Livre Burn','sans',20.50,'02/02/2002','burn.webp','philos123'),('bzrk123','Bzrk','Livre Bzrk','sans',15.00,'16/04/1999','bzrk.webp','philos123'),('circe123','Circe','Livre Circe','sans',30.50,'30/09/2019','circe.webp','hist123'),('cold123','Cold','Livre Cold','sans',34.50,'02/09/2010','cold.webp','litt123'),('demise123','Demise','Livre Demise','sans',48.50,'07/02/1945','demise.webp','eco123'),('find123','Find','Livre Find','sans',32.50,'02/11/2010','find.webp','litt123'),('fiveY123','FiveYear','Livre FiveYear','sans',38.50,'08/10/2013','fiveYear.webp','hist123'),('horde123','Horde','Livre Horde','sans',40.50,'02/05/1985','horde.webp','philos123'),('lum123','Luminosity','Livre Luminosity','sans',35.50,'21/05/1985','luminosity.webp','hist123'),('mer123','Meridian','Livre Meridian','sans',30.50,'02/08/1985','meridian.webp','eco123'),('pawn123','Pawn','Livre Pawn','sans',90.50,'02/05/2022','pawn.webp','litt123'),('people123','People','Livre People','sans',67.50,'14/05/2004','people.webp','philos123'),('rebel123','Rebel','Livre Rebel','sans',35.50,'02/07/1965','rebel.webp','eco123'),('scot123','ScottCard','Livre scottCard','sans',16.50,'02/05/1983','scottCard.webp','hist123'),('scy123','Scythe','Livre Scythe','sans',10.50,'24/05/1985','scythe.webp','philos123'),('taylor123','Taylor','Livre Taylor','sans',55.50,'13/07/2005','taylor.webp','litt123');
/*!40000 ALTER TABLE `livres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bdeboutiquelivres'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16 18:32:43

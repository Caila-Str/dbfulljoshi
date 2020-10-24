-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tabela_de_pedidos
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Dumping events for database 'tabela_de_pedidos'
--

--
-- Dumping routines for database 'tabela_de_pedidos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 16:43:32
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fulljoshi
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idgeneros` int NOT NULL AUTO_INCREMENT,
  `categorias` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(230) DEFAULT NULL,
  `data_inclusao` datetime DEFAULT NULL,
  PRIMARY KEY (`idgeneros`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'josei','Game',40.00,40.00,'/Imagens/game.jpg',NULL),(2,'josei','Kimi no todoke',40.00,40.00,'/Imagens/kimi.jpg',NULL),(3,'josei','The Wedding Eve',40.00,40.00,'/Imagens/josei.jpg',NULL),(4,'Shounen','Jojo bizarre adventure',40.00,40.00,'/Imagens/jojo.jpg',NULL),(5,'Shounen','Naruto Shippuden',40.00,40.00,'/Imagens/naruto.jpg',NULL),(6,'Shounen','Coleção de DragonBall',40.00,40.00,'/Imagens/goku.jpg',NULL),(7,'Shounen','My hero academia',40.00,40.00,'/Imagens/my.jpg',NULL),(8,'Seinen','Kimetsu no Yaiba',40.00,40.00,'/Imagens/no%20iaba.jpg',NULL),(9,'Seinen','The Promised Nerveland',40.00,40.00,'/Imagens/nev.jpg',NULL),(10,'Shoujo','O maestro',40.00,40.00,'/Imagens/omaestro.jpg',NULL),(11,'Shoujo','Banana Fish',40.00,40.00,'/Imagens/fishi.jpg',NULL),(12,'Shoujo','Furi Fura',40.00,40.00,'/Imagens/furi.jpg',NULL),(13,'Yaoi','Boys Loves',40.00,40.00,'/Imagens/love.jpg',NULL),(14,'Yaoi','Given',40.00,40.00,'/Projeto/Imagens/given.jpg',NULL),(15,'Yaoi','Wotaki',40.00,40.00,'/Imagens/wotaki.webp',NULL);
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela de pedidos`
--

DROP TABLE IF EXISTS `tabela de pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela de pedidos` (
  `idpedidos` int NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `produto` varchar(45) NOT NULL,
  `valor unitario` decimal(8,5) NOT NULL,
  `quantidade` decimal(8,5) NOT NULL,
  PRIMARY KEY (`idpedidos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela de pedidos`
--

LOCK TABLES `tabela de pedidos` WRITE;
/*!40000 ALTER TABLE `tabela de pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabela de pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fulljoshi'
--

--
-- Dumping routines for database 'fulljoshi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-24 16:43:32

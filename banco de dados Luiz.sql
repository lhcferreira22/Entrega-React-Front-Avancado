-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `id_pedidos` int NOT NULL,
  PRIMARY KEY (`id_cliente`,`id_pedidos`),
  KEY `id_pedido_idx` (`id_pedidos`),
  CONSTRAINT `id_pedidos` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos` (`id_pedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (31,'','','2020-10-27 21:24:53'),(32,'','','2020-10-27 21:24:54'),(33,'','','2020-10-27 21:24:54'),(34,'','','2020-10-27 21:24:55'),(35,'','','2020-10-27 21:24:55'),(36,'','','2020-10-27 21:24:55'),(37,'','','2020-10-27 21:24:55'),(38,'','','2020-10-27 21:24:56'),(39,'','','2020-10-27 21:24:56'),(40,'','','2020-10-27 21:24:56'),(41,'','','2020-10-27 21:24:56'),(42,'','','2020-10-27 21:24:57'),(43,'','','2020-10-27 21:24:59'),(44,'','','2020-10-27 21:25:00'),(45,'','','2020-10-27 21:25:00');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `idcontato` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `senha` varchar(8) NOT NULL,
  PRIMARY KEY (`idcontato`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedidos` int NOT NULL AUTO_INCREMENT,
  `nomecliente` varchar(60) NOT NULL,
  `logradouro` varchar(120) NOT NULL,
  `telefone` int NOT NULL,
  `nomeproduto` varchar(120) NOT NULL,
  `valorunitario` decimal(8,2) NOT NULL,
  `quantidade` int NOT NULL,
  `valortotal` decimal(8,2) NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pedidos`),
  KEY `id_cliente_idx` (`id_cliente`),
  CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Ana Clara','Rua A',11111111,'Geladeira Frost Free Brastemp Side Inverse 540 litros',5019.00,1,5019.00,1,500,'Centro','Rio de Janeiro'),(2,'Helena','Rua B',22222222,'Fogão 4 Bocas Consul Inox com Mesa de Vidro',1129.00,2,2258.00,2,790,'Santa Teresa','Rio de Janeiro'),(3,'Vania','Rua C',33333333,'Forno Microondas Eletrolux 20 Litros Branco',436.05,1,436.05,3,100,'Rio Comprido','São Paulo'),(4,'Luiz','Rua D',44444444,'Lava Lava-louça Compacta 08 serviços Branca 127V Brastemp',1730.61,1,1730.61,4,600,'Tijuca','Santa Catarina'),(5,'Claudio','Rua E',55555555,'Lavadora de Roupas Philco Inverter 12Kg',2179.90,1,2179.90,5,201,'Lapa','Minas Gerais'),(6,'Regina','Rua F',66666666,'Forno Microondas Eletrolux 20 Litros Branco',436.05,1,436.05,6,190,'Glória','Rio Grande do Sul');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `preco_final` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','Geladeira Frost Free Brastemp Side Inverse 540 litros',6389.00,5019.00,'geladeira_brastemp.jpg'),(2,'geladeira','Geladeira Frost Free Brastemp Branca 375 litros',2068.60,1910.90,'geladeira_brastemp_branca.jpg'),(3,'geladeira','Geladeira Frost Free Consul Inox 340 litros',2199.99,2069.00,'geladeira_consul_inox.jpg'),(4,'fogao','Fogao 4 Bocas Consul Inox com Mesa de Vidro',1299.99,1129.00,'fogao_4bocas-vidro.jpg'),(5,'fogao','Fogao de Piso 4 bocas Atlas Monaco com Acendimento Automatico',609.90,519.70,'fogao_4bocas_atlas_monaco.jpg'),(6,'microondas','Microondas Consul 32 Litros Inox 220V',590.90,409.88,'microondas_consul_32litros_inox_220v.jpg'),(7,'microondas','microondas Philco 25 Litros Espelhado 220V',508.70,464.53,'microondas_philco_espelhado.jpg'),(8,'microondas','Forno Microondas Eletrolux 20 Litros Branco',459.90,436.05,'forno_microndas_eletrolux.jpg'),(9,'lavalouca','Lava Louca Inox com 10 servicos, 06 Programas de lavagem e Painel Blue Touch',3599.00,2799.90,'lavalouca-electrolux-inox.jpg'),(10,'lavalouca','Lava Lava-louca Compacta 08 servicos Branca 127V Brastemp',1970.50,1730.61,'lava-loca-compacta.jpg'),(11,'lavaroupa','Lavadora de Roupas Brastemp 11Kg com Turbo Performance Branca',1699.90,1214.10,'lavadora-roupas-brastemp-11kg-branca.jpg'),(12,'lavaroupa','Lavadora de Roupas Philco Inverter 12Kg',2399.90,2179.90,'lavadora-roupas-philco-inverter.jpg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `senha` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fseletro'
--

--
-- Dumping routines for database 'fseletro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 14:44:47

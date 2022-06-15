CREATE DATABASE  IF NOT EXISTS `db_faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_faculdade`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Ana','Souza Silva','0851101121',1,'F','Mario Silva','Amanda de Sousa','Anasousasilva@gmail.com','(61)1234-1234',4,3,1),(2,'Calebe','Janes Tigre','700021',0,'M','Armando Tigre','Maria Janes tigre silva','CalebeJnesTigre@hotmail.com','999909',1,8,3),(3,'Kaya','Marins Mieiro','2002021',1,'F','Hazão Mieiro','Lurdes Maris Mieiro','kymarinsmie@gmail.com','00000',1,8,15),(4,'Pilar','Coimbra Pederneira','620451215',1,'F','José Feitosa Perdeneira','Alice Coimbra','Pilarrc@gmail.com','66774815',8,7,10),(5,'Dânia','Montenegro da Costa','24242525',0,'F','Ari Silva Costa','Deise Montenegro','DaniaMon@gmail.com','81817458',1,8,20),(6,'Jonas','Palha Medeiro','12344584',1,'M','João Medeiro','Ana Palha','MedeiroJonas@gmail.com','8888777',2,1,14),(7,'Lícia','Maciel Nogueira','33633656312',1,'F','Marcos Nogueira','Daiane Maciel Nogueira','Nog.licia@gmail.com','98874512',5,4,14),(8,'Moisés','Simão Quinto','2520012541',1,'M','Julio Silva Quinto','Michelle Simão Quinto','moises4simao@gmail.com','0000000',6,5,4),(9,'Tiana','Jorge Meire','000125025',1,'F','Nicolau Meire','Ester Jorge','Tianajm1@gmail.com','618881515',6,5,11),(10,'Tobias','Castilhos Guimarães','15840021',0,'M','Jorge Guimarães','Margarida Castilhos','Gmartb@hotmail.com','99888000',4,3,12),(11,'Valter','Feitosa Lindim','141413121',1,'M','Marcus Silva lindim','Maria Feitosa Lindim','Vater123fts@gmail.com','000000',2,1,8),(12,'Lisa','Malta Belo','15151514',1,'F','João Soares Belo','Alessandra Malta Belo','maltabelo@gmail.com','91910101',3,2,13),(13,'Alex','Quesado Azevedo','021022023',1,'M','Alexandre Azevedo','Anabel Quesado Azevedo','lxquesado@gmail.com','98899889',8,7,20),(14,'Milton','Teves Cabral','69874121',0,'M','Oséias Cabral Souza','Marta Teves Cabral','Miltonn7@gmail.com','90102993',5,4,21),(15,'Florinda','Moutinho Soares','45322221',1,'F','Romeu Soares','Orquidea Moutinho soares','flomoutinho14@gmail.com','',8,7,9),(16,'Walter','Vilarinho Vilas','25555011',0,'M','Jackson vilas vilas','Ana Maria Vilarinho','Walterr152@gmail.com','62455556',1,8,19),(17,'Milena','Espinosa Vilar','322741025',1,'F','Natanael Vilar','Nazaré Espinosa Vilar','mil1478@gmail.com','78786601',4,3,18),(18,'Mikael','Candeias Lustosa','69688012',1,'M','Pedro Lustosa','Vitoria Candeias Lustosa','candeiasll@gmail.com','61988080',5,4,17),(19,'Luka','Severo Monforte','425785203',0,'M','Gabriel Monforte silva','Tiffany Severo Monteforte S','luka14mont@gmai.com','86660111',7,6,16),(20,'Analice','Piteira Paulos','1725002120',1,'F','Paulo André Paulos','Isabel Piteira Paulos','Analice.piteira0@gmail.com','88874749',7,6,13);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_Ra` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_Ra`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_Ra`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (8,1),(9,1),(4,2),(13,2),(15,2),(19,3),(20,3),(6,4),(11,4),(1,5),(10,5),(18,5),(12,8),(19,8),(20,8),(7,13),(14,13),(7,14),(14,14),(8,15),(9,15),(8,16),(9,16),(6,17),(11,17),(4,19),(13,19),(15,19),(4,20),(13,20),(15,20),(7,21),(14,21),(6,22),(11,22),(2,23),(3,23),(5,23),(16,23),(2,24),(3,24),(5,24),(16,24),(2,25),(3,25),(5,25),(16,25),(2,26),(3,26),(5,26),(17,26),(8,27),(9,27);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia sofware',NULL),(2,'Analises de sistemas',NULL),(3,'Biologia',NULL),(4,'Historia',NULL),(5,'Matematica',NULL),(6,'Engenharia Eletrica',NULL),(7,'Pscicologia',NULL),(8,'Direito',NULL),(9,'Administração',NULL),(10,'Arquitetura',NULL);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (5,1),(7,2),(1,3),(2,3),(6,3),(1,4),(3,5),(10,6),(10,7),(10,8),(5,9),(9,9),(9,10),(9,11),(7,12),(4,13),(4,14),(5,15),(5,16),(1,17),(7,18),(9,18),(7,19),(7,20),(4,21),(2,22),(8,23),(8,24),(8,25),(8,26),(5,27);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(25) DEFAULT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'ciencias humanas'),(2,'matematica'),(3,'Biologicas'),(4,'Estagio'),(5,'Tecnologia Informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depende`
--

DROP TABLE IF EXISTS `depende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depende` (
  `cod_disciplina` int DEFAULT NULL,
  `possui_cod_disciplina` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depende`
--

LOCK TABLES `depende` WRITE;
/*!40000 ALTER TABLE `depende` DISABLE KEYS */;
/*!40000 ALTER TABLE `depende` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `descricao` char(50) DEFAULT NULL,
  `carga_horaria` int DEFAULT NULL,
  `numero_alunos` int DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio Logico','Estruturação de raciocinios',420,10,2),(2,'Piscicologia Cognitv','Estudo da percepção pensamento e memória',30,15,1),(3,'Eletronica Digital','Base fundamental para informatica e telcomunicação',80,15,2),(4,'Programação em C','compilador q definem o valor constantes simbólica',48,10,5),(5,'Anatomia Animal','Estuda a forma e estrutura do corpo dos organismos',68,10,3),(6,'História Arquitetura',' sua evolução histórica',3600,10,1),(7,'Desenho Técnico','ramo especializado do desenho',40,10,1),(8,'Infraestrutura',' serviços básicos a cidade ou sociedade',36,10,1),(9,'Finanças Orçamentos','planejamento de execução de gastos e ganhos',80,10,1),(10,'Mercado e Marketing','mercadologia arte empresarial',160,10,1),(11,'Recursos Humanos','junção de colaboradores de determinada empresa',800,10,1),(12,'Fundament Filosófico','referência básica de análise humana',72,10,1),(13,'Historiografia','arte e o trabalho do historiógrafo',260,10,1),(14,'História Moderna','momento da História do Ocidente',180,10,1),(15,'Pré-Cálculo','operações e aos teoremas base',102,10,2),(16,'Estatística','conjunto de métodos para analisar dados',1000,10,2),(17,'Engenharia Software','teorias/técnica/ferramentas',3000,10,5),(18,'Ética','investigação dos princípios',90,10,1),(19,'Psicologia social','observa comportamentos humanos',400,10,1),(20,'Teorias','incorporar ao pensamento tradicional',240,10,1),(21,'Antropologia','estudo do homem como ser biológico',240,10,1),(22,'Estrutura de Dados','coleção de valores e relacionamentos',100,10,5),(23,'Direito e Legislação','originária de processo legislativo',44,10,5),(24,'Direito Civil','lida com as relações jurídicas',1100,10,1),(25,'Português Jurídico','linguagem encontrada em leis',340,10,1),(26,'Ciência Política','Entender e moldar noções de Estado',800,10,1),(27,'Geometria Analítica','Relaciona a geometria à álgebra',80,10,5);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_historico` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_historico`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
INSERT INTO `disciplina_historico` VALUES (1,23,9.20,100),(1,24,9.50,98),(1,25,8.25,98),(1,26,9.40,99),(2,24,8.75,99),(2,25,8.35,99),(2,26,8.25,89),(3,23,7.25,90),(3,24,8.35,90),(3,25,8.60,90),(3,26,9.20,88),(4,5,9.80,98),(5,1,72.40,95),(5,15,90.00,98),(5,16,87.20,98),(5,27,8.32,95),(6,3,97.20,99),(6,8,98.00,99),(7,2,9.20,99),(7,19,98.00,99),(7,20,88.20,98),(8,3,99.00,99),(9,1,78.20,97),(9,15,82.00,90),(9,16,98.00,99),(9,27,85.00,97),(10,23,90.00,97),(10,24,87.00,97),(10,25,70.00,80),(11,26,6.90,80),(12,13,87.00,92),(12,14,78.00,90),(12,21,87.00,95),(13,13,78.00,90),(13,14,82.50,98),(13,21,78.20,89),(14,23,89.00,90),(14,24,72.20,98),(14,25,78.00,98),(14,26,62.00,70),(15,5,98.00,99),(16,5,97.00,99),(17,13,8.50,98),(17,14,7.20,90),(17,21,6.00,70),(19,2,70.00,90),(19,19,7.50,89),(19,20,72.32,89),(20,2,8.40,89),(20,19,80.20,87),(20,20,7.20,89);
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) DEFAULT NULL,
  `numero_rua` int DEFAULT NULL,
  `complemento` char(20) DEFAULT NULL,
  `CEP` char(8) DEFAULT NULL,
  `fk_cod_tipo_logradouro` int DEFAULT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'pinheiro',17,'12','7000.01',9),(2,'Pôr do sol',19,'casa 12 quadra 24','9152200',9),(3,'São José',635,'Casa 05 quadra 18','845.9912',3),(4,'Tiradentes',152,'Casa 28','7555123',3),(5,'São Pedro',345,'Casa 15 numero 8','2410052',7),(6,'Moura',428,'lote 21 quadra 10','245256',3),(7,'Espirito Santo',27,'Casa 74','720801',2),(8,'Azevedo',48,'Casa 12','1400714',10),(9,'limoeiro',36,'Casa 103','25861000',10),(10,'Avelar',363,'casa 15 numero 7','78240121',9),(11,'São Bento',458,'casa 84','5100215',5),(12,'Biario',72,'Casa 47 lote 3','742825',3),(13,'sem nome',261,'Casa 25 A','3200102',4),(14,'cristais',368,'Casa A21','250048',5),(15,'madureira',1,'Casa 3C9','2458000',5),(16,'margaridas',248,'Casa 10E','2580003',3),(17,'amaral',84,'Casa D27','2500142',8),(18,'vicente',258,'Casa 45','230015',6),(19,'sem nome',12,'Casa 32AZ','520016',4),(20,'sem nome',240,'Casa 7','3200115',5),(21,'itabaiara',198,'casa 17','4900025',3);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int DEFAULT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2022-02-01','2026-02-09',2),(2,'2022-02-01','2026-02-09',3),(3,'2022-02-01','2026-02-09',5),(4,'2022-02-01','2026-02-09',16),(5,'2022-02-01','2025-02-07',6),(6,'2022-02-01','2025-02-07',11),(7,'2022-03-01','2026-03-01',12),(8,'2022-03-01','2026-03-01',1),(9,'2022-03-01','2026-03-01',9),(10,'2022-03-01','2026-03-01',16),(11,'2022-02-01','2026-02-09',7),(12,'2022-02-01','2026-02-09',14),(13,'2022-02-01','2026-02-09',18),(14,'2022-08-01','2026-08-03',8),(15,'2022-08-01','2026-08-03',9),(16,'2022-08-01','2026-08-03',19),(17,'2022-08-01','2026-08-03',20),(18,'2023-02-01','2027-02-01',15),(19,'2023-02-01','2027-02-01',13),(20,'2023-02-01','2027-02-01',4);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) DEFAULT NULL,
  `sobrenome_professor` char(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Gael','Souza',1,1),(2,'Caio','Pereira Santos',1,2),(3,'Davi','Gomes de Oliveira',0,2),(4,'Marcos','Santos Lima',0,4),(5,'Omar','Ribeiro Souza',1,5),(6,'Sara','Duarte Gama',1,5),(7,'Ana Maria','Oliveira dos Santos',1,3),(8,'Jade','Rodriges Martins',0,2),(9,'Olívia','Mendonça',1,3),(10,'Armando','Soares da Silva',1,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (5,1),(10,3),(6,4),(8,4),(7,5),(3,9),(5,17),(1,19),(9,19),(1,20),(1,21),(10,22),(1,23),(1,24),(1,25),(4,26),(2,27);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` int DEFAULT NULL,
  `fk_cod_tipo_telefone` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo_telefone` (`fk_cod_tipo_telefone`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo_telefone`) REFERENCES `tipo_telefone` (`cod_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,9990909,1),(2,91910101,1),(3,98899889,1),(4,90102993,1),(5,61988080,1),(6,8888999,1),(7,6999999,1),(8,8898668,1),(9,8777796,1),(10,770090,2),(11,800461,2),(12,363636,2),(13,333333,2),(14,3636344,2),(15,32353432,2),(16,39393936,2),(17,3232333,2),(18,808774,3),(19,8180808,3),(20,8080000,3),(21,81810081,3),(22,8484866,3),(23,612341234,1);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int DEFAULT NULL,
  `fk_cod_telefone` int DEFAULT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,1,23),(2,1,10),(3,1,22),(4,2,1),(5,4,21),(6,5,5),(7,5,11),(8,5,7),(9,6,15),(10,7,16),(11,9,7),(12,9,12),(13,9,20),(14,10,11),(15,12,2),(16,13,3),(17,14,4),(18,18,5);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'sitio'),(2,'rua'),(3,'residencial'),(4,'recanto'),(5,'condomínio'),(6,'chácara'),(7,'avenida'),(8,'estação'),(9,'Quadra'),(10,'Avenida');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo_telefone` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'celular'),(2,'residenc'),(3,'comercial');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'2022-02-01','2026-02-09',8),(2,'2022-02-01','2025-02-07',1),(3,'2022-03-01','2026-03-01',2),(4,'2022-03-01','2026-03-01',3),(5,'2022-02-01','2026-02-09',4),(6,'2022-08-01','2026-08-03',5),(7,'2022-08-01','2026-08-03',6),(8,'2023-02-01','2027-02-01',7);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 16:44:00

-- MySQL dump 10.15  Distrib 10.0.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.0.29-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `nighttools`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nighttools` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `nighttools`;

--
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorias`
--

DROP TABLE IF EXISTS `Categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorias` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias`
--

LOCK TABLES `Categorias` WRITE;
/*!40000 ALTER TABLE `Categorias` DISABLE KEYS */;
INSERT INTO `Categorias` VALUES (13,'ES6, Angular 4, React','JavaScript','#8A9B0F'),(14,'HTML5','HTML','#E97F02'),(15,'','Design e UX','#A03C8D'),(16,'','Mobile','#F8CA00');
/*!40000 ALTER TABLE `Categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `IdPost` int(11) NOT NULL AUTO_INCREMENT,
  `IdCategoria` int(11) NOT NULL,
  `texto` text,
  `IdAutor` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdPost`),
  KEY `cat_ind` (`IdCategoria`),
  KEY `aut_ind` (`IdAutor`),
  CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`IdCategoria`) REFERENCES `Categorias` (`IdCategoria`),
  CONSTRAINT `Posts_ibfk_2` FOREIGN KEY (`IdAutor`) REFERENCES `Usuarios` (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (1,13,'<p><strong>Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss, &eacute; um leite divinis, qui tem lupuliz, matis, aguis e fermentis. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</strong></p><p><em>Atirei o pau no gatis, per gatis num morreus. &nbsp;Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. &nbsp;Interagi no m&eacute;, cursus quis, vehicula ac nisi.&nbsp;</em>&nbsp;</p><p><s>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.&nbsp;</s>&nbsp;</p><p><strong>Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss, &eacute; um leite divinis, qui tem lupuliz, matis, aguis e fermentis. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</strong></p><p><em>Atirei o pau no gatis, per gatis num morreus. &nbsp;Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. &nbsp;Interagi no m&eacute;, cursus quis, vehicula ac nisi.&nbsp;</em>&nbsp;</p><p><s>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.&nbsp;</s>&nbsp;</p><p><strong>Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss, &eacute; um leite divinis, qui tem lupuliz, matis, aguis e fermentis. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</strong></p><p><em>Atirei o pau no gatis, per gatis num morreus. &nbsp;Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. &nbsp;Interagi no m&eacute;, cursus quis, vehicula ac nisi.&nbsp;</em>&nbsp;</p><p><s>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.&nbsp;</s>&nbsp;</p><p><strong>Mussum Ipsum, cacilds vidis litro abertis. Suco de cevadiss, &eacute; um leite divinis, qui tem lupuliz, matis, aguis e fermentis. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</strong></p><p><em>Atirei o pau no gatis, per gatis num morreus. &nbsp;Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. &nbsp;Interagi no m&eacute;, cursus quis, vehicula ac nisi.&nbsp;</em>&nbsp;</p><p><s>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.&nbsp;</s>&nbsp;</p>',19,'per gatis num morreus.  Mauris nec dolor','/admin/img/posts/RlyDXAVbPhh66W1Yczn'),(2,14,'<p>Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Manduma pindureta quium dia nois paga.</p>',19,'Lorem ipsum','/admin/img/posts/se5Ly1ZDs3GvrbJ'),(3,15,'<p>Mussum Ipsum, cacilds vidis litro abertis. Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p><br></p>',21,'Lorem ipsum dot sit','/admin/img/posts/9Pb'),(4,15,'<p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p>',21,'ipsum dot sit amet vuforvos','/admin/img/posts/kuBJhbZvD6lejGe2l'),(5,16,'<p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis. </p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p>',22,'receita de bolis, mais bolis eu num gostis. ','/admin/img/posts/tlThna'),(6,13,'<p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadisgente finis, bibend um egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Si num tem leite ent&atilde;o bota uma pinga a&iacute; cumpadi! &nbsp;In elementis m&eacute; pra quem &eacute; amistosis quis leo. &nbsp;Cevadis im ampola pa arma uma pindureta. &nbsp;Quem num gosta di mim que vai ca&ccedil;&aacute; sua turmis! &nbsp;</p><p>Casamentiss faiz malandris se pirulit&aacute;. Suco de cevadiss deixa as pessoas mais interessantis. &nbsp;Sapien in monti palavris qui num significa nadis i pareci latim. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;</p><p>Delegadis gente finis, bibendum egestas augue arcu ut est. &nbsp;Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;</p><p>Manduma pindureta quium dia nois paga. &nbsp;Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.&nbsp;</p>',22,' finis, bibend um egestas augue arcu ut est','/admin/img/posts/d13IrrQq3tYv'),(7,14,'<p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p>',22,'que pode alegrar sua vidis.','/admin/img/posts/dJID96'),(8,15,'<p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p>',20,'Ut sed ex eros paum duris','/admin/img/posts/7CosTg8BB3'),(9,16,'<p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p><p>Mussum Ipsum, cacilds vidis litro abertis. Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum. &nbsp;Leite de capivaris, leite de mula manquis sem cabe&ccedil;a. &nbsp;Quem num gosta di m&eacute;, boa gentis num &eacute;. &nbsp;Aenean aliquam molestie leo, vitae iaculis nisl. &nbsp;</p><p>Quem manda na minha terra sou euzis! &nbsp;Mais vale um bebadis conhecidiss, que um alcoolatra anonimis. &nbsp;Manduma pindureta quium dia nois paga. &nbsp;T&aacute; deprimidis, eu conhe&ccedil;o uma cachacis que pode alegrar sua vidis. &nbsp;</p><p>Em p&eacute; sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose. &nbsp;Si u mundo t&aacute; muito paradis? Toma um m&eacute; que o mundo vai girarzis! &nbsp;Diuretics paradis num copo &eacute; motivis de denguis. &nbsp;Casamentiss faiz malandris se pirulit&aacute;.&nbsp;</p><p>Per aumento de cachacis, eu reclamis. &nbsp;A ordem dos tratores n&atilde;o altera o p&atilde;o duris. &nbsp;Todo mundo v&ecirc; os porris que eu tomo, mas ningu&eacute;m v&ecirc; os tombis que eu levo! &nbsp;N&atilde;o sou faixa preta cumpadi, sou preto inteiris, inteiris. &nbsp;</p>',20,'Si u mundo tá muito paradis?','/admin/img/posts/KTD2wdNm3');
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (19,'alex','cthulhu1','Alex Alonso','/admin/img/autores/14690862_1077747372346533_6993252076825219434_n.jpg'),(20,'ketlin','comunismo','Ketlin Moura','/admin/img/autores/ketlin.jpg'),(21,'guilherme','comunismo','Guilherme','/admin/img/autores/guilherme.jpg'),(22,'amanda','cthulhu1','Amanda Altava','/admin/img/autores/amanda.jpg');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19 11:39:52

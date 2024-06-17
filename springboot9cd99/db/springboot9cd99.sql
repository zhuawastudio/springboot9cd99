-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot9cd99
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-19 01:25:48',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-19 01:25:48',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-19 01:25:48',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-19 01:25:48',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-19 01:25:48',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-19 01:25:48',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117780953 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-19 01:25:48',1,1,'提问1','回复1',1),(62,'2021-03-19 01:25:48',2,2,'提问2','回复2',2),(63,'2021-03-19 01:25:48',3,3,'提问3','回复3',3),(64,'2021-03-19 01:25:48',4,4,'提问4','回复4',4),(65,'2021-03-19 01:25:48',5,5,'提问5','回复5',5),(66,'2021-03-19 01:25:48',6,6,'提问6','回复6',6),(1616117740430,'2021-03-19 01:35:40',1616117630285,NULL,'DGFGYHYGJU',NULL,0),(1616117780952,'2021-03-19 01:36:19',1616117630285,1,NULL,'1',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot9cd99/upload/1616117365916.jpg'),(2,'picture2','http://localhost:8080/springboot9cd99/upload/1616117372953.jpg'),(3,'picture3','http://localhost:8080/springboot9cd99/upload/1616117579296.jpeg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingleixing`
--

DROP TABLE IF EXISTS `dianyingleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117508077 DEFAULT CHARSET=utf8 COMMENT='电影类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingleixing`
--

LOCK TABLES `dianyingleixing` WRITE;
/*!40000 ALTER TABLE `dianyingleixing` DISABLE KEYS */;
INSERT INTO `dianyingleixing` VALUES (21,'2021-03-19 01:25:48','电影类型1'),(22,'2021-03-19 01:25:48','电影类型2'),(23,'2021-03-19 01:25:48','电影类型3'),(24,'2021-03-19 01:25:48','电影类型4'),(25,'2021-03-19 01:25:48','电影类型5'),(26,'2021-03-19 01:25:48','电影类型6'),(1616117502239,'2021-03-19 01:31:42','喜剧片'),(1616117508076,'2021-03-19 01:31:47','动作片');
/*!40000 ALTER TABLE `dianyingleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingxinxi`
--

DROP TABLE IF EXISTS `dianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117565512 DEFAULT CHARSET=utf8 COMMENT='电影信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingxinxi`
--

LOCK TABLES `dianyingxinxi` WRITE;
/*!40000 ALTER TABLE `dianyingxinxi` DISABLE KEYS */;
INSERT INTO `dianyingxinxi` VALUES (41,'2021-03-19 01:25:48','电影名称1','电影类型1','http://localhost:8080/springboot9cd99/upload/1616117309016.jpg','导演1','主演1','2021-03-19 09:25:48','片长1','','<p>电影简介1</p>','放映厅1','2021-03-19 09:25:48','2021-03-19 09:28:20',2,99.9,20,'1,3,5,7,9'),(42,'2021-03-19 01:25:48','电影名称2','电影类型2','http://localhost:8080/springboot9cd99/upload/1616117317381.jpg','导演2','主演2','2021-03-19 09:25:48','片长2','','<p>电影简介2</p>','放映厅2','2021-03-19 09:25:48','2021-03-19 09:28:33',3,99.9,20,'1,3,5,7,9'),(43,'2021-03-19 01:25:48','电影名称3','电影类型3','http://localhost:8080/springboot9cd99/upload/1616117325715.jpg','导演3','主演3','2021-03-19 09:25:48','片长3','','<p>电影简介3</p>','放映厅3','2021-03-19 09:25:48','2021-03-19 09:28:41',4,99.9,20,'1,3,5,7,9'),(44,'2021-03-19 01:25:48','电影名称4','电影类型4','http://localhost:8080/springboot9cd99/upload/1616117451671.jpg','导演4','主演4','2021-03-19 09:25:48','片长4','','<p>电影简介4</p>','放映厅4','2021-03-19 09:25:48','2021-03-19 09:34:30',10,99.9,20,'1,3,5,7,9'),(45,'2021-03-19 01:25:48','电影名称5','电影类型5','http://localhost:8080/springboot9cd99/upload/1616117437343.jpg','导演5','主演5','2021-03-19 09:25:48','片长5','','<p>电影简介5</p>','放映厅5','2021-03-19 09:25:48','2021-03-19 09:30:23',7,99.9,20,'1,3,5,7,9'),(46,'2021-03-19 01:25:48','电影名称6','电影类型6','http://localhost:8080/springboot9cd99/upload/1616117352694.jpg','导演6','主演6','2021-03-19 09:25:48','片长6','','<p>电影简介6</p>','放映厅6','2021-03-19 09:25:48','2021-03-19 09:29:07',7,99.9,20,'1,3,5,7,9'),(1616117565511,'2021-03-19 01:32:45','你好，李焕英','喜剧片','http://localhost:8080/springboot9cd99/upload/1616117524789.jpg','贾玲','贾玲张小斐','2021-02-12 08:00:00','128分钟','http://localhost:8080/springboot9cd99/upload/1616117545452.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','1号厅','2021-03-23 10:00:00','2021-03-19 09:38:30',7,45,40,'1,2,3,4,14,15,26,27');
/*!40000 ALTER TABLE `dianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdianyingxinxi`
--

DROP TABLE IF EXISTS `discussdianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117906955 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdianyingxinxi`
--

LOCK TABLES `discussdianyingxinxi` WRITE;
/*!40000 ALTER TABLE `discussdianyingxinxi` DISABLE KEYS */;
INSERT INTO `discussdianyingxinxi` VALUES (111,'2021-03-19 01:25:48',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-19 01:25:48',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-19 01:25:48',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-19 01:25:48',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-19 01:25:48',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-19 01:25:48',6,6,'用户名6','评论内容6','回复内容6'),(1616117906954,'2021-03-19 01:38:26',1616117565511,1616117630285,'1','看了贾玲的电影，让我想起了小时候经常跟妈妈去工厂车间的场景，感谢这部电影，让我想起萦绕在脑海中的那句话，一定要让妈妈高兴',NULL);
/*!40000 ALTER TABLE `discussdianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyingting`
--

DROP TABLE IF EXISTS `fangyingting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117513093 DEFAULT CHARSET=utf8 COMMENT='放映厅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyingting`
--

LOCK TABLES `fangyingting` WRITE;
/*!40000 ALTER TABLE `fangyingting` DISABLE KEYS */;
INSERT INTO `fangyingting` VALUES (31,'2021-03-19 01:25:48','放映厅1'),(32,'2021-03-19 01:25:48','放映厅2'),(33,'2021-03-19 01:25:48','放映厅3'),(34,'2021-03-19 01:25:48','放映厅4'),(35,'2021-03-19 01:25:48','放映厅5'),(36,'2021-03-19 01:25:48','放映厅6'),(1616117513092,'2021-03-19 01:31:53','1号厅');
/*!40000 ALTER TABLE `fangyingting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goupiaotongji`
--

DROP TABLE IF EXISTS `goupiaotongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goupiaotongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `goupiaoshuliang` int(11) DEFAULT NULL COMMENT '购票数量',
  `goupiaojine` int(11) DEFAULT NULL COMMENT '购票金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117955464 DEFAULT CHARSET=utf8 COMMENT='购票统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goupiaotongji`
--

LOCK TABLES `goupiaotongji` WRITE;
/*!40000 ALTER TABLE `goupiaotongji` DISABLE KEYS */;
INSERT INTO `goupiaotongji` VALUES (51,'2021-03-19 01:25:48','电影名称1','电影类型1','导演1','用户名1','联系电话1',1,1,'2021-03-19','备注1'),(52,'2021-03-19 01:25:48','电影名称2','电影类型2','导演2','用户名2','联系电话2',2,2,'2021-03-19','备注2'),(53,'2021-03-19 01:25:48','电影名称3','电影类型3','导演3','用户名3','联系电话3',3,3,'2021-03-19','备注3'),(54,'2021-03-19 01:25:48','电影名称4','电影类型4','导演4','用户名4','联系电话4',4,4,'2021-03-19','备注4'),(55,'2021-03-19 01:25:48','电影名称5','电影类型5','导演5','用户名5','联系电话5',5,5,'2021-03-19','备注5'),(56,'2021-03-19 01:25:48','电影名称6','电影类型6','导演6','用户名6','联系电话6',6,6,'2021-03-19','备注6'),(1616117955463,'2021-03-19 01:39:14','你好，李焕英','喜剧片','贾玲','1','12312312312',2,90,'2021-03-19',NULL);
/*!40000 ALTER TABLE `goupiaotongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117609815 DEFAULT CHARSET=utf8 COMMENT='电影资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-19 01:25:48','标题1','简介1','http://localhost:8080/springboot9cd99/upload/1616117394576.jpg','<p>内容1</p>'),(102,'2021-03-19 01:25:48','标题2','简介2','http://localhost:8080/springboot9cd99/upload/news_picture2.jpg','内容2'),(103,'2021-03-19 01:25:48','标题3','简介3','http://localhost:8080/springboot9cd99/upload/news_picture3.jpg','内容3'),(104,'2021-03-19 01:25:48','标题4','简介4','http://localhost:8080/springboot9cd99/upload/1616117387136.jpg','<p>内容4</p>'),(105,'2021-03-19 01:25:48','标题5','简介5','http://localhost:8080/springboot9cd99/upload/news_picture5.jpg','内容5'),(106,'2021-03-19 01:25:48','标题6','简介6','http://localhost:8080/springboot9cd99/upload/news_picture6.jpg','内容6'),(1616117609814,'2021-03-19 01:33:28','新电影上映','新电影','http://localhost:8080/springboot9cd99/upload/1616117598961.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/springboot9cd99/upload/1616117607028.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117730451 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1616117730450,'2021-03-19 01:35:29','2021319935294897693','dianyingxinxi',1616117630285,1616117565511,'你好，李焕英','http://localhost:8080/springboot9cd99/upload/1616117524789.jpg',2,45,45,90,90,1,'已完成','26,27');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117709521 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616117709520,'2021-03-19 01:35:08',1616117630285,1616117565511,'dianyingxinxi','你好，李焕英','http://localhost:8080/springboot9cd99/upload/1616117524789.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','2k2v1unbim089zvr0gghiceza0nrndh8','2021-03-19 01:27:30','2021-03-19 02:38:39'),(2,1616117630285,'1','yonghu','用户','1aihv4qz4swozeflatyir8tsw0cl71ay','2021-03-19 01:33:55','2021-03-19 02:37:25');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-19 01:25:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117630286 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-19 01:25:48','用户1','123456','姓名1','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-03-19 01:25:48','用户2','123456','姓名2','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-03-19 01:25:48','用户3','123456','姓名3','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-03-19 01:25:48','用户4','123456','姓名4','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-03-19 01:25:48','用户5','123456','姓名5','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-03-19 01:25:48','用户6','123456','姓名6','http://localhost:8080/springboot9cd99/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1616117630285,'2021-03-19 01:33:50','1','1','陈一','http://localhost:8080/springboot9cd99/upload/1616117642360.jpg','女','12312312312',210);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 20:30:27

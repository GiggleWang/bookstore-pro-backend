-- MySQL dump 10.13  Distrib 9.0.1, for macos15.1 (arm64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	9.0.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--
CREATE DATABASE IF NOT EXISTS bookstore;
USE bookstore;

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` bigint NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `cover` text NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `sales` int DEFAULT '0',
  `repertory` int DEFAULT '0',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'1984','[英] 乔治·奥威尔','0000000000001','https://img3m4.ddimg.cn/96/20/25215594-2_u_11.jpg','《1984》是一部杰出的政治寓言小说，也是一部幻想小说。作品刻画了人类在极权主义社会的生存状态，有若一个永不褪色的警示标签，警醒世人提防这种预想中的黑暗成为现实。历经几十年，其生命力益显强大，被誉为20世纪影响最为深远的文学经典之一。',2800,7,94),(2,'C++ Primer 中文版（第 5 版）','[美] Stanley B. Lippman / [美] Josée Lajoie / [美]','0000000000002','https://img3m5.ddimg.cn/18/16/11186350875-1_u_1.jpg','这本久负盛名的 C++ 经典教程，时隔八年之久，终迎来史无前例的重大升级。除令全球无数程序员从中受益，甚至为之迷醉的——C++ 大师 Stanley B. Lippman 的丰富实践经验，C++标准委员会原负责人 Josée Lajoie 对C++标准的深入理解，以及C+ + 先驱 Barbara E. Moo 在 C++教学方面的真知灼见外，更是基于全新的 C++11标准进行了全面而彻底的内容更新。非常难能可贵的是，本书所有示例均全部采用 C++11 标准改写，这在经典升级版中极其罕见——充分体现了 C++ 语言的重大进展及其全面实践。书中丰富的教学辅助内容、醒目的知识点提示，以及精心组织的编程示范，让这本书在 C++ 领域的权威地位更加不可动摇。无论是初学者入门，或是中、高级程序员提升，本书均为不容置疑的首选。',12800,102,98),(3,'Java核心技术·卷I（原书第12版）','[美] 凯·S.霍斯特曼（Cay S.Horstmann）','0000000000003','https://img3m8.ddimg.cn/7/0/29411818-1_u_28.jpg','伴随着Java的成长，《Java核心技术》从第1版到第11版一路走来，得到了广大Java程序设计人员的青睐，成为一本畅销不衰的Java经典图书。',14900,0,120),(4,'Java语言程序设计（基础篇 原书第10版）','[美]粱勇（Y.Daniel Liang）','0000000000004','https://img3m9.ddimg.cn/85/16/25104109-1_u_3.jpg','《Java语言程序设计（基础篇 原书第10版）》是Java语言的经典教材，中文版分为基础篇和进阶篇，主要介绍程序设计基础、面向对象编程、GUI程序设计、数据结构和算法、高级Java程序设计等内容。本书以示例讲解解决问题的技巧，提供大量的程序清单，每章配有大量复习题和编程练习题，帮助读者掌握编程技术，并应用所学技术解决实际应用开发中遇到的问题。您手中的这本是其中的基础篇，主要介绍了基本程序设计、语法结构、面向对象程序设计、继承和多态、异常处理和文本I/O、抽象类和接口等内容。本书可作为高等院校程序设计相关专业的基础教材，也可作为Java语言及编程开发爱好者的参考资料。',8500,0,100),(5,'Go专家编程','任洪彩','0000000000005','https://img3m9.ddimg.cn/21/0/28986429-1_u_6.jpg','《Go专家编程》深入地讲解了Go语言常见特性的内部机制和实现方式，大部分内容源自对Go语言源码的分析，并从中提炼出实现原理。通过阅读本书，读者可以快速、轻松地了解Go语言的内部运作机制。',10800,0,100),(6,'Go语言精进之路','白明','0000000000006','https://img3m0.ddimg.cn/9/24/29352420-1_u_7.jpg','Go入门容易，精进难，如何才能像Go开发团队那样写出符合Go思维和语言惯例的高质量代码呢？本书将从编程思维和实践技巧2个维度给出答案，帮助你在Go进阶的路上事半功倍。',9900,0,100),(7,'吉伊卡哇 這又小又可愛的傢伙 2','nagano','0000000000007','https://img3m8.ddimg.cn/40/7/11520575788-1_u_1701681733.jpg','又小又可愛的傢伙=通稱「吉伊卡哇」。 吉伊卡哇的好朋友小八貓， 在吉伊卡哇家發現了《拔草撿定5級》的應考書籍。 「考取資格酬勞增加的話，就能買禮物送給大家了！」 看著不擅長念書的吉伊卡哇努力用功的模樣， 小八貓想到了…… 又小又可愛，無時無刻都很努力。 當然，不可能每件事都一帆風順， 吉伊卡哇的每一天，也伴隨著辛苦、悲傷和危險。 但是，和*喜歡的朋友一起，明天也會帶著笑容「這樣過生活」。 本書同樣收錄了在這裡才看得到的特別繪製故事哦！',6600,0,100),(8,'吉伊卡哇 這又小又可愛的傢伙 1','nagano','0000000000008','https://img3m8.ddimg.cn/49/28/11520575698-1_u_1700010618.jpg','《MOGUMOGU邊走邊吃熊》作者nagano繪製的人氣系列終於登場！ 由又小又可愛的傢伙=通稱「吉伊卡哇」們所編織出的， 快樂的、苦悶的、也有點艱辛的日日物語。 好想過著受大家喜愛、被溫柔對待的生活…… 身邊卻有許多來路不明的人事物！？ 不過，和*喜歡的小八貓和兔兔一起，努力過生活的「吉伊卡哇」身邊， 不論何時都洋溢歡笑。 本書當然也收錄了在這裡才看得到的故事！ 又一個「nagano WORLD」，在此拉開序幕！',6600,0,100),(9,'吉伊卡哇 這又小又可愛的傢伙 3','nagano','0000000000009','https://img3m8.ddimg.cn/15/10/11531950368-1_u_1700106956.jpg','又小又可爱的家伙，就是“吉伊卡哇”！ 吉伊卡哇、小八猫、兔兔，友好三人组发现了神秘开关。 按下开关后，门敞开了，另一头出现了比自己“更小更可爱的家伙”！ 有了想守护的同伴，辛苦的讨伐和准备考拔草检定，也比往常更有干劲！ 还以为从今以后能永远在一起… 努力过生活的吉伊卡哇的身边，每天都会发生许多事， 无论发生任何事，只要和喜欢的朋友一起，一定就能所向无敌。 本书同样收录了只有在这里才看得到的特别绘制故事哦！',6600,0,100),(10,'吉伊卡哇 這又小又可愛的傢伙 4','nagano','0000000000010','https://img3m0.ddimg.cn/11/19/11657503550-1_u_1703478668.jpg','又小又可爱的傢伙＝通称“吉伊卡哇”。 不由得就会随口哼唱出“?唔、唔、哇、哇、唔哇”的歌词， 出自相当受吉伊卡哇们喜爱的团体“睡衣派队”！ “睡衣派队”要在“超好狂欢节”表演，成员却被大鸟抓走了…！ 吉伊卡哇们深信成员们一定会回来，想好好守护著舞台…… 既然如此！他们决定代替“睡衣派队”上台！ 无论是快乐的时候，还是遇到危机的时候。 吉伊卡哇和zui喜欢的朋友们，努力过好每一天。 本书也收录了在这裡才看得到的特别绘制故事！',6600,0,100),(11,'吉伊卡哇 這又小又可愛的傢伙 5','nagano','0000000000011','https://img3m0.ddimg.cn/96/6/11601126600-1_u_1700644428.jpg','电视动画也大受好评！人气系列“Chikawa”，期待已久的第5卷登场！！ 千鹤他们在森林里遇见的大个子“奥德”。在奥德的推荐下一起吃蘑菇的时候，被地精们抓住了！ 和奥德一起被关在监狱里的千鹤们。这样下去的话会被地精们吃掉的！但是……大家都能不放弃就逃出来吧 除了“奥德”篇，还收录了强烈反响的“老虎机”篇和“黑色流星”篇！还有只用单行本才能读懂的画！ 虽然有痛苦和悲伤，但明天也想和蕞喜欢的大家一起笑着生活。找到小小的幸福，小小的日子还在继续！',6600,0,100),(12,'Java编程思想（第4版）','[美] Bruce Eckel','0000000000012','https://img3m0.ddimg.cn/96/6/11601126600-1_u_1700644428.jpg','Java学习经典,殿堂级著作！赢得了全球程序员的广泛赞誉。',9900,0,100),(13,'测试书籍1','徐培公','0000000000013','https://img3m0.ddimg.cn/96/6/11601126600-1_u_1700644428.jpg','该书为测试书籍，仅供测试使用。',10001,0,100),(14,'测试书籍2','徐培公','0000000000014','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10002,0,100),(15,'测试书籍3','徐培公','0000000000015','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10003,0,100),(16,'测试书籍4','徐培公','0000000000016','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10004,0,100),(17,'测试书籍5','徐培公','0000000000017','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10005,0,100),(18,'测试书籍6','徐培公','0000000000018','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10006,0,100),(19,'测试书籍7','徐培公','0000000000019','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10107,0,100),(20,'测试书籍8','徐培公','0000000000020','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10008,0,100),(21,'测试书籍9','徐培公','0000000000021','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10009,0,100),(22,'测试书籍10','徐培公','0000000000022','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10010,0,100),(23,'测试书籍11','徐培公','0000000000023','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10011,0,100),(24,'测试书籍12','徐培公','0000000000024','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10012,0,100),(25,'测试书籍13','徐培公','0000000000025','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10013,0,100),(26,'测试书籍14','徐培公','0000000000026','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10014,0,100),(27,'测试书籍15','徐培公','0000000000027','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10015,27,73),(28,'测试书籍16','徐培公','0000000000028','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10016,28,72),(29,'测试书籍17','徐培公','0000000000029','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10017,29,71),(30,'测试书籍18','徐培公','0000000000030','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10018,30,70),(31,'测试书籍19','徐培公','0000000000031','https://img3m0.ddimg.cn/4/24/9317290-1_u_6.jpg','该书为测试书籍，仅供测试使用。',10019,0,100),(34,'test','t','123','https://img3m4.ddimg.cn/96/20/25215594-2_u_11.jpg','hello',12300,0,123);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Book_Tag`
--

DROP TABLE IF EXISTS `Book_Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book_Tag` (
  `book_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`book_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `book_tag_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `book_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `Tag` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book_Tag`
--

LOCK TABLES `Book_Tag` WRITE;
/*!40000 ALTER TABLE `Book_Tag` DISABLE KEYS */;
INSERT INTO `Book_Tag` VALUES (1,1),(7,1),(13,1),(21,1),(24,1),(1,2),(7,2),(12,2),(14,2),(24,2),(20,3),(28,3),(17,4),(31,4),(15,5),(26,5),(22,6),(31,6),(17,7),(26,7),(18,8),(28,8),(7,9),(19,9),(29,9),(21,10),(29,10),(2,11),(13,11),(20,11),(25,11),(2,12),(4,12),(5,12),(6,12),(12,12),(14,12),(18,12),(25,12),(34,12),(3,13),(23,13),(30,13),(3,14),(15,14),(19,15),(27,15),(22,16),(34,16),(5,17),(6,17),(16,17),(27,17),(23,18),(30,18),(12,19),(16,19);
/*!40000 ALTER TABLE `Book_Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `cart_item_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `number` int DEFAULT '1',
  PRIMARY KEY (`cart_item_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,1,1),(2,1,2,2),(3,1,3,3),(4,1,4,4),(5,1,5,5),(6,1,6,6),(7,1,7,7),(8,1,8,8),(9,1,9,9),(10,1,10,10),(11,1,11,11),(12,1,12,12),(13,1,13,13),(14,1,14,14),(15,1,15,15),(16,1,16,16),(17,1,17,17),(18,1,18,18),(19,1,19,19),(20,1,20,20),(21,1,21,21),(22,1,22,22),(23,1,23,23),(24,1,24,24),(25,1,25,25),(26,1,26,26),(31,2,1,1),(32,2,2,2),(33,2,3,3),(34,2,4,4),(35,2,5,5),(36,2,6,6),(37,2,7,7),(38,2,8,8),(39,2,9,9),(40,2,10,10),(41,2,11,11),(42,2,12,12),(43,2,13,13),(44,2,14,14),(45,2,15,15),(46,2,16,16),(47,2,17,17),(48,2,18,18),(49,2,19,19),(50,2,20,20),(51,2,21,21),(52,2,22,22),(53,2,23,23),(54,2,24,24),(55,2,25,25),(56,2,26,26),(57,2,27,27),(58,2,28,28),(59,2,29,29),(60,2,30,30),(63,4,1,1);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `like` int DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
  `comment_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`comment_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comment_like_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_like_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `receiver` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `tel` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'wyx','123','123456789','2024-10-24 04:20:42'),(2,3,'123','123','123','2024-10-31 09:23:36'),(3,4,'123','123','123','2024-10-31 12:03:08'),(4,1,'wyx','123','123','2024-11-16 01:02:42'),(5,3,'1','1','1','2024-11-16 02:07:06'),(6,1,'1','1','1','2024-11-16 02:08:23'),(7,1,'1','1','1','2024-11-16 03:57:59');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_item_id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `book_id` bigint NOT NULL,
  `number` int DEFAULT '1',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,30,30),(2,2,2,1),(3,2,1,3),(4,3,2,1),(5,3,1,1),(6,4,29,29),(7,5,1,3),(8,6,28,28),(9,7,27,27);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tag` (
  `tag_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (13,'人工智能'),(6,'传记'),(15,'区块链'),(5,'历史'),(9,'古典文学'),(10,'外国文学'),(14,'大数据'),(2,'小说'),(11,'技术'),(4,'散文'),(18,'数据分析'),(1,'文学'),(20,'机器学习'),(8,'现代文学'),(19,'算法'),(7,'经典'),(12,'编程'),(16,'网络安全'),(3,'诗歌'),(17,'软件开发');
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `nickname` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `balance` bigint DEFAULT '0',
  `admin` tinyint(1) DEFAULT '0',
  `silence` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'u1','user1','u1@bookstore.com',0,1,0),(2,'u2','user2','u2@bookstore.com',0,1,0),(3,'u3','user3','u3@bookstore.com',0,0,0),(4,'u4','user4','u4@bookstore.com',0,0,0),(5,'u5','user5','u5@bookstore.com',0,0,0),(6,'u6','user6','u6@bookstore.com',0,0,0),(7,'u7','user7','u7@bookstore.com',0,0,0),(8,'u8','user8','u8@bookstore.com',0,0,0),(9,'u9','user9','u9@bookstore.com',0,0,0),(10,'u10','user10','u10@bookstore.com',0,0,0),(11,'u11','user11','u11@bookstore.com',0,0,0),(12,'u12','user12','u12@bookstore.com',0,0,0),(13,'u13','user13','u13@bookstore.com',0,0,0),(14,'u14','user14','u14@bookstore.com',0,0,0),(15,'u15','user15','u15@bookstore.com',0,0,0),(16,'u16','user16','u16@bookstore.com',0,0,0),(17,'u17','user17','u17@bookstore.com',0,0,0),(18,'u18','user18','u18@bookstore.com',0,0,0),(19,'u19','user19','u19@bookstore.com',0,0,0),(20,'u20','user20','u20@bookstore.com',0,0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `user_id` bigint NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_auth_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (1,'123'),(2,'123'),(3,'123'),(4,'123'),(5,'123'),(6,'123'),(7,'123'),(8,'123'),(9,'123'),(10,'123'),(11,'123'),(12,'123'),(13,'123'),(14,'123'),(15,'123'),(16,'123'),(17,'123'),(18,'123'),(19,'123'),(20,'123');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 11:38:05

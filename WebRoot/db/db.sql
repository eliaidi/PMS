/*
SQLyog v10.2 
MySQL - 5.5.15 : Database - pms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pms`;

/*Table structure for table `evaluate_lvl` */

DROP TABLE IF EXISTS `evaluate_lvl`;

CREATE TABLE `evaluate_lvl` (
  `id` int(11) NOT NULL COMMENT '评价等级id',
  `name` varchar(32) NOT NULL COMMENT '评价名称',
  `level` int(11) NOT NULL COMMENT '评价等级的权重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评价等级表';

/*Data for the table `evaluate_lvl` */

insert  into `evaluate_lvl`(`id`,`name`,`level`) values (1,'1级',1),(2,'2级',2),(3,'3级',3),(4,'4级',4),(5,'5级',5);

/*Table structure for table `message_manager_info` */

DROP TABLE IF EXISTS `message_manager_info`;

CREATE TABLE `message_manager_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL COMMENT '发送的消息',
  `receive_user_id` int(11) NOT NULL COMMENT '接收者ID',
  `send_user_id` int(11) NOT NULL COMMENT '发送者ID',
  `is_read` char(1) NOT NULL DEFAULT '0' COMMENT '是否阅读0-未阅读1-已阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户发送的意见信息表';

/*Data for the table `message_manager_info` */

/*Table structure for table `order_product_num_info` */

DROP TABLE IF EXISTS `order_product_num_info`;

CREATE TABLE `order_product_num_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_order_id` int(11) NOT NULL COMMENT '订单表id',
  `product_id` int(11) NOT NULL COMMENT '产品表id',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '实际单价',
  `product_color_id` int(11) DEFAULT NULL COMMENT '产品颜色id',
  `status` int(11) DEFAULT NULL COMMENT '子订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单产品购买数量表';

/*Data for the table `order_product_num_info` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL COMMENT '产品名称',
  `size` varchar(20) DEFAULT NULL COMMENT '大小',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `watt` varchar(10) DEFAULT NULL COMMENT '功率',
  `onhand` int(3) DEFAULT NULL COMMENT '库存数量',
  `weight` varchar(20) DEFAULT NULL COMMENT '宽度',
  `other_param` varchar(20) DEFAULT NULL COMMENT '其他参数',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `class_id` int(11) DEFAULT NULL COMMENT '类别id',
  `image` varchar(256) DEFAULT 'default.jpg' COMMENT '图片地址',
  `area` int(11) DEFAULT '1' COMMENT '产品所在地区',
  `manufacturer` varchar(256) DEFAULT NULL COMMENT '生产厂家',
  `discount` int(11) DEFAULT NULL COMMENT '折扣id',
  `discription` text COMMENT '产品描述',
  `user_id` int(11) DEFAULT NULL COMMENT '录入人id',
  `identification_code` varchar(256) DEFAULT NULL COMMENT '标识码',
  `modification_date` date NOT NULL COMMENT '产品更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`size`,`price`,`watt`,`onhand`,`weight`,`other_param`,`brand_id`,`class_id`,`image`,`area`,`manufacturer`,`discount`,`discription`,`user_id`,`identification_code`,`modification_date`) values (1,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'2222222222222222222222222222222222\r\n222222222222222\r\n2\r\n222222222222222\r\n2222222222222222\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n22222222222222\r\n\r\n\r\n\r\n\r\n55555\r\n\r\n\r\n\r\n\r\n\r\n\r\n666\r\n\r\n\r\n2222222',1,'ABCDEFGHIJK12345678','2012-01-16'),(2,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(3,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(4,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(5,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(6,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(7,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(8,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(9,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(10,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(11,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(12,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(13,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(14,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(15,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(16,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(17,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(18,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(19,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(20,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(21,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(22,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(23,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(24,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(25,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(26,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(27,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(28,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(29,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(30,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(31,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(32,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(33,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(34,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(35,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(36,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(37,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(38,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(39,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(40,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(41,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(42,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(43,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(44,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(45,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(46,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(47,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(48,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(49,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(50,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(51,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(52,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(53,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(54,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(55,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(56,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(57,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(58,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(59,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(60,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(61,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(62,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(63,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(64,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(65,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(66,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(67,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(68,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(69,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(70,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(71,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(72,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(73,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(74,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(75,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(76,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(77,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(78,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(79,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(80,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(81,'14寸屏幕','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(82,'康佳彩电','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(83,'康佳彩电2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(84,'康佳彩电3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(85,'三星显示器','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(86,'三星显示器2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(87,'三星显示器3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(88,'联想电脑','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(89,'联想电脑2','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16'),(90,'联想电脑3','100','100.00','350W',11,'2012','225215',1,1,'product/default.jpg',1,'Made In China',6,'这是产品描述',1,'ABCDEFGHIJK12345678','2012-01-16');

/*Table structure for table `product_area` */

DROP TABLE IF EXISTS `product_area`;

CREATE TABLE `product_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '所在地id',
  `name` varchar(32) DEFAULT NULL COMMENT '所在地名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='所在地表';

/*Data for the table `product_area` */

insert  into `product_area`(`id`,`name`) values (1,'南京'),(2,'北京'),(3,'长沙'),(4,'上海');

/*Table structure for table `product_brand` */

DROP TABLE IF EXISTS `product_brand`;

CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(20) NOT NULL COMMENT '品牌名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `product_brand` */

insert  into `product_brand`(`id`,`name`) values (1,'康佳'),(2,'LTC'),(3,'LG'),(4,'lenovo');

/*Table structure for table `product_class` */

DROP TABLE IF EXISTS `product_class`;

CREATE TABLE `product_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `name` varchar(20) NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `product_class` */

insert  into `product_class`(`id`,`name`) values (1,'家用电器'),(2,'电脑'),(3,'微波炉'),(4,'电视机'),(5,'液晶显示器'),(6,'台式机');

/*Table structure for table `product_color` */

DROP TABLE IF EXISTS `product_color`;

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '颜色id',
  `name` varchar(5) NOT NULL COMMENT '颜色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `product_color` */

insert  into `product_color`(`id`,`name`) values (1,'蓝色'),(2,'绿色'),(3,'红色'),(4,'棕色'),(5,'军绿'),(6,'卡其色'),(7,'黑色');

/*Table structure for table `product_color_rec` */

DROP TABLE IF EXISTS `product_color_rec`;

CREATE TABLE `product_color_rec` (
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `color_id` int(11) NOT NULL COMMENT '产品名称',
  PRIMARY KEY (`product_id`,`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品与颜色关联表';

/*Data for the table `product_color_rec` */

insert  into `product_color_rec`(`product_id`,`color_id`) values (1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7);

/*Table structure for table `product_comment` */

DROP TABLE IF EXISTS `product_comment`;

CREATE TABLE `product_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品评价id',
  `content` varchar(256) NOT NULL COMMENT '产品评价内容',
  `user_id` int(11) NOT NULL COMMENT '评论人id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `evaluate_lvl_id` int(11) DEFAULT NULL COMMENT '评价等级id',
  `comment_date` date DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品评价表';

/*Data for the table `product_comment` */

insert  into `product_comment`(`id`,`content`,`user_id`,`product_id`,`evaluate_lvl_id`,`comment_date`) values (1,'好',6,1,1,'2013-01-22'),(2,'suju,你的博客上线了没？昨天不是说上线吗？发出来',6,1,1,'2013-01-10'),(3,'卡了,vps',6,1,1,'2013-01-10'),(4,'DEl,求设计啊、、、、、、',6,1,1,'2013-01-10'),(5,'漫步要当老板了，卧槽',6,1,1,'2013-01-10');

/*Table structure for table `product_discount` */

DROP TABLE IF EXISTS `product_discount`;

CREATE TABLE `product_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '折扣id',
  `discount` decimal(4,2) DEFAULT NULL COMMENT '折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `product_discount` */

insert  into `product_discount`(`id`,`discount`) values (1,'0.50'),(2,'0.60'),(3,'0.98'),(4,'0.95'),(5,'0.90'),(6,'0.85'),(7,'0.80'),(8,'0.75'),(9,'0.70');

/*Table structure for table `recommend_product` */

DROP TABLE IF EXISTS `recommend_product`;

CREATE TABLE `recommend_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '推荐id',
  `product_id` int(11) NOT NULL COMMENT '推荐产品id',
  `is_index_recommend` tinyint(1) DEFAULT '0' COMMENT '0-否,1-是,是否首页推荐',
  `is_led_recommend` tinyint(1) DEFAULT '0' COMMENT '0-否,1-是,是否广告列表推荐',
  `update_date` date NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='推荐产品表';

/*Data for the table `recommend_product` */

insert  into `recommend_product`(`id`,`product_id`,`is_index_recommend`,`is_led_recommend`,`update_date`) values (1,10,1,1,'2013-01-24'),(2,11,1,1,'2013-01-24'),(3,12,1,1,'2013-01-22'),(4,13,1,1,'2013-01-01'),(5,14,1,1,'2013-01-30'),(6,15,1,1,'2013-01-15');

/*Table structure for table `register_treaty_info` */

DROP TABLE IF EXISTS `register_treaty_info`;

CREATE TABLE `register_treaty_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '协议标题',
  `content` text NOT NULL COMMENT '协议内容',
  `update_date` date NOT NULL COMMENT '修订时间',
  `is_using` tinyint(1) NOT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='网站相关协议信息表';

/*Data for the table `register_treaty_info` */

insert  into `register_treaty_info`(`id`,`name`,`content`,`update_date`,`is_using`) values (1,'注册协议条款','一、总则<br>\r\n1.1 家电商城网的所有权和运营权归湖南省冷水江市XXXX有限公司所有。<br> \r\n1.2 用户在注册之前，应当仔细阅读本协议，并同意遵守本协议后方可成为注册用户。一旦注册成功，则用户与保宝网之间自动形成协议关系，用户应当受本协议的约束。用户在使用特殊的服务或产品时，应当同意接受相关协议后方能使用。 <br>\r\n1.3 本协议则可由家电商城网随时更新，用户应当及时关注并同意本站不承担通知义务。本站的通知、公告、声明或其它类似内容是本协议的一部分。<br>\r\n二、服务内容<br>\r\n2.1 家电商城网的具体内容由本站根据实际情况提供。 <br>\r\n2.2 本站仅提供相关的网络服务，除此之外与相关网络服务有关的设备(如个人电脑、手机、及其他与接入互联网或移动网有关的装置)及所需的费用(如为接入互联网而支付的电话费及上网费、为使用移动网而支付的手机费)均应由用户自行负担。<br>\r\n三、用户帐号<br>\r\n3.1 经本站注册系统完成注册程序并通过身份认证的用户即成为正式用户，可以获得本站规定用户所应享有的一切权限；未经认证仅享有本站规定的部分会员权限。保宝网有权对会员的权限设计进行变更。 <br>\r\n3.2 用户只能按照注册要求使用真实姓名，及身份证号注册。用户有义务保证密码和帐号的安全，用户利用该密码和帐号所进行的一切活动引起的任何损失或损害，由用户自行承担全部责任，本站不承担任何责任。如用户发现帐号遭到未授权的使用或发生其他任何安全问题，应立即修改帐号密码并妥善保管，如有必要，请通知本站。因黑客行为或用户的保管疏忽导致帐号非法使用，本站不承担任何责任。<br>\r\n四、使用规则<br>\r\n4.1 遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络著作权纠纷案件适用法律若干问题的解释(法释[2004]1号)》、《全国人大常委会关于维护互联网安全的决定》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和知识产权的法律和法规、实施办法。 \r\n4.2 用户对其自行发表、上传或传送的内容负全部责任，所有用户不得在本站任何页面发布、转载、传送含有下列内容之一的信息，否则本站有权自行处理并不通知用户：\r\n(1)违反宪法确定的基本原则的； \r\n(2)危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的； \r\n(3)损害国家荣誉和利益的； \r\n(4)煽动民族仇恨、民族歧视，破坏民族团结的； \r\n(5)破坏国家宗教政策，宣扬邪教和封建迷信的； \r\n(6)散布谣言，扰乱社会秩序，破坏社会稳定的；\r\n(7)散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的； \r\n(8)侮辱或者诽谤他人，侵害他人合法权益的； \r\n(9)煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的； \r\n(10)以非法民间组织名义活动的；\r\n(11)含有法律、行政法规禁止的其他内容的。\r\n4.3 用户承诺对其发表或者上传于本站的所有信息(即属于《中华人民共和国著作权法》规定的作品，包括但不限于文字、图片、音乐、电影、表演和录音录像制品和电脑程序等)均享有完整的知识产权，或者已经得到相关权利人的合法授权；如用户违反本条规定造成本站被第三人索赔的，用户应全额补偿本站一切费用(包括但不限于各种赔偿费、诉讼代理费及为此支出的其它合理费用)； \r\n4.4 当第三方认为用户发表或者上传于本站的信息侵犯其权利，并根据《信息网络传播权保护条例》或者相关法律规定向本站发送权利通知书时，用户同意本站可以自行判断决定删除涉嫌侵权信息，除非用户提交书面证据材料排除侵权的可能性，本站将不会自动恢复上述删除的信息；\r\n(1)不得为任何非法目的而使用网络服务系统； \r\n(2)遵守所有与网络服务有关的网络协议、规定和程序； (3)不得利用本站进行任何可能对互联网的正常运转造成不利影响的行为； \r\n(4)不得利用本站进行任何不利于本站的行为。\r\n4.5 如用户在使用网络服务时违反上述任何规定，本站有权要求用户改正或直接采取一切必要的措施(包括但不限于删除用户张贴的内容、暂停或终止用户使用网络服务的权利)以减轻用户不当行为而造成的影响。\r\n五、隐私保护\r\n5.1 本站不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在本站的非公开内容，但下列情况除外：\r\n(1)事先获得用户的明确授权； \r\n(2)根据有关的法律法规要求；\r\n(3)按照相关政府主管部门的要求；\r\n(4)为维护社会公众的利益。\r\n5.2 本站可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与本站同等的保护用户隐私的责任，则本站有权将用户的注册资料等提供给该第三方。\r\n5.3 在不透露单个用户隐私资料的前提下，本站有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。\r\n六、版权声明\r\n6.1 本站的文字、图片、音频、视频等版权均归永兴元科技有限公司享有或与作者共同享有，未经本站许可，不得任意转载。 \r\n6.2 本站特有的标识、版面设计、编排方式等版权均属永兴元科技有限公司享有，未经本站许可，不得任意复制或转载。 \r\n6.3 使用本站的任何内容均应注明“来源于保宝网”及署上作者姓名，按法律规定需要支付稿酬的，应当通知本站及作者及支付稿酬，并独立承担一切法律责任。\r\n6.4 本站享有所有作品用于其它用途的优先权，包括但不限于网站、电子杂志、平面出版等，但在使用前会通知作者，并按同行业的标准支付稿酬。\r\n6.5 本站所有内容仅代表作者自己的立场和观点，与本站无关，由作者本人承担一切法律责任。 \r\n6.6 恶意转载本站内容的，本站保留将其诉诸法律的权利。\r\n七、责任声明\r\n7.1 用户明确同意其使用本站网络服务所存在的风险及一切后果将完全由用户本人承担，保宝网对此不承担任何责任。 \r\n7.2 本站无法保证网络服务一定能满足用户的要求，也不保证网络服务的及时性、安全性、准确性。 \r\n7.3 本站不保证为方便用户而设置的外部链接的准确性和完整性，同时，对于该等外部链接指向的不由本站实际控制的任何网页上的内容，本站不承担任何责任。\r\n7.4 对于因不可抗力或本站不能控制的原因造成的网络服务中断或其它缺陷，本站不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。\r\n7.5 对于站向用户提供的下列产品或者服务的质量缺陷本身及其引发的任何损失，本站无需承担任何责任：\r\n(1)本站向用户免费提供的各项网络服务； \r\n(2)本站向用户赠送的任何产品或者服务。\r\n7.6 本站有权于任何时间暂时或永久修改或终止本服务(或其任何部分)，而无论其通知与否，本站对用户和任何第三人均无需承担任何责任。\r\n八、附则\r\n8.1 本协议的订立、执行和解释及争议的解决均应适用中华人民共和国法律。 \r\n8.2 如本协议中的任何条款无论因何种原因完全或部分无效或不具有执行力，本协议的其余条款仍应有效并且有约束力。\r\n8.3 本协议解释权及修订权归湖南省冷水江市XXXX有限公司所有。','2013-01-28',1);

/*Table structure for table `t_dictionary` */

DROP TABLE IF EXISTS `t_dictionary`;

CREATE TABLE `t_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dictionary_name` varchar(256) NOT NULL COMMENT '字段中文名',
  `dictionary_key` varchar(32) NOT NULL COMMENT '字典KEY',
  `dictionary_value` int(11) NOT NULL COMMENT '字典VALUE',
  `dictionary_content` varchar(256) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_dictionary` */

insert  into `t_dictionary`(`id`,`dictionary_name`,`dictionary_key`,`dictionary_value`,`dictionary_content`) values (1,'未下单','order_status',0,'主订单状态'),(2,'待确认收货','order_status',1,'主订单状态'),(3,'待评价','order_status',2,'主订单状态'),(4,'未发货','son_order_status',1,'子订单状态'),(5,'已发货','son_order_status',2,'子订单状态'),(6,'已收货','son_order_status',3,'子订单状态'),(7,'男','sex',1,'性别'),(8,'女','sex',2,'性别'),(9,'未阅读','is_read',0,'是否阅读'),(10,'已阅读','is_read',1,'是否阅读'),(11,'是','is_using',1,'是否启用'),(12,'否','is_using',0,'是否启用');

/*Table structure for table `t_power` */

DROP TABLE IF EXISTS `t_power`;

CREATE TABLE `t_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '等级名称',
  `imagesPath` varchar(256) DEFAULT NULL COMMENT '等级图片',
  `level` int(11) DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_power` */

insert  into `t_power`(`id`,`name`,`imagesPath`,`level`) values (1,'1级','images\\level\\0.png',1);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `sex` int(1) DEFAULT NULL COMMENT '性别 0-女，1-男',
  `securityPassword` varchar(20) NOT NULL COMMENT '安全密码',
  `email` varchar(30) NOT NULL COMMENT '电子邮箱',
  `phone` varchar(20) NOT NULL COMMENT '手机号码',
  `imagesPath` varchar(50) DEFAULT 'images/head/default.png' COMMENT '头像路径',
  `freeze` char(1) NOT NULL DEFAULT '0' COMMENT '是否冻结',
  `powerid` int(3) DEFAULT NULL COMMENT '权限',
  `real_name` varchar(64) NOT NULL COMMENT '真实姓名',
  `identity_card` varchar(32) NOT NULL COMMENT '身份证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`username`,`password`,`age`,`sex`,`securityPassword`,`email`,`phone`,`imagesPath`,`freeze`,`powerid`,`real_name`,`identity_card`) values (1,'admin','123456',NULL,0,'10028','41989824@qq.com','15651775791','images/head/1_liaote.jpg','0',1,'asdasd','43250211911'),(6,'liaote','MTIzNDU2',22,1,'12344555555555555','41989824@qq.com','15651775791','images/head/1_liaote.jpg','0',1,'廖陈特','432502199102070038'),(7,'liaochente','MTIzNDU2',12,1,'12345678912','1231232@qq.com','15651775791','images/head/1_liaote.jpg','0',1,'廖陈特','432502199102070038');

/*Table structure for table `user_order_info` */

DROP TABLE IF EXISTS `user_order_info`;

CREATE TABLE `user_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_number` varchar(64) NOT NULL COMMENT '订单编号',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单开始时间',
  `end_date` timestamp NULL DEFAULT NULL COMMENT '订单完成时间',
  `send_date` timestamp NULL DEFAULT NULL COMMENT '发货时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '订单状态:0-交易状态，1-待确认状态,2-确认收货',
  `user_id` int(11) NOT NULL COMMENT '下订单用户id',
  `consignee_name` varchar(18) NOT NULL COMMENT '收货人姓名',
  `consignee_address` varchar(256) NOT NULL COMMENT '收货人地址',
  `consignee_phone` varchar(32) NOT NULL COMMENT '联系电话',
  `shipping_method` int(1) DEFAULT NULL COMMENT '运送方式id',
  `user_message` varchar(500) DEFAULT NULL COMMENT '买家留言',
  `postcode` int(11) NOT NULL COMMENT '邮政编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

/*Data for the table `user_order_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

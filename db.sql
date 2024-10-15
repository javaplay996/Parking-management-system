/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tingchechangguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tingchechangguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tingchechangguanlixitong`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称  Search111 ',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_photo` varchar(200) DEFAULT NULL COMMENT '车辆照片',
  `cheliang_paizhao` varchar(200) DEFAULT NULL COMMENT '车辆牌照',
  `cheliang_file` varchar(200) DEFAULT NULL COMMENT '车牌',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_content` longtext COMMENT '车辆介绍 ',
  `cheliang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`yonghu_id`,`cheliang_name`,`cheliang_uuid_number`,`cheliang_photo`,`cheliang_paizhao`,`cheliang_file`,`cheliang_types`,`cheliang_content`,`cheliang_delete`,`insert_time`,`create_time`) values (1,2,'车辆名称1','1683514689429','upload/cheliang1.jpg','车辆牌照1','upload/file.rar',2,'车辆介绍1',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(2,3,'车辆名称2','1683514689371','upload/cheliang2.jpg','车辆牌照2','upload/file.rar',4,'车辆介绍2',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(3,2,'车辆名称3','1683514689414','upload/cheliang3.jpg','车辆牌照3','upload/file.rar',3,'车辆介绍3',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(4,3,'车辆名称4','1683514689370','upload/cheliang4.jpg','车辆牌照4','upload/file.rar',2,'车辆介绍4',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(5,1,'车辆名称5','1683514689385','upload/cheliang5.jpg','车辆牌照5','upload/file.rar',4,'车辆介绍5',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(6,1,'车辆名称6','1683514689428','upload/cheliang6.jpg','车辆牌照6','upload/file.rar',4,'车辆介绍6',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(7,2,'车辆名称7','1683514689433','upload/cheliang7.jpg','车辆牌照7','upload/file.rar',2,'车辆介绍7',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(8,2,'车辆名称8','1683514689450','upload/cheliang8.jpg','车辆牌照8','upload/file.rar',1,'车辆介绍8',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(9,3,'车辆名称9','1683514689377','upload/cheliang9.jpg','车辆牌照9','upload/file.rar',2,'车辆介绍9',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(10,1,'车辆名称10','1683514689430','upload/cheliang10.jpg','车辆牌照10','upload/file.rar',1,'车辆介绍10',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(11,2,'车辆名称11','1683514689447','upload/cheliang11.jpg','车辆牌照11','upload/file.rar',3,'车辆介绍11',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(12,3,'车辆名称12','1683514689438','upload/cheliang12.jpg','车辆牌照12','upload/file.rar',1,'车辆介绍12',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(13,3,'车辆名称13','1683514689430','upload/cheliang13.jpg','车辆牌照13','upload/file.rar',2,'车辆介绍13',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(14,1,'车辆名称14','1683514689391','upload/cheliang14.jpg','车辆牌照14','upload/file.rar',2,'车辆介绍14',1,'2023-05-08 10:58:09','2023-05-08 10:58:09');

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chewei_name` varchar(200) DEFAULT NULL COMMENT '车位名称  Search111 ',
  `chewei_uuid_number` varchar(200) DEFAULT NULL COMMENT '车位编号',
  `chewei_photo` varchar(200) DEFAULT NULL COMMENT '车位照片',
  `chewei_address` varchar(200) DEFAULT NULL COMMENT '车位地点',
  `chewei_tingchefei` decimal(10,2) DEFAULT NULL COMMENT '金额/小时 ',
  `chewei_types` int(11) DEFAULT NULL COMMENT '车位类型 Search111',
  `chewei_content` longtext COMMENT '车位介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chewei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='车位';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`chewei_name`,`chewei_uuid_number`,`chewei_photo`,`chewei_address`,`chewei_tingchefei`,`chewei_types`,`chewei_content`,`shangxia_types`,`chewei_delete`,`insert_time`,`create_time`) values (1,'车位名称1','1683514689947','upload/chewei1.jpg','车位地点1','2.00',2,'车位介绍1',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(2,'车位名称2','1683514689952','upload/chewei2.jpg','车位地点2','2.00',4,'车位介绍2',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(3,'车位名称3','1683514689879','upload/chewei3.jpg','车位地点3','2.00',4,'车位介绍3',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(4,'车位名称4','1683514689915','upload/chewei4.jpg','车位地点4','2.00',1,'车位介绍4',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(5,'车位名称5','1683514689954','upload/chewei5.jpg','车位地点5','2.00',2,'车位介绍5',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(6,'车位名称6','1683514689922','upload/chewei6.jpg','车位地点6','2.00',4,'车位介绍6',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(7,'车位名称7','1683514689942','upload/chewei7.jpg','车位地点7','2.00',4,'车位介绍7',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(8,'车位名称8','1683514689892','upload/chewei8.jpg','车位地点8','2.00',1,'车位介绍8',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(9,'车位名称9','1683514689902','upload/chewei9.jpg','车位地点9','2.00',1,'车位介绍9',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(10,'车位名称10','1683514689947','upload/chewei10.jpg','车位地点10','2.00',4,'车位介绍10',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(11,'车位名称11','1683514689872','upload/chewei11.jpg','车位地点11','2.00',1,'车位介绍11',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(12,'车位名称12','1683514689895','upload/chewei12.jpg','车位地点12','2.00',2,'车位介绍12',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(13,'车位名称13','1683514689915','upload/chewei13.jpg','车位地点13','2.00',4,'车位介绍13',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(14,'车位名称14','1683514689936','upload/chewei14.jpg','车位地点14','2.00',3,'车位介绍14',1,1,'2023-05-08 10:58:09','2023-05-08 10:58:09');

/*Table structure for table `chewei_yuyue` */

DROP TABLE IF EXISTS `chewei_yuyue`;

CREATE TABLE `chewei_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `chewei_id` int(11) DEFAULT NULL COMMENT '车位',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `chewei_yuyue_text` longtext COMMENT '报名理由',
  `chewei_yuyue_file` varchar(200) DEFAULT NULL COMMENT '车牌',
  `chewei_yuyue_shichang` int(11) DEFAULT NULL COMMENT '预计停车时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `chewei_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `chewei_yuyue_yesno_text` longtext COMMENT '审核回复',
  `chewei_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `chewei_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='车位预订';

/*Data for the table `chewei_yuyue` */

insert  into `chewei_yuyue`(`id`,`chewei_yuyue_uuid_number`,`chewei_id`,`cheliang_id`,`chewei_yuyue_text`,`chewei_yuyue_file`,`chewei_yuyue_shichang`,`insert_time`,`chewei_yuyue_yesno_types`,`chewei_yuyue_yesno_text`,`chewei_yuyue_shenhe_time`,`chewei_yuyue_time`,`create_time`) values (1,'1683514689952',1,1,'报名理由1','upload/file.rar',265,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(2,'1683514689910',2,2,'报名理由2','upload/file.rar',369,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(3,'1683514689915',3,3,'报名理由3','upload/file.rar',380,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(4,'1683514689908',4,4,'报名理由4','upload/file.rar',40,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(5,'1683514689952',5,5,'报名理由5','upload/file.rar',178,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(6,'1683514689942',6,6,'报名理由6','upload/file.rar',290,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(7,'1683514689893',7,7,'报名理由7','upload/file.rar',267,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(8,'1683514689934',8,8,'报名理由8','upload/file.rar',454,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(9,'1683514689881',9,9,'报名理由9','upload/file.rar',486,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(10,'1683514689958',10,10,'报名理由10','upload/file.rar',138,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(11,'1683514689898',11,11,'报名理由11','upload/file.rar',45,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(12,'1683514689943',12,12,'报名理由12','upload/file.rar',43,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(13,'1683514689912',13,13,'报名理由13','upload/file.rar',129,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(14,'1683514689930',14,14,'报名理由14','upload/file.rar',485,'2023-05-08 10:58:09',1,NULL,NULL,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(15,'1683516764066',14,14,'停车','upload/1683516772125.jpg',3,'2023-05-08 11:33:07',6,'好的','2023-05-08 11:33:30','2023-05-08 08:00:00','2023-05-08 11:33:07'),(16,'1683522262871',14,6,'停车','upload/1683522271341.jpg',8,'2023-05-08 13:04:37',6,'好','2023-05-08 13:05:43','2023-05-08 00:00:00','2023-05-08 13:04:37');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-08 10:57:58'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-08 10:57:58'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-08 10:57:58'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-08 10:57:58'),(5,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2023-05-08 10:57:58'),(6,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2023-05-08 10:57:58'),(7,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2023-05-08 10:57:58'),(8,'cheliang_types','车辆类型',4,'车辆类型4',NULL,NULL,'2023-05-08 10:57:58'),(9,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-08 10:57:58'),(10,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-08 10:57:58'),(11,'chewei_types','车位类型',1,'车位类型1',NULL,NULL,'2023-05-08 10:57:58'),(12,'chewei_types','车位类型',2,'车位类型2',NULL,NULL,'2023-05-08 10:57:59'),(13,'chewei_types','车位类型',3,'车位类型3',NULL,NULL,'2023-05-08 10:57:59'),(14,'chewei_types','车位类型',4,'车位类型4',NULL,NULL,'2023-05-08 10:57:59'),(15,'chewei_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-05-08 10:57:59'),(16,'chewei_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-05-08 10:57:59'),(17,'chewei_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-05-08 10:57:59'),(18,'chewei_yuyue_yesno_types','报名状态',4,'入库',NULL,NULL,'2023-05-08 10:57:59'),(19,'chewei_yuyue_yesno_types','报名状态',5,'出库',NULL,NULL,'2023-05-08 10:57:59'),(20,'chewei_yuyue_yesno_types','报名状态',6,'已完成',NULL,NULL,'2023-05-08 10:57:59'),(21,'weigui_types','违规类型',1,'违规类型1',NULL,NULL,'2023-05-08 10:57:59'),(22,'weigui_types','违规类型',2,'违规类型2',NULL,NULL,'2023-05-08 10:57:59'),(23,'weigui_types','违规类型',3,'违规类型3',NULL,NULL,'2023-05-08 10:57:59'),(24,'weigui_types','违规类型',4,'违规类型4',NULL,NULL,'2023-05-08 10:57:59');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-05-08 10:58:09','公告详情1','2023-05-08 10:58:09'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-05-08 10:58:09','公告详情2','2023-05-08 10:58:09'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-08 10:58:09','公告详情3','2023-05-08 10:58:09'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-05-08 10:58:09','公告详情4','2023-05-08 10:58:09'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-05-08 10:58:09','公告详情5','2023-05-08 10:58:09'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-08 10:58:09','公告详情6','2023-05-08 10:58:09'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-05-08 10:58:09','公告详情7','2023-05-08 10:58:09'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-05-08 10:58:09','公告详情8','2023-05-08 10:58:09'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-05-08 10:58:09','公告详情9','2023-05-08 10:58:09'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-08 10:58:09','公告详情10','2023-05-08 10:58:09'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-05-08 10:58:09','公告详情11','2023-05-08 10:58:09'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-05-08 10:58:09','公告详情12','2023-05-08 10:58:09'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-05-08 10:58:09','公告详情13','2023-05-08 10:58:09'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-05-08 10:58:09','公告详情14','2023-05-08 10:58:09');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','1cor2frz61llfitaasgn74wwnp55nxkp','2023-05-08 10:59:09','2023-05-08 14:04:02'),(2,1,'admin','users','管理员','nhbkdvmedcqy4rqmxnqdz7ndyoct8f35','2023-05-08 11:04:09','2023-05-08 14:06:36'),(3,2,'a2','yonghu','用户','vzuh0tozbd1zh5fmhmm3uxz8qwh7j004','2023-05-08 11:04:44','2023-05-08 12:04:45'),(4,1,'a1','yuangong','员工','1wik0vgrfyjn58s60ppvzmtqzc2mwetk','2023-05-08 13:01:56','2023-05-08 14:05:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-08 10:57:58');

/*Table structure for table `weigui` */

DROP TABLE IF EXISTS `weigui`;

CREATE TABLE `weigui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `weigui_name` varchar(200) DEFAULT NULL COMMENT '违规名称  Search111 ',
  `weigui_uuid_number` varchar(200) DEFAULT NULL COMMENT '违规编号',
  `weigui_photo` varchar(200) DEFAULT NULL COMMENT '违规照片',
  `weigui_address` varchar(200) DEFAULT NULL COMMENT '违规地点',
  `weigui_types` int(11) DEFAULT NULL COMMENT '违规类型 Search111',
  `weigui_content` longtext COMMENT '违规介绍 ',
  `weigui_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='违规';

/*Data for the table `weigui` */

insert  into `weigui`(`id`,`cheliang_id`,`weigui_name`,`weigui_uuid_number`,`weigui_photo`,`weigui_address`,`weigui_types`,`weigui_content`,`weigui_delete`,`insert_time`,`create_time`) values (1,1,'违规名称1','1683514689957','upload/weigui1.jpg','违规地点1',2,'违规介绍1',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(2,2,'违规名称2','1683514689944','upload/weigui2.jpg','违规地点2',2,'违规介绍2',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(3,3,'违规名称3','1683514689937','upload/weigui3.jpg','违规地点3',3,'违规介绍3',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(4,4,'违规名称4','1683514689890','upload/weigui4.jpg','违规地点4',2,'违规介绍4',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(5,5,'违规名称5','1683514689926','upload/weigui5.jpg','违规地点5',3,'违规介绍5',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(6,6,'违规名称6','1683514689953','upload/weigui6.jpg','违规地点6',3,'违规介绍6',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(7,7,'违规名称7','1683514689925','upload/weigui7.jpg','违规地点7',1,'违规介绍7',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(8,8,'违规名称8','1683514689957','upload/weigui8.jpg','违规地点8',3,'违规介绍8',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(9,9,'违规名称9','1683514689949','upload/weigui9.jpg','违规地点9',2,'违规介绍9',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(10,10,'违规名称10','1683514689970','upload/weigui10.jpg','违规地点10',3,'违规介绍10',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(11,11,'违规名称11','1683514689955','upload/weigui11.jpg','违规地点11',1,'违规介绍11',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(12,12,'违规名称12','1683514689934','upload/weigui12.jpg','违规地点12',4,'违规介绍12',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(13,13,'违规名称13','1683514689897','upload/weigui13.jpg','违规地点13',2,'违规介绍13',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(14,14,'违规名称14','1683514689931','upload/weigui14.jpg','违规地点14',2,'违规介绍14',1,'2023-05-08 10:58:09','2023-05-08 10:58:09'),(15,14,'是','1683515052796','/upload/1683515070770.jpg','v',2,'<p> 发多少</p>',2,'2023-05-08 11:04:31','2023-05-08 11:04:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','1683514689879','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','728.52','2023-05-08 10:58:09'),(2,'a2','123456','1683514689939','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','465.28','2023-05-08 10:58:09'),(3,'a3','123456','1683514689931','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','790.09','2023-05-08 10:58:09');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`create_time`) values (1,'a1','123456','1683514689926','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',2,'1@qq.com','2023-05-08 10:58:09'),(2,'a2','123456','1683514689936','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',1,'2@qq.com','2023-05-08 10:58:09'),(3,'a3','123456','1683514689926','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,'3@qq.com','2023-05-08 10:58:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

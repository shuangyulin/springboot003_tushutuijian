/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootxs5o6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootxs5o6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootxs5o6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootxs5o6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootxs5o6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootxs5o6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (91,'2021-03-05 14:09:54',1,1,'评论内容1','回复内容1'),(92,'2021-03-05 14:09:54',2,2,'评论内容2','回复内容2'),(93,'2021-03-05 14:09:54',3,3,'评论内容3','回复内容3'),(94,'2021-03-05 14:09:54',4,4,'评论内容4','回复内容4'),(95,'2021-03-05 14:09:54',5,5,'评论内容5','回复内容5'),(96,'2021-03-05 14:09:54',6,6,'评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-03-05 14:09:54',1,'用户名1','留言内容1','回复内容1'),(82,'2021-03-05 14:09:54',2,'用户名2','留言内容2','回复内容2'),(83,'2021-03-05 14:09:54',3,'用户名3','留言内容3','回复内容3'),(84,'2021-03-05 14:09:54',4,'用户名4','留言内容4','回复内容4'),(85,'2021-03-05 14:09:54',5,'用户名5','留言内容5','回复内容5'),(86,'2021-03-05 14:09:54',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='好书推荐';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-03-05 14:09:54','标题1','简介1','http://localhost:8080/springbootxs5o6/upload/news_picture1.jpg','内容1'),(72,'2021-03-05 14:09:54','标题2','简介2','http://localhost:8080/springbootxs5o6/upload/news_picture2.jpg','内容2'),(73,'2021-03-05 14:09:54','标题3','简介3','http://localhost:8080/springbootxs5o6/upload/news_picture3.jpg','内容3'),(74,'2021-03-05 14:09:54','标题4','简介4','http://localhost:8080/springbootxs5o6/upload/news_picture4.jpg','内容4'),(75,'2021-03-05 14:09:54','标题5','简介5','http://localhost:8080/springbootxs5o6/upload/news_picture5.jpg','内容5'),(76,'2021-03-05 14:09:54','标题6','简介6','http://localhost:8080/springbootxs5o6/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tuihuantushu` */

DROP TABLE IF EXISTS `tuihuantushu`;

CREATE TABLE `tuihuantushu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `tuihuanleixing` varchar(200) DEFAULT NULL COMMENT '退换类型',
  `tuihuanyuanyin` longtext COMMENT '退换原因',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='退换图书';

/*Data for the table `tuihuantushu` */

insert  into `tuihuantushu`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`zuozhe`,`chubanshe`,`shuliang`,`xuehao`,`tuihuanleixing`,`tuihuanyuanyin`,`riqi`,`sfsh`,`shhf`) values (51,'2021-03-05 14:09:54','图书编号1','图书名称1','作者1','出版社1','数量1','学号1','退书','退换原因1','2021-03-05','是',''),(52,'2021-03-05 14:09:54','图书编号2','图书名称2','作者2','出版社2','数量2','学号2','退书','退换原因2','2021-03-05','是',''),(53,'2021-03-05 14:09:54','图书编号3','图书名称3','作者3','出版社3','数量3','学号3','退书','退换原因3','2021-03-05','是',''),(54,'2021-03-05 14:09:54','图书编号4','图书名称4','作者4','出版社4','数量4','学号4','退书','退换原因4','2021-03-05','是',''),(55,'2021-03-05 14:09:54','图书编号5','图书名称5','作者5','出版社5','数量5','学号5','退书','退换原因5','2021-03-05','是',''),(56,'2021-03-05 14:09:54','图书编号6','图书名称6','作者6','出版社6','数量6','学号6','退书','退换原因6','2021-03-05','是','');

/*Table structure for table `tushufenlei` */

DROP TABLE IF EXISTS `tushufenlei`;

CREATE TABLE `tushufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleibie` varchar(200) DEFAULT NULL COMMENT '图书类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='图书分类';

/*Data for the table `tushufenlei` */

insert  into `tushufenlei`(`id`,`addtime`,`tushuleibie`) values (21,'2021-03-05 14:09:54','图书类别1'),(22,'2021-03-05 14:09:54','图书类别2'),(23,'2021-03-05 14:09:54','图书类别3'),(24,'2021-03-05 14:09:54','图书类别4'),(25,'2021-03-05 14:09:54','图书类别5'),(26,'2021-03-05 14:09:54','图书类别6');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleibie` varchar(200) DEFAULT NULL COMMENT '图书类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleibie`,`tupian`,`zuozhe`,`chubanshe`,`shuliang`,`xiangqing`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-03-05 14:09:54','图书编号1','图书名称1','图书类别1','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian1.jpg','作者1','出版社1',1,'详情1',1,1,'2021-03-05 14:09:54',1),(32,'2021-03-05 14:09:54','图书编号2','图书名称2','图书类别2','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian2.jpg','作者2','出版社2',2,'详情2',2,2,'2021-03-05 14:09:54',2),(33,'2021-03-05 14:09:54','图书编号3','图书名称3','图书类别3','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian3.jpg','作者3','出版社3',3,'详情3',3,3,'2021-03-05 14:09:54',3),(34,'2021-03-05 14:09:54','图书编号4','图书名称4','图书类别4','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian4.jpg','作者4','出版社4',4,'详情4',4,4,'2021-03-05 14:09:54',4),(35,'2021-03-05 14:09:54','图书编号5','图书名称5','图书类别5','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian5.jpg','作者5','出版社5',5,'详情5',5,5,'2021-03-05 14:09:54',5),(36,'2021-03-05 14:09:54','图书编号6','图书名称6','图书类别6','http://localhost:8080/springbootxs5o6/upload/tushuxinxi_tupian6.jpg','作者6','出版社6',6,'详情6',6,6,'2021-03-05 14:09:54',6);

/*Table structure for table `tushuyuyue` */

DROP TABLE IF EXISTS `tushuyuyue`;

CREATE TABLE `tushuyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushuleibie` varchar(200) DEFAULT NULL COMMENT '图书类别',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='图书预约';

/*Data for the table `tushuyuyue` */

insert  into `tushuyuyue`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`tushuleibie`,`zuozhe`,`chubanshe`,`shuliang`,`xuehao`,`xueshengxingming`,`lianxidianhua`,`shenqingriqi`,`sfsh`,`shhf`) values (41,'2021-03-05 14:09:54','图书编号1','图书名称1','图书类别1','作者1','出版社1','数量1','学号1','学生姓名1','联系电话1','2021-03-05','是',''),(42,'2021-03-05 14:09:54','图书编号2','图书名称2','图书类别2','作者2','出版社2','数量2','学号2','学生姓名2','联系电话2','2021-03-05','是',''),(43,'2021-03-05 14:09:54','图书编号3','图书名称3','图书类别3','作者3','出版社3','数量3','学号3','学生姓名3','联系电话3','2021-03-05','是',''),(44,'2021-03-05 14:09:54','图书编号4','图书名称4','图书类别4','作者4','出版社4','数量4','学号4','学生姓名4','联系电话4','2021-03-05','是',''),(45,'2021-03-05 14:09:54','图书编号5','图书名称5','图书类别5','作者5','出版社5','数量5','学号5','学生姓名5','联系电话5','2021-03-05','是',''),(46,'2021-03-05 14:09:54','图书编号6','图书名称6','图书类别6','作者6','出版社6','数量6','学号6','学生姓名6','联系电话6','2021-03-05','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-05 14:09:54');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`chushengriqi`,`lianxidianhua`,`banji`) values (11,'2021-03-05 14:09:54','学生1','123456','学生姓名1','男','2021-03-05','13823888881','班级1'),(12,'2021-03-05 14:09:54','学生2','123456','学生姓名2','男','2021-03-05','13823888882','班级2'),(13,'2021-03-05 14:09:54','学生3','123456','学生姓名3','男','2021-03-05','13823888883','班级3'),(14,'2021-03-05 14:09:54','学生4','123456','学生姓名4','男','2021-03-05','13823888884','班级4'),(15,'2021-03-05 14:09:54','学生5','123456','学生姓名5','男','2021-03-05','13823888885','班级5'),(16,'2021-03-05 14:09:54','学生6','123456','学生姓名6','男','2021-03-05','13823888886','班级6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

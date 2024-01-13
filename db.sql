/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm03k5v
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm03k5v` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm03k5v`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `banjirenshu` int(11) DEFAULT NULL COMMENT '班级人数',
  `banjidaoshi` varchar(200) DEFAULT NULL COMMENT '班级导师',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banjimingcheng`,`banjirenshu`,`banjidaoshi`,`lianxifangshi`) values (31,'2021-03-08 22:39:30','班级名称1',1,'班级导师1','13823888881'),(32,'2021-03-08 22:39:30','班级名称2',2,'班级导师2','13823888882'),(33,'2021-03-08 22:39:30','班级名称3',3,'班级导师3','13823888883'),(34,'2021-03-08 22:39:30','班级名称4',4,'班级导师4','13823888884'),(35,'2021-03-08 22:39:30','班级名称5',5,'班级导师5','13823888885'),(36,'2021-03-08 22:39:30','班级名称6',6,'班级导师6','13823888886');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm03k5v/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm03k5v/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm03k5v/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusskechengziyuan` */

DROP TABLE IF EXISTS `discusskechengziyuan`;

CREATE TABLE `discusskechengziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='课程资源评论表';

/*Data for the table `discusskechengziyuan` */

insert  into `discusskechengziyuan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-08 22:39:30',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-08 22:39:30',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-08 22:39:30',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-08 22:39:30',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-08 22:39:30',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-08 22:39:30',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshi` varchar(200) NOT NULL COMMENT '教师',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshi`,`zhicheng`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-03-08 22:39:30','教师1','123456','教师1','助教','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang1.jpg'),(12,'2021-03-08 22:39:30','教师2','123456','教师2','助教','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang2.jpg'),(13,'2021-03-08 22:39:30','教师3','123456','教师3','助教','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang3.jpg'),(14,'2021-03-08 22:39:30','教师4','123456','教师4','助教','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang4.jpg'),(15,'2021-03-08 22:39:30','教师5','123456','教师5','助教','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang5.jpg'),(16,'2021-03-08 22:39:30','教师6','123456','教师6','助教','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm03k5v/upload/jiaoshi_touxiang6.jpg');

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`kecheng`) values (41,'2021-03-08 22:39:30','课程1'),(42,'2021-03-08 22:39:30','课程2'),(43,'2021-03-08 22:39:30','课程3'),(44,'2021-03-08 22:39:30','课程4'),(45,'2021-03-08 22:39:30','课程5'),(46,'2021-03-08 22:39:30','课程6');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `kejie` varchar(200) DEFAULT NULL COMMENT '课节',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`biaoti`,`banji`,`xingqi`,`kejie`,`kecheng`,`gonghao`,`jiaoshi`) values (51,'2021-03-08 22:39:30','标题1','班级1','星期一','第一节','课程1','工号1','教师1'),(52,'2021-03-08 22:39:30','标题2','班级2','星期一','第一节','课程2','工号2','教师2'),(53,'2021-03-08 22:39:30','标题3','班级3','星期一','第一节','课程3','工号3','教师3'),(54,'2021-03-08 22:39:30','标题4','班级4','星期一','第一节','课程4','工号4','教师4'),(55,'2021-03-08 22:39:30','标题5','班级5','星期一','第一节','课程5','工号5','教师5'),(56,'2021-03-08 22:39:30','标题6','班级6','星期一','第一节','课程6','工号6','教师6');

/*Table structure for table `kechengziyuan` */

DROP TABLE IF EXISTS `kechengziyuan`;

CREATE TABLE `kechengziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `kecheng` varchar(200) DEFAULT NULL COMMENT '课程',
  `peitu` varchar(200) DEFAULT NULL COMMENT '配图',
  `ziyuan` longtext COMMENT '资源',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程资源';

/*Data for the table `kechengziyuan` */

insert  into `kechengziyuan`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshi`,`kecheng`,`peitu`,`ziyuan`,`thumbsupnum`,`crazilynum`,`userid`) values (71,'2021-03-08 22:39:30','标题1','工号1','教师1','课程1','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu1.jpg','资源1',1,1,1),(72,'2021-03-08 22:39:30','标题2','工号2','教师2','课程2','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu2.jpg','资源2',2,2,2),(73,'2021-03-08 22:39:30','标题3','工号3','教师3','课程3','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu3.jpg','资源3',3,3,3),(74,'2021-03-08 22:39:30','标题4','工号4','教师4','课程4','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu4.jpg','资源4',4,4,4),(75,'2021-03-08 22:39:30','标题5','工号5','教师5','课程5','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu5.jpg','资源5',5,5,5),(76,'2021-03-08 22:39:30','标题6','工号6','教师6','课程6','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu6.jpg','资源6',6,6,6);

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='网站资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-08 22:39:30','标题1','简介1','http://localhost:8080/ssm03k5v/upload/news_picture1.jpg','内容1'),(102,'2021-03-08 22:39:30','标题2','简介2','http://localhost:8080/ssm03k5v/upload/news_picture2.jpg','内容2'),(103,'2021-03-08 22:39:30','标题3','简介3','http://localhost:8080/ssm03k5v/upload/news_picture3.jpg','内容3'),(104,'2021-03-08 22:39:30','标题4','简介4','http://localhost:8080/ssm03k5v/upload/news_picture4.jpg','内容4'),(105,'2021-03-08 22:39:30','标题5','简介5','http://localhost:8080/ssm03k5v/upload/news_picture5.jpg','内容5'),(106,'2021-03-08 22:39:30','标题6','简介6','http://localhost:8080/ssm03k5v/upload/news_picture6.jpg','内容6');

/*Table structure for table `shishengjiaoliu` */

DROP TABLE IF EXISTS `shishengjiaoliu`;

CREATE TABLE `shishengjiaoliu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshi` varchar(200) DEFAULT NULL COMMENT '教师',
  `xueshengliuyan` longtext COMMENT '学生留言',
  `jiaoshihuifu` longtext COMMENT '教师回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='师生交流';

/*Data for the table `shishengjiaoliu` */

insert  into `shishengjiaoliu`(`id`,`addtime`,`biaoti`,`xuehao`,`xuesheng`,`touxiang`,`gonghao`,`jiaoshi`,`xueshengliuyan`,`jiaoshihuifu`,`userid`) values (81,'2021-03-08 22:39:30','标题1','学号1','学生1','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang1.jpg','工号1','教师1','学生留言1','教师回复1',1),(82,'2021-03-08 22:39:30','标题2','学号2','学生2','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang2.jpg','工号2','教师2','学生留言2','教师回复2',2),(83,'2021-03-08 22:39:30','标题3','学号3','学生3','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang3.jpg','工号3','教师3','学生留言3','教师回复3',3),(84,'2021-03-08 22:39:30','标题4','学号4','学生4','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang4.jpg','工号4','教师4','学生留言4','教师回复4',4),(85,'2021-03-08 22:39:30','标题5','学号5','学生5','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang5.jpg','工号5','教师5','学生留言5','教师回复5',5),(86,'2021-03-08 22:39:30','标题6','学号6','学生6','http://localhost:8080/ssm03k5v/upload/shishengjiaoliu_touxiang6.jpg','工号6','教师6','学生留言6','教师回复6',6);

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
) ENGINE=InnoDB AUTO_INCREMENT=1615214485295 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615214485294,'2021-03-08 22:41:24',21,71,'kechengziyuan','标题1','http://localhost:8080/ssm03k5v/upload/kechengziyuan_peitu1.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,21,'学生1','xuesheng','学生','oa0jbq0bn4u85rpctooyasg0q7m6sfhy','2021-03-08 22:41:17','2021-03-08 23:41:18');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-08 22:39:30');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xuesheng` varchar(200) NOT NULL COMMENT '学生',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xuesheng`,`banji`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (21,'2021-03-08 22:39:30','学生1','123456','学生1','班级1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang1.jpg'),(22,'2021-03-08 22:39:30','学生2','123456','学生2','班级2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang2.jpg'),(23,'2021-03-08 22:39:30','学生3','123456','学生3','班级3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang3.jpg'),(24,'2021-03-08 22:39:30','学生4','123456','学生4','班级4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang4.jpg'),(25,'2021-03-08 22:39:30','学生5','123456','学生5','班级5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang5.jpg'),(26,'2021-03-08 22:39:30','学生6','123456','学生6','班级6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm03k5v/upload/xuesheng_touxiang6.jpg');

/*Table structure for table `zuoyexinxi` */

DROP TABLE IF EXISTS `zuoyexinxi`;

CREATE TABLE `zuoyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuesheng` varchar(200) DEFAULT NULL COMMENT '学生',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zuoye` longtext COMMENT '作业',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='作业信息';

/*Data for the table `zuoyexinxi` */

insert  into `zuoyexinxi`(`id`,`addtime`,`biaoti`,`xuehao`,`xuesheng`,`touxiang`,`banji`,`zuoye`,`tijiaoshijian`,`sfsh`,`shhf`,`userid`) values (61,'2021-03-08 22:39:30','标题1','学号1','学生1','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang1.jpg','班级1','作业1','2021-03-08 22:39:30','是','',1),(62,'2021-03-08 22:39:30','标题2','学号2','学生2','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang2.jpg','班级2','作业2','2021-03-08 22:39:30','是','',2),(63,'2021-03-08 22:39:30','标题3','学号3','学生3','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang3.jpg','班级3','作业3','2021-03-08 22:39:30','是','',3),(64,'2021-03-08 22:39:30','标题4','学号4','学生4','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang4.jpg','班级4','作业4','2021-03-08 22:39:30','是','',4),(65,'2021-03-08 22:39:30','标题5','学号5','学生5','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang5.jpg','班级5','作业5','2021-03-08 22:39:30','是','',5),(66,'2021-03-08 22:39:30','标题6','学号6','学生6','http://localhost:8080/ssm03k5v/upload/zuoyexinxi_touxiang6.jpg','班级6','作业6','2021-03-08 22:39:30','是','',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

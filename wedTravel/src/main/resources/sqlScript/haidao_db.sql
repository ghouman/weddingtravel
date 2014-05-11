# SQL Manager 2005 for MySQL 3.7.7.1
# ---------------------------------------
# Host     : 192.168.1.102
# Port     : 3306
# Database : haidao_db


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gbk */;

SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `haidao_db`;

CREATE DATABASE `haidao_db`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `haidao_db`;

#
# Structure for the `area` table :
#

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for the `area` table  (LIMIT 0,500)
#

INSERT INTO `area` (`id`, `name`, `valid`, `create_time`, `create_person`, `upd_time`, `upd_person`) VALUES
  (1,'东南亚地区',1,0,NULL,NULL,NULL),
  (2,'亚洲地区',1,NULL,NULL,NULL,NULL),
  (3,'大洋洲地区',1,NULL,NULL,NULL,NULL),
  (4,'地中海地区',1,NULL,NULL,NULL,NULL);

COMMIT;

#
# Structure for the `contact` table :
#

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `tel` varchar(100) DEFAULT NULL COMMENT '联系电话 多个以逗号间隔',
  `phone` varchar(100) DEFAULT NULL COMMENT '座机 多个以逗号间隔',
  `person` varchar(100) DEFAULT NULL COMMENT '联系人 多个以逗号间隔',
  `address` varchar(200) DEFAULT NULL COMMENT '联系地址 多个以逗号间隔',
  `qq` varchar(100) DEFAULT NULL COMMENT 'qq号码 多个以逗号间隔',
  `mail` varchar(200) DEFAULT NULL COMMENT '邮箱地址 多个以逗号间隔',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `front_menu` table :
#

DROP TABLE IF EXISTS `front_menu`;

CREATE TABLE `front_menu` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `module_id` int(2) DEFAULT NULL COMMENT '所属模块编号',
  `module_name` varchar(50) DEFAULT NULL COMMENT '所属模块名称如婚礼套餐',
  `country` varchar(50) DEFAULT NULL COMMENT '归属国家',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(500) DEFAULT NULL COMMENT '菜单链接',
  `parent_id` int(4) DEFAULT NULL COMMENT '父菜单编号',
  `has_child` int(2) DEFAULT NULL COMMENT '是否有子菜单 1有  0无',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  `menu_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for the `front_menu` table  (LIMIT 0,500)
#

INSERT INTO `front_menu` (`id`, `module_id`, `module_name`, `country`, `menu_name`, `menu_url`, `parent_id`, `has_child`, `valid`, `create_time`, `create_person`, `upd_time`, `upd_person`, `menu_index`) VALUES
  (1,1,'mainMenu',NULL,'网站首页','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,1),
  (2,1,'mainMenu',NULL,'海岛婚礼套餐','list.jsp',NULL,NULL,1,NULL,NULL,NULL,NULL,2),
  (3,1,'mainMenu',NULL,'婚礼婚纱摄影','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,3),
  (4,1,'mainMenu',NULL,'岛屿自助酒店','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,4),
  (5,1,'mainMenu',NULL,'婚礼蜜月自助','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,5),
  (6,1,'mainMenu',NULL,'婚礼案例','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,6),
  (7,1,'mainMenu',NULL,'疑难解答','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,7),
  (8,1,'mainMenu',NULL,'公司介绍','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,8),
  (9,1,'mainMenu',NULL,'订单购物车','recommend.action',NULL,NULL,1,NULL,NULL,NULL,NULL,9);

COMMIT;

#
# Structure for the `global_qa` table :
#

DROP TABLE IF EXISTS `global_qa`;

CREATE TABLE `global_qa` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `question_type` varchar(50) DEFAULT NULL COMMENT '问题种类',
  `title` varchar(500) DEFAULT NULL COMMENT '问题标题',
  `answer` varchar(10000) DEFAULT NULL COMMENT '回答',
  `index` int(4) DEFAULT NULL COMMENT '展示次序',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `guest_example` table :
#

DROP TABLE IF EXISTS `guest_example`;

CREATE TABLE `guest_example` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `exam_type` int(2) DEFAULT NULL COMMENT '案例类型1:摄影案例 2:视频案例',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_name` varchar(500) DEFAULT NULL COMMENT '套餐名称',
  `package_content` varchar(1000) DEFAULT NULL COMMENT '套餐项目',
  `wed_person` varchar(50) DEFAULT NULL COMMENT '新人姓名',
  `wed_time` varchar(50) DEFAULT NULL COMMENT '时间',
  `wed_lensman` varchar(50) DEFAULT NULL COMMENT '摄影师',
  `wed_dresser` varchar(50) DEFAULT NULL COMMENT '化妆师',
  `default_img` varchar(500) DEFAULT NULL COMMENT '缩略图',
  `view_url` varchar(500) DEFAULT NULL COMMENT '视频地址',
  `exam_imgs` varchar(500) DEFAULT NULL COMMENT '图片id集合 多个以逗号间隔',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `package_index` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `guest_visit_log` table :
#

DROP TABLE IF EXISTS `guest_visit_log`;

CREATE TABLE `guest_visit_log` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_name` varchar(500) DEFAULT NULL COMMENT '套餐名称',
  `package_img` varchar(500) DEFAULT NULL COMMENT '套餐图片',
  `package_url` varchar(500) DEFAULT NULL COMMENT '套餐链接',
  `package_title` varchar(500) DEFAULT NULL COMMENT '套餐标题',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `visit_time` int(10) DEFAULT NULL COMMENT '访问时间',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `session_id` varchar(200) DEFAULT NULL COMMENT 'session_id',
  PRIMARY KEY (`id`),
  KEY `ip_index` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `image` table :
#

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `img_url` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `desc` varchar(100) DEFAULT NULL COMMENT '备注',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `island` table :
#

DROP TABLE IF EXISTS `island`;

CREATE TABLE `island` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `area_id` int(8) DEFAULT NULL COMMENT '归属区域编号',
  `area_name` varchar(50) DEFAULT NULL COMMENT '归属区域名称',
  `name` varchar(50) DEFAULT NULL COMMENT '岛屿名称',
  `island_desc` text COMMENT '岛屿描述',
  `country` varchar(50) DEFAULT NULL COMMENT '归属国家',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for the `island` table  (LIMIT 0,500)
#

INSERT INTO `island` (`id`, `area_id`, `area_name`, `name`, `island_desc`, `country`, `valid`, `create_time`, `create_person`, `upd_time`, `upd_person`) VALUES
  (1,1,NULL,'巴厘岛',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (2,1,NULL,'马尔代夫',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (3,2,NULL,'济州岛',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (4,2,NULL,'冲绳',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (5,3,NULL,'毛里求斯',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (6,3,NULL,'塞班',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (7,3,NULL,'夏威夷',NULL,NULL,1,NULL,NULL,NULL,NULL),
  (8,4,NULL,'圣托里尼',NULL,NULL,1,NULL,NULL,NULL,NULL);

COMMIT;

#
# Structure for the `island_order` table :
#

DROP TABLE IF EXISTS `island_order`;

CREATE TABLE `island_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  `wed_area` varchar(20) DEFAULT NULL COMMENT '婚礼区域',
  `wed_from` int(20) DEFAULT NULL COMMENT '出发地',
  `budget` int(8) DEFAULT NULL COMMENT '婚礼预算单位元',
  `wed_person_num` int(4) DEFAULT NULL COMMENT '婚礼人数',
  `wed_name` varchar(20) DEFAULT NULL COMMENT '新人姓名',
  `tel` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq号码',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱地址',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `ask_msg` text COMMENT '咨询内容',
  `is_send` int(2) DEFAULT NULL COMMENT '1已经发送邮件  0没有发送邮件',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `island_package` table :
#

DROP TABLE IF EXISTS `island_package`;

CREATE TABLE `island_package` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_type` int(2) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐  5:自由行套餐',
  `title` varchar(200) DEFAULT NULL COMMENT '套餐标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '套餐内容',
  `price_big` varchar(50) DEFAULT NULL COMMENT '旺季价格',
  `price_small` varchar(50) DEFAULT NULL COMMENT '淡季价格',
  `area_id` int(4) DEFAULT NULL COMMENT '区域编号',
  `area_name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `island_id` int(4) DEFAULT NULL COMMENT '岛屿编号',
  `island_name` varchar(50) DEFAULT NULL COMMENT '岛屿名称',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for the `island_package` table  (LIMIT 0,500)
#

INSERT INTO `island_package` (`id`, `package_type`, `title`, `content`, `price_big`, `price_small`, `area_id`, `area_name`, `island_id`, `island_name`, `valid`, `create_time`, `create_person`, `upd_time`, `upd_person`) VALUES
  (1,1,'教堂婚礼',NULL,NULL,NULL,1,NULL,1,NULL,1,NULL,NULL,NULL,NULL),
  (2,1,'水中婚礼',NULL,NULL,NULL,1,NULL,1,NULL,1,NULL,NULL,NULL,NULL),
  (3,1,'马尔代夫婚礼',NULL,NULL,NULL,1,NULL,2,NULL,1,NULL,NULL,NULL,NULL);

COMMIT;

#
# Structure for the `package_detail_info` table :
#

DROP TABLE IF EXISTS `package_detail_info`;

CREATE TABLE `package_detail_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_type` int(2) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐 5:自由行套餐',
  `content` text COMMENT '套餐详细介绍',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `package_index` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `package_image_relation` table :
#

DROP TABLE IF EXISTS `package_image_relation`;

CREATE TABLE `package_image_relation` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_type` int(4) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐 5:自由行套餐',
  `package_id` int(10) DEFAULT NULL COMMENT '套餐编号',
  `img_id` int(10) DEFAULT NULL COMMENT '图片编号',
  `img_type` int(4) DEFAULT NULL COMMENT '图片类型',
  `img_des` varchar(500) DEFAULT NULL COMMENT '图片描述',
  `img_index` int(4) DEFAULT NULL COMMENT '图片展示次序',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `img_id` (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `package_img_recommend` table :
#

DROP TABLE IF EXISTS `package_img_recommend`;

CREATE TABLE `package_img_recommend` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_type` int(2) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐 5:自由行套餐',
  `img_url` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `img_desc` varchar(500) DEFAULT NULL COMMENT '图片描述',
  `is_master` int(2) DEFAULT NULL COMMENT '是否主推 1:是  0否',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  `index` varchar(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `package_index` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `package_kepianliuying` table :
#

DROP TABLE IF EXISTS `package_kepianliuying`;

CREATE TABLE `package_kepianliuying` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_type` int(2) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐 5:自由行套餐',
  `img` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `desc` varchar(500) DEFAULT NULL COMMENT '描述',
  `link` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `index` int(4) DEFAULT NULL COMMENT '排序',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `package_index` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `package_qa` table :
#

DROP TABLE IF EXISTS `package_qa`;

CREATE TABLE `package_qa` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_id` int(8) DEFAULT NULL COMMENT '套餐编号',
  `package_type` int(2) DEFAULT NULL COMMENT '套餐类别  1:婚礼套餐 2:婚纱摄影套餐  3:婚纱摄影摄影师套餐 4:酒店套餐 5:自由行套餐',
  `question` varchar(500) DEFAULT NULL COMMENT '咨询内容',
  `answer` varchar(500) DEFAULT NULL COMMENT '答复内容',
  `is_guest` int(2) DEFAULT NULL COMMENT '1:游客提问  2:客服提问',
  `is_answer` int(2) DEFAULT NULL COMMENT '是否回复 1回复 0没回复',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `ask_time` int(10) DEFAULT NULL COMMENT '提问时间',
  `asker` varchar(50) DEFAULT NULL COMMENT '咨询人',
  `answer_time` int(10) DEFAULT NULL COMMENT '答复时间',
  `answer_person` varchar(50) DEFAULT NULL COMMENT '答复人',
  PRIMARY KEY (`id`),
  KEY `package_index` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `recommend` table :
#

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `module_id` int(4) NOT NULL COMMENT '模块编号 页面得每一个推荐位设定1个编号 前端展示时候根据编号获取推荐数据',
  `module_desc` varchar(50) DEFAULT NULL COMMENT '模块描述 如 首页大图推荐 ',
  `title` varchar(200) DEFAULT NULL COMMENT '主题',
  `content` varchar(500) DEFAULT NULL COMMENT '内容',
  `recommend_desc` varchar(500) DEFAULT NULL COMMENT '备注',
  `img_url` varchar(500) DEFAULT NULL COMMENT '图片地址',
  `link_url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `price` varchar(50) DEFAULT NULL COMMENT '价格',
  `tel` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `area_id` int(4) DEFAULT NULL COMMENT '区域编号',
  `area_name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `island_id` int(4) DEFAULT NULL COMMENT '岛屿编号',
  `island_name` varchar(50) DEFAULT NULL COMMENT '岛屿名称',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `big_img_url` varchar(500) DEFAULT NULL COMMENT '大图地址',
  `small_img_url` varchar(500) DEFAULT NULL COMMENT '小图图地址',
  `link_obligate` varchar(500) DEFAULT NULL COMMENT '链接地址预留',
  `price_big` varchar(50) DEFAULT NULL COMMENT '旺季价格',
  `price_small` varchar(50) DEFAULT NULL COMMENT '淡季价格',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  `type_id` int(4) DEFAULT NULL COMMENT '推荐类型',
  `type_name` varchar(50) DEFAULT NULL COMMENT '推荐类型名称',
  `view_link` varchar(500) DEFAULT NULL COMMENT '视频地址',
  `recommend_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

#
# Data for the `recommend` table  (LIMIT 0,500)
#

INSERT INTO `recommend` (`id`, `module_id`, `module_desc`, `title`, `content`, `recommend_desc`, `img_url`, `link_url`, `price`, `tel`, `area_id`, `area_name`, `island_id`, `island_name`, `valid`, `big_img_url`, `small_img_url`, `link_obligate`, `price_big`, `price_small`, `create_time`, `create_person`, `upd_time`, `upd_person`, `type_id`, `type_name`, `view_link`, `recommend_index`) VALUES
  (1,1,'recommond','island_saiban','sai ban','saiban','images/index_side1.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,NULL,NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (2,1,'recommond','island_saiban','sai ban','saiban','images/index_side2.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,NULL,NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (3,1,'recommond','island_saiban','sai ban','saiban','images/index_side3.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,NULL,NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (4,2,'recommond','island_saiban','sai ban','saiban','images/popular/01.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/01_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (5,2,'recommond','island_saiban','sai ban','saiban','images/popular/02.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/02_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (6,2,'recommond','island_saiban','sai ban','saiban','images/popular/03.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/03_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (7,2,'recommond','island_saiban','sai ban','saiban','images/popular/04.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (8,2,'recommond','island_saiban','sai ban','saiban','images/popular/05.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/05_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (9,3,'recommond','马尔代夫婚礼现场1......','sai ban','saiban','images/new.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/01_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',1),
  (10,3,'recommond','马尔代夫婚礼现场2......','sai ban','saiban','images/new.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/02_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',2),
  (11,3,'recommond','马尔代夫婚礼现场3......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/03_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',3),
  (12,3,'recommond','马尔代夫婚礼现场4......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',4),
  (13,3,'recommond','马尔代夫婚礼现场5......','sai ban','saiban','images/new.png','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/05_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',5),
  (14,3,'recommond','马尔代夫婚礼现场6......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/03_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',6),
  (15,3,'recommond','马尔代夫婚礼现场7......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',7),
  (16,3,'recommond','马尔代夫婚礼现场8......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',8),
  (17,4,'recommond','island_saiban','sai ban','saiban','images/01.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/01_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (18,4,'recommond','island_saiban','sai ban','saiban','images/02.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/02_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (19,4,'recommond','island_saiban','sai ban','saiban','images/01.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/03_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (20,4,'recommond','island_saiban','sai ban','saiban','images/02.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (21,4,'recommond','island_saiban','sai ban','saiban','images/01.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/05_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (22,4,'recommond','island_saiban','sai ban','saiban','images/02.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/03_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (23,4,'recommond','island_saiban','sai ban','saiban','images/01.jpg','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,1399686725,'test',20140507,'test',1,'1','1',NULL),
  (24,3,'recommond','马尔代夫婚礼现场9......','sai ban','saiban','','list1.html','20000','1234',1,'saiban',1,'1',1,'images/popular/04_h.png',NULL,NULL,NULL,NULL,20140507,'test',20140507,'test',1,'1','1',8);

COMMIT;

#
# Structure for the `shopping_car` table :
#

DROP TABLE IF EXISTS `shopping_car`;

CREATE TABLE `shopping_car` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `package_ids` varchar(500) DEFAULT NULL COMMENT '套餐编号 多个编号以逗号间隔',
  `ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  `session_id` varchar(200) DEFAULT NULL COMMENT 'seesion_id',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `work_team` table :
#

DROP TABLE IF EXISTS `work_team`;

CREATE TABLE `work_team` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `content` varchar(5000) DEFAULT NULL COMMENT '简介',
  `team_person` varchar(2000) DEFAULT NULL COMMENT '团队构建',
  `img` varchar(500) DEFAULT NULL COMMENT 'log',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `level` varchar(50) DEFAULT NULL COMMENT '等级',
  `price_small` varchar(50) DEFAULT NULL COMMENT '淡季价格',
  `price_big` varchar(50) DEFAULT NULL COMMENT '旺季价格',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Structure for the `workman` table :
#

DROP TABLE IF EXISTS `workman`;

CREATE TABLE `workman` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `work_type` int(2) DEFAULT NULL COMMENT '工种类型 1摄影师 2化妆师 3影片师',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `content` varchar(5000) DEFAULT NULL COMMENT '个人简介',
  `img` varchar(500) DEFAULT NULL COMMENT '头像',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `level` varchar(50) DEFAULT NULL COMMENT '等级',
  `team_id` int(4) DEFAULT NULL COMMENT '所属团队',
  `price_small` varchar(50) DEFAULT NULL COMMENT '淡季价格',
  `price_big` varchar(50) DEFAULT NULL COMMENT '旺季价格',
  `valid` int(2) DEFAULT NULL COMMENT '是否有效 1有效  0无效',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `create_person` varchar(50) DEFAULT NULL COMMENT '创建人',
  `upd_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `upd_person` varchar(50) DEFAULT NULL COMMENT '更新人',
  `team_name` varchar(500) DEFAULT NULL COMMENT '团队名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
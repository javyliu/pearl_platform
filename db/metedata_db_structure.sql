/*
Navicat MySQL Data Transfer

Source Server         : pipstat_120.92.140.143
Source Server Version : 50718
Source Host           : 120.92.140.143:3306
Source Database       : metedata

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-11-14 17:49:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auto_warn_info
-- ----------------------------
DROP TABLE IF EXISTS `auto_warn_info`;
CREATE TABLE `auto_warn_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_warn_task_id` int(11) DEFAULT NULL,
  `data_time` varchar(10) DEFAULT NULL,
  `warn_info` varchar(254) DEFAULT NULL,
  `warn_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=451056 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for auto_warn_task
-- ----------------------------
DROP TABLE IF EXISTS `auto_warn_task`;
CREATE TABLE `auto_warn_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warn_name` varchar(50) DEFAULT NULL,
  `run_time` varchar(5) DEFAULT NULL,
  `related_report_name` varchar(50) DEFAULT NULL,
  `related_report` varchar(100) DEFAULT NULL,
  `related_report_type` varchar(50) DEFAULT NULL,
  `warn_task` text,
  `delete_flag` int(11) DEFAULT '0',
  `last_update_time` datetime DEFAULT NULL,
  `moreover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for market_category
-- ----------------------------
DROP TABLE IF EXISTS `market_category`;
CREATE TABLE `market_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_resource
-- ----------------------------
DROP TABLE IF EXISTS `market_resource`;
CREATE TABLE `market_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `supportgame` text,
  `supporttype` varchar(2) DEFAULT NULL,
  `showorder` int(11) DEFAULT NULL,
  `notice` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resourceid` (`resourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_user
-- ----------------------------
DROP TABLE IF EXISTS `market_user`;
CREATE TABLE `market_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `foreignuser` varchar(255) DEFAULT NULL,
  `managerothername` text,
  `supportresource` text,
  `supportgamechannel` text,
  `createtime` varchar(255) DEFAULT NULL,
  `notice` text,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_user_game_resource
-- ----------------------------
DROP TABLE IF EXISTS `market_user_game_resource`;
CREATE TABLE `market_user_game_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `gameid` text,
  `resourceid` text,
  `superid` int(11) DEFAULT NULL,
  `notice` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_user_log
-- ----------------------------
DROP TABLE IF EXISTS `market_user_log`;
CREATE TABLE `market_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `loginTime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164672 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for market_user_reportlog
-- ----------------------------
DROP TABLE IF EXISTS `market_user_reportlog`;
CREATE TABLE `market_user_reportlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `reportId` int(11) NOT NULL,
  `accessTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437889 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_data_file
-- ----------------------------
DROP TABLE IF EXISTS `t_data_file`;
CREATE TABLE `t_data_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataid` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `modifytime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=933 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_data_info
-- ----------------------------
DROP TABLE IF EXISTS `t_data_info`;
CREATE TABLE `t_data_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `reqname` varchar(255) DEFAULT NULL,
  `uploader` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_data_type
-- ----------------------------
DROP TABLE IF EXISTS `t_data_type`;
CREATE TABLE `t_data_type` (
  `timeAdded` varchar(255) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `dataTypeName` varchar(10) NOT NULL,
  `dataTypeId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dataTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_game_region
-- ----------------------------
DROP TABLE IF EXISTS `t_game_region`;
CREATE TABLE `t_game_region` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `regionId` int(4) NOT NULL DEFAULT '0',
  `regionName` varchar(30) COLLATE gbk_bin DEFAULT NULL,
  `gameId` int(11) NOT NULL DEFAULT '0',
  `gameName` varchar(20) COLLATE gbk_bin DEFAULT NULL,
  `regionState` int(4) DEFAULT '1',
  `gameIdNew` int(11) DEFAULT NULL,
  `combineRegion` text CHARACTER SET gbk,
  `serverip` varchar(50) COLLATE gbk_bin DEFAULT NULL,
  `serverport` varchar(25) COLLATE gbk_bin DEFAULT NULL,
  `logpath` varchar(200) COLLATE gbk_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1497 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_purview_disable
-- ----------------------------
DROP TABLE IF EXISTS `t_purview_disable`;
CREATE TABLE `t_purview_disable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5782 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_purview_expand
-- ----------------------------
DROP TABLE IF EXISTS `t_purview_expand`;
CREATE TABLE `t_purview_expand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41658 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_purview_group
-- ----------------------------
DROP TABLE IF EXISTS `t_purview_group`;
CREATE TABLE `t_purview_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purName` varchar(100) COLLATE gbk_bin NOT NULL,
  `systemId` int(11) NOT NULL,
  `remark` varchar(100) COLLATE gbk_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_purview_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_purview_relation`;
CREATE TABLE `t_purview_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purId` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7716 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_report_log
-- ----------------------------
DROP TABLE IF EXISTS `t_report_log`;
CREATE TABLE `t_report_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `reportId` int(11) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `createTime` varchar(50) NOT NULL,
  `systemid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3532026 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_system_info
-- ----------------------------
DROP TABLE IF EXISTS `t_system_info`;
CREATE TABLE `t_system_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemName` varchar(50) NOT NULL,
  `orderNum` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) COLLATE gbk_bin NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE gbk_bin DEFAULT NULL,
  `password` varchar(150) COLLATE gbk_bin NOT NULL DEFAULT '',
  `remark` varchar(50) COLLATE gbk_bin DEFAULT '',
  `enable` int(1) NOT NULL DEFAULT '1' COMMENT '1为暂停, 2:用户解除当日禁用行为,解禁完后自动转成0。0:可登陆',
  `homepage` varchar(255) COLLATE gbk_bin DEFAULT '0' COMMENT '0: 默认页，1:自动预警页面，2:游戏数据汇总表',
  `pagemodule` varchar(255) COLLATE gbk_bin DEFAULT '',
  `deptName` varchar(100) COLLATE gbk_bin DEFAULT NULL,
  `userType` int(10) NOT NULL,
  `disableTime` varchar(20) COLLATE gbk_bin NOT NULL,
  `tryNum` int(10) NOT NULL,
  `lastLoginTime` varchar(20) COLLATE gbk_bin DEFAULT NULL,
  `lastLoginIp` varchar(20) COLLATE gbk_bin DEFAULT NULL,
  `email` varchar(255) COLLATE gbk_bin DEFAULT NULL,
  `browser` varchar(255) COLLATE gbk_bin DEFAULT NULL,
  `market` int(11) DEFAULT '0' COMMENT '是否是市场用户0是,1否',
  `marketuser` varchar(255) COLLATE gbk_bin DEFAULT NULL COMMENT '拥有下级用户id以,隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=834 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_user_game
-- ----------------------------
DROP TABLE IF EXISTS `t_user_game`;
CREATE TABLE `t_user_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32442 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_user_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_log`;
CREATE TABLE `t_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `systemId` int(4) NOT NULL COMMENT '系统ID\r\n0　：　通用登录\r\n1　：　PIPCOUNT平台\r\n2　：　FLASH三国平台\r\n可由t_system_info中获得ID',
  `result` int(4) NOT NULL COMMENT '0 正常登录\r\n1 密码不正确\r\n2 帐号已经被封停\r\n3 帐号已经被冻结',
  `area` varchar(50) DEFAULT NULL COMMENT 'ip区域城市省份',
  `browser` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user_purviewgroup
-- ----------------------------
DROP TABLE IF EXISTS `t_user_purviewgroup`;
CREATE TABLE `t_user_purviewgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `purviewGroupId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4676 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `createTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_game_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_game_info`;
CREATE TABLE `tbl_game_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(11) NOT NULL DEFAULT '0',
  `gameName` varchar(20) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameLogFormat` varchar(20) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameItemConfig` varchar(30) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameImoneyRate` varchar(10) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameMinver` varchar(10) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameAccFormat` varchar(20) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameCodes` text,
  `gameAttrsCount` int(4) DEFAULT NULL,
  `gameAttrsRate` varchar(10) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameHpmpCount` int(4) DEFAULT NULL,
  `gameHpmpRate` varchar(10) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `gameState` int(4) DEFAULT '1',
  `channelShow` int(3) DEFAULT '1',
  `systemId` varchar(10) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `showOrder` int(11) DEFAULT NULL,
  `registerOnLineTime` int(11) DEFAULT '4' COMMENT '在线时长限制注册数',
  `gamemodel` int(11) DEFAULT '0' COMMENT '游戏运营模式 0自营1代理',
  `registerLevel` int(11) DEFAULT '2' COMMENT '级别限制注册数',
  `billing_gamecode` int(4) DEFAULT NULL,
  `stopservertime` date DEFAULT '3000-01-01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tbl_game_relation
-- ----------------------------
DROP TABLE IF EXISTS `tbl_game_relation`;
CREATE TABLE `tbl_game_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oldId` int(11) NOT NULL,
  `newId` int(11) NOT NULL,
  `systemId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_notice
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notice`;
CREATE TABLE `tbl_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `noticetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_purview
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purview`;
CREATE TABLE `tbl_purview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(4) DEFAULT NULL,
  `gameid` int(4) DEFAULT NULL,
  `purid` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10686 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_report
-- ----------------------------
DROP TABLE IF EXISTS `tbl_report`;
CREATE TABLE `tbl_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `uri` varchar(200) DEFAULT NULL,
  `supportgame` text,
  `supporttype` int(5) DEFAULT NULL,
  `vestin` int(11) DEFAULT NULL,
  `showorder` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `notice` text,
  `method` varchar(100) DEFAULT NULL COMMENT 'action请求方法名称，权限控制时使用',
  `english` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resourceid` (`resourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tbl_resource
-- ----------------------------
DROP TABLE IF EXISTS `tbl_resource`;
CREATE TABLE `tbl_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `uri` varchar(200) DEFAULT NULL,
  `supportgame` text,
  `fatherresource` int(4) DEFAULT NULL,
  `reportcategory` varchar(2) DEFAULT NULL,
  `supporttype` varchar(2) DEFAULT NULL,
  `vestin` int(11) DEFAULT NULL,
  `showorder` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `notice` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resourceid` (`resourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tbl_resource_system
-- ----------------------------
DROP TABLE IF EXISTS `tbl_resource_system`;
CREATE TABLE `tbl_resource_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(11) NOT NULL,
  `supportgame` varchar(200) DEFAULT NULL,
  `typeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `systemId` int(11) NOT NULL,
  `chart` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL COMMENT '角色编号',
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `state` int(2) DEFAULT '1' COMMENT '状态是有效,1为有效,0为无效',
  `systemid` int(11) DEFAULT '100' COMMENT '系统id',
  `showorder` int(11) DEFAULT NULL COMMENT '排序显示方式',
  `demo` varchar(255) DEFAULT NULL COMMENT '备注说明信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

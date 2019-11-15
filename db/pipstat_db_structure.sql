/*
Navicat MySQL Data Transfer

Source Server         : pipstat_120.92.140.143
Source Server Version : 50718
Source Host           : 120.92.140.143:3306
Source Database       : pipstat

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-11-14 17:44:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advertgameinfo
-- ----------------------------
DROP TABLE IF EXISTS `advertgameinfo`;
CREATE TABLE `advertgameinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` varchar(20) NOT NULL DEFAULT '',
  `appid` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_activeuser
-- ----------------------------
DROP TABLE IF EXISTS `channel_activeuser`;
CREATE TABLE `channel_activeuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chlcode` varchar(255) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `activeuser` varchar(255) DEFAULT NULL,
  `statdate` varchar(255) DEFAULT NULL,
  `loginthree` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=850888 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_change_log
-- ----------------------------
DROP TABLE IF EXISTS `channel_change_log`;
CREATE TABLE `channel_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `change_type` int(11) DEFAULT NULL,
  `change_log` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_code_advert
-- ----------------------------
DROP TABLE IF EXISTS `channel_code_advert`;
CREATE TABLE `channel_code_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `game` int(4) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `advertcost` double(11,0) DEFAULT NULL COMMENT '告费用广',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_code_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_code_info`;
CREATE TABLE `channel_code_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(10) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `id_code` varchar(255) DEFAULT NULL,
  `mediasource` varchar(255) DEFAULT NULL,
  `isjar` varchar(11) DEFAULT NULL,
  `balance_way` varchar(255) DEFAULT NULL,
  `balance` varchar(11) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `now_stat` varchar(11) DEFAULT NULL,
  `jar_tail` varchar(255) DEFAULT NULL,
  `game` varchar(255) DEFAULT NULL,
  `rate_fencheng` varchar(10) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_account` int(2) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `scope` varchar(50) DEFAULT NULL,
  `statday` int(11) DEFAULT '0',
  `category` varchar(11) DEFAULT '0' COMMENT '为 NULLl 或 0 都表示暂无类别',
  `balance_way2` varchar(2) DEFAULT NULL,
  `stat_update_time` varchar(50) DEFAULT NULL COMMENT '状态更改时间',
  `signed` int(11) DEFAULT '0',
  `special_price` int(11) DEFAULT '0',
  `reglevel` int(11) DEFAULT '0',
  `regonlinetime` int(11) DEFAULT '0',
  `channel_name` varchar(255) DEFAULT NULL COMMENT '渠道名称',
  `channel_abbr` varchar(255) DEFAULT NULL COMMENT '渠道简称',
  `userid` int(11) DEFAULT NULL COMMENT '渠道负责人t_user用户id值',
  `marketid` varchar(150) DEFAULT NULL COMMENT '外部合作伙伴账户查看渠道代码',
  `settle_date` varchar(50) DEFAULT NULL COMMENT '沉默结算日期',
  `externalid` int(11) DEFAULT NULL COMMENT '外部人员userid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id_code` (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10231 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_code_info_bak
-- ----------------------------
DROP TABLE IF EXISTS `channel_code_info_bak`;
CREATE TABLE `channel_code_info_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(10) DEFAULT NULL,
  `code` varchar(12) DEFAULT NULL,
  `id_code` varchar(255) DEFAULT NULL,
  `balance_way` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `now_stat` varchar(11) DEFAULT NULL,
  `statdate` varchar(25) DEFAULT NULL,
  `game` varchar(255) DEFAULT NULL,
  `rate_fencheng` varchar(10) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `reglevel` int(11) DEFAULT '0',
  `regonlinetime` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_id` (`statdate`,`game`)
) ENGINE=InnoDB AUTO_INCREMENT=3371331 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_history
-- ----------------------------
DROP TABLE IF EXISTS `channel_history`;
CREATE TABLE `channel_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id_code` varchar(20) DEFAULT NULL,
  `last_stat` char(2) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_user_id` int(11) DEFAULT NULL,
  `what_is_more` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_info`;
CREATE TABLE `channel_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(50) DEFAULT '',
  `id_code` varchar(20) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `iswebunion` int(2) DEFAULT '0',
  `wap_address` varchar(255) DEFAULT NULL,
  `contact_man` varchar(50) DEFAULT NULL,
  `contact_way` varchar(50) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT '',
  `now_stat` int(2) DEFAULT NULL,
  `stat_update_time` varchar(50) DEFAULT NULL,
  `isPersonal` int(4) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `taxation` double DEFAULT NULL COMMENT '账务耿波变更分成类合作公司个人营业税为税费百分比',
  `company_abbr` varchar(255) DEFAULT NULL COMMENT '公司简称',
  `operation_system` int(2) DEFAULT '0' COMMENT '操作系统android1IOS正版2IOS破解3',
  `balance_way` int(2) DEFAULT '4' COMMENT '作合模式注册1下载2分成3联运4',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_id_code` (`id_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2909 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_log_time
-- ----------------------------
DROP TABLE IF EXISTS `channel_log_time`;
CREATE TABLE `channel_log_time` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `id_code` varchar(10) DEFAULT NULL,
  `name_id_code` varchar(20) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `stat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104830 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_spend
-- ----------------------------
DROP TABLE IF EXISTS `channel_spend`;
CREATE TABLE `channel_spend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_code` varchar(3) DEFAULT NULL,
  `stat_date` varchar(20) DEFAULT NULL,
  `spand` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71492 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_start
-- ----------------------------
DROP TABLE IF EXISTS `channel_start`;
CREATE TABLE `channel_start` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `game` int(11) NOT NULL,
  `startdate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1533 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_stat_desc
-- ----------------------------
DROP TABLE IF EXISTS `channel_stat_desc`;
CREATE TABLE `channel_stat_desc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stat` varchar(10) DEFAULT NULL,
  `desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_stat_user_bridge
-- ----------------------------
DROP TABLE IF EXISTS `channel_stat_user_bridge`;
CREATE TABLE `channel_stat_user_bridge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `channel_userid` int(11) DEFAULT NULL,
  `author` int(11) DEFAULT '0',
  `notice` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_update_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_update_info`;
CREATE TABLE `channel_update_info` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `userid` int(8) DEFAULT NULL,
  `gameid` int(8) DEFAULT NULL,
  `channelcode` varchar(50) DEFAULT NULL,
  `updatetime` varchar(50) DEFAULT NULL,
  `oldinfo` varchar(50) DEFAULT NULL,
  `newinfo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for channel_user_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_user_info`;
CREATE TABLE `channel_user_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT '0',
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) DEFAULT NULL,
  `role` varchar(150) DEFAULT '0',
  `remark` varchar(50) DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `id_code` varchar(20) DEFAULT NULL,
  `is_validate` int(2) DEFAULT '0',
  `gamecodes` varchar(100) DEFAULT NULL,
  `work_stat` varchar(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for country_info
-- ----------------------------
DROP TABLE IF EXISTS `country_info`;
CREATE TABLE `country_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `international` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `countries` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for Event
-- ----------------------------
DROP TABLE IF EXISTS `Event`;
CREATE TABLE `Event` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eventid` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `gameregion` varchar(50) DEFAULT NULL,
  `key0` varchar(200) DEFAULT NULL,
  `value0` varchar(200) DEFAULT NULL,
  `key1` varchar(200) DEFAULT NULL,
  `value1` varchar(200) DEFAULT NULL,
  `key2` varchar(200) DEFAULT NULL,
  `value2` varchar(200) DEFAULT NULL,
  `key3` varchar(200) DEFAULT NULL,
  `value3` varchar(200) DEFAULT NULL,
  `key4` varchar(200) DEFAULT NULL,
  `value4` varchar(200) DEFAULT NULL,
  `key5` varchar(200) DEFAULT NULL,
  `value5` varchar(200) DEFAULT NULL,
  `key6` varchar(200) DEFAULT NULL,
  `value6` varchar(200) DEFAULT NULL,
  `key7` varchar(200) DEFAULT NULL,
  `value7` varchar(200) DEFAULT NULL,
  `key8` varchar(200) DEFAULT NULL,
  `value8` varchar(200) DEFAULT NULL,
  `key9` varchar(200) DEFAULT NULL,
  `value9` varchar(200) DEFAULT NULL,
  `eventTime` varchar(50) DEFAULT NULL,
  `roleID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1194420 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for EventCount
-- ----------------------------
DROP TABLE IF EXISTS `EventCount`;
CREATE TABLE `EventCount` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `statdate` varchar(20) DEFAULT NULL,
  `gameregion` varchar(10) DEFAULT NULL,
  `eventid` varchar(200) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `info` mediumtext,
  `roleidcount` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for exclude_account_info
-- ----------------------------
DROP TABLE IF EXISTS `exclude_account_info`;
CREATE TABLE `exclude_account_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) NOT NULL,
  `accountid` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx` (`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for gsinfo
-- ----------------------------
DROP TABLE IF EXISTS `gsinfo`;
CREATE TABLE `gsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL,
  `areaid` int(11) NOT NULL,
  `accountid` varchar(30) NOT NULL,
  `playerid` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ios_reports
-- ----------------------------
DROP TABLE IF EXISTS `ios_reports`;
CREATE TABLE `ios_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL COMMENT '数据平台游戏id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'appstore内部购买id',
  `units` int(11) DEFAULT NULL COMMENT '购买次数',
  `price` decimal(10,2) unsigned DEFAULT NULL COMMENT '购买价格',
  `price_cny` decimal(10,2) unsigned DEFAULT NULL COMMENT '由title identifier中解析出来的值，相当于人民币价格（前题是游戏中传值正确）',
  `date` date NOT NULL COMMENT '购买日期',
  `currency` varchar(10) DEFAULT NULL COMMENT '币种',
  `created_at` datetime NOT NULL COMMENT '导出记录时间 utc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ip_country
-- ----------------------------
DROP TABLE IF EXISTS `ip_country`;
CREATE TABLE `ip_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155819 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ip_province
-- ----------------------------
DROP TABLE IF EXISTS `ip_province`;
CREATE TABLE `ip_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(20) NOT NULL DEFAULT '',
  `province` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ip` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=25272542 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for item_xml
-- ----------------------------
DROP TABLE IF EXISTS `item_xml`;
CREATE TABLE `item_xml` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `itemcode` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(255) DEFAULT NULL,
  `createtime` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3430 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for items_equipments_storage_count
-- ----------------------------
DROP TABLE IF EXISTS `items_equipments_storage_count`;
CREATE TABLE `items_equipments_storage_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamesWitch` int(11) NOT NULL DEFAULT '0',
  `gameRegion` int(11) NOT NULL DEFAULT '0',
  `statDate` varchar(50) DEFAULT NULL,
  `itemsStorage` mediumtext,
  `equipmentsStorage` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31100 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for payment_info
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `paycode` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `payrate` double DEFAULT '0' COMMENT '通道费',
  `taxrate` double DEFAULT '0' COMMENT '税率',
  `precentrate` double DEFAULT '0' COMMENT '分成比例对方合同标注即对方的比例',
  `payname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `typecode` int(11) DEFAULT NULL,
  `typename` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `channel_income` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `cooperate` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '商务负责人t_user用户id值',
  `status` int(11) DEFAULT '0' COMMENT '0：待确认，1：未合作，2：未签署，3：签署中，4：合作中',
  `startdate` varchar(50) DEFAULT NULL COMMENT '协议开始日期',
  `enddate` varchar(50) DEFAULT NULL COMMENT '协议结束日期',
  `settledate` varchar(50) DEFAULT NULL COMMENT '结算截止日期',
  `info1` varchar(255) DEFAULT '合同备注',
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4248 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for payment_money
-- ----------------------------
DROP TABLE IF EXISTS `payment_money`;
CREATE TABLE `payment_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `rmb` double DEFAULT NULL COMMENT '该币种兑换人民币比例,乘以该值得人民币单位分',
  `name` varchar(50) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_account_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_account_day`;
CREATE TABLE `pip_account_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) NOT NULL,
  `regionid` int(10) DEFAULT NULL,
  `accgame` varchar(50) DEFAULT NULL COMMENT '备注游戏id.（在player表中拿出来的accountid与account表中id所对应的游戏可能不是同一款游戏，在此做一个备注）',
  `accountid` int(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL COMMENT '地域',
  `model` varchar(200) DEFAULT NULL,
  `clientmodel` varchar(100) DEFAULT NULL,
  `cid` varchar(300) DEFAULT NULL,
  `system` varchar(100) DEFAULT NULL COMMENT '系统',
  `version` varchar(100) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `backversion` varchar(50) DEFAULT NULL,
  `backchannel` varchar(100) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL COMMENT '状态1是新增账户，0不是新增账户',
  `stepnum` int(10) DEFAULT NULL,
  `onlinetime` varchar(50) DEFAULT NULL,
  `level1` int(10) DEFAULT NULL,
  `level2` int(10) DEFAULT NULL,
  `level3` int(10) DEFAULT NULL,
  `clevel1` int(10) DEFAULT NULL,
  `clevel2` int(10) DEFAULT NULL,
  `clevel3` int(10) DEFAULT NULL,
  `adid` varchar(50) DEFAULT NULL COMMENT '广告id',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `attributedtouchtime` varchar(30) DEFAULT NULL COMMENT '时间',
  `platform` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx` (`statdate`,`gamecode`,`regionid`,`accgame`),
  KEY `idx_statdate_ip` (`statdate`,`ip`),
  KEY `idx_statdate_backchannel` (`statdate`,`backchannel`)
) ENGINE=InnoDB AUTO_INCREMENT=26196806 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_account_model
-- ----------------------------
DROP TABLE IF EXISTS `pip_account_model`;
CREATE TABLE `pip_account_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modelinfo` varchar(200) DEFAULT NULL,
  `system` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mark` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=870191 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for pip_activation_model_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_activation_model_day`;
CREATE TABLE `pip_activation_model_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(255) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `cid` mediumtext,
  `total` int(11) DEFAULT NULL,
  `day2count` int(11) DEFAULT NULL,
  `day3count` int(11) DEFAULT NULL,
  `day4count` int(11) DEFAULT NULL,
  `day5count` int(11) DEFAULT NULL,
  `day6count` int(11) DEFAULT NULL,
  `day7count` int(11) DEFAULT NULL,
  `day15count` int(11) DEFAULT NULL,
  `day30count` int(11) DEFAULT NULL,
  `day60count` int(11) DEFAULT NULL COMMENT '第60天留存数即当天激活cid在第60天登录状况',
  `day8count` int(11) DEFAULT NULL,
  `day9count` int(11) DEFAULT NULL,
  `day10count` int(11) DEFAULT NULL,
  `day11count` int(11) DEFAULT NULL,
  `day12count` int(11) DEFAULT NULL,
  `day13count` int(11) DEFAULT NULL,
  `day14count` int(11) DEFAULT NULL,
  `day16count` int(11) DEFAULT NULL,
  `day17count` int(11) DEFAULT NULL,
  `day18count` int(11) DEFAULT NULL,
  `day19count` int(11) DEFAULT NULL,
  `day20count` int(11) DEFAULT NULL,
  `day21count` int(11) DEFAULT NULL,
  `day22count` int(11) DEFAULT NULL,
  `day23count` int(11) DEFAULT NULL,
  `day24count` int(11) DEFAULT NULL,
  `day25count` int(11) DEFAULT NULL,
  `day26count` int(11) DEFAULT NULL,
  `day27count` int(11) DEFAULT NULL,
  `day28count` int(11) DEFAULT NULL,
  `day29count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=841578 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_activegroup_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_activegroup_day`;
CREATE TABLE `pip_activegroup_day` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` varchar(10) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11923417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_activelevel_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_activelevel_day`;
CREATE TABLE `pip_activelevel_day` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `regionid` int(10) DEFAULT NULL,
  `activelevel` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312294 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_allproduct_data
-- ----------------------------
DROP TABLE IF EXISTS `pip_allproduct_data`;
CREATE TABLE `pip_allproduct_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gameid` int(10) DEFAULT NULL,
  `channel_name` varchar(50) DEFAULT NULL,
  `type` int(10) DEFAULT NULL COMMENT '0新增注册用户数,1活跃用户数,2上月新增本月留存用户数,3付费用户数,4收入总额-分成前,5收入总额-分成后',
  `statdate` varchar(50) DEFAULT NULL,
  `count` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397645 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_balance_info
-- ----------------------------
DROP TABLE IF EXISTS `pip_balance_info`;
CREATE TABLE `pip_balance_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `partition` varchar(50) DEFAULT NULL,
  `regionid` varchar(10) DEFAULT NULL,
  `abalance` varchar(50) DEFAULT NULL,
  `bbalance` varchar(50) DEFAULT NULL,
  `type` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=877214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_balance_info_bak
-- ----------------------------
DROP TABLE IF EXISTS `pip_balance_info_bak`;
CREATE TABLE `pip_balance_info_bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `regionid` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `abalance` bigint(20) DEFAULT NULL,
  `bbalance` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`statdate`),
  KEY `id_balance` (`accountid`,`abalance`,`bbalance`)
) ENGINE=InnoDB AUTO_INCREMENT=79809862 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for pip_bill_lianyun
-- ----------------------------
DROP TABLE IF EXISTS `pip_bill_lianyun`;
CREATE TABLE `pip_bill_lianyun` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `payname` varchar(80) DEFAULT NULL,
  `paycode` varchar(50) DEFAULT NULL,
  `companyname` varchar(300) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `money1` double DEFAULT NULL,
  `money2` double DEFAULT NULL,
  `billstate` int(3) DEFAULT '0' COMMENT '账单状态待确认0,正常提供1,不提供2,暂缓提供3',
  `billstartdate` varchar(25) DEFAULT NULL COMMENT '账单提供日期',
  `billenddate` varchar(25) DEFAULT NULL COMMENT '账单确认日期',
  `billconfirmmoney` double DEFAULT '0' COMMENT '确认结算金额',
  `info` varchar(500) DEFAULT NULL COMMENT '充值通道备注',
  `billstate2` int(3) DEFAULT '0' COMMENT '结算状态:0待确认1正常2暂缓',
  `billmoney1` double DEFAULT NULL COMMENT '开票金额',
  `billmoney2` double DEFAULT NULL COMMENT '实际金额',
  `billnumber` varchar(50) DEFAULT NULL COMMENT '发票号',
  `billdate1` varchar(25) DEFAULT NULL COMMENT '结算单提供日期',
  `billdate2` varchar(25) DEFAULT NULL COMMENT '开票日期',
  `billdate3` varchar(25) DEFAULT NULL COMMENT '寄票日期',
  `trackingnumber` varchar(30) DEFAULT NULL COMMENT '快递单号',
  `billdate4` varchar(25) DEFAULT NULL COMMENT '收款日期',
  `info2` varchar(500) DEFAULT NULL COMMENT '开票备注',
  `billstate3` int(3) DEFAULT NULL COMMENT '收款状态',
  `daynum` int(11) DEFAULT NULL COMMENT '持续天数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_key` (`paycode`,`gamecode`,`month`)
) ENGINE=InnoDB AUTO_INCREMENT=10274 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for pip_consume_info_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_consume_info_day`;
CREATE TABLE `pip_consume_info_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL COMMENT '游戏ID',
  `statdate` varchar(50) DEFAULT NULL COMMENT '消费日期',
  `accountid` varchar(50) DEFAULT NULL COMMENT '账户ID',
  `amountfree` double DEFAULT NULL COMMENT '消耗元宝',
  `amountpay` double DEFAULT NULL COMMENT '消耗充值元宝',
  `money` double DEFAULT NULL COMMENT '消耗充值金额',
  `paychannel` varchar(50) DEFAULT NULL COMMENT '消耗充值金额所属支付通道',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6779462 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_country_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_country_day`;
CREATE TABLE `pip_country_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_event_info
-- ----------------------------
DROP TABLE IF EXISTS `pip_event_info`;
CREATE TABLE `pip_event_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `eventid` varchar(10) DEFAULT NULL,
  `eventname` varchar(200) DEFAULT NULL,
  `showstate` int(10) DEFAULT NULL,
  `info` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_income_month
-- ----------------------------
DROP TABLE IF EXISTS `pip_income_month`;
CREATE TABLE `pip_income_month` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(20) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `money1` varchar(50) DEFAULT NULL COMMENT '成前收入分',
  `money2` varchar(50) DEFAULT NULL COMMENT '成后收入分',
  `acctotal` varchar(50) DEFAULT NULL,
  `activenum` varchar(50) DEFAULT NULL,
  `accountnum` varchar(50) DEFAULT NULL COMMENT '新增账户数',
  `feenum` varchar(50) DEFAULT NULL COMMENT '付费账户数',
  `newfeenum` varchar(50) DEFAULT NULL COMMENT '新增付费账户数',
  `newmoney` int(10) DEFAULT NULL COMMENT '新增付费账户收入',
  `newaccountmoney` int(10) DEFAULT NULL COMMENT '新增账户收入',
  `goldconsume` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_income_sure
-- ----------------------------
DROP TABLE IF EXISTS `pip_income_sure`;
CREATE TABLE `pip_income_sure` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `statmonth` varchar(50) DEFAULT NULL,
  `billmoney` double DEFAULT NULL COMMENT '开票金额',
  `billnum` varchar(50) DEFAULT NULL COMMENT '发票号',
  `billdate` varchar(50) DEFAULT NULL COMMENT '发票日期',
  `realmoney` double DEFAULT NULL COMMENT '实际收款金额',
  `realdate` varchar(50) DEFAULT NULL COMMENT '实际收款日期',
  `companycode` varchar(50) DEFAULT NULL,
  `companyname` varchar(300) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1931 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_income_yuanbao
-- ----------------------------
DROP TABLE IF EXISTS `pip_income_yuanbao`;
CREATE TABLE `pip_income_yuanbao` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `statdate` varchar(50) DEFAULT NULL,
  `money` int(100) DEFAULT NULL,
  `money1` int(100) DEFAULT NULL,
  `money2` int(100) DEFAULT NULL,
  `imoney180d` int(100) DEFAULT NULL,
  `imoney180d1` int(100) DEFAULT NULL COMMENT 'imoney180d除以360换成分',
  `imoney180d2` int(100) DEFAULT NULL,
  `statdate180d` varchar(50) DEFAULT NULL,
  `type` int(10) DEFAULT NULL COMMENT '1代表官网2代表联运',
  `ibuyMoneyUnknown` int(100) DEFAULT NULL COMMENT '未知通道元宝消费',
  PRIMARY KEY (`id`),
  KEY `id_game_statdate` (`gamecode`,`statdate`)
) ENGINE=InnoDB AUTO_INCREMENT=31627 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_incomegroup_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_incomegroup_day`;
CREATE TABLE `pip_incomegroup_day` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `registerchannel` varchar(50) DEFAULT NULL,
  `paychannel` varchar(50) DEFAULT NULL,
  `gamecode` varchar(10) DEFAULT NULL,
  `gameregion` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `phonesys` varchar(50) DEFAULT NULL,
  `money1` varchar(50) DEFAULT NULL COMMENT '分组综合（分成前）',
  `money2` varchar(50) DEFAULT NULL COMMENT '分组综合（分成后）',
  `regionid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1715940 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_itemconsume_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_itemconsume_day`;
CREATE TABLE `pip_itemconsume_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `regionid` int(10) DEFAULT NULL,
  `goldByCharge` varchar(50) DEFAULT NULL,
  `goldByGame` varchar(50) DEFAULT NULL,
  `goldConsume` varchar(50) DEFAULT NULL,
  `itemInfo` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=466473 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_outflow_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_outflow_day`;
CREATE TABLE `pip_outflow_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` varchar(10) DEFAULT NULL,
  `outflow7areanum` mediumtext,
  `outflow7systemnum` mediumtext,
  `outflow14areanum` mediumtext,
  `outflow14systemnum` mediumtext,
  `outflow30areanum` mediumtext,
  `outflow30systemnum` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48681 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_payaccount_info_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_payaccount_info_day`;
CREATE TABLE `pip_payaccount_info_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL COMMENT '游戏ID',
  `createtime` varchar(50) DEFAULT NULL COMMENT '账户在游戏首次登录时间',
  `accountid` varchar(50) DEFAULT NULL COMMENT '账户ID',
  `regcid` varchar(50) DEFAULT NULL COMMENT '账户注册设备ID',
  `regip` varchar(50) DEFAULT NULL COMMENT '账户注册IP',
  `regprovince` varchar(50) DEFAULT NULL COMMENT '账户注册IP所属地域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1739543 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_province_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_province_day`;
CREATE TABLE `pip_province_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_quarter
-- ----------------------------
DROP TABLE IF EXISTS `pip_quarter`;
CREATE TABLE `pip_quarter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quarter` varchar(20) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `acctotal` int(11) DEFAULT NULL,
  `money1` int(11) DEFAULT NULL,
  `money2` int(11) DEFAULT NULL,
  `activenum` int(11) DEFAULT NULL,
  `feenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_quest_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_quest_day`;
CREATE TABLE `pip_quest_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `regionid` varchar(20) DEFAULT NULL,
  `questid` varchar(20) DEFAULT NULL,
  `getquestnum` int(50) DEFAULT NULL,
  `abandonnum` int(50) DEFAULT NULL COMMENT '放弃任务次数',
  `finishquestnum` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33720369 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_resource_count
-- ----------------------------
DROP TABLE IF EXISTS `pip_resource_count`;
CREATE TABLE `pip_resource_count` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` varchar(50) DEFAULT NULL,
  `regionid` varchar(50) DEFAULT NULL,
  `resourceid` varchar(100) DEFAULT NULL,
  `count` varchar(100) DEFAULT NULL,
  `createtime` varchar(200) DEFAULT NULL,
  `accountinfo` mediumtext,
  `reasoninfo` mediumtext,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pip_stepname_day
-- ----------------------------
DROP TABLE IF EXISTS `pip_stepname_day`;
CREATE TABLE `pip_stepname_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gameid` int(10) NOT NULL,
  `action` int(50) DEFAULT NULL,
  `stepname` varchar(200) DEFAULT NULL,
  `position` int(10) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `version` varchar(20) DEFAULT NULL COMMENT '版本',
  `platform` varchar(20) DEFAULT NULL COMMENT '平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10443 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for Resource
-- ----------------------------
DROP TABLE IF EXISTS `Resource`;
CREATE TABLE `Resource` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `gameregion` varchar(50) DEFAULT NULL,
  `accountid` varchar(50) DEFAULT NULL,
  `playerid` varchar(50) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `resourceid` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `reason` mediumtext,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_info
-- ----------------------------
DROP TABLE IF EXISTS `resource_info`;
CREATE TABLE `resource_info` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `gamecode` int(10) DEFAULT NULL,
  `resourceid` varchar(50) DEFAULT NULL,
  `resourcename` varchar(50) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `showstate` int(10) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_accountdata_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_accountdata_day`;
CREATE TABLE `stat_accountdata_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(50) DEFAULT NULL,
  `regnum` int(11) DEFAULT NULL,
  `adduser` int(11) DEFAULT NULL,
  `leaveuser` int(11) DEFAULT NULL,
  `model` mediumtext,
  `version` mediumtext,
  `loguser` mediumtext,
  `reguser` int(11) DEFAULT NULL,
  `activeuser` int(11) DEFAULT NULL,
  `regandpayuser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`statdate`)
) ENGINE=InnoDB AUTO_INCREMENT=108697 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_activation_channel_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_activation_channel_day`;
CREATE TABLE `stat_activation_channel_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(255) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `chlcode` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `chlinfo` mediumtext,
  `total` int(11) DEFAULT NULL,
  `newaccount` int(11) DEFAULT NULL COMMENT '2014-07-03添加新增账户列',
  `day2count` int(11) DEFAULT NULL,
  `day3count` int(11) DEFAULT NULL,
  `day4count` int(11) DEFAULT NULL,
  `day5count` int(11) DEFAULT NULL,
  `day6count` int(11) DEFAULT NULL,
  `day7count` int(11) DEFAULT NULL,
  `day15count` int(11) DEFAULT NULL,
  `day30count` int(11) DEFAULT NULL,
  `day60count` int(11) DEFAULT NULL COMMENT '第60天留存数即当天激活cid在第60天登录状况',
  `day8count` int(11) DEFAULT NULL,
  `day9count` int(11) DEFAULT NULL,
  `day10count` int(11) DEFAULT NULL,
  `day11count` int(11) DEFAULT NULL,
  `day12count` int(11) DEFAULT NULL,
  `day13count` int(11) DEFAULT NULL,
  `day14count` int(11) DEFAULT NULL,
  `day16count` int(11) DEFAULT NULL,
  `day17count` int(11) DEFAULT NULL,
  `day18count` int(11) DEFAULT NULL,
  `day19count` int(11) DEFAULT NULL,
  `day20count` int(11) DEFAULT NULL,
  `day21count` int(11) DEFAULT NULL,
  `day22count` int(11) DEFAULT NULL,
  `day23count` int(11) DEFAULT NULL,
  `day24count` int(11) DEFAULT NULL,
  `day25count` int(11) DEFAULT NULL,
  `day26count` int(11) DEFAULT NULL,
  `day27count` int(11) DEFAULT NULL,
  `day28count` int(11) DEFAULT NULL,
  `day29count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamecode,statdate,chlcode` (`day2count`,`day3count`,`day4count`,`day5count`,`day6count`,`day7count`,`day15count`,`day8count`,`day9count`,`day10count`,`day11count`,`day12count`,`day13count`,`day14count`)
) ENGINE=InnoDB AUTO_INCREMENT=1146361 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_activation_cid
-- ----------------------------
DROP TABLE IF EXISTS `stat_activation_cid`;
CREATE TABLE `stat_activation_cid` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `statdate` varchar(25) DEFAULT NULL,
  `regioncode` int(11) DEFAULT NULL,
  `gameregion` varchar(50) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `chlcode` varchar(25) DEFAULT NULL,
  `clientmodel` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `serviceversion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`gamecode`,`statdate`)
) ENGINE=InnoDB AUTO_INCREMENT=27753551 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_activation_player_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_activation_player_day`;
CREATE TABLE `stat_activation_player_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(25) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `gameregion` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `playerid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `playername` varchar(255) DEFAULT NULL,
  `xx` int(11) DEFAULT NULL,
  `yy` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `chlcode` varchar(25) DEFAULT NULL,
  `cid` varchar(100) DEFAULT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `faction` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statdate_gamecode` (`statdate`,`gamecode`)
) ENGINE=InnoDB AUTO_INCREMENT=33061225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_active_fee_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_active_fee_day`;
CREATE TABLE `stat_active_fee_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(25) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `activenum` int(11) DEFAULT NULL,
  `activeinfo` mediumtext,
  `feenum` int(11) DEFAULT NULL,
  `feemoney` int(11) DEFAULT NULL,
  `loyalnum` int(11) DEFAULT NULL,
  `feeinfo` mediumtext,
  `moneyinfo` mediumtext,
  `chargedayinfo` mediumtext,
  `chargemoneyinfo` mediumtext,
  `chargelevelinfo` mediumtext,
  `activedayinfo` mediumtext,
  `lianyuninfo` mediumtext COMMENT '联运渠道使用联运充值通道的数据值格式渠道%人数%订单%金额',
  `firstpayinfo` mediumtext COMMENT '首次付费：渠道代码%人数%金额',
  `clientnum` int(11) DEFAULT NULL COMMENT '启动客户端数',
  `clientinfo` mediumtext COMMENT '启动客户端数：渠道%启动数',
  `loginusertime` mediumtext COMMENT '当天活跃用户登录人数与在线时长',
  `firstusertime` mediumtext COMMENT '激活用户登录人数与在线时长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83063 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_average_high_online_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_average_high_online_day`;
CREATE TABLE `stat_average_high_online_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) NOT NULL,
  `statdate` varchar(50) DEFAULT NULL,
  `aveonline` int(11) DEFAULT NULL,
  `highonline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8503 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_center
-- ----------------------------
DROP TABLE IF EXISTS `stat_center`;
CREATE TABLE `stat_center` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gamecode` varchar(100) DEFAULT NULL,
  `regioncode` varchar(100) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `modifytime` varchar(100) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_channelfee_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_channelfee_day`;
CREATE TABLE `stat_channelfee_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) DEFAULT NULL,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(50) DEFAULT NULL,
  `model` mediumtext,
  `income` mediumtext,
  `money1` int(11) DEFAULT NULL COMMENT '分成前',
  `money2` int(11) DEFAULT NULL COMMENT '分成后',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1350481 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_channelreg_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_channelreg_day`;
CREATE TABLE `stat_channelreg_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(50) DEFAULT NULL,
  `regdata` mediumtext,
  `regdatanew` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80669 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_clientmodel_common
-- ----------------------------
DROP TABLE IF EXISTS `stat_clientmodel_common`;
CREATE TABLE `stat_clientmodel_common` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(50) NOT NULL,
  `action` int(11) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `lognum` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `loginfo` mediumtext,
  `channel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_stat_userstay_common` (`statdate`,`gamecode`)
) ENGINE=InnoDB AUTO_INCREMENT=10311671 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_clientmodel_common_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_clientmodel_common_day`;
CREATE TABLE `stat_clientmodel_common_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `cid` varchar(200) DEFAULT NULL,
  `createtime` varchar(50) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `day1` int(10) DEFAULT NULL,
  `day2` int(10) DEFAULT NULL,
  `day3` int(10) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `position1` varchar(50) DEFAULT NULL,
  `position2` varchar(50) DEFAULT NULL,
  `position3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamecode` (`gamecode`,`createtime`,`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11332786 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_customerloyalty_month
-- ----------------------------
DROP TABLE IF EXISTS `stat_customerloyalty_month`;
CREATE TABLE `stat_customerloyalty_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(7) NOT NULL,
  `game_code` varchar(10) NOT NULL,
  `customerloyalty` mediumtext NOT NULL COMMENT '用户ID%登陆次数%在线时长%最高角色级别;',
  `lostUserAmount` int(10) DEFAULT NULL,
  `lostUserRate` varchar(10) DEFAULT NULL,
  `onlineUserAmount` int(10) DEFAULT NULL,
  `lastMonthUserAmount` int(10) DEFAULT NULL,
  `levelUserCharge` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=878 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_customerloyalty_week
-- ----------------------------
DROP TABLE IF EXISTS `stat_customerloyalty_week`;
CREATE TABLE `stat_customerloyalty_week` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` varchar(10) NOT NULL,
  `end_date` varchar(10) NOT NULL,
  `game_code` varchar(10) NOT NULL,
  `customerloyalty` mediumtext NOT NULL,
  `lostUserAmount` int(10) DEFAULT NULL,
  `lostUserRate` varchar(10) DEFAULT NULL,
  `onlineUserAmount` int(10) DEFAULT NULL,
  `lastWeekUserAmount` int(10) DEFAULT NULL,
  `levelUserCharge` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3950 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_event
-- ----------------------------
DROP TABLE IF EXISTS `stat_event`;
CREATE TABLE `stat_event` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(10) DEFAULT NULL,
  `gameregion` int(10) DEFAULT NULL,
  `eventid` varchar(50) DEFAULT NULL,
  `eventkey` varchar(50) DEFAULT NULL,
  `eventvalue` varchar(100) DEFAULT NULL,
  `eventcount` int(50) DEFAULT NULL,
  `eventuser` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68418 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_forbinfo_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_forbinfo_day`;
CREATE TABLE `stat_forbinfo_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gameswitch` int(11) DEFAULT NULL,
  `gameregion` int(11) DEFAULT NULL,
  `forbinfo` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42943 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_income_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_income_day`;
CREATE TABLE `stat_income_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) DEFAULT NULL,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(50) DEFAULT NULL,
  `income` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1120114 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_income_info_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_income_info_day`;
CREATE TABLE `stat_income_info_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `statdate` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `finishtime` datetime DEFAULT NULL,
  `paychannel` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `money1` int(11) DEFAULT NULL,
  `money2` int(11) DEFAULT NULL,
  `accountid` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `regioncode` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `productid` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `orderid` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `playerid` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `playername` varchar(25) DEFAULT NULL,
  `level` varchar(25) CHARACTER SET gbk DEFAULT NULL,
  `phonesys` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `regionid` varchar(5) CHARACTER SET gbk DEFAULT NULL,
  `money` varchar(11) CHARACTER SET gbk DEFAULT NULL,
  `currency` varchar(20) CHARACTER SET gbk DEFAULT NULL,
  `rmb` double DEFAULT NULL COMMENT '该币种兑换人民币比例,乘以该值得人民币单位分',
  `amount` varchar(50) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_game_statdate` (`gamecode`,`statdate`),
  KEY `incex_game_finishtime_accountid` (`gamecode`,`finishtime`,`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=438829 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_income_regtime_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_income_regtime_day`;
CREATE TABLE `stat_income_regtime_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(25) DEFAULT NULL,
  `gamecode` int(11) DEFAULT NULL,
  `regtimemoney` mediumtext COMMENT '每天充值玩家最早创建角色时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52746 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_income_sum_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_income_sum_day`;
CREATE TABLE `stat_income_sum_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `statdate` varchar(25) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `finishtime` datetime DEFAULT NULL,
  `registerchannel` varchar(255) DEFAULT NULL,
  `paychannel` varchar(255) DEFAULT NULL,
  `money1` int(11) DEFAULT NULL,
  `money2` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `regioncode` varchar(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phonesys` varchar(255) DEFAULT NULL,
  `phoneclient` varchar(155) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `firstcharge` varchar(10) DEFAULT NULL COMMENT '如果是首充标记为1',
  `firstchargemoney` varchar(11) DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `regionid` int(5) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `rmb` double DEFAULT NULL COMMENT '该币种兑换人民币比例,乘以该值得人民币单位分',
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_game_statdate` (`gamecode`,`statdate`),
  KEY `incex_game_finishtime_accountid` (`gamecode`,`finishtime`,`accountid`)
) ENGINE=InnoDB AUTO_INCREMENT=15407292 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_income3_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_income3_day`;
CREATE TABLE `stat_income3_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gamecode` int(11) NOT NULL DEFAULT '0',
  `channel` varchar(50) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `amount1` decimal(10,0) DEFAULT NULL COMMENT '分成后-按合作方',
  `amount2` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=563387 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_incomefee_hour
-- ----------------------------
DROP TABLE IF EXISTS `stat_incomefee_hour`;
CREATE TABLE `stat_incomefee_hour` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `game` varchar(10) DEFAULT NULL,
  `regionid` int(10) DEFAULT NULL,
  `datehour` varchar(13) DEFAULT NULL,
  `fee` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=959998 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_incomeImoney_gs
-- ----------------------------
DROP TABLE IF EXISTS `stat_incomeImoney_gs`;
CREATE TABLE `stat_incomeImoney_gs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) DEFAULT NULL,
  `gameregion` int(11) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `playerid` int(11) DEFAULT NULL,
  `imoney` int(11) DEFAULT NULL,
  `datehour` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=838079 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_incomeImoney_hour
-- ----------------------------
DROP TABLE IF EXISTS `stat_incomeImoney_hour`;
CREATE TABLE `stat_incomeImoney_hour` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `game` char(2) DEFAULT NULL,
  `gameregion` varchar(13) DEFAULT NULL,
  `datehour` varchar(13) DEFAULT NULL,
  `imoney` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3374412 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_outflow_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_outflow_day`;
CREATE TABLE `stat_outflow_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL,
  `statdate` varchar(25) DEFAULT NULL,
  `login7num` int(11) DEFAULT NULL COMMENT '7天前登录账户数',
  `login7feenum` int(11) DEFAULT NULL,
  `outflow7num` int(11) DEFAULT NULL COMMENT '7天未登录账户数',
  `outflow7channel` mediumtext COMMENT '7天流失用户注册渠道',
  `outflow7register` mediumtext COMMENT '7天流失户用最早注册时间',
  `outflow7level` mediumtext COMMENT '7天流失户用最大角色级别',
  `outflow7feetotal` mediumtext COMMENT '7天付费金额大于多少的流失数',
  `outflow7feenum` mediumtext COMMENT '7天付费次数大于多少的流失用户',
  `outflow7areanum` mediumtext,
  `outflow7systemnum` varchar(200) DEFAULT NULL,
  `login14num` int(11) DEFAULT NULL COMMENT '14天前登录账户数',
  `login14feenum` int(11) DEFAULT NULL,
  `outflow14num` int(11) DEFAULT NULL COMMENT '14天未登录账户数',
  `outflow14channel` mediumtext COMMENT '14天流失用户注册渠道',
  `outflow14register` mediumtext COMMENT '14天流失户用最早注册时间',
  `outflow14level` mediumtext COMMENT '14天流失户用最大角色级别',
  `outflow14feetotal` mediumtext COMMENT '14天付费金额大于多少的流失数',
  `outflow14feenum` mediumtext COMMENT '14天付费次数大于多少的流失用户',
  `outflow14areanum` mediumtext,
  `outflow14systemnum` varchar(200) DEFAULT NULL,
  `login30num` int(11) DEFAULT NULL COMMENT '30天前登录账户数',
  `login30feenum` int(11) DEFAULT NULL,
  `outflow30num` int(11) DEFAULT NULL COMMENT '30天未登录账户数',
  `outflow30channel` mediumtext COMMENT '30天流失用户注册渠道',
  `outflow30register` mediumtext COMMENT '30天流失户用最早注册时间',
  `outflow30level` mediumtext COMMENT '30天流失户用最大角色级别',
  `outflow30feetotal` mediumtext COMMENT '30天付费金额大于多少的流失数',
  `outflow30feenum` mediumtext COMMENT '30天付费次数大于多少的流失用户',
  `outflow30areanum` mediumtext,
  `outflow30systemnum` varchar(200) DEFAULT NULL,
  `outflow7clevel` mediumtext COMMENT '7天流失户用最大城堡级别，cot专用',
  `outflow14clevel` mediumtext COMMENT '14天流失户用最大城堡级别，cot专用',
  `outflow30clevel` mediumtext COMMENT '30天流失户用最大城堡级别，cot专用',
  PRIMARY KEY (`id`),
  KEY `index_ins` (`gamecode`,`statdate`)
) ENGINE=InnoDB AUTO_INCREMENT=51376 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_roleattr_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_roleattr_day`;
CREATE TABLE `stat_roleattr_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gameswitch` int(11) DEFAULT NULL,
  `gameregion` int(11) DEFAULT NULL,
  `roleattr` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16420 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_roledata_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_roledata_day`;
CREATE TABLE `stat_roledata_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_date` varchar(10) DEFAULT NULL,
  `game_code` int(11) DEFAULT NULL,
  `game_region` int(11) DEFAULT NULL,
  `role_level_number` mediumtext,
  `tong_rank_tophandred` mediumtext,
  `role_charge_tophandred` mediumtext,
  `role_clazz_number` text,
  `role_faction_number` text,
  `role_camp_number` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220608 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_searchcharge_info_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_searchcharge_info_day`;
CREATE TABLE `stat_searchcharge_info_day` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `gamecode` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `money` varchar(50) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `searchtime` varchar(100) DEFAULT NULL,
  `feeway` varchar(100) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `showCreateTime` varchar(50) DEFAULT NULL,
  `showFirstCharge` varchar(50) DEFAULT NULL,
  `collectORdetail` varchar(50) DEFAULT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  `playerid` varchar(50) DEFAULT NULL,
  `keyword` varchar(50) DEFAULT NULL,
  `reporttype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3159 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_shell
-- ----------------------------
DROP TABLE IF EXISTS `stat_shell`;
CREATE TABLE `stat_shell` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `skey` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(32) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gamecode` varchar(100) DEFAULT NULL,
  `regioncode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for stat_user_active_lost
-- ----------------------------
DROP TABLE IF EXISTS `stat_user_active_lost`;
CREATE TABLE `stat_user_active_lost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_number` int(11) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `game_code` int(11) DEFAULT NULL,
  `active_user_num` int(11) DEFAULT NULL,
  `lost_user_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1366 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_useractive_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_useractive_day`;
CREATE TABLE `stat_useractive_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(10) DEFAULT NULL,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `days30channelfee` mediumtext,
  `validactiveuser` int(11) NOT NULL DEFAULT '0',
  `transuser` int(11) NOT NULL DEFAULT '0',
  `loguseridlevel` mediumtext,
  `days1feeusernum` int(11) DEFAULT NULL,
  `days1totalfee` int(11) DEFAULT NULL,
  `days1channeluserfee` mediumtext,
  `days7feeusernum` int(11) DEFAULT '0' COMMENT '新建用户7日内付费转化率',
  `days7totalfee` int(11) DEFAULT NULL,
  `days7channeluserfee` mediumtext,
  `days14feeusernum` int(11) DEFAULT NULL,
  `days14totalfee` int(11) DEFAULT '0' COMMENT '当天创建账户后7天内付费用户数',
  `days14channeluserfee` mediumtext,
  `days30feeusernum` int(11) DEFAULT NULL,
  `days30totalfee` int(11) DEFAULT '0' COMMENT '当天创建账户后30天内总付费额',
  `days30channeluserfee` mediumtext COMMENT '渠道代码%付费用户数%付费金额',
  `firstchanneluserfee` mediumtext COMMENT '渠道代码%付费用户数%付费金额',
  `currentdaylogactiveuser` mediumtext COMMENT '渠道%活跃用户数',
  `currentdaypayuser` mediumtext COMMENT '渠道%付费用户数',
  `days30lianyunchannelfee` mediumtext COMMENT '30天内联运渠道%分成前%分成后',
  `days7channeloutflow` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_stat_useractive_day` (`statdate`,`gameswitch`)
) ENGINE=InnoDB AUTO_INCREMENT=365005 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_usercharge
-- ----------------------------
DROP TABLE IF EXISTS `stat_usercharge`;
CREATE TABLE `stat_usercharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_code` int(11) DEFAULT NULL,
  `charge_date` varchar(10) DEFAULT NULL,
  `userid_charge` mediumtext,
  `user_charge_count` int(11) DEFAULT NULL,
  `charge_count` int(11) DEFAULT NULL,
  `fresh_user_charge_channel` mediumtext,
  `fresh_user_charge_count` int(11) DEFAULT NULL,
  `time_share_charge` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_charge_date` (`charge_date`)
) ENGINE=InnoDB AUTO_INCREMENT=40333 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for stat_userdata_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_userdata_day`;
CREATE TABLE `stat_userdata_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameswitch` int(11) NOT NULL DEFAULT '0',
  `gameregion` int(11) NOT NULL DEFAULT '0',
  `statdate` varchar(10) DEFAULT NULL,
  `highonlinenum` int(11) NOT NULL DEFAULT '0',
  `pointtimeonline` mediumtext,
  `activeuser` int(11) DEFAULT NULL,
  `loginnum` int(11) DEFAULT NULL,
  `addrole` int(11) DEFAULT NULL,
  `loguserid` mediumtext,
  `logroleid` mediumtext,
  `leaveusernum` int(11) DEFAULT NULL,
  `leaverolenum` int(11) DEFAULT NULL,
  `versionlog` mediumtext,
  `versionlogcount` mediumtext,
  `modellog` mediumtext,
  `modellogcount` mediumtext,
  `onlineavg` int(11) DEFAULT NULL,
  `useronlinetime` varchar(255) DEFAULT NULL,
  `leveluptop100` mediumtext,
  `moneytop100` mediumtext,
  `imoney` mediumtext,
  `idimoney` mediumtext,
  `levelimoney` mediumtext,
  `roleattribute` mediumtext,
  `moneytop100true` mediumtext,
  `idimoney2` mediumtext,
  `avgonlinenum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_stat_userdata_day` (`gameswitch`,`statdate`,`gameregion`)
) ENGINE=InnoDB AUTO_INCREMENT=539716 DEFAULT CHARSET=gbk ROW_FORMAT=COMPRESSED;

-- ----------------------------
-- Table structure for stat_wulin25_occupation_party
-- ----------------------------
DROP TABLE IF EXISTS `stat_wulin25_occupation_party`;
CREATE TABLE `stat_wulin25_occupation_party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_date` varchar(10) DEFAULT NULL,
  `game_region` int(11) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `party` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11431 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `cvalue` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `dkey` varchar(100) DEFAULT NULL,
  `dval` varchar(100) DEFAULT NULL,
  `txt` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `subtype` int(32) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `button` varchar(1000) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `unitid` varchar(50) DEFAULT NULL,
  `descript` varchar(50) DEFAULT NULL,
  `pid` int(32) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `roleid` int(32) DEFAULT NULL,
  `resourceid` varchar(100) DEFAULT NULL,
  `button` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `INDEX_ROLERESOURCE` (`roleid`,`resourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_safeconfig
-- ----------------------------
DROP TABLE IF EXISTS `sys_safeconfig`;
CREATE TABLE `sys_safeconfig` (
  `id` int(32) NOT NULL DEFAULT '0',
  `type` int(32) DEFAULT NULL,
  `state` int(32) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `task_id` int(32) NOT NULL AUTO_INCREMENT,
  `task_code` varchar(100) DEFAULT NULL,
  `task_type` int(32) DEFAULT NULL,
  `task_name` varchar(50) DEFAULT NULL,
  `job_class` varchar(100) DEFAULT NULL,
  `execycle` int(32) DEFAULT NULL,
  `day_of_month` int(32) DEFAULT NULL,
  `day_of_week` int(32) DEFAULT NULL,
  `hour` int(32) DEFAULT NULL,
  `minute` int(32) DEFAULT NULL,
  `interval_hour` int(32) DEFAULT NULL,
  `interval_minute` int(32) DEFAULT NULL,
  `task_interval_unit` int(32) DEFAULT NULL,
  `cron_expression` varchar(20) DEFAULT NULL,
  `is_enable` int(32) DEFAULT NULL,
  `task_remark` varchar(255) DEFAULT NULL,
  `user_id` bigint(64) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `param_value` varchar(100) DEFAULT NULL,
  `task_interval` int(32) DEFAULT NULL,
  `task_threadnum` int(32) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_unit
-- ----------------------------
DROP TABLE IF EXISTS `sys_unit`;
CREATE TABLE `sys_unit` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `unitcode` varchar(20) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(120) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `unitid` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `location` int(32) DEFAULT NULL,
  `style` varchar(20) DEFAULT NULL,
  `logintype` int(32) DEFAULT NULL,
  `logintime` varchar(20) DEFAULT NULL,
  `loginip` varchar(50) DEFAULT NULL,
  `logincount` int(32) DEFAULT NULL,
  `loginresid` varchar(100) DEFAULT NULL,
  `linkqq` varchar(20) DEFAULT NULL,
  `linkweb` varchar(100) DEFAULT NULL,
  `linkcity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `INDEX_LONGINNAME` (`loginname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_log`;
CREATE TABLE `sys_user_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `userid` bigint(64) DEFAULT NULL,
  `type` int(32) DEFAULT NULL,
  `loginname` varchar(100) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `logintime` varchar(20) DEFAULT NULL,
  `loginip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `userid` bigint(64) DEFAULT NULL,
  `roleid` int(32) DEFAULT NULL,
  UNIQUE KEY `INDEX_USERROLE` (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_day_itemUsed
-- ----------------------------
DROP TABLE IF EXISTS `t_day_itemUsed`;
CREATE TABLE `t_day_itemUsed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(4) NOT NULL DEFAULT '0',
  `statdate` varchar(10) DEFAULT NULL,
  `regionId` int(4) NOT NULL DEFAULT '0',
  `propsCode` varchar(30) DEFAULT NULL,
  `usedAmount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2863193 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_moneytop100_day
-- ----------------------------
DROP TABLE IF EXISTS `t_moneytop100_day`;
CREATE TABLE `t_moneytop100_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameCode` int(11) NOT NULL DEFAULT '0',
  `gameRegion` int(11) NOT NULL DEFAULT '0',
  `statDate` varchar(10) DEFAULT NULL,
  `moneyTop100` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_t_moneytop100_day` (`gameCode`,`statDate`,`gameRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=212513 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_month_userChannelInfo
-- ----------------------------
DROP TABLE IF EXISTS `t_month_userChannelInfo`;
CREATE TABLE `t_month_userChannelInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statDate` varchar(7) DEFAULT NULL,
  `statDateDisplay` varchar(10) DEFAULT NULL,
  `gameSwitch` int(11) DEFAULT NULL,
  `channelCode` varchar(10) NOT NULL DEFAULT '',
  `channelName` varchar(50) DEFAULT '',
  `registerCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_gameswitch` (`gameSwitch`),
  KEY `idx_statdate` (`statDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2738461 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_month_userLost
-- ----------------------------
DROP TABLE IF EXISTS `t_month_userLost`;
CREATE TABLE `t_month_userLost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameswitch` int(4) NOT NULL DEFAULT '0',
  `gameregion` int(4) NOT NULL DEFAULT '0',
  `statdate` varchar(10) DEFAULT NULL,
  `lostUserByLevel` text,
  `rebackUserByLevel` text,
  `activeUserBylevel` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3929 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_report
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE gbk_bin NOT NULL,
  `report` varchar(255) COLLATE gbk_bin NOT NULL,
  `method` varchar(255) COLLATE gbk_bin NOT NULL,
  `reportGroupId` int(11) NOT NULL,
  `searchLevel` varchar(255) COLLATE gbk_bin DEFAULT NULL,
  `gameCodes` varchar(255) COLLATE gbk_bin DEFAULT NULL,
  `waitTime` int(11) DEFAULT '0' COMMENT '该报表加载时间,单位:毫秒',
  `level` int(11) NOT NULL COMMENT '2:普通,1:高级,0:高级与普通具有',
  `orderNum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=gbk COLLATE=gbk_bin;

-- ----------------------------
-- Table structure for t_report_log
-- ----------------------------
DROP TABLE IF EXISTS `t_report_log`;
CREATE TABLE `t_report_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `reportId` int(11) NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `createTime` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110275 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for t_week_userLost
-- ----------------------------
DROP TABLE IF EXISTS `t_week_userLost`;
CREATE TABLE `t_week_userLost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameId` int(4) NOT NULL DEFAULT '0',
  `monday` varchar(10) DEFAULT NULL,
  `sunday` varchar(10) DEFAULT NULL,
  `onlineUserAmount` int(10) DEFAULT NULL,
  `lastWeekUserAmount` int(10) DEFAULT NULL,
  `lostUserAmount` int(10) DEFAULT NULL,
  `lostUserRate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88326 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tbl_advert_info
-- ----------------------------
DROP TABLE IF EXISTS `tbl_advert_info`;
CREATE TABLE `tbl_advert_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(20) DEFAULT NULL COMMENT '账户id',
  `statdate` varchar(20) DEFAULT NULL COMMENT '日期',
  `date_start` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `date_stop` varchar(20) DEFAULT NULL COMMENT '结束日期',
  `system` varchar(20) DEFAULT NULL COMMENT '系统',
  `platform` varchar(20) DEFAULT NULL COMMENT '投放平台',
  `mediasource` varchar(20) DEFAULT NULL COMMENT '广告来源',
  `campaignid` varchar(20) DEFAULT NULL COMMENT '广告系列id',
  `campaignname` varchar(200) DEFAULT NULL COMMENT '广告系列名称',
  `adgroupid` varchar(20) DEFAULT NULL COMMENT '广告组id',
  `adgroupname` varchar(20) DEFAULT NULL COMMENT '广告组名称',
  `adid` varchar(20) DEFAULT NULL COMMENT '广告id',
  `adname` varchar(20) DEFAULT NULL COMMENT '广告名称',
  `appid` varchar(20) DEFAULT NULL COMMENT '产品id',
  `appname` varchar(20) DEFAULT NULL COMMENT '产品名称',
  `country` varchar(10) DEFAULT NULL COMMENT '国家',
  `cost` varchar(20) DEFAULT NULL COMMENT '花费',
  `currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `clicks` varchar(20) DEFAULT NULL COMMENT '点击数',
  `impressions` varchar(20) DEFAULT NULL COMMENT '展示',
  `covers` varchar(20) DEFAULT NULL COMMENT '覆盖人数',
  `installs` varchar(20) DEFAULT NULL COMMENT '安装数量',
  `creativeid` varchar(20) DEFAULT NULL COMMENT '创意id',
  `creativename` varchar(20) DEFAULT NULL COMMENT '创意名称',
  `imageid` varchar(50) DEFAULT NULL COMMENT '图片编号',
  `imagename` varchar(50) DEFAULT NULL COMMENT '图片名称',
  `imagesize` varchar(50) DEFAULT NULL COMMENT '图片规格',
  `imagelocationtype` varchar(20) DEFAULT NULL COMMENT '图片位置类型',
  `imageurl` varchar(200) DEFAULT NULL COMMENT '图片url',
  PRIMARY KEY (`id`),
  KEY `index_online` (`statdate`,`country`),
  KEY `index_online1` (`statdate`,`system`),
  KEY `index_online2` (`statdate`,`platform`),
  KEY `index_online3` (`statdate`,`campaignname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_monthuserinfo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_monthuserinfo`;
CREATE TABLE `tbl_monthuserinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statdate` varchar(50) DEFAULT NULL,
  `gameswitch` int(11) DEFAULT NULL,
  `gameregion` int(11) DEFAULT NULL,
  `monthactiveuser` int(11) DEFAULT '0',
  `monthfeeuser` int(11) DEFAULT '0',
  `monthadduser` int(11) DEFAULT '0',
  `monthleaveuser` int(11) DEFAULT '0',
  `apa` int(11) DEFAULT NULL,
  `apa_0` int(11) DEFAULT NULL,
  `acu` int(11) DEFAULT NULL,
  `pcu` int(11) DEFAULT NULL,
  `monthMoney` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4995 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for tbl_putlist
-- ----------------------------
DROP TABLE IF EXISTS `tbl_putlist`;
CREATE TABLE `tbl_putlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL COMMENT '游戏',
  `startdate` varchar(30) DEFAULT NULL COMMENT '开始日期',
  `enddate` varchar(30) DEFAULT NULL COMMENT '结束日期',
  `platform` varchar(50) DEFAULT NULL COMMENT '投放平台',
  `country` varchar(50) DEFAULT NULL,
  `system` varchar(50) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建日期',
  `money` double DEFAULT '0' COMMENT '通道费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=565 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimeactive
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimeactive`;
CREATE TABLE `tbl_realtimeactive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `regioncode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `all_index` (`gameid`,`channel`,`version`,`model`,`time`,`regioncode`)
) ENGINE=InnoDB AUTO_INCREMENT=51036947 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimechannel
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimechannel`;
CREATE TABLE `tbl_realtimechannel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL COMMENT '游戏ID',
  `statdate` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `channelcode` varchar(20) DEFAULT NULL COMMENT '道渠代码',
  `activenum` varchar(10) DEFAULT NULL COMMENT '跃活账户',
  `feenum` varchar(10) DEFAULT NULL COMMENT '付费账户',
  `newfeenum` varchar(10) DEFAULT NULL COMMENT '当日新付费玩家数量',
  `accountnum` varchar(10) DEFAULT NULL COMMENT '新增账户',
  `money` varchar(20) DEFAULT NULL COMMENT '费付金额',
  `newmoney` varchar(20) DEFAULT NULL COMMENT '增新账户付费金额',
  `country` varchar(20) DEFAULT NULL COMMENT '家国',
  `time` varchar(20) DEFAULT NULL COMMENT '数据所在小时（24小时）',
  PRIMARY KEY (`id`),
  KEY `index_online` (`gamecode`,`country`),
  KEY `index_online1` (`statdate`,`gamecode`)
) ENGINE=InnoDB AUTO_INCREMENT=5028739 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimechannelarea
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimechannelarea`;
CREATE TABLE `tbl_realtimechannelarea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL COMMENT '游戏ID',
  `partition` varchar(50) DEFAULT NULL COMMENT '分区',
  `statdate` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `channelcode` varchar(20) DEFAULT NULL COMMENT '道渠代码',
  `activenum` varchar(10) DEFAULT NULL COMMENT '跃活账户',
  `newactivenum` varchar(10) DEFAULT NULL COMMENT '昨日新增账户活跃',
  `feenum` varchar(10) DEFAULT NULL COMMENT '付费账户',
  `newfeenum` varchar(10) DEFAULT NULL COMMENT '当日新付费玩家数量',
  `accountnum` varchar(10) DEFAULT NULL COMMENT '新增账户',
  `money` varchar(20) DEFAULT NULL COMMENT '费付金额',
  `newmoney` varchar(20) DEFAULT NULL COMMENT '增新账户付费金额',
  `country` varchar(20) DEFAULT NULL COMMENT '家国',
  `time` varchar(20) DEFAULT NULL COMMENT '数据所在小时（24小时）',
  PRIMARY KEY (`id`),
  KEY `index_online` (`gamecode`,`country`),
  KEY `index_online1` (`statdate`,`gamecode`)
) ENGINE=InnoDB AUTO_INCREMENT=1520408 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimefee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimefee`;
CREATE TABLE `tbl_realtimefee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `channel_fee` varchar(100) DEFAULT NULL,
  `channel_reg` varchar(100) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `regioncode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_fee` (`gameid`,`channel_fee`,`channel_reg`,`time`,`model`,`regioncode`)
) ENGINE=InnoDB AUTO_INCREMENT=1175874 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimeonline
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimeonline`;
CREATE TABLE `tbl_realtimeonline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  `regioncode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_online` (`gameid`,`areaid`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=37489446 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimereg
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimereg`;
CREATE TABLE `tbl_realtimereg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `regioncode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reg` (`gameid`,`channel`,`time`,`version`,`regioncode`)
) ENGINE=InnoDB AUTO_INCREMENT=3932215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_realtimeretention
-- ----------------------------
DROP TABLE IF EXISTS `tbl_realtimeretention`;
CREATE TABLE `tbl_realtimeretention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gamecode` int(11) DEFAULT NULL COMMENT '游戏ID',
  `statdate` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `channelcode` varchar(20) DEFAULT NULL COMMENT '道渠代码',
  `activetype` varchar(10) DEFAULT NULL COMMENT '2:次日留存,3:3日留存以此类推',
  `activenum` varchar(20) DEFAULT NULL COMMENT '留存账户数',
  `newnum` varchar(20) DEFAULT NULL COMMENT '新增账户数',
  `country` varchar(20) DEFAULT NULL COMMENT '国家',
  `time` varchar(20) DEFAULT NULL COMMENT '数据所在小时（24小时）',
  PRIMARY KEY (`id`),
  KEY `index_online` (`gamecode`,`country`),
  KEY `index_online1` (`statdate`,`gamecode`)
) ENGINE=InnoDB AUTO_INCREMENT=15515055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tbl_systemoperationlog
-- ----------------------------
DROP TABLE IF EXISTS `tbl_systemoperationlog`;
CREATE TABLE `tbl_systemoperationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `optype` int(11) DEFAULT NULL,
  `entity` text,
  `userid` int(11) DEFAULT NULL,
  `logtime` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51792 DEFAULT CHARSET=gbk;

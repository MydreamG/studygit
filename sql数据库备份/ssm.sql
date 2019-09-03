/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-08-26 10:42:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `0813_record`
-- ----------------------------
DROP TABLE IF EXISTS `0813_record`;
CREATE TABLE `0813_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  `inTime` varchar(50) DEFAULT NULL,
  `outTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0813_record
-- ----------------------------
INSERT INTO `0813_record` VALUES ('1', '1', '1', '2016-07-29', '2019-08-20 15:55:50');
INSERT INTO `0813_record` VALUES ('2', '2', '1', '2016-07-29', '2017-07-28');
INSERT INTO `0813_record` VALUES ('3', '2', '3', '2017-07-28', '2019-08-20 16:27:34');
INSERT INTO `0813_record` VALUES ('4', '3', '1', '2016-07-29', '2019-08-20 16:45:46');
INSERT INTO `0813_record` VALUES ('5', '4', '4', '2016-07-29', '2019-08-20 15:55:16');
INSERT INTO `0813_record` VALUES ('6', '4', '1', '2019-08-20 15:55:16', '至今');
INSERT INTO `0813_record` VALUES ('7', '1', '1', '2019-08-20 15:55:50', '2019-08-20 16:11:32');
INSERT INTO `0813_record` VALUES ('8', '5', '1', '2016-07-29', '至今');
INSERT INTO `0813_record` VALUES ('9', '7', '2', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('10', '8', '2', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('11', '9', '1', '2016-07-29', '至今');
INSERT INTO `0813_record` VALUES ('12', '10', '3', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('13', '11', '4', '2016-07-29', '至今');
INSERT INTO `0813_record` VALUES ('14', '12', '3', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('15', '13', '2', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('16', '14', '2', '2016-07-29', '2019-08-21');
INSERT INTO `0813_record` VALUES ('17', '15', '1', '2016-07-29', '至今');
INSERT INTO `0813_record` VALUES ('18', '1', '2', '2019-08-20 16:11:32', '2019-08-20 16:11:51');
INSERT INTO `0813_record` VALUES ('19', '1', '1', '2019-08-20 16:11:52', '2019-08-20 16:12:55');
INSERT INTO `0813_record` VALUES ('20', '1', '2', '2019-08-20 16:12:55', '2019-08-20 16:22:09');
INSERT INTO `0813_record` VALUES ('21', '1', '1', '2019-08-20 16:22:09', '2019-08-20 16:26:31');
INSERT INTO `0813_record` VALUES ('22', '1', '3', '2019-08-20 16:26:31', '2019-08-20 16:27:14');
INSERT INTO `0813_record` VALUES ('23', '1', '1', '2019-08-20 16:27:14', '至今');
INSERT INTO `0813_record` VALUES ('24', '2', '5', '2019-08-20 16:27:34', '至今');
INSERT INTO `0813_record` VALUES ('25', '3', '3', '2019-08-20 16:45:46', '2019-08-21');
INSERT INTO `0813_record` VALUES ('26', '1', '1', '2019-08-21', '至今');
INSERT INTO `0813_record` VALUES ('27', '3', '2', '2019-08-21', '至今');
INSERT INTO `0813_record` VALUES ('28', '2', '3', '2019-08-21', '至今');

-- ----------------------------
-- Table structure for `0813_room`
-- ----------------------------
DROP TABLE IF EXISTS `0813_room`;
CREATE TABLE `0813_room` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0813_room
-- ----------------------------
INSERT INTO `0813_room` VALUES ('1', '101', '6');
INSERT INTO `0813_room` VALUES ('2', '102', '6');
INSERT INTO `0813_room` VALUES ('3', '103', '6');
INSERT INTO `0813_room` VALUES ('4', '104', '6');
INSERT INTO `0813_room` VALUES ('5', '105', '8');

-- ----------------------------
-- Table structure for `0813_stu`
-- ----------------------------
DROP TABLE IF EXISTS `0813_stu`;
CREATE TABLE `0813_stu` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `inDate` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0813_stu
-- ----------------------------
INSERT INTO `0813_stu` VALUES ('1', '李光宗', '男', '2018-01-01', '大数据');
INSERT INTO `0813_stu` VALUES ('2', '刘向东', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('3', '卞家彬', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('4', '高媛', '女', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('5', '李光宗', '男', '2018-01-01', '大数据');
INSERT INTO `0813_stu` VALUES ('6', '刘向东', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('7', '卞家彬', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('8', '高媛', '女', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('9', '李光宗', '男', '2018-01-01', '大数据');
INSERT INTO `0813_stu` VALUES ('10', '刘向东', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('11', '卞家彬', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('12', '高媛', '女', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('13', '李光宗', '男', '2018-01-01', '大数据');
INSERT INTO `0813_stu` VALUES ('14', '刘向东', '男', '2016-07-29', '大数据');
INSERT INTO `0813_stu` VALUES ('15', '卞家彬', '男', '2016-07-29', '大数据');

-- ----------------------------
-- Table structure for `0815_cai`
-- ----------------------------
DROP TABLE IF EXISTS `0815_cai`;
CREATE TABLE `0815_cai` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0815_cai
-- ----------------------------
INSERT INTO `0815_cai` VALUES ('1', '小葱拌豆腐', '10', null);

-- ----------------------------
-- Table structure for `0815_detial`
-- ----------------------------
DROP TABLE IF EXISTS `0815_detial`;
CREATE TABLE `0815_detial` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `dcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0815_detial
-- ----------------------------

-- ----------------------------
-- Table structure for `0815_log`
-- ----------------------------
DROP TABLE IF EXISTS `0815_log`;
CREATE TABLE `0815_log` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(100) DEFAULT NULL,
  `beginTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `times` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0815_log
-- ----------------------------
INSERT INTO `0815_log` VALUES ('1', '/816_eat/user/tologin.do', '2019-08--20 11:14:53', '2019-08--20 11:14:53', '0', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('2', '/816_eat/user/tologin.do', '2019-08--20 11:14:53', '2019-08--20 11:14:53', '0', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('3', '/816_eat/user/tologin.do', '2019-08--20 11:15:11', '2019-08--20 11:15:11', '1', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('4', '/816_eat/user/login.do', '2019-08--20 11:15:35', '2019-08--20 11:15:35', '97', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('5', '/816_eat/user/tologin.do', '2019-08--20 11:16:18', '2019-08--20 11:16:18', '0', 'root', '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('6', '/816_eat/user/tologin.do', '2019-08--20 11:17:13', '2019-08--20 11:17:13', '31', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('7', '/816_eat/user/tologin.do', '2019-08--20 11:17:13', '2019-08--20 11:17:13', '31', null, '0:0:0:0:0:0:0:1');
INSERT INTO `0815_log` VALUES ('8', '/816_eat/user/login.do', '2019-08--20 11:17:16', '2019-08--20 11:17:16', '66', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `0815_order`
-- ----------------------------
DROP TABLE IF EXISTS `0815_order`;
CREATE TABLE `0815_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sumPrice` double DEFAULT NULL,
  `first` int(11) DEFAULT NULL COMMENT '0 代表第一次  1 代表非第一次',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0815_order
-- ----------------------------

-- ----------------------------
-- Table structure for `0815_user`
-- ----------------------------
DROP TABLE IF EXISTS `0815_user`;
CREATE TABLE `0815_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL COMMENT '角色 （0管理员 1 普通用户）',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 0815_user
-- ----------------------------
INSERT INTO `0815_user` VALUES ('1', 'admin', '123456', '0');
INSERT INTO `0815_user` VALUES ('2', 'ligzong', '123456', '1');
INSERT INTO `0815_user` VALUES ('3', 'root', '123', '0');

-- ----------------------------
-- Table structure for `821_rk`
-- ----------------------------
DROP TABLE IF EXISTS `821_rk`;
CREATE TABLE `821_rk` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 821_rk
-- ----------------------------
INSERT INTO `821_rk` VALUES ('1', '永磁材料', '采购平面耙', '山东', '2018-07-13', '匿**');
INSERT INTO `821_rk` VALUES ('2', '绿茶', '采购茶叶', '江苏', '2018-08-10', '张**');
INSERT INTO `821_rk` VALUES ('3', '调味品', '采购辣椒酱', '甘肃', '2018-07-15', '辣**');

-- ----------------------------
-- Table structure for `822_rk`
-- ----------------------------
DROP TABLE IF EXISTS `822_rk`;
CREATE TABLE `822_rk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auto` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 822_rk
-- ----------------------------
INSERT INTO `822_rk` VALUES ('4', 'root', '科技', '张三', '111.00');

-- ----------------------------
-- Table structure for `823_order`
-- ----------------------------
DROP TABLE IF EXISTS `823_order`;
CREATE TABLE `823_order` (
  `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `odate` varchar(30) DEFAULT NULL,
  `deptNo` varchar(30) DEFAULT NULL,
  `deptName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 823_order
-- ----------------------------
INSERT INTO `823_order` VALUES ('1000', '1', '1', '2019-10-01', '101', '北京爱国');
INSERT INTO `823_order` VALUES ('1001', '1', '2', '2019-10-02', '102', '北京爱康');
INSERT INTO `823_order` VALUES ('1003', '2', '2', '2019-05-03', '102', '北京爱康');
INSERT INTO `823_order` VALUES ('1002', '2', '1', '2019-05-03', '102', '北京爱康');
INSERT INTO `823_order` VALUES ('1017', '1', '2', '2019-08-06', '012', '协和医院');
INSERT INTO `823_order` VALUES ('1018', '2', '2', '2019-08-23', '100', '上海富康');
INSERT INTO `823_order` VALUES ('1019', '1', '2', '2019-08-23', '199', '上海富康');
INSERT INTO `823_order` VALUES ('1020', '1', '2', '2019-08-23', '199', '上海富康');
INSERT INTO `823_order` VALUES ('1021', '1', '2', '2019-08-23', '199', '上海富康');
INSERT INTO `823_order` VALUES ('1022', '1', '2', '2019-08-23', '199', '上海富康');

-- ----------------------------
-- Table structure for `823_package`
-- ----------------------------
DROP TABLE IF EXISTS `823_package`;
CREATE TABLE `823_package` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 823_package
-- ----------------------------
INSERT INTO `823_package` VALUES ('1', '青年一号', '800.00');
INSERT INTO `823_package` VALUES ('2', '中年一号', '600.00');
INSERT INTO `823_package` VALUES ('3', '老年一号', '600.00');

-- ----------------------------
-- Table structure for `823_rk`
-- ----------------------------
DROP TABLE IF EXISTS `823_rk`;
CREATE TABLE `823_rk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 823_rk
-- ----------------------------
INSERT INTO `823_rk` VALUES ('1', '永磁材料', '采购平面耙、圆靶磁铁', '山东', '2018-07-13', '匿**');
INSERT INTO `823_rk` VALUES ('2', '绿茶', '采购茶叶', '江苏', '2018-08-10', '张**');
INSERT INTO `823_rk` VALUES ('3', '调味品', '采购辣椒酱', '甘肃', '2018-07-15', '辣**');

-- ----------------------------
-- Table structure for `823_user`
-- ----------------------------
DROP TABLE IF EXISTS `823_user`;
CREATE TABLE `823_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 823_user
-- ----------------------------
INSERT INTO `823_user` VALUES ('1', '张三', '111');
INSERT INTO `823_user` VALUES ('2', '李四', '222');

-- ----------------------------
-- Table structure for `826_book`
-- ----------------------------
DROP TABLE IF EXISTS `826_book`;
CREATE TABLE `826_book` (
  `tid` int(20) NOT NULL AUTO_INCREMENT,
  `tname` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `auto` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 826_book
-- ----------------------------
INSERT INTO `826_book` VALUES ('1', 'JAVA程序设计基础', '科技', '李四的qinq');
INSERT INTO `826_book` VALUES ('2', '哲学基础', '哲学', '张三');

-- ----------------------------
-- Table structure for `826_like`
-- ----------------------------
DROP TABLE IF EXISTS `826_like`;
CREATE TABLE `826_like` (
  `uid` int(10) DEFAULT NULL,
  `tid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 826_like
-- ----------------------------
INSERT INTO `826_like` VALUES ('2', '1');
INSERT INTO `826_like` VALUES ('2', '2');
INSERT INTO `826_like` VALUES ('2', '1');
INSERT INTO `826_like` VALUES ('2', '1');
INSERT INTO `826_like` VALUES ('2', '2');
INSERT INTO `826_like` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `826_user`
-- ----------------------------
DROP TABLE IF EXISTS `826_user`;
CREATE TABLE `826_user` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 826_user
-- ----------------------------
INSERT INTO `826_user` VALUES ('1', 'admin', 'admin');
INSERT INTO `826_user` VALUES ('2', 'user1', '111111');
INSERT INTO `826_user` VALUES ('3', 'user2', '111111');
INSERT INTO `826_user` VALUES ('4', 'user3', '111111');
INSERT INTO `826_user` VALUES ('5', 'user4', '111111');
INSERT INTO `826_user` VALUES ('6', 'user5', '111111');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(255) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '2');
INSERT INTO `course` VALUES ('2', '数学', '1');
INSERT INTO `course` VALUES ('3', '英语', '3');

-- ----------------------------
-- Table structure for `industry`
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industry
-- ----------------------------
INSERT INTO `industry` VALUES ('1', 'IT信息', '0');
INSERT INTO `industry` VALUES ('2', 'IT数据', '0');
INSERT INTO `industry` VALUES ('3', '计算机软件', '1');
INSERT INTO `industry` VALUES ('4', '数据分析', '1');
INSERT INTO `industry` VALUES ('5', '软件工程', '2');
INSERT INTO `industry` VALUES ('6', '软件开发', '2');
INSERT INTO `industry` VALUES ('7', 'JAVA分布高性能', '3');
INSERT INTO `industry` VALUES ('8', '软件模块', '3');
INSERT INTO `industry` VALUES ('9', '大数据', '4');
INSERT INTO `industry` VALUES ('10', '云计算', '4');
INSERT INTO `industry` VALUES ('11', '易语言', '5');
INSERT INTO `industry` VALUES ('12', 'C语言', '5');
INSERT INTO `industry` VALUES ('13', '安卓', '6');
INSERT INTO `industry` VALUES ('14', 'IOS', '6');

-- ----------------------------
-- Table structure for `job`
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `salary_start` int(11) DEFAULT NULL,
  `salary_end` int(11) DEFAULT NULL,
  `requirement` varchar(1200) DEFAULT NULL,
  `industry1` int(11) DEFAULT NULL,
  `industry2` int(11) DEFAULT NULL,
  `industry3` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '大数据工程师', '8000', '160000', '数学基础好', '1', '3', '7', '2019-08-22');
INSERT INTO `job` VALUES ('2', '', '100', '200', '11', '1', '3', '5', '2014-05-08');
INSERT INTO `job` VALUES ('3', '11', '100', '200', '11', '1', '3', '5', '2014-05-08');
INSERT INTO `job` VALUES ('7', '计算机', '5555', '55555', '哈哈', '1', '4', '9', '2019-08-22');
INSERT INTO `job` VALUES ('8', '计算机', '5555', '55555', '哈哈', '1', '4', '9', '2019-08-22');
INSERT INTO `job` VALUES ('9', '大数据分析', '5555', '55555', '哈哈', '1', '4', '9', '2019-08-22');
INSERT INTO `job` VALUES ('10', '易语言工程师', '5555', '55555', '哈哈', '2', '5', '11', '2019-08-22');

-- ----------------------------
-- Table structure for `job_light`
-- ----------------------------
DROP TABLE IF EXISTS `job_light`;
CREATE TABLE `job_light` (
  `job_id` int(11) DEFAULT NULL,
  `light_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_light
-- ----------------------------
INSERT INTO `job_light` VALUES ('1', '1');
INSERT INTO `job_light` VALUES ('1', '2');
INSERT INTO `job_light` VALUES ('1', '3');
INSERT INTO `job_light` VALUES ('3', '3');
INSERT INTO `job_light` VALUES ('2', '3');
INSERT INTO `job_light` VALUES ('7', '7');
INSERT INTO `job_light` VALUES ('7', '8');
INSERT INTO `job_light` VALUES ('7', '9');
INSERT INTO `job_light` VALUES ('8', '7');
INSERT INTO `job_light` VALUES ('8', '8');
INSERT INTO `job_light` VALUES ('8', '9');
INSERT INTO `job_light` VALUES ('9', '3');
INSERT INTO `job_light` VALUES ('9', '4');
INSERT INTO `job_light` VALUES ('9', '5');
INSERT INTO `job_light` VALUES ('10', '3');
INSERT INTO `job_light` VALUES ('10', '4');
INSERT INTO `job_light` VALUES ('10', '5');

-- ----------------------------
-- Table structure for `light`
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of light
-- ----------------------------
INSERT INTO `light` VALUES ('1', '股票期权');
INSERT INTO `light` VALUES ('2', '年薪双薪');
INSERT INTO `light` VALUES ('3', '全勤奖');
INSERT INTO `light` VALUES ('4', '五险一金');
INSERT INTO `light` VALUES ('5', '朝九晚五');
INSERT INTO `light` VALUES ('7', '哈哈');
INSERT INTO `light` VALUES ('8', '嘿嘿');
INSERT INTO `light` VALUES ('9', '嗷嗷');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `sid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '1', '80');
INSERT INTO `score` VALUES ('1', '2', '90');
INSERT INTO `score` VALUES ('1', '3', '99');
INSERT INTO `score` VALUES ('2', '1', '70');
INSERT INTO `score` VALUES ('2', '2', '60');
INSERT INTO `score` VALUES ('2', '3', '80');
INSERT INTO `score` VALUES ('3', '1', '80');
INSERT INTO `score` VALUES ('3', '2', '80');
INSERT INTO `score` VALUES ('3', '3', '80');
INSERT INTO `score` VALUES ('4', '1', '50');
INSERT INTO `score` VALUES ('4', '2', '30');
INSERT INTO `score` VALUES ('4', '3', '20');
INSERT INTO `score` VALUES ('5', '1', '76');
INSERT INTO `score` VALUES ('5', '2', '87');
INSERT INTO `score` VALUES ('6', '1', '31');
INSERT INTO `score` VALUES ('6', '3', '34');
INSERT INTO `score` VALUES ('7', '2', '89');
INSERT INTO `score` VALUES ('7', '3', '98');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `sbirth` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '赵雷', '1990-01-01', '男');
INSERT INTO `student` VALUES ('2', '钱电', '1990-12-21', '男');
INSERT INTO `student` VALUES ('3', '孙风', '1990-05-20', '男');
INSERT INTO `student` VALUES ('4', '李云', '1990-08-06', '男');
INSERT INTO `student` VALUES ('5', '周梅', '1991-12-01', '女');
INSERT INTO `student` VALUES ('6', '吴兰', '1992-03-01', '女');
INSERT INTO `student` VALUES ('7', '郑竹', '1989-07-01', '女');
INSERT INTO `student` VALUES ('8', '王菊', '1990-01-20', '女');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张三');
INSERT INTO `teacher` VALUES ('2', '李四');
INSERT INTO `teacher` VALUES ('3', '王五');

-- ----------------------------
-- Table structure for `zc_goods`
-- ----------------------------
DROP TABLE IF EXISTS `zc_goods`;
CREATE TABLE `zc_goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(12) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_goods
-- ----------------------------
INSERT INTO `zc_goods` VALUES ('1', '茶叶', '500');
INSERT INTO `zc_goods` VALUES ('2', '平面耙', '320');
INSERT INTO `zc_goods` VALUES ('3', '辣椒酱', '9.8');

-- ----------------------------
-- Table structure for `zc_order`
-- ----------------------------
DROP TABLE IF EXISTS `zc_order`;
CREATE TABLE `zc_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `area` varchar(32) DEFAULT NULL,
  `gtype` varchar(32) DEFAULT NULL,
  `endtime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_order
-- ----------------------------
INSERT INTO `zc_order` VALUES ('100', '1', '1', '江苏', '绿茶', '2019-08-01');
INSERT INTO `zc_order` VALUES ('101', '1', '2', '山东', '永磁材料', '2019-08-23');
INSERT INTO `zc_order` VALUES ('102', '1', '3', '甘肃', '调味品', '2019-08-16');
INSERT INTO `zc_order` VALUES ('103', '2', '1', '山东', '永磁材料', '2019-07-31');
INSERT INTO `zc_order` VALUES ('104', '2', '2', '江苏', '绿茶', '2019-08-18');
INSERT INTO `zc_order` VALUES ('105', '3', '2', '山东', '永磁材料', '2019-08-09');
INSERT INTO `zc_order` VALUES ('106', '1', '1', '中国', '绿茶', '2018-02-06');
INSERT INTO `zc_order` VALUES ('107', '4', '1', '中国', '绿茶', '2018-02-06');
INSERT INTO `zc_order` VALUES ('108', '6', '1', '中国', '绿茶', '2018-02-06');
INSERT INTO `zc_order` VALUES ('109', '3', '1', '山西郊区', '乞丐', '2019-08-09');

-- ----------------------------
-- Table structure for `zc_user`
-- ----------------------------
DROP TABLE IF EXISTS `zc_user`;
CREATE TABLE `zc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zc_user
-- ----------------------------
INSERT INTO `zc_user` VALUES ('1', '张三', '88888888888');
INSERT INTO `zc_user` VALUES ('2', '李四', '88888888888');
INSERT INTO `zc_user` VALUES ('3', '杨子震', '88888888888');
INSERT INTO `zc_user` VALUES ('4', '欧尼', '99');
INSERT INTO `zc_user` VALUES ('5', '拦截', '99');
INSERT INTO `zc_user` VALUES ('6', '佳佳', '11');

-- ----------------------------
-- Procedure structure for `addJob`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addJob`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addJob`(in namess varchar(20),in salary_starts double,in salary_ends double,in requirements varchar(255),in industry1s int,in industry2s int,in industry3s int,in salary_dates date,out ids int)
begin
	insert into job (name,salary_start,salary_end,requirement,industry1,industry2,industry3,start_date)
  		values(namess,salary_starts,salary_ends,requirements,industry1s,industry2s,industry3s,salary_dates);
			-- 把最后添加的id赋值给id变量
			select LAST_INSERT_ID() into ids;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addLight`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addLight`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addLight`(in ids int,in lightName varchar(30))
begin
 declare cou int default 0;
 declare lids int default 0 ;
 -- 操作亮点表数据
		-- 先判断传入亮点名称是否在表中存在
		select count(1) into cou from light where lname=lightName;
		-- 如果亮点名称不存在
		if(cou=0) then
									insert into light (lname) values (lightName);
									select LAST_INSERT_ID() into lids;
		else 
				select lid into lids from light where lname =lightName;
		end if;
		-- 添加中间表 把电影和亮点关联起来
		 insert into job_light (job_id,light_id) values(ids,lids);
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addOrder`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addOrder`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrder`(in unames varchar(20),in nums varchar(20),
in gids int,in gtypes varchar(20),in areas varchar(20),in endtimes varchar(20))
BEGIN
	-- 定义局部变量判断采购人是否已经存在
	declare cou int default 0;
	-- 设置默认id
	declare idds int default 100;
	-- 用于储存刚添加的采购人id
	declare uuids int default 0;
	-- 判断用户是否存在
	select count(1) into cou from zc_user where uname = unames;
	if cou < 1 then 
	insert into zc_user (uname,num) values(unames,nums);
	select LAST_INSERT_ID() into uuids;
	end if;
	-- 根据用户名称查询id
	select uid into uuids from zc_user where uname = unames;
	-- 查询当前最大id
	select MAX(id)+1 into idds from zc_order;
	insert into zc_order (id,uid,gid,area,gtype,endtime) values(idds,uuids,gids,areas,gtypes,endtimes);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `addOrderPackage`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addOrderPackage`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrderPackage`(in uidd int,
 in pidd int ,in odatee VARCHAR(30),
in deptNo VARCHAR(20),in deptName VARCHAR(20),out oids VARCHAR(20) )
BEGIN
	-- 先定义一个默认的主键
	DECLARE oidd VARCHAR(30) DEFAULT '1000';
 -- 用于判断是否是第一条数据
	DECLARE cou int DEFAULT 0;
	-- 查订单表中是否有数据
	SELECT COUNT(1) into cou from 823_order;

	-- 通过判断获取主键
	if (cou=0) then set oidd = oidd;
	else SELECT (MAX(oid)+1) into oidd from 823_order;
	end if;
	-- 最终的添加
	INSERT into 823_order (oid,uid, pid ,odate ,deptNo, deptName) VALUES (oidd,uidd,pidd,odatee,deptNo,deptName);
  -- 返回主键
	set oids = oidd;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `changeRoom`
-- ----------------------------
DROP PROCEDURE IF EXISTS `changeRoom`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changeRoom`(in rids int,in sids int,out re int)
begin
	declare zhuCount int default 0;
	declare roomCount int default 0;
	declare yuanRid int default 0;
	-- 查询改学生原来的宿舍编号
	select rid  into yuanRid from 0813_record where sid = sids and outTime='至今';

	if yuanRid = rids then
		set re = 2;
		else 
			-- 是否满员
			select count into roomCount from 0813_room where rid = rids;
			-- 查询当前宿舍住了多少人
			select count(rid) into zhuCount from 0813_record where rid = rids and outTime='至今';
			if zhuCount < roomCount then
				update 0813_record set outTime = NOW() where sid = sids and outTime='至今';
				insert into 0813_record (sid,rid,inTime,outTime) values(sids,rids,NOW(),'至今');
				set re = 1;
			else
				set re = 0;
			end if;
	end if;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `findRoomList`
-- ----------------------------
DROP PROCEDURE IF EXISTS `findRoomList`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findRoomList`()
begin
	select * from 0813_room;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `findStuAll`
-- ----------------------------
DROP PROCEDURE IF EXISTS `findStuAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findStuAll`()
begin
	select s.*,r.* from 0813_stu s
	left join 0813_record rr on rr.sid = s.sid
	left join 0813_room r on r.rid = rr.rid
	where rr.outTime ='至今' ;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `findStuBySid`
-- ----------------------------
DROP PROCEDURE IF EXISTS `findStuBySid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `findStuBySid`(in sids int)
begin
	select s.*,r.* from 0813_stu s
	left join 0813_record rr on rr.sid = s.sid
	left join 0813_room r on r.rid = rr.rid
	where rr.outTime ='至今' and s.sid = sids;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getall`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getall`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getall`()
begin
select u.*,
group_concat(o.oid),
GROUP_CONCAT(p.pname),
GROUP_CONCAT(o.odate),
GROUP_CONCAT(o.deptName),
SUM(p.price)
from 823_user u
left join 823_order o on o.uid = u.uid
left join 823_package p on p.pid = o.pid
group by u.uid;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `updateR`
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateR`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateR`(in rids int,in sids int,out re int)
BEGIN
	declare zhuCount int default 0;
	declare roomCount int default 0;
	declare yuanRoomId int default 0;
	-- 查询学生当前的宿舍号ID
	select rid into yuanRoomId from 0813_record r where r.sid = sids and r.outTime = '至今';
	if yuanRoomId = rids then
		set re = 2;
	else
		-- 查询要更换的宿舍最多可以住多少人
			select count into zhuCount  from 0813_room where rid = rids;
		-- 查询要更换的宿舍当前总人数
			select count(*) into roomCount from 0813_record where rid = rids and outTime='至今';
			-- 判断如果当前寝室没有住满人
			if zhuCount > roomCount then
				-- 修改中间表中的搬出宿舍时间为当前 利用函数将当前时间转换成常用类型	
					update 0813_record set outTime = DATE_FORMAT(NOW(),'%Y-%m-%d') where outTime='至今' and rid = rids;
				-- 向中间表中新增一条修改的数据
					insert into 0813_record (sid,rid,inTime,outTime) values(sids,rids,DATE_FORMAT(NOW(),'%Y-%m-%d'),'至今');
					-- 设置re为1返回为成功
					set re = 1;
				-- 设置为0 返回寝室满员
			else 
				set re = 0;
			--  结束if判断
			end if;
	end if;
END
;;
DELIMITER ;

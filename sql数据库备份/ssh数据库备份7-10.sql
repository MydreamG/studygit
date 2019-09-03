/*
 Navicat Premium Data Transfer

 Source Server         : RIA
 Source Server Type    : MySQL
 Source Server Version : 50022
 Source Host           : localhost:3306
 Source Schema         : ssh

 Target Server Type    : MySQL
 Target Server Version : 50022
 File Encoding         : 65001

 Date: 10/07/2019 09:10:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 628_car
-- ----------------------------
DROP TABLE IF EXISTS `628_car`;
CREATE TABLE `628_car`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cprice` int(11) NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cid`),
  INDEX `FKl3e55w99pld1u7nc2edfnvxfq` USING BTREE(`bid`),
  CONSTRAINT `FKl3e55w99pld1u7nc2edfnvxfq` FOREIGN KEY (`bid`) REFERENCES `628brand` (`bid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`bid`) REFER `ssh/628brand`(`bid`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for 628brand
-- ----------------------------
DROP TABLE IF EXISTS `628brand`;
CREATE TABLE `628brand`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`bid`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 628brand
-- ----------------------------
INSERT INTO `628brand` VALUES (1, '宝马');
INSERT INTO `628brand` VALUES (3, '思域');
INSERT INTO `628brand` VALUES (4, '宝马');
INSERT INTO `628brand` VALUES (5, '思域');
INSERT INTO `628brand` VALUES (6, '思域');

-- ----------------------------
-- Table structure for 630user
-- ----------------------------
DROP TABLE IF EXISTS `630user`;
CREATE TABLE `630user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 630user
-- ----------------------------
INSERT INTO `630user` VALUES (1, 'root', '123');
INSERT INTO `630user` VALUES (2, 'admin', '123');
INSERT INTO `630user` VALUES (3, 'qqq', '123');
INSERT INTO `630user` VALUES (4, 'qqq', '123');
INSERT INTO `630user` VALUES (5, 'qqq', '123');

-- ----------------------------
-- Table structure for 701phone
-- ----------------------------
DROP TABLE IF EXISTS `701phone`;
CREATE TABLE `701phone`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '',
  `tid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`pid`),
  INDEX `FKb12pq2dvmrt3qwx2v402meu4o` USING BTREE(`tid`),
  CONSTRAINT `FKb12pq2dvmrt3qwx2v402meu4o` FOREIGN KEY (`tid`) REFERENCES `710type` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`tid`) REFER `ssh/710type`(`tid`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 701phone
-- ----------------------------
INSERT INTO `701phone` VALUES (2, '苏昊昊的垃圾Ipone8', 1, 1);

-- ----------------------------
-- Table structure for 705clazz
-- ----------------------------
DROP TABLE IF EXISTS `705clazz`;
CREATE TABLE `705clazz`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cid`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 705clazz
-- ----------------------------
INSERT INTO `705clazz` VALUES (2, '1');

-- ----------------------------
-- Table structure for 705course
-- ----------------------------
DROP TABLE IF EXISTS `705course`;
CREATE TABLE `705course`  (
  `ccid` int(11) NOT NULL AUTO_INCREMENT,
  `ccname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`ccid`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 705course
-- ----------------------------
INSERT INTO `705course` VALUES (2, '课程1');

-- ----------------------------
-- Table structure for 705course_s
-- ----------------------------
DROP TABLE IF EXISTS `705course_s`;
CREATE TABLE `705course_s`  (
  `sid` int(11) NOT NULL DEFAULT '',
  `ccid` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ccid`, `sid`),
  INDEX `FK56i2wgvih7a1phmir2dwn4be2` USING BTREE(`sid`),
  CONSTRAINT `FK56i2wgvih7a1phmir2dwn4be2` FOREIGN KEY (`sid`) REFERENCES `705stu` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK2s15aoopnxkkpuwohwetg5muh` FOREIGN KEY (`ccid`) REFERENCES `705course` (`ccid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`sid`) REFER `ssh/705stu`(`sid`); (`ccid`) REFER `ssh/70' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 705course_s
-- ----------------------------
INSERT INTO `705course_s` VALUES (6, 2);

-- ----------------------------
-- Table structure for 705stu
-- ----------------------------
DROP TABLE IF EXISTS `705stu`;
CREATE TABLE `705stu`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL DEFAULT '',
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `ssid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`sid`),
  INDEX `FKl00mfgnbco4c0kyvkuquh99pf` USING BTREE(`cid`),
  INDEX `FKigwtg60ydqbefio8m6mbofvw3` USING BTREE(`ssid`),
  CONSTRAINT `FKigwtg60ydqbefio8m6mbofvw3` FOREIGN KEY (`ssid`) REFERENCES `706sex` (`ssid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKl00mfgnbco4c0kyvkuquh99pf` FOREIGN KEY (`cid`) REFERENCES `705clazz` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`ssid`) REFER `ssh/706sex`(`ssid`); (`cid`) REFER `ssh/7' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 705stu
-- ----------------------------
INSERT INTO `705stu` VALUES (6, 1, '小明', 2, 3);

-- ----------------------------
-- Table structure for 705user
-- ----------------------------
DROP TABLE IF EXISTS `705user`;
CREATE TABLE `705user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`uid`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 705user
-- ----------------------------
INSERT INTO `705user` VALUES (1, '我是jaava', 'aaa');
INSERT INTO `705user` VALUES (2, '张三', 'aaa');

-- ----------------------------
-- Table structure for 706sex
-- ----------------------------
DROP TABLE IF EXISTS `706sex`;
CREATE TABLE `706sex`  (
  `ssid` int(11) NOT NULL AUTO_INCREMENT,
  `ssname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`ssid`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 706sex
-- ----------------------------
INSERT INTO `706sex` VALUES (3, '女');

-- ----------------------------
-- Table structure for 707_clazz
-- ----------------------------
DROP TABLE IF EXISTS `707_clazz`;
CREATE TABLE `707_clazz`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cid`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 707_clazz
-- ----------------------------
INSERT INTO `707_clazz` VALUES (1, '班级');

-- ----------------------------
-- Table structure for 707_student
-- ----------------------------
DROP TABLE IF EXISTS `707_student`;
CREATE TABLE `707_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `cid` USING BTREE(`cid`),
  CONSTRAINT `707_student_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `707_clazz` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`cid`) REFER `ssh/707_clazz`(`cid`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 707_student
-- ----------------------------
INSERT INTO `707_student` VALUES (1, '修改', '男', 15, 1);
INSERT INTO `707_student` VALUES (4, '李四', '男', 18, NULL);
INSERT INTO `707_student` VALUES (5, '李四', '男', 18, NULL);

-- ----------------------------
-- Table structure for 708_d2
-- ----------------------------
DROP TABLE IF EXISTS `708_d2`;
CREATE TABLE `708_d2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 708_d2
-- ----------------------------
INSERT INTO `708_d2` VALUES (1, '修改后的数据', '男', 15);
INSERT INTO `708_d2` VALUES (2, 'Two', '女', 15);
INSERT INTO `708_d2` VALUES (3, 'Three', '男', 16);
INSERT INTO `708_d2` VALUES (9, '新增1', '男', 18);

-- ----------------------------
-- Table structure for 708_stu
-- ----------------------------
DROP TABLE IF EXISTS `708_stu`;
CREATE TABLE `708_stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 708_stu
-- ----------------------------
INSERT INTO `708_stu` VALUES (1, '张三', '男', 15, '喝酒', 2);
INSERT INTO `708_stu` VALUES (2, '李四', '女', 21, '学习', NULL);
INSERT INTO `708_stu` VALUES (3, '王五', '男', 17, '唱歌', 1);

-- ----------------------------
-- Table structure for 708dept
-- ----------------------------
DROP TABLE IF EXISTS `708dept`;
CREATE TABLE `708dept`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`did`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 708dept
-- ----------------------------
INSERT INTO `708dept` VALUES (1, '人事部');

-- ----------------------------
-- Table structure for 708stu
-- ----------------------------
DROP TABLE IF EXISTS `708stu`;
CREATE TABLE `708stu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `did` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `did` USING BTREE(`did`),
  CONSTRAINT `708stu_ibfk_1` FOREIGN KEY (`did`) REFERENCES `708dept` (`did`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`did`) REFER `ssh/708dept`(`did`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 708stu
-- ----------------------------
INSERT INTO `708stu` VALUES (2, '阿沁', '女', 18, 1);
INSERT INTO `708stu` VALUES (3, '阿修', '男', 18, NULL);
INSERT INTO `708stu` VALUES (4, '阿炯', '男', 18, NULL);

-- ----------------------------
-- Table structure for 709_hob
-- ----------------------------
DROP TABLE IF EXISTS `709_hob`;
CREATE TABLE `709_hob`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`hid`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 709_hob
-- ----------------------------
INSERT INTO `709_hob` VALUES (1, '学习组');
INSERT INTO `709_hob` VALUES (2, '出题组');
INSERT INTO `709_hob` VALUES (3, '预习组');

-- ----------------------------
-- Table structure for 709_s_h
-- ----------------------------
DROP TABLE IF EXISTS `709_s_h`;
CREATE TABLE `709_s_h`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NULL DEFAULT NULL,
  `hid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`),
  INDEX `sid` USING BTREE(`sid`),
  INDEX `hid` USING BTREE(`hid`),
  CONSTRAINT `709_s_h_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `709_stu` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `709_s_h_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `709_hob` (`hid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 10240 kB; (`sid`) REFER `ssh/709_stu`(`sid`); (`hid`) REFER `ssh/70' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 709_s_h
-- ----------------------------
INSERT INTO `709_s_h` VALUES (1, 1, 1);
INSERT INTO `709_s_h` VALUES (2, 1, 2);
INSERT INTO `709_s_h` VALUES (3, 2, 3);
INSERT INTO `709_s_h` VALUES (4, 3, 1);

-- ----------------------------
-- Table structure for 709_stu
-- ----------------------------
DROP TABLE IF EXISTS `709_stu`;
CREATE TABLE `709_stu`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`sid`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 709_stu
-- ----------------------------
INSERT INTO `709_stu` VALUES (1, '张三');
INSERT INTO `709_stu` VALUES (2, '李四');
INSERT INTO `709_stu` VALUES (3, '王五');

-- ----------------------------
-- Table structure for 709_zk
-- ----------------------------
DROP TABLE IF EXISTS `709_zk`;
CREATE TABLE `709_zk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jdate` date NULL DEFAULT NULL,
  `edate` date NULL DEFAULT NULL,
  `ly` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 709_zk
-- ----------------------------
INSERT INTO `709_zk` VALUES (2, '修改的记录', '2019-07-09', '2019-07-10', '项目加班');
INSERT INTO `709_zk` VALUES (3, '小明', '2019-07-09', '2019-07-10', '项目加班');
INSERT INTO `709_zk` VALUES (4, '小明', '2019-07-09', '2019-07-10', '项目加班');
INSERT INTO `709_zk` VALUES (5, '小明', '2019-07-09', '2019-07-10', '项目加班');
INSERT INTO `709_zk` VALUES (6, '修改的记录', '2019-07-09', '2019-07-10', '项目加班');
INSERT INTO `709_zk` VALUES (7, '小明', '2019-07-09', '2019-07-10', '项目加班');

-- ----------------------------
-- Table structure for 710dept
-- ----------------------------
DROP TABLE IF EXISTS `710dept`;
CREATE TABLE `710dept`  (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`did`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for 710emp
-- ----------------------------
DROP TABLE IF EXISTS `710emp`;
CREATE TABLE `710emp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `joinTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `did` int(11) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for 710type
-- ----------------------------
DROP TABLE IF EXISTS `710type`;
CREATE TABLE `710type`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`tid`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 710type
-- ----------------------------
INSERT INTO `710type` VALUES (1, 'Apple');
INSERT INTO `710type` VALUES (2, '华为');

-- ----------------------------
-- Table structure for clazz
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cid`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES (1, '4C');

-- ----------------------------
-- Table structure for phoneuser
-- ----------------------------
DROP TABLE IF EXISTS `phoneuser`;
CREATE TABLE `phoneuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of phoneuser
-- ----------------------------
INSERT INTO `phoneuser` VALUES (1, 'root', '123');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sage` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`sid`),
  INDEX `cid` USING BTREE(`sage`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'Tony', 16, '男');
INSERT INTO `student` VALUES (2, 'Json', 18, '女');

-- ----------------------------
-- Table structure for zibuser
-- ----------------------------
DROP TABLE IF EXISTS `zibuser`;
CREATE TABLE `zibuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zibuser
-- ----------------------------
INSERT INTO `zibuser` VALUES (1, 'root', '123');

SET FOREIGN_KEY_CHECKS = 1;

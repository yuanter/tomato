/*
Navicat MySQL Data Transfer

Source Server         : 番茄炒西红柿
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : tomato

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-05-09 00:43:57
*/


drop database if exists tomato;
create database tomato default character set utf8;
use tomato;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `AdminID` varchar(255) NOT NULL COMMENT '管理员ID',
  `AdminName` varchar(255) NOT NULL COMMENT '管理员账号',
  `Psw` varchar(255) NOT NULL COMMENT '管理员账号密码',
  `AdminSign` tinyint(1) NOT NULL COMMENT '管理员身份标志',
  `AdminNickName` varchar(24) NOT NULL COMMENT '管理员账号昵称',
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', '1', '1', '1', '1');
INSERT INTO `admininfo` VALUES ('6', '6', '6', '1', '6');

-- ----------------------------
-- Table structure for admin_transactioninfo
-- ----------------------------
DROP TABLE IF EXISTS `admin_transactioninfo`;
CREATE TABLE `admin_transactioninfo` (
  `AdminID` varchar(255) NOT NULL,
  `TransactionID` bigint(20) NOT NULL,
  PRIMARY KEY (`AdminID`,`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_transactioninfo
-- ----------------------------
INSERT INTO `admin_transactioninfo` VALUES ('1', '1');

-- ----------------------------
-- Table structure for admin_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `admin_userinfo`;
CREATE TABLE `admin_userinfo` (
  `AdminID` varchar(255) NOT NULL,
  `StudentID` varchar(255) NOT NULL,
  PRIMARY KEY (`AdminID`,`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_userinfo
-- ----------------------------
INSERT INTO `admin_userinfo` VALUES ('1', '2');

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation` (
  `Notice` varchar(10000) DEFAULT NULL,
  `OperationLog` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES ('这是最新的公告！！！！！！！！！', '213213');

-- ----------------------------
-- Table structure for transactioninfo
-- ----------------------------
DROP TABLE IF EXISTS `transactioninfo`;
CREATE TABLE `transactioninfo` (
  `TransactionID` bigint(20) NOT NULL AUTO_INCREMENT,
  `Title` varchar(40) NOT NULL COMMENT '交易标题',
  `Mode` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Condition` int(3) DEFAULT NULL,
  `Price` decimal(24,2) DEFAULT NULL,
  `Describe` varchar(1000) DEFAULT NULL,
  `Photo` varchar(10000) DEFAULT NULL COMMENT '物品照片',
  `Message` varchar(1000) DEFAULT NULL,
  `TransactionState` tinyint(1) NOT NULL,
  `CreateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TransactionTime` timestamp NULL DEFAULT NULL,
  `TransactionAddress` varchar(255) DEFAULT NULL,
  `TrafficVolume` bigint(20) unsigned zerofill NOT NULL COMMENT '交易信息表访问量',
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=1557330900001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transactioninfo
-- ----------------------------
INSERT INTO `transactioninfo` VALUES ('1', '梵蒂冈大范甘迪', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:28:43', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('2', '大还覆盖', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:53', null, '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('3', '大师傅', '1', '3', '1', '22.00', '21', '12', '21', '1', '2019-05-07 23:49:35', null, '121', '00000000000000000012');
INSERT INTO `transactioninfo` VALUES ('4', '爱上风光好', '2', '4', '122', '1212.00', '1212', '12', '12', '1', '2019-05-07 23:49:38', null, null, '00000000000000000012');
INSERT INTO `transactioninfo` VALUES ('5', '啊打发', '3', '5', '9', '23.00', '56', '65', '56', '1', '2019-05-07 23:49:40', '2019-05-07 22:21:36', '4545454', '00000000000000000012');
INSERT INTO `transactioninfo` VALUES ('6', '发说过的话发几个', '2', '0', '645', '11.00', '453453', '53453453', '453453453', '1', '2019-05-08 18:42:48', null, null, '00000000000000000012');
INSERT INTO `transactioninfo` VALUES ('7', '撒打算', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:16', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('8', '阿斯顿', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:28:32', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('9', '阿斯顿撒', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:28:29', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('10', '是打', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:23', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('11', '阿打算的', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:26', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('12', '奥术大师多撒大所大所多', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:30', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('13', '啥的萨达撒', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:33', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('14', '多少个结婚可见来看；', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:36', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('15', '了；华国锋的', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:40', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('16', '水电费是的发送到', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:42', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('17', '啊让我服务', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:45', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('18', '访问规定发生过', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:48', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('19', '1孙菲菲', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:50', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('20', '是否', '1', '1', '1', '1.00', '1', '1', '1', '1', '2019-05-07 23:24:54', '2019-05-22 02:44:45', '122121', '00000000000000002212');
INSERT INTO `transactioninfo` VALUES ('21', '规范化', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:30', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('22', '是的发送到', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:32', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('23', '鼎折覆餗', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:35', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('24', '发达', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('25', '放大还是格式', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:41', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('26', '东风浩荡发发发发', '1', '2', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:47', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('27', '规范化', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:30', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('28', '是的发送到', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:32', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('29', '鼎折覆餗', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:35', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('30', '发达', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('31', '放大还是格式', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:41', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('32', '东风浩荡发发发发', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:47', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('33', '规范化', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:30', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('34', '是的发送到', '1', '3', '6', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:26', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('35', '鼎折覆餗', '1', '3', '7', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:22', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('36', '发达', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('37', '放大还是格式', '1', '3', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:41', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('38', '东风浩荡发发发发', '1', '3', '2', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:21', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('39', '规范化', '1', '4', '5', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:19', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('40', '是的发送到', '1', '4', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:18', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('41', '鼎折覆餗', '1', '4', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:35', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('42', '发达', '1', '4', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('43', '放大还是格式', '1', '4', '5', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:11', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('44', '东风浩荡发发发发', '1', '4', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:47', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('45', '规范化', '1', '4', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:15', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('46', '是的发送到', '1', '5', '6', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:13', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('47', '鼎折覆餗', '1', '5', '5', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:05', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('48', '发达', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('49', '放大还是格式', '1', '5', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:08', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('50', '东风浩荡发发发发', '1', '5', '11', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:03', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('51', '规范化', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:48:40', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('52', '是的发送到', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:40', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('53', '鼎折覆餗', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('54', '发达', '1', '0', '8', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:01', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('55', '放大还是格式', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:32', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('56', '东风浩荡发发发发', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:30', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('57', '规范化', '1', '0', '2', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:50:58', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('58', '是的发送到', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:28', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('59', '鼎折覆餗', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:27', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('60', '发达', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:25', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('61', '放大还是格式', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:22', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('62', '东风浩荡发发发发', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:21', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('63', '规范化', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:20', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('64', '是的发送到', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:19', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('65', '鼎折覆餗', '1', '0', '4', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:50:56', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('66', '发达', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:16', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('67', '放大还是格式', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:14', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('68', '东风浩荡发发发发', '1', '0', '1', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:42:11', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('69', '是的发送到', '1', '5', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:50:53', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('70', '鼎折覆餗', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:35', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('71', '发达', '1', '5', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:54', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('72', '放大还是格式', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:41', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('73', '东风浩荡发发发发', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:47', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('74', '规范化', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:48:40', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('75', '是的发送到', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:32', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('76', '鼎折覆餗', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:35', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('77', '发达', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:37', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('78', '放大还是格式', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:41', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('79', '东风浩荡发发发发', '1', '5', '1', '3.00', '21121', '1221', '121', '1', '2019-05-07 23:31:47', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('80', '规范化', '1', '5', '3', '3.00', '21121', '1221', '121', '1', '2019-05-08 18:51:45', '2019-05-13 23:30:39', '12122', '00000000000000000001');
INSERT INTO `transactioninfo` VALUES ('5545', '54', '54', '54', '4', '54.00', '54', null, '54', '1', '2019-05-07 23:24:33', null, '55', '00000000000000000000');
INSERT INTO `transactioninfo` VALUES ('1557330346000', '1111111', '1', '1', '2', '11.52', '发的斯蒂芬', '', '好帅', '1', '2019-05-08 23:45:46', null, null, '00000000000000000000');
INSERT INTO `transactioninfo` VALUES ('1557330392000', '1111111', '1', '1', '1', '11.52', '2134545GJFCDSGSDZ东方故事的归属感', '', '好帅', '1', '2019-05-08 23:46:32', null, null, '00000000000000000000');
INSERT INTO `transactioninfo` VALUES ('1557330736000', '1111111', '1', '1', '0', '11.52', '是丰东股份下单后跟房价华工科技和', '', '好帅', '1', '2019-05-08 23:52:16', null, null, '00000000000000000000');
INSERT INTO `transactioninfo` VALUES ('1557330853000', '1111111', '1', '1', '1', '11.52', '阿斯蒂芬的这个型号法规处', '', '好帅', '1', '2019-05-08 23:54:13', null, null, '00000000000000000000');
INSERT INTO `transactioninfo` VALUES ('1557330900000', '1111111', '1', '1', '1', '11.52', '打我顺丰到付不过你', '', '好帅', '1', '2019-05-08 23:55:00', null, null, '00000000000000000000');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `UID` bigint(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `StudentID` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserNickName` varchar(24) NOT NULL,
  `Name` varchar(12) DEFAULT NULL,
  `Tel` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `UserSign` tinyint(1) NOT NULL,
  `IDCard` varchar(18) DEFAULT NULL,
  `UserAddress` varchar(255) DEFAULT NULL,
  `RegistrationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifyTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'wmg', '4QrcOUm6Wau+VuBX8g+IPg==', '院长', '院长', '13178599398', '1369359503@qq.com', '男', '1', null, '中国广东省广州市', '2019-05-08 06:35:02', null);
INSERT INTO `userinfo` VALUES ('5', '2', 'yB5yjZ1ML2NvBn+JzBSGLA==', '院长', 'XX', '13178599391', '1369359503@qq.com', '男', '1', null, '中国广东省潮州市', '2019-05-08 06:35:15', null);
INSERT INTO `userinfo` VALUES ('6', '杰豪', 'ICy5YqxZB1uWSwcVLSNLcA==', '杰豪', 'XXX', '13178599397', '1369359503@qq.com', '男', '1', null, '中国广东省湛江市', '2019-05-08 06:35:24', null);
INSERT INTO `userinfo` VALUES ('7', 'jiehao', 'ICy5YqxZB1uWSwcVLSNLcA==', '杰豪', '飒飒', '13178599399', '1369359503@qq.com', '男', '1', null, '中国广东省阳江市', '2019-05-08 06:35:32', null);
INSERT INTO `userinfo` VALUES ('8', '1', 'xMpCOKC5I4INzFCab3WEmw==', 'wmg', '赛德萨', '1313178555', '1369359503@qq.com', '男', '1', null, '中国广东省江门市', '2019-05-08 06:35:41', null);

-- ----------------------------
-- Table structure for userinfo_transactioninfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo_transactioninfo`;
CREATE TABLE `userinfo_transactioninfo` (
  `StudentID` varchar(255) NOT NULL,
  `TransactionID` bigint(20) NOT NULL,
  PRIMARY KEY (`StudentID`,`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo_transactioninfo
-- ----------------------------

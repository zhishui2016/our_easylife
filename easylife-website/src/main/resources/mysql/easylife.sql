/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : easylife

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-09-04 21:26:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `community`
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(255) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  `goodTimes` int(11) DEFAULT NULL,
  `commonTimes` int(11) DEFAULT NULL,
  `badTimes` int(11) DEFAULT NULL,
  `applier_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `replyTimes` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `glyphicon_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('65', '', '2017-06-10 23:00:22', '1', '0', '0', '54', '111', '3', '1', null);
INSERT INTO `community` VALUES ('66', '', '2017-07-24 20:33:33', '0', '1', '0', '54', '哈哈哈', '0', '1', null);

-- ----------------------------
-- Table structure for `glyphicon`
-- ----------------------------
DROP TABLE IF EXISTS `glyphicon`;
CREATE TABLE `glyphicon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` bigint(20) DEFAULT NULL,
  `userinfo_id` bigint(20) DEFAULT NULL,
  `goodTimes` int(11) DEFAULT NULL,
  `commonTimes` int(11) DEFAULT NULL,
  `badTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of glyphicon
-- ----------------------------
INSERT INTO `glyphicon` VALUES ('1', '65', '54', '1', '0', '0');
INSERT INTO `glyphicon` VALUES ('2', '66', '54', '1', '0', '0');

-- ----------------------------
-- Table structure for `iplog`
-- ----------------------------
DROP TABLE IF EXISTS `iplog`;
CREATE TABLE `iplog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `logintime` datetime NOT NULL,
  `userType` tinyint(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1670 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iplog
-- ----------------------------
INSERT INTO `iplog` VALUES ('1026', '127.0.0.1', '0', '止水2012', '2017-06-10 16:39:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1027', '127.0.0.1', '0', '止水2012', '2017-06-10 16:40:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1028', '127.0.0.1', '0', '止水2012', '2017-06-10 16:52:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1029', '127.0.0.1', '0', '止水2012', '2017-06-10 16:57:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1030', '127.0.0.1', '0', '止水2012', '2017-06-10 17:01:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1031', '127.0.0.1', '0', '止水2012', '2017-06-10 17:27:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1032', '127.0.0.1', '0', '止水2012', '2017-06-10 17:28:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1033', '127.0.0.1', '0', 'admin', '2017-06-10 17:41:57', '1', null, null);
INSERT INTO `iplog` VALUES ('1034', '127.0.0.1', '0', '止水2012', '2017-06-10 17:42:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1035', '127.0.0.1', '0', '止水2012', '2017-06-10 18:35:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1036', '192.168.1.156', '0', '止水2012', '2017-06-10 20:45:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1037', '192.168.1.156', '0', '止水2012', '2017-06-10 20:54:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1038', '127.0.0.1', '0', '止水2012', '2017-06-10 22:34:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1039', '127.0.0.1', '0', '止水2012', '2017-06-10 22:35:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1040', '127.0.0.1', '0', '止水2012', '2017-06-10 22:39:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1041', '127.0.0.1', '0', '止水2012', '2017-06-10 22:40:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1042', '127.0.0.1', '0', '止水2012', '2017-06-10 22:41:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1043', '127.0.0.1', '0', '止水2012', '2017-06-10 22:42:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1044', '127.0.0.1', '0', '止水2012', '2017-06-10 22:43:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1045', '127.0.0.1', '0', '止水2012', '2017-06-10 22:43:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1046', '127.0.0.1', '0', '止水2012', '2017-06-10 22:45:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1047', '127.0.0.1', '0', '止水2012', '2017-06-10 23:00:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1048', '127.0.0.1', '0', '止水2012', '2017-06-11 07:12:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1049', '127.0.0.1', '0', '止水2012', '2017-06-11 12:14:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1050', '127.0.0.1', '0', '止水2012', '2017-06-11 21:30:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1051', '127.0.0.1', '0', '止水2012', '2017-06-11 21:32:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1052', '127.0.0.1', '0', '止水2012', '2017-06-12 22:36:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1053', '127.0.0.1', '0', '止水2012', '2017-06-12 22:42:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1054', '127.0.0.1', '0', '止水2012', '2017-06-12 22:50:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1055', '127.0.0.1', '0', '止水2012', '2017-06-12 22:52:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1056', '127.0.0.1', '0', '止水2012', '2017-06-12 23:11:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1057', '127.0.0.1', '0', '止水2012', '2017-06-13 21:06:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1058', '127.0.0.1', '0', '止水2012', '2017-06-13 21:13:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1059', '127.0.0.1', '0', '止水2012', '2017-06-13 21:14:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1060', '127.0.0.1', '0', '止水2012', '2017-06-13 21:28:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1061', '127.0.0.1', '0', '止水2012', '2017-06-13 21:50:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1062', '127.0.0.1', '0', '止水2012', '2017-07-13 21:39:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1063', '127.0.0.1', '0', '止水2012', '2017-07-13 21:51:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1064', '127.0.0.1', '0', '止水2012', '2017-07-13 21:51:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1065', '127.0.0.1', '0', '止水2012', '2017-07-13 22:00:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1066', '127.0.0.1', '0', '止水2012', '2017-07-13 22:02:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1067', '127.0.0.1', '0', '止水2012', '2017-07-13 22:03:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1068', '127.0.0.1', '0', '止水2012', '2017-07-13 22:07:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1069', '127.0.0.1', '0', '止水2012', '2017-07-13 22:13:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1070', '127.0.0.1', '0', '止水2012', '2017-07-13 22:14:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1071', '127.0.0.1', '0', '止水2012', '2017-07-13 22:15:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1072', '127.0.0.1', '0', '止水2012', '2017-07-13 22:18:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1073', '127.0.0.1', '0', 'admin', '2017-07-13 22:21:20', '1', null, null);
INSERT INTO `iplog` VALUES ('1074', '127.0.0.1', '0', '止水2012', '2017-07-13 22:24:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1075', '127.0.0.1', '0', '止水2012', '2017-07-13 22:24:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1076', '127.0.0.1', '0', '止水2012', '2017-07-14 22:41:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1077', '127.0.0.1', '0', '止水2012', '2017-07-14 23:02:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1078', '127.0.0.1', '0', '止水2012', '2017-07-14 23:08:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1079', '127.0.0.1', '0', '止水2012', '2017-07-14 23:11:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1080', '127.0.0.1', '0', '止水2012', '2017-07-14 23:12:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1081', '127.0.0.1', '0', '止水2012', '2017-07-14 23:19:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1082', '127.0.0.1', '0', '止水2012', '2017-07-14 23:26:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1083', '127.0.0.1', '0', '止水2012', '2017-07-14 23:41:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1084', '127.0.0.1', '0', '止水2012', '2017-07-14 23:47:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1085', '127.0.0.1', '0', '止水2012', '2017-07-14 23:59:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1086', '127.0.0.1', '0', '止水2012', '2017-07-15 21:38:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1087', '127.0.0.1', '0', '止水2012', '2017-07-15 21:48:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1088', '127.0.0.1', '0', '止水2012', '2017-07-15 22:04:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1089', '127.0.0.1', '0', '止水2012', '2017-07-15 22:30:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1090', '127.0.0.1', '0', '止水2012', '2017-07-15 22:43:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1091', '127.0.0.1', '0', '止水2012', '2017-07-15 22:43:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1092', '127.0.0.1', '0', '止水2012', '2017-07-15 22:51:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1093', '127.0.0.1', '0', '止水2012', '2017-07-15 22:58:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1094', '127.0.0.1', '0', '止水2012', '2017-07-16 06:55:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1095', '127.0.0.1', '0', '止水2012', '2017-07-16 08:28:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1096', '127.0.0.1', '0', '止水2012', '2017-07-16 09:39:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1097', '127.0.0.1', '0', '止水2012', '2017-07-16 09:41:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1098', '127.0.0.1', '0', '止水2012', '2017-07-16 09:46:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1099', '127.0.0.1', '0', '止水2012', '2017-07-16 10:33:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1100', '127.0.0.1', '0', '止水2012', '2017-07-16 11:17:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1101', '127.0.0.1', '0', '止水2012', '2017-07-16 11:25:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1102', '127.0.0.1', '0', '止水2012', '2017-07-16 11:30:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1103', '127.0.0.1', '0', '止水2012', '2017-07-16 12:43:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1104', '127.0.0.1', '0', '止水2012', '2017-07-16 13:35:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1105', '127.0.0.1', '0', '止水2012', '2017-07-16 13:38:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1106', '127.0.0.1', '0', '止水2012', '2017-07-16 13:41:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1107', '127.0.0.1', '0', '止水2012', '2017-07-16 13:42:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1108', '127.0.0.1', '0', '止水2012', '2017-07-16 13:44:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1109', '127.0.0.1', '0', '止水2012', '2017-07-16 13:46:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1110', '127.0.0.1', '0', '止水2012', '2017-07-16 13:50:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1111', '127.0.0.1', '0', '止水2012', '2017-07-16 15:27:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1112', '127.0.0.1', '0', '止水2012', '2017-07-16 15:44:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1113', '127.0.0.1', '0', '止水2012', '2017-07-16 15:53:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1114', '127.0.0.1', '0', '止水2012', '2017-07-16 16:08:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1115', '127.0.0.1', '0', '止水2012', '2017-07-16 16:15:20', '0', null, null);
INSERT INTO `iplog` VALUES ('1116', '127.0.0.1', '0', '止水2012', '2017-07-16 16:20:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1117', '127.0.0.1', '0', '止水2012', '2017-07-16 16:34:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1118', '127.0.0.1', '0', '止水2012', '2017-07-16 16:36:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1119', '127.0.0.1', '0', '止水2012', '2017-07-16 16:38:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1120', '127.0.0.1', '0', '止水2012', '2017-07-16 16:41:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1121', '127.0.0.1', '0', '止水2012', '2017-07-16 16:58:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1122', '127.0.0.1', '0', '止水2012', '2017-07-16 17:11:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1123', '127.0.0.1', '0', '止水2012', '2017-07-16 17:20:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1124', '127.0.0.1', '0', '止水2012', '2017-07-16 17:27:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1125', '127.0.0.1', '0', '止水2012', '2017-07-16 17:45:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1126', '127.0.0.1', '0', '止水2012', '2017-07-16 17:52:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1127', '127.0.0.1', '0', '止水2012', '2017-07-16 17:59:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1128', '127.0.0.1', '0', '止水2012', '2017-07-16 18:06:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1129', '127.0.0.1', '0', '止水2012', '2017-07-16 19:34:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1130', '127.0.0.1', '0', '止水2012', '2017-07-16 19:50:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1131', '127.0.0.1', '0', '止水2012', '2017-07-16 21:06:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1132', '127.0.0.1', '0', '止水2012', '2017-07-16 21:10:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1133', '127.0.0.1', '0', '止水2012', '2017-07-16 22:04:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1134', '127.0.0.1', '0', '止水2012', '2017-07-16 22:05:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1135', '127.0.0.1', '0', '止水2012', '2017-07-16 22:16:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1136', '127.0.0.1', '0', '止水2012', '2017-07-16 22:21:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1137', '127.0.0.1', '0', '止水2012', '2017-07-16 22:27:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1138', '127.0.0.1', '0', '止水2012', '2017-07-16 22:59:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1139', '127.0.0.1', '0', '止水2012', '2017-07-16 23:20:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1140', '127.0.0.1', '0', '止水2012', '2017-07-16 23:27:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1141', '127.0.0.1', '0', '止水2012', '2017-07-17 20:44:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1142', '127.0.0.1', '0', '止水2012', '2017-07-17 21:27:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1143', '127.0.0.1', '0', '止水2012', '2017-07-17 21:28:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1144', '127.0.0.1', '0', '止水2012', '2017-07-18 19:51:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1145', '127.0.0.1', '0', '止水2012', '2017-07-19 20:48:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1146', '127.0.0.1', '0', '止水2012', '2017-07-19 21:22:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1147', '127.0.0.1', '0', '止水2012', '2017-07-19 21:40:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1148', '127.0.0.1', '0', '止水2012', '2017-07-19 22:07:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1149', '127.0.0.1', '0', '止水2012', '2017-07-19 23:30:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1150', '127.0.0.1', '0', '止水2012', '2017-07-19 23:33:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1151', '127.0.0.1', '0', '止水2012', '2017-07-19 23:37:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1152', '127.0.0.1', '0', '止水2012', '2017-07-19 23:37:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1153', '127.0.0.1', '0', '止水2012', '2017-07-19 23:39:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1154', '127.0.0.1', '0', '止水2012', '2017-07-19 23:40:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1155', '127.0.0.1', '0', '止水2012', '2017-07-19 23:41:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1156', '127.0.0.1', '0', '止水2012', '2017-07-19 23:42:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1157', '127.0.0.1', '0', '止水2012', '2017-07-19 23:42:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1158', '127.0.0.1', '0', '止水2012', '2017-07-19 23:43:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1159', '127.0.0.1', '0', '止水2012', '2017-07-19 23:44:20', '0', null, null);
INSERT INTO `iplog` VALUES ('1160', '127.0.0.1', '0', '止水2012', '2017-07-19 23:45:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1161', '127.0.0.1', '0', '止水2012', '2017-07-19 23:46:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1162', '127.0.0.1', '0', '止水2012', '2017-07-19 23:49:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1163', '127.0.0.1', '0', '止水2012', '2017-07-19 23:50:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1164', '127.0.0.1', '0', '止水2012', '2017-07-19 23:52:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1165', '127.0.0.1', '0', '止水2012', '2017-07-19 23:53:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1166', '127.0.0.1', '0', '止水2012', '2017-07-19 23:54:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1167', '127.0.0.1', '0', '止水2012', '2017-07-20 19:19:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1168', '127.0.0.1', '0', '止水2012', '2017-07-20 19:25:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1169', '127.0.0.1', '0', '止水2012', '2017-07-20 19:43:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1170', '127.0.0.1', '0', '止水2012', '2017-07-20 19:44:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1171', '127.0.0.1', '0', '止水2012', '2017-07-20 19:45:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1172', '127.0.0.1', '0', '止水2012', '2017-07-20 19:52:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1173', '127.0.0.1', '0', '止水2012', '2017-07-20 19:56:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1174', '127.0.0.1', '0', '止水2012', '2017-07-21 19:47:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1175', '127.0.0.1', '0', '止水2012', '2017-07-21 19:47:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1176', '127.0.0.1', '0', '止水2012', '2017-07-21 19:48:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1177', '127.0.0.1', '0', '止水2012', '2017-07-21 22:01:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1178', '127.0.0.1', '0', '止水2012', '2017-07-21 22:10:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1179', '127.0.0.1', '0', '止水2012', '2017-07-21 22:15:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1180', '127.0.0.1', '0', '止水2012', '2017-07-21 22:17:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1181', '127.0.0.1', '0', '止水2012', '2017-07-21 22:20:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1182', '127.0.0.1', '0', '止水2012', '2017-07-21 22:22:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1183', '127.0.0.1', '0', '止水2012', '2017-07-21 22:22:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1184', '127.0.0.1', '0', '止水2012', '2017-07-21 22:23:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1185', '127.0.0.1', '1', 'admin', '2017-07-21 22:24:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1186', '127.0.0.1', '1', 'admin', '2017-07-21 22:24:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1187', '127.0.0.1', '1', 'admin', '2017-07-21 22:24:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1188', '127.0.0.1', '0', '海燕南飞', '2017-07-21 22:25:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1189', '127.0.0.1', '0', '止水2012', '2017-07-21 23:12:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1190', '127.0.0.1', '0', '止水2012', '2017-07-21 23:22:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1191', '127.0.0.1', '0', '止水2012', '2017-07-21 23:39:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1192', '127.0.0.1', '0', '止水2012', '2017-07-22 09:02:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1193', '127.0.0.1', '0', '止水2012', '2017-07-22 09:10:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1194', '127.0.0.1', '0', '止水2012', '2017-07-22 09:20:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1195', '127.0.0.1', '0', '海燕南飞', '2017-07-22 09:20:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1196', '127.0.0.1', '0', '止水2012', '2017-07-22 10:03:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1197', '127.0.0.1', '0', '止水2012', '2017-07-22 10:08:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1198', '127.0.0.1', '0', '止水2012', '2017-07-22 10:09:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1199', '127.0.0.1', '0', '海燕南飞', '2017-07-22 10:12:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1200', '127.0.0.1', '0', '止水2012', '2017-07-22 11:30:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1201', '127.0.0.1', '0', '止水2012', '2017-07-22 11:55:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1202', '127.0.0.1', '0', '止水2012', '2017-07-22 12:03:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1203', '127.0.0.1', '0', '止水2012', '2017-07-22 12:04:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1204', '127.0.0.1', '0', '海燕南飞', '2017-07-22 12:10:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1205', '127.0.0.1', '1', 'admin', '2017-07-22 12:12:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1206', '127.0.0.1', '1', 'admin', '2017-07-22 12:13:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1207', '127.0.0.1', '0', '止水2012', '2017-07-22 12:13:20', '0', null, null);
INSERT INTO `iplog` VALUES ('1208', '127.0.0.1', '0', '你好明天', '2017-07-22 12:21:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1209', '127.0.0.1', '0', '你好明天', '2017-07-22 12:22:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1210', '127.0.0.1', '0', '止水2012', '2017-07-22 12:23:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1211', '127.0.0.1', '0', '海燕南飞', '2017-07-22 12:23:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1212', '127.0.0.1', '0', '你好明天', '2017-07-22 12:25:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1213', '127.0.0.1', '0', '止水2012', '2017-07-22 12:26:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1214', '127.0.0.1', '0', '止水2012', '2017-07-22 12:37:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1215', '127.0.0.1', '0', '止水2012', '2017-07-23 10:39:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1216', '172.30.159.3', '0', '止水2012', '2017-07-23 10:45:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1217', '127.0.0.1', '0', '海燕南飞', '2017-07-23 10:45:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1218', '127.0.0.1', '0', '止水2012', '2017-07-23 10:53:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1219', '127.0.0.1', '0', '止水2012', '2017-07-23 10:56:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1220', '127.0.0.1', '0', '止水2012', '2017-07-23 11:00:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1221', '127.0.0.1', '0', '止水2012', '2017-07-23 11:10:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1222', '127.0.0.1', '0', '海燕南飞', '2017-07-23 11:11:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1223', '127.0.0.1', '0', '止水2012', '2017-07-23 11:19:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1224', '127.0.0.1', '0', '止水2012', '2017-07-23 11:26:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1225', '127.0.0.1', '0', '止水2012', '2017-07-23 12:20:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1226', '127.0.0.1', '0', '止水2012', '2017-07-23 12:23:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1227', '127.0.0.1', '0', '止水2012', '2017-07-23 12:41:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1228', '127.0.0.1', '0', '止水2012', '2017-07-23 12:45:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1229', '127.0.0.1', '0', '止水2012', '2017-07-23 13:49:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1230', '127.0.0.1', '0', '海燕南飞', '2017-07-23 13:52:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1231', '127.0.0.1', '0', '止水2012', '2017-07-23 14:06:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1232', '127.0.0.1', '0', '止水2012', '2017-07-23 14:07:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1233', '127.0.0.1', '0', '止水2012', '2017-07-23 14:37:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1234', '127.0.0.1', '0', '止水2012', '2017-07-23 14:43:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1235', '127.0.0.1', '0', '止水2012', '2017-07-23 14:46:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1236', '127.0.0.1', '0', '止水2012', '2017-07-23 15:30:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1237', '127.0.0.1', '0', '止水2012', '2017-07-23 15:51:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1238', '127.0.0.1', '0', '止水2012', '2017-07-23 15:56:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1239', '127.0.0.1', '0', '止水2012', '2017-07-23 16:03:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1240', '127.0.0.1', '0', '止水2012', '2017-07-23 16:08:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1241', '127.0.0.1', '0', '止水2012', '2017-07-23 16:11:20', '0', null, null);
INSERT INTO `iplog` VALUES ('1242', '127.0.0.1', '0', '止水2012', '2017-07-23 16:17:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1243', '127.0.0.1', '0', '止水2012', '2017-07-23 16:45:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1244', '127.0.0.1', '0', '止水2012', '2017-07-23 16:49:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1245', '127.0.0.1', '0', '止水2012', '2017-07-23 16:53:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1246', '127.0.0.1', '0', '止水2012', '2017-07-23 16:54:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1247', '127.0.0.1', '0', '止水2012', '2017-07-23 16:57:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1248', '127.0.0.1', '0', '止水2012', '2017-07-23 17:00:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1249', '127.0.0.1', '0', '止水2012', '2017-07-23 17:08:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1250', '127.0.0.1', '0', '止水2012', '2017-07-23 17:16:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1251', '127.0.0.1', '0', '止水2012', '2017-07-23 18:13:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1252', '127.0.0.1', '0', '止水2012', '2017-07-23 18:26:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1253', '127.0.0.1', '0', '止水2012', '2017-07-23 18:30:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1254', '127.0.0.1', '0', '止水2012', '2017-07-23 18:31:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1255', '127.0.0.1', '0', '止水2012', '2017-07-23 18:36:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1256', '127.0.0.1', '0', '止水2012', '2017-07-23 18:40:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1257', '127.0.0.1', '0', '海燕南飞', '2017-07-23 18:41:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1258', '127.0.0.1', '0', 'admin', '2017-07-23 18:49:04', '1', null, null);
INSERT INTO `iplog` VALUES ('1259', '127.0.0.1', '0', '止水2012', '2017-07-23 18:49:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1260', '127.0.0.1', '0', '海燕南飞', '2017-07-23 18:50:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1261', '127.0.0.1', '0', '止水2012', '2017-07-23 20:21:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1262', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:21:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1263', '127.0.0.1', '0', '止水2012', '2017-07-23 20:23:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1264', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:23:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1265', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:27:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1266', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:31:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1267', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:35:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1268', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:38:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1269', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:39:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1270', '127.0.0.1', '0', '海燕南飞', '2017-07-23 20:42:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1271', '127.0.0.1', '0', '止水2012', '2017-07-23 20:42:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1272', '127.0.0.1', '0', '止水2012', '2017-07-23 20:50:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1273', '127.0.0.1', '0', '止水2012', '2017-07-23 20:54:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1274', '127.0.0.1', '0', '止水2012', '2017-07-23 20:56:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1275', '127.0.0.1', '0', '止水2012', '2017-07-23 21:07:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1276', '127.0.0.1', '0', '止水2012', '2017-07-23 21:08:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1277', '127.0.0.1', '0', '止水2012', '2017-07-23 21:08:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1278', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1279', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1280', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1281', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1282', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1283', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1284', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1285', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1286', '127.0.0.1', '0', '止水2012', '2017-07-23 21:28:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1287', '127.0.0.1', '0', '止水2012', '2017-07-23 21:35:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1288', '127.0.0.1', '0', '止水2012', '2017-07-23 21:50:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1289', '127.0.0.1', '0', '止水2012', '2017-07-23 22:13:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1290', '127.0.0.1', '0', '止水2012', '2017-07-23 22:16:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1291', '127.0.0.1', '0', '止水2012', '2017-07-23 22:27:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1292', '127.0.0.1', '0', '止水2012', '2017-07-23 22:33:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1293', '127.0.0.1', '0', '止水2012', '2017-07-23 22:35:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1294', '127.0.0.1', '0', '止水2012', '2017-07-23 22:35:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1295', '127.0.0.1', '0', '止水2012', '2017-07-23 22:45:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1296', '127.0.0.1', '1', '止水2012', '2017-07-23 22:47:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1297', '127.0.0.1', '1', '止水2013', '2017-07-23 22:47:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1298', '127.0.0.1', '1', '止水2013', '2017-07-23 22:47:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1299', '127.0.0.1', '0', '止水2012', '2017-07-23 22:47:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1300', '127.0.0.1', '0', '止水2013', '2017-07-23 23:21:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1301', '127.0.0.1', '0', '止水2012', '2017-07-23 23:22:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1302', '127.0.0.1', '1', '止水2012', '2017-07-23 23:23:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1303', '127.0.0.1', '0', '止水2013', '2017-07-23 23:23:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1304', '127.0.0.1', '0', '止水2012', '2017-07-23 23:36:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1305', '127.0.0.1', '0', '止水2012', '2017-07-23 23:37:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1306', '127.0.0.1', '1', '止水2012', '2017-07-23 23:38:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1307', '127.0.0.1', '0', '止水2013', '2017-07-23 23:38:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1308', '127.0.0.1', '0', '止水2012', '2017-07-23 23:40:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1309', '127.0.0.1', '1', '止水2012', '2017-07-23 23:42:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1310', '127.0.0.1', '0', '止水2013', '2017-07-23 23:42:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1311', '127.0.0.1', '0', '止水2012', '2017-07-23 23:43:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1312', '127.0.0.1', '1', '止水2012', '2017-07-23 23:43:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1313', '127.0.0.1', '0', '止水2013', '2017-07-23 23:43:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1314', '127.0.0.1', '1', '止水2012', '2017-07-23 23:44:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1315', '127.0.0.1', '0', '止水2013', '2017-07-23 23:44:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1316', '127.0.0.1', '1', '止水2012', '2017-07-23 23:46:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1317', '127.0.0.1', '0', '止水2013', '2017-07-23 23:46:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1318', '127.0.0.1', '1', '止水2012', '2017-07-23 23:54:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1319', '127.0.0.1', '0', '止水2013', '2017-07-23 23:54:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1320', '127.0.0.1', '1', '止水2012', '2017-07-24 19:29:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1321', '127.0.0.1', '0', '止水2013', '2017-07-24 19:29:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1322', '127.0.0.1', '1', '止水2012', '2017-07-24 19:30:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1323', '127.0.0.1', '0', '止水2013', '2017-07-24 19:30:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1324', '127.0.0.1', '1', '止水2012', '2017-07-24 19:31:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1325', '127.0.0.1', '0', '止水2013', '2017-07-24 19:31:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1326', '127.0.0.1', '0', '止水2012', '2017-07-24 19:33:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1327', '127.0.0.1', '0', '止水2012', '2017-07-24 20:31:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1328', '127.0.0.1', '0', '止水2012', '2017-07-24 21:06:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1329', '127.0.0.1', '0', '止水2012', '2017-07-24 21:07:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1330', '127.0.0.1', '0', '止水2012', '2017-07-24 21:09:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1331', '127.0.0.1', '0', '止水2012', '2017-07-24 21:20:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1332', '127.0.0.1', '0', '止水2012', '2017-07-24 21:27:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1333', '127.0.0.1', '0', '止水2012', '2017-07-24 21:30:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1334', '127.0.0.1', '0', '止水2012', '2017-07-24 21:31:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1335', '127.0.0.1', '0', '止水2012', '2017-07-25 19:11:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1336', '127.0.0.1', '0', '止水2012', '2017-07-25 19:13:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1337', '127.0.0.1', '0', '止水2012', '2017-07-25 21:14:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1338', '127.0.0.1', '0', '止水2012', '2017-07-25 21:23:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1339', '127.0.0.1', '0', '止水2012', '2017-07-26 19:55:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1340', '127.0.0.1', '0', '止水2012', '2017-07-26 20:03:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1341', '127.0.0.1', '0', '止水2012', '2017-07-26 20:04:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1342', '127.0.0.1', '0', '止水2012', '2017-07-26 20:18:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1343', '127.0.0.1', '0', '止水2012', '2017-07-26 20:39:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1344', '127.0.0.1', '0', '止水2012', '2017-07-26 20:48:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1345', '127.0.0.1', '0', '止水2012', '2017-07-26 21:04:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1346', '127.0.0.1', '0', '止水2012', '2017-07-26 21:20:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1347', '127.0.0.1', '0', '止水2012', '2017-07-26 21:26:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1348', '127.0.0.1', '0', '止水2012', '2017-07-26 21:28:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1349', '127.0.0.1', '0', '止水2012', '2017-07-26 21:35:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1350', '127.0.0.1', '0', '止水2012', '2017-07-26 21:42:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1351', '127.0.0.1', '0', '止水2012', '2017-07-26 21:43:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1352', '127.0.0.1', '0', '止水2012', '2017-07-26 21:49:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1353', '127.0.0.1', '0', '止水2012', '2017-07-26 21:51:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1354', '127.0.0.1', '0', '止水2012', '2017-07-26 21:52:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1355', '127.0.0.1', '0', '止水2012', '2017-07-26 21:53:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1356', '127.0.0.1', '0', '止水2012', '2017-07-26 21:55:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1357', '127.0.0.1', '0', '止水2012', '2017-07-26 21:56:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1358', '127.0.0.1', '0', '止水2012', '2017-07-26 21:58:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1359', '127.0.0.1', '0', '止水2012', '2017-07-26 22:05:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1360', '127.0.0.1', '0', '止水2012', '2017-07-27 20:55:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1361', '127.0.0.1', '0', '止水2012', '2017-07-27 20:56:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1362', '127.0.0.1', '0', '止水2012', '2017-07-27 21:28:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1363', '127.0.0.1', '0', '止水2012', '2017-07-27 21:30:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1364', '127.0.0.1', '0', '止水2012', '2017-07-27 21:31:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1365', '127.0.0.1', '0', '止水2012', '2017-07-27 21:32:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1366', '127.0.0.1', '0', '止水2012', '2017-07-27 21:33:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1367', '127.0.0.1', '1', '止水2012', '2017-07-27 21:37:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1368', '127.0.0.1', '0', '止水2012', '2017-07-27 21:37:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1369', '127.0.0.1', '0', '止水2012', '2017-07-27 21:45:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1370', '127.0.0.1', '0', '止水2012', '2017-07-27 21:58:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1371', '127.0.0.1', '0', '止水2012', '2017-07-27 21:58:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1372', '127.0.0.1', '0', '止水2012', '2017-07-27 22:11:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1373', '127.0.0.1', '0', '止水2012', '2017-07-27 22:14:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1374', '127.0.0.1', '0', '止水2012', '2017-07-27 22:47:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1375', '127.0.0.1', '0', '止水2012', '2017-07-27 22:49:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1376', '127.0.0.1', '0', '止水2012', '2017-07-27 22:51:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1377', '127.0.0.1', '0', '止水2012', '2017-07-27 22:53:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1378', '127.0.0.1', '0', '止水2012', '2017-07-27 22:53:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1379', '127.0.0.1', '0', '止水2012', '2017-07-27 22:55:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1380', '127.0.0.1', '0', '止水2012', '2017-07-27 22:56:54', '0', null, null);
INSERT INTO `iplog` VALUES ('1381', '127.0.0.1', '0', '止水2012', '2017-07-27 23:00:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1382', '127.0.0.1', '0', '止水2012', '2017-07-27 23:02:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1383', '127.0.0.1', '0', '止水2012', '2017-07-28 21:15:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1384', '127.0.0.1', '0', '止水2012', '2017-07-28 21:50:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1385', '127.0.0.1', '0', '止水2012', '2017-07-28 22:07:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1386', '127.0.0.1', '0', '止水2012', '2017-07-28 22:11:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1387', '127.0.0.1', '0', '止水2012', '2017-07-28 22:11:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1388', '127.0.0.1', '0', '海燕南飞', '2017-07-28 22:43:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1389', '127.0.0.1', '0', '止水2012', '2017-07-28 22:51:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1390', '127.0.0.1', '0', '止水2012', '2017-07-28 23:00:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1391', '127.0.0.1', '0', '止水2012', '2017-07-28 23:19:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1392', '127.0.0.1', '0', '止水2012', '2017-07-28 23:21:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1393', '127.0.0.1', '0', '止水2012', '2017-07-28 23:39:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1394', '127.0.0.1', '0', '止水2012', '2017-07-28 23:57:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1395', '127.0.0.1', '0', '止水2012', '2017-07-29 06:47:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1396', '127.0.0.1', '0', '止水2012', '2017-07-29 07:13:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1397', '127.0.0.1', '0', '止水2012', '2017-07-29 07:14:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1398', '127.0.0.1', '0', '止水2012', '2017-07-29 08:32:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1399', '127.0.0.1', '0', '海燕南飞', '2017-07-29 09:08:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1400', '127.0.0.1', '0', '止水2012', '2017-07-29 10:19:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1401', '127.0.0.1', '0', '海燕南飞', '2017-07-29 10:33:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1402', '127.0.0.1', '0', '止水2012', '2017-07-29 10:48:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1403', '127.0.0.1', '0', '止水2012', '2017-07-29 11:54:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1404', '127.0.0.1', '0', '止水2012', '2017-07-29 12:26:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1405', '127.0.0.1', '0', '止水2012', '2017-07-29 12:28:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1406', '127.0.0.1', '0', '止水2012', '2017-07-29 12:33:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1407', '127.0.0.1', '0', '海燕南飞', '2017-07-29 12:34:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1408', '127.0.0.1', '0', '海燕南飞', '2017-07-29 12:35:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1409', '127.0.0.1', '0', '止水2012', '2017-07-29 19:09:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1410', '127.0.0.1', '0', '止水2012', '2017-07-29 19:11:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1411', '127.0.0.1', '0', '止水2012', '2017-07-29 19:11:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1412', '127.0.0.1', '0', '止水2012', '2017-07-29 21:43:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1413', '127.0.0.1', '0', '止水2012', '2017-07-29 21:44:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1414', '127.0.0.1', '0', '止水2012', '2017-07-29 21:59:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1415', '127.0.0.1', '0', '止水2012', '2017-07-29 22:43:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1416', '127.0.0.1', '0', '止水2012', '2017-07-29 22:45:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1417', '127.0.0.1', '0', '止水2012', '2017-07-29 22:48:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1418', '127.0.0.1', '0', '止水2012', '2017-07-29 22:54:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1419', '127.0.0.1', '0', '止水2012', '2017-07-29 22:59:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1420', '127.0.0.1', '0', '止水2012', '2017-07-29 23:05:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1421', '127.0.0.1', '0', '止水2012', '2017-07-29 23:08:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1422', '127.0.0.1', '0', '止水2012', '2017-07-29 23:25:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1423', '127.0.0.1', '0', '止水2012', '2017-07-29 23:34:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1424', '127.0.0.1', '0', '止水2012', '2017-07-29 23:43:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1425', '127.0.0.1', '0', '止水2012', '2017-07-29 23:58:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1426', '127.0.0.1', '0', '止水2012', '2017-08-01 21:47:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1427', '127.0.0.1', '0', '止水2012', '2017-08-01 22:09:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1428', '127.0.0.1', '0', '止水2012', '2017-08-01 22:09:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1429', '127.0.0.1', '0', '止水2012', '2017-08-01 22:31:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1430', '127.0.0.1', '0', '止水2012', '2017-08-03 21:35:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1431', '127.0.0.1', '0', '止水2012', '2017-08-03 21:51:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1432', '127.0.0.1', '0', '止水2012', '2017-08-03 22:14:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1433', '127.0.0.1', '0', '海燕南飞', '2017-08-03 22:41:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1434', '127.0.0.1', '0', '止水2012', '2017-08-03 23:07:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1435', '127.0.0.1', '0', '止水2012', '2017-08-03 23:08:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1436', '127.0.0.1', '0', '止水2012', '2017-08-03 23:14:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1437', '127.0.0.1', '0', '止水2012', '2017-08-06 15:01:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1438', '127.0.0.1', '0', '止水2012', '2017-08-06 15:02:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1439', '127.0.0.1', '0', '止水2012', '2017-08-07 20:28:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1440', '127.0.0.1', '0', '止水2012', '2017-08-07 20:30:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1441', '127.0.0.1', '0', '止水2012', '2017-08-07 20:41:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1442', '127.0.0.1', '0', '止水2012', '2017-08-07 20:43:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1443', '127.0.0.1', '0', '止水2012', '2017-08-07 20:45:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1444', '127.0.0.1', '0', '止水2012', '2017-08-07 20:47:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1445', '127.0.0.1', '0', '止水2012', '2017-08-07 20:50:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1446', '127.0.0.1', '0', '止水2012', '2017-08-07 20:52:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1447', '127.0.0.1', '0', '止水2012', '2017-08-07 20:55:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1448', '127.0.0.1', '0', '止水2012', '2017-08-07 21:33:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1449', '127.0.0.1', '0', '止水2012', '2017-08-07 21:36:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1450', '127.0.0.1', '0', '止水2012', '2017-08-07 21:36:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1451', '127.0.0.1', '0', '止水2012', '2017-08-09 20:22:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1452', '127.0.0.1', '0', '止水2012', '2017-08-09 20:26:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1453', '127.0.0.1', '0', '止水2012', '2017-08-09 20:26:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1454', '127.0.0.1', '0', '止水2012', '2017-08-09 20:28:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1455', '127.0.0.1', '0', '止水2012', '2017-08-09 20:29:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1456', '127.0.0.1', '0', '止水2012', '2017-08-09 20:32:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1457', '127.0.0.1', '0', '止水2012', '2017-08-09 20:35:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1458', '127.0.0.1', '0', '止水2012', '2017-08-09 20:55:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1459', '127.0.0.1', '0', '止水2012', '2017-08-09 20:55:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1460', '127.0.0.1', '0', '止水2012', '2017-08-09 21:00:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1461', '127.0.0.1', '0', '止水2012', '2017-08-09 21:00:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1462', '127.0.0.1', '0', '止水2012', '2017-08-09 21:28:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1463', '127.0.0.1', '0', '止水2012', '2017-08-10 20:40:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1464', '127.0.0.1', '0', '止水2012', '2017-08-10 20:48:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1465', '127.0.0.1', '1', '海南南飞', '2017-08-10 20:49:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1466', '127.0.0.1', '1', '海南南飞', '2017-08-10 20:49:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1467', '127.0.0.1', '1', '海南南飞', '2017-08-10 20:49:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1468', '127.0.0.1', '0', '海燕南飞', '2017-08-10 20:49:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1469', '127.0.0.1', '0', '止水2012', '2017-08-10 20:56:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1470', '127.0.0.1', '0', '海燕南飞', '2017-08-10 20:57:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1471', '127.0.0.1', '0', '止水2012', '2017-08-10 21:16:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1472', '127.0.0.1', '0', '止水2012', '2017-08-10 21:16:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1473', '127.0.0.1', '0', '止水2012', '2017-08-10 21:22:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1474', '127.0.0.1', '0', '止水2012', '2017-08-10 21:23:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1475', '127.0.0.1', '0', '止水2012', '2017-08-10 21:23:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1476', '127.0.0.1', '0', '止水2012', '2017-08-10 21:24:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1477', '127.0.0.1', '0', '止水2012', '2017-08-12 18:38:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1478', '127.0.0.1', '0', '止水2012', '2017-08-12 18:59:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1479', '127.0.0.1', '0', '止水2012', '2017-08-12 20:43:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1480', '127.0.0.1', '0', '止水2012', '2017-08-12 20:59:47', '0', null, null);
INSERT INTO `iplog` VALUES ('1481', '127.0.0.1', '0', '海燕南飞', '2017-08-12 21:18:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1482', '127.0.0.1', '0', '止水2012', '2017-08-12 21:55:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1483', '127.0.0.1', '0', '止水2012', '2017-08-12 21:56:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1484', '127.0.0.1', '0', '止水2012', '2017-08-12 22:08:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1485', '127.0.0.1', '0', '止水2012', '2017-08-12 22:09:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1486', '127.0.0.1', '0', '止水2012', '2017-08-12 22:10:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1487', '127.0.0.1', '0', '止水2012', '2017-08-12 22:14:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1488', '127.0.0.1', '0', '止水2012', '2017-08-12 22:19:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1489', '127.0.0.1', '0', '止水2012', '2017-08-12 22:32:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1490', '127.0.0.1', '0', '止水2012', '2017-08-13 19:37:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1491', '127.0.0.1', '0', '止水2012', '2017-08-13 20:44:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1492', '127.0.0.1', '0', '止水2012', '2017-08-13 21:17:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1493', '127.0.0.1', '0', '止水2012', '2017-08-13 21:21:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1494', '127.0.0.1', '0', '止水2012', '2017-08-13 21:25:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1495', '127.0.0.1', '0', '海燕南飞', '2017-08-13 21:53:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1496', '127.0.0.1', '0', '止水2012', '2017-08-14 20:30:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1497', '127.0.0.1', '0', '止水2012', '2017-08-14 20:56:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1498', '127.0.0.1', '0', '止水2012', '2017-08-14 20:56:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1499', '127.0.0.1', '0', '止水2012', '2017-08-14 21:12:10', '0', null, null);
INSERT INTO `iplog` VALUES ('1500', '127.0.0.1', '0', '止水2012', '2017-08-14 21:12:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1501', '127.0.0.1', '0', '止水2012', '2017-08-14 21:28:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1502', '127.0.0.1', '0', '止水2012', '2017-08-14 21:36:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1503', '127.0.0.1', '0', '止水2012', '2017-08-15 20:01:39', '0', null, null);
INSERT INTO `iplog` VALUES ('1504', '127.0.0.1', '0', '止水2012', '2017-08-15 20:31:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1505', '127.0.0.1', '0', '止水2012', '2017-08-15 20:47:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1506', '127.0.0.1', '0', '止水2012', '2017-08-15 20:47:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1507', '127.0.0.1', '0', '止水2012', '2017-08-15 20:47:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1508', '127.0.0.1', '0', '止水2012', '2017-08-15 21:13:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1509', '127.0.0.1', '0', '海燕南飞', '2017-08-15 21:14:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1510', '127.0.0.1', '0', '止水2012', '2017-08-15 21:26:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1511', '127.0.0.1', '0', '止水2012', '2017-08-15 21:28:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1512', '127.0.0.1', '0', '止水2012', '2017-08-15 21:36:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1513', '127.0.0.1', '0', '止水2012', '2017-08-16 20:47:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1514', '127.0.0.1', '0', '止水2012', '2017-08-16 20:56:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1515', '127.0.0.1', '0', '止水2012', '2017-08-16 21:07:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1516', '127.0.0.1', '0', '止水2012', '2017-08-16 21:31:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1517', '127.0.0.1', '0', '止水2012', '2017-08-16 21:48:36', '0', null, null);
INSERT INTO `iplog` VALUES ('1518', '127.0.0.1', '0', '止水2012', '2017-08-16 21:50:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1519', '127.0.0.1', '0', '止水2012', '2017-08-17 20:20:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1520', '127.0.0.1', '0', '止水2012', '2017-08-17 20:32:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1521', '127.0.0.1', '0', '止水2012', '2017-08-17 20:33:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1522', '127.0.0.1', '0', '止水2012', '2017-08-17 20:45:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1523', '127.0.0.1', '0', '止水2012', '2017-08-17 20:45:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1524', '127.0.0.1', '0', '止水2012', '2017-08-17 20:47:31', '0', null, null);
INSERT INTO `iplog` VALUES ('1525', '127.0.0.1', '0', '止水2012', '2017-08-17 20:47:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1526', '127.0.0.1', '0', '止水2012', '2017-08-17 20:55:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1527', '127.0.0.1', '0', '止水2012', '2017-08-17 20:55:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1528', '127.0.0.1', '0', '止水2012', '2017-08-17 21:34:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1529', '127.0.0.1', '0', '止水2012', '2017-08-17 21:39:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1530', '127.0.0.1', '0', '止水2012', '2017-08-17 21:40:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1531', '127.0.0.1', '0', '止水2012', '2017-08-17 21:46:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1532', '127.0.0.1', '0', '止水2012', '2017-08-18 20:36:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1533', '127.0.0.1', '0', '止水2012', '2017-08-18 20:40:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1534', '127.0.0.1', '0', '止水2012', '2017-08-19 08:48:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1535', '127.0.0.1', '0', '止水2012', '2017-08-19 08:53:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1536', '127.0.0.1', '0', '止水2012', '2017-08-19 09:12:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1537', '127.0.0.1', '0', '止水2012', '2017-08-19 09:22:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1538', '127.0.0.1', '0', '止水2012', '2017-08-19 11:44:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1539', '127.0.0.1', '0', '止水2012', '2017-08-19 20:28:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1540', '127.0.0.1', '0', '止水2012', '2017-08-21 20:39:05', '0', null, null);
INSERT INTO `iplog` VALUES ('1541', '127.0.0.1', '0', '止水2012', '2017-08-21 20:54:16', '0', null, null);
INSERT INTO `iplog` VALUES ('1542', '127.0.0.1', '0', '止水2012', '2017-08-21 21:55:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1543', '127.0.0.1', '0', '止水2012', '2017-08-21 21:58:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1544', '127.0.0.1', '0', '止水2012', '2017-08-21 21:58:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1545', '127.0.0.1', '0', '海燕南飞', '2017-08-21 22:05:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1546', '127.0.0.1', '0', '止水2012', '2017-08-23 20:48:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1547', '127.0.0.1', '0', '止水2012', '2017-08-23 21:28:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1548', '127.0.0.1', '0', '止水2012', '2017-08-23 21:59:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1549', '127.0.0.1', '0', '止水2012', '2017-08-23 22:01:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1550', '127.0.0.1', '0', '止水2012', '2017-08-24 21:11:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1551', '127.0.0.1', '0', '止水2012', '2017-08-25 21:16:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1552', '127.0.0.1', '0', '止水2012', '2017-08-25 21:59:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1553', '127.0.0.1', '0', '止水2012', '2017-08-25 22:15:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1554', '127.0.0.1', '0', '止水2012', '2017-08-25 22:23:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1555', '127.0.0.1', '0', '止水2012', '2017-08-25 22:35:56', '0', null, null);
INSERT INTO `iplog` VALUES ('1556', '127.0.0.1', '0', '止水2012', '2017-08-25 22:44:37', '0', null, null);
INSERT INTO `iplog` VALUES ('1557', '127.0.0.1', '0', '止水2012', '2017-08-25 22:47:11', '0', null, null);
INSERT INTO `iplog` VALUES ('1558', '127.0.0.1', '0', '止水2012', '2017-08-25 22:47:13', '0', null, null);
INSERT INTO `iplog` VALUES ('1559', '127.0.0.1', '0', '止水2012', '2017-08-25 22:49:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1560', '127.0.0.1', '0', '止水2012', '2017-08-25 22:50:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1561', '127.0.0.1', '0', '止水2012', '2017-08-25 23:07:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1562', '127.0.0.1', '0', '海燕南飞', '2017-08-25 23:15:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1563', '127.0.0.1', '0', '止水2012', '2017-08-25 23:25:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1564', '127.0.0.1', '0', '止水2012', '2017-08-25 23:32:29', '0', null, null);
INSERT INTO `iplog` VALUES ('1565', '127.0.0.1', '0', '海燕南飞', '2017-08-25 23:40:45', '0', null, null);
INSERT INTO `iplog` VALUES ('1566', '127.0.0.1', '0', '止水2012', '2017-08-26 08:09:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1567', '127.0.0.1', '0', '海燕南飞', '2017-08-26 08:09:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1568', '127.0.0.1', '0', '止水2012', '2017-08-26 08:13:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1569', '127.0.0.1', '0', '海燕南飞', '2017-08-26 08:13:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1570', '127.0.0.1', '0', '止水2012', '2017-08-26 08:23:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1571', '127.0.0.1', '0', '止水2012', '2017-08-26 15:20:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1572', '127.0.0.1', '0', '海燕南飞', '2017-08-26 15:21:21', '0', null, null);
INSERT INTO `iplog` VALUES ('1573', '127.0.0.1', '0', '止水2012', '2017-08-26 15:30:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1574', '127.0.0.1', '0', '海燕南飞', '2017-08-26 15:30:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1575', '127.0.0.1', '0', '止水2012', '2017-08-26 16:07:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1576', '127.0.0.1', '0', '止水2012', '2017-08-26 16:08:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1577', '127.0.0.1', '0', '止水2012', '2017-08-26 16:12:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1578', '127.0.0.1', '0', '止水2012', '2017-08-26 16:12:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1579', '127.0.0.1', '0', '止水2012', '2017-08-26 16:28:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1580', '127.0.0.1', '0', '止水2012', '2017-08-26 19:23:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1581', '127.0.0.1', '0', '止水2012', '2017-08-26 19:30:09', '0', null, null);
INSERT INTO `iplog` VALUES ('1582', '127.0.0.1', '0', '止水2012', '2017-08-26 19:32:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1583', '127.0.0.1', '0', '止水2012', '2017-08-26 19:33:04', '0', null, null);
INSERT INTO `iplog` VALUES ('1584', '127.0.0.1', '0', '止水2012', '2017-08-26 19:37:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1585', '127.0.0.1', '0', '止水2012', '2017-08-26 19:37:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1586', '127.0.0.1', '0', '止水2012', '2017-08-26 19:40:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1587', '127.0.0.1', '0', '止水2012', '2017-08-26 20:02:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1588', '127.0.0.1', '0', '止水2012', '2017-08-26 20:02:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1589', '127.0.0.1', '0', '止水2012', '2017-08-26 20:57:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1590', '127.0.0.1', '0', '止水2012', '2017-08-26 21:17:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1591', '127.0.0.1', '0', '止水2012', '2017-08-26 21:18:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1592', '127.0.0.1', '0', '止水2012', '2017-08-26 21:41:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1593', '127.0.0.1', '0', '止水2012', '2017-08-26 22:01:51', '0', null, null);
INSERT INTO `iplog` VALUES ('1594', '127.0.0.1', '0', '止水2012', '2017-08-26 23:42:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1595', '127.0.0.1', '0', '止水2012', '2017-08-27 08:58:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1596', '127.0.0.1', '0', '止水2012', '2017-08-27 10:01:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1597', '127.0.0.1', '0', '止水2012', '2017-08-27 10:08:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1598', '127.0.0.1', '0', '止水2012', '2017-08-27 10:15:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1599', '127.0.0.1', '0', '止水2012', '2017-08-27 10:22:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1600', '127.0.0.1', '0', '止水2012', '2017-08-27 10:28:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1601', '127.0.0.1', '0', '止水2012', '2017-08-27 10:28:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1602', '127.0.0.1', '0', '止水2012', '2017-08-27 11:00:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1603', '127.0.0.1', '0', '止水2012', '2017-08-27 11:05:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1604', '127.0.0.1', '0', '止水2012', '2017-08-27 11:05:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1605', '127.0.0.1', '0', '止水2012', '2017-08-27 12:39:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1606', '127.0.0.1', '0', '止水2012', '2017-08-27 12:39:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1607', '127.0.0.1', '0', '止水2012', '2017-08-27 13:43:35', '0', null, null);
INSERT INTO `iplog` VALUES ('1608', '127.0.0.1', '0', '止水2012', '2017-08-27 20:48:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1609', '127.0.0.1', '0', '止水2012', '2017-08-27 20:51:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1610', '127.0.0.1', '0', '止水2012', '2017-08-27 21:03:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1611', '127.0.0.1', '0', '止水2012', '2017-08-27 21:26:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1612', '127.0.0.1', '0', '止水2012', '2017-08-27 21:47:18', '0', null, null);
INSERT INTO `iplog` VALUES ('1613', '127.0.0.1', '0', '止水2012', '2017-08-27 21:52:23', '0', null, null);
INSERT INTO `iplog` VALUES ('1614', '127.0.0.1', '0', '止水2012', '2017-08-27 21:53:48', '0', null, null);
INSERT INTO `iplog` VALUES ('1615', '127.0.0.1', '0', '止水2012', '2017-08-27 22:24:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1616', '127.0.0.1', '0', '止水2012', '2017-08-27 22:24:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1617', '127.0.0.1', '0', '止水2012', '2017-08-28 21:04:24', '0', null, null);
INSERT INTO `iplog` VALUES ('1618', '127.0.0.1', '0', '止水2012', '2017-08-28 21:19:26', '0', null, null);
INSERT INTO `iplog` VALUES ('1619', '127.0.0.1', '0', '止水2012', '2017-08-28 21:19:50', '0', null, null);
INSERT INTO `iplog` VALUES ('1620', '127.0.0.1', '0', '止水2012', '2017-08-28 21:25:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1621', '127.0.0.1', '0', '止水2012', '2017-08-28 21:33:30', '0', null, null);
INSERT INTO `iplog` VALUES ('1622', '127.0.0.1', '0', '止水2012', '2017-08-28 21:35:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1623', '127.0.0.1', '0', '止水2012', '2017-08-28 21:42:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1624', '127.0.0.1', '0', '止水2012', '2017-08-30 20:31:06', '0', null, null);
INSERT INTO `iplog` VALUES ('1625', '127.0.0.1', '0', '止水2012', '2017-08-30 20:46:02', '0', null, null);
INSERT INTO `iplog` VALUES ('1626', '127.0.0.1', '0', '止水2012', '2017-08-30 20:51:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1627', '127.0.0.1', '0', '止水2012', '2017-08-30 20:55:25', '0', null, null);
INSERT INTO `iplog` VALUES ('1628', '127.0.0.1', '0', '止水2012', '2017-08-30 20:55:42', '0', null, null);
INSERT INTO `iplog` VALUES ('1629', '127.0.0.1', '0', '止水2012', '2017-08-30 20:57:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1630', '127.0.0.1', '0', '止水2012', '2017-08-30 21:01:20', '0', null, null);
INSERT INTO `iplog` VALUES ('1631', '127.0.0.1', '0', '止水2012', '2017-08-30 21:28:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1632', '127.0.0.1', '0', '止水2012', '2017-08-30 21:31:33', '0', null, null);
INSERT INTO `iplog` VALUES ('1633', '127.0.0.1', '0', '止水2012', '2017-08-30 21:43:44', '0', null, null);
INSERT INTO `iplog` VALUES ('1634', '127.0.0.1', '0', '止水2012', '2017-08-30 21:44:28', '0', null, null);
INSERT INTO `iplog` VALUES ('1635', '127.0.0.1', '0', '止水2012', '2017-08-30 21:50:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1636', '127.0.0.1', '0', '止水2012', '2017-08-30 21:51:53', '0', null, null);
INSERT INTO `iplog` VALUES ('1637', '127.0.0.1', '0', '止水2012', '2017-08-30 21:55:07', '0', null, null);
INSERT INTO `iplog` VALUES ('1638', '127.0.0.1', '0', '止水2012', '2017-08-30 21:56:55', '0', null, null);
INSERT INTO `iplog` VALUES ('1639', '127.0.0.1', '0', '止水2012', '2017-08-30 22:13:43', '0', null, null);
INSERT INTO `iplog` VALUES ('1640', '127.0.0.1', '0', '止水2012', '2017-08-30 22:14:12', '0', null, null);
INSERT INTO `iplog` VALUES ('1641', '127.0.0.1', '0', '止水2012', '2017-08-30 22:16:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1642', '127.0.0.1', '0', '止水2012', '2017-08-30 22:18:17', '0', null, null);
INSERT INTO `iplog` VALUES ('1643', '127.0.0.1', '0', '止水2012', '2017-08-30 22:20:22', '0', null, null);
INSERT INTO `iplog` VALUES ('1644', '127.0.0.1', '0', '止水2012', '2017-08-30 22:32:27', '0', null, null);
INSERT INTO `iplog` VALUES ('1645', '127.0.0.1', '0', '止水2012', '2017-08-30 22:33:46', '0', null, null);
INSERT INTO `iplog` VALUES ('1646', '127.0.0.1', '0', '止水2012', '2017-08-30 22:34:49', '0', null, null);
INSERT INTO `iplog` VALUES ('1647', '127.0.0.1', '0', '止水2012', '2017-08-30 22:46:08', '0', null, null);
INSERT INTO `iplog` VALUES ('1648', '127.0.0.1', '0', '止水2012', '2017-08-30 22:48:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1649', '127.0.0.1', '0', '止水2012', '2017-08-30 22:50:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1650', '127.0.0.1', '0', '止水2012', '2017-08-30 22:54:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1651', '127.0.0.1', '0', '止水2012', '2017-08-31 21:10:00', '0', null, null);
INSERT INTO `iplog` VALUES ('1652', '127.0.0.1', '0', '止水2012', '2017-08-31 21:36:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1653', '127.0.0.1', '0', '止水2012', '2017-08-31 21:44:32', '0', null, null);
INSERT INTO `iplog` VALUES ('1654', '127.0.0.1', '0', '止水2012', '2017-08-31 21:47:19', '0', null, null);
INSERT INTO `iplog` VALUES ('1655', '127.0.0.1', '0', '止水2012', '2017-08-31 21:48:01', '0', null, null);
INSERT INTO `iplog` VALUES ('1656', '127.0.0.1', '0', '止水2012', '2017-08-31 21:50:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1657', '127.0.0.1', '0', '止水2012', '2017-08-31 21:52:03', '0', null, null);
INSERT INTO `iplog` VALUES ('1658', '127.0.0.1', '0', '止水2012', '2017-08-31 21:54:41', '0', null, null);
INSERT INTO `iplog` VALUES ('1659', '127.0.0.1', '0', '止水2012', '2017-08-31 21:56:34', '0', null, null);
INSERT INTO `iplog` VALUES ('1660', '127.0.0.1', '0', '止水2012', '2017-08-31 21:57:38', '0', null, null);
INSERT INTO `iplog` VALUES ('1661', '127.0.0.1', '0', '止水2012', '2017-08-31 22:00:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1662', '127.0.0.1', '0', '止水2012', '2017-08-31 22:01:52', '0', null, null);
INSERT INTO `iplog` VALUES ('1663', '127.0.0.1', '0', '止水2012', '2017-08-31 22:24:14', '0', null, null);
INSERT INTO `iplog` VALUES ('1664', '127.0.0.1', '0', '止水2012', '2017-08-31 22:37:57', '0', null, null);
INSERT INTO `iplog` VALUES ('1665', '127.0.0.1', '0', '止水2012', '2017-09-01 21:40:59', '0', null, null);
INSERT INTO `iplog` VALUES ('1666', '127.0.0.1', '0', '止水2012', '2017-09-01 21:41:40', '0', null, null);
INSERT INTO `iplog` VALUES ('1667', '127.0.0.1', '0', '止水2012', '2017-09-01 21:43:15', '0', null, null);
INSERT INTO `iplog` VALUES ('1668', '127.0.0.1', '0', '止水2012', '2017-09-01 21:46:58', '0', null, null);
INSERT INTO `iplog` VALUES ('1669', '127.0.0.1', '0', '止水2012', '2017-09-01 21:52:36', '0', null, null);

-- ----------------------------
-- Table structure for `joke`
-- ----------------------------
DROP TABLE IF EXISTS `joke`;
CREATE TABLE `joke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `publishTime` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1542 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of joke
-- ----------------------------
INSERT INTO `joke` VALUES ('1520', '', null, null, '牛掰的小蘑菇', '2017-07-17T20:11:20.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/fa20c1016e7082378288d7e2d542b947x249x139x3697.gif');
INSERT INTO `joke` VALUES ('1521', '', null, null, '始于心动,终于白首', '2017-07-17T20:11:32.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/df44e8beb63fe5b02ade997985e91b45x640x480x48.jpeg');
INSERT INTO `joke` VALUES ('1522', '', null, null, '执着的祖蓝', '2017-07-17T20:11:43.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/2f080802c085d24e350cfb0f34d34aaax640x820x50.jpeg');
INSERT INTO `joke` VALUES ('1523', '', null, null, '你与氧气平起平坐', '2017-07-17T20:12:22.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/91978b47ca638a2b93b7ba77097f1857x640x702x82.jpeg');
INSERT INTO `joke` VALUES ('1524', '竟无言以对', null, null, '落叶似秋', '2017-07-17T09:05:55.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/ecfacdf1155a9e8c4ca27df5719b6771x378x642x130.png');
INSERT INTO `joke` VALUES ('1525', '奇友们我有没有希望爱你', null, null, '白兔', '2017-07-17T08:10:29.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/236872ded914f05d34dc2d2e48d1a26ex500x888x88.jpeg');
INSERT INTO `joke` VALUES ('1526', '当你妈在别人面前提起你的时候', null, null, '彼岸花开开彼岸', '2017-07-17T07:33:20.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/d53cd0770bf6e567a41cd8c6e885736ex690x500x34.jpeg');
INSERT INTO `joke` VALUES ('1527', '大师就是大师我竟无言以对', null, null, '(｡･ω･｡)ﾉ♡', '2017-07-17T07:42:30.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/fd30133bfe0575acb4dac8dc059eef22x295x206x2096.gif');
INSERT INTO `joke` VALUES ('1528', '去你妈的篮球梦', null, null, '静夜思', '2017-07-17T07:17:46.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/af124c821a97cd22aaaad4ae9c691990x179x116x227.gif');
INSERT INTO `joke` VALUES ('1529', '长这么大唯一跟女孩子的合照', null, null, '名字，', '2017-07-17T09:03:41.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/668c938ca84fbe826f2cf24a1d43ca33x811x500x38.jpeg');
INSERT INTO `joke` VALUES ('1530', '第一次发给过吧', null, null, '钱多多', '2017-07-17T09:15:54.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/23abf0435be2bd961e0cf2eb6841d009x500x888x24.png');
INSERT INTO `joke` VALUES ('1531', '这条裤子确实不一样', null, null, 'backyard hunter', '2017-07-17T10:57:40.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/61d446e1dd39f86f5fff0260d0274b11x417x1550x89.jpeg');
INSERT INTO `joke` VALUES ('1532', '仰望那份遥远的美丽', null, null, '638330006', '2017-07-17T09:26:20.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/6e09322c5a386e38a06b4b8c42f9cb8bx539x500x54.jpeg');
INSERT INTO `joke` VALUES ('1533', '本人男单身在打排位右边坐下一个大概多岁胖子身材跟虫叔似的他也打嚎哭深渊技术一个渣心里小嘲笑我连胜很开心兑换奖励准备看场比赛视屏回家那哥们儿还在打这时来了个女的长得还可以也很高挑手里提着饭盒放桌上拿出吃的男的边打边喂他吃饭了不说了我妈喊我回家吃饭', null, null, '奇友2hqsK', '2017-07-17T08:07:11.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/caea7ec76d17477068c8fc08f9c8be3fx150x150x5.jpeg');
INSERT INTO `joke` VALUES ('1534', '买家秀', null, null, 'backyard hunter', '2017-07-17T10:47:04.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/43221f3db6a3c8dc4730c5e39bda2a6cx417x560x37.jpeg');
INSERT INTO `joke` VALUES ('1535', '这酸爽不敢相信', null, null, '老不死', '2017-07-17T10:03:27.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/b54c6dec19675984bf07861fcaf1441ax495x600x34.jpeg');
INSERT INTO `joke` VALUES ('1536', '这个故事告诉我们身残志也不用坚只要长了一张好看的脸美女就会自己来的', null, null, '老不死', '2017-07-17T10:08:12.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/40bbae9a12f1e9ff161206083b2cb269x500x552x36.jpeg');
INSERT INTO `joke` VALUES ('1537', '汤姆女主人揭秘', null, null, '总是不以为然', '2017-07-17T10:56:55.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/634b020cd3a37a866088c218014619ccx720x480x28.jpeg');
INSERT INTO `joke` VALUES ('1538', '小矛又来啦', null, null, '问苍茫大牛', '2017-07-17T10:14:08.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/2bcb374ac25a428ae6484b897c3c2fa4x500x4166x165.jpeg');
INSERT INTO `joke` VALUES ('1539', '没有五个字', null, null, 'one', '2017-07-17T10:44:52.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/cb7dd7510ba432aefe02cf2e83922cccx639x303x40.png');
INSERT INTO `joke` VALUES ('1540', '这蛇确定是非洲的了', null, null, '尼玛币', '2017-07-17T10:02:21.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/e47b8249343077b4980bb86c14cf611cx160x200x2860.gif');
INSERT INTO `joke` VALUES ('1541', '幸福来得太突然有点承受不住', null, null, '老不死', '2017-07-17T10:03:09.000+0800', 'http://image.uc.cn/s/nav/g/qiqu/2015/d899fa7181772bf11e3538721ca7eb51x300x370x1884.gif');

-- ----------------------------
-- Table structure for `logininfo`
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `userType` tinyint(4) DEFAULT NULL,
  `headImages` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logininfo
-- ----------------------------
INSERT INTO `logininfo` VALUES ('54', '止水2012', 'B59C67BF196A4758191E42F76670CEBA', '0', '0', '/upload/577355597516.jpg');
INSERT INTO `logininfo` VALUES ('55', 'admin', 'B59C67BF196A4758191E42F76670CEBA', '0', '1', '/upload/b1c37876-3d7e-4b16-aea9-fc6399a3b6fc.jpg');
INSERT INTO `logininfo` VALUES ('56', '海燕南飞', 'B59C67BF196A4758191E42F76670CEBA', '0', '0', '/upload/741912663481.jpg');
INSERT INTO `logininfo` VALUES ('66', '你好明天', 'B59C67BF196A4758191E42F76670CEBA', '0', '0', '/upload/b1c37876-3d7e-4b16-aea9-fc6399a3b6fc.jpg');

-- ----------------------------
-- Table structure for `popular`
-- ----------------------------
DROP TABLE IF EXISTS `popular`;
CREATE TABLE `popular` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `publishTime` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1296 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of popular
-- ----------------------------
INSERT INTO `popular` VALUES ('1279', '北京一“共享床铺”关门停业 管理人员称被警方查封', '核心提示：近日，“共享床铺”刷爆朋友圈，引来大批媒体报道、体验者尝鲜。7月15日，记者发现北京一共享床铺大门紧闭，并未营业，一自称为该区域办公人员的男子称，共享床铺已被警方查封，具体原因尚不得知。近日，“共享床铺”刷爆朋友圈，引来大批媒体报道、体验者尝鲜。7月15日，记者发现北京一共享床铺大门紧闭，并未营业，一自称为该区域办公人员的男子称，共享床铺已被警方查封，具体原因尚不得知。7月15日上午，记者在中关村中钢国际广场创业公社的一处“享睡空间”看到，本该是“用舱”高峰期的“享睡空间”却大门紧闭。记者透过玻璃门看到，一间不到15平米的小屋子里，上下摆放了3组6张类似“太空舱”的床铺。据了解，太空舱提供24小时服务，此时高峰期的“享睡空间”不仅没有工作人员，体验者过来也是扑了个空，有人转而来到位于中关村e世界的“享睡空间”。记者来到这里时，已有一名体验者“睡”在太空舱里。据观察，太空舱内有电扇、阅读灯、充电插座等设施，不大的太空舱，仅容一人休息，关上舱门，体验者也可以真切的听到舱外的声音，隔音效果有待提高。就在记者采访过程中，一对情侣赶来体验，躺进一个太空舱。此时另一位“睡饱”的体验者爬出舱门，接受了记者的采访。据了解，类似的“太空舱”，在北京、上海、成都等地已经逐渐铺开。至于北京市中关村中钢国际广场创业公社的“享睡空间”被查封原因尚不得知。 （编辑：韩展  施荔）', 'http://www.toutiao.com/group/6442997390383071490/', '看看新闻', '2017-07-16 17:31:08', 'http://p3.pstatp.com/list/190x124/2f88000dcfb604e5bb3f');
INSERT INTO `popular` VALUES ('1280', '马云家的同学聚会，不一样的感觉，不一样的理解，看站位！', '马云最便宜的车都三百万，曾看不起他同学如今还真有点势力马云在以前读书的时候因为自己的长相的原因，曾被同学耻笑过。因为马云学校离家比较近，每天放学以后就回家乖乖的做作业。马云那时候的马云不仅长相不是那么出众，只会乖乖的读书。在班上并没有什么存在感，连合影都在最后一排的最边上。早期马云在和一群熟悉的同学们找昔日的老师合影，马云无一例外的站在了最边上了。看来马云读书的时候并不是同学们的焦点人物。哪个是马云在这张合影里大家有看到马云在位置吗？来来来，花上30秒大家能找出来吗？依然是在第二排左边的第二个位置。找马云之前马云在参加同学聚会的时候，为了顾及到大家的面子，特意开了一辆他最便宜的车（但是依然是三百多万）去参加。最便宜的车但是这回马云的待遇可不一样了。不仅刚下车的时候有人来车前迎接，在同学大合影时马云终于站到了最中间最前面的位置。看站位', 'http://www.toutiao.com/group/6441700348981002497/', '搞科技', '2017-07-16 16:31:53', 'http://p9.pstatp.com/list/190x124/2ebc00043231244ef845');
INSERT INTO `popular` VALUES ('1281', '15款高科技，款款都亮眼！', '▼1.随着地铁进站，产生互动的广告2.闭着眼也能拉的拉链3.靠体温运作的电风扇4.GPS跟踪摄影飞行器5.能够告诉你角度的尺6.会爬楼梯的轮椅7.会自动帮你加强准度的垃圾桶8.冰淇淋盖上的演奏会9.随身携带的单行印表机10.用声音控制沙子11.替你写下时间的机器人12.移植树木专用的挖土机13.上锁后，会自动变成不透明的玻璃门14.能够即时翻译的app（好想知道可以翻译成中文吗？）15.相机平衡器------------今天的内容到这里就结束了，更多有价值的内容尽在www.d6sk.com（大牛数控社区），欢迎大家留言提出意见和建议，牛牛（cncbaby1）会努力做好内容干货分享给大家，笔芯~-End-', 'http://www.toutiao.com/group/6434728592207823106/', '大牛数控网', '2017-07-16 16:31:58', 'http://p3.pstatp.com/list/190x124/2a350001422b75476710');
INSERT INTO `popular` VALUES ('1282', '15个月后，直播的泡沫破了｜36氪深度', '文 | 方婷 闫浩编辑 | 杨轩 “大哥你杀进去干嘛呢？”每当有朋友打算带着钱冲进移动直播的风口大干一番时，来疯CEO张宏涛的第一反应是不解，正如别人不理解他为什么对一个显而易见的风口表现得如此保守一样。如今，他们终于可以理解了。仅仅火了一年，这个行业就由热到发烫转为危机四伏了。增长已经放缓，眼下它陷入了集体悲观，数以千计的直播平台进入了盘整期。前投资人、现熊猫直播副总裁的庄明浩说，对很多排名靠后的直播公司来说，这场战役它们不过打了半年一年，市场就已经进入最后一局。那些辛苦走到头部的直播平台，日子也不好过。直播行业第一只独角兽映客，正打算将50%以上股份卖给本土公关公司宣亚——根据QuestMobile2017年夏季报告，直播行业中独立APP的用户总规模持续下滑。假如看猎豹移动智库的数据，对比去年10月的高点，那条数据线跌得更加触目惊心。“千播大战”下，根据公开数据统计，在几大头部直播平台上，累计参与的主播规模已超过350万人。但随着直播风口的结束，主播也在一点点褪去色彩。2016年，主播身价是直播风口的重要一环。三年身价过亿，像挖球员那样挖主播的新闻屡见不鲜。但进入2017年，看到最多的新闻却是斗鱼、王思聪被主播讨薪。主播的整体收入增长依然在延续，但通过直播造富，终归只是这个行业金字塔尖的传说。根据今日网红对映客、花椒、一直播三家泛娱乐平台主播的收入统计，从2016年10月到2017年5月，除去去年底及4月份平台周年庆带来的波动，头部主播的整体收入增速也在不断放缓。数据来源：今日网红警报早在年初就已经拉响，估值5亿的光圈因资金流断裂而倒闭，随之付诸流水的还有三家机构投给它的1250万元。“一大帮不明就里的，觉得自己可以捞一把的，实际也没有多少资源，杀进来之后发现，唉呀原来直播挺不好做的。”张宏涛采用了一个相对温和的评价，直播2017年正在“趋于理性”。站在局外人的角度来看，泡沫正在迅速瓦解。这是去年与共享单车相提并论、仅有的两个风口之一。每月都能传出好几笔融资消息，同一个直播平台，估值在6个月内可以翻上10倍甚至20倍。就算没有融资，用户打赏、平台分成的现金流模式，也让直播看上去像是躺着都能挣钱的生意。就连债务缠身的乐视，也曾想从直播里分得一杯羹。有关键人士对36氪称，2016年夏天，王思聪任CEO的熊猫直播进行数千万元A轮融资，乐视是领投方，却匮于资金困境，半年之后投资款都无法到帐。这导致熊猫直播在2016年年底，花了两三个月时间将乐视清出投资方名单之后，才得以开启B轮融资。而现在，“大家都在熬着，”一位直播平台高管告诉36氪，尽管他所在的平台刚完成一大笔融资。映客、花椒等社交类直播平台仍然在赚钱，但它们必须面临用户褪去新鲜感，收入增速放缓的现实。斗鱼、熊猫等内容类直播手握大量粘性更强的用户，但也得削尖了脑袋购买头部内容。而视频网站的先例已经证明，扶持头部内容，也就意味很长一段时间内补不上的亏损窟窿。独立的直播网站难以生存，要么转型，要么找个上市公司体系做靠山……总之，时局变了。1个亿，要不要砸出去？砸得算多还是算少？值不值当？这些问题，在直播行业发展的不同时段，有截然不同的答案。2017年4月，1个亿刚好够映客在平台内举办一场樱花女神大赛。2016年6月，1个亿是虎牙签下游戏主播安德罗妮夫妇三年的花费。再回过头看2016年春节，映客作出的决定——1个亿，一分不留，全砸到湖南卫视、江苏卫视、优酷、爱奇艺、腾讯视频和院线广告上去——显得无比划算。它的特殊性在于，直播一向处于灰色地带，之前还没有直播平台在线下大规模投放广告。这波广告攻势为映客拉来了对直播感到好奇的素人主播和新用户。随之而来的，是一条陡峭的上涨曲线。2016年春节前、上线不到一年的映客，DAU勉强达到100万，在创业公司中已经算是表现上佳。2016年6月之前，映客就达成了500万DAU，这被认为若是腾讯、阿里等巨头进场，创业公司必须准备好的底牌。“映客其实做了一个非常大的行业贡献，它完成了主播这个概念的普及，普通人也可以做。主播不是一个见不得人的职业，而是一件很潮的事。”一直播负责人、一下科技高级副总裁雷涛对36氪说，这让“行业升级，内容洗白。”在2016年春节时，映客CEO奉佑生几乎是被昆仑万维的周亚辉、紫辉创投的郑刚等投资人催着做出这个决定。1亿是当时映客账面上所有的现金，虽然映客由于打赏一个月有300万收入，据此计算这相当于映客3年的收入。周亚辉的理由是，移动互联网窗口期以月来计算，如果不抓住这波机会，映客很有可能像雷军当初的米聊一样，被微信反超。映客崛起时，市面上主流的直播产品基本都集中在PC端，以靠打赏支撑起来的秀场直播，以及靠优质稳定的内容支撑起来的游戏直播为代表，其余品类的直播，要不然是没人看，要不然就是付费率低，更别提广告的价值了。自有流量的大厂还在耕耘PC端秀场直播，并且保持着闷声发财的传统。百度做了包括秀吧、九秀在内的四款直播，网易做了网易CC和网易BoBo，腾讯旗下也有QT直播间。“只要有流量，有技术团队能够让平台开播，不用运营都能挣到钱。”一位负责直播运营的网易前员工告诉36氪，2015年前后，网易直播业务的月流水就有七八千万元。但直播不是这些大公司的主营业务，没人想着进行什么变革。至于老牌秀场9158的母公司天鸽互动，自从2014年港交所上市后，表现平平，2015年的总收入比去年同期还少了2.1%。YY投入7个亿布局虎牙直播，但尚未得到太大的影响力。成立了两年的斗鱼还没拿到腾讯的超1亿美元融资，王思聪的熊猫直播刚起步没多久。在映客的搅动下，那些没接触过直播的创业者们发现，直播特有的“打赏”模式见钱速度快，于是一拥而上。“2016 年的春节左右是 80 多家，到2016年4 月份的时候接近 500 家，到 2016 年年底的时候超过 1000 家。”战旗副总裁王昊曾列举直播大爆炸中涌入的平台数字。而这很可能只是不完全统计，有大量圈住一小拨用户，打色情擦边球的直播平台隐藏在应用商店里，不断地跟监管政策打游击战，通过“换皮”，下架又上架。风险投资机构们也看中了PC直播向移动直播转移的时间窗口，考虑到移动设备的普及、摄像美颜基数的提高、以及流量资费下降等这些客观条件，纷纷押宝在移动端的新直播场景——也就是所谓泛娱乐的直播上。在大小投资方的支持下，这些直播平台买流量、投广告、签主播，合力挖掘出潜在的移动直播用户。根据中国互联网络信息中心（CNNIC）的报告，截至2016年12月，中国的直播用户达3.44亿，占网民总体47%。用户数起点相当于网络视频、网络文学积累了七八年的量。原来那些苦于无法变现的应用，也被直播释放出潜力。依靠直播，陌陌市值在今年达到历史最高点，相比低点暴涨8倍。同志社交软件Blued从2016年3月开始做直播，第二个月就实现了盈利，开启上线5年来一直没找到的商业化变现道路。就连音频也强调直播，原来做网络电台的荔枝FM，套上直播的概念，在喜马拉雅、蜻蜓FM的大平台压制下，重新找到自己的受众。一时之间，直播就像点石成金的配方，最好每家公司都非有不可。 但这种集体亢奋期，也就持续了半年，直到能洗的用户都被洗过一遍。2017年的互联网缺乏新风口，直播这个风口被过度开发，狂热之中，“直播”这项业务存在的本质缺陷，被掩盖了。3.44亿用户中的很大一部分，对直播并不那么感冒，他们被好奇心引导，来了又走，装了又卸。无论是映客强调的全民直播，还是花椒标榜的高颜值直播，抑或是一直播或者来疯，在运行一段时间之后，都像是秀场直播的升级版。所谓的才艺型或者陪伴型的职业主播占了主要的推荐位，除了少数与主播沉淀下关系的忠实用户，大部分用户并不会因为他们而停留。“直播的时间太长，信息密度被冲淡了，但信息的传播其实是依赖于很高的信息度和传播性的，这两点直播都比较弱。它天然就不具备内容的扩展性。”一直播负责人雷涛认为，这使得直播很难靠自身内容的扩散自发获得用户，因此不得不花钱买流量。一直播的优势在于，背靠微博，有天然的流量来源。在Quest Mobile的最新报告里，它的月度活跃用户达到5900万。 “谢谢宝宝们。”“宝宝们送主播星光值吧，反正免费的，送谁不是送。”“宝宝们点一下左上角的关注，主播下播后私信小礼物。”淘宝客服让“亲”成为流行词，主播们则让“宝宝”成了第二个通用称呼。如果打开手机看上一天直播间，这几句话你很可能会听见上千遍。“社交直播本质上是一种刺激性很强、但品质相对较差的内容，因为（主播）都在说一样的话。”光源资本创始合伙人、CEO郑烜乐说，直播内容很难让用户一直刷，得要其他内容留住用户。光源既是快手连续五轮融资的财务顾问，也是熊猫最新一轮融资的顾问。他将直播分为两类，一类是做内容的，比如斗鱼、熊猫、虎牙等，还有一类是做社交关系，比如说快手、陌陌、映客等。就算是容纳了MC天佑、二驴的等诸多红人主播的快手，也不愿将重点只维系在直播上，哪怕打赏是快手目前最主要的变现手段。在快手上，只有刷到夹杂在短视频信息流里的直播间，或者关注某个主播，才能够进入直播页面。如果内容没有吸引力，那么花大价钱买的、越来越贵的流量就打了水漂。但当大家为了留住用户而争抢内容时，又让头部主播和内容变得越来越贵。这点对以主播年薪签约为惯例的游戏平台作用尤其明显。有主播提到，在熊猫 TV 对斗鱼主播“动手”之前，他们的收入不算高，只有一两万元，抢人大战开始之后，这个数字直接翻了十倍以上。战旗直播CEO陈悠悠觉得2016年的抢人大战堪称疯狂，“比如说有一个主播，在我这里从 3000 块钱一个月开始培养。两年以后，年薪可以达到 50 万，但是在去年环境下就有新的平台给他开 5 倍以上，甚至 6 倍、10 倍的价格去挖他。”今年的游戏主播价格有所回落，不再像去年夏天那样疯狂，但动辄数千万的价格依然让战旗觉得“逆天”，因此很多时候只能选择“战略性放弃”。2016 年斗鱼直播的月活跃人数已经超过 2 亿，而陈悠悠在今年4月告诉 36 氪，战旗直播当时的MAU 大约是 6000 万。它错过了中国直播用户增长最快的生长期，与对手的差距越来越大。因为移动直播曾经带来的新鲜感，直播平台最开始不用担心流量来源。“当它们慢慢地开始同质化竞争，这时候大家又有流量获取的问题了。”郑烜乐说。直播就在这样的循环当中焦虑着。用户的留存率，成了直播平台当下最焦虑的问题。“最开始来的肯定就是对直播最感兴趣的，慢慢的水洗过一遍之后，你不停地再拉，再买，流量的质量就会变差，留存率又会降低。”陌陌CEO唐岩在接受不同媒体采访的时候，反复强调留存率才是这个行业的核心问题。15%，他给留存率划了一条生死线，超过这条线平台才能盈利。陌陌提升留存率依靠的是社区氛围，毕竟陌陌是从社交软件出发，然后指向直播。而那些主要场景是直播的平台，在2016年走得比其他人更快，但是在留存率的考验下，反而显得后劲不足。这也是为什么这个还能赚钱的行业，这么焦虑的原因。“第一阵营的独立（直播）公司已经被资本预支了未来一段时间的发展。”庄明浩说。“就是因为去年太火热了，拿了太多钱，压力太大。全行业拿了上百亿之后，当然定义不一样。其实我知道很多公司都还赚钱，没必要这么焦虑。”今日网红CEO彭超说。这家直播资源服务平台成立于2016年4月份，是最贴近这个行业的第三方之一。战旗这样有点根基的老牌直播还在转型之中。而更多的小直播，比如猫萌、蓝鲨、火星、爱闹、网聚，趣直播，咖喱直播、熊抓直播……几乎没有人听过他们的名字，它们带着无名投资方的天使投资，默默地停止版本更新，或者干脆下架。甚至没有人为它们哀悼。 一年时间中，要么完成惊险一跃，要么出局。据庄明浩估计，接下来的直播牌局，想要留在桌上有两个条件：10亿现金，没这个额度的钱未来根本没得打；500万DAU，没这个用户量级也没得玩。“在你们眼里的阿冷女神，在我眼里不就阿冷阿热的，没有区别。”唐岩在直播中生硬地回复网友，为什么陌陌头牌主播“这个少女不太冷”直播间被关闭的问题。在另一次直播中，他干脆挑明，平台跟阿冷在利益上谈不拢，而陌陌没打算太依赖某个主播。以唱歌出名的“阿冷”是陌陌直播上的传奇，排名长期在主播前三，收入堪比明星。在陌陌开播13个月，阿冷收入近1933万元。按照平台分成比例计算，她为陌陌带来的营收将近5000万。至于被封杀的原因，有说是因为阿冷签了公会，公会与陌陌谈不拢，也有说阿冷把粉丝往自己的微博导流。阿冷在退出陌陌之后，转头就与斗鱼签订了年度主播协议。反正陌陌不打算迁就某个主播。唐岩反复向外界强调，社交才是陌陌用户留存关键。如果能让用户之间形成社交关系，就有可能获得更稳定忠实、更不易随大主播流转的忠实用户。这也是泛娱乐生活直播App都想往社交转的原因。奉佑生甚至希望映客成为微博、微信之后的第三大社交软件。熊猫、斗鱼、来疯，几乎所有直播平台都上线了短视频，以及包含类似朋友圈动态的个人主页功能，但是目前除了活跃主播有靠主页维系粉丝的需求，其它路人用户的个人主页沉淀不了多少内容。对大多数直播平台来说，疯狂花钱买来的流量，并不具备让其如快手一般从杀时间的平台跃迁到社交平台的能力——普通人发直播，很可能5分钟都没有一个观众，直播一次后就没有动力了——一旦停止了买量，用户活跃度就下来了。但善于做精准匹配的快手，能招来内容的生产者，也能找到有忠诚度的看客。快手CEO宿华评判产品是否吸引人的方法，是在有亲戚朋友在场的情况下，打开快手，放在中间，不主动做介绍，看在场是否有人会主动将手机拿起来看，并且传递到下一个人手里。短视频承担了这一重任，成为快手的主要场景。而今日头条旗下的火山直播似乎也与快手所见略同，它并入火山小视频，直播只是一个模块。直播产品的故事又回到了原点。现在让直播平台活得好的内容，一类是秀场直播这种擦边球经济，挣粉丝打赏的钱，一类是游戏等主题明确、圈粉效应特别强的内容。移动直播产生的新场景，所谓的泛娱乐生活直播，被微博、陌陌、快手们一一瓜分走了。投资人仍然在往直播行业砸钱，不过，拿到钱的都是有用户“刚需”的游戏竞技类直播。过去两个月里，各大直播平台融资超过30亿元，熊猫、虎牙、花椒都拿到了钱。直播不再新鲜之后，“直播＋”概念出来了：直播＋教育／电商／医疗……但直播和各种垂直行业的结合，在PC时代没有引起多大反响，在移动直播时代依然如此。就像视频网站最后纷纷做自制节目一样，直播平台们都在大做综艺节目，试图把优质内容掌控在自己手里。张宏涛正用秀场直播的收入补贴综艺直播的收入。2016年，来疯做了50多档互动综艺节目，从秀场版块里挣得的钱，都被投入到直播综艺中，这导致来疯2016年整体亏损。2017年，他打算跟优酷那些头部综艺内容合作，用直播挖掘更多付费打赏可能。但投入最大的是那些内容属性的直播平台。从去年开始，熊猫和斗鱼都加大了对泛娱乐内容的投入，斗鱼与米未传媒合作了《饭局的诱惑》，熊猫与灿星共同出品了《小葱秀》——做头部IP从来都需要弹药充足。有投资人透露，为了布局泛娱乐，斗鱼去年亏损高达7亿。这个数字未获得斗鱼的证实。从广告的角度看，在同等流量及观看时间的条件下，直播形态的广告推广价值要比文字、图片等传统表达方式高很多。所以直播＋综艺，培养出自己的节目IP，成了从游戏直播平台到社交直播平台的共同目标。但这也是视频网站这几年深陷其中、一时半会儿还无法分出胜负的残酷战场。淘宝的直播，已经成为了它重要的卖货模式。大家普遍认为，这比图文导购的感染力要强得多。大部分用户为女性的映客，表示自己未来很可能让主播做服饰导购，以此作为重要的收入来源。平台的危机感也蔓延到依附于直播平台发展的那些公会身上。在去年一年里高歌猛进，扩招主播的公会也在转型。“线下找主播比以前更难了，他们可以选择的平台很多。最重要的是，很多人还没有正确认识直播这件事，没有轻松月薪过万，那心态就崩了。” 琴岛公会负责人刘臻说。琴岛从2016年3月开始尝试直播业务，通过与陌陌合作，将旗下一半以上的艺人转型为主播。在此之前，它是长沙知名的线下演出公司之一，集合二人转、相声、模仿秀、歌舞等表演形式。在转型最初，为了寻找主播，刘臻甚至试图说服长得漂亮的服务员也尝试直播。琴岛的业绩还在上扬，从2016年3月份涉足直播开始，琴岛的直播业务月收入就以30%-50％的速度在增长。但刘臻却知道直播很可能只是眼下的生意。正如琴岛去年把重心从线下转到线上一样，直播的红利期一过，琴岛的重心也很有可能从转移到网红经纪、短视频上，直播只是个跳板。“打赏这种模式的随机性和随意性我们很难去掌握它，主动权完全是掌握在用户身上的。”刘臻说，琴岛需要通过其它内容，来“提升用户的消费欲望和力度。”“个人觉得后期直播平台能真正让主播赚到钱的不到十家，而主播和公会的群体又越来越多，单我认识的旗下超过五千网红主播和艺人的公会就超过15家，不另辟蹊径真的会做得很累很辛苦。”PC时代就进入直播行业的前主播“初恋”，先后在腾讯、网易、百度做过运营经理，现在在帮一些朋友做主播培训。稍有实力的公会都在转型，将主播包装成有商务收入、有片约、通告的明星是终极目标。平台也各有动作，快手成立造星公司，希望通过大数据实现选星造星，还投拍了网剧。陌陌跟BMG、太合音乐、乐华音乐等合作，要给主播出唱片。主播离当明星最近的一次，是今年的戛纳电影节上，陌陌选送了三位主播走红毯。这场作秀为直播招致一片恶评。主播想要脱离直播间，仍然没有成功的先例。平台和公会想要在直播间之外谋求发展，也依然是难上加难。起码在现阶段，直播还是不可放弃的阵地。但琴岛开始鼓励主播们多制作短视频，虽然短视频暂时不能带来收入。但是，“听说是个风口，不管怎么样，先重视起来”。直播也迅速引起了监管部门的重视，相对2016年的“直播元年”，2017年是个直播“严年”。主管部门几乎是一月一查，就在上个月，文化部刚刚关停12家平台，处分了包括虎牙、YY、龙珠在内的30家知名平台。这是一个似曾相识的故事：资本和创业者快速抓住一个风口，以极高的热情、大把的金钱制造了用户量的爆发，经历急速挣钱和花钱，又受到政府强力监管——直播行业过去一年的速起速落，将变成一个又一个以年为计的新风口。繁荣过于短暂，以至于人们还没有参透剧情。（韩洪刚对此文亦有贡献）', 'http://www.toutiao.com/group/6442265325030555906/', '36氪', '2017-07-16 17:31:13', 'http://p1.pstatp.com/list/190x124/2dfd0004e18c9c16ca2c');
INSERT INTO `popular` VALUES ('1283', '不要老是盯着马云的钱，马云的这几张图简直亮瞎了我的眼，第一张霸气侧漏！', '说到中国现在哪个人物名字最响亮，哪个人物最牛，你可能第一个就会脱口而出的说出阿里巴巴“马云”马云为什么会给你这么深的印象呢？就是他那前无古人后无来者的创业经历，和他现在的财富不得已的成为了首富，还有他那被调侃为“外星人爸爸”的样子，再次证明了智慧完全与面貌无关！马云成为公众人物的他，其实是个非常幽默的人，每次的演讲都会逗乐大家，同时又能让对手无力反驳，只能尴尬了。大佬的霸气你永远学不会，连保镖都是深藏不露的，外形人爸爸就是帅，眼镜带掉了业无所谓，不心疼有的是钱！黄晓明完全漠视马云的存在，他们看不惯穿着随意瘦瘦小小的男人，看马云表情真是要发怒了，第二天直接买下了穿白色衣服男子的公司股权，外星人爸爸可不是好惹的!马云在姚明面前简直再次有力证明了“外星人爸爸”是神一样的存在啊，又黑有小，好像个孩子的感觉,这些可是再多钱都买不断的喔！再功夫巨星自己偶像李连杰面前，马云还是一个小小的粉丝的，看他眯眼的表情不知道你在幻想什么美好的场景，好享受的样子啊！都知道马云和赵薇关系很好，这张图也能看的出来，马总身穿正装，头型帅气整洁丝毫不怠慢自己，在美女面前肯定要保持美好形象了！马云都能同台把奥巴马逗得前俯后仰，龇牙咧嘴的笑起来，而且谈话过程中马云不由得成了主角了，奥巴马也得乖乖的听课！三大佬未成名前可以看出都是普通的人，一看就知道后面的大胡子是老大，貌似在威逼他们，大家一脸的咬牙切齿的不开心，忍忍吧，很快就坚持过来了!商业界的两个大佬相互怼，谁也不服谁，竞争是残酷的，但是这是社会下必有得趋势和产物！', 'http://www.toutiao.com/group/6437699907780018433/', '精彩视频观', '2017-07-16 17:31:03', 'http://p3.pstatp.com/list/190x124/2c260000ac9a374f7f9b');
INSERT INTO `popular` VALUES ('1284', '锤子的“大爆炸”功能把 iOS 开发者惹炸毛了，怎么回事？', '一名叫钟颖（Cyan）的开发者一则公开声明，又将锤子推上了风口浪尖。事情还要从锤子去年的新品发布会说起。当时在发布会，Big Bang（大爆炸）作为重磅功能被隆重推出：用拇指大面积按压屏幕中的文字后，被按住部分会“炸”开并被拆分成独立字词，方便用户重新编辑。这一项目已被锤子宣布开源。然而，很快有用户发现这与 iPhone 上一款名为 Pin 的应用的分词功能类似。Pin 是一款发布于 2015 年的剪切版工具，具有分词、文本截图、搜索、抓图等功能，去年入选了苹果年度十佳应用，爱范儿在《小小的剪贴板如何让你的 iPhone 发光发热 | 今日最佳》一文中亦有详细介绍，其开发者 Cyan 也曾应 App So 之邀讲述了Pin 背后的故事。事实上，早在去年 10 月锤子发布会后，钟颖本人在知乎“如何评价锤子科技发布会中演示的基于语义分析的「大爆炸」功能？”的回答中就谈到了对 Big Bang与 Pin 相似的看法：其实我觉得这事情比较逗，可能从形态上有点像吧，但是分词这个事情根本不新鲜，也谈不上创新。既然如此，为何在 Big Bang 推出 9 个月后，钟颖又站出来指责锤子有抄袭之嫌？事情的导火索是搜狗输入法 iOS 版在最近一次更新中加入了拆分选词功能，并表示这是借鉴了锤子的 Big Bang，以此向锤子科技致敬。锤子科技的产品总监朱萧木随后发了一条微博，称赞“帅死了”。这下钟颖不乐意了，他在声明中强调，自己并非是最早使用“分词”的人，但这确实是出自他的脑洞。他表示之前他对于 Big Bang 与 Pin 分词功能相似的问题一直采取回避态度，但锤子科技无视他们借鉴了 Pin 灵感的事实并心安理得地接受别人的赞誉，这着实惹怒了他。在声明中，钟颖贴出了锤子科技产品经理与他的微博私信截图，以证明锤子的 Big Bang 的确借鉴了 Pin 分词灵感。钟颖在声明的最后写道：我所要表达的，只是希望你们这些厚颜无耻之徒，在抄袭/借鉴的时候能保有一丝愧疚之心，而不是像这个某总监一种自豪感油然而生。在锤子科技未作出正式回应之前，其 CEO 罗永浩在微博倒是以刷屏之势对此事发表了一波评论，强调“Big Bang 是原创，没有效仿谁”。老罗顺带还怼了一下新浪科技驻美记者郑峻，后者以 Instagram 模仿了 Snapchat 的 stories 功能并在发布会上坦率承认并感谢对手为例，直言“效仿也不是不行，只是效仿者还说自己是原创大吹特吹”。老罗认为对方这类“弄错事实”的文章“常常对企业有实质性伤害”，并表示朱萧木会在晚些时候发布澄清稿：意识到自己错怪了我们，并愿意向我们道歉的媒体或个人，可以到这里留言认错，并诚恳地请求我们的原谅。7 月 15 日晚 22：46，朱萧木在微博上发表了长文对钟颖的指责作出了澄清。文中列举了 Google Docs 产品文档和微软的 Office 365 企业信箱的邮件作为证据，证明锤子的 Big Bang 创意早在 2014 年就已成型，早于 Pin 发布分词功能的 2015 年 11 月。对于钟颖所说的锤子产品经理王大年曾通过微博私信向他询问 Pin 算法一事，朱萧木的解释是当时锤子刚开始落实分词功能，只是向已经运用了此技术的产品作者打听而已，“正是因为我们觉得 Pin 和我们的产品是截然不同的两个东西，并且我们的创意是 2014 年就有了的，所以问得格外坦荡荡。”文章最后，朱萧木强调：这确实不是“抄袭”，甚至没有“借鉴”，没有“效仿”，没有“受启发”，这是一个完完全全的误会。“呵，再怎么说也要明天晚上再回应，才算是对对方节奏的尊重吧。 ”钟颖在随后更新的一条微博中写道。', 'http://www.toutiao.com/group/6443018137154879746/', '爱范儿', '2017-07-16 17:31:18', 'http://p3.pstatp.com/list/190x124/2f88000e1472a100b454');
INSERT INTO `popular` VALUES ('1285', '乐视汽车声明：贾跃亭“被富贵” 在美无私人房产', '雷帝网 乐天 7月16日报道就在昨日，一则关于贾跃亭700万美元在美国洛杉矶买豪宅的信息被披露出来，随后，更有自媒体披露，在这栋别墅所在的玛格丽特大道上，贾跃亭一口气买了5座别墅。今日，乐视汽车发布声明，称所谓贾跃亭私人房产，实为三年前乐视汽车在美国创业初期陆续购买，并不属于贾跃亭个人，而是乐视汽车生态美国洛杉矶驻美办兼接待办。乐视汽车还说，由于汽车研发制造需要大量资金，之前乐视汽车已把上述房产全部抵押，所有资金投入到汽车研发。“在此，乐视汽车感谢YT个人为乐视汽车生态所做的一切，也希望个别媒体不要将YT“被富贵”了。”就在日前，深创投华北大区总经理刘纲还发发朋友圈：Friday, Sunny, LA. 拜访FF研发总部，并与乐视控股创始人贾跃亭见面，参观FF研发全流程。乐视美国房产信息（雷帝网配图）乐视美国房产信息（雷帝网配图）当前，乐视生态正面临着资金链紧张状态，在此时曝出贾跃亭持有美国多处房产的信息，无疑会对贾跃亭和乐视都会造成很大影响，这也是乐视汽车快速澄清的一个重要原因。当然，当前的关键点是贾跃亭是否会在未来两周内回归国内，平息外界的质疑。乐视汽车声明：关于个别媒体把乐视汽车驻美办曲解为YT美国的家的声明：近日有媒体声称，YT在美国洛杉矶南部拥有多处所谓的“豪宅”作为私人住所，曲解上述房产用途并引导其他媒体和公众去误读，让YT被“富贵”，给YT和乐视造成了一定的舆论影响，特此澄清：1，媒体所提到的所谓YT私人房产，实为三年前乐视汽车在美国创业初期陆续购买，并不属于YT个人，而是乐视汽车生态美国洛杉矶驻美办兼接待办。此处临近乐视汽车研发总部，也是乐视汽车生态全球高管阶段性住所之一，为给全球非洛杉矶的汽车生态高管提供更好的生活居住条件。正因为乐视汽车初衷就立志扎根美国，立志为洛杉矶整合全球顶级人才资源、顶级技术资源，以此推动真正具有变革性的完全自主研发的产品。2，上述房产也是乐视汽车中国高管来美出差和常驻的乐视汽车员工住所，因工作需要经常会有一二十名中国乐视高管轮流在LA工作，在节约出差成本的同时，也便于在美员工与国内的协同工作，尤其是中美时差问题，中国白天是美国的晚上，通常都需要中美视频会议，此次也成为乐视汽车生态美国第二工作点和会议室。3，个别美国提到的所谓“这些房产主要为了TY家人从美国来度假”的说法更是无稽之谈，目前YT不仅没有在美国安家，也没有任何美国私人房产。YT自2013年到美国进行汽车创业以来，从未有任何家人到过此处度假居住，反而把全部个人资产都投入到乐视生态和乐视汽车的研发和运营当中。4，此外，由于汽车研发制造需要大量资金，之前乐视汽车已把上述房产全部抵押，所有资金全部投入到汽车研发当中。在此，乐视汽车感谢YT个人为乐视汽车生态所做的一切，也希望个别媒体不要将YT“被富贵”了。乐视汽车一切按照既定战略有序推进，希望媒体朋友们更多关注我们的技术和我们的产品。—————————————————雷帝触网由资深媒体人雷建平创办，其为头条签约作者，若转载请写明来源。', 'http://www.toutiao.com/group/6443237317352390913/', '雷帝触网', '2017-07-16 16:31:48', 'http://p1.pstatp.com/list/190x124/2eca0002d01881418405');
INSERT INTO `popular` VALUES ('1286', '你家都100M光纤了，为啥还会：卡得死去活来、欲仙欲死？', '“我家新拉的20/50/100M宽带（其实应该是光纤），为什么玩cf/cs/WOT/WOW/DOTA/LOL/DOTA2……还是卡得要死？”这是个喵君听了好几年的问题了也解释了无数遍，不过貌似搞不懂的朋友依然很多~今天就和大家聊聊这个神奇的网络问题。其实，事实的真相只有……两个：很多朋友和喵君说：我家是100M的宽带啊，网速肯定没问题啊什么宽带？电信？网通？什么！移动？！什么！长城？！！什么！艾普？！！！！…………严格来说，国内其实只算有两家互联网通讯运营公司中国电信和中国网通~原因在于，国内几乎所有的网络端口、节点、线路，都是由中国电信和中国网通建设、维护，并把控的而以中国移动（原铁通）为首的其余网络接入公司，都是租借的前面两家的端口（除端口外，互联网接入运营还有很多内容，但讲起来就太多太多了，能意会就行了）理想情况下，你玩游戏时的数据应该是这样流动的：然而，很可能你玩游戏时数据是这样流动的：那为什么，下东西非常快呢？其实，即使是你玩游戏的时候平均网速也是很快的，BUT!1、玩网络游戏的时候，是非常频繁的小而快的数据包交互，所以数据包的接收只要有延迟，并一来一往时间X2，就非常明显了，这也就是所谓的ping值（服务器响应时间）2、然而，在缓冲电影、下载文件时，基本上是连续、较大的数据包的单向传输这个ping值依然存在，只不过你根本不会注意到，那零点几秒的延迟~所以一些小的网络接入商，只会宣传下载速度和在线高清电影，而绝口不提数据包传输中可能的服务器响应延迟和丢包率。看看字面意思：例如100M光纤理论上100M光纤能达到的下载速度为12.5MB/S（100M光纤的单位是Mb/S，1B=8b）即使是如此，你认为运营商会单独给你接通一条专用的12.5MB/S的“水管”吗？NO NO NO ~事实上，他们就是要让你误以为你拥有了一条水管，其实你拥有的只不过是个水龙头而已~这是个统计学概率+时间差的游戏这个100M的水龙头是怎么来的呢？假如有一家网络接入商决定在一栋100户的楼内接入光纤，而且广告是100M到户~那么，首先他们就分析（或脑补）出：同一时间使用网络的人大概有50户，而这50户中只有30户用户平均能用到50M带宽，剩下的只能用到20M及以下带宽，那么所需要分配给这栋楼的总的带宽是多少呢？不是100Mb/S*100=10000Mb/S（≈1Gb/S）而是50Mb/S*30+20Mb/S*20=1900Mb/S（具体的过程远比这个复杂，这里只是类比个简易化的模型）理论上来说，这样分配基本上没有问题，也不会造成明显的网络拥堵~然而网络带宽的设计和销售往往是分开的，特别是一些小的网络接入商，上面100户接入的设计量，很可能销售出去的是200甚至300，甚至更多的户数那么，本来设计同一时间50户使用的带宽，需要200、300，甚至更多人来分，自然就会造成网络拥堵不堪，不正常地卡？哈哈，不卡才不正常好吗？怎么判定是这种情况呢？很简单，假如你的网络只在晚上7~12点之间，以及节假日卡，那么恭喜你，你掉进这个坑啦~So~~~想要避免掉坑最号的办法就是~不……要……贪……便……宜……宜……宜……', 'http://www.toutiao.com/group/6428464590354776322/', '电脑猫', '2017-07-16 16:31:43', '');
INSERT INTO `popular` VALUES ('1287', '妹子，是什么智慧能让你以为自己能劈砖的？', '妹子，是什么智慧能让你以为自己能劈砖的？这一堆密密麻麻的玩具当中，有一只皮卡丘，你发现了没？', 'http://www.toutiao.com/group/6441432721176019201/', '国兴笑话', '2017-07-16 17:25:00', 'http://p1.pstatp.com/list/190x124/2ebb00044a2a8dbf67ad');
INSERT INTO `popular` VALUES ('1288', '空调买变频还是定频好？听听家电城员工怎么说', '进入夏季了，空调的使用频率也越来越高，很多人都要去购买空调，如果你也想要购置空调，那么在购置前了解一下相关的基本知识是很有必要的。章鱼叔就此问题请教了家电城的员工，下面就给大家解答一下一个困扰很多用户的问题：买空调到底是变频好还是定频好。这个问题似乎从变频空调进入市场以来一直都是大家的疑问，我们对变频空调的了解还停留在广告中的“一晚只用一度电”，可是又有很多权威机构经过测试得出的结论是，变频空调并不省电。消费者又凌乱了，到底买哪个好？我们还是对比一下吧。变频空调：变频空调其实就是在定频空调的基础上加入了一个变频器，它会根据房间的实际情况自动地提供所需要的冷热量，以保证室内温度的恒定，这样温度控制的比较精确，而且它几乎没有噪音，让人感觉更加舒适。但至于省不省电，这个并不绝对，它本身的更合理的温度设定如果长时间运转的话，是比较节能省电的，但由于它刚开开的那两三个小时运转起来比较费电，所以如果开的时间较短，还是定频的更省电。虽然变频空调相对省电，但是它比较容易受损坏，变频空调控制方式复杂，所以设备及维修费用偏高，之前省下来的电费可能不够一次维修费的。总的来说还是功大于过，如果家里经济比较好，还是使用变频的，尤其家里有老人小孩的话，建议使用，毕竟温差小更舒适。定频空调:定频空调的优点和缺点是很明显的，它价格较低，选择面广，短时间使用省电，比较耐用，不容易坏，这些都是优点。但是它肯定没有定频空调那么智能，对于温度变化不太敏感的人可以选用。总之，变频空调就是舒适，娇贵，容易坏。定频空调优缺点正好相反的，想省钱的话也可以凑合着用。利弊已经给大家分析了，这两种到底选哪个还是要根据每个人的具体需求和实际情况来判断了。', 'http://www.toutiao.com/group/6433702775745741058/', '在城市的农民工', '2017-07-16 17:49:07', 'http://p3.pstatp.com/list/190x124/2898000183e0fbde9f3e');
INSERT INTO `popular` VALUES ('1289', '马云太能说？阿里巴巴是日本人投资的？是的，那又怎样！', '马云，阿里巴巴创始人，中国互联网教父级人物，刚刚新晋为亚洲首富。旗下拥有淘宝、天猫、1688、菜鸟、蚂蚁金服，每一个都是巨头公司。而马云作为极其出色的演讲家，同时阿里又是日本人孙正义投资的，所以使得马云和他的阿里极具争议性。马云作为一流的演讲家，常常金句频出。而马云说过最著名的一句话便是：我有生以来最大的错误就是创建阿里巴巴。这句话如今也是广为流传。而据说马云仅说了6分钟，在对阿里巴巴完全没有实地考察的情况下，孙正义就决定了向阿里巴巴投资3500万美元，占49%的股份。最后马云只要了3000万美元，占30%股份，后面又自动要求降到2000万美元。从那以后，孙正义一直是阿里巴巴的第一大股东。在阿里上市的时候，孙正义投资阿里的获利金额为580亿美元，回报高达2900倍！不过，当你指责马云太能说、找日本人要投资的时候，要知道马云的成功并不是一帆风顺的。马云曾经在年轻的时候去肯德基应聘一个助理，结果总共25个人前去，只有马云没被录取。试想，这是一种什么样的就业体验？而当年马云为了去拉投资，一共被VC拒绝了足足达37次！当然，聪明的马云不是这么告诉他的团队的，他告诉跟随他一起打拼的小伙伴们，是自己主动拒绝37家投资。不得不说，这个口才、气度确实可以啊！而拒绝给马云钱的人，这个阵容也是相当的豪华，有包括雷军、冯仑、薛蛮子在内的国内顶尖投资人，当时他们其实都不看好马云，嘲笑马云要价太高。所以，马云的成功在于他是追梦者马云：始终相信心中无敌，就无敌于天下的马云！', 'http://www.toutiao.com/group/6442167491870359810/', '苏老湿讲干货', '2017-07-16 17:12:10', 'http://p3.pstatp.com/list/190x124/2ec4000140c61c604cb8');
INSERT INTO `popular` VALUES ('1290', '乐视危机无解，半个娱乐圈被拖下水', '贾跃亭在今日头条上的认证信息显示为乐视创始人、产品宅、父亲。首先是乐视创始人，想打造一整个乐视生态体系，为梦想窒息的掌控者；再是沉醉于开发乐视电视、乐视手机、乐视汽车的产品狂热分子；最后才是三个年幼孩子的父亲，回归家庭。这几个身份标签的先后顺序或多或少可以说明他对乐视倾注的心血和抱以的期望值有多高。两天时间里接连被冻结资产，从夫妻的12亿资产到贾跃亭手中的乐视占大头的股份多达160亿资产。对于不少本不看好乐视的人来说，这种结果是可以预知的，资金空缺出了个无底洞，怎么融资都填不满，问题已经显而易见。对于贾跃亭梦想的支持者来说，确实不小的重击，此前的融资已经拿的艰难。如今，还有谁能拉乐视一把呢？！似乎只有像BAT这样的网络巨头可以勉力出手一救了，房地产企业向来不屑于互联网的辛苦钱。马云曾呛声贾跃亭：地主斗死，农民也不一定富。指望外表光鲜亮丽，赚钱似乎来的极容易，近几年大量涉足资本市场的娱乐圈和妻子甘薇的明星朋友们？似乎不现实，早已有半个娱乐圈陷进了乐视的资金无底洞里。早在4月，就又记者爆出猛料，身边好几个朋友都想从乐视里拿回投资。有人说刘涛没财运，先是嫁了个假京城四少，好不容易靠她复出挽回点颜面，后来日子好过了，手里有点钱了，6000万全部砸在乐视，又被套了。这就有点鼠目寸光了，复出4年帮还4亿欠债，6000万充其量只是欢乐颂、琅琊榜两部戏的片酬罢了，更何况投资风险与收益本就是成正比的，承担风险的心理，想必涛姐是有准备的。目前停牌中的乐视网 300104在第一趋势多因子模型中的排名已经落后到了末尾99.9%，业绩预估、成长性、盈利能力、估值和偿债安全性都是排名非常靠后的，唯一能看的股价趋势排在前38%。预计乐视网此后复牌，股价会随着创业板指的涨跌而涨跌，复盘后的涨跌很大一部分要看当日指数的涨跌，而跟上市公司的好坏无多大关系。浏览众多报道文章和评论，褒贬不一，有让银行背锅的：银行从来就是火上浇油，从来不会雪中送炭其中。不乏看戏的落井下石者，但也有希望他坚挺下去的支持者：其实我希望乐视做下去，毕竟这个市场需要破冰者！作为局外人，就凭借贾跃亭想为梦想窒息的态度，和此前融资时一度哽咽快速控制情绪的一幕，让人唏嘘，还是希望乐视能坚强的走下去。更多最新市场动向专业解读，报名每周一、三、五准时举办公益股票／期货线上沙龙分享，联系智能投顾助理（diyiqushi03）无条件进沙龙学习切磋技术。查看华尔街交易员的专业交易方案，点击文章下方“了解更多”。', 'http://www.toutiao.com/group/6439193425790108162/', '第一趋势官方', '2017-07-16 17:12:00', 'http://p9.pstatp.com/list/190x124/2c450000c37cacc3cf10');
INSERT INTO `popular` VALUES ('1291', '为什么ofo惨遭失窃，而摩拜单车少有人去偷？', '共享单车上市好几个月了，咱们很多城市都有了共享单车的身影可是共享单车被盗，公车私用的情况却成了社会乱象其中成都的“悟空单车”现在已经倒闭了，90%的单车已经找不回来了国内多家共享单车都有被偷的情况，其中ofo被偷数据也很恐怖摩拜单车设计者眼光还是很高的。相比于小黄车，从它更稳定的轴传动，更安全的防爆轮胎来看，就已经甩小黄车好几条街了。从造价看，一个摩拜单车单价600-800元之间，小黄车200-300之间。我们引用一下心理学和乃至社会经济学的原理，分析为什么偷的人不多。假设使用者＝偷车的人+不偷车的人，不偷车的人始终不会偷偷车的人总体可分为2种，一种人是想占便宜偷来自己骑，另一种人更过分偷来卖钱的。先说说占便宜偷来自己骑的人吧，摩拜单车外观辨识度非常高几乎所有人都知道这车不可能是你自己买的，反而容易做贼心虚就算也骑的不心安理得，所以占便宜的人只会越来越少而且摩拜的电子锁设计已经减少钻漏洞的空间。这种心理同样适用于偷来卖的人一偷东西要选有价值的东西偷，不然忙来忙去一场空。当然摩拜单车价值还是挺高的，所以这点加一分。二考虑它是否容易得手，太困难的有较大风险的不偷摩拜单车貌似有定位什么的不太好下手。需要破坏定位装置。三销赃方面，摩拜单车造型比较奇葩别人一看就知道是我偷的，还会有人收吗？这点就不能去偷四几家共享自行车仔细一看就知道哪怕你没有偷车技术也只需要5毛钱就可以偷一辆小黄车，还是无刷新技能CD的所以综合得出结论，之所以摩拜单车偷盗率不高同时摩拜单车为了加强安全性，车身内部自再带GPS定位，可以实时显示单车的位置并显示在手机端，说的简单一点就是相当于在车上绑了一部智能机也需要插手机卡，只是功能比较单一而已，通过4G网路和云端服务器进行交互每辆车子都会生成一个专属的二维码，通过手机端扫描二维码，简单方便。同时开始自动计时计费，再次扫描锁车结账，同时在地图上显示车辆位置如果车辆位置有所异常，GPS也会发出异常报警。既然车子需要用到电子原件，那么必定用电怎么样才能解决用电而不再需要提供外接电源呢？设计师，巧妙的运用古人智慧，灵感来源于以前自行车上的发光灯通过后轮联动电机发电，然后蓄电池将多余电量储存用于停车使用，真正做到的的环保节能的。自行车也能边骑边充电，摩拜通过用户踩动单车，获得能量转化为电能，源源不断的为蓄电池充电，保证了智能锁能够持续与云端链接。科技永远不会止步，因为人类的需求永远不会止步。总结6点1，摩拜比较重，偷完每天扛到楼上和楼下，比较累。2，摩拜形状独特，私有后容易被发现，涂改染色也没用。3，配件无处买，坏了无法修。4，智能扫描二维码，随机密码开锁，简单破坏困难。5，摩拜价值高，被抓后处罚严重。6，摩拜不太好骑。共享单车越来越多，骑行费用也低，估计没人偷了。所以在设计初期，整个车子的牢固性，整体性，以及电子锁的一体性在投放初期，消费者知道密码以后可以无限循环使用，并没有定位系统检测。设计者起初想着我这么便宜给你用车，你应该不会给我搞破坏的但是最终的结果是ofo成为了私人订制，这也是所有共享单车最惨的一个。没有之一。最后， ofo那么好居为私有， 小偷还会费尽心思搞摩拜？欢迎留言讨论！', 'http://www.toutiao.com/group/6441672772577083650/', '白一子', '2017-07-16 17:12:20', 'http://p3.pstatp.com/list/190x124/2ec50000c19e7e916364');
INSERT INTO `popular` VALUES ('1292', '戏耍骗子｜微信转账最新骗术，已有人中招，不得不防！', '现在骗子越来越多，什么花样都有，今天小编也遇到骗子，戏耍骗子全过程截图我正在看头条，有人给我发信息，我不认识这人，也没有加过她然后我就配合一下骗子，我叫胡策 谐音 胡扯 ，卡号 名字 都是 胡扯然后骗子发来一个截图，别说做的还挺真然后我大家继续看然后我们转到微信上去，加他说的微信开始戏耍了然后，呢，你没看到错，他居然说知道的拖延一下时间骗子居然叫什么花，名字好土。然后QQ上开始催我了继续戏耍微信已经把我拉黑了我们在看一下QQ我就这样被拉黑了，总结一下， 大家遇到自己的朋友要转账给他，或者银行卡换钱的骗术，一定等钱到在转。', 'http://www.toutiao.com/group/6443260536774836481/', '开心十分', '2017-07-16 17:04:17', 'http://p3.pstatp.com/list/190x124/2ed10004cc4b4969f467');
INSERT INTO `popular` VALUES ('1293', '8月1日起，你银行卡、微信、支付宝里这些钱统统可以省了！', '说到银行取钱最心疼的就是每次异地取款都要收一笔手续费取得越多，扣得越多然鹅，现在有个好消息出炉啦这个手续费被免啦国家发改委、中国银监会发布自2017年8月1日起取消个人异地本行柜台取现手续费各商业银行通过异地本行柜台（含ATM）为本行个人客户办理业务实行免费（不含信用卡取现）意思就是，你的账户是在广州的商业银行开的你去北京旅行，在那取钱无论是在柜台用存折取还是在ATM用银行卡取都不收手续费还有这些免费项目今日话题1各商业银行暂停收取本票、汇票的手续费、挂失费、工本费也就是说，你这6种费用不用交啦2各商业银行应继续按照现行政策规定主动对其在本行开立的唯一账户（不含信用卡、贵宾账户）免收年费和账户管理费意思就是，你在每个银行里的一个账户都不用交年费和账户管理费啦这些信用卡和ATM的规定你也该知道今日话题1在ATM机上转账，除向本人同行账户转账外个人通过ATM转账的不管你选择的是实时到账、普通到账或次日到账都要24小时以后才能到账如对转账存疑个人在24小时内可向发卡行申请撤销转账申请方法可以是打银行卡所属的银行电话或是到银行柜台直接办理2再提醒一句，ATM机用信用卡取钱每卡每日取现最高1万元哦微信和支付宝提现的小秘密今日话题支付宝提现规定1日前，支付宝账户单日转账笔数上限为100笔（次）2自2016年10月12日起个人用户每人累计享有2万元基础免费提现额度支付宝对个人用户超出免费额度的提现按提现金额的0.1%（千分之一）收取手续费单笔手续费小于0.1元的，按照0.1元收取举例你在支付宝提现20000元后再提现1000千元就要收取1元的服务费再提现2000元就要收取2元的服务费以此类推微信提现规定1目前，微信账户单日转账笔数上限为100笔（次）微信零钱单笔最高可提现50000元2自2016年3月1日起，每人累计享有1000元（指提现金额）免费提现额度超出额度后你在微信上提现1000元后再提现100元就要收取0.1元的服务费提现90元也要收取0.1元的服务费以此类推哇咔咔，看到这里宝宝们是不是觉得自己又省了一笔钱呢以后，父母们给在外地上学的孩子们卡里转钱再也不用担心收手续费啦', 'http://www.toutiao.com/group/6442505379208233217/', '微昌吉', '2017-07-16 19:39:00', 'http://p3.pstatp.com/list/190x124/2f83000e8388231d6b6e');
INSERT INTO `popular` VALUES ('1294', '女儿：妈，支付宝转点钱给我 妈：以后有事微信漂流瓶联系', '年仅25岁的程序员小张走在上班的途中信任就像一张纸，皱了，就再也抚不平这就是你追星的样子第一次到男朋友家把马桶垫坐断了以后有事微信漂流瓶联系公鸡中的战斗机玩个游戏都能被吃狗粮打假拳，都无防备意识了还不乘胜追击死侍和蜘蛛侠的爱情故事金馆长永远不知道自己在中国有多火', 'http://www.toutiao.com/group/6415721218523021570/', '滑稽大帝', '2017-07-16 18:39:40', 'http://p1.pstatp.com/list/190x124/1dce00067452b44a39d7');
INSERT INTO `popular` VALUES ('1295', '华为祭出一枚超级武器，任正非的一句话，却让人沉默！', '沉默许久的华为，终于出声了！酝酿多年的秘密武器，正式公开了！近日，华为公司正式对外宣布：华为早已开始研发人工智能处理器，并且将在今年年底适当时机推出市场。人工智能的时代已经开启了。而目前市场上的普通CPU芯片，不具备深度学习的能力，更不足以承担起人工智能背后的大量计算数据，人工智能设备还没有大批量的融入社会。市场急需更具高能效的终端芯片出现，那就是人工智能处理芯片。但是人工智能处理芯片对技术的要求极高。难度一：要拥有目前芯片数百倍的计算能力，足以支撑起人工智能背后庞大的数据体系。难度二：要具备深度学习的能力，也就是从大量数据体系中，选出有价值的数据，并且把这些数据总结成规律。正因为难度极高，尽管众多硬件巨头如英特尔，谷歌、高通等早已布局研发，但迄今还没有达到推出市场的标准。华为的宣布，犹如当头一棒，给这些巨头们发出警告，世界上首款人工智能芯片有可能由华为推出！众所周知，无论是手机的芯片，还是计算机的芯片，都被这些巨头垄断了市场。而芯片也成为了中国最大的科技进口产品。2016年，中国芯片的进口费用达到了2271亿美元，贸易逆差达1657亿美元。这个逆差的背后，是纺织品、工艺品、家具等数以几十亿计的产品换回来的外汇。每年近万亿人民币的进口费用，就这样落入别人的口袋，大部分的利润都被他们吞噬，留下微薄的利润给我们。更重要的是，付出了高额的价钱，却依旧在技术上受制于人。不自主研发，永无出头之日！百度无人驾驶的横空出世，马云无人超市的震撼出场，都说明一点：无论是在技术上，还是在商业上，人工智能都将是中国变道超车的重大机遇。然而，如果没有中国自主研发的人工智能处理器，那么，所谓的变道超车，可能是一厢情愿。即使华为在手机芯片领域对比高通毫不逊色，但目前也仅仅做到了打破垄断，无法掌握话语权、议价权。要想成为行业的领先者、标准制定者，就必须走在市场的前面！终于，在电脑芯片领域还没有被攻克的情况下，华为再次站了出来。如果说之前的局面，是我们落后造成的，今天在同一起跑线上，我们不能再重蹈覆辙，让芯片市场继续被国外垄断。华为的这一宣布来得正是时候，我们沉默的太久，是时候爆发了！任正非的一句话，让所有人沉默！然而，即使是华为各方面高歌猛进的时候，任正非还清醒地对13亿人发出冷静的警告。最近，任正非在巴塞罗那小型恳谈会上的恳切告诫：虚拟经济是实体经济的工具，不可以因为工具能直接带来许多真金白银，就直接去追逐真金白银了，也不该去炫耀锄头而忘了种地！这些常识性的真理，在如今的浮躁社会中却少人问津，很多创业者、企业家、投资人都沉醉于工具及其概念的炫酷，比如云计算、大数据、AI、AR、SAAS等，却忽略了工具不该是方向、用好工具为客户创造价值才该是方向 。泡沫化社会，需要一个长期的修复过程。炒房就能来个几十万，谁还专注做实体？没有实体经济，怎么解决就业问题。我认为，还是要扎扎实实做实体。任正非说：“中国实体经济最紧要的就是一句话：诚信。对客户要有宗教般的虔诚。如果中小企还提什么商道、模式，那就错了。品牌的根本核心就是诚信、真诚。你要对客户需求有宗教般的虔诚。我们的经验说到底，就是一个诚信”。任正非说：华为不会为了钱去上市。“华为不缺钱，干嘛要上市？上市就要受干扰，不可以专心致志地锁定华为的战略目标了。这是赔本的买卖，华为不去做。”任正非说：我们要回到世界文明的主航道，还是要回到理性上来。我们在创新上，第一要向美国学习。第二个要向德国、瑞士、日本学习工匠精神。这就是任正非，越是在快速发展、红红火火的时候，就越是清醒、越是理性，越是忧患！所谓“互联网+”，从数学角度来理解应该是“互联网x”才对——如果后面的乘数是0，那么前面的互联网倍数再大，还是等于0。如果中国企业不集中全力搞自主研发，而是玩概念、炒房地产，那么即使昨天还在沾沾自喜，那么今天或将如坐针毡乃至大难临头。在这个浮躁的时代，我们需要任正非这样的理想主义者，需要这样一位老一辈企业家，来让我们冷静，让我们脚踏实地！今天，我们为中国有华为而感到自豪，又为中国只有一个华为而心有不甘。如果中国的每一个企业，都能像华为一样坚守自己的领域，中国必定会支撑起真正的经济繁荣，中华旗帜必将插满全世界。中国企业当自强！21早新闻综合自：互联网热点（ID：web-news）、财经内参（mofzpy）、鸣金网（mingjin-wang）其它小伙伴', 'http://www.toutiao.com/group/6443008766458757378/', '21快闻', '2017-07-16 18:39:35', 'http://p1.pstatp.com/list/190x124/2dfd000e01710fbe501d');

-- ----------------------------
-- Table structure for `realauth`
-- ----------------------------
DROP TABLE IF EXISTS `realauth`;
CREATE TABLE `realauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `realName` varchar(50) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `bornDate` varchar(50) DEFAULT NULL,
  `idNumber` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realauth
-- ----------------------------
INSERT INTO `realauth` VALUES ('1', '黄振强', '0', '1991-10-21', '362330199101215475', '江西省上饶市鄱阳县凰岗镇神山乡马路岗001', '1', '/upload/4b95cec0-7b9b-43bf-b51a-ca55a112c5ce.jpg', '/upload/071393a5-341a-4113-85f8-d47a2fe982b5.jpg', '通过!', '2017-06-10 17:42:27', '2017-06-10 17:41:11', '55', '54');
INSERT INTO `realauth` VALUES ('2', '程海燕', '1', '1991-08-19', '360000xxxxxxxxxxxx52', '江西省鄱阳县', '1', '/upload/c0a07ddb-8216-47ed-ab1b-d69b9ced621f.jpg', '/upload/a2fda191-39d7-4ccb-ad32-cfaa119c025b.jpg', '准许', '2017-07-23 18:49:28', '2017-07-23 18:43:18', '55', '56');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reply` varchar(1024) DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `communiti_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '哈哈哈', '2017-07-13 21:39:32', '54', null, '65');
INSERT INTO `reply` VALUES ('2', 'hah', '2017-07-20 19:46:33', '54', null, '65');
INSERT INTO `reply` VALUES ('3', 'hah', '2017-07-20 19:46:48', '54', null, '65');

-- ----------------------------
-- Table structure for `science`
-- ----------------------------
DROP TABLE IF EXISTS `science`;
CREATE TABLE `science` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `publishTime` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES ('123', '乐视网中报预亏6.4亿 复牌或有5个跌停', '　　重庆商报讯 近两年创业板权重股之一的乐视网还会爆出多少“深水炸弹”无疑牵动着整个市场的神经。7月14日晚，乐视网发布了一则中报业绩预告：预计亏损高达6.37亿~6.42亿——这也是该公司上市后首次亏损。业内人士表示，该公司复牌或有5个跌停，但对创业板负面影响不会很大。 　　业绩大幅预亏6.4亿 　　7月14日晚，乐视网发布业绩预告称报告期内，乐视体系资金流动性紧张的影响，公司品牌受到一定冲击，随之客户粘性出现波动，公司的广告收入、终端收入以及会员收入均出现较大幅度的下滑；二季度未对外进行版权分销业务，导致版权分销收入同期也大幅下滑；公司资产减值损失计提规模较大约为2.3亿元，其中无形资产版权减值准备1.30亿元、存货跌价准备0.02亿元、应收账款坏账准备0.98亿元——这一切使得公司2017年上半年净利润为-6.42亿元~-6.37亿元，上年同期为2.84亿元，同比下降325.64%~323.88%。 　　自贾跃亭退场后，有分析人士认为，在下周一召开的乐视网临时股东大会上，乐视网董事会将改组，融创中国董事局主席孙宏斌可能接掌董事会。下周一，或许会成为“新乐视”（上市公司体系）与“老乐视”（非上市公司体系）彻底完成切割的分水岭。 　　对创业板影响不会很大 　　华龙证券副总经理邓丹认为：“周五创业板权重股在连续阴跌后集体放量大跌，可以说是对乐视网带着诸多利空复牌的一种情绪性释放。后市来讲，乐视网复牌或有四五个跌停，但却不一定会对创业板构成太大打击，这是因为创业板今年以来的下跌，基本上把大部分风险提前释放了，这种情形非常类似于1999年深圳市场的走势。更何况，乐视网也不是创业板第一权重股，其他创业板股超跌后集体补涨，完全可以像去年万科复牌补跌时那样，以合力的方式抵消其跌停的拖累。所以，中报行情主要集中在成长股和与国企改革相关的低价二线蓝筹阵营中。” 　　作者：王也 　　原标题：乐视网中报预亏6.4亿 复牌或有5个跌停', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakur9003937.shtml', '重庆商报', '2017-07-16 12:19:26', 'http://n.sinaimg.cn/tech/transform/20170716/0UfR-fyiavtv8190379.jpg');
INSERT INTO `science` VALUES ('124', '“荣耀”还是“农药”？ 看看95后们都怎么说', '　　来源：观察者网 　　短短几日，《王者荣耀》就被舆论卷下王位，送上了“鞭笞台”。 　　此前，“父亲不让玩‘王者荣耀’，男孩扬言要跳楼”、“小学生为充值王者荣耀倾家荡产”等新闻见诸报端时，社会已颇有微词；7月份，人民网（603000，诊股）连发三文直白声讨，将《王者荣耀》直推舆论风暴中心；同时段，新华社也三评“农药”，更是为批判、反思的舆论势头推波助澜了一把。  　　关于《王者荣耀》的故事，观察者网有过多篇报道；围绕《王者荣耀》的“白与黑”，观察者网也已上版几篇评论。近日，观察者网迎来一批95后实习生，有“农药”的“吸食者”，也有吃瓜的围观群众。拜读完谆谆教诲，不妨再看看小年轻对“农药”的思考。不同的教育背景、不同的认知理解，或藏着不一样的理性闪光点。 《王者荣耀》官网页面  　　《王者荣耀》好与坏，因人而异  　　@辰砂（上海外国语大学国际新闻系大三生）   　　《王者荣耀》作为手游，充不充值都可以玩，游戏体验差距不大，那么玩家们花钱买皮肤的冲动从何而来呢？为此我采访了我沉迷王者荣耀的室友，她告诉我两个词：“人情”，“显摆”。在《王者荣耀》里送皮肤是他们人情往来的重要方式，另一方面拥有稀有皮肤在小学生们看来，是非常值得炫耀的事。   　　“人情往来”、“炫富”，这些词听起来都不陌生，在当下社会中这些风气时时都被抨击，却时时都在。当这些词与我们的孩子联系在一起时，我们当深刻警醒，这不是一个游戏的问题，这是我们的问题。  　　成人的现实、成人的压力、成人的世故不该这么早地传递给孩子。引导孩子拥有正确的消费观与价值观，作为家庭与社会，我们本就应担负起比任何一方更多的责任。  　　说到沉迷游戏，不仅仅是小学生，许多大学生成年人同样沉溺其中不可自拔。游戏为何这样令人着迷？我看过相关的研究文章，说的是人们做某一件事，付出成本与劳力之后，获得回报，在获得这一过程中得到快感。  　　为什么我们无法对学习和工作上瘾？这是因为学习与工作都处在一种长周期循环中，我们需要长时间的付出才能获得回报，这使得我们的情绪长时间处于付出的相对压抑状态。而游戏则相反，打怪，掉落材料，进攻，赢得胜利，一切都发生在短短的几分钟内，快速的循环带给我们强烈的快感刺激，因而令人欲罢不能，觉得上瘾。   　　其实不仅仅游戏会让人上瘾，我身边有做烘焙上瘾的同学，有种花上瘾的同学，有钓鱼上瘾的同学，瘾与快乐其实只有一线之差。好的瘾让人生充实，让自我提高，而坏的瘾为了填补空虚，却只在快感之后使得人生更加空虚。  　　我曾经问我的一位长辈，如何让人生没那么无聊？他的回答简单质朴，但一直鼓舞着我，使我既不成长为无趣的大人，也不停留为幼稚的孩子。  　　他说：“找点事做做。”无论是游戏上瘾，还是早些时候的大学生空心病，我们社会都表现出一种空虚浮躁的气氛。在温饱问题已经解决的当下，我们都需沉下心来找些事情做做，为自己找些爱好，只有治好了自己的空心病，才不会让任何瘾头寻到心灵的空隙。  　　@张函数（西安外国语大学阿拉伯语系大三生）   　　当年QQ农场最火的时候，玩家设闹钟半夜起床偷菜，更有甚者透支了身体，引发了舆论激烈的争论。我认为此次“王者荣耀”话题不过是这长久争论的延伸，它绝不会是最后一次，姓王的之后，还会涌现刘者荣耀、张者农药。  　　每一代少年都有自己时代的“王者荣耀”。曾经的少年沉迷于任天堂红白机、魔兽世界、CS、红色警戒。当时一定有人感叹毁了他们，就像今日抨击王者荣耀毁了当代小学生一样。但是我相信，当年那群少年的大多数如今都是我们这个社会的中流砥柱，过着幸福充实的生活。  　　一张极具年代感的农场表情包……  　　@倒刺（华东师范大学汉语国际教育系学生）   　　如果仅从游戏性方面而论，手机游戏的质量在当前技术条件下是绝对无法与主机游戏相抗衡的。论操作，手机的键位远远不如电脑复杂；论画质，甚至比不上现在主流的网络游戏。   　　可是，手机游戏的优势体现在方便快捷、对闲暇时间的消耗、以及无与伦比的社交属性上，这几个方面都是主机游戏所不能企及的。  　　重中之重在于，如果说相较于方便快捷、消磨时间的特性，主机游戏尚且有硬核的内容可以吸引大部分玩家，手机游戏社交层面的价值是主机游戏所不能媲美的优势。  　　王者荣耀的成功的关键恰恰在于它把握住了手机游戏的社交属性，将MOBA类游戏移植到了手机平台。……现在的处境是，游戏的“好玩”由于部分人的沉迷成为了原罪，如果按照“弘扬正能量”这样的标准去研发，那么游戏发展只能永远带着镣铐跳舞。  　　游戏理应保有其纯粹性——好玩，王者荣耀作为一款游戏，没有任何义务在开发中为了避免沉迷，将其设计得“不那么好玩”。  　　王者荣耀引发的沉迷游戏现象绝不应该归咎于“怪游戏太好玩导致孩子沉迷”，这种论调就像“谴责女性穿着不保守导致男性强奸”一样毫无逻辑且不负责任。即便没有出现王者荣耀，也会出现“英雄荣耀”、“大侠荣耀”等等其他吸引未成年人的游戏。  　　@夜浦江（北京大学外国语学院大二生）   　　“成瘾”在现代社会越来越普及，追剧追上“瘾”、工作成“瘾”、做家务成“瘾”等新形式的“瘾”渗透到我们的生活中，笔者看到一个又一个的人在用各种方式填满自己的生活，因为他们害怕停下来，停下来他们不知道要做什么、停下来他们可能要面对的是孤独。  　　而以《王者荣耀》为代表的手游则被孩子们用来填补他们的生活。当孩子发现放下游戏后的是空空的房子、是孤独和寂寞、是如山的作业后，而在游戏里有队友、有人聊天、有人陪伴，他们选择躲避在游戏中是可以预料的。而孩子本来就心智薄弱，长时间游戏容易上瘾也就可想而知。  　　现今，智能手机和互联网普及，手机成为家长打发孩子最方便的工具，而手游则成为孩子们让自己不孤独的最简单、便捷的方式。如果不是《王者荣耀》，也可能是其他任何一款手游，只不过《王者荣耀》在众多手游中成功脱颖而出。  　　与其指责游戏公司，家长不如反省自己，是不是应该多花些时间陪伴孩子、教育孩子、引导孩子。至于金钱观念，支付宝、微信支付等一系列手机支付功能的普及，让一张张热乎乎的人民币变为一串串冰冷的数字，别说孩子，有时候甚至连大人自己花起钱来也都有种不真实的感觉，甚至产生花的不是自己的钱的错觉。因此，树立正确的金钱观念在当下的教育中尤为重要。   　　这金钱观……分场合，不都对  　　@何弈（浙江大学新闻学大二生）   　　我并不是一个十分热衷于游戏的人，但是身边在玩手游的朋友不少，《王者荣耀》是他们日常生活休闲的一部分。  　　游戏满足了玩家的某种需求，使得玩家投放更多的时间和精力在游戏之中。任何一项能够满足受众需求的娱乐活动都能让这项娱乐活动得到追捧。换句话说，任何休闲娱乐活动都有沉迷的风险，甚至不仅仅是休闲娱乐，许多日常活动都有“沉迷”一说。  　　但实际上，对于一些活动的“沉迷”会被大肆宣扬褒赞，例如时常被冠以“户外运动爱好者”的户外运动“沉迷者”，这一活动其实也具有高风险性，每一年丧生于极限运动的人数远远高于沉迷游戏导致的跳楼致死等极端事件。  　　那为什么户外运动等活动能得到很大程度上的认可？对行为本身的认定就会有善恶是非对错吗？导致玩家沉迷游戏并不只是游戏一方的过错。这种沉迷是相互的。比如我自己对游戏完全不感兴趣，那这样的游戏即使有天花乱坠的宣传也无法吸引我。  　　游戏不应该承担来自玩家本身的问题。  　　《王者荣耀》，参与自有其荣耀……  　　@穆凡（复旦大学新闻学院传播学研一生）   　　王者荣耀是一个团队游戏，需要齐心协力，互相配合。当队友们都在战场鏖战的时候，哪怕是多几次等秒复活，也不能一个人跑了或者挂机等消极应对。于是玩家就设定有了一个无形的游戏道德在里面：齐心协力，共赢此局。  　　作为一种社交媒介，它用虚拟的游戏方式增强了人与人之间的互动，以及合理的宣泄。任何新事物的出现往往是利弊均兼，某些媒体在自己的立场看到其中的弊，乘着政策风头，带着政治目的的声音总是这样硬朗、强势，而实际上缺乏一种温和的态度、客观的眼光，这在后真相时代的潮流中，面对开放先进的事物，无疑也是一种观念的不包容和桎梏。  　　@卓敦 （伦敦政治经济学院大二统计金融系学生）   　　还记得我们小的时候，班上经常会发生少数派被多数派排挤的事情吧？放在《王者荣耀》这也是一个道理。一些不玩或者被父母告诫不许玩《王者荣耀》的小朋友在班上极有可能会受到多数玩《王者荣耀》的同学们的排挤。为了合群，他们其中的大部分人都选择玩，玩了一段时间后便沉迷进去了。因此，想要解决王者荣耀痴迷症，学校的老师也要努力监管。  　　《王者荣耀》的“罪与罚”，不能只让腾讯背  　　@东八区（武汉大学历史学院大三生）   　　从传播学的角度，“怼”不会让《王者荣耀》“降火”，反而会让这款游戏打了一次免费的广告，裹挟着国家级媒体的流量来吸引更多的用户参与游戏，其中包括了人民网和新华社所担心的未成年人。  　　《王者荣耀》，你可以认为它是新时代下的“《三国演义》”，把帽子扣得大了，它也戴不起。游戏只要不触碰到底线、不犯历史虚无主义的错误，我们就应该宽容些，无需游戏来承担道德教化的重要任务。  　　人们对于任何事物都会成瘾，甚至有些小朋友从小就喜欢观察自然、亲近自然，一天花上两个小时观察昆虫的形态和活动的都有。游戏成瘾为何成为了一种原罪？传统的儒家思想观念教育我们“业精于勤荒于嬉”，游戏的“戏”与“嬉”同音，游戏代表了一种荒废时光的行为，这自然是不可取的。  　　在科举取士的传统社会里，游戏确实难以有出人头地的机会；可是在今天，时代变了，观念转变落后于时代改变，我们也可以理解。但是理解从来都是相对的，父母不支持孩子玩电竞可能很大程度上的原因在于这是一条无法预测的“成功道路”，有成功的例子可能目前来说还是少，最起码没有比读书来得安全稳妥 一些。  　　但是不能因为如此，而把游戏贬低成一种“低级趣味”。对游戏成瘾也并没有像媒体所渲染的那么可怕，极端的例子总是少数的，更多人会因为现实面临的问题而转变自己对游戏的态度，权当做消遣而不是沉迷。  　　少数成功者能够做到以游戏为生。未成年人自制力差一些，沉迷上瘾在所难免，把引导的责任推到隔着屏幕的游戏开发商，只是一种责任的推卸，而不是真正地在解决问题，现实生活中来自师长的教育、引导是不是会更实际一些呢？  　　@陬人（复旦大学哲学系大三生）   　　人民日报对这款游戏的很多具体的批评是建立在与这款游戏相关的各种猎奇性的社会新闻上的。比如，小学生充值三万玩游戏的事件，或者是人民日报微博转载《新京报》的小孩玩游戏后的跳楼事件。  　　在这些事件中，《王者荣耀》这款游戏只是这些社会趣闻的导火索，背后的社会问题，比如家长对子女的关心不足，教育不足可能才是真的需要解决的问题。甚至在《新京报》的采访中，有家长认为孩子玩这款游戏理所应当，充值玩游戏也理所应当，则可见家长对子女的关心和教育过于简单粗暴、缺乏深入性才是问题。  　　如果进一步调查，我相信留守儿童的手机游戏沉迷比例可能会更高，可能背后的国家快速发展和城市化过程中的一些问题也会被揭露出来。《王者荣耀》当然要为这些社会问题负责，但是我们不应该忽视这些表面问题背后的深层次问题。  　　《王者荣耀》，国的荣耀  　　@李一一 （四川社科院政治所研一生）   　　每个时代都会有引起年轻人追捧的东西，区别在于是网络小说、武侠小说，还是网络游戏？老一辈常常批评爱好新事物的新一代“玩物丧志”，新鲜世代也常常被称之为“共和国垮掉的一代”，然而从改革开放至今，有哪一个世代曾经垮掉？对比日本韩国，大陆并没有。  　　世界网络游戏市场方兴未艾，东亚地区更以日韩为翘楚，日韩以之宣扬本国文化，达到对外扩散文化软实力的效果。我国的游戏产业发展滞后，集数年之功才出现一个风靡全国的游戏，如果贸然打压，对整个游戏产业的后续发展也会有所影响。“继续观察，要求改正”反而是不错的选择，如果直接进场作干预，“公亲变事主”可能造成市场的恐慌，至少是信任度下降。  　　据估计，网络游戏市场还将持续扩大，这个领域我们自己不占领，他国也会占领，封杀自己的游戏，不过是让本就孱弱的游戏产业更为弱小。近日，《王者荣耀》宣布西进欧洲，打开国际化的第一步，既填补了我国相关领域的缺失，又从某一程度上扩展了中华文化的影响力，何乐而不为呢？  　　结语： 　　回溯中国电子游戏史，似乎没有哪一款游戏像今日《王者荣耀》般，面临着如此汹涌的舆论浪潮。它的成功，是现象级的；它所遭遇的社会批判，也是现象级的。 　　它，最终会成为一场“荣耀”，还是演化成毒“农药”，难以定论；但这波浪潮中接二连三被抛出的问题，需要我们共同反思，给予解答，并达成共识。 　　游戏、玩家、企业乃至整个社会，该如何合力行走在娱乐与责任间？这题，无法回避，也不可回避。', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakwa4219064.shtml', '新浪综合', '2017-07-16 12:05:11', 'http://n.sinaimg.cn/tech/transform/20170716/YrHw-fyiavtv8179605.jpg');
INSERT INTO `science` VALUES ('125', '\"大款\"街头骗手机 拿100元批发的\"名表\"作抵押后消失', '行骗道具 　　拿“名表”抵押借手机 　　6月28日14时许，在南屏街西口的百大新天地楼下，17岁的小葛，背着双肩包正在逛街，被一名陌生男子拦住去路。 　　男子身着白衬衣，说一口标准的普通话。左手拿着一款LV钱包，右手拿着一把宝马车钥匙，左手腕还戴着一块劳力士手表，一副大款模样。 　　男子对小葛说，他刚刚开车出了车祸，撞伤一名小女孩，已经送进医院，要做手术，他去百大新天地找朋友拿钱支付医疗费，但不知道朋友在几楼。因手机在车祸中损坏，他想借用一下小葛的手机，跟朋友联系。 　　小葛就将自己刚买几天的手机借给对方，男子接过手机一边拨号，一边乘坐扶梯往2楼去。小葛也跟着上去。 　　出了2楼的扶梯，男子挂了电话，说朋友正在开会，让他上楼去会议室，但陌生人不能上去。男子跟小葛说，上去联系时还要用到手机，能不能再借用一下。小葛要他用身份证做抵押，男子说自己是车祸肇事方，身份证押在医院了，他随手解下手腕上的劳力士手表，称这块表价值七八十万，可以押在小葛处。小葛于是接过表，在2楼等待。 　　男子上楼后，始终不见回来，小葛找电话拨打自己的号码，发现已关机。 　　借了手机消失在人群中 　　其实，类似的一幕，在一个月前就上演过了。 　　5月27日13时许，15岁的小董戴着耳机哼着歌，走在正义路步行街上。突然有人拍了拍他的肩膀，小董回头看到一个比他高不了多少，但气场很足的男子。男子一副很着急的样子，向他借手机打电话。 　　“我刚从上海来，出了点急事，要找朋友帮忙。”见对方穿着剪裁合身的衬衣和西裤，手腕上戴着劳力士手表，腰间别着宝马车钥匙，还拿着一个不知啥牌子但豪气十足的钱包，不像是缺钱的人，小董就将手机借给对方。男子接过手机，一边打一边往前走，小董也随着对方脚步移动。 　　但走着走着，男子就将小董甩到身后十多米的距离，等小董反应过来，男子已经消失在人群中了。小董拨打自己的手机号，回答的只有“你拨打的电话已关机”提示音。 　　名表名包名车钥匙都是假的 　　今年5月至6月，五华公安分局护国派出所接到多起类似警情，且受骗对象都是些涉世未深的小年轻，年龄均在15至19岁之间。民警调查发现，几起案件均是同一人所为。在大多数案件中，男子均以抵押“名表”的手段骗走手机。 　　7月6日，在南屏街东口，一名受害人发现该男子的踪影，立即报警。民警赶到抓住该男子后，从其身上搜出3块“劳力士”手表，一块戴手腕上，另两块塞在“LV”钱包中。宝马车钥匙，做工粗糙，打开后没有齿轮。 　　经7名受害人指认，男子承认近两个月以来在南屏街附近诈骗手机。经查，嫌疑人周某，系安徽人，31岁，在犯案的两个月中，频繁往返于成都与昆明之间。 　　他佯装成白领精英，以100元一块的价格批发了一堆“劳力士”手表，宝马车钥匙是几块钱买来的模型，所谓的LV钱包，也是仿款。之所以选择小年轻作为目标，是因为这个年龄段的孩子有一定的经济基础，但又相对单纯。据办案民警介绍，周某选择的这些小年轻，均是来自于曲靖、昭通、玉溪等在昆打工的年轻人。 　　周某交代，得手的手机均被他以600元至700元不等的低价销赃，赃款早已被他花光了。目前，因涉嫌诈骗罪，周某已被刑事拘留。', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakwa4218938.shtml', '云南网', '2017-07-16 12:17:06', 'http://n.sinaimg.cn/tech/transform/20170716/3c0E-fyiavtv8173970.jpg');
INSERT INTO `science` VALUES ('126', '中国量产型彩虹5无人机首飞:可持续巡逻超20小时', '　　环球网军事报道 记者 马俊 来了来了！14日下午4时25分，在记者和工作人员的翘首以盼下，中国最大武装无人机“彩虹5”的量产型号完成首飞，成功降落在河北某机场。 　　挂载能力惊人 　　14日中午，环环（ID：huanqiu-com）刚在机场见到这架“彩虹5”时，工作人员正为它脱去厚重的“外套”，露出纤细的机身。从外形上看，新“彩虹5”明显比原先的试验型号大了一圈，整体轮廓也更为流畅。据介绍，它的翼展达21米，是当之无愧的中国最大武装无人机。 　　“彩虹”系列无人机总指挥欧忠明告诉环环（ID：huanqiu-com），根据客户提出的改进建议，新机型通过换装更大功率发动机和翼展更大的机翼，将最大起飞重量增加到3.3吨，外挂能力也达到惊人的1吨。如此强大的挂载能力使“彩虹5”能携带各种高精度雷达和光电探测设备，外挂点多达7个，可以自由选择50公斤、100公斤和200公斤精确炸弹或导弹。操纵人员在地面指挥方舱内只需鼠标轻轻一点，就可以实现2000公里范围内对地面或海上目标的致命打击。 　　设计思路先进 　　世界上具备高性能的大型无人机制造能力的国家并不多 ，就连航空强国俄罗斯也拙于此项。欧忠明介绍说，“彩虹5”的高性能得益于整体的优化设计和一系列先进技术的实施。例如它采用完全自主的起降设计，操纵者只需要下达简单指令，无人机就可以自主完成起飞、沿航路巡逻和降落 ，不需要人的过多参与。与美国的无人机运作模式相比，“彩虹5”可以减少操纵者的任务负担，使其将主要注意力集中在侦察、识别等核心使命，同时也降低了无人机飞行员的培训难度。 　　此外，复合材料占机体的比例，通常被看作现代航天器先进与否的重要指标，在此方面，“彩虹5”机身的复合材料利用率多达80%。环环（ID：huanqiu-com）注意到，在起飞前的检查维护时，一名工作人员干脆直接站在看似纤薄的机身上。欧忠明说，这样的重量对于“彩虹5”的结构强度而言，根本就是小菜一碟。 　　行动悄然无声 　　全部检查完毕后，“彩虹5”终于停在跑道尽头，准备起飞！由于它搭载的是一台活塞发动机，起飞时的动静远远小于普通喷气式军机，甚至比很多轻型运动飞机的噪音也要小。下午4时左右，没有任何花哨的动作，“彩虹5”沿着跑道滑跑几百米后，平稳地离地飞向远方——首飞成功！ 　　约20分钟后，记者们接到通知，“彩虹5”即将落地。可它在哪里呢？尽管机场附近相对安静，但无人机的微小噪音混杂在远处依稀可闻的汽车发动机中，很难识别。没有了声音作引导，外加它深灰色的低可视度涂装和狭小的正面截影，想在天边找到“彩虹5”的身影可真不容易。直到无人机已快要降落了，人群才发现它的影踪。和起飞时一样，“彩虹5”同样平稳地下降高度，尾部螺旋桨在离地几米处时就已停转，依靠滑翔轻盈地落地。 　　“彩虹5”真是太安静了。这是很多现场记者的第一感官。事实上，在用无人机打击缺乏防空探测能力的恐怖分子时，后者往往直到被炸弹命中前一刻才知道大难临头。“彩虹”系列无人机总工程师石文此前介绍说，新一代“彩虹”无人机可以在中高空发射导弹，而不用像美军捕食者无人机那样发射前需要降低高度。这样不但保证了无人机自身安全，也减少了被恐怖分子发现的几率。 　　当然“彩虹5”的未来作战对象并不局限于缺乏现代装备的恐怖分子。据介绍，“彩虹5”每次出动可以持续巡逻超过20小时，再加上它强大的挂载能力，可以加装各种海洋监视探测设备，执行海上巡航监管、航海保障乃至于海洋资源勘探任务。此外，今年美国对印出售的22架海上守卫者无人机，通过在大型无人机的机体上加装对海搜索雷达、磁异常探测器等设备执行广大海域的反潜任务。这种思路也为“彩虹5”的下一步改装提供了借鉴。', 'http://tech.sina.com.cn/2017-07-16/doc-ifyiakwa4218564.shtml', '环球网', '2017-07-16 11:27:54', 'http://n.sinaimg.cn/tech/transform/20170716/l7zD-fyiavtv8167075.jpg');
INSERT INTO `science` VALUES ('127', 'Uber物色新CEO：雅虎前CEO、Twitter前COO等人有戏？', '　　雷锋网按：据外媒报道，在上个月CEO特拉维斯·卡兰尼克宣布离职后，Uber马上启动由5名董事会成员组成的委员会，引入下任CEO。 　　上个月，Uber最大的风投机构Benchmark在内的五个主要投资人联名要求卡兰尼克辞职，并要求公司在领导团队上也需要作出改动。 　　据悉，卡拉尼克在与投资人进行数小时的谈判之后，最终同意离职。不过，他将继续留在Uber的董事会中。最近几个月来Uber高层不断震荡。今年年初，一位Uber前工程师对公司里存在的性骚扰问题进行了详细说明，引发了业界强烈的关注并触发了内部调查。此外，Uber也一直在处理和Google母公司旗下的无人驾驶汽车公司Waymo知识产权上的纠纷，并接受其涉及逃避执法软件工具的联邦调查。 　　就在离职前一周，卡拉尼克宣布无限期休假，在声明中，他表示是为了哀悼母亲和理清Uber的未来发展思路。但从诸位股东发表的声明中来看，卡拉尼克的休假并不能满足这些投资方的要求。Uber的市值已接近700亿美元。对于他们来说，卡拉尼克必须离开。 　　在经历了半个多月没有CEO的日子，Uber自身急切着寻找新的掌舵人。 　　雷锋网了解到，多名科技界精英进入了该委员会的招募视线，其中包括雅虎前CEO玛丽莎·梅耶尔（Marissa Mayer）、Twitter前首席运营官亚当·贝恩（Adam Bain）以及迪士尼前首席运营官汤姆·斯泰格斯（Tom Staggs）都会是重点招募对象，并与上述几位有着一定的接触。 　　其中，“落魄女王”梅耶尔再次高调进入人们的视线当中，并成为讨论最多的对象。 　　雅虎出售之后，梅耶尔获得2300万美元的离职金，包括300万美元的现金，以及价值2000万的股权，随之也成为失业人员。而现在，却有着给她再次证明自己的机会。 　　出任雅虎CEO期间，梅耶尔虽然饱受质疑，但不得不说，她仍旧是非常出色、经验丰富的管理者。而Uber作为一家已经成为独角兽的新巨头，急需一名成熟老道的领导者。此番双方如果均有意向，对Uber和梅耶尔本人，也都有可能是利好。 　　雷锋网获悉，除了CEO外，Uber高管层也需引入大量新血液。在卡兰尼克辞职之前，Uber一直在努力寻找新任COO，但Uber的其他高级管理职位仍然处于空缺状态，包括CFO、总裁、总法律顾问和工程高级副总裁等等。', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakwa4218604.shtml', '雷锋网', '2017-07-16 12:45:10', 'http://n.sinaimg.cn/tech/transform/20170628/jMh4-fyhneam4541751.jpg');
INSERT INTO `science` VALUES ('128', '女子执意带无标识充电宝上飞机 连打带踢将被拘留5天', '　　IT之家7月15日消息，据央视新闻报道，近日，青岛机场安检通道，安检员发现女子张某带了没有标注容量的充电宝，告知其不允许携带登机，可以暂存。张某不听劝阻，直接硬闯，对安检员连打带踢，导致安检通道被封闭。张某被带到派出所后，才意识到自己的错误。她将面临治安拘留5天的处罚。 　　坐飞机携带充电宝，你必须要知道这三点：①每个乘客携带的充电宝的个数不能超过两个；②容量不能超过160Wh；容量小于100Wh可直接带上飞机；容量在100Wh—160Wh之间，需经航空公司同意才可带上飞机；③标识不清、三无产品、质量不过关、不能确定容量的充电宝都不允许携带。', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakwa4218722.shtml', 'IT之家', '2017-07-16 11:54:58', 'http://n.sinaimg.cn/tech/transform/20170716/zkV4-fyiavtv8169587.jpg');
INSERT INTO `science` VALUES ('129', '3D打印技术造世界首个软体人工心脏：只能跳半小时', '　　3D打印技术正越来越广泛地应用到医学领域当中，给疾病患者带来福音。 　　雷锋网消息 日前，瑞士联邦理工学院的博士生尼古拉斯·科尔斯（Nicholas Cohrs）领导的团队，运用3D打印技术制造出了世界上第一个软体人工心脏。 　　目前用于泵送血液的人工心脏泵等装置仍存在许多缺点，比如金属和塑料材料难以与器官组织相融合，其不自然的运动方式也会给血液造成一定损伤。因此，科学家们一直在努力寻找新的解决方案，比如寻找塑性泡沫等生物相容性材料，以创造出更接近人类心脏的人工心脏泵，用更安全、舒适的方式来保持血液泵送。 　　3D打印技术的发展，使得科学家能够用柔软坚韧的材料制造出复杂的内部结构，打造性能更加优越的人造心脏。 　　尼古拉斯团队创造出的软体人工心脏，其硅心室中的泵送机制与人类极其相似。不过它的结构和人类心脏并非完全一致——心室之间不是瓣膜，而是充气和放气以便产生抽吸作用的心室。除了供血液进出的输入和输出端口，整个心脏基本是个密闭的整体，所以不需担心不同的内部机制如何组合。 　　尼古拉斯团队用类似血液的液体对这颗人工心脏进行了测试，结果很理想。不过这颗人造心脏还是一款概念产品，无法用于临床植入。因为用于制造这款心脏的材料不够坚韧，大约只能支撑半个小时，具体使用时间取决于心率的快慢。 　　不过这项研究成果的意义仍然十分重大，研究人员正计划使用更好的材料和设计打造出一颗更加强悍的心脏。或许要不了多久，医生就能使用这种软体人工心脏帮助心脏病患者重获健康了。 　　尼古拉斯团队的成员阿纳斯塔西奥斯·彼得鲁（Anastasios Petrou）也对自己的研究成果感到自豪，他表示“这项研究简直令我着迷”。', 'http://tech.sina.com.cn/it/2017-07-16/doc-ifyiakur9003274.shtml', '雷锋网', '2017-07-16 11:39:59', 'http://n.sinaimg.cn/tech/transform/20170716/ae4M-fyiavtv8169680.jpg');
INSERT INTO `science` VALUES ('130', '张培萌与歼-10谁跑的快？人机百米大战今日揭晓悬念', '张培萌人机大战 黄妈开嗓撒贝尼惊呆 　　新浪科技讯 北京时间7月16日消息，你知道，人类史上人机百米大战，比赛结果有多震撼人心吗？你知道，短短三分钟的一首歌，足以震碎十几个玻璃杯吗？你知道，一根羽毛就可以带来一场摧枯拉朽吗？ 7月16日，由央视综合频道和央视创造传媒联合制的首档大型科普节目《加油！向未来》第二季正式开播。这些让人脑洞大开的题目，在节目中以科学实验的形式呈现，不仅引发了全民关注与热烈讨论，科研科普专家深入浅出的解读更让网友大呼：“太好玩了！原来，科学如此神奇！” 　　歼-10首度亮相节目，大国重器助阵科普 　　在人机赛跑的实验中，民族骄傲歼-10的首次亮相就已经圈粉无数了。在接下来的歼-10与张培萌的世纪百米大战中，尚未等到网友拍大腿式叫好，机场的围观群众已经默默送上了他们的膝盖。殊不知，让他们佩服的是张培萌矫健的身姿还是雄鹰歼-10的威力呢？除了民族骄傲歼-10的首次亮相外，本季节目实验将会从海陆空、人工智能、物理、化学、宇宙等多个微观、宏观领域进行设计。比如，在后续实验中，更不乏与“蛟龙号”这样“高精尖”的科技项目进行合作。 　　节目组也邀请到了“亚洲第一女声”黄绮珊，前来参与声音震碎玻璃实验；黄妈一开嗓，玻璃杯哗哗震碎一堆。令人意想不到的是，一轮实验结束后，玩心大起的黄妈发现声音还有此种魔力，要求再来一次。 　　新一季的《加油！向未来》在赛制上也进行了全新升级，即以普通人为节目主体，全民互动参与的形式。由60位科学爱好者组成的科学猜想团，以18岁为界分为加油队和未来队进行PK。本季节目共分为十场常规赛和一场总决赛，前十期每期产生一位“科学猜想王”，在第十一期总决赛现场进行PK，最终诞生一位“年度科学猜想王”。 　　“撒贝尼”科学兄弟爆笑开场，小尼“上天”吓到失声 小尼高空当道具 小撒小尼亲密互动 　　除了在赛制上的创新升级，新一季的《加油！向未来》也推出了由撒贝宁、尼格买提搭档的最强兄弟组合“撒贝尼”。如何让一档科普节目，有趣而不失专业性，兼具娱乐性和科学的严谨性，科学兄弟撒贝宁、尼格买提找到了完美的平衡点。 　　节目中，撒贝宁化身“科普老司机“，左手科学常识，右手睿智而风趣的段子，选择观众最喜闻乐见的接受方式传播科学知识。在实验过程中，往往是撒贝宁抛出科学问题。而尼格买提则是变身”科学小白“，以观众视角问东问西，间接引导出科学原理。不仅如此，尼格买提还与撒贝宁组成了相爱相杀小剧场，一言不合便开启互怼模式，场面一度异常搞笑。 　　值得一提的是，在本期节目中，尼格买提甘当实验试验员，与大型实验机械来了次亲密接触。在木板平衡塔实验项目环节中，小尼一脸懵懂地充当平衡工具，被固定在实验器材的一端。随着实验的进行，小尼所在的高度也在发生变化。而此时的小尼，俨然一副吓坏了的表情，大气不敢出，只能悄悄地说了一句：“我现在都不敢说话！”即使小尼已经吓到“失声”，而正在操作整个系统的“平衡大师”韩遂宁依然淡定自若，最终呈现了一场完美的木板平衡塔实验。 　　有趣的是，当小尼刚从木板平衡塔试验中缓过神来。没想到在氦气球实验中，他却又一次成为了试验员。小撒下套忽悠小尼，直至小尼走出内场，靠近实验器材后才发觉又是虚惊一场，场面一度异常搞笑，让人不得不佩服这对逗趣不停的科学兄弟。 　　科研科普专家讲知识，新十万个为什么大揭秘 　　在赛制方面，节目组将“全民参与”作为新的亮点。而在节目嘉宾设置上，新一季《加油！向未来》也同样有所创新。节目组邀请了中科院研究员曹则贤、张双南成为节目的科学顾问，为观众解释各个实验中“高深”的科学原理。 　　更为难得的是，在本季中，科研科普专家走出了研究室，亲自参与节目实验、科学原理解析，与主持人、素人真实互动。据悉，两位科学顾问在节目中尽显人格魅力。曹则贤老师在节目中傲娇学霸上身，而张双南老师则是变身幽默达人，时不时地拿主持人开涮。与此同时，节目还与中科院科学传播局、中国科学院大学、中科院物理研究所、北京交通大学国家级物理实验教学示范中心等十余家国家级专业科学机构开展了深度合作。 　　早在节目未开播前，节目组推出了”新十万个为什么”H5，以趣味问答的方式，征集网友的好奇心。而通过 “新十万个为什么”H5征集来的问题，也将会在节目中由叶永烈、曹则贤、张双南等科研科普专家回答并整理成册。 　　7月16日晚，《加油！向未来》第二季的开播，则是《加油！向未来》节目组怀着拳拳之心打造的一个全民“科普之夜”。探索科学的征程已经吹响号角，别再让你的好奇心蒙尘，让我们一起去追寻世界的奥秘，探寻宇宙的魅力，加油向未来，科学一起猜！', 'http://tech.sina.com.cn/d/v/2017-07-16/doc-ifyiakwa4220729.shtml', '新浪科技', '2017-07-16 13:53:25', 'http://n.sinaimg.cn/tech/transform/20170716/M5Yf-fyiavtv8233913.jpg');
INSERT INTO `science` VALUES ('131', '中国人工智能人才缺口超500万 供求比例仅为1：10', '　　王兴军是一位数据挖掘高级工程师，按照时下大众的说法，他是最受青睐的人工智能人才，是传说中的“人工智能小圈子”里的一分子。在关闭招聘网站自己简历的情况下，王兴军每个月仍会收到4到5个猎头的电话，游说他去其它公司，但都被他谢绝。 　　在互联网圈子里，有一句话流传甚广：得人工智能者得天下。似乎还应加上一句：得人才者得人工智能。人工智能人才到底有多稀缺？打开某知名招聘网站，搜索“人工智能”后会出现很多招聘岗位，具有诱惑力的薪酬会让人眼前一亮。以人工智能算法工程师为例，该职位少则月薪1万、2万，多则年薪百万。不像其它行业占据职业高薪榜的是高级管理人才，在人工智能领域中，技术类工程师拿的是最高薪。然而，“坑”多“萝卜”少，人才哪里找？ 　　环球同此凉热 　　这种供需不平衡的现象不仅在中国有，在美国硅谷亦是如此。李开复去年曾公开透露，“在硅谷，做深度学习的人工智能博士生，现在一毕业就能拿到年薪200万到300万美元的录用通知，三大公司（谷歌、脸书和微软）都在用不合理的价钱挖人。” 　　据领英近日发布的《全球AI领域人才报告》显示，截至2017年一季度，基于领英平台的全球AI（人工智能）领域技术人才数量超过190万，其中美国相关人才总数超过85万，高居榜首，而中国的相关人才总数也超过5万人，位居全球第七。 　　然而，这些人才仍不能满足互联网行业的需求。曾在互联网培训行业有过十余年工作经验的陈荣根也观察到，目前互联网行业中最稀缺的就是人工智能人才。他说：“甚至很多行业巨头会用月薪几十万招聘人工智能顶级人才。”一些业内人士认为，国内的供求比例仅为1：10，供需严重失衡。工信部教育考试中心副主任周明也曾在2016年向媒体透露，中国人工智能人才缺口超过500万人。 　　为何人工智能人才如此稀缺？陈荣根分析，目前，国内外企业均把人工智能看成下一个变革的主要力量。AI技术人才，则是主导这一变革的中流砥柱。人工智能的竞争说到底是对人才的竞争，因此出现了各大互联网企业高薪挖人的现象。 　　还有业内人士表示，今天人工智能取得的成就很大程度上要归功于2010年“深度学习”技术取得的历史性突破，但由于大部分学术界人才还在学校或者科研院所中，所以真正能够投入业界的人才非常少。这也是造成目前人工智能人才如此稀缺的原因之一。 　　“远水”来解“近渴” 　　美国在人工智能方面布局很早，所以人才数量也较多，目前，人工智能人才有一半在美国。其中，华裔已经成为一股不可忽视的科研力量，人工智能领域华人力量的集体崛起已经成为一个现象。《全球AI领域人才报告》显示，美国已成中国AI人才最大回流来源，中国拥有海外工作经历的AI技术人才有43.9%来自美国。华人人才的持续回流，将加快缩短中国与美国等国家的技术差距。 　　人才需求的激增促使科技公司把目光瞄准国内外各大高校的人工智能科研人才，越来越多的企业在“挖人”方面不惜重金。据业内人士透露，人工智能的顶级人才回国后主要聚集在BAT（百度、阿里巴巴、腾讯）三家。究其原因，一方面是因为行业巨头有海量的数据能够为人工智能研究提供支撑，在业务层面上吸引了海归人才；另一方面，企业也愿意拿出高薪聘请他们做科研项目。有些中小企业尽管愿意出高薪，但却苦于没有海量数据，所以也很难请到这些顶级人才。究其原因，是因为数据是人工智能研究的基础，如果没有海量的数据，高水平的研究人员也难有作为。而海量数据恰恰是互联网行业巨头们的优势。 　　顶级人才有了，基层人才又是如何培养起来的呢？王兴军说：“如果单靠高校培养，时间上会有延迟，所以目前业内的基本情况是：顶层人工智能人才来自美国硅谷和国内外高校，一线员工有很大一部分是内部转岗，还有部分是通过校园招聘来的。” 　　本土力量崛起 　　目前，中国的人工智能人才在总量上与美国有差距，但发展前景看好。《全球AI领域人才报告》显示，中国资深人工智能人才数量与美国差距显著，10年从业者仅占38.7%，而美国的10年以上AI从业人员比例达到全球最高的71.5%。但中国人工智能人才也有其优势，即高学历者众多，其中研究生及以上学历的人才占比达到62.1%，领先于美国的56.5%。这意味着中国人工智能人才虽然比较年轻缺少经验，但学历高、接受能力强，后续潜力不容小觑。 　　近年来，校企联合逐渐紧密，培养了一批相关人才，人工智能人才团队也逐渐壮大。很多中国年轻的本土人工智能人才毕业于北京大学、清华大学、北京邮电大学、华中科技大学等20所高校，所以，这些高校在业内也被称为“AI人才的摇篮”。 　　在王兴军看来，中国在人工智能技术上与欧美国家相比还有很大差距，但在细分领域也有自己的独特之处。《全球AI领域人才报告》的结论也印证了这种观点。中美两国AI人才在不同细分领域的分布“各擅胜场”。其中，美国的AI基础层人才占比超七成，集中度很高；中国在AI技术层和应用层的人才分布更为广泛，特别是在机器人、图像识别、精准营销和自动驾驶等领域。 　　领英中国技术副总裁王迪认为，中国高潮迭起的互联网科技创新、庞大的数据量、丰富的应用场景和大量的资本涌入，使中国对于全球人才的吸引力不断增强，这将使中国成为全球人工智能赛道上一个最强有力的“赶超者”。 　　（来源：人民日报海外网 记者：孙任鹏）', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakur9002715.shtml', '新浪综合', '2017-07-16 11:29:55', 'http://n.sinaimg.cn/tech/transform/20170716/EarA-fyiavtv8160347.jpg');
INSERT INTO `science` VALUES ('132', '陈欧的赛道和聚美的迷茫：戴雨森和刘惠璞均已离开', '　　采写|张信宇 　　编辑|卧虫 　　那位“我为自己代言”的80后偶像陈欧，如今再次饱受舆论质疑。 　　“兄弟阋墙、业务凋敝”，媒体的报道标题如此形容现在的聚美优品。 　　截止7月14日，聚美优品的股价是2美元出头，市值只有三亿美元出头，这两个数字相比起2014年上市后昙花一现的39.45美元和57.8亿美元，已经缩水了95%。 　　5月1日发布的20-F年报文件显示，2016年聚美优品的营业收入为62.8亿元人民币，比2015年的73.4亿下降超过10亿。 　　更重要的是，陈欧创业故事中最重要的两名伙伴，联合创始人戴雨森和高级副总裁刘惠璞被报道均已经离开聚美优品——他们的名字至今仍挂在聚美优品网站高管序列中。 　　随后，三人在微博晒合照澄清传闻。此外，聚美回应称戴雨森“确实在看一些聚美上下游的产业，属于内部孵化的那种，并没有离开”，而刘惠璞在朋友圈回应“并未离开聚美，现在研究的是围绕聚美相关上下游进行新项目创业，像街电一样”。 　　两人的话术都高度一致，没有分工，加上陈欧自己的精力也开始大量向共享充电宝倾斜，让人很难推断现在还有谁在管理聚美的日常主营业务。 　　不止一位聚美优品在职或离职员工向PingWest品玩表示，戴雨森和刘惠璞“确实已经离开了”，戴雨森还去了一家著名的天使投资机构，他们之所以这样回应，可能是因为法律意义上还没有终止劳务合同，名义上仍然是聚美高管。 　　那么，陈欧和他自己代言的聚美优品，到底怎么了？ 　　（风靡一时的“聚美体”） 　　爬不出的争议漩涡 　　聚美2014年上市后，陈欧每过一段时间都要深陷舆论漩涡一次。 　　2014年6月，陈欧被质疑履历造假。陈欧创业出道以来，就一直以天才少年、精英海归的背景故事为人熟知。 　　他小学拿过不少奥数奖，小学毕业跳级读初二；16岁又考取新加坡南洋理工大学并拿到全额奖学金；2006年大四时（而这年他已经23岁）在校创立GGgama游戏平台（后改名Garena公司），成为海外最大的游戏对战平台之一；2007年卖掉公司股份去斯坦福读MBA深造；2009年毕业后回国拿到风投创业。 　　Garena公司CEO Forrest Li在接受媒体采访时曝出目前的Garena公司与陈欧并没有多少关系，而且陈欧是主动售卖当时公司股份，并非被排挤所致，由此引发媒体和公众对陈欧履历造假的大量质疑。 　　随后，在GGgame时期就跟随陈欧的创业伙伴刘辉撰文讲述大量新加坡时期的故事，替他回应了这些质疑。这件事由此算是告一段落，本来也就属于陈年旧事，双方各执一词，旁观者看个热闹也就罢了。 　　但到了2014年7月，一家供应商被曝通过伪造品牌授权书和报关单等材料，在各大平台电商售假，其中也包括聚美优品——而且是受影响最大、中枪最深的一个。 　　陈欧和聚美优品在那一年里与电商的最致命痛点——“假货”，紧紧地捆绑在了一起。 　　后来，聚美优品为了彻底解决假货问题，砍掉了整个第三方奢侈品业务，转向自营化妆品平台。 　　陈欧对外说，虽然会影响公司的短期利益，但无法容忍自己的“名字和假货挂钩”。 　　这次仓促的调头导致的结果是，聚美的股价在随后的大半年里一路下滑，直到12月陈欧在微博发文章《你永远不知道，陈欧这半年在做什么》，聚美的股价终于止跌反弹了一点点，不过仍然在12到15美元之间徘徊。 　　次年的五周年大促，聚美股价终于开始回升，但也仅持续了三四个月，股价又开始下跌，从此就再也没起来过。从2016年开始，纽交所上市公司聚美优品的股价就再也没站上过10美元——而它的IPO价格是22美元。 　　不理想的股价再次引发舆论事件。 　　2016年2月，聚美优品宣布收到来自聚美优品CEO陈欧、戴雨森、红杉资本等递交的每份ADS 7美元价格的私有化申请，称股价“被严重低估”。 　　包括i美股CEO梁剑、晨兴资本合伙人张斐等在内的评论者纷纷表示，聚美的三折私有化损害小股东利益，将严重影响美国市场对其他中概股公司的信心。金沙江创投合伙人朱啸虎更直接把陈欧称为“陈七块”。 　　更使这条新闻从财经版块走向社会版块的是，一些中国的中小投资者开始组建维权群，准备向美国证券交易委员会申诉，还宣称要前往位于北京东四十条的聚美优品总部楼下静立抗议。 　　在种种因素影响下，聚美优品的私有化暂时没有成功，而其现在的股价比起7美元，又只有三折了。 　　（聚美优品IPO） 　　醉人的陈欧营销术 　　聚美优品在遭遇负面舆论事件时总会遭遇更多压力，其中很大一部分原因是，陈欧从创业伊始就精于高调营销。 　　“我为自己代言”的陈欧体最早出自2011年的广告，2012年的版本令这句话真正深入人心。 　　刚上线不久的聚美优品由于融资少，市场经费不足，没有聘请明星代言人，而是选择由老板陈欧自己来做广告主角，参与广告全程制作。 　　幸运的是，陈欧在广告营销方面极具天赋和能力，除了帅气的外型，他对于中国年轻人情感共鸣的把握更为精微，由此拟出的文案很快就传染到社交网络的每一个角落。 　　而陈欧的自我营销却远不止广告而已。 　　从2011年开始，陈欧就不断在《非你莫属》《快乐女声》《天天向上》等高收视率的电视台娱乐综艺节目中亮相。这些节目的观众也主要是聚美的目标用户年轻群体，聚美早期的知名度随着陈欧的频繁上镜迅速提高，上市前的平均获客成本只有6美元。 　　聚美成立两年后就宣告盈利，在电商公司的发展史上不得不说是一个经典案例，这与其高效率低支出的市场推广成本是分不开的。 　　然而，这种创始人营销的方式使陈欧尝到了甜头，却也麻醉了他，使他在这条营销道路上一去不复返。 　　陈欧2010年创立聚美，恰逢新浪微博兴起，陈欧在其后的创业道路上充分利用了微博这个平台。到现在，陈欧已经在微博上收获了4500多万的关注者，是马云加王思聪的总和。 　　据多名聚美优品前员工称，聚美是微博的大广告客户，而陈欧的个人微博就是聚美最大的流量入口，聚美的业务早已与微博曝光深度结合了。 　　2010年12月，陈欧发微博替留学生群体发声，吐槽北京高房价、高物价、房租贵、马路拥堵，“加上现在各种各样优惠外国人歧视外地人的政策，北京对海归还有吸引力吗？”，还会讨论被剥夺的“公民权利”；2011年7月，陈欧也参与了当时遍布全微博的温州动车事件的讨论，“财富和成功，并不能给与中国人足够的安全感，回国奋斗的最终目的，难道是出国过好日子？我以前没法理解，看到食品安全，看到高铁，我逐渐理解他们（事业有成、赚钱移民的前辈）了。” 　　这条微博被转发了七百多次，与现在动辄转发讨论数以万计的陈欧的微博当然没法比，但跟当时他的其它微博比起来，影响力是相当大的。 　　更有一名网友评论说：“他们说你是官二代，看到你说这些敏感的，俺表示佩服。90后的我表示喜欢你，支持你，支持聚美优品。” 　　到了2013年，陈欧最受欢迎的微博已经变成了各种鸡汤文：“昨天没有如果，因为已经到了今天，明天只有结果，由你的今天决定”，“有时忙就是生活的方式，年轻的你现在不忙，更待何时呢？”这些小段子的评论转发往往是其它微博的几十上百倍，引发大量年轻人的情绪共鸣。 　　最近两年，陈欧对于公众热点事件的借势营销已经驾轻就熟、炉火纯青。 　　2016年7月，南海仲裁案引起舆论关注，许多娱乐明星参与表态“中国，一点也不能少”，陈欧立刻跟进，“今天的红包我不发链接了，我只发口令，聚美app搜‘南海是中国的’，记得不要复制粘贴，一个字一个字打，要打得铿锵有力”。 　　2016年8月里约奥运会期间，澳大利亚游泳选手霍顿因其关于中国选手孙杨的言论在中国舆论场倍受争议，陈欧先发了一条微博“听说霍顿是sb”，后紧跟另一条微博“应大家要求，放两个聚美红包口令，上联：‘霍顿是SB’；下联：‘孙杨加油’；横批：去聚美app搜索口令领红包”。 　　不久之后的王宝强离婚、网络诈骗等热点，陈欧在微博上更是一个不落地跟上了舆论节奏，只是用词愈发直白粗鄙，观点迎合大多数网友的情绪并更为极端化表达，令人很难将这个陈欧跟六七年前意气风发的斯坦福毕业生联系在一起。 　　中国舆论场上抵制韩国乐天公司时，陈欧同样在微博上表态：“这次301（聚美的周年大促）乐天的产品我们都下架了，以后也打死不卖，爷不乐意，辣鸡”。 　　而在2012年钓鱼岛事件时，陈欧的态度却截然相反：“抵制，带不来国力的增强，打砸国人买的日货，伤害的，只是同胞的身心。要从根本上解决钓鱼岛的问题，只能自强，让中国更多的企业像联想一样走向世界，挣世界的钱，强中华之国力。韩国有了三星这样足以挑战世界巨头的企业，相信中国的企业，也会快速崛起”。 　　当然，两条微博都收获了相对大量的粉丝支持，尤其是号称下架乐天产品的那条。 　　事实上，日韩产品在聚美的业务构成里占到很大比重，聚美还曾在韩国设立分公司，2015年初开始做海淘时，陈欧也花了大量时间精力在韩国，在他的微博上经常能看到聚美与韩国公司的合作进程。 　 　　（陈欧还是那个陈欧，而聚美又该何去何从） 　　风口追逐者 　　三年前，陈欧带领聚美优品在海外上市，一时风光无两。 　　华尔街的投资人们看到，这家创立仅四年的中国公司，已经连续盈利7个季度，总共融资仅1300万美元，而CEO年仅31岁。 　　许多聚美员工都知道，陈欧的确是个工作狂型的创业者，只要不出差或应酬，他基本上时间都会在中汇广场25楼的办公室里，早上8点到晚上10点，工作餐也非常简单。 　　但是聚美早期的成功并非主要来自于陈欧的勤奋，而更多的是化妆品垂直电商的稀缺。 　　在聚美刚上线的时候，京东还在烧钱卖3C，天猫还只是淘宝商城，市场上没什么大玩家，而消费者的需求却急需满足。 　　此外，聚美相比起其他电商平台，做美妆特卖有价格优势，SKU也足够多，主要受众就是年轻女性尤其是大学女生，她们还没对美妆品牌形成很立体的认识，也没有固定的忠诚的品牌和购买渠道，这是聚美主营业务的空间所在。 　　但是2016年的收入下降说明，中国化妆品电商的市场已近饱和，消费者购买渠道越来越多样化，物流规模效应不够，即使聚美仍然能依靠其主营业务良好盈利，但却没有什么增长空间了。 　　多名聚美前员工证实，聚美优品的平均客单价只有60块，相当于一支中低档口红的价格。 　　陈欧其实很早就认识到了这点，他寻求拓展新业务的意愿最早在2013年底就开始了。 　　当时小米、魅族等的成功证明了国产智能手机市场的广阔，罗永浩也开始做锤子手机，明星追风贴牌做手机的更不少，陈欧似乎也不愿错过。 　　媒体报道称，陈欧在上市前后开始做智能手机，主打功能是能给其他手机充电，但在投入千万级别的资金后，该项目宣告失败。 　　在手机之后，聚美又相继或投资或内部孵化了无人机、海淘、健康餐、直播和社区化、影视等项目，软硬结合，距离聚美主营业务有近有远，有些还煞费苦心地糅合成了“颜值经济”，直到今年新公布的空气净化器和共享充电宝，这几年流行过的风口，陈欧其实涉足过大半。 　　一位在职的聚美员工透露，陈欧不止一次说起错过投摩拜的遗憾。最初，陈欧也觉得摩拜这个项目好，但当时在全身心做直播，没有花时间去研究共享单车，“所以他现在看好充电宝，就觉得不能再错过了。” 　　其中有些项目，得不到董事会通过，陈欧就将其挂靠在别的部门，浅尝辄止，属于“试试看，万一能成呢”的那种，比如健康餐项目，组织关系从属于市场部下的无线推广部。 　　另外一些项目，则倾尽全公司资源，比如直播。整个2016年公司对直播的期待值都非常高，各个项目部门都可能会被抽调人力进入直播团队，都需要为聚美直播贡献内容。 　　它们的共同点就是，只要是新项目，都会被安排在距离陈欧办公室比较近的地方办公，陈欧也会将他的精力和时间向每个时期的新项目倾斜。并且，过去追过风口的这些旧项目，包括耗费大量资源的直播在内，似乎没有一个可以说是获得最终成功。 　　新旧项目更迭很快，聚美优品的人员流动性即使在互联网公司里也是算相对较大的。 　　一位已经离职的项目负责人透露，他曾经见识过办公桌对面10个人在一个月内全都换掉了。有一个项目组里做设计的员工，离职前在聚美待了近三年，薪资从4000元涨到4500元；待过两年的市场员工，也仅从5000元涨到6000元。 　　但是为什么还有许多人愿意入职或留在聚美呢？ 　　一位前聚美员工也给出了他的解释：“聚美的管理很松散。你平时来上班打了卡之后就可以走了，旁边也很繁华，去逛商城也没人管你。一次我们整个部门20多号人去团建，一下子从公司消失了，也不用请假。” 　　“虽然管理层都还是很辛苦的，但下面很多人去聚美，不是为了工资，也不是要做什么伟大的事，就是找个地方待一下那种感觉。公司地址在东二环，纽交所上市，说出去也很有面子。” 　　到了2017年5月，陈欧刚召开完空气净化器的发布会，就宣布三亿投资街电科技，与王思聪斗嘴，后续还打算追加投资一亿美元，进入了共享充电宝领域，看上去离聚美的主营业务更远了。 　　作为曾被树立成青年偶像的创业者，陈欧对外展现形象的时候仍总是很自信，“我对自己的商业判断力从来都是自信的，聚美最原始的推动力是我的商业判断”，“认准的事情怎么可能有做不好的，无非是你最后能不能成为那个Winner”。 　　陈欧对媒体说这次要借充电宝换个赛道，但其实，他在狂奔路上的赛道更换，从未停止过。', 'http://tech.sina.com.cn/i/2017-07-16/doc-ifyiakur9002944.shtml', 'PingWest', '2017-07-16 12:28:00', 'http://n.sinaimg.cn/tech/transform/20170716/Q-_6-fyiavtv8164612.jpg');

-- ----------------------------
-- Table structure for `society`
-- ----------------------------
DROP TABLE IF EXISTS `society`;
CREATE TABLE `society` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `publishTime` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of society
-- ----------------------------
INSERT INTO `society` VALUES ('85', '中国最感人的请假条，总经理都感动快哭了', '员工请假去表白单恋多年的女生，这么让人感动的请假条，总经理看到后都快感动哭了，审批结语更让人振奋、成功有奖励。遇到这么不错的上司，以后得好好工作。这样的文言文请假条，如果老师不是学语文的，看不懂怎么办？小编大致一瞧，基本意思很简单：马上清明节，娘亲要我回去，希望批准。如果领导批准了这张请假条，那以后是不是做了噩梦都可以请假？直接让上帝告诉你下一注彩票买什么不就得了？夫妻两常年分居，这种感觉只有本人才明白。因为快忘记老公的长相了，作为领导肯定是要批准的，肯定要批啊。这位真是好老公的代表，可谓是煞费苦心。不过部门领导是过来人；估计他家媳妇也是个喜欢购物的主。遇到这样的请假理由，领导倒是很通情达理：批准，这点钱你拿去，帮点忙。在幼儿园里面，出了小屁孩就是女性老师，所以要请假去找男朋友。多么振奋人心的批语，需要支援什么，还有没有不怕事闹大的。据说100个人中只有一个知道正确答案，在评论里写上你的回答看看这个聪明人是不是你', 'http://www.toutiao.com/group/6441809780695679233/', '海外游记', '2017-07-16 10:59:42', 'http://p3.pstatp.com/list/190x124/2ec60000b79b1b8996ba');
INSERT INTO `society` VALUES ('86', '中国姐妹日本遇害追踪：父亲办签证，将赴日与两爱女诀别', '据日本媒体7月15日报道，日本警方公布的在日遇害中国籍姐妹的尸检报告显示，两人因脖子被勒住窒息死亡。中国驻日本大使馆也于当天发文，提醒在日中国公民加强自我保护。7月14日晚，重案组37号(微信ID:zhonganzu37)致电遇害姐妹的父亲陈先生，他表示最初以为两个孩子只是遭遇绑架，没想到会被害死。15日下午重案组37号探员再次致电陈先生，接听电话的邻居称陈先生精神状态不好，一直躺在床上，亲友们正在帮助他办理签证，使其能尽快赴日，与已经阴阳相隔的两个女儿再见一面。▲遇害的陈宝兰、陈宝珍姐妹。 资料图片父亲将赴日 “以为她们只是被绑架”“我现在脑子乱得很”，7月14日晚间，重案组37号(微信ID:zhonganzu37)联系到遇害姐妹的父亲陈先生。家住福建省的陈先生说，7月5日下午5点左右，他还与陈宝兰通过微信联络，陈宝兰因感冒在家休息。而7日傍晚，陈宝兰同事告诉他，6日陈宝兰手机关机，一直联系不上，随后同事来到陈宝兰家门口，与警察一起进去，发现屋内没人，但通过视频监控画面看到可疑男子拖着箱子出门。“陈宝兰同事说可能认识那个男子，有点变态，我很担心，以为她们只是被绑架。”陈先生说，没想到女儿们会被害死，他怀疑是两个女儿在日本的朋友害的。陈先生说，陈宝兰7年前高中毕业便去了日本，妹妹陈宝珍2年后也到日本和姐姐一起生活，陈宝珍在念书，但他也不知道是在哪个学校，姐姐已经工作。平日姐妹俩经常通过微信和家人联系，报个平安。7月15日下午，重案组37号探员再次致电遇害姐妹的父亲陈先生。电话由其邻居接听，称陈先生目前“精神不太好，一直躺在床上”。 这位领居表示，陈先生有三女一子共四个孩子。其中大女儿远嫁外地，在日本遇害的是另两个女儿，儿子目前也外出不在家，“（亲友）现在正在给他办签证，估计到了（日本）那边就可以知道更多情况。”▲发现疑似失踪中国姐妹遗体的山林。 视频截图姐妹窒息而死 遗体有淤青疑遭殴打据日本共同社报道，关于从神奈川县秦野市山林的旅行袋中发现二十多岁中国籍姐妹遗体事件，伊势佐木警署专案组15日表示，司法解剖结果显示两人的死因均为颈部遭到压迫导致的窒息死亡。报道援引专案组介绍，遗体分别是姐姐陈宝兰和妹妹陈宝珍。除颈部遭压迫之外，身体上还有淤青。据悉，死亡时间为7月上旬。另据《读卖新闻》报道，姐妹俩被发现时身体已发生变色，疑生前遭受殴打。NHK最新消息显示，警察透露，中国籍姐妹姐姐陈宝兰和妹妹陈宝珍分别于2009年、2012年赴日留学。妹妹陈宝珍就读于与游戏软件相关的职业院校。认识姐妹俩的某公司董事长称，她们在横滨市繁华街的某家饮食店打工。饮食店关系者称：“前几天开始无法与姐妹俩取得联系，听说她们去世的消息深感遗憾。同一个地方打工的同事们也都十分震惊。我们想知道在她们身上究竟发生了什么。”15日上午，重案组37号(微信ID:zhonganzu37)致电姐妹俩居住的公寓方，对方表示不便回答相关问题。▲陈宝兰、陈宝珍姐妹在日本横滨的住所。 视频截图嫌疑人被控制面临逮捕 与姐姐有纠葛据日本新闻网消息称，涉嫌杀害中国籍姐妹的日本男子，目前已被神奈川县警察本部特别搜查组控制，即将面临逮捕。日本新闻网消息显示，该男子年龄30多岁，家住横滨市，已婚。这名男子在中国籍姐妹的姐姐陈宝兰打工的酒吧，与陈宝兰相识，两人有感情和金钱纠葛。在中国人姐妹陈宝兰(25岁)、陈宝珍(22岁)失踪后，警方根据公寓楼的监控录像，发现了这名男子在7月6日凌晨用钥匙开门进入陈宝兰姐妹居住的房间，在妹妹陈宝珍回家之后，又几次出入，并从房间搬走几只箱子。▲日本电视台对陈宝兰、陈宝珍姐妹的报道。 视频截图警察对这名男子的驾车记录进行了调查，发现其进入过神奈川县秦野市寺山的山林，于是以这个山林为中心，组织了大批警察进行了重点搜查，于13日深夜11时40分，在山林里发现了两只箱子，在箱子里发现了姐妹俩的遗体，遗体部分已经腐烂。消息称，这名男子目前保持沉默。警方正在抓紧收集相关证据，在证据确凿后对其实施逮捕。中国驻日本大使馆15日发布领事提醒称，近年来，日本发生数起涉及在日中国公民的偷窃、暴力、杀人、抢劫等类型的刑事案件，致使在日中国公民蒙受人身、财物方面的损失。大使馆提醒在日中国公民加强自我保护，尽量不要独自前往偏僻的地方，注意防范路上抢劫;勿搭乘陌生人车辆，也不要让陌生人搭车;交友须慎重，勿与背景不明的人来往;勿单独与陌生人约会，也不要向陌生人透漏个人信息。▲中国驻日本大使馆15日提醒在日中国公民加强自我保护。 中国驻日使馆官网截图链接日本近年已发生多起中国女性命案去年10月，据日本媒体报道，日本法务省的数据显示，在日生活的中国人达67.75万人，在所有生活在日本的外国人中，中国人是最多的。随着赴日中国人的增多，人身安全备受关注。近几年来，已发生了多起在日华人命案。今年1月2日，在日本爱知县丰川市丰川町的一家商务酒店内，发现了一具中国女子的尸体。当地警方随后逮捕了20岁的犯罪嫌疑人王某，王某承认了杀人嫌疑。据介绍，死者年仅18岁，2016年12月31日和王某入住事发酒店，计划住3天2晚。1日凌晨，嫌疑人王某独自走出酒店。2016年11月3日，一名名叫江歌的中国女子在日本东京都中野区中野的公寓中颈部被刺惨遭杀害。死者来自中国山东青岛，今年24岁，在东京语言学校就读，后于今年4月份成为日本法政大学研究生院的一名硕士生，为帮室友挡住前男友骚扰而惨遭杀害。2011年10月，日本埼玉县警方从一辆因涉嫌盗窃案件被没收的家用轿车中发现了一具已经变成白骨的女性尸体。据车主介绍，这个变成白骨的女性，是一名跟自己熟识的中国女子。2012年1月，警方锁定杀害这名中国女子的凶手，系日本籍无业男子斋藤胜彦。新京报记者 赵蕾 潘佳锟 见习记者 黄钟方辰编辑 张太凌校对 陆爱英本文为重案组37号(微信ID:zhonganzu37)原创内容未经新京报书面授权，不得转载和使用欢迎朋友圈分享', 'http://www.toutiao.com/group/6442974339720577281/', '重案组37号', '2017-07-16 11:59:07', 'http://p3.pstatp.com/list/190x124/2ec40000ea79147f6b47');
INSERT INTO `society` VALUES ('87', '老人捡破烂为生，儿媳见他有存款将其接回家住，去世后孙儿撕掉存单', '话说村里有个刘老汉，家里有一儿一女，由于家里贫穷，好不容易把孩子养大了，老伴就患病了，由于舍不得花钱治病，不久老伴就去世了。用家里仅有的钱娶回来个媳妇。图文无关媳妇娶进来后一直嚷嚷家里太穷了，她嫌老公窝囊，说自己当初被骗了，嫁给了个穷鬼。所以，当老人女儿找婆家的时候，她就狮子大开口，找男方要彩礼钱。可是本身老汉女儿各方面一般，哪有人肯出一大笔彩礼钱啊。就这样拖到了29，这天终于有人愿意出15万彩礼来娶这个姑娘。原来这是个死了媳妇的光棍。当女儿嫁过去才知道原来嫁了个酒鬼，喝完酒还家暴。第一个老婆是被活活打死的。老人女儿和他生活了一年多，身上经常带着伤。回娘家还被嫂子奚落。终于忍受不了就含恨自杀了。因为这事，刘老汉和媳妇矛盾越来越深。强势的媳妇把老人赶了出去。老人单住时几乎不和儿媳妇说话，只是孙子倒是经常来看老人，也偷偷的把家里的好吃的带过来让老人吃。图文无关孙子学习很好。顺利的考上大学，儿媳妇却说上学有什么用啊不让他读。孙子哭着找到老人，老人把自己这么多年积攒的一万偷偷塞给了他让他去学校别亏待了自己。孙子大二时，家里老人病了，被邻居发现后送到医院，谁知儿媳知道后怕花钱就不去医院看望，后来还是孙子用自己的奖学金和打工的钱付了医药费，老人才得以获救。老人好了后，回到家，儿媳妇恶狠狠的告诉他，孙子帮他出的医药费必须还清。80岁的老人不得不离开家到省城去乞讨，拾荒。老人年龄大了，自己勉强维持生活，哪有钱攒下啊。就这样在外面飘了五年。身体已经是越来越不行了，可是也不敢回家。突然有一天，儿媳妇出现在他面前，苦苦哀求他回去甚至给他下跪了，忏悔了以前的过错，让他感到很是诧异，可是看到她确实是诚心的就跟着回去了。图文无关之后的三年，儿媳妇尽心赡养老人。每天变着花样的做好吃的，还陪着他说说话。这让老人很是欣慰，逢人便夸自己的儿媳怎么怎么懂事。直到老人没有任何遗憾的离开人世。办完老人的丧事，儿媳迫不及待的找到儿子，让他把老人的存款取出来。原来当初儿子把四张写有老人名字的存单给母亲看过，四十万啊一共。说是老人拾荒在外攒下的本来是给他的，只是那时候他还在读书，没办法也没时间照顾老人，于是跟母亲商量，如果母亲把老人接回家好好照顾。老人去世后，他将分30万给母亲。这时见儿子把存单都拿出来，只是在父母面前展示了一下便把它撕碎了。并说这些都是他找人做出来的足以以假乱真。他是见自己的爷爷年龄那么大了还在外面受苦，不得已才想的一招。儿子还说，你们也有老的那一天，别让爷爷的今天成为你们的明天。说的他的母亲惭愧的低下了头。', 'http://www.toutiao.com/group/6440571334949945602/', '爱会与你同在', '2017-07-16 10:59:52', 'http://p3.pstatp.com/list/190x124/2eb900012ca67a85029f');
INSERT INTO `society` VALUES ('88', '考入清华的贫困生：捡了六年垃圾和轮椅上的文盲母亲', '一夜之间，庞众望成了“超级网红”。这个农村少年无奈地站在聚光灯下，有些不适。于是，他选择了躲避，不想将自己完全暴露。▲百度上关于庞众望被清华录取的新闻有7万多条但是，庞众望的故事却流传开来。有网友说：孩子，你感动了中国——7月13日，清华大学河北招生组相关负责老师向红星新闻确认，庞众望已被清华录取。网友们纷纷感慨，寒门亦能出贵子。当然，更多人被庞众望的坚韧所触动。18年来，这个农村少年到底经历了什么？红星新闻记者赶赴河北吴桥，专访庞众望和他的母亲庞志芹，还原这个“网红”的成长之路。▲庞众望接受红星新闻专访无奈的组合“这个家庭，不能不努力”直到现在，庞书强（庞众望外公）都无法想象，为什么脊柱裂会“光顾”自己的女儿。这种病变是先天性的，不可逆转。所以，庞志芹一出生就和病痛相伴。溢出的脊液在她的腰部留下一个巨大的肿囊，致使她下肢发育不全，因此行动不便，有时候，大小便都会失禁。庞书强只是河北吴桥县庞庄的一个普通村民，看着女儿被病痛折磨，他内心崩溃，“但去了很多地方治，都没用。只能带回家自己慢慢养。”在20多岁时，因为爬行太多，庞志芹的腿部被磨破，严重发炎，一时难以恢复，恐要危及生命，不得不将双腿截去。26岁那年，父亲将她许给同村一位精神分裂症患者，“只能做些简单的事情。”婚后，庞志芹仍由父母照顾，而她的丈夫则在亲戚家打零工，偶尔回家。无疑，这是一个无奈的组合。▲庞志芹的床头随时备着棉签还有消炎的药，腰后的肿囊随时可能发作直到1999年2月8日，众望出生。一切才开始改变。庞志芹告诉红星新闻，孩子的名字是她起的，“我没读过一天书，但我羡慕你们读书人。我和孩子的爸爸都不行，所以就把全部希望寄托在众望身上。这个家庭，不能不努力。”“众望所归嘛。”提及儿子，庞志芹大笑，如释重负。那个时候，庞志芹看着儿子蹦跳着过了童年，自己每天虽被病痛折磨，但总算有了念想。然而，噩耗传来。恐怖先心病母亲坐着轮椅挨家挨户借钱众望从小由外公外婆带大。庞书强向红星新闻回忆，孩子5岁时，开始在村里上学前班，但嘴唇莫名发紫，胸前有肿块突出，而且稍微奔跑，就会哮喘，“我经常看报纸，就感觉，孩子的症状像极了先天性心脏病。”于是，庞书强瞒着女儿，将众望带去吴桥二院检查。结果，正如所料——孩子得了先心病。最终，这一疾病在吴桥县人民医院确诊。庞书强抑郁而归，内心挣扎，不敢将消息告诉女儿。不料，年仅5岁的众望回到家中，即向母亲“告密”：“妈妈，医生说我的病很重。”▲庞众望和母亲的照片庞书强这才将实情告诉女儿。庞志芹向红星新闻坦承，当时，她接受不了，她感觉自己又陷入了无尽黑暗。她挣扎，但无力。“我心里担心，这种病，也许可以治，但又怕家里承受不起。”不过，无论如何，庞志芹也不忍心就此放弃。彼时，一家人只能勉强糊口，更何谈积蓄。几个月过去了，庞志芹心急如焚。于是，她坐在轮椅上，让6岁的儿子推着，挨家挨户借钱，“走了20多户亲朋，借了4万多元。”2005年，众望在河北省第四人民医院进行手术。“咋能想到，只花了3万1，手术就成功了。”捡废品6年“咱家，为什么是我哄你呀。”住院8天后，众望已经活泼得像只兔子，能蹦会跳。病好了，但是这个家也更拮据了。即使如此，庞志芹还是决意要将孩子送去上学，“我羡慕有文化的人，真的羡慕，所以就尽最大可能让孩子上学。”那个时候，众望只是个6岁的孩子。但他已意识到，他必须为这个家做点什么。于是，他开始不断将废铁、塑料瓶、纸板……捡回家中。很多时候，捡回的废品只能卖几毛钱，但是这也足够令庞志芹感动得痛哭流涕了。▲庞众望的母亲、姥姥、姥爷这样的日子一直持续到2011年。2011年下半年，众望要去邻村马奇中学读初中了。初中时，众望和妈妈的距离是15里地。平时住校，周末回家。三年里，众望每周的生活费只有20元，但庞志芹告诉红星新闻，“他经常会把生活费攒下来，再给我。然后说，妈妈，这是我给你攒的钱。”庞志芹仍在被病痛折磨，她几乎所有的时间，只能自己在家消磨。最幸福的时候，是看到读书的儿子得奖了，然后，回到家中就给她一个“熊抱”。她告诉红星新闻，“人们说我坚强，但其实不是，我经常背地里哭。”“但两三岁时，众望就开始哄我。”有一次，幼小的众望眯着眼睛问庞志芹，“妈妈，为什么人家都是，妈妈哄孩子，咱家是，我哄你呀。”庞志芹泪眼朦胧，无法回答，但她感觉有了依靠，心里踏实些了。写给妈妈的30封信“把她留在家里，心里难受”日子过得很慢，但晃晃悠悠地总还要前行。2014年，众望要去50里外的吴桥上高中了，庞志芹有些怅然若失。父母在一百米外的邻屋，丈夫跟着亲戚在外打工。她守着一张床、一把轮椅，听着收音机里的热闹，看着电视里的喧嚣，有些空空落落。众望又何尝不是。他告诉红星新闻，“感觉只留她在家中，心里难受。”2014年暑假，众望突然想到，给妈妈写信吧，“每天写一点，一共写了30封。上学前，都交给姥爷（外公），让他每天念一封给妈妈听。过渡下。”庞志芹被暖到了。她说，在信里，她被儿子“教训”了，让她舍得吃，让她别喝生水……▲庞家借住在亲戚家已十多年，院里种了桃树大概在初中时，庞志芹成了低保户。“那时，每人每月只有15元，3个人45元。现在，涨了些，3个人370元。”众望做完手术后，庞家已是“债台高筑”。于是，众望捡了6年废品；庞志芹做了几年针线活；她的丈夫在亲戚家打零工，平均每月有几百元的收入。侧卧在铁架床上的庞志芹眯着眼睛，突然来了精神，“我借的钱都还清了。”她说，“我常告诉众望，人要守信。损人不利己的事儿不能干，损人利己的坚决不干。”被翻新的老屋“坚持了这么多年，孩子不容易”6月23日凌晨，河北高考成绩公布。当时，众望在手机上查到了自己的分数——684分。庞志芹回忆，出成绩前，众望感觉自己没有发挥好。但成绩出了，这么高分，他还是不满意，“如果能多考10分，就不用清华的分了。”众望很快便沉沉睡去。但是庞志芹却一宿无眠，“我很知足了。经常看电视，我知道，这个分不低了。坚持了这么多年，孩子不容易。”▲庞众望家刚被装修完，屋内一片凌乱众望就要进入清华。他是近十多年来吴桥首个考入清华的学生，也成了全县的骄傲。在众望的成绩公布十多天后，镇里派来的一支装修队进了庞家，将他们住了十几年的老屋翻新，吊顶，刮灰，还安装了暖气。7月14日，红星新闻在采访时，屋内的刺鼻味道还未散去。满墙的奖状也被打包起来，放在一角。庞志芹说，不准备再往上去贴了，“众望又有了新的起点。”众望的故事感动了很多人，让人们再次看到了坚韧的力量。他们纷纷表达了捐助的愿望，但是被庞家一一婉拒。庞志芹说，“之所以拒绝，是因为我们暂时不需要，自己能够解决。有的人比我们困难，捐给他们不是更好吗？”采访最后，庞志芹向红星新闻反复说，“父母不行，儿子如果再不行，这日子咋过。”她说，众望应该继续往上走，“读个研究生，永远别懈怠。”但庞志芹也没有掩饰自己的担忧，“之前是，学习学习再学习，但上大学后，还要处理那么多关系，怕他走歪路，怕他不上进。”对话庞众望：妈妈给了我生命，也影响了我的性格自己能解决学费，不想欠人人情今日(7月15日)清晨，阵雨初歇。吴桥街头，人们各自奔走。7点30分，庞众望准时出现在约定地点。那是一个瘦弱的少年，身高178cm，但只有105斤。很热情，但又显得有些尴尬。▲表弟成了庞众望的小跟班红星新闻：你几岁时意识到家里的困难？当时怎么想？庞众望：6岁吧，也就是去做先心病手术前后。手术前，我已经在做些家务，不过，没有意识。但是，当妈妈让我推着她的轮椅，挨家挨户借钱的时候，我受到了触动。尤其是手术以后，为了还钱，妈妈每天熬夜给人家做针线活，手经常被扎破。我看着很心疼，就感觉，我应该为家里做点什么。红星新闻：所以那么小就去捡废品了？庞众望：嗯。手术以后没多久，就上了小学。直到初中住校后，就没捡了，一共6年。当时，就想赚钱。红星新闻：既上学又捡废品？庞众望：不影响上课。一般都是放学的时候去捡。中午不午休，直接就去了，下午放学再继续。能卖钱的都捡，但主要是捡村子里那个加工钢材的厂子倒出来的废铁。回家以后，就自己做饭，有时姥姥做。红星新闻：有没有不好意思过？庞众望：小时候，没什么感觉。上了五六年级，有点不好意思，但是已经习惯了。▲儿时庞众望红星新闻：你妈妈很坚强。她对你有什么影响？庞众望：嗯。她的话很少。上学前，她就教我做家务。她就说，你要解决掉你面对的事情，然后再去做下一个。没有妈妈，就不可能有今天的我。她不仅给了我生命，也影响了我的性格。她说，面对困难，要坚定地走下去。所以，哪怕她身体那样，她也从来不会抱怨。红星新闻：听你妈妈说，6月23日凌晨，你查到成绩后，反应很平淡？庞众望：（大笑）其实，我内心还是雀跃了一下。之前一直想着，如果清华给60分都进不去，该咋办。结果，一查，没问题，所以就不激动了。只是想，如果能多考10分，就不需要清华的加分了。红星新闻：平时和你爸爸沟通多吗？庞众望：不多。和他聊天，聊不了。他话很少，并且只重复自己想的。但是，他知道我能被清华录取后，很高兴。一圈一圈地转，见人就不断重复，我儿考上清华了，我儿考上清华了。红星新闻：取得这样的成绩，有没有自己的一些学习方法？庞众望：其实，基本是按照老师的步骤走。但是，我有个习惯，就是遇到难题，不会先看答案，一直到做出来为止，曾经为了做一道题做了一天。但这样很锻炼人。▲庞众望获得的奖状红星新闻：你在上高中前，给妈妈写了30封信？为什么会想到写信？庞众望：对啊。记得，那个暑假很漫长。感觉我走了，爸爸又跟着亲戚打零工，姥姥、姥爷又不能一直在这边，就感觉把她一个人丢在家里了。有一天，突然就有了这个想法，每天写一点，去高中前就写完了。主要内容是学习方面的，还有提醒妈妈注意什么。写好后，就都交给了姥爷。让他每天给妈妈念。算是个过渡吧。红星新闻：你想为妈妈做些什么？庞众望：小时候，我一直想，要把妈妈接到大城市去住。但现在，不这么想了。她留在乡下也挺好，认识的人多。我想，现在我们住的是亲戚的房子。所以，我有了能力，先要给妈妈建个房子。她喜欢厨房，我就给她好好弄个。然后再买个高档的轮椅。现在，我教会妈妈在手机上视频，有条件了就视频下。红星新闻：将来准备从事什么职业？清华的这次招生你报了什么专业？为什么？庞众望：想做机械自动化方面的工程师。目前，第一个报的是数理方面的，准备大二后再转机械设计专业。小时候，村里有大学生在聊天，他们聊的都是上大学以后的事儿，我正好听到这个专业。因为，最先接触嘛，所以就一直想着。红星新闻：大学准备怎么过？庞众望：清华已经答应给我勤工俭学的岗位。我会一边学习，一边做好工作，解决生活问题。▲吴桥中学校门口悬挂横幅，祝贺庞众望获得684分红星新闻：高考对你意味着什么？庞众望：是我人生的转折点。它把我送到了一个更好的平台。对于一个农村孩子来说，这可以让我有更广阔的视野，更多的机会。红星新闻：现在，媒体把你的家庭赤裸裸地摆在了所有人面前，会不会感觉不好意思。庞众望：这个没有什么。这就是我的家庭，我出生在这儿。感谢他们给了我生命。红星新闻：为什么这几天一直在躲避来访的人？庞众望：我喜欢平静的生活，不想被打扰。红星新闻：高考结束至今，在做什么？庞众望：赚学费啊，每天6个小时的家教。一个是一个班，还有两个1对3。平时就住在县城亲戚家里。这轮能赚4000多元。还剩一个月，我准备去北京亲戚家，先去适应下那儿的节奏，找份工作，把学费赚回来。红星新闻：你拒绝了很多资助？为什么？庞众望：其实，大家没有必要资助我。从这样的家庭成长起来，我知道，每个人赚钱都不容易。我们自己能过得下去，为什么要欠别人的人情。人情这种东西不怎么好还。再说，欠别人的，总是不太好的。其实，他们说是给的，但自己心里总感觉是欠的。高中时，已经欠了很多。现在，家里的欠款还清了，我又高中毕业了，自己可以解决学费。', 'http://www.toutiao.com/group/6442983942197871117/', '西楚网', '2017-07-16 10:59:47', 'http://p3.pstatp.com/list/190x124/2ece00003044d25e0f18');
INSERT INTO `society` VALUES ('89', '少数女大学生堕落的原因是什么？', '我敢说每个周六日的晚上，我都可以看到自己学校的女生宿舍楼前停满了高档的轿车，下边这张图并非取自本人的学校，不过足够说明一定问题。那么，我们不禁这样想，大学生为什么会钻进大款的轿车，心甘情愿的这样沉沦下去？相信不少人会质疑，作为一个大学生，本应靠知识来谋生，所谓干什么吆喝什么，为何操起了这般营生？我们的大学到底是怎么了？MY，这个在人们印象中只和愚昧、无知相关联的行为，怎么会跟作为女性中知识精英的女大学生挂上钩，而且泛滥起来。这不得不让人鄙视这些女大学生，鄙视教出这些学生的大学教育，甚至于鄙视知识。那答案到底是什么呢？有人说是因为不断更新的物质攀比，有人说是因为身处异乡估计与无奈，有的说是快意于权贵的那份成就感在这一系列问题的拷问中，我们看到了大学教育中一个严重而危险问题：就是知识对个人修身养性功能越来越薄弱，而安身立命谋求利益的功能日益彰显，知识越来越成为追求利益的工具。实际上，知识存在功能应该双重性的，一方面有技艺层面，靠着这技艺层面，人们可以在获得知识的同时获得一门技术，然后再通过这门技术安身立命，谋求生存必需的钱财，社会也会在这种技艺的传承中得到进步，物质文明不断丰富；另一方面是价值层面，也就是善恶的分辨问题，通过获得知识，人们从愚昧走向成熟，知道什么是对，什么是错，什么应该做，什么不能做，什么是与自己身份相对称的行为，什么是不相符的，所谓修身养性，知识学得越高，知善恶的分辨力也就越清晰。然而现在呢？物质化了社会与文明，似乎教导了这样一种意识，那就是可以完全不用去理会所谓的技术层面，有了前辈与几代的积淀传承似乎只要扣上大学生这个高帽子，你便在技术层面上达到了应有的高度，完全不用理会这一过程中所需要的艰辛，以此成为在价值层面跑步进入新新有产阶级的筹码。物质化让大学里的这些人失去了价值判断的方向，也就失去了超越一般社会人的善恶感，所以，社会中的一般人也不得不用蔑视的眼光看着号称越来越开放的大学里的这帮人。我给大家先讲个故事两个好闺蜜假期去外面玩，晚上回来太晚了，没公交车，就叫了滴滴打车。之后她们就和司机聊天，司机还加了女1的微信，经常会联系她，而她都不回，女2知道了就天天说女1约中年男子，当时女1解释过，但都没有止住女2的嘴，慢慢的女1发现女2没自己想的那么简单，她好像在故意恶搞自己，有时女1自我安慰 我们关系这么好，她这样说估计是在提醒我别堕落……但结果呢？大家都以为女1堕落了估计故事到这，大家明白我的意思有时候传说中的堕落并不是真的，每个人要学会将心比心，如果自己并没有亲眼目睹就不要散播流言，别忘了自己的身份——我们是大学生（我们一直都在拿知识武装我们自己）我的观点就是堕落的女大学生是有的，不过没那么多我们身边堕落的就是百分之一，其他的百分之九十九是好的，所以希望广大人民不要听到女大学生就会想到堕落一次词现在我将他们堕落原因分析如下1.面临毕业就业压力大，自己学习的热度不够2.攀比心理的影响，作为大学生经济不是很宽裕，但由于攀比心理导致这样的结局——抱大款3.思想觉悟不高4.不够自爱哪说的不对，欢迎评论讨论首先少数女大学生堕落的原因可以分为几点。首先是个人虚荣心在作祟，少数女大学生的虚荣心过强，导致在大学生中迷失了自己，不断的沉沦堕落从而一发而不可收拾，走上了堕落的深渊！其次是因为攀比心理，大学因为家庭条件以及其他的一些元素造成大学里的一些同学所处的生活品次不同，有高有低，这时候就有可能激化少数一些女大学生内心深处的攀比心理，凭什么别人可以有名牌化妆品，名牌这名牌那而我不可以有，从而就走了歧路。堕落了下去！还有就是可能少数大学生本性就有点疯狂，再加上大学处于一个开放的环境，更让她们如鱼得水，从而离堕落的深渊越来越近！对于少数女大学生堕落的情况，不论是朋友还是家人还是社会，都要对其帮助，不要让大好的青春少女堕落走入歧路！首先既然为大学生，那么学校即使起不了大作用，最起码在环境上要给所有的大学生树立一个文明好的居住学习环境，引导大学生树立健康的思维！再者对于女大学生，要懂得自尊自爱自省，不要在花花世界中迷失了自己，想想自己的父母，想想曾经的纯真，勿忘初心方得始终，为自己建立一个好的心态，释放自己的正能量！最后，社会的走向应该是正能量积极的，不要让极少数的情况影响了大局势的走向，给代表新生中坚力量的大学生一个好的引导，让我们的社会更和谐！人们之所以经常能看到女大学生堕落的新闻，很大一部分原因在媒体，在记者。媒介炒作“女大学生”的新闻甚至不惜污名化、妖魔化“女大学生”，在新闻标题中加入“女大学生”便能吸引眼球，如果能再加些“堕落”、“性”暗示之类的字眼有了更大的“新闻价值”，迎合了一批猎奇和意淫的大众。媒体报道数量增多了，议程设置的作用就起来，三人成虎的结果也就出来了。我说一个实例，上世纪美国新闻界经历过一段黄色新闻浪潮，期间纽约《晚邮报》的记者史蒂芬斯报道了一则新闻，是关于女人的凶杀案的，获得了极大的成功，晚邮报发行量激增。那时只要跟“女人”、“金钱”、“犯罪”相关的都是有“价值”的新闻。于是，同行们纷纷效仿，一时间大小报刊有大量犯罪新闻报道出来。纽约市民感到不安了，他们每天看着大量的罪案发生，认为纽约的犯罪率上升了，人们社会安全感下降了。纽约警方感到很委屈，因为根据实际的数据显示，当年的犯罪率并没有上升，反而是下降了。警方开始调查，为什么犯罪率下降，人们却更感到不安全呢？最后，警方找到了根源，是犯罪报道的激增，使人们感到社会是不安全的，而始作俑者，正是《晚邮报》的史蒂芬斯，他还在自己的自传中回忆了这个事儿，还骄傲地说：”I make a crime wave ！ 实际上他掀起的不是犯罪浪潮，而是犯罪报道浪潮。大学扩招以后，大学生增多了，女大学生的数量也多了。俗话说，林子大了，什么鸟都有，人数众多，保不齐有个别人经不住社会的诱惑，有的甚至是出卖了自己，但这毕竟是少数。我98年上大学，研究生毕业后就一直在高校工作，将近20年的大学经历中，从没有在我的同学或学生中听说有人堕落。她们有时懒惰、有时消极而已，又或者是跟男朋友出去同居了，这应该还谈不上堕落吧。跟社会上的人相比，她们中更多的还不谙世事，比较单纯，甚至是幼稚的。在崇尚标签化的现代媒体语境中，“女大学生”成为了一个带有刻板印象“特殊群体”，这是不公平的，说她们堕落更是莫须有的污名，我表示很不赞同。在一些酒吧、KTV会所等高档消费你地方，有时候你会看到一些女大学生的身影，为什么会有他们的身影？这是一个令我们需要反思的问题。现在少数女大学生堕落的原因是什么那？1、虚荣心在作祟。少数的女大学生的虚荣心过强，导致在大学中迷失了自己，不断的沉沦堕落从而一发不可收拾，走上了堕落的深渊。2、攀比心理。在大学由于每个人的家庭条件以及所处的生活品味的不同，有高有底，就会产出一些攀比心理，为什么他有名牌化妆品，名牌衣服等我为什么没有那，从而走上了歧路。3、就业压力现在的大学生一年比一年多，如果有个好爸爸，还可以拼一下爹。而很多的毕业生毕业了以后只能去跑跑销售，或者做一份行政类工作，不仅不稳定，而且工资还很低，工作很苦逼。和娱乐导向也有一定的关系现在网上的新闻最多的是一些王思聪的花边新闻，或者是哪个明星，网红赚了多少钱，会给社会上处于底层的刚毕业的大学生很大的心里冲击。年轻比较浮躁现在的社会就比较浮躁，对刚毕业的大学的影响很大，特别是女大学是。对于现在少数女大学生堕落的情况，无论是朋友还是家人还是社会，都要对其帮助，不要让他们大好的青春少女走入歧途。在学校要给大学生创造一个文明的好学的环境，引导大学生树立健康的思维。社会的走向是正能量积极的，不要被少数的情况所影响，给新生中坚力量的大学生一个好是引导，让我们的生活更和谐！大学，是一个神圣的殿堂，使人们所说的知识的象牙塔。在人们眼里，大学是神圣的。可是为什么越来越多的新闻报道告诉我们：自杀、卖淫、传销、盗窃、谋杀、泼熊等等这样在社会上都较为鲜见的违法勾当一次又一次的出现在这个人群中呢？在这个物欲横流的世界，我们顶礼膜拜的神圣的大学，为什么会一次又一次在叫嚣着自己的神圣的同时不住的抽自己大耳刮子呢？为避免话题过大，流于泛泛，今天就姑且谈谈大学生卖淫这一普遍现象。对于这一问题，相信大家的讨论也由来已久。从不少人讨论的处与非处、保姆、情人等等无不是就这一群体展开与深入的。不说网络，我敢说每个周六日的晚上，我都可以看到自己学校的女生宿舍楼前停满了高档的轿车，下边这张图并非取自本人的学校，不过足够说明一定问题。那么，我们不禁这样想，大学生为什么会钻进大款的轿车，心甘情愿的这样沉沦下去？相信不少人会质疑，作为一个大学生，本应靠知识来谋生，所谓干什么吆喝什么，为何操起了这般营生？我们的大学到底是怎么了？卖淫，多么羞耻的事情，这个在人们印象中只和愚昧、无知相关联的行为，怎么会跟作为女性中知识精英的女大学生挂上钩，而且泛滥起来。这不得不让人鄙视这些女大学生，鄙视教出这些学生的大学教育，甚至于鄙视知识。那答案到底是什么呢？有人说是因为不断更新的物质攀比，有人说是因为身处异乡估计与无奈，有的说是快意于权贵的那份成就感，有的。。。我们不禁又要问了：培养出了这样的女大学生，大学教育又有什么用？知识又有什么用？在这一系列问题的拷问中，我们看到了大学教育中一个严重而危险问题：就是知识对个人修身养性功能越来越薄弱，而安身立命谋求利益的功能日益彰显，知识越来越成为追求利益的工具。实际上，知识存在功能应该双重性的，一方面有技艺层面，靠着这技艺层面，人们可以在获得知识的同时获得一门技术，然后再通过这门技术安身立命，谋求生存必需的钱财，社会也会在这种技艺的传承中得到进步，物质文明不断丰富；另一方面是价值层面，也就是善恶的分辨问题，通过获得知识，人们从愚昧走向成熟，知道什么是对，什么是错，什么应该做，什么不能做，什么是与自己身份相对称的行为，什么是不相符的，所谓修身养性，知识学得越高，知善恶的分辨力也就越清晰。〔B〕然而现在呢？物质化了社会与文明，似乎教导了这样一种意识，那就是可以完全不用去理会所谓的技术层面，有了前辈与几代的积淀传承似乎只要扣上大学生这个高帽子，你便在技术层面上达到了应有的高度，完全不用理会这一过程中所需要的艰辛，以此成为在价值层面跑步进入新新有产阶级的筹码。在这一过程中，完全不是所谓的利用所学技术安身立命，谋求生存必须的钱财，而是通过作为传统，最为隐蔽，也最为肮脏的手段。昔日，正是这种知识的双重功能赋予了大学以纯洁和神圣，赋予了天之骄子们崇高的德性和高超的技能，所以他们也获得了人们的尊敬。可是，在如今的大学教育中，知识的“技艺层面”得到最大化的表达，而“价值层面”越来越被遮蔽，这是教育的整体性误导。看看我们今天的大学教育是多么的功利，进校门后就被灌输就业形势如何严峻如何紧迫的问题，然后在各门学科中接触的都是这门学科对以后、谋取一个好的职业有多大帮助，经济学是成本与代价的分析，地理学改为旅游管理学，连思想道德课都成了传播社交公共关系技巧的方向。这个大学被变得太快的社会牵着鼻子走，大学里到处都飘浮着经世济用的学问，在这种氛围中，大家都想着从知识中直接获得的本事，知识的“价值层面”又如何能以修身养性、润物细无声的方式赋予象牙塔内这众多知识精英们以更高的道德自觉和羞耻感。回到泛滥的女大学生卖淫现象，这是目前教育这一悲哀带来的最大的苦果。首先，跟社会一般的卖淫女相比，“女大学生”的名号能卖个更高的价钱，比如说在生意中女大学生们都会出示身份证和学生证，而且提供自己的宿舍电话供嫖客证实；其次，对于女大学生自身来讲，既然上大学学知识也是为了找到个好工作赚更多的钱，卖淫可以赚更多的钱啊。何乐而不为？〔/B〕这一行业。。。姑且称为行业吧，我们不禁又要问，为什么会有如此之市场呢？据相关报道，卖淫女大学生这一人群正成为这一行业中的宠儿，虽然相关素质或许比这一行业本来固有的人差一些。但是，通过揣测买家的心里和通过具体案例的分析，可以知道，强烈的莫须有的自豪感，可以说是一个潜在的驱动力。姑且不论买家是没文化的暴发户，就是有点身价的白领，如果哪次酒后吐真言，号称自己的情人是个大学生，知识分子，我估计那张因为喝了酒红的跟猴儿屁股似的的脸也能当着那么多人，不要脸的放出金光闪闪的淫色来！记得一位网友曾和我讲，有个卖淫女亲口告诉她，靠卖淫，每月收入是自己专业毕业然后还要拼命找拼命作的那个工作工资的几倍以上，而且二者相比一个自由轻松，一个吃苦受罪。。。还记得有位网友曾在大作中提到：以后这样的人为人父母，在教育自己不成材的子女时也可以说：你可要好好学习，就算以后当鸡，也能买个好价钱。。。幸甚？悲哀？！物质化越来越强烈的倾向是非常令人恐惧的，所带来的不仅是女大学生卖淫，还有本人曾经码过的学术。卖淫、学术、大学生低素质，这些都是价值层面的东西，物质化让大学里的这些人失去了价值判断的方向，也就失去了超越一般社会人的善恶感，所以，社会中的一般人也不得不用蔑视的眼光看着号称越来越开放的大学里的这帮人。1.从众心里。现在不少女生都注重攀比，注重名牌，每天的心思都不在学习上。2.用情太深。大学谈恋爱我不反对，但是谈恋爱太较真未免夸张了，今天想自己男朋友出轨了，明天检查手机，女生就是疑心太重，何必这么认真呢，为什么男生能拿得起，放的下，女生不能？ 3.自身想法偏激。部分女大学生会这样想，我是一个女生，以后毕业了就结婚找一个有钱老公就高枕无忧了，于是呢，每天躺在床上想自己该买什么样的衣服，看什么电视剧。我们两个同学，都是大学生真心觉得他们不怎么样，一个家庭条件不错，平时看人家空间晒照，经常看电影，吃西餐，旅游，觉得人家家庭条件经济各方面都挺好，结果一次他们家被偷，他爸爸被小偷捅了6刀，然后网上募捐5万吧，我们几个说约到医院看一下吧，结果我们刚走到医院，碰见一个在哪当护士的朋友，说他的伤没什么大不了的，都不是要害，缝好针，多休息，就可以医药费大概1w多，各种报销下来不过几千块，真的是为了钱良心都不要了，第二个平时也是喜欢出去旅游，购物什么，直到有一天我几个一起打牌玩，打电话给我们其中一个借钱买一件裙子，顿时我们大家觉得这人不咋样吧，借钱就为了一件裙子，真心不咋滴，现在有些大学生为了钱和贵重物品良心也不要了，为了一样可有可无的东西竟然借钱，反正我就觉得这简直就是三观不正，我也认识过一些素质良好，三观超正的大学生，不管是待人啊为人处世都非常棒感谢楼主邀请：本人亲自曾经跟几个堕落的女大学生探讨过这类问题。举例子说明吧。女大学生A刚大学毕业就在所在大学城市有两套房，一辆小型的大众，银行卡余额20+。大家都心知肚明这资产怎么来的。当时我问她这类问题的时候她的回答是这样：我谈个恋爱不小心眼瞎了找个不负责任的渣男，就说不出意外被弄了四年，这四年期间还不敢保证没有意外怀孕。对于身体的伤害这以后不能弥补。还有就是物质方面：基本的生活和物质水平肯定达不到所想的要求。我找一个大叔，每个月平均十次八次。对我日常的生活也不影响。包括毕业后工作的安排都有人操心。我何尝不这样。有些人看到这里不由得肯定会说，女人脏，脏一辈子。这句话我同意。老天是公平的你得到物质这一方面的同时你不会得到幸福。没有人一辈子做小三不是吗？说了这么多，我只想说：好好保护好自己，真脏了一辈子都洗不干净。当你觉得这样来钱容易的时候。也许下一个发廊小妹就是你。望珍重。。。1、虚荣心在作祟。少数的女大学生的虚荣心过强，导致在大学中迷失了自己，不断的沉沦堕落从而一发不可收拾，走上了堕落的深渊。2、攀比心理。在大学由于每个人的家庭条件以及所处的生活品味的不同，有高有底，就会产出一些攀比心理，为什么他有名牌化妆品，名牌衣服等我为什么没有那，从而走上了歧路。3、就业压力现在的大学生一年比一年多，如果有个好爸爸，还可以拼一下爹。而很多的毕业生毕业了以后只能去跑跑销售，或者做一份行政类工作，不仅不稳定，而且工资还很低，工作很苦逼。4、和娱乐导向也有一定的关系现在网上的新闻最多的是一些王思聪的花边新闻，或者是哪个明星，网红赚了多少钱，会给社会上处于底层的刚毕业的大学生很大的心里冲击。5、年轻比较浮躁现在的社会就比较浮躁，对刚毕业的大学的影响很大，特别是女大学是。', 'http://www.toutiao.com/group/6440421549236289806/', '头条问答', '2017-07-16 10:59:57', 'http://p1.pstatp.com/list/190x124/17810010266e01956dbe');
INSERT INTO `society` VALUES ('90', '昆明七八十人凌晨打砸写字楼：掐断监控后扔催泪弹', '记者 夏体雷 摄影报道云南网讯 15日凌晨两三点，一伙人闯进昆明市如安街三号一幢写字楼，控制住保安，掐断监控，用十字镐和铁锤撬开一家公司，在办公室一阵狂砸，还使用了催泪弹和灭火器……记者了解到，这可能是一起源于房屋租赁纠纷的报复行为。被打砸的是云南金鼎矿业有限公司的办公室，该公司负责人饶先生在冲突中被打伤住院。他说，那些人冲进监控室，把电路掐断，把保安和其他工作人员控制住，拎着钢管、铁锤和十字镐，把公司办公室大门砸开一个洞之后，先往里面扔催泪弹，之后冲进办公室打砸。饶先生说，那些人约有100人，穿着统一服装，清一色戴着白手套，冲突中，饶先生等几人被打伤。后来警察赶来，除了一部分人逃跑外，被警察当场控制的有七八十人。这是怎么回事呢？金鼎公司办公室主任袁女士说，这源于一起租赁纠纷。2012年的时候，公司将一整幢房屋出租给了另一公司，一年租金900多万元，合同签到2016年。对方公司支付了3年的房租后，就不再支付，由此两家公司闹了起来。金鼎公司将对方告上五华法院，官司也打赢了，但对方公司就是不搬离，至今欠下了2000多万元的租金。近日，五华法院强制执行，对方公司被强制搬离。对方公司负责人由此怀恨在心，就组织了一些人对金鼎公司的办公室进行打砸。警方已经将涉案人员带到派出所进行调查。', 'http://www.toutiao.com/group/6443157159266058497/', '中国青年网', '2017-07-16 11:59:02', 'http://p1.pstatp.com/list/190x124/2f870006e18a00ccb038');
INSERT INTO `society` VALUES ('91', '江苏常熟民房火灾现场清理结束 22人遇难3人轻伤', '', 'http://www.toutiao.com/group/6443203565291831809/', '光明网', '2017-07-16 11:03:21', 'http://p9.pstatp.com/list/190x124/2dfd000fb8e838b36a17');
INSERT INTO `society` VALUES ('92', '中国姐妹日本遇害追踪：父亲办签证，将赴日与两爱女诀别', '据日本媒体7月15日报道，日本警方公布的在日遇害中国籍姐妹的尸检报告显示，两人因脖子被勒住窒息死亡。中国驻日本大使馆也于当天发文，提醒在日中国公民加强自我保护。</br>7月14日晚，重案组37号(微信ID:zhonganzu37)致电遇害姐妹的父亲陈先生，他表示最初以为两个孩子只是遭遇绑架，没想到会被害死。15日下午重案组37号探员再次致电陈先生，接听电话的邻居称陈先生精神状态不好，一直躺在床上，亲友们正在帮助他办理签证，使其能尽快赴日，与已经阴阳相隔的两个女儿再见一面。</br></br>▲遇害的陈宝兰、陈宝珍姐妹。 资料图片</br>父亲将赴日 “以为她们只是被绑架”</br>“我现在脑子乱得很”，7月14日晚间，重案组37号(微信ID:zhonganzu37)联系到遇害姐妹的父亲陈先生。</br>家住福建省的陈先生说，7月5日下午5点左右，他还与陈宝兰通过微信联络，陈宝兰因感冒在家休息。而7日傍晚，陈宝兰同事告诉他，6日陈宝兰手机关机，一直联系不上，随后同事来到陈宝兰家门口，与警察一起进去，发现屋内没人，但通过视频监控画面看到可疑男子拖着箱子出门。</br>“陈宝兰同事说可能认识那个男子，有点变态，我很担心，以为她们只是被绑架。”陈先生说，没想到女儿们会被害死，他怀疑是两个女儿在日本的朋友害的。</br>陈先生说，陈宝兰7年前高中毕业便去了日本，妹妹陈宝珍2年后也到日本和姐姐一起生活，陈宝珍在念书，但他也不知道是在哪个学校，姐姐已经工作。平日姐妹俩经常通过微信和家人联系，报个平安。</br>7月15日下午，重案组37号探员再次致电遇害姐妹的父亲陈先生。电话由其邻居接听，称陈先生目前“精神不太好，一直躺在床上”。 这位领居表示，陈先生有三女一子共四个孩子。其中大女儿远嫁外地，在日本遇害的是另两个女儿，儿子目前也外出不在家，“（亲友）现在正在给他办签证，估计到了（日本）那边就可以知道更多情况。”</br></br>▲发现疑似失踪中国姐妹遗体的山林。 视频截图</br>姐妹窒息而死 遗体有淤青疑遭殴打</br>据日本共同社报道，关于从神奈川县秦野市山林的旅行袋中发现二十多岁中国籍姐妹遗体事件，伊势佐木警署专案组15日表示，司法解剖结果显示两人的死因均为颈部遭到压迫导致的窒息死亡。</br>报道援引专案组介绍，遗体分别是姐姐陈宝兰和妹妹陈宝珍。除颈部遭压迫之外，身体上还有淤青。据悉，死亡时间为7月上旬。另据《读卖新闻》报道，姐妹俩被发现时身体已发生变色，疑生前遭受殴打。</br>NHK最新消息显示，警察透露，中国籍姐妹姐姐陈宝兰和妹妹陈宝珍分别于2009年、2012年赴日留学。妹妹陈宝珍就读于与游戏软件相关的职业院校。认识姐妹俩的某公司董事长称，她们在横滨市繁华街的某家饮食店打工。饮食店关系者称：“前几天开始无法与姐妹俩取得联系，听说她们去世的消息深感遗憾。同一个地方打工的同事们也都十分震惊。我们想知道在她们身上究竟发生了什么。”</br>15日上午，重案组37号(微信ID:zhonganzu37)致电姐妹俩居住的公寓方，对方表示不便回答相关问题。</br></br>▲陈宝兰、陈宝珍姐妹在日本横滨的住所。 视频截图</br>嫌疑人被控制面临逮捕 与姐姐有纠葛</br>据日本新闻网消息称，涉嫌杀害中国籍姐妹的日本男子，目前已被神奈川县警察本部特别搜查组控制，即将面临逮捕。</br>日本新闻网消息显示，该男子年龄30多岁，家住横滨市，已婚。这名男子在中国籍姐妹的姐姐陈宝兰打工的酒吧，与陈宝兰相识，两人有感情和金钱纠葛。</br>在中国人姐妹陈宝兰(25岁)、陈宝珍(22岁)失踪后，警方根据公寓楼的监控录像，发现了这名男子在7月6日凌晨用钥匙开门进入陈宝兰姐妹居住的房间，在妹妹陈宝珍回家之后，又几次出入，并从房间搬走几只箱子。</br></br>▲日本电视台对陈宝兰、陈宝珍姐妹的报道。 视频截图</br>警察对这名男子的驾车记录进行了调查，发现其进入过神奈川县秦野市寺山的山林，于是以这个山林为中心，组织了大批警察进行了重点搜查，于13日深夜11时40分，在山林里发现了两只箱子，在箱子里发现了姐妹俩的遗体，遗体部分已经腐烂。消息称，这名男子目前保持沉默。警方正在抓紧收集相关证据，在证据确凿后对其实施逮捕。</br>中国驻日本大使馆15日发布领事提醒称，近年来，日本发生数起涉及在日中国公民的偷窃、暴力、杀人、抢劫等类型的刑事案件，致使在日中国公民蒙受人身、财物方面的损失。大使馆提醒在日中国公民加强自我保护，尽量不要独自前往偏僻的地方，注意防范路上抢劫;勿搭乘陌生人车辆，也不要让陌生人搭车;交友须慎重，勿与背景不明的人来往;勿单独与陌生人约会，也不要向陌生人透漏个人信息。</br></br>▲中国驻日本大使馆15日提醒在日中国公民加强自我保护。 中国驻日使馆官网截图</br>链接</br>日本近年已发生多起中国女性命案</br>去年10月，据日本媒体报道，日本法务省的数据显示，在日生活的中国人达67.75万人，在所有生活在日本的外国人中，中国人是最多的。</br>随着赴日中国人的增多，人身安全备受关注。近几年来，已发生了多起在日华人命案。</br>今年1月2日，在日本爱知县丰川市丰川町的一家商务酒店内，发现了一具中国女子的尸体。当地警方随后逮捕了20岁的犯罪嫌疑人王某，王某承认了杀人嫌疑。据介绍，死者年仅18岁，2016年12月31日和王某入住事发酒店，计划住3天2晚。1日凌晨，嫌疑人王某独自走出酒店。</br>2016年11月3日，一名名叫江歌的中国女子在日本东京都中野区中野的公寓中颈部被刺惨遭杀害。死者来自中国山东青岛，今年24岁，在东京语言学校就读，后于今年4月份成为日本法政大学研究生院的一名硕士生，为帮室友挡住前男友骚扰而惨遭杀害。</br>2011年10月，日本埼玉县警方从一辆因涉嫌盗窃案件被没收的家用轿车中发现了一具已经变成白骨的女性尸体。据车主介绍，这个变成白骨的女性，是一名跟自己熟识的中国女子。2012年1月，警方锁定杀害这名中国女子的凶手，系日本籍无业男子斋藤胜彦。</br>新京报记者 赵蕾 潘佳锟 见习记者 黄钟方辰</br>编辑 张太凌</br>校对 陆爱英</br>本文为重案组37号(微信ID:zhonganzu37)原创内容</br>未经新京报书面授权，不得转载和使用</br>欢迎朋友圈分享</br></br>', 'http://www.toutiao.com/group/6442974339720577281/', '重案组37号', '2017-07-16 11:03:16', 'http://p3.pstatp.com/list/190x124/2ec40000ea79147f6b47');

-- ----------------------------
-- Table structure for `sport`
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `publishTime` varchar(255) DEFAULT NULL,
  `sourceUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES ('240', '孙杨自曝魔鬼训练被练到哭 豪言主项要延续荣誉', '孙杨抵达布达佩斯 　　中新社布达佩斯7月16日电 （记者 王婧）中国奥运冠军孙杨16日早上抵达布达佩斯，稍事休息后将于傍晚进行世锦赛前适应性训练。孙杨表示，备战期间训练内容很“魔鬼”，近几日会放平心态积极调整和适应。 　　2017年国际泳联世锦赛游泳项目将于匈牙利当地时间7月23日开赛。孙杨将出战200米、400米、800米和1500米自由泳四个项目。这是他今年全国游泳冠军赛暨全运会预选赛后，又一次投入魔鬼赛程。 　　16日8时30分左右，孙杨戴着墨镜，身着白色运动服从机场走出来。他说：“旅途很顺利，从广州飞到布达佩斯一直在睡觉，只不过我人比较大，睡得不是很好。”尽管如此，孙杨依然会按照计划在傍晚进行适应性训练。 　　孙杨主管教练郑坤良表示，孙杨在香港训练期间侧重于200米和400米自由泳，身体情况比较理想。赛前这几天，教练组会继续帮助孙杨将状态调整到最佳。 　　教练的三两句话背后是孙杨备战的艰辛。孙杨直言，备战期间的训练计划堪称“魔鬼”，自己甚至有一次练到哭。 　　郑坤良听后笑着说：“孙杨当时身体比较疲劳，比较辛苦，但是该上强度还是得上。起码坚持下来了，是好事。” 　　从澳大利亚外训到转战香港，孙杨一直都在坚持练习出发、转身、到边等细节，目前发挥比较稳定。孙杨说：“训练方面已经练到位了，我自己还是比较满意的，接下来就是恢复身体和状态。做好自己该做的，不留遗憾。” 　　孙杨坦言，希望自己在本届世锦赛上将主项优势充分发挥，继续延续自己的势头和荣誉，同时为中国游泳队做出更多贡献，带领团队向着“王者之师”努力。 　　面向东京奥运会，孙杨将眼光放得更长远。“这次比赛主要是对细节的巩固，之后我希望寻求更多突破。”（完）', 'http://n.sinaimg.cn/sports/transform/20170716/7bjH-fyiavtv8510109.jpg', '中国新闻网', '2017-07-16 20:28:22', 'http://sports.sina.com.cn/others/swim/2017-07-16/doc-ifyiakwa4233391.shtml');
INSERT INTO `sport` VALUES ('241', '进球gif-赵旭日狮子甩头破门 斩获个人赛季首球', '赵旭日进球 　　北京时间7月16日，中超第17轮继续进行，天津权健主场迎战上海申花，比赛第23分钟，张诚右路传中，埋伏在中路的赵旭日高高跃起，甩头攻门得手，这也是赵旭日本赛季的首粒进球，权健1-0领先申花。 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/b9eH-fyiavtv8497221.jpg', '新浪体育', '2017-07-16 20:04:08', 'http://sports.sina.com.cn/china/j/2017-07-16/doc-ifyiakwa4233208.shtml');
INSERT INTO `sport` VALUES ('242', '进球gif-权健连续配合眼花缭乱 赵旭日梅开二度', '赵旭日神了 　　北京时间7月16日，中超第17轮继续进行，天津权健主场迎战上海申花，比赛第32分钟，权健在左路做出配合，孙可倒三角传中，但中路没有人插上，反倒是右路跟进的赵旭日起脚抽射，虽然申花后卫试图阻挡，但是仍然无法阻挡皮球入网，赵旭日梅开二度，权健2-0领先。 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/X5Y--fyiavtv8505329.jpg', '新浪体育', '2017-07-16 20:09:14', 'http://sports.sina.com.cn/china/j/2017-07-16/doc-ifyiakur9017777.shtml');
INSERT INTO `sport` VALUES ('243', '天津轮滑冰球队教练：用实力证明金牌含金量', '天津队夺冠 　　中体在线天津7月15日电（记者 赵蕊）在7月15日晚进行的第十三届全运会轮滑冰球女子决赛最后一场争夺中，东道主天津队凭借最后一节的关键进球以1比0击败劲敌黑龙江队，夺得本届全运会轮滑冰球比赛女子组冠军。赛后，天津队主教练戴立平表示：“两强相争勇者胜，这场比赛虽然打得非常艰难，但最后我们用实力证明了这块金牌的含金量。” 　　在本届全运会轮滑冰球比赛中，黑龙江队出战三场，总进球数达到91粒。面对如此劲敌，戴立平表示全队在赛前已经做好了充分的身体和心理准备。“天津队从组队到现在经历了各种风风雨雨，真的非常艰难。本场比赛对阵实力强劲的黑龙江队，无论是体力的储备还是技战术的发挥，我们都做好了充分的准备，并且队员们的心态也非常好。” 　　由于实力相当，本场比赛的过程非常胶着，两节比赛过后双方都没有收获进球。在关键时刻，为天津队攻入制胜球的是年仅20岁的小将陈迪。谈到年轻队员的表现，戴立平同样赞赏有加：“像陈迪这样的年轻队员能抗住这么大的压力，上场后就取分，非常值得肯定。同时，我们对年轻队员历练在这场比赛也得到了见证。” 　　对于能够拿下本届全运会轮滑冰球项目的首金，戴立平非常感慨：“天津队很多队员之前是冰球项目运动员，而轮滑冰球和冰球不一样，虽然它的速度没有冰球快但体能消耗非常大。轮滑鞋的轮子也非常沉，很多队员身上都是青一块紫一块的摔伤。天津市体育局每天都会安排四个按摩师帮助队员做理疗，所以在此我也特别感谢体育局对我们球队的大力支持。同时真心地感谢所有队员，所有关心爱护我们的人。” 　　谈及未来，戴立平表示：“我听到现场观众的加油声中有很多是小孩子，他们或许正在学习这个项目，希望通过这届全运会轮滑冰球比赛，能够激励他们继续努力。同时，我希望我的这些队员们能够继续传承轮滑冰球项目，在工作岗位上能够成为优秀的教练，在家庭里能够成为优秀的妻子和母亲。”', 'http://n.sinaimg.cn/sports/transform/20170716/P3L5-fyiavtv8507996.jpg', '新浪综合', '2017-07-16 20:54:17', 'http://sports.sina.com.cn/others/winter/2017-07-16/doc-ifyiakwa4233317.shtml');
INSERT INTO `sport` VALUES ('244', '半场-赵旭日梅开二度帕托中框 权健2-0领先申花', '赵旭日梅开二度 　　北京时间7月16日晚19点35分，2017年中超联赛第17轮在天津开始一场较量，由天津权健主场迎战上海申花。上半场第23分钟，张诚右路传中，赵旭日头球首开纪录。第31分钟孙可左路下底倒三角传球，赵旭日大力抽射梅开二度。上半场天津权健2比0领先上海申花。 　　挑边时出现一小笑话，主裁张雷扔硬币时，硬币竖在地上，只能拿起再扔。开场后主队优势明显，第2分钟帕托左路任意球直接射门稍稍偏出。第7分钟糜昊伦左路传中，赵旭日后点头球，孙可中路没有碰到球，看着球堪堪飞出大门左侧底线！第16分钟曹赟定左路带开张诚防守后传中，莫雷诺头球没顶上力量，但他却和权敬源头撞头，两人同时倒地，好在缓和过来后都无甚大碍。 　　第23分钟天津一次相对简单的战术配合却取得进球，张诚右路传中，赵旭日在李建滨身后高高跃起强力头球，皮球飞入死角，1比0，天津领先！失球后申花换人，毛剑卿换下吕品。主队继续强攻，第25分钟裴帅禁区外左侧怒射稍稍偏出。第27分钟特维斯终于在禁区前沿拿球，他带开防守后起左脚怒射，张鹭做出精彩扑救！ 　　第31分钟天津队再次取得进球，三名国内队员打出配合，裴帅左路送球，孙可得球下底传中，无人看守的赵旭日禁区内得球抽射，此球打的角度极佳，李帅扑救不及，2比0，天津队扩大比分！第35分钟帕托在禁区外左侧打出旋转强烈弧线球，皮球砸在横梁上弹出！第36分钟权敬源左路传中，帕托后撤步头球被李帅扑出！ 　　第39分钟毛剑卿左路突击进禁区，但他最后一脚抽射打在边网上。第44分钟孙可和帕托打出成功二过一，帕托杀入禁区后射门，但被飞身而起的李建滨挡出门外！ 　　天津权健首发：1-张鹭；27-张诚、4-刘奕鸣（U23）、21-权敬源、25-糜昊伦；7-赵旭日、6-裴帅；28-维特塞尔、39-王永珀、38-孙可；10-帕托 　　上海绿地申花：27-李帅；16-李运秋、3-李建滨、34-毕津浩、25-王林；37-孙世林、4-金基熙；35-吕品（7-毛剑卿 24分钟）、10-莫雷诺、28-曹赟定；32-特维斯 　　（孟巍） 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/OFno-fyiavtv8510145.jpg', '新浪体育', '2017-07-16 20:26:40', 'http://sports.sina.com.cn/china/j/2017-07-16/doc-ifyiakwa4233445.shtml');
INSERT INTO `sport` VALUES ('245', '力帆官宣华夏94年新星租借加盟 上赛季首发28次', '廖均健租借加盟力帆半年 　　北京时间7月16日消息，重庆力帆和河北华夏幸福俱乐部同时官宣廖均健从华夏租借加盟力帆半年，1994年的廖均健场上司职后卫，上赛季作为华夏幸福主力，首发出战了28次。 　　重庆力帆公告： 　　7月14日，在转会窗口截止的最后一天，重庆当代力帆足球俱乐部完成了夏季转会窗口最后的引援工作。俱乐部与球队通过一段时间考察、研究，并得到了俱乐部管理层首肯后，经与河北华夏幸福足球俱乐部友好协商，重庆当代力帆足球俱乐部与球员廖均健签订为期半年的租借合约。 　　至此，重庆当代力帆足球俱乐部2017赛季夏季转会窗口的转会工作告一段落，随着下半程比赛的继续，期待队员们能团结一心，为重庆当代力帆队取得更加优异的成绩而战斗！ 　　河北华夏幸福公告： 　　经与重庆当代力帆足球俱乐部及我俱乐部球员廖均健协商一致，廖均健即日起租借至重庆当代力帆。自2015年加盟河北华夏幸福以来，你用阳光乐观的性格、勤 恳积极的态度、攻守俱佳的表现赢得了大家的喜爱，你是队友们的抹蛋糕小王子，也是为球迷熬煮姜汤的单眼皮暖男。三年来，你与年轻的河北华夏幸福一起成长， 一起流汗，一起挥洒热血，也一起享受胜利的荣耀与喜悦。我们正青春，短暂的别离是为了更好地重逢，祝福你，阿廖，希望你充分发挥实力，获得更大提升，一切 顺利，满载而归！ (新体) 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/BJ6S-fyiavtv8509541.jpg', '新浪体育', '2017-07-16 20:48:20', 'http://sports.sina.com.cn/china/j/2017-07-16/doc-ifyiakwa4233374.shtml');
INSERT INTO `sport` VALUES ('246', '女排副攻神勇成功压制美国 袁心玥21分独当一面', '袁心玥背飞 　　中国女排以3-2力克美国队，本场比赛双塔副攻袁心玥和高意表现尚佳，袁心玥独得21分，成为本场比赛中国队的得分王。高意拿到14分，其中拦网和发球就拿到10分，起到了网前屏障的作用。两人合砍35分，力压美国两位副攻的20分，在副攻位置上占尽优势。这是中国女排取胜的关键一环。 　　中国女排在昆山站输给美国队，在副攻线上进攻和拦网发挥不理想是输球的重要原因。那场比赛中国队三名副攻轮流上场，得到14分，美国队的两名副攻得到19分。尤其是迪克森的进攻几乎如入无人之境，中国队在拦网这一环节输给对手四分，副攻拦网不理想是主要的原因。 　　仅过一周，局面却发生了逆转。本场比赛中国队的副攻袁心玥独得21分，其中进攻得到18分，拦网得到3分，进攻27次得到18分，进攻成功率高达66.67%，达到了一名优秀副攻的标准。高意拿到14分，其中进攻8次得到4分，进攻成功率达到50%。拦网得到6分，是全场比赛拦网得分最多的队员。她发球得到4分，并多次破坏对手的一传，由于她发球威力大，多次得分或为全队创造反击得分机会，发球次数多达16次，是全队最高的。 　　中国队的两名副攻合砍35分，美国队的两名副攻得到20分。在副攻这一位置上，中国队占了很大的优势。袁心玥和二传丁霞的配合还不是十分默契，有一些快攻并没有完全配上，扣球时没有打上力量，但袁心玥有身高优势，可以利用身高优势将球抹到对方空当处得分。整场比赛她进攻27次，进攻次数仅次于朱婷和龚翔宇，极大地分担了边攻手的进攻压力。同时也吸引了美国队的拦网队员的注意力，这是得分之外她为全队做的另一贡献。 　　在昆山站中国队拦网效果并不好，三名副攻经常被对方晃得无法并过去形成双人拦网。今天高意和袁心玥做得很好，只要对方开网进攻，就死死盯住对方主攻不放。她们知道美国队的接应墨菲以打近网拉开球为主，开网强攻主要由主攻承担，因此在对方打开网强攻时，拦网很有针对性。高意和袁心玥都几次拦死对方主攻手的开网强攻。 　　中国队几名副攻拦对方快球的经验不足，但本场比赛高意在决胜局拦死了迪克森的一个短平快，极大地打击了对手的士气。通过这个球也能看得出，年轻队员经过高水平比赛的磨练，拦网的水平有提高。今天高意的发球非常有威胁，她的平冲发球有过网急坠，也有发向对方一号位底角的球，给对方接发球队员制造了极大的压力。 　　令人兴奋的是，高意并不是一名没有防守的副攻，今天她几次在发完球以后防守起球，让人看到了她良好的球感和防守意识。年轻队员打好一场球，并不值得过份夸大，但她的进步值得肯定。徐云丽和颜妮毕竟已经30岁，中国女排如果不及时培养新人，那么将没有未来。新人的成长需要时间，不是一朝一夕就能一蹴而就的。现在中国女排以成绩为代价锻炼、培养她们，是为了中国女排的长远发展。相信高意等新人未来能够顺利接班。 　　（冰雪季节） 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/rec_-fyiavtv8513904.jpg', '新浪体育', '2017-07-16 20:17:40', 'http://sports.sina.com.cn/others/volleyball/2017-07-16/doc-ifyiakur9017942.shtml');
INSERT INTO `sport` VALUES ('247', '温网女双2号种子送双蛋詹皓晴组合 离金满贯差一步', '马卡洛娃和维斯妮娜 　　英国，伦敦 - 当地时间7月15日，2017赛季温布尔登网球锦标赛决出了女双冠军的归属。奥运会金牌得主、赛会2号种子马卡洛娃/维斯尼娜发挥强势，以6-0 6-0血洗詹皓晴/尼库莱斯库组合，首次在温网女双比赛中问鼎。这也是两人合作以来的第三座大满贯冠军。 　　“我们等待这个冠军已经很久了，”维斯尼娜赛后表示，“今年法网我们表现得不尽如人意，输掉比赛之后，我在更衣室里对卡蒂娅（马卡洛娃）说：‘我们应该要去拿下温网的冠军。2013年我们已经拿过法网冠军了。现在我们要去争取温网冠军。’” 　　“自从我们合作以来，这一直是我们的目标。两年前我们输掉了一场非常接近的决赛，那一次我们在赛末阶段没有顶住压力，那场遗憾的失利也一直留在我们脑海中。在接近胜利的时候，我们需要保持冷静。” 　　由于前一场男双决赛经过长盘鏖战才分出胜负，女双决赛的开场时间一再推迟。当比赛终于开打的时候天色已晚，双方不得不在中央球场关闭顶棚后的灯光下作战。 　　“我们一直在等，我们知道前面的比赛可能要打五盘，也知道这场比赛的尾声会充满戏剧性。纳芙拉蒂诺娃都跟我们说，‘你们知道自己可能要到晚上11点才结束比赛吗？’前一场的比分到了10-10。我想，‘拜托，你们快点打完好吗。’” 图集加载中，请稍候... 图集加载中，请稍候... 温网女双维斯尼娜马卡洛娃夺冠 1/12 北京时间7月16日消息，2017年温布尔登网球锦标赛女双决赛，维斯尼娜/马卡洛娃6-0/6-0血洗詹皓晴/尼库莱斯库，生涯首夺温网冠军。 查看图集 | 分享 新浪微博 微信 腾讯QQ QQ空间 　　“但在我们的首盘比赛结束之后，我看了一下时间。嗯，还算正常。” 　　马卡洛娃/维斯尼娜曾在2015年打进过温网女双决赛，当时她们在决胜盘距离冠军一度只有一局之遥，最终却被辛吉斯/米尔扎实现了大逆转。后来由于 马卡洛娃的小腿伤势，这对组合一度分开，但去年红土赛季她们重新携手，并很快打进了法网决赛。几个月之后，她们在里约奥运会上摘得了一枚女双金牌。 　　相比之下，本次温网仅仅是詹皓晴和尼库莱斯库合作的第二项赛事，尽管詹皓晴此前与她的姐姐詹咏然曾取得过不俗的战绩，但自从姐妹俩拆对之后，她就鲜有亮眼成绩。 　　两对组合经验上的差距，从比赛一开始就显露无遗：默契明显更胜一筹的2号种子延续了本次赛事的出色状态，她们在前几轮比赛中先后淘汰了巴蒂/德拉夸、格罗恩菲尔德/佩斯切克，来到决赛，她们打得甚至更加强势，在中央球场打出了一场统治级的比赛。 　　“这场比赛我们打得比较轻松，但是这次温网我们的签表还是很艰难的。”马卡洛娃说，“我们八进四的比赛中遭遇了一对很强的对手，那场比赛打得非常激烈，每一盘都只出现了一次破发。直到比赛结束之前，我们双方的取胜机会都是一半对一半。” 　　本场女双决赛直到当地时间21：28才正式开打，马卡洛娃/维斯尼娜在开局小遇挑战之后很快掌控了局面，最终仅用时55分钟就轻松击败了对手。 　　“当我们拿下比赛之后，我对伊莲娜说，‘尽管比分是6-0 6-0，但过程其实并没有这么轻松。’这是一场很接近的比赛，尤其是第二盘，她们拿到了一些机会，但是我们不会轻易让她们反击的。我们要牢牢掌握主动权。” 　　“这样的比分看起来确实不太好，”维斯尼娜补充说，“但我们的对手一直拼到了最后一分，她们一直在努力试图扭转局势。” 　　正如马卡洛娃所言，詹皓晴/尼库莱斯库第二盘盘末阶段是有机会拿下几局的，但俄罗斯组合扼杀了她们的每一次机会。 　　“我们知道，如果给了她们一点点机会，局势就有可能瞬间逆转。她们连赢五场打进了决赛，所以她们必定也是很有实力的。她们目前的状态很不错。” 　　“我们知道她们会更紧张一些，因为我们有过在这里打进决赛的经验，所以我们利用了这样的优势，把握住了机会。” 　　“走上赛场的时候，我们是信心满满的。比赛过程中，我们是积极主动的。我们知道自己必须这样打球，全身心投入比赛。” 　　这场胜利，也意味着马卡洛娃/维斯尼娜距离“金满贯”伟业又近了一步：此前她们先后拿到了2013年法网冠军、2014年美网冠军，加上去年的奥运金牌和今年的温网冠军，她们只差澳网就能完成这一伟大成就。 　　谈及这一目标，俄罗斯组合坦言，希望能继续将她们的奥林匹克精神转化为未来的胜利。 　　“我们在比赛过程中始终互相提醒、互相鼓励。与此同时我们每一场比赛都不遗余力。这一点是在近两年的比赛中慢慢改变的，以前我们在比赛中比较安静，即使是庆祝得分也显得不那么张扬。现在我们更有激情了。”', 'http://n.sinaimg.cn/sports/transform/20170716/5qbx-fyiavtv8511331.png', 'WTA中文官网', '2017-07-16 20:57:23', 'http://sports.sina.com.cn/tennis/wta/2017-07-16/doc-ifyiakur9017899.shtml');
INSERT INTO `sport` VALUES ('248', '从不接到主接一传龚翔宇出彩 砍19分成功率达50%', '龚翔宇强攻 　　中国女排以3-2力克美国队，夺得大奖赛澳门站亚军。接应龚翔宇打出了今年在国家队最出彩的一场球，拿到全队第二高的19分。在主接一传的情况下，她的进攻成功率高达50%。不仅撑起了右翼的进攻，在一传和防守端也贡献良多，为中国队取胜立下汗马功劳。 　　本场比赛龚翔宇的表现相当出彩，整场比赛得到19分，与朱婷并列全队第二位。进攻32次得到16分，进攻成功率高达50%。在进攻高效的背后，她还接了22次一传，次数居全队第二位，出现3次失误，一传效率达到40.91%。一传虽然有一些失误和起伏，但能够在对手追发的情况下，达到这样的一传数据，与她自己比，进步是非常大的。她在去年里约奥运会和全国联赛都是不接一传的，本次大奖赛可以说是在比赛中练一传，短时间达到这个水平，实属不易。 　　本场比赛龚翔宇的拦网直接得到3分，昆山站美国队主攻手直线进攻得分很多，本场比赛中国队注意封堵对方的直线进攻，龚翔宇做得相当不错，几次拦网得分大大地提升了全队的士气。她的防守也不错，第二局林莉防守飞向场外，龚翔宇跑到场外将球救了回来，然后林莉防守垫球擦网而过，直接得分，这一分也有龚翔宇的贡献。整场比赛她防守起球14次，居全队第二位，体现了全面的技术能力。 　　前几场比赛龚翔宇的进攻被拦和失误较多，导致进攻效率都比较低。本场比赛她遇到困难球时，注意了技巧，几次面对对方双人拦网时采用了吊拦网人的身后，都直接得分。在有机会打拉开进攻时，她有小斜线、斜线和直线，几条线路分化得很清楚，收到了很好的效果。本场比赛她的进攻效率达到34.38%，这在强强对话中是一个非常好的数据。 　　前几场比赛中国队强攻成功率比较低，本场比赛朱婷的登场，吸引了美国队拦防的注意力。龚翔宇在右翼也得以解放，打出了很高的水平，反过来也吸引了美国队拦网队员的注意力，一定程度上也减轻了主攻的压力。 　　进攻次数全队第二、一传次数全队第二，本场比赛龚翔宇所承担的任务仅次于朱婷，在攻防两端都起到了很重要的作用。这场比赛打出高水平，有助于她提升自己的自信心，在接下来的比赛中打得更好！ 　　（冰雪季节） 声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/spnO-fyiavtv8521028.jpg', '新浪体育', '2017-07-16 20:32:38', 'http://sports.sina.com.cn/others/volleyball/2017-07-16/doc-ifyiakur9018033.shtml');
INSERT INTO `sport` VALUES ('249', '名人堂冠军赛签表：伊斯内尔领衔 众美国新星扎堆', '卫冕冠军卡洛维奇 　　北京时间7月16日，总奖金额为600,345美元的ATP250赛戴尔科技名人堂草地赛在纽波特公布正赛签表，美国巨人伊斯内尔和卫冕冠军卡洛维奇领衔出战，双打好手赫伯特、刚在温网打进16强的马纳里诺等人均出战，众美国新星扎堆。以下是本次完全签表： 第一轮 第二轮 1/4决赛 半决赛 决赛 冠军 (1)伊斯内尔(美国) 伊斯内尔         轮空 资格赛选手   资格赛选手 诺维科夫(美国)     丘迪内里(瑞士) 资格赛选手   (7)桑德格伦(美国) (4)赫伯特(法国) 赫伯特     轮空 梅塞洛斯(西班牙)   科兹洛夫(美国) 莫赫(美国)     桑蒂兰晶(日本) 弗拉坦格洛(美国)   (8)马琴科(乌克兰) (6)拉科(斯洛伐克)         欧佩尔卡(美国) 拉姆(美国)   资格赛选手 弗里茨(美国)     卡姆科(德国) 轮空 马纳里诺 (3)马纳里诺(法国) (5)布尔戈斯(多米尼加)       克拉夫楚克(俄罗斯) 格约维茨克(德国)               克维亚特科夫斯基(美国) 库德拉(美国)     克鲁格(美国) 轮空 卡洛维奇 (2)卡洛维奇(克罗地亚) 　　(新浪网球(微博))   声明：新浪网独家稿件，未经授权禁止转载！', 'http://n.sinaimg.cn/sports/transform/20170716/YNUt-fyiavtv8525391.jpg', '新浪体育', '2017-07-16 20:42:43', 'http://sports.sina.com.cn/tennis/atp/2017-07-16/doc-ifyiakur9018145.shtml');

-- ----------------------------
-- Table structure for `systemdictionary`
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionary`;
CREATE TABLE `systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionary
-- ----------------------------
INSERT INTO `systemdictionary` VALUES ('1', 'incomeGrade', '月收入');
INSERT INTO `systemdictionary` VALUES ('2', 'kidCount', '子女情况');
INSERT INTO `systemdictionary` VALUES ('3', 'educationBackground', '学历情况');
INSERT INTO `systemdictionary` VALUES ('4', 'houseCondition', '住房条件');
INSERT INTO `systemdictionary` VALUES ('5', 'marriage', '婚姻情况');
INSERT INTO `systemdictionary` VALUES ('6', 'fileType', '风控材料类型');

-- ----------------------------
-- Table structure for `systemdictionaryitem`
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionaryitem`;
CREATE TABLE `systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sequence` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionaryitem
-- ----------------------------
INSERT INTO `systemdictionaryitem` VALUES ('28', '1', '3000以下', '1');
INSERT INTO `systemdictionaryitem` VALUES ('29', '1', '3000~6000', '2');
INSERT INTO `systemdictionaryitem` VALUES ('30', '3', '大专', '1');
INSERT INTO `systemdictionaryitem` VALUES ('31', '3', '本科', '2');
INSERT INTO `systemdictionaryitem` VALUES ('32', '5', '已婚', '1');
INSERT INTO `systemdictionaryitem` VALUES ('33', '5', '未婚', '2');
INSERT INTO `systemdictionaryitem` VALUES ('34', '4', '无住房', '1');
INSERT INTO `systemdictionaryitem` VALUES ('35', '4', '一套住房', '2');
INSERT INTO `systemdictionaryitem` VALUES ('36', '6', '户口正面照', '1');
INSERT INTO `systemdictionaryitem` VALUES ('37', '6', '户口反面照', '2');
INSERT INTO `systemdictionaryitem` VALUES ('38', '6', '结婚证', '3');
INSERT INTO `systemdictionaryitem` VALUES ('39', '6', '电话流水', '4');
INSERT INTO `systemdictionaryitem` VALUES ('40', '6', '银行流水', '5');
INSERT INTO `systemdictionaryitem` VALUES ('41', '6', '房产证', '6');
INSERT INTO `systemdictionaryitem` VALUES ('42', '6', '土地证', '7');
INSERT INTO `systemdictionaryitem` VALUES ('43', '2', '独生子女', '1');
INSERT INTO `systemdictionaryitem` VALUES ('44', '2', '两个孩子', '2');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `bitState` bigint(20) NOT NULL,
  `realName` varchar(30) DEFAULT NULL,
  `idNumber` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(30) DEFAULT NULL,
  `incomeGrade_id` bigint(20) DEFAULT NULL,
  `marriage_id` bigint(20) DEFAULT NULL,
  `kidCount_id` bigint(20) DEFAULT NULL,
  `educationBackground_id` bigint(20) DEFAULT NULL,
  `houseCondition_id` bigint(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `authScore` int(11) DEFAULT NULL,
  `realAuthId` bigint(20) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `firsttime` datetime DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `profile` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('54', '430', '1800', '黄振强', '362330199101215475', null, null, null, null, null, null, null, '0', '1', '0', '29', '2017-06-10 16:39:58', '2017-09-01 21:52:36', '中雨哈!');
INSERT INTO `userinfo` VALUES ('56', '30', '8', '程海燕', '360000xxxxxxxxxxxx52', null, null, null, null, null, null, null, '0', '2', '1', '29', null, '2017-08-26 15:30:38', null);
INSERT INTO `userinfo` VALUES ('66', '0', '0', null, null, null, null, null, null, null, null, null, '0', null, '0', '0', null, null, null);

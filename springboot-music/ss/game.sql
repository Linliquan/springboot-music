/*
Navicat MySQL Data Transfer

Source Server         : NewData
Source Server Version : 50609
Source Host           : localhost:3306
Source Database       : game

Target Server Type    : MYSQL
Target Server Version : 50609
File Encoding         : 65001

Date: 2019-01-10 13:21:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for musiclink
-- ----------------------------
DROP TABLE IF EXISTS `musiclink`;
CREATE TABLE `musiclink` (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `ml_songName` varchar(20) DEFAULT NULL,
  `ml_singer` varchar(20) DEFAULT NULL,
  `ml_songLink` varchar(255) DEFAULT NULL,
  `ml_lyricLink` varchar(255) DEFAULT NULL,
  `ml_photoLink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ml_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musiclink
-- ----------------------------
INSERT INTO `musiclink` VALUES ('1', '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg');
INSERT INTO `musiclink` VALUES ('18', '自我疗伤', 'M哥', 'music/自我疗伤.mp3', '00', 'images/list2.jpg');
INSERT INTO `musiclink` VALUES ('19', '落', '艾辰', 'music/艾辰 - 落.mp3', '00000', 'images/list3.jpg');
INSERT INTO `musiclink` VALUES ('20', '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg');
INSERT INTO `musiclink` VALUES ('21', '天亮以前说再见', '何野', 'music/何野 - 天亮以前说再见.mp3', '00000', 'images/list5.jpg');
INSERT INTO `musiclink` VALUES ('22', '知否知否', '胡夏、郁可唯', 'music/胡夏、郁可唯 - 知否知否.mp3', '22', 'images/list6.jpg');
INSERT INTO `musiclink` VALUES ('23', '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg');
INSERT INTO `musiclink` VALUES ('24', '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg');
INSERT INTO `musiclink` VALUES ('25', '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg');
INSERT INTO `musiclink` VALUES ('26', '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg');
INSERT INTO `musiclink` VALUES ('27', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg');
INSERT INTO `musiclink` VALUES ('28', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg');
INSERT INTO `musiclink` VALUES ('29', '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg');
INSERT INTO `musiclink` VALUES ('30', '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg');
INSERT INTO `musiclink` VALUES ('31', '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg');

-- ----------------------------
-- Table structure for mymusic
-- ----------------------------
DROP TABLE IF EXISTS `mymusic`;
CREATE TABLE `mymusic` (
  `my_id` int(11) NOT NULL AUTO_INCREMENT,
  `my_songName` varchar(20) DEFAULT NULL,
  `my_singer` varchar(20) DEFAULT NULL,
  `my_songLink` varchar(255) DEFAULT NULL,
  `my_lyricLink` varchar(255) DEFAULT NULL,
  `my_photoLink` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`my_id`)
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mymusic
-- ----------------------------
INSERT INTO `mymusic` VALUES ('1', '可能否', '木小雅', '00000', '00000000', '0000', '6');
INSERT INTO `mymusic` VALUES ('204', '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', '180');
INSERT INTO `mymusic` VALUES ('208', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', '180');
INSERT INTO `mymusic` VALUES ('212', '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', '181');
INSERT INTO `mymusic` VALUES ('228', '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', '181');
INSERT INTO `mymusic` VALUES ('229', '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', '181');
INSERT INTO `mymusic` VALUES ('230', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', '182');
INSERT INTO `mymusic` VALUES ('231', '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', '182');
INSERT INTO `mymusic` VALUES ('232', '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', '182');
INSERT INTO `mymusic` VALUES ('233', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', '182');
INSERT INTO `mymusic` VALUES ('237', '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', '182');
INSERT INTO `mymusic` VALUES ('239', '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', '6');
INSERT INTO `mymusic` VALUES ('240', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', '183');
INSERT INTO `mymusic` VALUES ('241', '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', '183');
INSERT INTO `mymusic` VALUES ('242', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', '183');
INSERT INTO `mymusic` VALUES ('243', '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', '183');
INSERT INTO `mymusic` VALUES ('244', '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', '186');
INSERT INTO `mymusic` VALUES ('247', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', '186');
INSERT INTO `mymusic` VALUES ('248', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', '188');
INSERT INTO `mymusic` VALUES ('254', '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', '189');
INSERT INTO `mymusic` VALUES ('265', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', '190');
INSERT INTO `mymusic` VALUES ('266', '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', '6');
INSERT INTO `mymusic` VALUES ('267', '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', '6');
INSERT INTO `mymusic` VALUES ('268', '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', '191');
INSERT INTO `mymusic` VALUES ('269', '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', '191');
INSERT INTO `mymusic` VALUES ('270', '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', '191');
INSERT INTO `mymusic` VALUES ('271', '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', '191');
INSERT INTO `mymusic` VALUES ('274', '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', '191');
INSERT INTO `mymusic` VALUES ('275', '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', '191');
INSERT INTO `mymusic` VALUES ('277', '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', '191');
INSERT INTO `mymusic` VALUES ('278', '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', '191');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '小李', '广西科技大学', '54');
INSERT INTO `test` VALUES ('2', '李明', '中科大', '657');
INSERT INTO `test` VALUES ('3', '陆陆', '清华大学', '567');
INSERT INTO `test` VALUES ('5', '45', '36', '363');
INSERT INTO `test` VALUES ('6', '457', '3447', '6374');
INSERT INTO `test` VALUES ('7', '346', '57', '457');
INSERT INTO `test` VALUES ('8', '346', '57', '457');
INSERT INTO `test` VALUES ('9', '123', '读后感', '832');
INSERT INTO `test` VALUES ('10', '324', '25225', '2352');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '李权', '10086');
INSERT INTO `user` VALUES ('6', '101', '000');
INSERT INTO `user` VALUES ('7', '李明', '1234');
INSERT INTO `user` VALUES ('9', '66666', '88888');
INSERT INTO `user` VALUES ('10', '林李权', '3838');
INSERT INTO `user` VALUES ('11', '5464', '3567');
INSERT INTO `user` VALUES ('12', '475687', '56785');
INSERT INTO `user` VALUES ('13', '67900', '8989');
INSERT INTO `user` VALUES ('14', '5477', '4577');
INSERT INTO `user` VALUES ('15', '小林', '10000');
INSERT INTO `user` VALUES ('16', '56756888', '56887');
INSERT INTO `user` VALUES ('17', '76989', '78978');
INSERT INTO `user` VALUES ('19', '634634', '5464564');
INSERT INTO `user` VALUES ('20', '678', '678678');
INSERT INTO `user` VALUES ('22', '54856', '658568');
INSERT INTO `user` VALUES ('23', '54745', '45643');
INSERT INTO `user` VALUES ('24', '54785467', '585858');
INSERT INTO `user` VALUES ('25', '45634', '34636');
INSERT INTO `user` VALUES ('26', '45745', '45747');
INSERT INTO `user` VALUES ('28', '77777', '88888');
INSERT INTO `user` VALUES ('32', '67457', '674574');
INSERT INTO `user` VALUES ('34', '7686', '585585444');
INSERT INTO `user` VALUES ('36', '787878', '78787895');
INSERT INTO `user` VALUES ('37', '45767', '585568500');
INSERT INTO `user` VALUES ('38', '45777', '45777');
INSERT INTO `user` VALUES ('39', '47457', '474888');
INSERT INTO `user` VALUES ('40', '47457', '474888');
INSERT INTO `user` VALUES ('41', '787899', '8798700');
INSERT INTO `user` VALUES ('42', '36457', '6575677');
INSERT INTO `user` VALUES ('43', '36457', '6575677');
INSERT INTO `user` VALUES ('44', '65765888', '67858577');
INSERT INTO `user` VALUES ('45', '65765888', '67858577');
INSERT INTO `user` VALUES ('46', '456745', '45745788');
INSERT INTO `user` VALUES ('47', '657658885', '67567');
INSERT INTO `user` VALUES ('48', '68756', '5685699');
INSERT INTO `user` VALUES ('49', '68756', '5685699678');
INSERT INTO `user` VALUES ('50', '567', '6756');
INSERT INTO `user` VALUES ('51', '568568', '6585655');
INSERT INTO `user` VALUES ('52', '568568', '6585655');
INSERT INTO `user` VALUES ('53', '88899', '88');
INSERT INTO `user` VALUES ('54', '88899', '88');
INSERT INTO `user` VALUES ('55', '363666', '4564566');
INSERT INTO `user` VALUES ('56', '363666', '4564566');
INSERT INTO `user` VALUES ('57', '346457', '45747');
INSERT INTO `user` VALUES ('58', '346457', '45747');
INSERT INTO `user` VALUES ('59', '658568989', '8989');
INSERT INTO `user` VALUES ('60', '658568989', '8989');
INSERT INTO `user` VALUES ('61', '1212', '1313');
INSERT INTO `user` VALUES ('62', '56', '456');
INSERT INTO `user` VALUES ('63', '456', '123');
INSERT INTO `user` VALUES ('64', '8989', '8888');
INSERT INTO `user` VALUES ('65', '111', '222');
INSERT INTO `user` VALUES ('66', '88', '33');
INSERT INTO `user` VALUES ('67', '568', '666');
INSERT INTO `user` VALUES ('68', '889', '778');
INSERT INTO `user` VALUES ('70', '1717', '1515');
INSERT INTO `user` VALUES ('71', '1414', '4645');
INSERT INTO `user` VALUES ('72', '456789', '123456');
INSERT INTO `user` VALUES ('73', '7890', '9999');
INSERT INTO `user` VALUES ('74', '林李权', '6767');
INSERT INTO `user` VALUES ('75', '0111', '2222');
INSERT INTO `user` VALUES ('76', '7878', '7777');
INSERT INTO `user` VALUES ('77', '666', '7878');
INSERT INTO `user` VALUES ('78', '6545', '0000');
INSERT INTO `user` VALUES ('79', '777', '888');
INSERT INTO `user` VALUES ('80', '8989', '999');
INSERT INTO `user` VALUES ('81', '777', '3663');
INSERT INTO `user` VALUES ('82', '5555', '5656');
INSERT INTO `user` VALUES ('83', '6767', '555');
INSERT INTO `user` VALUES ('84', '4545', '444');
INSERT INTO `user` VALUES ('85', '444', '333');
INSERT INTO `user` VALUES ('86', '8080', '777');
INSERT INTO `user` VALUES ('87', '6677', '4444');
INSERT INTO `user` VALUES ('88', '344', '333');
INSERT INTO `user` VALUES ('89', '3636', '666');
INSERT INTO `user` VALUES ('90', '6868', '444');
INSERT INTO `user` VALUES ('91', '8877', '666');
INSERT INTO `user` VALUES ('92', '9900', '777');
INSERT INTO `user` VALUES ('93', '4533', '555');
INSERT INTO `user` VALUES ('94', '4455', '333');
INSERT INTO `user` VALUES ('95', '4646', '444');
INSERT INTO `user` VALUES ('96', '777', '222');
INSERT INTO `user` VALUES ('97', '2323', '111');
INSERT INTO `user` VALUES ('98', '5656', '555');
INSERT INTO `user` VALUES ('99', '3434', '222');
INSERT INTO `user` VALUES ('100', '777', '444');
INSERT INTO `user` VALUES ('101', '7072', '999');
INSERT INTO `user` VALUES ('102', '6060', '888');
INSERT INTO `user` VALUES ('103', '999', '000');
INSERT INTO `user` VALUES ('104', '2828', '222');
INSERT INTO `user` VALUES ('105', '4949', '444');
INSERT INTO `user` VALUES ('106', '4949', '555');
INSERT INTO `user` VALUES ('107', '4848', '444');
INSERT INTO `user` VALUES ('108', '2626', '333');
INSERT INTO `user` VALUES ('109', '45645', '45645');
INSERT INTO `user` VALUES ('110', '7373', '333');
INSERT INTO `user` VALUES ('111', '7373', '555');
INSERT INTO `user` VALUES ('112', '5544', '333');
INSERT INTO `user` VALUES ('113', '5544', '555');
INSERT INTO `user` VALUES ('114', '8686', '666');
INSERT INTO `user` VALUES ('115', '8686', '777');
INSERT INTO `user` VALUES ('116', '9494', '333');
INSERT INTO `user` VALUES ('117', '3838', '666');
INSERT INTO `user` VALUES ('118', '3838', '888');
INSERT INTO `user` VALUES ('119', '8844', '333');
INSERT INTO `user` VALUES ('120', '5599', '333');
INSERT INTO `user` VALUES ('121', '5599', '444');
INSERT INTO `user` VALUES ('122', '8585', '333');
INSERT INTO `user` VALUES ('123', '8585', '444');
INSERT INTO `user` VALUES ('124', '0033', '333');
INSERT INTO `user` VALUES ('125', '0033', '444');
INSERT INTO `user` VALUES ('126', '7799', '000');
INSERT INTO `user` VALUES ('127', '7799', '111');
INSERT INTO `user` VALUES ('128', '10188', '999');
INSERT INTO `user` VALUES ('134', '6050', '333');
INSERT INTO `user` VALUES ('135', '6050', '444');
INSERT INTO `user` VALUES ('136', '3366', '333');
INSERT INTO `user` VALUES ('137', '3232', '333');
INSERT INTO `user` VALUES ('138', '3232', '444');
INSERT INTO `user` VALUES ('139', '46455', '333');
INSERT INTO `user` VALUES ('140', '46455', '444');
INSERT INTO `user` VALUES ('141', 'z0505', '66666');
INSERT INTO `user` VALUES ('142', '7474', '333');
INSERT INTO `user` VALUES ('143', '7474', '444');
INSERT INTO `user` VALUES ('144', 'a666', '333');
INSERT INTO `user` VALUES ('145', 'a667', '888');
INSERT INTO `user` VALUES ('146', 'c33', '333');
INSERT INTO `user` VALUES ('147', 'c33', '444');
INSERT INTO `user` VALUES ('148', 'yy30', '333');
INSERT INTO `user` VALUES ('149', 'uu66', '666');
INSERT INTO `user` VALUES ('150', 'i44', '555');
INSERT INTO `user` VALUES ('151', 'k88', '777');
INSERT INTO `user` VALUES ('152', 't22', '666');
INSERT INTO `user` VALUES ('153', 'y90', '555');
INSERT INTO `user` VALUES ('154', 'r50', '444');
INSERT INTO `user` VALUES ('155', 'r56', '333');
INSERT INTO `user` VALUES ('156', 'i55', '444');
INSERT INTO `user` VALUES ('157', '123', '321');
INSERT INTO `user` VALUES ('158', 'zhaolian\'an', 'zhaozhao');
INSERT INTO `user` VALUES ('159', 't101', '333');
INSERT INTO `user` VALUES ('160', 't50', '333');
INSERT INTO `user` VALUES ('161', 't40', '555');
INSERT INTO `user` VALUES ('162', 't43', '555');
INSERT INTO `user` VALUES ('163', 't88', '555');
INSERT INTO `user` VALUES ('164', 'r44', '555');
INSERT INTO `user` VALUES ('165', 'r22', '333');
INSERT INTO `user` VALUES ('166', 't55', '333');
INSERT INTO `user` VALUES ('167', 't32', '333');
INSERT INTO `user` VALUES ('168', 't33', '666');
INSERT INTO `user` VALUES ('169', 't77', '555');
INSERT INTO `user` VALUES ('170', 't888', '333');
INSERT INTO `user` VALUES ('171', 't63', '555');
INSERT INTO `user` VALUES ('172', 't83', '333');
INSERT INTO `user` VALUES ('173', 't99', '777');
INSERT INTO `user` VALUES ('174', 'r55', '555');
INSERT INTO `user` VALUES ('175', 't64', '555');
INSERT INTO `user` VALUES ('176', 'u55', '333');
INSERT INTO `user` VALUES ('177', 't01', '555');
INSERT INTO `user` VALUES ('178', 'u44', '777');
INSERT INTO `user` VALUES ('179', 'i666', '666');
INSERT INTO `user` VALUES ('180', 't78', '444');
INSERT INTO `user` VALUES ('181', 'i99', '888');
INSERT INTO `user` VALUES ('182', 't66', '888');
INSERT INTO `user` VALUES ('186', 'w33', '888');
INSERT INTO `user` VALUES ('187', 'r77', '555');
INSERT INTO `user` VALUES ('188', 'g55', '123');
INSERT INTO `user` VALUES ('189', 'e55', '333');
INSERT INTO `user` VALUES ('190', 'v33', '555');
INSERT INTO `user` VALUES ('191', 's33', '555');

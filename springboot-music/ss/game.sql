/*
 Navicat Premium Data Transfer

 Source Server         : y_liquan
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : game

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 15/03/2020 14:13:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for musiclink
-- ----------------------------
DROP TABLE IF EXISTS `musiclink`;
CREATE TABLE `musiclink`  (
  `ml_id` int(11) NOT NULL AUTO_INCREMENT,
  `ml_songName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ml_singer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ml_songLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ml_lyricLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ml_photoLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ml_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musiclink
-- ----------------------------
INSERT INTO `musiclink` VALUES (31, '侧脸', '于果', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E4%BA%8E%E6%9E%9C%20-%20%E4%BE%A7%E8%84%B8.mp3', '0', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list10.jpg');
INSERT INTO `musiclink` VALUES (32, 'Jar Of Love', '曲婉婷', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9B%B2%E5%A9%89%E5%A9%B7%20-%20Jar%20Of%20Love.mp3', '0', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list11.jpg');
INSERT INTO `musiclink` VALUES (33, '年轮说', '杨丞琳', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%A8%E4%B8%9E%E7%90%B3%20-%20%E5%B9%B4%E8%BD%AE%E8%AF%B4.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list21.jpg');
INSERT INTO `musiclink` VALUES (34, '一个人挺好', '孟颖', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%AD%9F%E9%A2%96%20-%20%E4%B8%80%E4%B8%AA%E4%BA%BA%E6%8C%BA%E5%A5%BD.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list22.jpg');
INSERT INTO `musiclink` VALUES (35, '说散就散', '袁维娅', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%A2%81%E7%BB%B4%E5%A8%85-%E8%AF%B4%E6%95%A3%E5%B0%B1%E6%95%A3.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list23.jpg');
INSERT INTO `musiclink` VALUES (36, '可惜没如果', '林俊杰', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9E%97%E4%BF%8A%E6%9D%B0%20-%20%E5%8F%AF%E6%83%9C%E6%B2%A1%E5%A6%82%E6%9E%9C.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list24.jpg');
INSERT INTO `musiclink` VALUES (37, '你就不要想起我', '田馥甄', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E7%94%B0%E9%A6%A5%E7%94%84%20-%20%E4%BD%A0%E5%B0%B1%E4%B8%8D%E8%A6%81%E6%83%B3%E8%B5%B7%E6%88%91.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list25.jpg');
INSERT INTO `musiclink` VALUES (38, '遥不可及的你', '许继雯', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%AE%B8%E7%BB%A7%E9%9B%AF_%20-%20%E9%81%A5%E4%B8%8D%E5%8F%AF%E5%8F%8A%E7%9A%84%E4%BD%A0.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list26.jpg');
INSERT INTO `musiclink` VALUES (39, '四块五', '艺晨', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%89%BA%E6%99%A8%20-%20%E5%9B%9B%E5%9D%97%E4%BA%94.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list27.jpg');
INSERT INTO `musiclink` VALUES (40, '感谢你曾来过', '周思涵、Ayo97', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%91%A8%E6%80%9D%E6%B6%B5%E3%80%81Ayo97%20-%20%E6%84%9F%E8%B0%A2%E4%BD%A0%E6%9B%BE%E6%9D%A5%E8%BF%87.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list28.jpg');
INSERT INTO `musiclink` VALUES (41, '可能否', '木小雅', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9C%A8%E5%B0%8F%E9%9B%85-%E5%8F%AF%E8%83%BD%E5%90%A6.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list29.jpg');
INSERT INTO `musiclink` VALUES (42, '我曾', '鱼大仙儿', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E9%B1%BC%E5%A4%A7%E4%BB%99%E5%84%BF%20-%20%E6%88%91%E6%9B%BE.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list30.jpg');
INSERT INTO `musiclink` VALUES (43, '男孩', '梁博', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%A2%81%E5%8D%9A%20-%20%E7%94%B7%E5%AD%A9%20%28Live%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list31.jpg');
INSERT INTO `musiclink` VALUES (44, '年少有为', '李荣浩', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%8E%E8%8D%A3%E6%B5%A9%20-%20%E5%B9%B4%E5%B0%91%E6%9C%89%E4%B8%BA.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list32.jpg');
INSERT INTO `musiclink` VALUES (45, '那个女孩', '张泽熙', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%BC%A0%E6%B3%BD%E7%86%99%20-%20%E9%82%A3%E4%B8%AA%E5%A5%B3%E5%AD%A9.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list33.jpg');
INSERT INTO `musiclink` VALUES (46, '那女孩对我说 (正式版)', '小阿七', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%B0%8F%E9%98%BF%E4%B8%83%20-%20%E9%82%A3%E5%A5%B3%E5%AD%A9%E5%AF%B9%E6%88%91%E8%AF%B4%20%28%E6%AD%A3%E5%BC%8F%E7%89%88%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list34.jpg');
INSERT INTO `musiclink` VALUES (47, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E4%B9%9D%E5%A7%A8%E3%80%81%E4%B9%9D%E5%A7%A8%E5%A4%AB%20-%20%E6%B8%85%E6%96%B0%E7%9A%84%E5%B0%8F%E5%A5%B3%E5%AD%A9%20%28%E7%BC%85%E7%94%B8%E8%AF%AD%E5%8E%9F%E7%89%88%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list35.jpg');
INSERT INTO `musiclink` VALUES (48, '贝加尔湖畔', '李健', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%8E%E5%81%A5%20%E8%B4%9D%E5%8A%A0%E5%B0%94%E6%B9%96%E7%95%94.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list36.jpg');
INSERT INTO `musiclink` VALUES (49, '方圆几里', '薛之谦', 'music/薛之谦 - 方圆几里.mp3', '0', 'images/list37.jpg');
INSERT INTO `musiclink` VALUES (50, '浪子回头', '茄子蛋', 'music/茄子蛋 - 浪子回头.mp3', '0', 'images/list38.jpg');
INSERT INTO `musiclink` VALUES (51, '桥边姑娘', '海伦', 'music/海伦 - 桥边姑娘.mp3', '0', 'images/list39.jpg');
INSERT INTO `musiclink` VALUES (52, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list40.jpg');

-- ----------------------------
-- Table structure for mymusic
-- ----------------------------
DROP TABLE IF EXISTS `mymusic`;
CREATE TABLE `mymusic`  (
  `my_id` int(11) NOT NULL AUTO_INCREMENT,
  `my_songName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `my_singer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `my_songLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `my_lyricLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `my_photoLink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`my_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 457 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mymusic
-- ----------------------------
INSERT INTO `mymusic` VALUES (204, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (208, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (212, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (228, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (229, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (230, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (231, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (232, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', -1);
INSERT INTO `mymusic` VALUES (233, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (237, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', -1);
INSERT INTO `mymusic` VALUES (240, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (241, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (242, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (243, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (244, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (247, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (248, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (254, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (265, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (268, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (269, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (270, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (271, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (274, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (275, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (277, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', -1);
INSERT INTO `mymusic` VALUES (278, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (280, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (281, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (282, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (284, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (285, '天亮以前说再见', '何野', 'music/何野 - 天亮以前说再见.mp3', '00000', 'images/list5.jpg', -1);
INSERT INTO `mymusic` VALUES (286, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (287, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (288, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (289, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (290, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (291, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (292, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (293, '落', '艾辰', 'music/艾辰 - 落.mp3', '00000', 'images/list3.jpg', -1);
INSERT INTO `mymusic` VALUES (294, '自我疗伤', 'M哥', 'music/自我疗伤.mp3', '00', 'images/list2.jpg', -1);
INSERT INTO `mymusic` VALUES (295, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (296, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', -1);
INSERT INTO `mymusic` VALUES (297, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (298, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (300, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (301, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (303, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', -1);
INSERT INTO `mymusic` VALUES (304, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', -1);
INSERT INTO `mymusic` VALUES (305, '知否知否', '胡夏、郁可唯', 'music/胡夏、郁可唯 - 知否知否.mp3', '22', 'images/list6.jpg', -1);
INSERT INTO `mymusic` VALUES (306, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (307, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (308, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (309, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (310, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (311, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', -1);
INSERT INTO `mymusic` VALUES (312, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', -1);
INSERT INTO `mymusic` VALUES (313, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', -1);
INSERT INTO `mymusic` VALUES (314, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (315, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (316, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (317, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (318, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (319, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (320, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (321, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (323, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (324, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (326, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (327, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (328, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (331, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', -1);
INSERT INTO `mymusic` VALUES (332, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (333, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (339, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (341, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (343, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (344, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (350, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (356, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', -1);
INSERT INTO `mymusic` VALUES (357, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', -1);
INSERT INTO `mymusic` VALUES (360, '自我疗伤', 'M哥', 'music/自我疗伤.mp3', '00', 'images/list2.jpg', -1);
INSERT INTO `mymusic` VALUES (368, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list16.jpg', -1);
INSERT INTO `mymusic` VALUES (370, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', -1);
INSERT INTO `mymusic` VALUES (375, '落', '艾辰', 'music/艾辰 - 落.mp3', '00000', 'images/list3.jpg', -1);
INSERT INTO `mymusic` VALUES (376, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', -1);
INSERT INTO `mymusic` VALUES (377, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', -1);
INSERT INTO `mymusic` VALUES (386, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', 'music/九姨、九姨夫 - 清新的小女孩 (缅甸语原版).mp3', '0', 'images/list35.jpg', -1);
INSERT INTO `mymusic` VALUES (387, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg', -1);
INSERT INTO `mymusic` VALUES (388, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', -1);
INSERT INTO `mymusic` VALUES (389, '年少有为', '李荣浩', 'music/李荣浩 - 年少有为.mp3', '0', 'images/list32.jpg', -1);
INSERT INTO `mymusic` VALUES (390, '男孩', '梁博', 'music/梁博 - 男孩 (Live).mp3', '0', 'images/list31.jpg', -1);
INSERT INTO `mymusic` VALUES (391, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', -1);
INSERT INTO `mymusic` VALUES (392, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg', -1);
INSERT INTO `mymusic` VALUES (393, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg', -1);
INSERT INTO `mymusic` VALUES (395, '遥不可及的你', '许继雯', 'music/许继雯_ - 遥不可及的你.mp3', '0', 'images/list26.jpg', -1);
INSERT INTO `mymusic` VALUES (396, '你就不要想起我', '田馥甄', 'music/田馥甄 - 你就不要想起我.mp3', '0', 'images/list25.jpg', -1);
INSERT INTO `mymusic` VALUES (398, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg', -1);
INSERT INTO `mymusic` VALUES (399, '一个人挺好', '孟颖', 'music/孟颖 - 一个人挺好.mp3', '0', 'images/list22.jpg', -1);
INSERT INTO `mymusic` VALUES (400, '年轮说', '杨丞琳', 'music/杨丞琳 - 年轮说.mp3', '0', 'images/list21.jpg', -1);
INSERT INTO `mymusic` VALUES (401, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', -1);
INSERT INTO `mymusic` VALUES (402, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', -1);
INSERT INTO `mymusic` VALUES (403, '桥边姑娘', '海伦', 'music/海伦 - 桥边姑娘.mp3', '0', 'images/list39.jpg', -1);
INSERT INTO `mymusic` VALUES (404, '方圆几里', '薛之谦', 'music/薛之谦 - 方圆几里.mp3', '0', 'images/list37.jpg', -1);
INSERT INTO `mymusic` VALUES (405, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg', -1);
INSERT INTO `mymusic` VALUES (406, '可惜没如果', '林俊杰', 'music/林俊杰 - 可惜没如果.mp3', '0', 'images/list24.jpg', -1);
INSERT INTO `mymusic` VALUES (407, '浪子回头', '茄子蛋', 'music/茄子蛋 - 浪子回头.mp3', '0', 'images/list38.jpg', -1);
INSERT INTO `mymusic` VALUES (408, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg', -1);
INSERT INTO `mymusic` VALUES (409, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', -1);
INSERT INTO `mymusic` VALUES (410, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg', -1);
INSERT INTO `mymusic` VALUES (411, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', 'music/九姨、九姨夫 - 清新的小女孩 (缅甸语原版).mp3', '0', 'images/list35.jpg', -1);
INSERT INTO `mymusic` VALUES (412, '你就不要想起我', '田馥甄', 'music/田馥甄 - 你就不要想起我.mp3', '0', 'images/list25.jpg', -1);
INSERT INTO `mymusic` VALUES (413, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', -1);
INSERT INTO `mymusic` VALUES (414, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg', -1);
INSERT INTO `mymusic` VALUES (415, '四块五', '艺晨', 'music/艺晨 - 四块五.mp3', '0', 'images/list27.jpg', -1);
INSERT INTO `mymusic` VALUES (416, '年少有为', '李荣浩', 'music/李荣浩 - 年少有为.mp3', '0', 'images/list32.jpg', -1);
INSERT INTO `mymusic` VALUES (417, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', -1);
INSERT INTO `mymusic` VALUES (418, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg', -1);
INSERT INTO `mymusic` VALUES (419, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list40.jpg', -1);
INSERT INTO `mymusic` VALUES (420, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg', -1);
INSERT INTO `mymusic` VALUES (421, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', -1);
INSERT INTO `mymusic` VALUES (423, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg', -1);
INSERT INTO `mymusic` VALUES (424, '四块五', '艺晨', 'music/艺晨 - 四块五.mp3', '0', 'images/list27.jpg', -1);
INSERT INTO `mymusic` VALUES (425, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg', 205);
INSERT INTO `mymusic` VALUES (426, '方圆几里', '薛之谦', 'music/薛之谦 - 方圆几里.mp3', '0', 'images/list37.jpg', 206);
INSERT INTO `mymusic` VALUES (427, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list40.jpg', 206);
INSERT INTO `mymusic` VALUES (428, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg', 206);
INSERT INTO `mymusic` VALUES (429, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', 206);
INSERT INTO `mymusic` VALUES (430, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg', 206);
INSERT INTO `mymusic` VALUES (431, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list40.jpg', 207);
INSERT INTO `mymusic` VALUES (432, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg', 207);
INSERT INTO `mymusic` VALUES (433, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', 207);
INSERT INTO `mymusic` VALUES (434, '浪子回头', '茄子蛋', 'music/茄子蛋 - 浪子回头.mp3', '0', 'images/list38.jpg', 207);
INSERT INTO `mymusic` VALUES (436, '桥边姑娘', '海伦', 'music/海伦 - 桥边姑娘.mp3', '0', 'images/list39.jpg', 208);
INSERT INTO `mymusic` VALUES (437, '浪子回头', '茄子蛋', 'music/茄子蛋 - 浪子回头.mp3', '0', 'images/list38.jpg', 208);
INSERT INTO `mymusic` VALUES (438, '方圆几里', '薛之谦', 'music/薛之谦 - 方圆几里.mp3', '0', 'images/list37.jpg', 208);
INSERT INTO `mymusic` VALUES (439, '贝加尔湖畔', '李健', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%8E%E5%81%A5%20%E8%B4%9D%E5%8A%A0%E5%B0%94%E6%B9%96%E7%95%94.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list36.jpg', 208);
INSERT INTO `mymusic` VALUES (440, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E4%B9%9D%E5%A7%A8%E3%80%81%E4%B9%9D%E5%A7%A8%E5%A4%AB%20-%20%E6%B8%85%E6%96%B0%E7%9A%84%E5%B0%8F%E5%A5%B3%E5%AD%A9%20%28%E7%BC%85%E7%94%B8%E8%AF%AD%E5%8E%9F%E7%89%88%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list35.jpg', 208);
INSERT INTO `mymusic` VALUES (441, '那女孩对我说 (正式版)', '小阿七', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%B0%8F%E9%98%BF%E4%B8%83%20-%20%E9%82%A3%E5%A5%B3%E5%AD%A9%E5%AF%B9%E6%88%91%E8%AF%B4%20%28%E6%AD%A3%E5%BC%8F%E7%89%88%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list34.jpg', 208);
INSERT INTO `mymusic` VALUES (442, '那个女孩', '张泽熙', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%BC%A0%E6%B3%BD%E7%86%99%20-%20%E9%82%A3%E4%B8%AA%E5%A5%B3%E5%AD%A9.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list33.jpg', 208);
INSERT INTO `mymusic` VALUES (443, '年少有为', '李荣浩', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%8E%E8%8D%A3%E6%B5%A9%20-%20%E5%B9%B4%E5%B0%91%E6%9C%89%E4%B8%BA.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list32.jpg', 208);
INSERT INTO `mymusic` VALUES (444, '男孩', '梁博', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%A2%81%E5%8D%9A%20-%20%E7%94%B7%E5%AD%A9%20%28Live%29.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list31.jpg', 208);
INSERT INTO `mymusic` VALUES (445, '我曾', '鱼大仙儿', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E9%B1%BC%E5%A4%A7%E4%BB%99%E5%84%BF%20-%20%E6%88%91%E6%9B%BE.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list30.jpg', 208);
INSERT INTO `mymusic` VALUES (446, '可能否', '木小雅', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9C%A8%E5%B0%8F%E9%9B%85-%E5%8F%AF%E8%83%BD%E5%90%A6.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list29.jpg', 208);
INSERT INTO `mymusic` VALUES (447, '感谢你曾来过', '周思涵、Ayo97', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%91%A8%E6%80%9D%E6%B6%B5%E3%80%81Ayo97%20-%20%E6%84%9F%E8%B0%A2%E4%BD%A0%E6%9B%BE%E6%9D%A5%E8%BF%87.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list28.jpg', 208);
INSERT INTO `mymusic` VALUES (448, '四块五', '艺晨', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%89%BA%E6%99%A8%20-%20%E5%9B%9B%E5%9D%97%E4%BA%94.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list27.jpg', 208);
INSERT INTO `mymusic` VALUES (449, '遥不可及的你', '许继雯', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%AE%B8%E7%BB%A7%E9%9B%AF_%20-%20%E9%81%A5%E4%B8%8D%E5%8F%AF%E5%8F%8A%E7%9A%84%E4%BD%A0.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list26.jpg', 208);
INSERT INTO `mymusic` VALUES (450, '你就不要想起我', '田馥甄', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E7%94%B0%E9%A6%A5%E7%94%84%20-%20%E4%BD%A0%E5%B0%B1%E4%B8%8D%E8%A6%81%E6%83%B3%E8%B5%B7%E6%88%91.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list25.jpg', 208);
INSERT INTO `mymusic` VALUES (451, '可惜没如果', '林俊杰', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9E%97%E4%BF%8A%E6%9D%B0%20-%20%E5%8F%AF%E6%83%9C%E6%B2%A1%E5%A6%82%E6%9E%9C.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list24.jpg', 208);
INSERT INTO `mymusic` VALUES (452, '说散就散', '袁维娅', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E8%A2%81%E7%BB%B4%E5%A8%85-%E8%AF%B4%E6%95%A3%E5%B0%B1%E6%95%A3.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list23.jpg', 208);
INSERT INTO `mymusic` VALUES (453, '一个人挺好', '孟颖', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E5%AD%9F%E9%A2%96%20-%20%E4%B8%80%E4%B8%AA%E4%BA%BA%E6%8C%BA%E5%A5%BD.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list22.jpg', 208);
INSERT INTO `mymusic` VALUES (454, '年轮说', '杨丞琳', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9D%A8%E4%B8%9E%E7%90%B3%20-%20%E5%B9%B4%E8%BD%AE%E8%AF%B4.mp3', '0', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list21.jpg', 208);
INSERT INTO `mymusic` VALUES (455, 'Jar Of Love', '曲婉婷', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E6%9B%B2%E5%A9%89%E5%A9%B7%20-%20Jar%20Of%20Love.mp3', '0', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list11.jpg', 208);
INSERT INTO `mymusic` VALUES (456, '侧脸', '于果', 'https://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/music/%E4%BA%8E%E6%9E%9C%20-%20%E4%BE%A7%E8%84%B8.mp3', '0', '\r\nhttps://liquan-springboot-music.oss-cn-shanghai.aliyuncs.com/song_img/list10.jpg', 208);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`test_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '小李', '北京大学', '54');
INSERT INTO `test` VALUES (2, 'Tom', '中科大', '657');
INSERT INTO `test` VALUES (3, '陆陆', '清华大学', '567');
INSERT INTO `test` VALUES (5, '45', '36', '363');
INSERT INTO `test` VALUES (6, '457', '36', '6374');
INSERT INTO `test` VALUES (7, '346', '57', '457');
INSERT INTO `test` VALUES (8, '346', '58', '457');
INSERT INTO `test` VALUES (9, '123', '读后感', '832');
INSERT INTO `test` VALUES (10, '324', '25225', '2352');
INSERT INTO `test` VALUES (11, 'me to', '6345', '435');
INSERT INTO `test` VALUES (12, NULL, '456', '435');
INSERT INTO `test` VALUES (14, '33', '35', '3');
INSERT INTO `test` VALUES (15, '554', '54', '345');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `index_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李权', '10086', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (6, '101', '101', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (7, '李明', '1234', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (9, '66666', '88888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (10, '林李权', '3838', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (11, '5464', '3567', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (12, '475687', '56785', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (13, '67900', '8989', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (14, '5477', '4577', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (15, '小林', '10000', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (16, '56756888', '56887', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (17, '76989', '78978', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (19, '634634', '5464564', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (20, '678', '678678', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (22, '54856', '658568', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (23, '54745', '45643', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (24, '54785467', '585858', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (25, '45634', '34636', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (26, '45745', '45747', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (28, '77777', '88888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (32, '67457', '674574', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (34, '7686', '585585444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (36, '787878', '78787895', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (37, '45767', '585568500', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (38, '45777', '45777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (39, '47457', '474888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (40, '47457', '474888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (41, '787899', '8798700', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (42, '36457', '6575677', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (43, '36457', '6575677', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (44, '65765888', '67858577', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (45, '65765888', '67858577', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (46, '456745', '45745788', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (47, '657658885', '67567', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (48, '68756', '5685699', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (49, '68756', '5685699678', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (50, '567', '6756', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (51, '568568', '6585655', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (52, '568568', '6585655', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (53, '88899', '88', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (54, '88899', '88', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (55, '363666', '4564566', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (56, '363666', '4564566', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (57, '346457', '45747', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (58, '346457', '45747', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (59, '658568989', '8989', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (60, '658568989', '8989', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (61, '1212', '1313', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (62, '56', '456', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (63, '456', '123', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (64, '8989', '8888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (65, '111', '222', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (66, '88', '33', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (67, '568', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (68, '889', '778', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (70, '1717', '1515', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (71, '1414', '4645', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (72, '456789', '123456', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (73, '7890', '9999', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (74, '林李权', '6767', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (75, '0111', '2222', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (76, '7878', '7777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (77, '666', '7878', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (78, '6545', '0000', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (79, '777', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (80, '8989', '999', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (81, '777', '3663', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (82, '5555', '5656', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (83, '6767', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (84, '4545', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (85, '444', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (86, '8080', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (87, '6677', '4444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (88, '344', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (89, '3636', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (90, '6868', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (91, '8877', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (92, '9900', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (93, '4533', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (94, '4455', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (95, '4646', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (96, '777', '222', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (97, '2323', '111', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (98, '5656', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (99, '3434', '222', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (100, '777', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (101, '7072', '999', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (102, '6060', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (103, '999', '000', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (104, '2828', '222', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (105, '4949', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (106, '4949', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (107, '4848', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (108, '2626', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (109, '45645', '45645', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (110, '7373', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (111, '7373', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (112, '5544', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (113, '5544', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (114, '8686', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (115, '8686', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (116, '9494', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (117, '3838', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (118, '3838', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (119, '8844', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (120, '5599', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (121, '5599', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (122, '8585', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (123, '8585', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (124, '0033', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (125, '0033', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (126, '7799', '000', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (127, '7799', '111', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (128, '10188', '999', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (134, '6050', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (135, '6050', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (136, '3366', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (137, '3232', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (138, '3232', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (139, '46455', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (140, '46455', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (141, 'z0505', '66666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (142, '7474', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (143, '7474', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (144, 'a666', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (145, 'a667', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (146, 'c33', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (147, 'c33', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (148, 'yy30', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (149, 'uu66', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (150, 'i44', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (151, 'k88', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (152, 't22', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (153, 'y90', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (154, 'r50', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (155, 'r56', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (156, 'i55', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (157, '123', '321', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (158, 'zhaolian\'an', 'zhaozhao', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (159, 't101', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (160, 't50', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (161, 't40', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (162, 't43', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (163, 't88', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (164, 'r44', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (165, 'r22', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (166, 't55', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (167, 't32', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (168, 't33', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (169, 't77', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (170, 't888', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (171, 't63', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (172, 't83', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (173, 't99', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (174, 'r55', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (175, 't64', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (176, 'u55', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (177, 't01', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (178, 'u44', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (179, 'i666', '666', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (180, 't78', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (181, 'i99', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (182, 't66', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (186, 'w33', '888', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (187, 'r77', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (188, 'g55', '123', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (189, 'e55', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (190, 'v33', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (191, 's33', '555', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (192, 'hh33', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (193, 'hg33', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (194, 'yyy333', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (195, 'ii77', '444', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (196, 'u88', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (197, 'u66', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (198, 'i88', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (199, 'i9999', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (200, 'hh333', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (201, 'tt666', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (202, 'llq', '10086', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (203, 'h66', '333', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (204, '小李', '101', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (205, 'j77', '777', '2020-03-15 01:07:43');
INSERT INTO `user` VALUES (206, 'y88', '888', '2020-03-15 01:14:47');
INSERT INTO `user` VALUES (207, '隔壁老王', '1314', '2020-03-15 11:03:54');
INSERT INTO `user` VALUES (208, 'h345', '123456', '2020-03-15 13:38:45');

SET FOREIGN_KEY_CHECKS = 1;

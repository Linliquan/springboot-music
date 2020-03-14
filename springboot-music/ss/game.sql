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

 Date: 15/03/2020 00:45:53
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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of musiclink
-- ----------------------------
INSERT INTO `musiclink` VALUES (33, '年轮说', '杨丞琳', 'music/杨丞琳 - 年轮说.mp3', '0', 'images/list21.jpg');
INSERT INTO `musiclink` VALUES (34, '一个人挺好', '孟颖', 'music/孟颖 - 一个人挺好.mp3', '0', 'images/list22.jpg');
INSERT INTO `musiclink` VALUES (35, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg');
INSERT INTO `musiclink` VALUES (36, '可惜没如果', '林俊杰', 'music/林俊杰 - 可惜没如果.mp3', '0', 'images/list24.jpg');
INSERT INTO `musiclink` VALUES (37, '你就不要想起我', '田馥甄', 'music/田馥甄 - 你就不要想起我.mp3', '0', 'images/list25.jpg');
INSERT INTO `musiclink` VALUES (38, '遥不可及的你', '许继雯', 'music/许继雯_ - 遥不可及的你.mp3', '0', 'images/list26.jpg');
INSERT INTO `musiclink` VALUES (39, '四块五', '艺晨', 'music/艺晨 - 四块五.mp3', '0', 'images/list27.jpg');
INSERT INTO `musiclink` VALUES (40, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg');
INSERT INTO `musiclink` VALUES (41, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg');
INSERT INTO `musiclink` VALUES (42, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg');
INSERT INTO `musiclink` VALUES (43, '男孩', '梁博', 'music/梁博 - 男孩 (Live).mp3', '0', 'images/list31.jpg');
INSERT INTO `musiclink` VALUES (44, '年少有为', '李荣浩', 'music/李荣浩 - 年少有为.mp3', '0', 'images/list32.jpg');
INSERT INTO `musiclink` VALUES (45, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg');
INSERT INTO `musiclink` VALUES (46, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg');
INSERT INTO `musiclink` VALUES (47, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', 'music/九姨、九姨夫 - 清新的小女孩 (缅甸语原版).mp3', '0', 'images/list35.jpg');
INSERT INTO `musiclink` VALUES (48, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg');
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
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mymusic
-- ----------------------------
INSERT INTO `mymusic` VALUES (204, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 180);
INSERT INTO `mymusic` VALUES (208, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 180);
INSERT INTO `mymusic` VALUES (212, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 181);
INSERT INTO `mymusic` VALUES (228, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 181);
INSERT INTO `mymusic` VALUES (229, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 181);
INSERT INTO `mymusic` VALUES (230, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 182);
INSERT INTO `mymusic` VALUES (231, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 182);
INSERT INTO `mymusic` VALUES (232, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', 182);
INSERT INTO `mymusic` VALUES (233, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 182);
INSERT INTO `mymusic` VALUES (237, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', 182);
INSERT INTO `mymusic` VALUES (240, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 183);
INSERT INTO `mymusic` VALUES (241, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 183);
INSERT INTO `mymusic` VALUES (242, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 183);
INSERT INTO `mymusic` VALUES (243, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 183);
INSERT INTO `mymusic` VALUES (244, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 186);
INSERT INTO `mymusic` VALUES (247, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 186);
INSERT INTO `mymusic` VALUES (248, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 188);
INSERT INTO `mymusic` VALUES (254, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 189);
INSERT INTO `mymusic` VALUES (265, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 190);
INSERT INTO `mymusic` VALUES (268, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 191);
INSERT INTO `mymusic` VALUES (269, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 191);
INSERT INTO `mymusic` VALUES (270, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 191);
INSERT INTO `mymusic` VALUES (271, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 191);
INSERT INTO `mymusic` VALUES (274, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 191);
INSERT INTO `mymusic` VALUES (275, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 191);
INSERT INTO `mymusic` VALUES (277, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', 191);
INSERT INTO `mymusic` VALUES (278, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 191);
INSERT INTO `mymusic` VALUES (280, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 192);
INSERT INTO `mymusic` VALUES (281, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 192);
INSERT INTO `mymusic` VALUES (282, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 192);
INSERT INTO `mymusic` VALUES (284, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 193);
INSERT INTO `mymusic` VALUES (285, '天亮以前说再见', '何野', 'music/何野 - 天亮以前说再见.mp3', '00000', 'images/list5.jpg', 193);
INSERT INTO `mymusic` VALUES (286, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 193);
INSERT INTO `mymusic` VALUES (287, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 194);
INSERT INTO `mymusic` VALUES (288, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 194);
INSERT INTO `mymusic` VALUES (289, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 194);
INSERT INTO `mymusic` VALUES (290, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 194);
INSERT INTO `mymusic` VALUES (291, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 194);
INSERT INTO `mymusic` VALUES (292, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 194);
INSERT INTO `mymusic` VALUES (293, '落', '艾辰', 'music/艾辰 - 落.mp3', '00000', 'images/list3.jpg', 194);
INSERT INTO `mymusic` VALUES (294, '自我疗伤', 'M哥', 'music/自我疗伤.mp3', '00', 'images/list2.jpg', 194);
INSERT INTO `mymusic` VALUES (295, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 194);
INSERT INTO `mymusic` VALUES (296, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', 194);
INSERT INTO `mymusic` VALUES (297, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 195);
INSERT INTO `mymusic` VALUES (298, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 195);
INSERT INTO `mymusic` VALUES (300, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 195);
INSERT INTO `mymusic` VALUES (301, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 195);
INSERT INTO `mymusic` VALUES (303, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', 195);
INSERT INTO `mymusic` VALUES (304, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', 195);
INSERT INTO `mymusic` VALUES (305, '知否知否', '胡夏、郁可唯', 'music/胡夏、郁可唯 - 知否知否.mp3', '22', 'images/list6.jpg', 195);
INSERT INTO `mymusic` VALUES (306, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 197);
INSERT INTO `mymusic` VALUES (307, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 197);
INSERT INTO `mymusic` VALUES (308, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 197);
INSERT INTO `mymusic` VALUES (309, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 197);
INSERT INTO `mymusic` VALUES (310, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 197);
INSERT INTO `mymusic` VALUES (311, '遥远的你', '221小伙伴', 'music/221小伙伴 - 遥远的你.mp3', '0', 'images/list1.jpg', 197);
INSERT INTO `mymusic` VALUES (312, '陪你到底', '广东雨神、许华升', 'music/广东雨神、许华升 - 陪你到底.mp3', '00000', 'images/list4.jpg', 197);
INSERT INTO `mymusic` VALUES (313, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', 198);
INSERT INTO `mymusic` VALUES (314, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 198);
INSERT INTO `mymusic` VALUES (315, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 198);
INSERT INTO `mymusic` VALUES (316, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 198);
INSERT INTO `mymusic` VALUES (317, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 198);
INSERT INTO `mymusic` VALUES (318, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 198);
INSERT INTO `mymusic` VALUES (319, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 199);
INSERT INTO `mymusic` VALUES (320, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 199);
INSERT INTO `mymusic` VALUES (321, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 199);
INSERT INTO `mymusic` VALUES (323, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 200);
INSERT INTO `mymusic` VALUES (324, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 200);
INSERT INTO `mymusic` VALUES (326, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 200);
INSERT INTO `mymusic` VALUES (327, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 201);
INSERT INTO `mymusic` VALUES (328, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 201);
INSERT INTO `mymusic` VALUES (331, '生僻字', '刘至佳', 'music/刘至佳 - 生僻字.mp3', '0', 'images/list11.jpg', 201);
INSERT INTO `mymusic` VALUES (332, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 201);
INSERT INTO `mymusic` VALUES (333, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 201);
INSERT INTO `mymusic` VALUES (339, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 202);
INSERT INTO `mymusic` VALUES (341, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 202);
INSERT INTO `mymusic` VALUES (343, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 202);
INSERT INTO `mymusic` VALUES (344, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 202);
INSERT INTO `mymusic` VALUES (350, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 0);
INSERT INTO `mymusic` VALUES (356, '说爱你', '刘至佳', 'music/刘至佳 - 说爱你.mp3', '00', 'images/list12.jpg', 6);
INSERT INTO `mymusic` VALUES (357, '可惜没如果', '又又wsy', 'music/又又wsy - 可惜没如果.mp3', '0', 'images/list15.jpg', 203);
INSERT INTO `mymusic` VALUES (360, '自我疗伤', 'M哥', 'music/自我疗伤.mp3', '00', 'images/list2.jpg', 6);
INSERT INTO `mymusic` VALUES (368, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list16.jpg', 6);
INSERT INTO `mymusic` VALUES (370, '你一定要幸福', '虎二 ', 'music/虎二 - 你一定要幸福.mp3', '000', 'images/list7.jpg', 6);
INSERT INTO `mymusic` VALUES (375, '落', '艾辰', 'music/艾辰 - 落.mp3', '00000', 'images/list3.jpg', 6);
INSERT INTO `mymusic` VALUES (376, '夜之光', '花姐', 'music/花姐 - 夜之光.mp3', '0', 'images/list9.jpg', 6);
INSERT INTO `mymusic` VALUES (377, '狂浪', '花姐', 'music/花姐 - 狂浪.mp3', '0', 'images/list8.jpg', 6);
INSERT INTO `mymusic` VALUES (386, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', 'music/九姨、九姨夫 - 清新的小女孩 (缅甸语原版).mp3', '0', 'images/list35.jpg', 204);
INSERT INTO `mymusic` VALUES (387, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg', 204);
INSERT INTO `mymusic` VALUES (388, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', 204);
INSERT INTO `mymusic` VALUES (389, '年少有为', '李荣浩', 'music/李荣浩 - 年少有为.mp3', '0', 'images/list32.jpg', 204);
INSERT INTO `mymusic` VALUES (390, '男孩', '梁博', 'music/梁博 - 男孩 (Live).mp3', '0', 'images/list31.jpg', 204);
INSERT INTO `mymusic` VALUES (391, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', 204);
INSERT INTO `mymusic` VALUES (392, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg', 204);
INSERT INTO `mymusic` VALUES (393, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg', 204);
INSERT INTO `mymusic` VALUES (395, '遥不可及的你', '许继雯', 'music/许继雯_ - 遥不可及的你.mp3', '0', 'images/list26.jpg', 204);
INSERT INTO `mymusic` VALUES (396, '你就不要想起我', '田馥甄', 'music/田馥甄 - 你就不要想起我.mp3', '0', 'images/list25.jpg', 204);
INSERT INTO `mymusic` VALUES (398, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg', 204);
INSERT INTO `mymusic` VALUES (399, '一个人挺好', '孟颖', 'music/孟颖 - 一个人挺好.mp3', '0', 'images/list22.jpg', 204);
INSERT INTO `mymusic` VALUES (400, '年轮说', '杨丞琳', 'music/杨丞琳 - 年轮说.mp3', '0', 'images/list21.jpg', 204);
INSERT INTO `mymusic` VALUES (401, '天份', '薛之谦', 'music/薛之谦 - 天份.mp3', '0', 'images/list14.jpg', 204);
INSERT INTO `mymusic` VALUES (402, '突然想起你', '王北车', 'music/王北车 - 突然想起你.mp3', '0', 'images/list13.jpg', 204);
INSERT INTO `mymusic` VALUES (403, '桥边姑娘', '海伦', 'music/海伦 - 桥边姑娘.mp3', '0', 'images/list39.jpg', 6);
INSERT INTO `mymusic` VALUES (404, '方圆几里', '薛之谦', 'music/薛之谦 - 方圆几里.mp3', '0', 'images/list37.jpg', 6);
INSERT INTO `mymusic` VALUES (405, '那女孩对我说 (正式版)', '小阿七', 'music/小阿七 - 那女孩对我说 (正式版).mp3', '0', 'images/list34.jpg', 6);
INSERT INTO `mymusic` VALUES (406, '可惜没如果', '林俊杰', 'music/林俊杰 - 可惜没如果.mp3', '0', 'images/list24.jpg', 6);
INSERT INTO `mymusic` VALUES (407, '浪子回头', '茄子蛋', 'music/茄子蛋 - 浪子回头.mp3', '0', 'images/list38.jpg', 6);
INSERT INTO `mymusic` VALUES (408, '感谢你曾来过', '周思涵、Ayo97', 'music/周思涵、Ayo97 - 感谢你曾来过.mp3', '0', 'images/list28.jpg', 6);
INSERT INTO `mymusic` VALUES (409, '那个女孩', '张泽熙', 'music/张泽熙 - 那个女孩.mp3', '0', 'images/list33.jpg', 6);
INSERT INTO `mymusic` VALUES (410, '说散就散', '袁维娅', 'music/袁维娅-说散就散.mp3', '0', 'images/list23.jpg', 6);
INSERT INTO `mymusic` VALUES (411, '清新的小女孩 (缅甸语原版)', '九姨、九姨夫', 'music/九姨、九姨夫 - 清新的小女孩 (缅甸语原版).mp3', '0', 'images/list35.jpg', 6);
INSERT INTO `mymusic` VALUES (412, '你就不要想起我', '田馥甄', 'music/田馥甄 - 你就不要想起我.mp3', '0', 'images/list25.jpg', 6);
INSERT INTO `mymusic` VALUES (413, '世界第一等', '浪哥', 'music/浪哥 - 世界第一等.mp3', '0', 'images/list10.jpg', 6);
INSERT INTO `mymusic` VALUES (414, '可能否', '木小雅', 'music/木小雅-可能否.mp3', '0', 'images/list29.jpg', 6);
INSERT INTO `mymusic` VALUES (415, '四块五', '艺晨', 'music/艺晨 - 四块五.mp3', '0', 'images/list27.jpg', 6);
INSERT INTO `mymusic` VALUES (416, '年少有为', '李荣浩', 'music/李荣浩 - 年少有为.mp3', '0', 'images/list32.jpg', 6);
INSERT INTO `mymusic` VALUES (417, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', 6);
INSERT INTO `mymusic` VALUES (418, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg', 6);
INSERT INTO `mymusic` VALUES (419, '世界这么大还是遇见你', '程响', 'music/程响 - 世界这么大还是遇见你.mp3', '0', 'images/list40.jpg', 205);
INSERT INTO `mymusic` VALUES (420, '贝加尔湖畔', '李健', 'music/李健 贝加尔湖畔.mp3', '0', 'images/list36.jpg', 205);
INSERT INTO `mymusic` VALUES (421, '我曾', '鱼大仙儿', 'music/鱼大仙儿 - 我曾.mp3', '0', 'images/list30.jpg', 205);
INSERT INTO `mymusic` VALUES (422, '可惜没如果(Live)', '林俊杰', 'music/林俊杰 - 可惜没如果.mp3', '0', 'images/list24.jpg', 205);

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
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `index_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '李权', '10086');
INSERT INTO `user` VALUES (6, '101', '101');
INSERT INTO `user` VALUES (7, '李明', '1234');
INSERT INTO `user` VALUES (9, '66666', '88888');
INSERT INTO `user` VALUES (10, '林李权', '3838');
INSERT INTO `user` VALUES (11, '5464', '3567');
INSERT INTO `user` VALUES (12, '475687', '56785');
INSERT INTO `user` VALUES (13, '67900', '8989');
INSERT INTO `user` VALUES (14, '5477', '4577');
INSERT INTO `user` VALUES (15, '小林', '10000');
INSERT INTO `user` VALUES (16, '56756888', '56887');
INSERT INTO `user` VALUES (17, '76989', '78978');
INSERT INTO `user` VALUES (19, '634634', '5464564');
INSERT INTO `user` VALUES (20, '678', '678678');
INSERT INTO `user` VALUES (22, '54856', '658568');
INSERT INTO `user` VALUES (23, '54745', '45643');
INSERT INTO `user` VALUES (24, '54785467', '585858');
INSERT INTO `user` VALUES (25, '45634', '34636');
INSERT INTO `user` VALUES (26, '45745', '45747');
INSERT INTO `user` VALUES (28, '77777', '88888');
INSERT INTO `user` VALUES (32, '67457', '674574');
INSERT INTO `user` VALUES (34, '7686', '585585444');
INSERT INTO `user` VALUES (36, '787878', '78787895');
INSERT INTO `user` VALUES (37, '45767', '585568500');
INSERT INTO `user` VALUES (38, '45777', '45777');
INSERT INTO `user` VALUES (39, '47457', '474888');
INSERT INTO `user` VALUES (40, '47457', '474888');
INSERT INTO `user` VALUES (41, '787899', '8798700');
INSERT INTO `user` VALUES (42, '36457', '6575677');
INSERT INTO `user` VALUES (43, '36457', '6575677');
INSERT INTO `user` VALUES (44, '65765888', '67858577');
INSERT INTO `user` VALUES (45, '65765888', '67858577');
INSERT INTO `user` VALUES (46, '456745', '45745788');
INSERT INTO `user` VALUES (47, '657658885', '67567');
INSERT INTO `user` VALUES (48, '68756', '5685699');
INSERT INTO `user` VALUES (49, '68756', '5685699678');
INSERT INTO `user` VALUES (50, '567', '6756');
INSERT INTO `user` VALUES (51, '568568', '6585655');
INSERT INTO `user` VALUES (52, '568568', '6585655');
INSERT INTO `user` VALUES (53, '88899', '88');
INSERT INTO `user` VALUES (54, '88899', '88');
INSERT INTO `user` VALUES (55, '363666', '4564566');
INSERT INTO `user` VALUES (56, '363666', '4564566');
INSERT INTO `user` VALUES (57, '346457', '45747');
INSERT INTO `user` VALUES (58, '346457', '45747');
INSERT INTO `user` VALUES (59, '658568989', '8989');
INSERT INTO `user` VALUES (60, '658568989', '8989');
INSERT INTO `user` VALUES (61, '1212', '1313');
INSERT INTO `user` VALUES (62, '56', '456');
INSERT INTO `user` VALUES (63, '456', '123');
INSERT INTO `user` VALUES (64, '8989', '8888');
INSERT INTO `user` VALUES (65, '111', '222');
INSERT INTO `user` VALUES (66, '88', '33');
INSERT INTO `user` VALUES (67, '568', '666');
INSERT INTO `user` VALUES (68, '889', '778');
INSERT INTO `user` VALUES (70, '1717', '1515');
INSERT INTO `user` VALUES (71, '1414', '4645');
INSERT INTO `user` VALUES (72, '456789', '123456');
INSERT INTO `user` VALUES (73, '7890', '9999');
INSERT INTO `user` VALUES (74, '林李权', '6767');
INSERT INTO `user` VALUES (75, '0111', '2222');
INSERT INTO `user` VALUES (76, '7878', '7777');
INSERT INTO `user` VALUES (77, '666', '7878');
INSERT INTO `user` VALUES (78, '6545', '0000');
INSERT INTO `user` VALUES (79, '777', '888');
INSERT INTO `user` VALUES (80, '8989', '999');
INSERT INTO `user` VALUES (81, '777', '3663');
INSERT INTO `user` VALUES (82, '5555', '5656');
INSERT INTO `user` VALUES (83, '6767', '555');
INSERT INTO `user` VALUES (84, '4545', '444');
INSERT INTO `user` VALUES (85, '444', '333');
INSERT INTO `user` VALUES (86, '8080', '777');
INSERT INTO `user` VALUES (87, '6677', '4444');
INSERT INTO `user` VALUES (88, '344', '333');
INSERT INTO `user` VALUES (89, '3636', '666');
INSERT INTO `user` VALUES (90, '6868', '444');
INSERT INTO `user` VALUES (91, '8877', '666');
INSERT INTO `user` VALUES (92, '9900', '777');
INSERT INTO `user` VALUES (93, '4533', '555');
INSERT INTO `user` VALUES (94, '4455', '333');
INSERT INTO `user` VALUES (95, '4646', '444');
INSERT INTO `user` VALUES (96, '777', '222');
INSERT INTO `user` VALUES (97, '2323', '111');
INSERT INTO `user` VALUES (98, '5656', '555');
INSERT INTO `user` VALUES (99, '3434', '222');
INSERT INTO `user` VALUES (100, '777', '444');
INSERT INTO `user` VALUES (101, '7072', '999');
INSERT INTO `user` VALUES (102, '6060', '888');
INSERT INTO `user` VALUES (103, '999', '000');
INSERT INTO `user` VALUES (104, '2828', '222');
INSERT INTO `user` VALUES (105, '4949', '444');
INSERT INTO `user` VALUES (106, '4949', '555');
INSERT INTO `user` VALUES (107, '4848', '444');
INSERT INTO `user` VALUES (108, '2626', '333');
INSERT INTO `user` VALUES (109, '45645', '45645');
INSERT INTO `user` VALUES (110, '7373', '333');
INSERT INTO `user` VALUES (111, '7373', '555');
INSERT INTO `user` VALUES (112, '5544', '333');
INSERT INTO `user` VALUES (113, '5544', '555');
INSERT INTO `user` VALUES (114, '8686', '666');
INSERT INTO `user` VALUES (115, '8686', '777');
INSERT INTO `user` VALUES (116, '9494', '333');
INSERT INTO `user` VALUES (117, '3838', '666');
INSERT INTO `user` VALUES (118, '3838', '888');
INSERT INTO `user` VALUES (119, '8844', '333');
INSERT INTO `user` VALUES (120, '5599', '333');
INSERT INTO `user` VALUES (121, '5599', '444');
INSERT INTO `user` VALUES (122, '8585', '333');
INSERT INTO `user` VALUES (123, '8585', '444');
INSERT INTO `user` VALUES (124, '0033', '333');
INSERT INTO `user` VALUES (125, '0033', '444');
INSERT INTO `user` VALUES (126, '7799', '000');
INSERT INTO `user` VALUES (127, '7799', '111');
INSERT INTO `user` VALUES (128, '10188', '999');
INSERT INTO `user` VALUES (134, '6050', '333');
INSERT INTO `user` VALUES (135, '6050', '444');
INSERT INTO `user` VALUES (136, '3366', '333');
INSERT INTO `user` VALUES (137, '3232', '333');
INSERT INTO `user` VALUES (138, '3232', '444');
INSERT INTO `user` VALUES (139, '46455', '333');
INSERT INTO `user` VALUES (140, '46455', '444');
INSERT INTO `user` VALUES (141, 'z0505', '66666');
INSERT INTO `user` VALUES (142, '7474', '333');
INSERT INTO `user` VALUES (143, '7474', '444');
INSERT INTO `user` VALUES (144, 'a666', '333');
INSERT INTO `user` VALUES (145, 'a667', '888');
INSERT INTO `user` VALUES (146, 'c33', '333');
INSERT INTO `user` VALUES (147, 'c33', '444');
INSERT INTO `user` VALUES (148, 'yy30', '333');
INSERT INTO `user` VALUES (149, 'uu66', '666');
INSERT INTO `user` VALUES (150, 'i44', '555');
INSERT INTO `user` VALUES (151, 'k88', '777');
INSERT INTO `user` VALUES (152, 't22', '666');
INSERT INTO `user` VALUES (153, 'y90', '555');
INSERT INTO `user` VALUES (154, 'r50', '444');
INSERT INTO `user` VALUES (155, 'r56', '333');
INSERT INTO `user` VALUES (156, 'i55', '444');
INSERT INTO `user` VALUES (157, '123', '321');
INSERT INTO `user` VALUES (158, 'zhaolian\'an', 'zhaozhao');
INSERT INTO `user` VALUES (159, 't101', '333');
INSERT INTO `user` VALUES (160, 't50', '333');
INSERT INTO `user` VALUES (161, 't40', '555');
INSERT INTO `user` VALUES (162, 't43', '555');
INSERT INTO `user` VALUES (163, 't88', '555');
INSERT INTO `user` VALUES (164, 'r44', '555');
INSERT INTO `user` VALUES (165, 'r22', '333');
INSERT INTO `user` VALUES (166, 't55', '333');
INSERT INTO `user` VALUES (167, 't32', '333');
INSERT INTO `user` VALUES (168, 't33', '666');
INSERT INTO `user` VALUES (169, 't77', '555');
INSERT INTO `user` VALUES (170, 't888', '333');
INSERT INTO `user` VALUES (171, 't63', '555');
INSERT INTO `user` VALUES (172, 't83', '333');
INSERT INTO `user` VALUES (173, 't99', '777');
INSERT INTO `user` VALUES (174, 'r55', '555');
INSERT INTO `user` VALUES (175, 't64', '555');
INSERT INTO `user` VALUES (176, 'u55', '333');
INSERT INTO `user` VALUES (177, 't01', '555');
INSERT INTO `user` VALUES (178, 'u44', '777');
INSERT INTO `user` VALUES (179, 'i666', '666');
INSERT INTO `user` VALUES (180, 't78', '444');
INSERT INTO `user` VALUES (181, 'i99', '888');
INSERT INTO `user` VALUES (182, 't66', '888');
INSERT INTO `user` VALUES (186, 'w33', '888');
INSERT INTO `user` VALUES (187, 'r77', '555');
INSERT INTO `user` VALUES (188, 'g55', '123');
INSERT INTO `user` VALUES (189, 'e55', '333');
INSERT INTO `user` VALUES (190, 'v33', '555');
INSERT INTO `user` VALUES (191, 's33', '555');
INSERT INTO `user` VALUES (192, 'hh33', '333');
INSERT INTO `user` VALUES (193, 'hg33', '333');
INSERT INTO `user` VALUES (194, 'yyy333', '333');
INSERT INTO `user` VALUES (195, 'ii77', '444');
INSERT INTO `user` VALUES (196, 'u88', '333');
INSERT INTO `user` VALUES (197, 'u66', '333');
INSERT INTO `user` VALUES (198, 'i88', '333');
INSERT INTO `user` VALUES (199, 'i9999', '333');
INSERT INTO `user` VALUES (200, 'hh333', '333');
INSERT INTO `user` VALUES (201, 'tt666', '333');
INSERT INTO `user` VALUES (202, 'llq', '10086');
INSERT INTO `user` VALUES (203, 'h66', '333');
INSERT INTO `user` VALUES (204, '小李', '101');
INSERT INTO `user` VALUES (205, 'j77', '777');

SET FOREIGN_KEY_CHECKS = 1;

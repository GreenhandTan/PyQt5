/*
 Navicat Premium Data Transfer

 Source Server         : tanxin
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : py_books

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 10/06/2022 11:56:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for all_return
-- ----------------------------
DROP TABLE IF EXISTS `all_return`;
CREATE TABLE `all_return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrow_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_read` int(11) NOT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of all_return
-- ----------------------------
INSERT INTO `all_return` VALUES (1, 'tanxin', '4', 1, '2022-06-09 00:08:37');
INSERT INTO `all_return` VALUES (2, 'tanxin', '18', 1, '2022-06-09 20:42:04');
INSERT INTO `all_return` VALUES (3, 'tanxin', '25', 1, '2022-06-09 20:42:06');
INSERT INTO `all_return` VALUES (4, 'tanxin', '36', 1, '2022-06-09 20:42:08');
INSERT INTO `all_return` VALUES (5, 'zhangsan', '8', 1, '2022-06-09 20:58:55');
INSERT INTO `all_return` VALUES (6, 'test', '8', 1, '2022-06-09 22:27:17');
INSERT INTO `all_return` VALUES (7, 'test', '10', 1, '2022-06-09 22:27:38');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `store_number` int(11) NULL DEFAULT NULL,
  `borrow_number` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `publish_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (67, '余华长篇小说（平装4册）', '余华', '作家出版社', 41, 0, '2022-06-09 22:30:14', '2014-01-29 00:00:00');
INSERT INTO `book` VALUES (68, '三体Ⅲ:死神永生', '刘慈欣', '重庆出版社', 92, 0, '2022-06-09 22:30:14', '2010-11-25 00:00:00');
INSERT INTO `book` VALUES (69, '三体Ⅱ·黑暗森林', '刘慈欣', '重庆出版社', 54, 0, '2022-06-09 22:30:14', '2008-05-21 00:00:00');
INSERT INTO `book` VALUES (70, '平凡的世界：全三册', '路遥', '北京十月文艺出版社', 12, 0, '2022-06-09 22:30:14', '2017-05-16 00:00:00');
INSERT INTO `book` VALUES (71, '平凡的世界', '路遥', '北京十月文艺出版社', 97, 0, '2022-06-09 22:30:14', '2013-12-29 00:00:00');
INSERT INTO `book` VALUES (72, '三体全集:地球往事三部曲', '刘慈欣', '重庆出版社', 52, 0, '2022-06-09 22:30:14', '2012-01-18 00:00:00');
INSERT INTO `book` VALUES (73, '围城', '钱钟书', '人民文学出版社', 45, 0, '2022-06-09 22:30:14', '1991-02-24 00:00:00');
INSERT INTO `book` VALUES (74, '平凡的世界', '路遥', '北京十月文艺出版社', 71, 0, '2022-06-09 22:30:14', '2013-05-17 00:00:00');
INSERT INTO `book` VALUES (75, '白鹿原:20周年精装典藏版', '陈忠实', '人民文学出版社', 12, 0, '2022-06-09 22:30:14', '2012-09-11 00:00:00');
INSERT INTO `book` VALUES (76, '许三观卖血记', '余华', '作家出版社', 61, 0, '2022-06-09 22:30:14', '2011-02-25 00:00:00');
INSERT INTO `book` VALUES (77, '活着', '余华', '作家出版社', 85, 0, '2022-06-09 22:30:14', '2010-11-27 00:00:00');
INSERT INTO `book` VALUES (78, '我的团长我的团（下部）', '兰晓龙', '新星出版社', 12, 0, '2022-06-09 22:30:14', '2009-01-12 00:00:00');
INSERT INTO `book` VALUES (79, '我的团长我的团（上部）', '兰晓龙', '新星出版社', 86, 0, '2022-06-09 22:30:14', '2009-01-12 00:00:00');
INSERT INTO `book` VALUES (80, '三体:“地球往事”三部曲之一', '刘慈欣', '重庆出版社', 49, 0, '2022-06-09 22:30:14', '2008-01-29 00:00:00');
INSERT INTO `book` VALUES (81, '我的团长我的团', '兰晓龙', '人民文学出版社', 41, 0, '2022-06-09 22:30:14', '2018-04-28 00:00:00');
INSERT INTO `book` VALUES (82, '台北人', '白先勇', '广西师范大学出版社', 59, 0, '2022-06-09 22:30:14', '2015-01-13 00:00:00');
INSERT INTO `book` VALUES (83, '半生缘', '张爱玲', '北京十月文艺出版社', 72, 0, '2022-06-09 22:30:14', '2012-06-28 00:00:00');
INSERT INTO `book` VALUES (84, '骆驼祥子', '老舍', '南海出版公司', 1, 0, '2022-06-09 22:30:14', '2010-03-23 00:00:00');
INSERT INTO `book` VALUES (85, '平凡的世界全集合订版', '路遥', '北京十月文艺出版社', 89, 0, '2022-06-09 22:30:14', '2009-01-14 00:00:00');
INSERT INTO `book` VALUES (86, '遥远的救世主', '豆豆', '作家出版社', 30, 0, '2022-06-09 22:30:14', '2008-04-18 00:00:00');
INSERT INTO `book` VALUES (87, '士兵突击', '兰晓龙', '花山文艺出版社', 39, 0, '2022-06-09 22:30:14', '2007-02-22 00:00:00');
INSERT INTO `book` VALUES (88, '亮剑', '都梁', '解放军文艺出版社', 20, 0, '2022-06-09 22:30:14', '2005-03-27 00:00:00');
INSERT INTO `book` VALUES (89, '活着', '余华', '上海文艺出版社', 68, 0, '2022-06-09 22:30:14', '2004-05-15 00:00:00');
INSERT INTO `book` VALUES (90, '活着', '余华', '南海出版公司', 11, 0, '2022-06-09 22:30:14', '1998-05-12 00:00:00');
INSERT INTO `book` VALUES (91, '大江东去：全3册', '阿耐', '北京联合出版公司', 63, 0, '2022-06-09 22:30:14', '2016-04-23 00:00:00');
INSERT INTO `book` VALUES (92, '重返狼群（第二部）', '李微漪', '长江文艺出版社', 16, 0, '2022-06-09 22:30:14', '2015-11-10 00:00:00');
INSERT INTO `book` VALUES (93, '亮剑', '都梁', '北京联合出版公司', 72, 0, '2022-06-09 22:30:14', '2014-10-10 00:00:00');
INSERT INTO `book` VALUES (94, '繁花', '金宇澄', '上海文艺出版社', 12, 0, '2022-06-09 22:30:14', '2014-01-22 00:00:00');
INSERT INTO `book` VALUES (95, '白鹿原', '陈忠实', '人民文学出版社', 26, 0, '2022-06-09 22:30:14', '2012-10-27 00:00:00');
INSERT INTO `book` VALUES (96, '余华作品：活着（精装）', '余华', '作家出版社', 56, 0, '2022-06-09 22:30:14', '2012-09-10 00:00:00');
INSERT INTO `book` VALUES (97, '四世同堂', '老舍', '北京十月文艺出版社', 99, 0, '2022-06-09 22:30:14', '2012-07-27 00:00:00');
INSERT INTO `book` VALUES (98, '人生', '路遥', '北京十月文艺出版社', 70, 0, '2022-06-09 22:30:14', '2012-03-15 00:00:00');
INSERT INTO `book` VALUES (99, '平凡的世界（普及本）', '路遥', '北京十月文艺出版社', 91, 0, '2022-06-09 22:30:14', '2011-09-29 00:00:00');
INSERT INTO `book` VALUES (100, '围城 / 人·兽·鬼', '钱钟书', '生活·读书·新知三联书店', 65, 0, '2022-06-09 22:30:14', '2009-11-11 00:00:00');
INSERT INTO `book` VALUES (101, '康熙大帝（全四册）', '二月河', '长江文艺出版社', 99, 0, '2022-06-09 22:30:14', '2009-09-15 00:00:00');
INSERT INTO `book` VALUES (102, '一句顶一万句', '刘震云', '长江文艺出版社', 61, 0, '2022-06-09 22:30:14', '2009-03-29 00:00:00');
INSERT INTO `book` VALUES (103, '采桑子', '叶广芩', '北京出版社', 29, 0, '2022-06-09 22:30:14', '2009-01-29 00:00:00');
INSERT INTO `book` VALUES (104, '额尔古纳河右岸', '迟子建', '北京十月文艺出版社', 36, 0, '2022-06-09 22:30:14', '2006-01-16 00:00:00');
INSERT INTO `book` VALUES (105, '城南旧事', '林海音', '中国青年出版社', 33, 0, '2022-06-09 22:30:14', '2001-04-22 00:00:00');
INSERT INTO `book` VALUES (106, '大明王朝', '刘和平', '花城出版社', 24, 0, '2022-06-09 22:30:14', '2016-07-11 00:00:00');
INSERT INTO `book` VALUES (107, '四世同堂', '丁聪', '人民文学出版社', 75, 0, '2022-06-09 22:30:14', '2016-03-20 00:00:00');
INSERT INTO `book` VALUES (108, '棋王·树王·孩子王:阿城文集之一', '阿城', '江苏文艺出版社', 79, 0, '2022-06-09 22:30:14', '2016-03-16 00:00:00');
INSERT INTO `book` VALUES (109, '无愁河的浪荡汉子·八年（上卷）', '黄永玉', '人民文学出版社', 95, 0, '2022-06-09 22:30:14', '2016-01-10 00:00:00');
INSERT INTO `book` VALUES (110, '俗世奇人（足本）', '冯骥才', '人民文学出版社', 77, 0, '2022-06-09 22:30:14', '2016-01-15 00:00:00');
INSERT INTO `book` VALUES (111, '兄弟', '余华', '作家出版社', 43, 0, '2022-06-09 22:30:14', '2015-05-29 00:00:00');
INSERT INTO `book` VALUES (112, '官商：1883', '曾钰钦', '长江文艺出版社', 41, 0, '2022-06-09 22:30:14', '2014-06-19 00:00:00');
INSERT INTO `book` VALUES (113, '阿Q正传：赵延年插图本', '鲁迅', '人民文学出版社', 80, 0, '2022-06-09 22:30:14', '2014-03-21 00:00:00');
INSERT INTO `book` VALUES (114, '霸王别姬', '李碧华', '新星出版社', 67, 0, '2022-06-09 22:30:14', '2013-11-17 00:00:00');
INSERT INTO `book` VALUES (115, '边城（最新修订纪念典藏版）', '沈从文', '武汉出版社', 6, 0, '2022-06-09 22:30:14', '2013-09-25 00:00:00');
INSERT INTO `book` VALUES (116, '无愁河的浪荡汉子·朱雀城', '黄永玉', '人民文学出版社', 27, 0, '2022-06-09 22:30:14', '2013-08-11 00:00:00');

-- ----------------------------
-- Table structure for borrow_info
-- ----------------------------
DROP TABLE IF EXISTS `borrow_info`;
CREATE TABLE `borrow_info`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `book_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `borrow_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `borrow_num` int(11) NULL DEFAULT NULL,
  `borrow_days` int(11) NULL DEFAULT NULL,
  `borrow_time` datetime(0) NULL DEFAULT NULL,
  `return_time` datetime(0) NULL DEFAULT NULL,
  `return_flag` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `delete_flag` int(11) NULL DEFAULT NULL,
  `current_login_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'ADMIN', '123456', 0, '2020-05-11 00:00:00', 0, '2020-05-11 00:00:00');
INSERT INTO `user` VALUES (2, 'zhangsan', '123456', 1, '2020-05-11 00:00:00', 0, '2020-05-11 00:00:00');
INSERT INTO `user` VALUES (3, 'tanxin', '123456', 1, '2022-06-08 00:00:00', 0, '2022-06-08 00:00:00');
INSERT INTO `user` VALUES (4, 'lishi', '123456', 1, '2022-06-08 21:22:58', 0, '2022-06-08 21:22:58');
INSERT INTO `user` VALUES (6, 'test', '123456', 1, '2022-06-09 22:24:57', 0, '2022-06-09 22:24:57');

SET FOREIGN_KEY_CHECKS = 1;

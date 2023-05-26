/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : mydb

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 26/05/2023 19:55:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员用户名',
  `pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员密码',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员邮箱',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员角色',
  `update_time` datetime NOT NULL COMMENT '管理员创建时间',
  `used` int NULL DEFAULT NULL COMMENT '账号是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES (2, 'hansel', 'hansel', 'fisher2003@gmail.com', '超级管理员', '2016-04-27 06:37:13', 0);
INSERT INTO `tb_admin` VALUES (3, '蒋子异', 'bURZHqMJ0S', 'ziji@yahoo.com', '超级管理员', '2020-01-29 13:03:24', 0);
INSERT INTO `tb_admin` VALUES (4, 'my', 'my12', 'crivera@icloud1.com', '管理员', '2023-05-26 19:44:48', 0);
INSERT INTO `tb_admin` VALUES (5, '沈子韬', 'bYzxjfrE8d', 'zishen3@outlook.com', '超级管理员', '2017-11-18 16:15:37', 1);
INSERT INTO `tb_admin` VALUES (6, 'Ronald Hall', 'N2eZWQraRg', 'hallronald1@icloud.com', '管理员', '2022-02-08 22:30:22', 1);
INSERT INTO `tb_admin` VALUES (7, 'Evelyn Collins', 'drkVQonwBr', 'coevelyn@icloud.com', '管理员', '2009-11-25 16:01:02', 0);
INSERT INTO `tb_admin` VALUES (8, '吕杰宏', 'NZehFUV6GE', 'lujiehong@gmail.com', '超级管理员', '2006-04-16 03:48:55', 1);
INSERT INTO `tb_admin` VALUES (9, '夏晓明', 'f4x7JFwTjz', 'xiaoming1@outlook.com', '管理员', '2021-12-24 15:22:47', 0);
INSERT INTO `tb_admin` VALUES (10, '张震南', 'zcMZRrxJfE', 'zhzhang@icloud.com', '管理员', '2012-03-04 20:58:49', 0);
INSERT INTO `tb_admin` VALUES (11, 'Edna Robertson', 'Irwy7qdjqY', 'ednar@icloud.com', '管理员', '2006-01-10 18:56:24', 1);
INSERT INTO `tb_admin` VALUES (12, 'Craig Ford', 'u7hHNwartW', 'crfo@yahoo.com', '管理员', '2008-08-31 05:38:54', 1);
INSERT INTO `tb_admin` VALUES (13, '郝璐', 'Lee2Dq2mMA', 'hlu@mail.com', '超级管理员', '2006-11-01 18:42:08', 1);
INSERT INTO `tb_admin` VALUES (14, '龚宇宁', 'tUV4Vkx74K', 'gongyunin1@yahoo.com', '管理员', '2010-05-05 10:23:24', 1);
INSERT INTO `tb_admin` VALUES (15, '苏岚', 'ojUTgXcf4d', 'lasu@outlook.com', '管理员', '2013-02-12 21:07:42', 1);
INSERT INTO `tb_admin` VALUES (16, 'Raymond Hughes', 'O16QKWCagJ', 'hughes10@outlook.com', '管理员', '2006-01-11 14:52:47', 0);
INSERT INTO `tb_admin` VALUES (17, '钱晓明', 'WrFHpppMtO', 'xiaomqian49@gmail.com', '超级管理员', '2021-12-23 14:53:26', 0);
INSERT INTO `tb_admin` VALUES (18, 'Nicole Nichols', 'deQX5PZoyv', 'nicholsnicole66@gmail.com', '超级管理员', '2019-12-02 09:03:15', 1);
INSERT INTO `tb_admin` VALUES (19, '贺安琪', 'gwUFEzPcoK', 'anqihe1@yahoo.com', '超级管理员', '2020-06-09 16:46:26', 1);
INSERT INTO `tb_admin` VALUES (20, '高震南', 'Dofc2saTsj', 'zhennangao10@hotmail.com', '超级管理员', '2009-01-06 10:50:04', 1);
INSERT INTO `tb_admin` VALUES (21, 'Jane Rogers', 'ybhoWXOXAp', 'janr9@gmail.com', '超级管理员', '2009-07-27 15:26:39', 1);
INSERT INTO `tb_admin` VALUES (22, 'Earl Wilson', 'OEaaZqbfGS', 'wilsoe@gmail.com', '管理员', '2000-11-24 11:10:45', 0);
INSERT INTO `tb_admin` VALUES (23, '冯晓明', 'yXURo3SzsF', 'xiaomingf805@yahoo.com', '超级管理员', '2019-07-17 14:29:15', 1);
INSERT INTO `tb_admin` VALUES (24, '邹嘉伦', 'GejUJnl0Za', 'jialunzou87@icloud.com', '管理员', '2000-02-27 14:52:23', 1);
INSERT INTO `tb_admin` VALUES (25, '叶安琪', 'y8bCbHJyUV', 'aye@gmail.com', '管理员', '2004-05-01 16:02:32', 1);
INSERT INTO `tb_admin` VALUES (26, 'Frances Fox', 'PKXIN78o5m', 'fraf@outlook.com', '超级管理员', '2004-04-10 17:48:50', 0);
INSERT INTO `tb_admin` VALUES (27, '汤安琪', 'n6G4ixCHzi', 'tanganqi@outlook.com', '管理员', '2003-12-13 11:22:24', 1);
INSERT INTO `tb_admin` VALUES (28, '刘杰宏', 'unfd1IBqtu', 'liuj@icloud.com', '管理员', '2009-07-18 20:56:06', 0);
INSERT INTO `tb_admin` VALUES (29, 'Juanita Ellis', '80d6bnzxBW', 'juanitael70@yahoo.com', '管理员', '2002-07-05 16:42:52', 1);
INSERT INTO `tb_admin` VALUES (30, '罗宇宁', 'MSh3yBgOgu', 'yuning106@icloud.com', '管理员', '2011-06-21 17:24:42', 1);
INSERT INTO `tb_admin` VALUES (31, 'Lisa Nichols', '6fZ6jRVmou', 'lisani1@gmail.com', '管理员', '2008-02-18 05:11:16', 1);
INSERT INTO `tb_admin` VALUES (32, 'Rita Rogers', 'UK8n6LvjEu', 'rita94@hotmail.com', '超级管理员', '2006-07-21 13:33:17', 1);
INSERT INTO `tb_admin` VALUES (33, 'Jane Richardson', 'L9ngxlUrhx', 'richjane@icloud.com', '超级管理员', '2002-05-08 18:57:08', 1);
INSERT INTO `tb_admin` VALUES (34, 'Nathan Perry', 'AyL4npizl5', 'nathaperry@hotmail.com', '管理员', '2005-09-27 02:23:08', 1);
INSERT INTO `tb_admin` VALUES (35, 'Frederick Davis', 'VUsP5GbTBa', 'davisfrederick@icloud.com', '超级管理员', '2022-01-04 00:52:11', 0);
INSERT INTO `tb_admin` VALUES (36, 'Aaron Garcia', 'Om7A8vtbxz', 'gaaaron10@outlook.com', '超级管理员', '2006-09-15 23:30:59', 1);
INSERT INTO `tb_admin` VALUES (37, '常杰宏', 'dFqnE1A3Fl', 'jiehoc@gmail.com', '管理员', '2010-12-05 17:26:22', 0);
INSERT INTO `tb_admin` VALUES (38, '魏云熙', '4pobUdxGZt', 'weiyunxi@mail.com', '管理员', '2004-10-05 16:49:36', 0);
INSERT INTO `tb_admin` VALUES (39, '梁致远', 'UKN8JfGXZn', 'zhiyuanlian1954@hotmail.com', '超级管理员', '2008-02-28 10:12:32', 0);
INSERT INTO `tb_admin` VALUES (40, '傅睿', 'D45ujbr1LM', 'rfu@icloud.com', '超级管理员', '2017-04-23 15:06:47', 1);
INSERT INTO `tb_admin` VALUES (41, 'Peter Gardner', '0DR8pwG3cn', 'garpeter1940@mail.com', '超级管理员', '2003-04-05 14:08:40', 0);
INSERT INTO `tb_admin` VALUES (42, 'Dennis Nichols', 'm1h93uPK21', 'nicholsdenni5@gmail.com', '超级管理员', '2013-04-14 19:46:51', 1);
INSERT INTO `tb_admin` VALUES (43, 'Brenda Reyes', 'p6quKkn8mK', 'breyes@icloud.com', '超级管理员', '2020-02-11 21:42:57', 0);
INSERT INTO `tb_admin` VALUES (44, 'Dale Warren', 'eBQ5MjPfIN', 'warren5@gmail.com', '管理员', '2006-01-30 07:57:18', 1);
INSERT INTO `tb_admin` VALUES (45, '杜震南', 'N2aYLFTiwT', 'zdu@icloud.com', '超级管理员', '2008-12-22 16:01:12', 1);
INSERT INTO `tb_admin` VALUES (46, 'Deborah Perez', 'o4t9Qf9Yhq', 'debper@hotmail.com', '管理员', '2002-07-18 22:02:25', 0);
INSERT INTO `tb_admin` VALUES (47, '韦晓明', 't1qfbVbKtw', 'xiaomingw@gmail.com', '超级管理员', '2016-05-13 09:38:22', 1);
INSERT INTO `tb_admin` VALUES (48, 'Louis Hunter', 'x5JJqMkiP8', 'louishunter@outlook.com', '超级管理员', '2005-12-17 09:18:48', 1);
INSERT INTO `tb_admin` VALUES (49, 'Benjamin Turner', 'DAyPjPnoju', 'turner103@yahoo.com', '管理员', '2008-04-20 11:52:06', 1);
INSERT INTO `tb_admin` VALUES (50, '马詩涵', 'NjIeL1owLW', 'mashiha@icloud.com', '管理员', '2016-09-07 18:38:54', 1);
INSERT INTO `tb_admin` VALUES (51, '薛璐', 'NcbDrYyzmj', 'xuelu4@gmail.com', '超级管理员', '2013-11-17 02:40:41', 1);
INSERT INTO `tb_admin` VALUES (52, '邓子异', 'QkZwRYPg9f', 'dziyi320@outlook.com', '超级管理员', '2015-10-27 09:51:56', 1);
INSERT INTO `tb_admin` VALUES (53, 'Marjorie Gardner', 'gMZimsGkKn', 'marjog@yahoo.com', '超级管理员', '2019-12-23 22:09:53', 0);
INSERT INTO `tb_admin` VALUES (54, 'Clarence Webb', 'yAS5RMxgdM', 'clarence8@gmail.com', '超级管理员', '2021-01-21 21:39:28', 0);
INSERT INTO `tb_admin` VALUES (55, '叶嘉伦', 'DlsoZVdBGx', 'jialunye@gmail.com', '管理员', '2005-05-15 00:10:23', 1);
INSERT INTO `tb_admin` VALUES (56, 'Leslie Nichols', 'isNQPxQyeZ', 'nicholsleslie@gmail.com', '超级管理员', '2012-11-18 17:02:11', 0);
INSERT INTO `tb_admin` VALUES (57, '夏詩涵', 'mOnhE3JeOD', 'sx405@outlook.com', '超级管理员', '2004-03-11 06:58:59', 0);
INSERT INTO `tb_admin` VALUES (58, 'Gloria Torres', 'QdEyyHMj6Z', 'glorito@gmail.com', '管理员', '2018-10-07 02:58:30', 0);
INSERT INTO `tb_admin` VALUES (59, '龚云熙', 'zw0ApkdZD5', 'yunxi1969@hotmail.com', '超级管理员', '2014-02-28 15:18:59', 0);
INSERT INTO `tb_admin` VALUES (60, '汤秀英', 'FN8F6EkLmg', 'xiuyit@gmail.com', '超级管理员', '2002-09-19 12:30:21', 0);
INSERT INTO `tb_admin` VALUES (61, '蒋詩涵', '3nqMFm59q5', 'shihan92@outlook.com', '管理员', '2013-01-05 13:15:47', 1);
INSERT INTO `tb_admin` VALUES (62, '许云熙', 'zf9cx4SGBA', 'xuy@yahoo.com', '管理员', '2018-05-09 06:07:58', 1);
INSERT INTO `tb_admin` VALUES (63, '郭詩涵', 't1kqnAB4dZ', 'guoshihan9@gmail.com', '管理员', '2013-09-28 17:48:12', 1);
INSERT INTO `tb_admin` VALUES (64, '尹致远', 'SxgTKWJrAj', 'yzh@outlook.com', '管理员', '2006-06-08 11:52:25', 0);
INSERT INTO `tb_admin` VALUES (65, 'Tony Hughes', 'TIbSAjaHhW', 'thu3@gmail.com', '超级管理员', '2011-01-11 17:17:40', 0);
INSERT INTO `tb_admin` VALUES (66, 'Rita Howard', 'gl6ewJIpNe', 'rita1961@gmail.com', '超级管理员', '2020-05-08 21:25:44', 1);
INSERT INTO `tb_admin` VALUES (67, 'Matthew Weaver', '5xDfZ6kL7B', 'matthewweaver@mail.com', '超级管理员', '2011-11-24 18:11:46', 1);
INSERT INTO `tb_admin` VALUES (68, '沈嘉伦', 'r3S4MS3iNX', 'shenjialun1113@yahoo.com', '超级管理员', '2008-06-15 21:34:37', 0);
INSERT INTO `tb_admin` VALUES (69, 'Bradley Morris', 'dgYohAUk0p', 'bmorri@gmail.com', '超级管理员', '2013-08-01 22:01:07', 0);
INSERT INTO `tb_admin` VALUES (70, 'Anna Guzman', 'Sb33ttXctt', 'annag3@hotmail.com', '超级管理员', '2010-10-31 11:53:11', 1);
INSERT INTO `tb_admin` VALUES (71, '萧震南', 'PAQ6ExmknH', 'zhennxi@gmail.com', '管理员', '2008-09-22 01:21:16', 0);
INSERT INTO `tb_admin` VALUES (72, 'Paula Perry', '1hpvLbPsif', 'paula926@mail.com', '管理员', '2013-02-03 20:54:18', 0);
INSERT INTO `tb_admin` VALUES (73, 'Earl Warren', 'M4kb9tvES8', 'earlw@gmail.com', '管理员', '2004-03-12 10:19:37', 1);
INSERT INTO `tb_admin` VALUES (74, '任安琪', 'CEQAAGx9Gv', 'renanq10@yahoo.com', '管理员', '2013-04-09 14:49:13', 0);
INSERT INTO `tb_admin` VALUES (75, 'Joe Edwards', '8wHjQdxNJd', 'joe@icloud.com', '管理员', '2000-02-25 03:38:51', 0);
INSERT INTO `tb_admin` VALUES (76, 'Irene Clark', 'xwESFhJVBt', 'irene1978@hotmail.com', '管理员', '2011-05-19 06:19:58', 0);
INSERT INTO `tb_admin` VALUES (77, 'Joshua Morales', '48x7DPNCjI', 'moralesjoshua@outlook.com', '超级管理员', '2008-01-29 00:40:20', 0);
INSERT INTO `tb_admin` VALUES (78, '徐睿', 'j4tOgNoHuN', 'rui8@outlook.com', '管理员', '2017-12-18 04:08:21', 0);
INSERT INTO `tb_admin` VALUES (79, 'Diane Rogers', 'HKd8SGvgiB', 'roged@gmail.com', '超级管理员', '2016-03-30 19:57:58', 1);
INSERT INTO `tb_admin` VALUES (82, '金杰宏', '0WanLqJWt5', 'jjin@gmail.com', '管理员', '2004-04-18 12:00:51', 1);
INSERT INTO `tb_admin` VALUES (83, 'Ernest Brooks', 'VRrqJ8HMsg', 'brooks7@yahoo.com', '管理员', '2007-03-28 10:10:49', 0);
INSERT INTO `tb_admin` VALUES (84, 'Terry Anderson', 'k5oeOGAEjF', 'tanderson526@yahoo.com', '管理员', '2002-12-25 15:55:08', 1);
INSERT INTO `tb_admin` VALUES (85, '谢致远', 'EfP0m8egYr', 'zxi@icloud.com', '管理员', '2008-03-02 12:26:00', 1);
INSERT INTO `tb_admin` VALUES (86, '武云熙', 'EpBM2AEvp0', 'ywu@icloud.com', '管理员', '2009-10-28 01:12:23', 1);
INSERT INTO `tb_admin` VALUES (87, 'Jane Gibson', 'NA04h6BD4G', 'janegib@gmail.com', '超级管理员', '2020-07-03 21:04:11', 1);
INSERT INTO `tb_admin` VALUES (88, 'Lee Graham', 'R45kbjaUfW', 'grlee@icloud.com', '超级管理员', '2011-03-10 02:07:35', 1);
INSERT INTO `tb_admin` VALUES (89, '江子异', 'R08TF9N7Bs', 'zjiang@gmail.com', '管理员', '2015-09-15 10:33:45', 1);
INSERT INTO `tb_admin` VALUES (90, 'Marjorie Sullivan', 'DMcrKu5GSd', 'marsulli5@hotmail.com', '管理员', '2012-01-24 20:11:33', 0);
INSERT INTO `tb_admin` VALUES (91, '邱致远', 'QI1SUown0K', 'qiuz@gmail.com', '超级管理员', '2011-05-07 22:31:38', 1);
INSERT INTO `tb_admin` VALUES (92, '陆宇宁', 'XUBAXuVGUw', 'luyuning1@icloud.com', '管理员', '2014-12-08 09:30:21', 0);
INSERT INTO `tb_admin` VALUES (93, 'Carl Chen', 'LvbA74ILPX', 'cchen@icloud.com', '管理员', '2017-02-24 08:38:30', 1);
INSERT INTO `tb_admin` VALUES (94, '卢云熙', '11zT84Z9is', 'lu6@mail.com', '管理员', '2016-08-12 20:35:27', 0);
INSERT INTO `tb_admin` VALUES (95, 'Wendy Rogers', '2pf9LCPZo9', 'rogers6@outlook.com', '超级管理员', '2002-03-17 08:05:47', 1);
INSERT INTO `tb_admin` VALUES (97, 'April Salazar', 'TVA1Kum522', 'saapril@gmail.com', '超级管理员', '2000-01-21 12:32:08', 1);
INSERT INTO `tb_admin` VALUES (98, '史晓明', 'rol7ucKZTg', 'shix1029@gmail.com', '超级管理员', '2021-02-28 18:40:03', 0);
INSERT INTO `tb_admin` VALUES (99, '蔡宇宁', 'u4flKKBF80', 'yc620@icloud.com', '管理员', '2021-01-08 19:44:10', 0);
INSERT INTO `tb_admin` VALUES (100, 'Tiffany Ruiz', 'aGJiSR2g0j', 'ruiz9@outlook.com', '管理员', '2005-02-08 17:41:03', 0);

SET FOREIGN_KEY_CHECKS = 1;

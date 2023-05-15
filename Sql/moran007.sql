/*
 Navicat Premium Data Transfer

 Source Server         : moran8
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : moran007

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 15/05/2023 14:07:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `admin_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员账号',
  `admin_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员密码',
  `admin_fullname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员姓名',
  `admin_contact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1000, 'li904', '1XTVscPC7k', '李安琪', '16641981847');
INSERT INTO `admin_info` VALUES (1001, 'jianqi', 'mAzVxNrV6h', '贾安琪', '15840961518');
INSERT INTO `admin_info` VALUES (1002, 'tao21', 'q1qzKlUVms5', '陶睿1', '18905578975');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图书ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ISBN码',
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(0:可借阅, 1:已借出)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `particulars` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '详情介绍',
  `quantity` int UNSIGNED NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `title`(`title` ASC, `category` ASC) USING BTREE,
  INDEX `id`(`id` ASC, `title` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图书信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '红楼梦', '曹雪芹', '人民文学出版社', '9787020000885', '心理健康', 1, '2023-03-27 20:52:03', '2023-04-26 11:18:59', 'If it scares you, it might be a good thing to try. Remember that failure is an event, not a person. Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder                ', 5267);
INSERT INTO `book_info` VALUES (2, '西游记', '吴承恩', '人民文学出版社', '9787020005590', '科学技术史', 1, '2023-03-27 20:52:03', '2023-04-22 13:06:07', 'Typically, it is employed as an encrypted version of Telnet. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path of an external editor in Preferences.', 3365);
INSERT INTO `book_info` VALUES (3, '水浒传', '施耐庵', '人民文学出版社', '9787020000878', '冒险小说', 1, '2023-03-27 20:52:03', '2023-05-15 12:29:24', 'It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their specific needs, yet easy to learn for users who are new                   ', 5454);
INSERT INTO `book_info` VALUES (4, '三国演义', '罗贯中', '人民文学出版社', '9787020000861', '言情小说', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. Remember that failure is an event, not a person.', 4);
INSERT INTO `book_info` VALUES (5, '时间简史', '史蒂芬·霍金', '湖南科学技术出版社', '9787535732300', '冒险小说', 1, '2023-03-27 20:52:03', '2023-04-22 13:06:08', 'It provides strong authentication and secure encrypted communications between two hosts, known as SSH Port Forwarding (Tunneling), over an insecure network. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud                ', 6);
INSERT INTO `book_info` VALUES (6, '金字塔原理', '芭芭拉·明托', '机械工业出版社', '9787111189467', '自然科学', 1, '2023-03-27 20:52:03', '2023-05-15 12:09:20', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does.', 2);
INSERT INTO `book_info` VALUES (7, '人性的弱点', '戴尔·卡内基', '中国青年出版社', '9787500620280', '科学技术史', 1, '2023-03-27 20:52:03', '2023-04-26 00:57:44', 'The past has no power over the present moment. It wasn’t raining when Noah built the ark. Sometimes you win, sometimes you learn. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session                    ', 14);
INSERT INTO `book_info` VALUES (8, '影响力', '罗伯特·西奥迪尼', '中国青年出版社', '9787500683889', '政治军事学', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'Difficult circumstances serve as a textbook of life for people. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target.', 12);
INSERT INTO `book_info` VALUES (9, '哈利·波特与魔法石', 'J.K.罗琳', '人民文学出版社', '9787020033432', '经济管理学', 1, '2023-03-27 20:52:03', '2023-04-26 02:03:39', 'Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms.', 11);
INSERT INTO `book_info` VALUES (10, '小王子', '圣·埃克苏佩里', '人民文学出版社', '9787020001394', '政治军事学', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'Export Wizard allows you to export data from tables, collections, views, or query results to any available formats. To open a query using an external editor, control-click it and select Open with External Editor. You can set the file path                 ', 14);
INSERT INTO `book_info` VALUES (11, '钢铁是怎样炼成的', '奥斯特洛夫斯基', '人民文学出版社', '9787020001417', '社会心理学', 0, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'HTTP Tunneling is a method for connecting to a server that uses the same protocol (http://) and the same port (port 80) as a web server does. All journeys have secret destinations of which the traveler is unaware. You will succeed because                 ', 6);
INSERT INTO `book_info` VALUES (12, '平凡的世界', '路遥', '人民文学出版社', '9787020001813', '经济管理学', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation                 ', 4);
INSERT INTO `book_info` VALUES (13, '围城', '钱钟书', '人民文学出版社', '9787020004722', '传记文学', 1, '2023-03-27 20:52:03', '2023-04-22 13:19:25', 'If opportunity doesn’t knock, build a door. You must be the change you wish to see in the world. I may not have gone where I intended to go, but I think I have ended up where I needed to be.', 12);
INSERT INTO `book_info` VALUES (14, '解忧杂货店', '东野圭吾', '南海出版公司', '9787544247558', '科学技术史', 1, '2023-03-27 20:52:03', '2023-04-22 20:17:40', 'There is no way to happiness. Happiness is the way. The On Startup feature allows you to control what tabs appear when you launch Navicat. You can select any connections, objects or projects, and then select the corresponding buttons on                   ', 7);
INSERT INTO `book_info` VALUES (15, '三体', '刘慈欣', '重庆出版社', '9787229030932', '自然科学', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'Champions keep playing until they get it right. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab.', 6);
INSERT INTO `book_info` VALUES (16, '活着', '余华', '作家出版社', '9787506365437', '社会心理学', 1, '2023-03-27 20:52:03', '2023-04-21 17:57:11', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. If the plan doesn’t work, change the plan, but never the goal.', 3);
INSERT INTO `book_info` VALUES (17, '求翁23', '额去微软', '去我额', '1231231312331求翁', '科学技术史', 0, '2023-03-28 20:51:34', '2023-04-22 13:08:05', '求翁求翁', 10);
INSERT INTO `book_info` VALUES (18, '求翁', '额', '去', '1231231312331', '自然科学', 0, '2023-03-28 20:54:57', '2023-04-22 13:14:59', '求翁', 10);
INSERT INTO `book_info` VALUES (19, '132', '123', '123', '123', '社会科学', 0, '2023-04-03 17:27:19', '2023-04-22 13:06:02', '123', 122);
INSERT INTO `book_info` VALUES (21, 'qw3erq', 'qwerqwer', 'qwrqwe', 'qwerqwer', '自然科学', 0, '2023-04-03 17:36:32', '2023-05-15 12:51:10', '阿萨啊是的哇色的1.1大盘的居民区卡r\'t\'sh\'j\'fng\'f\'f\'f\'f\'f\'f\'ff\'f\'f\'fffffgf给法国发过法国发过法国发过法国发过法国潍坊wq3fv2v2暗藏s6s66626we\'f\'v\'tv\'wwefvtvwc 而他亲爱头发wewefgvfvawswfqasfv噶外侧vwart从', 0);
INSERT INTO `book_info` VALUES (22, 'qw3erq', 'qwerqwer', 'qwrqwe', 'qwerqwer', '心理健康', 0, '2023-04-03 17:37:46', '2023-05-15 12:50:46', NULL, 0);
INSERT INTO `book_info` VALUES (23, '123', '123', '123', '123', '科学技术史', 1, '2023-04-03 17:39:00', '2023-04-22 13:06:08', '123123', 121);
INSERT INTO `book_info` VALUES (24, 'qwe', 'qwea', 'qw', '231', '推理小说', 1, '2023-04-03 17:42:57', '2023-04-21 17:57:11', 'qweqe', 23);
INSERT INTO `book_info` VALUES (25, '2313', 'qwea', 'qw', '231', '传记文学', 1, '2023-04-03 17:43:09', '2023-05-15 12:51:23', 'qweqe', 20);
INSERT INTO `book_info` VALUES (26, '2313', 'qwea', 'qw', '231', '自然科学', 1, '2023-04-03 17:43:11', '2023-04-22 13:06:05', 'qweqe', 21);
INSERT INTO `book_info` VALUES (27, '2313', 'qwea', 'qw', '231', '儿童文学', 1, '2023-04-03 17:43:13', '2023-04-22 13:08:04', 'qweqe', 22);
INSERT INTO `book_info` VALUES (28, '2313', 'qwea', 'qw', '231', '言情小说', 1, '2023-04-03 17:43:33', '2023-04-21 17:57:11', 'qweqe', 23);
INSERT INTO `book_info` VALUES (29, '2345', '234', '234', '234', '传记回忆录', 2, '2023-04-03 17:44:43', '2023-04-21 17:57:11', '32423', 34);
INSERT INTO `book_info` VALUES (30, '2345', '234', '234', '234', '传记回忆录', 2, '2023-04-03 17:45:14', '2023-04-21 17:57:11', '32423', 34);
INSERT INTO `book_info` VALUES (31, '2e1', '213', '123', '123', '政治军事学', 1, '2023-04-03 17:45:37', '2023-04-21 17:57:11', '12341234', 23);
INSERT INTO `book_info` VALUES (32, '413', '123', '21', '23', '经济管理学', 23, '2023-04-03 17:47:19', '2023-04-21 17:57:11', '1241241243', 23);
INSERT INTO `book_info` VALUES (41, '确认确认', '去微软', ' 去微软', '去微软', '自然科学', 2, '2023-04-03 21:06:06', '2023-04-22 13:06:03', 'qwerqwrfqwr', 5);
INSERT INTO `book_info` VALUES (42, '23', '124qwdf', '24123', '124', '传记文学', 1, '2023-04-03 21:07:39', '2023-04-22 13:08:06', 'q2rwf', 22);
INSERT INTO `book_info` VALUES (52, '23124', '13431423', '234', '3423124', 'philosophy', 0, '2023-04-21 17:41:44', '2023-04-21 17:41:44', '1234412', NULL);
INSERT INTO `book_info` VALUES (53, '13', '123', '123', '234', '冒险小说', 1, '2023-04-21 17:51:42', '2023-04-22 13:08:06', '123123', 3);
INSERT INTO `book_info` VALUES (54, '让何瑞鸽肉汤', '32156', '15623', '1564651', 'pert更换为回复', 0, '2023-04-24 13:11:04', '2023-04-24 13:11:04', NULL, 20);
INSERT INTO `book_info` VALUES (61, '的方式访问乳房伟人风范', '23432', '456851', '456451', '三个人刚刚未通过', 0, '2023-04-24 13:14:39', '2023-04-26 01:10:16', NULL, 53);

-- ----------------------------
-- Table structure for borrow_info
-- ----------------------------
DROP TABLE IF EXISTS `borrow_info`;
CREATE TABLE `borrow_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '借阅ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `borrow_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '借阅时间',
  `due_time` timestamp NULL DEFAULT NULL COMMENT '应归还时间',
  `return_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '实际归还时间',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(0:未归还, 1:已归还)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `book_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `borrow_info_ibfk_2`(`book_id` ASC, `book_title` ASC) USING BTREE,
  INDEX `borrow_info_ibfk_3`(`user_id` ASC, `user_name` ASC) USING BTREE,
  INDEX `id`(`id` ASC, `book_title` ASC) USING BTREE,
  CONSTRAINT `borrow_info_ibfk_2` FOREIGN KEY (`book_id`, `book_title`) REFERENCES `book_info` (`id`, `title`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `borrow_info_ibfk_3` FOREIGN KEY (`user_id`, `user_name`) REFERENCES `user_info` (`id`, `username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_info
-- ----------------------------
INSERT INTO `borrow_info` VALUES (1, 1, 14, '2021-04-16 03:48:18', '2021-05-16 03:48:18', '2023-04-22 09:03:43', 1, '2016-05-15 01:40:38', '2023-04-22 09:03:43', '赵晓明', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (2, 25, 25, '2007-08-16 13:25:35', '2007-09-16 13:25:35', '2001-12-28 20:47:23', 0, '2022-08-14 07:22:47', '2019-10-23 04:00:13', '框架', '2313');
INSERT INTO `borrow_info` VALUES (3, 8, 17, '2015-06-05 08:02:24', '2015-07-05 08:02:24', '2021-08-11 15:54:49', 0, '2012-11-02 22:39:01', '2014-10-01 09:17:02', '周璐', '求翁23');
INSERT INTO `borrow_info` VALUES (4, 7, 14, '2010-07-08 13:04:53', '2010-08-08 13:04:53', '2013-06-14 13:27:17', 0, '2010-02-18 20:49:25', '2007-10-23 00:35:38', '杜宇宁', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (5, 24, 25, '2015-06-09 12:26:56', '2015-07-09 12:26:56', '2008-11-07 01:11:40', 1, '2008-08-02 04:04:55', '2002-02-12 02:22:24', '咋还能三', '2313');
INSERT INTO `borrow_info` VALUES (6, 23, 9, '2012-05-05 00:44:19', '2012-06-05 00:44:19', '2023-04-22 09:07:50', 1, '2014-06-13 18:12:31', '2023-04-22 09:07:50', '45', '哈利·波特与魔法石');
INSERT INTO `borrow_info` VALUES (7, 6, 10, '2021-12-25 10:32:15', '2022-01-25 10:32:15', '2018-05-06 23:43:33', 1, '2000-10-01 05:57:54', '2010-10-15 15:01:00', '郭詩涵', '小王子');
INSERT INTO `borrow_info` VALUES (8, 14, 12, '2003-04-26 10:04:52', '2003-05-26 10:04:52', '2017-06-14 10:17:49', 1, '2014-12-26 20:38:16', '2013-03-26 17:39:08', '余致远', '平凡的世界');
INSERT INTO `borrow_info` VALUES (9, 13, 24, '2011-08-22 08:54:37', '2011-09-22 08:54:37', '2004-03-22 14:29:37', 0, '2001-07-21 02:04:58', '2006-02-13 20:07:58', '阎睿', 'qwe');
INSERT INTO `borrow_info` VALUES (10, 9, 29, '2013-12-08 23:33:42', '2014-01-09 01:33:42', '2023-04-21 10:38:34', 0, '2018-11-20 09:18:11', '2023-04-21 10:38:34', '杜璐', '2345');
INSERT INTO `borrow_info` VALUES (11, 38, 31, '2012-07-28 21:29:35', '2012-08-28 21:29:35', '2003-06-22 20:39:15', 0, '2022-07-23 01:10:12', '2015-02-09 15:57:26', '45656', '2e1');
INSERT INTO `borrow_info` VALUES (12, 16, 26, '2015-03-19 18:12:01', '2015-04-19 18:12:01', '2018-10-31 04:21:02', 0, '2022-08-25 00:45:09', '2020-12-17 18:04:17', '董致远', '2313');
INSERT INTO `borrow_info` VALUES (13, 10, 9, '2018-07-18 06:30:25', '2018-08-18 06:30:25', '2019-11-02 01:12:33', 0, '2013-06-06 08:43:38', '2012-06-23 00:32:45', '邹睿', '哈利·波特与魔法石');
INSERT INTO `borrow_info` VALUES (14, 39, 14, '2011-09-24 17:09:55', '2011-10-24 17:09:55', '2006-10-24 04:24:48', 1, '2001-08-12 13:29:24', '2009-11-26 07:28:21', '45656', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (15, 13, 13, '2004-04-13 16:31:36', '2004-05-13 16:31:36', '2018-06-04 06:38:58', 0, '2013-07-13 18:48:39', '2020-08-06 01:17:42', '阎睿', '围城');
INSERT INTO `borrow_info` VALUES (16, 27, 41, '2006-08-04 23:45:04', '2006-09-04 23:45:04', '2010-06-26 03:16:19', 0, '2008-11-03 04:08:28', '2017-02-09 07:00:40', 'li904', '确认确认');
INSERT INTO `borrow_info` VALUES (17, 43, 10, '2006-01-25 15:57:35', '2006-03-25 15:57:35', '2023-04-23 21:57:23', 1, '2001-06-23 04:36:52', '2023-04-23 21:57:23', '213', '小王子');
INSERT INTO `borrow_info` VALUES (18, 5, 3, '2013-06-04 08:16:41', '2013-07-04 08:16:41', '2021-06-18 04:33:42', 0, '2013-09-21 15:25:21', '2013-04-11 19:04:44', '唐嘉伦', '水浒传');
INSERT INTO `borrow_info` VALUES (19, 18, 31, '2016-05-23 09:43:42', '2016-06-23 09:43:42', '2003-10-20 16:24:09', 0, '2007-01-17 12:15:39', '2021-03-05 04:36:46', '徐晓明', '2e1');
INSERT INTO `borrow_info` VALUES (20, 9, 1, '2004-07-21 12:53:54', '2004-08-21 12:53:54', '2002-01-31 12:10:20', 1, '2008-02-29 04:39:41', '2002-07-12 06:17:42', '杜璐', '红楼梦');
INSERT INTO `borrow_info` VALUES (21, 11, 13, '2012-03-02 16:06:44', '2012-04-02 16:06:44', '2005-09-29 10:28:22', 0, '2010-02-13 18:47:59', '2003-06-29 10:20:10', '王睿', '围城');
INSERT INTO `borrow_info` VALUES (22, 23, 21, '2000-05-03 16:23:44', '2000-06-03 16:23:44', '2023-04-22 13:05:28', 1, '2022-10-11 13:28:54', '2023-04-22 13:05:28', '45', 'qw3erq');
INSERT INTO `borrow_info` VALUES (23, 12, 15, '2016-08-18 20:05:12', '2016-09-18 20:05:12', '2011-05-22 05:05:48', 1, '2008-03-14 16:27:04', '2018-10-19 19:23:38', '马安琪', '三体');
INSERT INTO `borrow_info` VALUES (24, 43, 15, '2003-04-04 20:20:36', '2003-05-04 20:20:36', '2001-06-14 22:44:51', 0, '2020-08-20 05:45:27', '2019-12-01 20:30:09', '213', '三体');
INSERT INTO `borrow_info` VALUES (25, 4, 3, '2003-03-16 11:23:09', '2003-04-16 11:23:09', '2003-04-15 19:20:27', 1, '2015-09-24 04:55:59', '2006-06-01 01:49:48', '戴宇宁', '水浒传');
INSERT INTO `borrow_info` VALUES (26, 15, 25, '2010-04-18 14:48:20', '2010-05-18 14:48:20', '2004-06-22 05:37:42', 1, '2018-09-10 11:45:19', '2011-06-29 14:14:47', '戴秀英', '2313');
INSERT INTO `borrow_info` VALUES (27, 20, 14, '2005-09-29 13:41:32', '2005-10-29 13:41:32', '2018-01-08 13:03:49', 1, '2008-07-14 17:00:18', '2018-01-15 12:10:46', '贾璐', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (28, 11, 13, '2017-01-18 00:22:18', '2017-03-18 00:22:18', '2023-04-22 09:05:58', 0, '2009-08-30 03:10:44', '2023-04-22 09:05:58', '王睿', '围城');
INSERT INTO `borrow_info` VALUES (29, 41, 8, '2017-02-01 22:57:32', '2017-05-01 22:57:32', '2023-04-21 10:53:13', 1, '2000-12-11 05:38:16', '2023-04-21 10:53:13', '14568885463', '影响力');
INSERT INTO `borrow_info` VALUES (30, 25, 19, '2012-11-23 13:07:32', '2012-12-23 13:07:32', '2005-12-02 21:49:44', 0, '2008-04-18 22:42:37', '2021-05-25 00:52:32', '框架', '132');
INSERT INTO `borrow_info` VALUES (31, 18, 3, '2015-11-06 20:05:23', '2015-12-06 20:05:23', '2008-02-24 19:19:44', 1, '2012-05-04 06:49:50', '2017-11-29 07:15:47', '徐晓明', '水浒传');
INSERT INTO `borrow_info` VALUES (32, 17, 22, '2020-07-04 00:06:14', '2020-08-04 00:06:14', '2010-09-10 17:41:51', 0, '2008-07-16 19:44:12', '2020-01-26 18:29:43', '卢云熙', 'qw3erq');
INSERT INTO `borrow_info` VALUES (33, 24, 22, '2007-10-29 11:12:49', '2007-11-29 11:12:49', '2017-06-20 20:41:02', 1, '2018-02-15 04:35:15', '2001-06-28 01:26:14', '咋还能三', 'qw3erq');
INSERT INTO `borrow_info` VALUES (34, 9, 7, '2011-01-03 09:36:34', '2011-02-03 09:36:34', '2022-07-12 17:41:11', 0, '2006-12-24 00:44:03', '2006-03-14 21:17:15', '杜璐', '人性的弱点');
INSERT INTO `borrow_info` VALUES (35, 1, 9, '2021-04-11 04:27:07', '2021-05-11 04:27:07', '2008-02-25 03:16:38', 0, '2003-04-25 12:39:48', '2009-06-22 08:24:00', '赵晓明', '哈利·波特与魔法石');
INSERT INTO `borrow_info` VALUES (36, 10, 14, '2011-03-07 17:08:36', '2011-04-07 17:08:36', '2021-11-06 20:44:08', 1, '2015-08-10 05:52:35', '2004-07-29 00:42:34', '邹睿', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (37, 43, 30, '2010-01-04 02:54:59', '2010-02-04 02:54:59', '2015-08-28 03:03:05', 1, '2001-02-22 21:13:55', '2002-07-15 09:59:11', '213', '2345');
INSERT INTO `borrow_info` VALUES (38, 10, 42, '2022-01-04 07:35:01', '2022-02-04 07:35:01', '2011-07-06 10:40:06', 0, '2021-10-09 00:37:45', '2019-03-07 12:56:45', '邹睿', '23');
INSERT INTO `borrow_info` VALUES (39, 38, 1, '2013-06-13 01:32:04', '2013-07-13 01:32:04', '2015-12-02 22:58:42', 1, '2017-03-02 12:51:41', '2023-04-21 09:42:41', '45656', '红楼梦');
INSERT INTO `borrow_info` VALUES (40, 9, 8, '2021-04-21 17:20:26', '2021-05-21 17:20:26', '2000-03-23 14:36:22', 0, '2009-01-06 01:17:34', '2007-05-26 05:17:42', '杜璐', '影响力');
INSERT INTO `borrow_info` VALUES (41, 43, 12, '2006-01-05 09:39:31', '2006-02-05 09:39:31', '2002-06-01 23:30:17', 1, '2010-02-04 13:12:49', '2020-08-26 18:24:11', '213', '平凡的世界');
INSERT INTO `borrow_info` VALUES (42, 6, 2, '2007-10-16 01:41:12', '2007-11-16 01:41:12', '2023-04-21 09:44:45', 1, '2019-10-11 20:12:21', '2023-04-21 09:44:45', '郭詩涵', '西游记');
INSERT INTO `borrow_info` VALUES (43, 13, 24, '2019-04-13 02:51:25', '2019-05-13 02:51:25', '2016-08-23 06:03:52', 0, '2001-08-26 06:42:45', '2012-08-26 19:26:17', '阎睿', 'qwe');
INSERT INTO `borrow_info` VALUES (44, 11, 22, '2013-08-21 05:35:42', '2013-09-21 05:35:42', '2023-04-21 16:12:38', 1, '2002-04-01 00:30:26', '2023-04-21 16:12:38', '王睿', 'qw3erq');
INSERT INTO `borrow_info` VALUES (45, 42, 30, '2014-02-07 23:29:32', '2014-03-07 23:29:32', '2005-04-20 04:55:53', 0, '2021-03-19 12:52:42', '2009-06-26 13:57:10', '213', '2345');
INSERT INTO `borrow_info` VALUES (46, 8, 42, '2003-10-22 12:54:01', '2003-11-22 12:54:01', '2019-04-16 16:56:20', 1, '2006-03-17 11:00:32', '2010-02-02 06:34:38', '周璐', '23');
INSERT INTO `borrow_info` VALUES (47, 11, 19, '2011-06-30 17:45:45', '2011-07-30 17:45:45', '2023-04-21 16:12:57', 1, '2011-04-09 01:49:52', '2023-04-21 16:12:57', '王睿', '132');
INSERT INTO `borrow_info` VALUES (48, 23, 9, '2020-11-17 16:42:54', '2020-12-17 16:42:54', '2000-04-12 02:11:53', 1, '2022-05-25 20:37:19', '2010-07-15 18:10:09', '45', '哈利·波特与魔法石');
INSERT INTO `borrow_info` VALUES (49, 2, 42, '2016-11-28 08:59:01', '2016-12-28 08:59:01', '2013-01-03 23:41:36', 1, '2001-05-15 03:03:41', '2020-01-20 08:08:33', '王安琪', '23');
INSERT INTO `borrow_info` VALUES (50, 3, 4, '2019-03-11 09:28:54', '2019-05-11 09:28:54', '2023-04-21 10:57:03', 1, '2018-10-01 09:26:27', '2023-04-21 10:57:03', '蔡云熙', '三国演义');
INSERT INTO `borrow_info` VALUES (103, 5, 41, '2023-04-21 09:51:47', '2023-05-21 09:51:47', '2023-04-21 09:52:49', 1, '2023-04-21 09:51:47', '2023-04-21 09:52:49', '唐嘉伦', '确认确认');
INSERT INTO `borrow_info` VALUES (104, 1, 1, '2023-04-21 10:40:16', '2023-05-21 14:40:16', '2023-04-21 10:43:22', 0, '2023-04-21 10:40:16', '2023-04-21 10:43:22', '赵晓明', '红楼梦');
INSERT INTO `borrow_info` VALUES (105, 44, 53, '2023-04-21 19:11:14', '2023-06-21 19:11:14', '2023-04-21 19:13:56', 1, '2023-04-21 19:11:14', '2023-04-21 19:13:56', '555445', '13');
INSERT INTO `borrow_info` VALUES (106, 19, 26, '2023-04-22 00:32:00', '2023-05-22 00:32:00', NULL, 0, '2023-04-22 00:32:00', '2023-04-22 00:32:00', '魏子韬', '2313');
INSERT INTO `borrow_info` VALUES (107, 23, 25, '2023-04-22 00:32:33', '2023-05-22 00:32:33', NULL, 0, '2023-04-22 00:32:33', '2023-04-22 00:32:33', '45', '2313');
INSERT INTO `borrow_info` VALUES (108, 41, 2, '2023-04-22 00:34:37', '2023-05-22 00:34:37', NULL, 0, '2023-04-22 00:34:37', '2023-04-22 00:34:37', '14568885463', '西游记');
INSERT INTO `borrow_info` VALUES (109, 5, 23, '2023-04-22 08:35:21', '2023-05-22 08:35:21', NULL, 0, '2023-04-22 08:35:21', '2023-04-22 08:35:21', '唐嘉伦', '123');
INSERT INTO `borrow_info` VALUES (110, 38, 5, '2023-04-22 08:35:40', '2023-05-22 08:35:40', NULL, 0, '2023-04-22 08:35:40', '2023-04-22 08:35:40', '45656', '时间简史');
INSERT INTO `borrow_info` VALUES (111, 4, 14, '2023-04-22 13:03:22', '2023-05-22 13:03:22', NULL, 0, '2023-04-22 13:03:22', '2023-04-22 13:03:22', '戴宇宁', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (117, 12, 14, '2023-04-22 13:04:34', '2023-05-22 13:04:34', NULL, 0, '2023-04-22 13:04:34', '2023-04-22 13:04:34', '马安琪', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (118, 5, 21, '2023-04-22 13:05:41', '2023-05-22 13:05:41', NULL, 0, '2023-04-22 13:05:41', '2023-04-22 13:05:41', '唐嘉伦', 'qw3erq');
INSERT INTO `borrow_info` VALUES (119, 26, 19, '2023-04-22 13:06:02', '2023-05-22 13:06:02', NULL, 0, '2023-04-22 13:06:02', '2023-04-22 13:06:02', '123', '132');
INSERT INTO `borrow_info` VALUES (120, 5, 41, '2023-04-22 13:06:03', '2023-05-22 13:06:03', NULL, 0, '2023-04-22 13:06:03', '2023-04-22 13:06:03', '唐嘉伦', '确认确认');
INSERT INTO `borrow_info` VALUES (121, 2, 7, '2023-04-22 13:06:04', '2023-05-22 13:06:04', NULL, 0, '2023-04-22 13:06:04', '2023-04-22 13:06:04', '王安琪', '人性的弱点');
INSERT INTO `borrow_info` VALUES (122, 19, 26, '2023-04-22 13:06:05', '2023-05-22 13:06:05', NULL, 0, '2023-04-22 13:06:05', '2023-04-22 13:06:05', '魏子韬', '2313');
INSERT INTO `borrow_info` VALUES (123, 2, 13, '2023-04-22 13:06:06', '2023-05-22 13:06:06', NULL, 0, '2023-04-22 13:06:06', '2023-04-22 13:06:06', '王安琪', '围城');
INSERT INTO `borrow_info` VALUES (124, 7, 25, '2023-04-22 13:06:06', '2023-05-22 13:06:06', NULL, 0, '2023-04-22 13:06:06', '2023-04-22 13:06:06', '杜宇宁', '2313');
INSERT INTO `borrow_info` VALUES (125, 41, 2, '2023-04-22 13:06:07', '2023-05-22 13:06:07', NULL, 0, '2023-04-22 13:06:07', '2023-04-22 13:06:07', '14568885463', '西游记');
INSERT INTO `borrow_info` VALUES (126, 23, 25, '2023-04-22 13:06:07', '2023-05-22 13:06:07', NULL, 0, '2023-04-22 13:06:07', '2023-04-22 13:06:07', '45', '2313');
INSERT INTO `borrow_info` VALUES (127, 5, 23, '2023-04-22 13:06:08', '2023-05-22 13:06:08', NULL, 0, '2023-04-22 13:06:08', '2023-04-22 13:06:08', '唐嘉伦', '123');
INSERT INTO `borrow_info` VALUES (128, 38, 5, '2023-04-22 13:06:08', '2023-05-22 13:06:08', NULL, 0, '2023-04-22 13:06:08', '2023-04-22 13:06:08', '45656', '时间简史');
INSERT INTO `borrow_info` VALUES (129, 19, 18, '2023-04-22 13:06:10', '2023-05-22 13:06:10', NULL, 0, '2023-04-22 13:06:10', '2023-04-22 13:06:10', '魏子韬', '求翁');
INSERT INTO `borrow_info` VALUES (130, 7, 1, '2023-04-22 13:06:10', '2023-05-22 13:06:10', NULL, 0, '2023-04-22 13:06:10', '2023-04-22 13:06:10', '杜宇宁', '红楼梦');
INSERT INTO `borrow_info` VALUES (134, 4, 21, '2023-04-22 13:08:00', '2023-05-22 13:08:00', NULL, 0, '2023-04-22 13:08:00', '2023-04-22 13:08:00', '戴宇宁', 'qw3erq');
INSERT INTO `borrow_info` VALUES (135, 8, 27, '2023-04-22 13:08:04', '2023-05-22 13:08:04', NULL, 0, '2023-04-22 13:08:04', '2023-04-22 13:08:04', '周璐', '2313');
INSERT INTO `borrow_info` VALUES (136, 22, 17, '2023-04-22 13:08:05', '2023-05-22 13:08:05', NULL, 0, '2023-04-22 13:08:05', '2023-04-22 13:08:05', '陌染', '求翁23');
INSERT INTO `borrow_info` VALUES (137, 7, 42, '2023-04-22 13:08:06', '2023-05-22 13:08:06', NULL, 0, '2023-04-22 13:08:06', '2023-04-22 13:08:06', '杜宇宁', '23');
INSERT INTO `borrow_info` VALUES (138, 44, 53, '2023-04-22 13:08:06', '2023-05-22 13:08:06', NULL, 0, '2023-04-22 13:08:06', '2023-04-22 13:08:06', '555445', '13');
INSERT INTO `borrow_info` VALUES (139, 4, 14, '2023-04-22 13:08:08', '2023-05-22 13:08:08', NULL, 0, '2023-04-22 13:08:08', '2023-04-22 13:08:08', '戴宇宁', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (140, 14, 18, '2023-04-22 13:14:59', '2023-05-22 13:14:59', NULL, 0, '2023-04-22 13:14:59', '2023-04-22 13:14:59', '余致远', '求翁');
INSERT INTO `borrow_info` VALUES (141, 2, 13, '2023-04-22 13:19:25', '2023-05-22 13:19:25', NULL, 0, '2023-04-22 13:19:25', '2023-04-22 13:19:25', '王安琪', '围城');
INSERT INTO `borrow_info` VALUES (142, 2, 14, '2023-04-22 20:17:40', '2023-05-22 20:17:40', NULL, 0, '2023-04-22 20:17:40', '2023-04-22 20:17:40', '王安琪', '解忧杂货店');
INSERT INTO `borrow_info` VALUES (143, 23, 1, '2023-04-22 20:56:52', '2023-05-22 20:56:52', NULL, 0, '2023-04-22 20:56:52', '2023-04-22 20:56:52', '45', '红楼梦');
INSERT INTO `borrow_info` VALUES (144, 44, 61, '2023-04-24 13:15:15', '2023-05-24 13:15:15', NULL, 0, '2023-04-24 13:15:15', '2023-04-24 13:15:15', '555445', '的方式访问乳房伟人风范');
INSERT INTO `borrow_info` VALUES (145, 26, 6, '2023-02-02 20:41:14', '2023-03-02 20:41:14', '2023-05-15 12:09:20', 1, '2023-04-24 20:41:50', '2023-05-15 12:09:20', '123', '金字塔原理');
INSERT INTO `borrow_info` VALUES (146, 25, 7, '2023-04-26 00:57:44', '2023-05-26 00:57:44', NULL, 0, '2023-04-26 00:57:44', '2023-04-26 00:57:44', '框架', '人性的弱点');
INSERT INTO `borrow_info` VALUES (147, 26, 61, '2023-04-26 01:10:16', '2023-06-26 01:10:16', '2023-04-26 02:02:53', 0, '2023-04-26 01:10:16', '2023-04-26 02:02:53', '123', '的方式访问乳房伟人风范');
INSERT INTO `borrow_info` VALUES (148, 26, 9, '2023-04-26 02:03:39', '2023-05-26 02:03:39', NULL, 0, '2023-04-26 02:03:39', '2023-04-26 02:03:39', '123', '哈利·波特与魔法石');
INSERT INTO `borrow_info` VALUES (149, 23, 1, '2023-04-26 11:18:59', '2023-05-26 11:18:59', NULL, 0, '2023-04-26 11:18:59', '2023-04-26 11:18:59', '45', '红楼梦');
INSERT INTO `borrow_info` VALUES (150, 23, 3, '2023-05-15 12:29:24', '2023-06-15 12:29:24', NULL, 0, '2023-05-15 12:29:24', '2023-05-15 12:29:24', '45', '水浒传');

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `book_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `rating` float UNSIGNED NOT NULL COMMENT '评分',
  `comment_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  INDEX `comment_info_ibfk_1`(`user_id` ASC, `user_name` ASC) USING BTREE,
  INDEX `comment_info_ibfk_2`(`book_id` ASC, `book_title` ASC) USING BTREE,
  CONSTRAINT `comment_info_ibfk_1` FOREIGN KEY (`user_id`, `user_name`) REFERENCES `user_info` (`id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_info_ibfk_2` FOREIGN KEY (`book_id`, `book_title`) REFERENCES `book_info` (`id`, `title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (1, 25, '框架', 31, '2e1', 'NSJHZDtBah', 10, '2000-05-23 11:31:09');
INSERT INTO `comment_info` VALUES (2, 17, '卢云熙', 15, '三体', 'c6q6TrDp9g', 1, '2000-03-12 23:36:00');
INSERT INTO `comment_info` VALUES (3, 26, '123', 3, '水浒传', '104XQYGnLd', 9, '2018-08-17 22:21:03');
INSERT INTO `comment_info` VALUES (4, 22, '陌染', 32, '413', '0YwMMRnAE4', 4, '2003-11-09 17:51:26');
INSERT INTO `comment_info` VALUES (5, 8, '周璐', 6, '金字塔原理', '28rQXiEoVp', 6, '2012-03-22 18:25:24');
INSERT INTO `comment_info` VALUES (6, 14, '余致远', 16, '活着', 'wMyDEw4iCu', 4, '2020-04-22 11:19:19');
INSERT INTO `comment_info` VALUES (7, 16, '董致远', 11, '钢铁是怎样炼成的', 'cQLpudUWuV', 3, '2003-04-06 02:48:12');
INSERT INTO `comment_info` VALUES (8, 20, '贾璐', 2, '西游记', 'FXL4bYpz5W', 1, '2013-03-23 15:04:43');
INSERT INTO `comment_info` VALUES (9, 20, '贾璐', 2, '西游记', 'bRsWNfsiCH', 6, '2020-06-21 18:25:09');
INSERT INTO `comment_info` VALUES (10, 5, '唐嘉伦', 26, '2313', '6eyL9GMcDa', 6, '2002-07-12 15:34:56');
INSERT INTO `comment_info` VALUES (11, 2, '王安琪', 5, '时间简史', 'inG83xnegN', 8, '2003-09-17 13:34:45');
INSERT INTO `comment_info` VALUES (12, 5, '唐嘉伦', 42, '23', 'ytpnUMtaD7', 3, '2014-06-25 19:17:11');
INSERT INTO `comment_info` VALUES (13, 2, '王安琪', 18, '求翁', 'gvjCcFKC1T', 0.9, '2023-04-19 13:39:01');
INSERT INTO `comment_info` VALUES (14, 4, '戴宇宁', 12, '平凡的世界', 'RgDTSVdoEW', 4.6, '2023-04-19 13:38:45');
INSERT INTO `comment_info` VALUES (15, 11, '王睿', 18, '求翁', 'kK1jyPAy6F', 8, '2020-12-09 19:23:22');
INSERT INTO `comment_info` VALUES (16, 22, '陌染', 18, '求翁', 'vHqggcZuyy', 6, '2001-05-04 18:40:38');
INSERT INTO `comment_info` VALUES (17, 1, '赵晓明', 4, '三国演义', 'UFD1UI73OS', 2, '2009-05-15 06:53:16');
INSERT INTO `comment_info` VALUES (18, 18, '徐晓明', 18, '求翁', 'AqlkzVYpxn', 7, '2000-08-18 00:23:55');
INSERT INTO `comment_info` VALUES (19, 7, '杜宇宁', 3, '水浒传', 'abrRolFTZ7', 2, '2003-06-12 03:39:48');
INSERT INTO `comment_info` VALUES (20, 25, '框架', 22, 'qw3erq', 'pazF1jfOmL', 3, '2020-08-24 06:33:17');
INSERT INTO `comment_info` VALUES (21, 19, '魏子韬', 8, '影响力', 'yt35dPAQt2', 2, '2023-04-19 13:38:22');
INSERT INTO `comment_info` VALUES (22, 12, '马安琪', 6, '金字塔原理', 'bokfYoncHK', 1, '2014-09-18 00:41:19');
INSERT INTO `comment_info` VALUES (23, 6, '郭詩涵', 1, '红楼梦', 'kKUqhnChDJ', 7, '2015-03-07 20:53:37');
INSERT INTO `comment_info` VALUES (24, 8, '周璐', 42, '23', 'mIIRjy2KM6', 7, '2007-03-28 08:40:16');
INSERT INTO `comment_info` VALUES (31, 4, '戴宇宁', 5, '时间简史', '123156', 9, '2023-04-19 11:15:43');
INSERT INTO `comment_info` VALUES (32, 11, '王睿', 8, '影响力', '54', 9, '2023-04-19 11:16:11');
INSERT INTO `comment_info` VALUES (33, 5, '唐嘉伦', 8, '影响力', '18561', 9, '2023-04-19 11:26:45');
INSERT INTO `comment_info` VALUES (34, 5, '唐嘉伦', 9, '哈利·波特与魔法石', '1566514', 5, '2023-04-25 23:31:36');
INSERT INTO `comment_info` VALUES (35, 42, '213', 13, '围城', 'ieNzQIJdrL', 8.08, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (36, 4, '戴宇宁', 8, '影响力', 'IYcZs7R4Ec', 4.3, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (37, 7, '杜宇宁', 28, '2313', 'C6hxGJ9gM2', 0.72, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (38, 8, '周璐', 2, '西游记', '33rIJjdvs2', 3.75, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (39, 14, '余致远', 13, '围城', 'S7QolWqIUR', 2.21, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (40, 26, '123', 9, '哈利·波特与魔法石', 'abTqHSYytM', 9.63, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (41, 16, '董致远', 22, 'qw3erq', 'vuPNd4A8Rm', 8.41, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (42, 41, '14568885463', 12, '平凡的世界', 'wLmz2rioYX', 4, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (43, 12, '马安琪', 7, '人性的弱点', '9jC6MOv90T', 2.97, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (44, 24, '咋还能三', 8, '影响力', 'qGckYQYnUI', 5.98, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (45, 7, '杜宇宁', 18, '求翁', 'LGvnPBjDiJ', 4.21, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (46, 40, 'mo\'ramoran', 22, 'qw3erq', 'NW06tGXACS', 5.34, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (47, 13, '阎睿', 19, '132', '9641LFclWu', 6.53, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (48, 2, '王安琪', 27, '2313', 'BSjoTp0hln', 9.99, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (49, 43, '213', 52, '23124', 'CXhgfeLI4M', 7.53, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (50, 14, '余致远', 5, '时间简史', '72uPgCkGjB', 6.35, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (51, 27, 'li904', 41, '确认确认', 'xmJc5gCd4n', 3.19, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (52, 14, '余致远', 41, '确认确认', 'iyoLu9yrhX', 8.74, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (53, 22, '陌染', 28, '2313', 'OKsyFDZsXf', 0.04, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (54, 1, '赵晓明', 25, '2313', 'kcNuTzLlcB', 9.53, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (55, 14, '余致远', 14, '解忧杂货店', '5bKZfuMwHZ', 1.99, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (56, 22, '陌染', 28, '2313', 'rshHGKqTzA', 1.47, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (57, 26, '123', 19, '132', '6NEhymChAz', 5.85, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (58, 42, '213', 28, '2313', 'QVstqUJ0bQ', 0.55, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (59, 11, '王睿', 6, '金字塔原理', 'jmZO3FpMiF', 4.81, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (60, 9, '杜璐', 21, 'qw3erq', 'aEvs768FAJ', 0.9, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (61, 16, '董致远', 16, '活着', 'ilsiVQI3i4', 1.17, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (62, 39, '45656', 31, '2e1', 'HACarB83Up', 4.19, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (63, 40, 'mo\'ramoran', 42, '23', 'WTsZLOOltF', 4.68, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (64, 44, '555445', 14, '解忧杂货店', 'MxtoBplF5p', 8.12, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (65, 38, '45656', 31, '2e1', 'vblxvMBLPM', 5.51, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (66, 18, '徐晓明', 5, '时间简史', 'odOzcoawsL', 8.42, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (67, 16, '董致远', 53, '13', 'u6pIXvF5h0', 8.02, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (68, 17, '卢云熙', 21, 'qw3erq', '5qvPVXv2CF', 4.35, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (69, 6, '郭詩涵', 29, '2345', '13d8nxJYLU', 3.65, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (70, 40, 'mo\'ramoran', 12, '平凡的世界', 'MVtVjaeGdz', 7.94, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (71, 4, '戴宇宁', 18, '求翁', '2ZwgqKit9J', 1.84, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (72, 7, '杜宇宁', 61, '的方式访问乳房伟人风范', 'iMTLCYUe4Z', 1.71, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (73, 17, '卢云熙', 16, '活着', 'G6cjbAtnKe', 8.89, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (74, 27, 'li904', 28, '2313', 'B1PNuTFGTn', 2.56, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (75, 19, '魏子韬', 1, '红楼梦', 'h1enIfIX4E', 6.87, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (76, 9, '杜璐', 29, '2345', 'Fy5yLAAvkg', 7.67, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (77, 8, '周璐', 22, 'qw3erq', 'zXgpPv99ak', 0.65, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (78, 38, '45656', 7, '人性的弱点', 'E4XRYLZXzr', 8.31, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (79, 22, '陌染', 3, '水浒传', '9XC9xMYkgj', 0.85, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (80, 1, '赵晓明', 9, '哈利·波特与魔法石', 'KKvZnfgUzj', 6.63, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (81, 18, '徐晓明', 42, '23', '4VpkpmAb19', 7.93, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (82, 18, '徐晓明', 11, '钢铁是怎样炼成的', 'fZGWw0Dunm', 0.01, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (83, 44, '555445', 42, '23', 'xyptNWMcot', 8.89, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (84, 44, '555445', 2, '西游记', 'pUa2LsxP7x', 1.04, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (85, 9, '杜璐', 11, '钢铁是怎样炼成的', 'nxMyMZBtap', 7.01, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (86, 9, '杜璐', 29, '2345', 'unXq2K29Vs', 9.27, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (87, 12, '马安琪', 41, '确认确认', 'xbwVZ95kXF', 0.1, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (88, 40, 'mo\'ramoran', 19, '132', 'A8GKAvItbr', 1.25, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (89, 6, '郭詩涵', 42, '23', '0rJ8FHB2TD', 9.91, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (90, 44, '555445', 42, '23', 'woTsJgdfpg', 0.79, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (91, 2, '王安琪', 11, '钢铁是怎样炼成的', 'wj6dCbW4VC', 2.87, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (92, 9, '杜璐', 17, '求翁23', 'HdLfiGxIXn', 4.42, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (93, 8, '周璐', 42, '23', 'Qv1UobF3UI', 8.03, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (94, 8, '周璐', 18, '求翁', 'RGWFYOCgAt', 7.99, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (95, 15, '戴秀英', 9, '哈利·波特与魔法石', 'Gw81Iz9J1I', 8.03, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (96, 43, '213', 10, '小王子', 'GzF5VxVNXj', 9.59, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (97, 1, '赵晓明', 5, '时间简史', 'zpFGKoIo2D', 1.48, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (98, 39, '45656', 27, '2313', 'LD6EOVz7td', 9.1, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (99, 24, '咋还能三', 23, '123', '4raNNr0O0Y', 5.74, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (100, 12, '马安琪', 61, '的方式访问乳房伟人风范', 'hxCcupqvh8', 8.98, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (101, 1, '赵晓明', 31, '2e1', 'rNOYD3Augw', 7.12, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (102, 3, '蔡云熙', 23, '123', 'or0HTk10lS', 0.34, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (103, 25, '框架', 10, '小王子', 'NtGNy19IOU', 9.45, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (104, 25, '框架', 17, '求翁23', 'sPrLd4e3hw', 3.89, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (105, 42, '213', 29, '2345', 'xlGMmZ3isU', 4.7, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (106, 16, '董致远', 26, '2313', 's8qPLk80Df', 2.72, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (107, 39, '45656', 21, 'qw3erq', 'A6VR9Y2Ju3', 1.14, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (108, 9, '杜璐', 41, '确认确认', '70qwMq9HIB', 1.06, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (109, 17, '卢云熙', 24, 'qwe', 'fwx4GZJ1MO', 7.68, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (110, 1, '赵晓明', 27, '2313', '5TK7dp1g2w', 2.54, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (111, 24, '咋还能三', 41, '确认确认', 'qtwN7xWd3j', 3.12, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (112, 40, 'mo\'ramoran', 17, '求翁23', '2i1x7ur7xg', 4.81, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (113, 4, '戴宇宁', 3, '水浒传', 'rViSQnCpjk', 8.48, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (114, 17, '卢云熙', 15, '三体', 'n7tfgHIOvK', 8.62, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (115, 22, '陌染', 12, '平凡的世界', 'MijO4dhVGd', 7.92, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (116, 13, '阎睿', 53, '13', 'kHaT268Xul', 8.73, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (117, 26, '123', 6, '金字塔原理', 'gLjhdVYr6J', 1.6, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (118, 11, '王睿', 10, '小王子', 'L5LDinFY0a', 0.69, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (119, 44, '555445', 17, '求翁23', 'bPAkHSQeXh', 0.62, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (120, 24, '咋还能三', 12, '平凡的世界', 'tX3MRcVypH', 8.25, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (121, 26, '123', 13, '围城', 'QJh8BZoAiO', 1.58, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (122, 2, '王安琪', 21, 'qw3erq', '4PNDc7qbjd', 3.11, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (123, 3, '蔡云熙', 42, '23', 'D3N6VWrsMt', 1.97, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (124, 11, '王睿', 22, 'qw3erq', 'FSEwZvuTlD', 5.75, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (125, 20, '贾璐', 10, '小王子', '1tZkLlPln3', 1.13, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (126, 7, '杜宇宁', 23, '123', 'YVKSjYlAAI', 2.09, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (127, 42, '213', 18, '求翁', 'VygzZEwxM5', 1.18, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (128, 23, '45', 23, '123', 'PstaDsUazq', 6.35, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (129, 5, '唐嘉伦', 18, '求翁', '8aCGiTbGe3', 9.57, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (130, 14, '余致远', 9, '哈利·波特与魔法石', 'IjFYhRM2Wk', 8.37, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (131, 43, '213', 15, '三体', 'hj0MakagJe', 9.91, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (132, 19, '魏子韬', 2, '西游记', 'kwxm2bnIBc', 4.17, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (133, 44, '555445', 61, '的方式访问乳房伟人风范', 'dajPxvGbD3', 5.69, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (134, 18, '徐晓明', 10, '小王子', '9i70HFMK01', 5.86, '2023-04-25 23:33:34');
INSERT INTO `comment_info` VALUES (135, 26, '123', 6, '金字塔原理', '123456789012345678901234567890', 8, '2023-04-26 00:49:40');

-- ----------------------------
-- Table structure for fine_info
-- ----------------------------
DROP TABLE IF EXISTS `fine_info`;
CREATE TABLE `fine_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '罚款ID',
  `borrow_id` int NULL DEFAULT NULL COMMENT '借阅id',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `fine_amount` decimal(10, 2) NOT NULL COMMENT '罚款金额',
  `fine_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '罚款时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：1-未缴纳，2-已缴纳',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `book_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  INDEX `fine_info_ibfk_1`(`user_id` ASC, `user_name` ASC) USING BTREE,
  INDEX `fine_info_ibfk_2`(`book_id` ASC, `book_title` ASC) USING BTREE,
  INDEX `borrow_id`(`borrow_id` ASC) USING BTREE,
  CONSTRAINT `fine_info_ibfk_1` FOREIGN KEY (`user_id`, `user_name`) REFERENCES `user_info` (`id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fine_info_ibfk_2` FOREIGN KEY (`book_id`, `book_title`) REFERENCES `book_info` (`id`, `title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine_info
-- ----------------------------
INSERT INTO `fine_info` VALUES (7, 1, 1, 14, 2118.00, '2023-04-24 19:24:19', 2, '赵晓明', '解忧杂货店');
INSERT INTO `fine_info` VALUES (8, 3, 8, 17, 6687.00, '2023-04-24 20:52:20', 2, '周璐', '求翁23');
INSERT INTO `fine_info` VALUES (9, 4, 7, 14, 3123.00, '2023-04-24 21:06:20', 2, '杜宇宁', '解忧杂货店');
INSERT INTO `fine_info` VALUES (10, 6, 23, 9, 11919.00, '2023-04-26 11:18:20', 2, '45', '哈利·波特与魔法石');
INSERT INTO `fine_info` VALUES (11, 8, 14, 12, 15399.00, '2023-04-24 21:14:20', 2, '余致远', '平凡的世界');
INSERT INTO `fine_info` VALUES (12, 10, 9, 29, 10167.00, '2023-05-15 14:06:20', 1, '杜璐', '2345');
INSERT INTO `fine_info` VALUES (13, 12, 16, 26, 3870.00, '2023-05-15 14:06:20', 1, '董致远', '2313');
INSERT INTO `fine_info` VALUES (14, 13, 10, 9, 1320.00, '2023-05-15 14:06:20', 1, '邹睿', '哈利·波特与魔法石');
INSERT INTO `fine_info` VALUES (15, 15, 13, 13, 15402.00, '2023-05-15 14:06:20', 1, '阎睿', '围城');
INSERT INTO `fine_info` VALUES (16, 16, 27, 41, 4170.00, '2023-05-15 14:06:20', 1, 'li904', '确认确认');
INSERT INTO `fine_info` VALUES (17, 17, 43, 10, 18714.00, '2023-05-15 11:58:20', 2, '213', '小王子');
INSERT INTO `fine_info` VALUES (18, 18, 5, 3, 8715.00, '2023-05-15 14:06:20', 1, '唐嘉伦', '水浒传');
INSERT INTO `fine_info` VALUES (19, 22, 23, 21, 25071.00, '2023-05-15 14:06:20', 1, '45', 'qw3erq');
INSERT INTO `fine_info` VALUES (20, 27, 20, 14, 13359.00, '2023-05-15 14:06:20', 1, '贾璐', '解忧杂货店');
INSERT INTO `fine_info` VALUES (21, 28, 11, 13, 6678.00, '2023-05-15 14:06:20', 1, '王睿', '围城');
INSERT INTO `fine_info` VALUES (22, 29, 41, 8, 6540.00, '2023-05-15 14:06:20', 1, '14568885463', '影响力');
INSERT INTO `fine_info` VALUES (23, 33, 24, 22, 10473.00, '2023-05-15 14:06:20', 1, '咋还能三', 'qw3erq');
INSERT INTO `fine_info` VALUES (24, 34, 9, 7, 12531.00, '2023-05-15 14:06:20', 1, '杜璐', '人性的弱点');
INSERT INTO `fine_info` VALUES (25, 36, 10, 14, 11598.00, '2023-05-15 14:06:20', 1, '邹睿', '解忧杂货店');
INSERT INTO `fine_info` VALUES (26, 37, 43, 30, 6093.00, '2023-05-15 14:06:20', 1, '213', '2345');
INSERT INTO `fine_info` VALUES (27, 39, 38, 1, 2616.00, '2023-05-15 14:06:20', 1, '45656', '红楼梦');
INSERT INTO `fine_info` VALUES (28, 42, 6, 2, 16905.00, '2023-05-15 14:06:20', 1, '郭詩涵', '西游记');
INSERT INTO `fine_info` VALUES (29, 44, 11, 22, 10497.00, '2023-05-15 14:06:20', 1, '王睿', 'qw3erq');
INSERT INTO `fine_info` VALUES (30, 46, 8, 42, 16872.00, '2023-05-15 14:06:20', 1, '周璐', '23');
INSERT INTO `fine_info` VALUES (31, 47, 11, 19, 12846.00, '2023-05-15 14:06:20', 1, '王睿', '132');
INSERT INTO `fine_info` VALUES (32, 50, 3, 4, 4323.00, '2023-05-15 14:06:20', 1, '蔡云熙', '三国演义');
INSERT INTO `fine_info` VALUES (33, 1, 1, 14, 2118.00, '2023-05-15 14:06:20', 1, '赵晓明', '解忧杂货店');
INSERT INTO `fine_info` VALUES (34, 145, 26, 6, 219.00, '2023-05-15 12:14:20', 2, '123', '金字塔原理');
INSERT INTO `fine_info` VALUES (35, 3, 8, 17, 6687.00, '2023-05-15 14:06:20', 1, '周璐', '求翁23');
INSERT INTO `fine_info` VALUES (36, 4, 7, 14, 3123.00, '2023-05-15 14:06:20', 1, '杜宇宁', '解忧杂货店');
INSERT INTO `fine_info` VALUES (37, 8, 14, 12, 15399.00, '2023-05-15 14:06:20', 1, '余致远', '平凡的世界');
INSERT INTO `fine_info` VALUES (38, 6, 23, 9, 11919.00, '2023-05-15 12:12:20', 2, '45', '哈利·波特与魔法石');
INSERT INTO `fine_info` VALUES (39, 17, 43, 10, 18714.00, '2023-05-15 14:06:20', 1, '213', '小王子');
INSERT INTO `fine_info` VALUES (40, 6, 23, 9, 11919.00, '2023-05-15 14:06:20', 1, '45', '哈利·波特与魔法石');
INSERT INTO `fine_info` VALUES (41, 145, 26, 6, 219.00, '2023-05-15 14:06:20', 1, '123', '金字塔原理');

-- ----------------------------
-- Table structure for renewal_info
-- ----------------------------
DROP TABLE IF EXISTS `renewal_info`;
CREATE TABLE `renewal_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '续借ID',
  `reserve_id` int UNSIGNED NOT NULL COMMENT '预约ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `renewal_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '续借时间',
  `admin_id` int NOT NULL DEFAULT 1000 COMMENT '审核管理员ID',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：1-待审核，2-已通过，3-已拒绝',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核备注',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `book_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '书籍名',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reserve_id`(`reserve_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `admin_id`(`admin_id` ASC) USING BTREE,
  INDEX `reserve_id_2`(`reserve_id` ASC, `book_title` ASC) USING BTREE,
  INDEX `renewal_info_ibfk_5`(`user_id` ASC, `user_name` ASC) USING BTREE,
  CONSTRAINT `renewal_info_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `renewal_info_ibfk_4` FOREIGN KEY (`reserve_id`, `book_title`) REFERENCES `borrow_info` (`id`, `book_title`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `renewal_info_ibfk_5` FOREIGN KEY (`user_id`, `user_name`) REFERENCES `user_info` (`id`, `username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '续借信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renewal_info
-- ----------------------------
INSERT INTO `renewal_info` VALUES (1, 29, 6, '2020-09-27 00:40:00', 1002, 2, 'XJfKjstRTS', '郭詩涵', '影响力');
INSERT INTO `renewal_info` VALUES (2, 17, 9, '2000-06-15 11:05:32', 1000, 2, 'YTa7TeJyL9', '杜璐', '小王子');
INSERT INTO `renewal_info` VALUES (3, 8, 10, '2000-05-19 08:51:42', 1000, 1, 'r460WozUjn', '邹睿', '平凡的世界');
INSERT INTO `renewal_info` VALUES (4, 15, 10, '2012-07-24 19:40:24', 1000, 1, 'pPj6LBq4P2', '邹睿', '围城');
INSERT INTO `renewal_info` VALUES (5, 12, 25, '2015-12-13 05:23:22', 1002, 1, '2PqG9hNNWv', '框架', '2313');
INSERT INTO `renewal_info` VALUES (6, 29, 6, '2015-12-10 02:36:09', 1002, 1, 'G85finw1V5', '郭詩涵', '影响力');
INSERT INTO `renewal_info` VALUES (7, 35, 9, '2011-11-23 23:36:23', 1001, 1, 'iivS3df7OH', '杜璐', '哈利·波特与魔法石');
INSERT INTO `renewal_info` VALUES (8, 10, 27, '2021-05-24 11:52:29', 1002, 1, 'pNkRdQhCra', 'li904', '2345');
INSERT INTO `renewal_info` VALUES (9, 38, 43, '2008-03-23 07:28:36', 1000, 1, 'LpaZtrI8Lx', '213', '23');
INSERT INTO `renewal_info` VALUES (10, 28, 11, '2004-08-05 10:27:15', 1002, 2, '8BeDOqYqEt', '王睿', '围城');
INSERT INTO `renewal_info` VALUES (31, 104, 1, '2023-04-21 10:39:16', 1000, 2, NULL, '赵晓明', '红楼梦');
INSERT INTO `renewal_info` VALUES (32, 50, 3, '2023-04-21 10:56:38', 1000, 3, '1365563', '蔡云熙', '三国演义');
INSERT INTO `renewal_info` VALUES (33, 105, 44, '2023-04-21 19:13:42', 1000, 2, '156165156', '555445', '13');
INSERT INTO `renewal_info` VALUES (34, 8, 6, '2023-04-26 00:55:45', 1000, 1, '123434', '郭詩涵', '平凡的世界');
INSERT INTO `renewal_info` VALUES (37, 14, 6, '2023-04-26 01:06:21', 1000, 3, NULL, '郭詩涵', '解忧杂货店');
INSERT INTO `renewal_info` VALUES (38, 147, 26, '2023-04-26 01:11:46', 1000, 1, NULL, '123', '的方式访问乳房伟人风范');
INSERT INTO `renewal_info` VALUES (39, 2, 8, '2023-04-26 01:42:48', 1000, 1, NULL, '周璐', '2313');
INSERT INTO `renewal_info` VALUES (40, 8, 8, '2023-04-26 01:43:50', 1000, 3, NULL, '周璐', '平凡的世界');
INSERT INTO `renewal_info` VALUES (46, 147, 26, '2023-04-26 01:58:30', 1000, 2, '3432423423', '123', '的方式访问乳房伟人风范');
INSERT INTO `renewal_info` VALUES (47, 145, 26, '2023-04-26 01:58:47', 1000, 1, '32432424', '123', '金字塔原理');
INSERT INTO `renewal_info` VALUES (48, 148, 26, '2023-04-26 02:04:09', 1000, 1, '243567890', '123', '哈利·波特与魔法石');

-- ----------------------------
-- Table structure for reserve_info
-- ----------------------------
DROP TABLE IF EXISTS `reserve_info`;
CREATE TABLE `reserve_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '预约ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `book_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名',
  `reserve_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '预约时间',
  `borrow_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(0:未借阅, 1:已借阅)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reserve_info_ibfk_1`(`user_id` ASC, `user_name` ASC) USING BTREE,
  INDEX `reserve_info_ibfk_2`(`book_id` ASC, `book_title` ASC) USING BTREE,
  CONSTRAINT `reserve_info_ibfk_1` FOREIGN KEY (`user_id`, `user_name`) REFERENCES `user_info` (`id`, `username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reserve_info_ibfk_2` FOREIGN KEY (`book_id`, `book_title`) REFERENCES `book_info` (`id`, `title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '预约信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reserve_info
-- ----------------------------
INSERT INTO `reserve_info` VALUES (1, 5, '唐嘉伦', 21, 'qw3erq', '2013-01-31 22:54:29', '2023-04-22 13:05:41', 1, '2012-12-04 07:35:13', '2023-04-22 13:05:41');
INSERT INTO `reserve_info` VALUES (2, 12, '马安琪', 14, '解忧杂货店', '2004-05-29 01:49:36', '2023-04-22 13:04:34', 1, '2023-01-05 08:59:58', '2023-04-22 13:04:34');
INSERT INTO `reserve_info` VALUES (3, 26, '123', 19, '132', '2010-09-13 18:57:43', '2023-04-22 13:06:02', 1, '2022-11-13 08:03:25', '2023-04-22 13:06:02');
INSERT INTO `reserve_info` VALUES (4, 5, '唐嘉伦', 41, '确认确认', '2006-06-24 14:01:17', '2023-04-22 13:06:03', 1, '2015-09-30 12:47:31', '2023-04-22 13:06:03');
INSERT INTO `reserve_info` VALUES (5, 2, '王安琪', 7, '人性的弱点', '2017-12-09 21:25:46', '2023-04-22 13:06:04', 1, '2015-08-07 00:04:32', '2023-04-22 13:06:04');
INSERT INTO `reserve_info` VALUES (6, 19, '魏子韬', 26, '2313', '2008-01-24 22:29:58', '2023-04-22 13:06:05', 1, '2013-12-24 22:29:13', '2023-04-22 13:06:05');
INSERT INTO `reserve_info` VALUES (7, 2, '王安琪', 13, '围城', '2021-03-17 07:38:49', '2023-04-22 13:06:06', 1, '2005-04-18 14:47:10', '2023-04-22 13:06:06');
INSERT INTO `reserve_info` VALUES (8, 7, '杜宇宁', 25, '2313', '2012-03-23 10:11:24', '2023-04-22 13:06:06', 1, '2013-06-14 20:17:18', '2023-04-22 13:06:06');
INSERT INTO `reserve_info` VALUES (9, 41, '14568885463', 2, '西游记', '2003-02-13 16:55:55', '2023-04-22 13:06:07', 1, '2015-02-26 23:13:54', '2023-04-22 13:06:07');
INSERT INTO `reserve_info` VALUES (10, 23, '45', 25, '2313', '2006-12-17 05:57:07', '2023-04-22 13:06:07', 1, '2009-09-26 22:16:44', '2023-04-22 13:06:07');
INSERT INTO `reserve_info` VALUES (11, 5, '唐嘉伦', 23, '123', '2017-06-11 07:01:00', '2023-04-22 13:06:08', 1, '2010-03-01 06:40:49', '2023-04-22 13:06:08');
INSERT INTO `reserve_info` VALUES (12, 38, '45656', 5, '时间简史', '2006-02-20 07:42:55', '2023-04-22 13:06:08', 1, '2018-10-26 23:00:06', '2023-04-22 13:06:08');
INSERT INTO `reserve_info` VALUES (13, 14, '余致远', 18, '求翁', '2015-02-06 05:04:35', '2023-04-22 13:14:59', 1, '2003-04-10 11:19:14', '2023-04-22 13:14:59');
INSERT INTO `reserve_info` VALUES (14, 19, '魏子韬', 18, '求翁', '2002-11-16 15:22:04', '2023-04-22 13:06:10', 1, '2014-05-08 19:37:45', '2023-04-22 13:06:10');
INSERT INTO `reserve_info` VALUES (15, 7, '杜宇宁', 1, '红楼梦', '2020-06-16 18:00:53', '2023-04-22 13:06:10', 1, '2018-04-19 17:00:42', '2023-04-22 13:06:10');
INSERT INTO `reserve_info` VALUES (17, 8, '周璐', 27, '2313', '2000-10-13 02:53:20', '2023-04-22 13:08:04', 1, '2021-02-19 01:24:11', '2023-04-22 13:08:04');
INSERT INTO `reserve_info` VALUES (18, 4, '戴宇宁', 14, '解忧杂货店', '2012-05-01 15:39:30', '2023-04-22 13:08:08', 1, '2012-11-21 15:39:22', '2023-04-22 13:08:08');
INSERT INTO `reserve_info` VALUES (19, 22, '陌染', 17, '求翁23', '2011-12-11 12:16:17', '2023-04-22 13:08:05', 1, '2021-10-27 18:20:16', '2023-04-22 13:08:05');
INSERT INTO `reserve_info` VALUES (20, 7, '杜宇宁', 42, '23', '2002-04-19 06:24:58', '2023-04-22 13:08:06', 1, '2020-08-04 07:18:37', '2023-04-22 13:08:06');
INSERT INTO `reserve_info` VALUES (21, 44, '555445', 53, '13', '2023-04-21 19:10:27', '2023-04-22 13:08:06', 1, '2023-04-21 19:10:27', '2023-04-22 13:08:06');
INSERT INTO `reserve_info` VALUES (22, 2, '王安琪', 13, '围城', '2023-04-22 13:16:06', '2023-04-22 13:19:25', 1, '2023-04-22 13:16:06', '2023-04-22 13:19:25');
INSERT INTO `reserve_info` VALUES (23, 2, '王安琪', 14, '解忧杂货店', '2023-04-22 13:20:19', '2023-04-22 20:17:40', 1, '2023-04-22 13:20:19', '2023-04-22 20:17:40');
INSERT INTO `reserve_info` VALUES (32, 23, '45', 1, '红楼梦', '2023-04-26 11:18:59', '2023-04-26 11:18:59', 1, '2023-04-04 20:42:45', '2023-04-26 11:18:59');
INSERT INTO `reserve_info` VALUES (33, 23, '45', 31, '2e1', '2023-04-22 20:42:53', NULL, 0, '2023-04-27 20:42:49', '2023-04-22 20:42:53');
INSERT INTO `reserve_info` VALUES (34, 23, '45', 31, '2e1', '2023-04-22 20:44:43', NULL, 0, '2023-04-22 20:44:43', '2023-04-22 20:44:43');
INSERT INTO `reserve_info` VALUES (35, 23, '45', 4, '三国演义', '2023-04-22 20:51:09', NULL, 0, '2023-04-22 20:51:09', '2023-04-22 20:51:09');
INSERT INTO `reserve_info` VALUES (36, 23, '45', 3, '水浒传', '2023-04-22 20:55:33', NULL, 0, '2023-04-22 20:55:33', '2023-04-22 20:55:33');
INSERT INTO `reserve_info` VALUES (37, 23, '45', 3, '水浒传', '2023-05-15 12:29:24', '2023-05-15 12:29:24', 1, '2023-04-22 20:55:35', '2023-05-15 12:29:24');
INSERT INTO `reserve_info` VALUES (38, 23, '45', 1, '红楼梦', '2023-04-22 20:55:51', NULL, 0, '2023-04-22 20:55:51', '2023-04-22 20:55:51');
INSERT INTO `reserve_info` VALUES (39, 23, '45', 1, '红楼梦', '2023-04-22 20:56:52', '2023-04-22 20:56:52', 1, '2023-04-22 20:55:51', '2023-04-22 20:56:52');
INSERT INTO `reserve_info` VALUES (40, 26, '123', 5, '时间简史', '2023-04-23 21:58:33', NULL, 0, '2023-04-23 21:58:33', '2023-04-23 21:58:33');
INSERT INTO `reserve_info` VALUES (41, 26, '123', 53, '13', '2023-04-26 00:51:50', NULL, 0, '2023-04-26 00:51:50', '2023-04-26 00:51:50');
INSERT INTO `reserve_info` VALUES (42, 26, '123', 9, '哈利·波特与魔法石', '2023-04-26 02:03:39', '2023-04-26 02:03:39', 1, '2023-04-26 02:03:17', '2023-04-26 02:03:39');
INSERT INTO `reserve_info` VALUES (43, 26, '123', 21, 'qw3erq', '2023-05-15 12:52:15', NULL, 0, '2023-05-15 12:52:15', '2023-05-15 12:52:15');
INSERT INTO `reserve_info` VALUES (44, 26, '123', 11, '钢铁是怎样炼成的', '2023-05-15 12:59:22', NULL, 0, '2023-05-15 12:59:22', '2023-05-15 12:59:22');
INSERT INTO `reserve_info` VALUES (45, 26, '123', 11, '钢铁是怎样炼成的', '2023-05-15 13:11:32', NULL, 0, '2023-05-15 13:11:32', '2023-05-15 13:11:32');

-- ----------------------------
-- Table structure for statistics_info
-- ----------------------------
DROP TABLE IF EXISTS `statistics_info`;
CREATE TABLE `statistics_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '统计ID',
  `book_id` int NULL DEFAULT NULL COMMENT '书籍ID',
  `book_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名称',
  `book_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍类型',
  `borrow_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '借阅次数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_title`(`book_title` ASC, `book_type` ASC) USING BTREE,
  CONSTRAINT `statistics_info_ibfk_1` FOREIGN KEY (`book_title`, `book_type`) REFERENCES `book_info` (`title`, `category`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '统计数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statistics_info
-- ----------------------------
INSERT INTO `statistics_info` VALUES (1, NULL, '时间简史', '冒险小说', 3);
INSERT INTO `statistics_info` VALUES (2, NULL, '哈利·波特与魔法石', '经济管理学', 901);
INSERT INTO `statistics_info` VALUES (3, NULL, '2313', '传记文学', 40);
INSERT INTO `statistics_info` VALUES (4, NULL, '求翁23', '科学技术史', 684);
INSERT INTO `statistics_info` VALUES (5, NULL, '2345', '传记回忆录', 145);
INSERT INTO `statistics_info` VALUES (6, NULL, '小王子', '政治军事学', 669);
INSERT INTO `statistics_info` VALUES (7, NULL, '平凡的世界', '经济管理学', 948);
INSERT INTO `statistics_info` VALUES (8, NULL, '人性的弱点', '科学技术史', 405);
INSERT INTO `statistics_info` VALUES (9, NULL, '时间简史', '冒险小说', 537);
INSERT INTO `statistics_info` VALUES (10, NULL, '围城', '传记文学', 79);
INSERT INTO `statistics_info` VALUES (11, NULL, '解忧杂货店', '科学技术史', 260);
INSERT INTO `statistics_info` VALUES (12, NULL, '围城', '传记文学', 8);
INSERT INTO `statistics_info` VALUES (13, NULL, 'qw3erq', '自然科学', 840);
INSERT INTO `statistics_info` VALUES (14, NULL, '确认确认', '自然科学', 306);
INSERT INTO `statistics_info` VALUES (15, NULL, '2313', '传记文学', 279);
INSERT INTO `statistics_info` VALUES (16, NULL, 'qwe', '推理小说', 108);
INSERT INTO `statistics_info` VALUES (17, NULL, '2313', '传记文学', 62);
INSERT INTO `statistics_info` VALUES (18, NULL, '23', '传记文学', 130);
INSERT INTO `statistics_info` VALUES (19, NULL, '2345', '传记回忆录', 384);
INSERT INTO `statistics_info` VALUES (20, NULL, '平凡的世界', '经济管理学', 623);
INSERT INTO `statistics_info` VALUES (21, NULL, '钢铁是怎样炼成的', '社会心理学', 259);
INSERT INTO `statistics_info` VALUES (22, 61, '的方式访问乳房伟人风范', '三个人刚刚未通过', 2);

-- ----------------------------
-- Table structure for system_setting
-- ----------------------------
DROP TABLE IF EXISTS `system_setting`;
CREATE TABLE `system_setting`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '设置ID',
  `setting_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设置名称',
  `setting_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设置值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_setting
-- ----------------------------
INSERT INTO `system_setting` VALUES (1, '每日处罚金额', '3');
INSERT INTO `system_setting` VALUES (2, 'Hou Rui', 'Success consists of going               ');
INSERT INTO `system_setting` VALUES (3, 'Fang Jiehong', 'Navicat 15 has added                    ');
INSERT INTO `system_setting` VALUES (4, 'Herbert Owens', 'To open a query using                   ');
INSERT INTO `system_setting` VALUES (5, 'Tang Zhennan', 'All the Navicat Cloud                   ');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系方式',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `admin_id` int NULL DEFAULT NULL COMMENT '管理员标识符',
  PRIMARY KEY (`id`, `phone`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE,
  INDEX `id_2`(`id` ASC, `username` ASC) USING BTREE,
  INDEX `admin_id`(`admin_id` ASC) USING BTREE,
  INDEX `username`(`username` ASC) USING BTREE,
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_info` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '赵晓明', 'Wz99vNCZ6f', '14568885463', 'zhaoxiao@qq.com', '2019-04-11 19:49:10', '2023-03-28 13:34:11', NULL);
INSERT INTO `user_info` VALUES (2, '王安琪', 'FeN9U27cNW', '13526857194', 'anqiw@outlook.com', '2019-10-18 09:48:37', '2022-10-16 07:17:54', NULL);
INSERT INTO `user_info` VALUES (3, '蔡云熙', 'K4pfrMLL2A', '19096852510', 'yunxi607@gmail.com', '2017-12-06 17:33:38', '2022-09-02 08:20:28', NULL);
INSERT INTO `user_info` VALUES (4, '戴宇宁', 'Ok1DvVjmsl', '17093795149', 'dai90@gmail.com', '2019-05-31 18:19:16', '2022-08-12 14:53:35', NULL);
INSERT INTO `user_info` VALUES (5, '唐嘉伦', 'lbgT6V8heX', '15992587177', 'tangjia2@gmail.com', '2018-11-28 19:05:22', '2023-01-25 17:21:04', NULL);
INSERT INTO `user_info` VALUES (6, '郭詩涵', 'wrPjq5mfQC', '18602086296', 'sguo@mail.com', '2018-10-09 09:56:02', '2022-10-30 16:39:27', NULL);
INSERT INTO `user_info` VALUES (7, '杜宇宁', '2ffXGR1FFp', '15880980601', 'yuningd@outlook.com', '2019-03-24 18:37:57', '2022-08-28 09:40:52', NULL);
INSERT INTO `user_info` VALUES (8, '周璐', 'omAYyLS07L', '14086371421', 'zhoulu827@icloud.com', '2019-04-08 01:27:39', '2023-01-24 21:55:41', NULL);
INSERT INTO `user_info` VALUES (9, '杜璐', 'VJjbbGV8Co', '16629919318', 'ludu@gmail.com', '2019-06-24 09:06:41', '2022-08-15 16:19:58', NULL);
INSERT INTO `user_info` VALUES (10, '邹睿', 'NYPocKkmC6', '16660853063', 'zou42@icloud.com', '2018-07-13 07:34:08', '2023-01-08 23:28:45', NULL);
INSERT INTO `user_info` VALUES (11, '王睿', 'RdZyfiwGKF', '13843731258', 'ruiwang46@gmail.com', '2019-04-30 10:09:46', '2022-10-30 08:27:15', NULL);
INSERT INTO `user_info` VALUES (12, '马安琪', '7uRyn8Onqd', '17435305856', 'anqima@outlook.com', '2017-12-07 20:52:35', '2022-12-12 06:59:54', NULL);
INSERT INTO `user_info` VALUES (13, '阎睿', 'zF4OlilEGk', '16516634738', 'yarui@outlook.com', '2018-03-06 01:38:51', '2022-11-21 21:42:13', NULL);
INSERT INTO `user_info` VALUES (14, '余致远', '2Ofsj6xebq', '18247298576', 'yu10@gmail.com', '2019-10-12 06:56:56', '2022-07-02 06:56:33', NULL);
INSERT INTO `user_info` VALUES (15, '戴秀英', 'YPl0nUcaqJ', '14690339021', 'daixiuyi3@gmail.com', '2019-01-08 12:45:49', '2022-09-30 06:15:26', NULL);
INSERT INTO `user_info` VALUES (16, '董致远', 'Ct1Mc54Obd', '14795045184', 'zdong@yahoo.com', '2018-12-08 15:10:20', '2023-03-13 14:30:05', NULL);
INSERT INTO `user_info` VALUES (17, '卢云熙', 'VsAKi78y9M', '14805877957', 'lyunxi63@icloud.com', '2017-12-17 17:30:45', '2023-02-05 21:55:54', NULL);
INSERT INTO `user_info` VALUES (18, '徐晓明', '2Zdm3z5Xvo', '19102343342', 'xxiaoming@hotmail.com', '2017-09-30 16:15:37', '2023-02-21 08:17:20', NULL);
INSERT INTO `user_info` VALUES (19, '魏子韬', '42zNCNSC1C', '17855056857', 'zitawe@icloud.com', '2018-01-28 00:55:35', '2022-07-21 20:38:31', NULL);
INSERT INTO `user_info` VALUES (20, '贾璐', 'A4ZHPe4AF', '17450966811', 'jilu@yahoo.com', '2018-01-29 12:33:42', '2023-03-28 11:59:00', NULL);
INSERT INTO `user_info` VALUES (22, '陌染', '12', '123456', '123@qq.com', '2023-03-28 16:23:29', '2023-04-20 14:18:54', 1000);
INSERT INTO `user_info` VALUES (23, '45', '545', '123', '123', '2023-03-28 16:27:08', '2023-04-20 14:18:56', 1000);
INSERT INTO `user_info` VALUES (24, '咋还能三', 'Wz99vNCZ6f', '15829591809', '3422324357@qq.com', '2023-03-28 18:25:44', '2023-04-20 14:18:59', 1000);
INSERT INTO `user_info` VALUES (25, '框架', '123', '15829591809', '3422324357@qq.com', '2023-03-28 18:25:44', '2023-05-15 13:55:29', 1000);
INSERT INTO `user_info` VALUES (26, '123', '123456', '17766699996', '123@123.com', '2023-04-04 18:07:35', '2023-04-20 14:19:05', 1000);
INSERT INTO `user_info` VALUES (27, 'li904', '1XTVscPC7k', '17612992360', NULL, '2023-04-20 18:18:39', '2023-04-20 18:19:22', 1000);
INSERT INTO `user_info` VALUES (38, '45656', 'asdfasf', '234123 ', NULL, '2023-04-20 20:48:17', '2023-04-20 20:48:17', NULL);
INSERT INTO `user_info` VALUES (39, '45656', 'Wz99vNCZ6f', '14568885463', NULL, '2023-04-20 23:57:39', '2023-04-20 23:57:39', NULL);
INSERT INTO `user_info` VALUES (40, 'mo\'ramoran', '1XTVscPC7k', 'li904', NULL, '2023-04-20 23:58:01', '2023-04-20 23:58:01', NULL);
INSERT INTO `user_info` VALUES (41, '14568885463', '1XTVscPC7k', 'li904', NULL, '2023-04-20 23:59:37', '2023-04-20 23:59:37', NULL);
INSERT INTO `user_info` VALUES (42, '213', '1XTVscPC7k', 'li904', NULL, '2023-04-21 00:00:47', '2023-04-21 00:00:47', NULL);
INSERT INTO `user_info` VALUES (43, '213', '1XTVscPC7k', 'li904', NULL, '2023-04-21 00:02:04', '2023-04-21 00:02:04', 1000);
INSERT INTO `user_info` VALUES (44, '555445', '1XTVscPC7k', 'li904', NULL, '2023-04-21 11:17:29', '2023-04-21 11:17:29', 1000);
INSERT INTO `user_info` VALUES (45, '刘强风', ' ', ' ', NULL, '2023-05-15 13:14:47', '2023-05-15 13:14:47', 1000);
INSERT INTO `user_info` VALUES (46, '刘强风', '', '', NULL, '2023-05-15 13:15:08', '2023-05-15 13:15:08', 1000);
INSERT INTO `user_info` VALUES (47, '刘强风', '', '', NULL, '2023-05-15 13:15:12', '2023-05-15 13:15:12', 1000);
INSERT INTO `user_info` VALUES (48, '刘强风', '', '', NULL, '2023-05-15 13:15:12', '2023-05-15 13:15:12', 1000);
INSERT INTO `user_info` VALUES (49, '刘强风', '', '', NULL, '2023-05-15 13:15:12', '2023-05-15 13:15:12', 1000);
INSERT INTO `user_info` VALUES (50, '刘强风', '', '', NULL, '2023-05-15 13:15:12', '2023-05-15 13:15:12', 1000);
INSERT INTO `user_info` VALUES (51, '刘强风', '', '', NULL, '2023-05-15 13:15:12', '2023-05-15 13:15:12', 1000);
INSERT INTO `user_info` VALUES (52, '刘强风', '', '', NULL, '2023-05-15 13:15:29', '2023-05-15 13:15:29', 1000);

-- ----------------------------
-- Event structure for check_borrow_info
-- ----------------------------
DROP EVENT IF EXISTS `check_borrow_info`;
delimiter ;;
CREATE EVENT `check_borrow_info`
ON SCHEDULE
EVERY '2' MINUTE STARTS '2023-04-24 17:22:20'
DO BEGIN

    DECLARE done INT DEFAULT FALSE;
    DECLARE bor_id, usr_id, bk_id INT;
    DECLARE due_date, return_date TIMESTAMP;
    DECLARE fine DECIMAL(10,2);
		DECLARE fine_rate DECIMAL(10,2);

		
    DECLARE fine_cursor CURSOR FOR 
--         SELECT id, user_id, book_id, due_time, return_time FROM borrow_info WHERE status = 0;
					SELECT id, user_id, book_id, due_time, return_time FROM borrow_info WHERE status IN (0, 1) AND (return_time > due_time OR (return_time IS NULL AND NOW() > due_time));

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN fine_cursor;
    
    read_loop: LOOP
        FETCH fine_cursor INTO bor_id, usr_id, bk_id, due_date, return_date;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
				SELECT setting_value INTO fine_rate FROM system_setting WHERE id = 1;
				
        IF return_date IS NOT NULL AND return_date > due_date THEN
            SET fine = TIMESTAMPDIFF(DAY, due_date, return_date) * fine_rate;
        ELSEIF return_date IS NULL AND CURRENT_TIMESTAMP > due_date THEN
            SET fine = TIMESTAMPDIFF(DAY, due_date, CURRENT_TIMESTAMP) * fine_rate;
        ELSE
            SET fine = 0;
        END IF;
        
        /* 使用 borrow_id 判断是否存在重复记录 */
        IF EXISTS (SELECT 1 FROM Fine_info WHERE borrow_id = bor_id AND status = 1) THEN
            UPDATE Fine_info SET fine_amount = fine, fine_time = CURRENT_TIMESTAMP, status = 1 
            WHERE borrow_id = bor_id AND status = 1;
        ELSE
            INSERT INTO Fine_info (borrow_id, user_id, book_id, fine_amount, fine_time, status)
            VALUES (bor_id, usr_id, bk_id, fine, CURRENT_TIMESTAMP, 1);
        END IF;
        
    END LOOP;

    CLOSE fine_cursor;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table book_info
-- ----------------------------
DROP TRIGGER IF EXISTS `add_new_statistice_info`;
delimiter ;;
CREATE TRIGGER `add_new_statistice_info` AFTER INSERT ON `book_info` FOR EACH ROW BEGIN
    IF NEW.quantity = 0 THEN
        UPDATE books SET status = 1 WHERE id = NEW.id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table book_info
-- ----------------------------
DROP TRIGGER IF EXISTS `book_status_trigger`;
delimiter ;;
CREATE TRIGGER `book_status_trigger` BEFORE UPDATE ON `book_info` FOR EACH ROW BEGIN
    IF NEW.quantity = 0 THEN
        SET NEW.status = 0;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table borrow_info
-- ----------------------------
DROP TRIGGER IF EXISTS `SET_due_time`;
delimiter ;;
CREATE TRIGGER `SET_due_time` BEFORE INSERT ON `borrow_info` FOR EACH ROW BEGIN
  SET NEW.due_time = DATE_ADD(NEW.borrow_time, INTERVAL 1 MONTH);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table borrow_info
-- ----------------------------
DROP TRIGGER IF EXISTS `borrow_info_user_id_trigger`;
delimiter ;;
CREATE TRIGGER `borrow_info_user_id_trigger` BEFORE INSERT ON `borrow_info` FOR EACH ROW BEGIN
   IF NEW.user_id IS NULL AND NEW.user_name IS NOT NULL THEN
        SET NEW.user_id = (
            SELECT id FROM user_info WHERE username = NEW.user_name
        );
    END IF;
    IF NEW.user_name IS NULL AND NEW.user_id IS NOT NULL THEN
        SET NEW.user_name = (
            SELECT username FROM user_info WHERE id = NEW.user_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table borrow_info
-- ----------------------------
DROP TRIGGER IF EXISTS `borrow_info_book_id_trigger`;
delimiter ;;
CREATE TRIGGER `borrow_info_book_id_trigger` BEFORE INSERT ON `borrow_info` FOR EACH ROW BEGIN
   IF NEW.book_id IS NULL AND NEW.book_title IS NOT NULL THEN
        SET NEW.book_id = (
            SELECT id FROM book_info WHERE title = NEW.book_title
        );
    END IF;
    IF NEW.book_title IS NULL AND NEW.book_id IS NOT NULL THEN
        SET NEW.book_title = (
            SELECT title FROM book_info WHERE id = NEW.book_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table borrow_info
-- ----------------------------
DROP TRIGGER IF EXISTS `return_book_trigger`;
delimiter ;;
CREATE TRIGGER `return_book_trigger` AFTER UPDATE ON `borrow_info` FOR EACH ROW BEGIN
  IF NEW.status = 1 AND OLD.status <> NEW.status THEN
    UPDATE book_info
    SET quantity = quantity + 1
    WHERE id = NEW.book_id;


  END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table borrow_info
-- ----------------------------
DROP TRIGGER IF EXISTS `borrow_book_trigger`;
delimiter ;;
CREATE TRIGGER `borrow_book_trigger` AFTER INSERT ON `borrow_info` FOR EACH ROW BEGIN
  UPDATE book_info
  SET quantity = quantity - 1
  WHERE id = NEW.book_id;
	
	UPDATE statistics_info
  SET borrow_count = borrow_count + 1
  WHERE book_id = NEW.book_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_info
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_info_user_id_trigger`;
delimiter ;;
CREATE TRIGGER `comment_info_user_id_trigger` BEFORE INSERT ON `comment_info` FOR EACH ROW BEGIN
   IF NEW.user_id IS NULL AND NEW.user_name IS NOT NULL THEN
        SET NEW.user_id = (
            SELECT id FROM user_info WHERE username = NEW.user_name
        );
    END IF;
    IF NEW.user_name IS NULL AND NEW.user_id IS NOT NULL THEN
        SET NEW.user_name = (
            SELECT username FROM user_info WHERE id = NEW.user_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_info
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_info_book_id_trigger`;
delimiter ;;
CREATE TRIGGER `comment_info_book_id_trigger` BEFORE INSERT ON `comment_info` FOR EACH ROW BEGIN
   IF NEW.book_id IS NULL AND NEW.book_title IS NOT NULL THEN
        SET NEW.book_id = (
            SELECT id FROM book_info WHERE title = NEW.book_title
        );
    END IF;
    IF NEW.book_title IS NULL AND NEW.book_id IS NOT NULL THEN
        SET NEW.book_title = (
            SELECT title FROM book_info WHERE id = NEW.book_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table fine_info
-- ----------------------------
DROP TRIGGER IF EXISTS `fine_info_user_id_trigger`;
delimiter ;;
CREATE TRIGGER `fine_info_user_id_trigger` BEFORE INSERT ON `fine_info` FOR EACH ROW BEGIN
   IF NEW.user_id IS NULL AND NEW.user_name IS NOT NULL THEN
        SET NEW.user_id = (
            SELECT id FROM user_info WHERE username = NEW.user_name
        );
    END IF;
    IF NEW.user_name IS NULL AND NEW.user_id IS NOT NULL THEN
        SET NEW.user_name = (
            SELECT username FROM user_info WHERE id = NEW.user_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table fine_info
-- ----------------------------
DROP TRIGGER IF EXISTS `fine_info_book_id_trigger`;
delimiter ;;
CREATE TRIGGER `fine_info_book_id_trigger` BEFORE INSERT ON `fine_info` FOR EACH ROW BEGIN
   IF NEW.book_id IS NULL AND NEW.book_title IS NOT NULL THEN
        SET NEW.book_id = (
            SELECT id FROM book_info WHERE title = NEW.book_title
        );
    END IF;
    IF NEW.book_title IS NULL AND NEW.book_id IS NOT NULL THEN
        SET NEW.book_title = (
            SELECT title FROM book_info WHERE id = NEW.book_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table renewal_info
-- ----------------------------
DROP TRIGGER IF EXISTS `renewal_info_book_id_trigger`;
delimiter ;;
CREATE TRIGGER `renewal_info_book_id_trigger` BEFORE INSERT ON `renewal_info` FOR EACH ROW BEGIN
   IF NEW.reserve_id IS NULL AND NEW.book_title IS NOT NULL THEN
        SET NEW.reserve_id = (
            SELECT id FROM borrow_info WHERE title = NEW.book_title
        );
    END IF;
    IF NEW.book_title IS NULL AND NEW.reserve_id IS NOT NULL THEN
        SET NEW.book_title = (
            SELECT book_title FROM borrow_info WHERE id = NEW.reserve_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table renewal_info
-- ----------------------------
DROP TRIGGER IF EXISTS `update_due_time`;
delimiter ;;
CREATE TRIGGER `update_due_time` AFTER UPDATE ON `renewal_info` FOR EACH ROW BEGIN
    IF NEW.status = 2 AND OLD.status != 2 THEN
        UPDATE borrow_info SET due_time = DATE_ADD(borrow_time, INTERVAL 2 MONTH) WHERE id = NEW.reserve_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table renewal_info
-- ----------------------------
DROP TRIGGER IF EXISTS `renewal_info_user_id_trigger`;
delimiter ;;
CREATE TRIGGER `renewal_info_user_id_trigger` BEFORE INSERT ON `renewal_info` FOR EACH ROW BEGIN
   IF NEW.user_id IS NULL AND NEW.user_name IS NOT NULL THEN
        SET NEW.user_id = (
            SELECT id FROM user_info WHERE username = NEW.user_name
        );
    END IF;
    IF NEW.user_name IS NULL AND NEW.user_id IS NOT NULL THEN
        SET NEW.user_name = (
            SELECT username FROM user_info WHERE id = NEW.user_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table reserve_info
-- ----------------------------
DROP TRIGGER IF EXISTS `reserve_info_book_id_trigger`;
delimiter ;;
CREATE TRIGGER `reserve_info_book_id_trigger` BEFORE INSERT ON `reserve_info` FOR EACH ROW BEGIN
   IF NEW.book_id IS NULL AND NEW.book_title IS NOT NULL THEN
        SET NEW.book_id = (
            SELECT id FROM book_info WHERE title = NEW.book_title
        );
    END IF;
    IF NEW.book_title IS NULL AND NEW.book_id IS NOT NULL THEN
        SET NEW.book_title = (
            SELECT title FROM book_info WHERE id = NEW.book_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table reserve_info
-- ----------------------------
DROP TRIGGER IF EXISTS `reserve_info_user_id_trigger`;
delimiter ;;
CREATE TRIGGER `reserve_info_user_id_trigger` BEFORE INSERT ON `reserve_info` FOR EACH ROW BEGIN
   IF NEW.user_id IS NULL AND NEW.user_name IS NOT NULL THEN
        SET NEW.user_id = (
            SELECT id FROM user_info WHERE username = NEW.user_name
        );
    END IF;
    IF NEW.user_name IS NULL AND NEW.user_id IS NOT NULL THEN
        SET NEW.user_name = (
            SELECT username FROM user_info WHERE id = NEW.user_id
        );
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table reserve_info
-- ----------------------------
DROP TRIGGER IF EXISTS `add_borrow_time_trigger`;
delimiter ;;
CREATE TRIGGER `add_borrow_time_trigger` BEFORE UPDATE ON `reserve_info` FOR EACH ROW BEGIN
    IF NEW.status <> OLD.status AND NEW.status = 1 THEN
        SET NEW.borrow_time = CURRENT_TIMESTAMP;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table reserve_info
-- ----------------------------
DROP TRIGGER IF EXISTS `add_borrow_info_trigger`;
delimiter ;;
CREATE TRIGGER `add_borrow_info_trigger` AFTER UPDATE ON `reserve_info` FOR EACH ROW BEGIN
  IF NEW.status = 1 AND OLD.status <> NEW.status THEN
    INSERT INTO borrow_info (user_id, book_id, borrow_time, due_time)
    VALUES (NEW.user_id, NEW.book_id, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY));
  END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

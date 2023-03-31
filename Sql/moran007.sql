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

 Date: 27/03/2023 22:38:40
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1000, 'li904', '1XTVscPC7k', '李安琪', '16641981847');
INSERT INTO `admin_info` VALUES (1001, 'jianqi', 'mAzVxNrV6h', '贾安琪', '15840961518');
INSERT INTO `admin_info` VALUES (1002, 'tao2', 'q1qzKlUVms', '陶睿', '18905578976');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图书信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '红楼梦', '曹雪芹', '人民文学出版社', '9787020000885', '古典文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (2, '西游记', '吴承恩', '人民文学出版社', '9787020005590', '古典文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (3, '水浒传', '施耐庵', '人民文学出版社', '9787020000878', '古典文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (4, '三国演义', '罗贯中', '人民文学出版社', '9787020000861', '古典文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (5, '时间简史', '史蒂芬·霍金', '湖南科学技术出版社', '9787535732300', '科普读物', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (6, '金字塔原理', '芭芭拉·明托', '机械工业出版社', '9787111189467', '管理学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (7, '人性的弱点', '戴尔·卡内基', '中国青年出版社', '9787500620280', '心理学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (8, '影响力', '罗伯特·西奥迪尼', '中国青年出版社', '9787500683889', '心理学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (9, '哈利·波特与魔法石', 'J.K.罗琳', '人民文学出版社', '9787020033432', '儿童文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (10, '小王子', '圣·埃克苏佩里', '人民文学出版社', '9787020001394', '儿童文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (11, '钢铁是怎样炼成的', '奥斯特洛夫斯基', '人民文学出版社', '9787020001417', '青春文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (12, '平凡的世界', '路遥', '人民文学出版社', '9787020001813', '现代文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (13, '围城', '钱钟书', '人民文学出版社', '9787020004722', '现代文学', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (14, '解忧杂货店', '东野圭吾', '南海出版公司', '9787544247558', '推理小说', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (15, '三体', '刘慈欣', '重庆出版社', '9787229030932', '科幻小说', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');
INSERT INTO `book_info` VALUES (16, '活着', '余华', '作家出版社', '9787506365437', '小说', 1, '2023-03-27 20:52:03', '2023-03-27 20:52:03');

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
  `return_time` timestamp NULL DEFAULT NULL COMMENT '实际归还时间',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(0:未归还, 1:已归还)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `borrow_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `borrow_info_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_info
-- ----------------------------
INSERT INTO `borrow_info` VALUES (1, 20, 6, '2002-11-14 19:31:36', '2015-10-09 04:27:46', '2007-08-18 18:29:20', 1, '2006-04-11 22:48:31', '2015-10-08 22:36:12');
INSERT INTO `borrow_info` VALUES (2, 8, 15, '2014-03-15 12:55:09', '2006-06-29 23:38:15', '2003-07-20 23:02:25', 1, '2009-08-17 17:35:42', '2009-12-02 16:11:19');
INSERT INTO `borrow_info` VALUES (3, 17, 14, '2008-12-15 23:35:08', '2006-12-08 17:47:24', '2020-07-11 14:39:40', 1, '2004-06-07 07:14:07', '2022-09-18 21:01:44');
INSERT INTO `borrow_info` VALUES (4, 15, 8, '2009-12-14 18:35:28', '2020-03-01 08:14:28', '2003-04-10 09:08:16', 1, '2006-01-14 19:30:30', '2017-03-20 17:43:52');
INSERT INTO `borrow_info` VALUES (5, 1, 2, '2019-07-28 03:34:12', '2010-11-17 17:12:17', '2009-05-25 02:41:50', 1, '2002-10-12 21:15:37', '2018-09-09 20:16:10');

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `rating` int NOT NULL COMMENT '评分',
  `comment_time` datetime NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `comment_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_info_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
INSERT INTO `comment_info` VALUES (1, 4, 13, 'After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. Typically, it is employed as an encrypted version of Telnet. Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models.', 9, '2023-03-06 15:46:31');
INSERT INTO `comment_info` VALUES (2, 4, 11, 'Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way.', 7, '2023-02-08 15:01:21');
INSERT INTO `comment_info` VALUES (3, 11, 2, 'Typically, it is employed as an encrypted version of Telnet. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. SQL Editor allows you to create and edit SQL text, prepare and execute selected queries. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication.', 4, '2023-02-10 04:35:25');
INSERT INTO `comment_info` VALUES (4, 8, 16, 'The Synchronize to Database function will give you a full picture of all database differences. The On Startup feature allows you to control what tabs appear when you launch Navicat. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information. Creativity is intelligence having fun. A comfort zone is a beautiful place, but nothing ever grows there.', 3, '2023-03-14 19:39:14');
INSERT INTO `comment_info` VALUES (5, 12, 3, 'Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way.', 6, '2023-03-11 03:53:55');
INSERT INTO `comment_info` VALUES (6, 11, 9, 'Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms. Typically, it is employed as an encrypted version of Telnet.', 8, '2023-03-02 10:35:37');
INSERT INTO `comment_info` VALUES (7, 13, 2, 'A man’s best friends are his ten fingers. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP. Navicat Data Modeler is a powerful and cost-effective database design                    ', 8, '2023-02-04 11:32:38');
INSERT INTO `comment_info` VALUES (8, 9, 8, 'You must be the change you wish to see in the world. How we spend our days is, of course, how we spend our lives. Secure Sockets Layer(SSL) is a protocol for transmitting private documents via the Internet.', 5, '2023-02-09 06:09:20');
INSERT INTO `comment_info` VALUES (9, 3, 11, 'Genius is an infinite capacity for taking pains. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from. Navicat provides a wide range advanced features, such as compelling code editing capabilities, smart code-completion, SQL formatting, and more.', 6, '2023-02-26 12:28:17');
INSERT INTO `comment_info` VALUES (10, 10, 11, 'After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target. A comfort zone is a beautiful place, but nothing ever grows there. The reason why a great man is great is that he resolves to be a great man. The Main Window consists of several toolbars and panes for you to work on connections, database objects and advanced tools.', 5, '2023-02-15 22:36:20');
INSERT INTO `comment_info` VALUES (11, 19, 9, 'Always keep your eyes open. Keep watching. Because whatever you see can inspire you. How we spend our days is, of course, how we spend our lives. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If it scares you, it might be a good thing to try. The On Startup feature allows you to control what tabs appear when you launch Navicat.', 4, '2023-02-25 00:40:20');
INSERT INTO `comment_info` VALUES (12, 3, 15, 'Anyone who has never made a mistake has never tried anything new. If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. In other words, Navicat provides the ability for data in different databases and/or schemas to be kept up-to-date so that each repository contains the same information.', 8, '2023-02-27 00:11:41');
INSERT INTO `comment_info` VALUES (13, 17, 10, 'All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. A comfort zone is a beautiful place, but nothing ever grows there. A man’s best friends are his ten fingers. Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL,                  ', 2, '2023-02-16 15:17:15');
INSERT INTO `comment_info` VALUES (14, 6, 12, 'Navicat provides powerful tools for working with queries: Query Editor for editing the query text directly, and Query Builder, Find Builder or Aggregate Builder for building queries visually. The first step is as good as half over. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. Instead of wondering when your next vacation is, maybe you should set up a life you don’t need to escape from.', 2, '2023-03-25 12:04:22');
INSERT INTO `comment_info` VALUES (15, 20, 10, 'In a Telnet session, all communications, including username and password, are transmitted in plain-text, allowing anyone to listen-in on your session and steal passwords and other information. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections. To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. SQL Editor allows you to create and edit SQL text, prepare and execute                ', 8, '2023-02-13 10:33:02');
INSERT INTO `comment_info` VALUES (16, 8, 14, 'If the Show objects under schema in navigation pane option is checked at the Preferences window, all database objects are also displayed in the pane. If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.', 9, '2023-03-17 01:09:19');
INSERT INTO `comment_info` VALUES (17, 11, 1, 'It wasn’t raining when Noah built the ark. Sometimes you win, sometimes you learn. Genius is an infinite capacity for taking pains. With its well-designed Graphical User Interface(GUI), Navicat lets you quickly and easily create, organize, access and share information in a secure and easy way. Always keep your eyes open. Keep watching. Because whatever you see can inspire you.', 6, '2023-02-27 19:27:22');
INSERT INTO `comment_info` VALUES (18, 11, 12, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. You must be the change you wish to see in the world.', 3, '2023-03-06 03:25:40');
INSERT INTO `comment_info` VALUES (19, 16, 4, 'Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. It collects process metrics such as CPU load, RAM usage, and a variety of other resources over SSH/SNMP.', 6, '2023-03-11 06:30:02');
INSERT INTO `comment_info` VALUES (20, 14, 1, 'The reason why a great man is great is that he resolves to be a great man. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. If it scares you, it might be a good thing to try. I destroy my enemies when I make them my friends. What you get by achieving your goals is not as important as what you become by achieving your goals.', 1, '2023-02-04 15:47:32');
INSERT INTO `comment_info` VALUES (21, 14, 14, 'Anyone who has never made a mistake has never tried anything new. You will succeed because most people are lazy. If opportunity doesn’t knock, build a door. The repository database can be an existing MySQL, MariaDB, PostgreSQL, SQL Server, or Amazon RDS instance.', 6, '2023-02-14 16:23:23');
INSERT INTO `comment_info` VALUES (22, 3, 12, 'To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. You cannot save people, you can just love them. The past has no power over the present moment. The Information Pane shows the detailed object information, project activities, the DDL of database objects, object dependencies, membership of users/roles and preview. A man is not old until regrets take the place of dreams.                               ', 8, '2023-02-27 05:54:10');
INSERT INTO `comment_info` VALUES (23, 4, 15, 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more. Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. Navicat 15 has added support for the system-wide dark mode.', 1, '2023-02-10 08:33:35');
INSERT INTO `comment_info` VALUES (24, 15, 10, 'I will greet this day with love in my heart. Typically, it is employed as an encrypted version of Telnet. Navicat Monitor is a safe, simple and agentless remote server monitoring tool that is packed with powerful features to make your monitoring effective as possible. Actually it is just in an idea when feel oneself can achieve and cannot achieve.', 3, '2023-03-09 21:59:03');
INSERT INTO `comment_info` VALUES (25, 17, 4, 'You cannot save people, you can just love them. The Synchronize to Database function will give you a full picture of all database differences. Navicat allows you to transfer data from one database and/or schema to another with detailed analytical process. It is used while your ISPs do not allow direct connections, but allows establishing HTTP connections.', 10, '2023-03-02 11:18:08');
INSERT INTO `comment_info` VALUES (26, 3, 1, 'If the plan doesn’t work, change the plan, but never the goal. Navicat Monitor can be installed on any local computer or virtual machine and does not require any software installation on the servers being monitored. Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security.', 7, '2023-03-19 00:53:17');
INSERT INTO `comment_info` VALUES (27, 7, 6, 'All journeys have secret destinations of which the traveler is unaware. A comfort zone is a beautiful place, but nothing ever grows there. If opportunity doesn’t knock, build a door. Anyone who has never made a mistake has never tried anything new. All journeys have secret destinations of which the traveler is unaware.', 1, '2023-02-02 11:17:36');
INSERT INTO `comment_info` VALUES (28, 8, 12, 'The first step is as good as half over. Navicat authorizes you to make connection to remote servers running on different platforms (i.e. Windows, macOS, Linux and UNIX), and supports PAM and GSSAPI authentication. Success consists of going from failure to failure without loss of enthusiasm. A query is used to extract data from the database in a readable format according to the user\'s request. In a Telnet session, all communications, including username and password, are transmitted               ', 6, '2023-03-13 02:09:40');
INSERT INTO `comment_info` VALUES (29, 3, 8, 'I will greet this day with love in my heart. If it scares you, it might be a good thing to try. To successfully establish a new connection to local/remote server - no matter via SSL or SSH, set the database login information in the General tab. Navicat Cloud provides a cloud service for synchronizing connections, queries, model files and virtual group information from Navicat, other Navicat family members, different machines and different platforms.', 7, '2023-03-09 04:34:52');
INSERT INTO `comment_info` VALUES (30, 1, 7, 'Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models.', 8, '2023-03-04 00:19:00');

-- ----------------------------
-- Table structure for fine_info
-- ----------------------------
DROP TABLE IF EXISTS `fine_info`;
CREATE TABLE `fine_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '罚款ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `fine_amount` decimal(10, 2) NOT NULL COMMENT '罚款金额',
  `fine_time` datetime NOT NULL COMMENT '罚款时间',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：1-未缴纳，2-已缴纳',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `fine_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fine_info_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fine_info
-- ----------------------------
INSERT INTO `fine_info` VALUES (1, 8, 8, 151.15, '2003-12-10 18:27:02', 2);
INSERT INTO `fine_info` VALUES (2, 2, 8, 548.61, '2003-02-09 00:03:31', 2);
INSERT INTO `fine_info` VALUES (3, 5, 2, 81.87, '2021-03-22 23:38:57', 1);

-- ----------------------------
-- Table structure for renewal_info
-- ----------------------------
DROP TABLE IF EXISTS `renewal_info`;
CREATE TABLE `renewal_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '续借ID',
  `reserve_id` int UNSIGNED NOT NULL COMMENT '预约ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `renewal_time` datetime NOT NULL COMMENT '续借时间',
  `admin_id` int NOT NULL COMMENT '审核管理员ID',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态：1-待审核，2-已通过，3-已拒绝',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reserve_id`(`reserve_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `admin_id`(`admin_id` ASC) USING BTREE,
  CONSTRAINT `renewal_info_ibfk_1` FOREIGN KEY (`reserve_id`) REFERENCES `reserve_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `renewal_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `renewal_info_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '续借信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renewal_info
-- ----------------------------
INSERT INTO `renewal_info` VALUES (1, 10, 2, '2007-07-11 02:26:54', 1001, 2, 'Navicat is a multi-connections Database Administration tool allowing you to connect to MySQL, Oracle, PostgreSQL, SQLite, SQL Server, MariaDB and/or MongoDB databases, making database administration to multiple kinds of database so easy.');
INSERT INTO `renewal_info` VALUES (2, 2, 5, '2012-02-26 23:23:34', 1001, 3, 'You must be the change you wish to see in the world. A man’s best friends are his ten fingers. A man’s best friends are his ten fingers. The past has no power over the present moment.');
INSERT INTO `renewal_info` VALUES (3, 9, 19, '2007-08-07 07:28:05', 1000, 1, 'It wasn’t raining when Noah built the ark. Sometimes you win, sometimes you learn. After comparing data, the window shows the number of records that will be inserted, updated or deleted in the target.');
INSERT INTO `renewal_info` VALUES (4, 9, 19, '2010-01-22 12:00:41', 1000, 2, 'In the middle of winter I at last discovered that there was in me an invincible summer. Navicat 15 has added support for the system-wide dark mode. Navicat Cloud could not connect and access your databases. By which it means, it could only                ');
INSERT INTO `renewal_info` VALUES (5, 3, 6, '2012-01-10 07:35:10', 1001, 1, 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Amazon RDS, Amazon Aurora, Oracle Cloud, Google Cloud and Microsoft Azure. With its well-designed Graphical User Interface(GUI), Navicat lets                ');
INSERT INTO `renewal_info` VALUES (6, 10, 9, '2014-08-22 01:13:12', 1000, 1, 'A man is not old until regrets take the place of dreams. It can also manage cloud databases such as Amazon Redshift, Amazon RDS, Alibaba Cloud. Features in Navicat are sophisticated enough to provide professional developers for all their                  ');
INSERT INTO `renewal_info` VALUES (7, 4, 19, '2016-11-27 02:34:35', 1000, 2, 'All the Navicat Cloud objects are located under different projects. You can share the project to other Navicat Cloud accounts for collaboration. Such sessions are also susceptible to session hijacking, where a malicious user takes over                    ');
INSERT INTO `renewal_info` VALUES (8, 9, 7, '2018-04-06 05:48:54', 1001, 2, 'The Synchronize to Database function will give you a full picture of all database differences. If the plan doesn’t work, change the plan, but never the goal. Success consists of going from failure to failure without loss of enthusiasm.');
INSERT INTO `renewal_info` VALUES (9, 6, 15, '2020-01-21 14:39:00', 1000, 2, 'Navicat Data Modeler is a powerful and cost-effective database design tool which helps you build high-quality conceptual, logical and physical data models. Actually it is just in an idea when feel oneself can achieve and cannot achieve.                   ');
INSERT INTO `renewal_info` VALUES (10, 4, 4, '2014-04-17 18:58:03', 1001, 2, 'If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneling Protocol (SSH) / HTTP is another solution.');

-- ----------------------------
-- Table structure for reserve_info
-- ----------------------------
DROP TABLE IF EXISTS `reserve_info`;
CREATE TABLE `reserve_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '预约ID',
  `user_id` int UNSIGNED NOT NULL COMMENT '用户ID',
  `book_id` int UNSIGNED NOT NULL COMMENT '图书ID',
  `reserve_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约时间',
  `borrow_time` timestamp NULL DEFAULT NULL COMMENT '借阅时间',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态(0:未借阅, 1:已借阅)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `reserve_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reserve_info_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '预约信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reserve_info
-- ----------------------------
INSERT INTO `reserve_info` VALUES (1, 2, 1, '2022-06-17 06:19:48', '2020-11-04 02:00:15', 0, '2022-06-03 00:34:24', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (2, 2, 10, '2020-02-09 10:03:41', '2019-12-15 02:03:35', 0, '2003-01-11 23:19:16', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (3, 10, 14, '2010-02-07 06:15:59', '2018-02-07 21:02:45', 0, '2020-11-24 16:51:22', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (4, 14, 2, '2016-08-12 03:56:53', '2006-09-28 18:02:51', 1, '2003-07-22 11:11:23', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (5, 18, 5, '2017-02-08 15:51:33', '2004-10-17 09:54:11', 0, '2023-02-18 16:20:15', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (6, 17, 12, '2002-02-21 07:15:22', '2019-08-27 16:11:33', 1, '2000-08-16 14:47:17', '2017-05-10 18:09:28');
INSERT INTO `reserve_info` VALUES (7, 7, 2, '2020-05-29 16:25:48', '2013-03-31 12:16:29', 1, '2012-07-05 20:01:20', '2015-11-27 19:46:50');
INSERT INTO `reserve_info` VALUES (8, 18, 1, '2018-05-01 12:02:59', '2013-02-23 06:15:20', 0, '2006-10-02 01:56:33', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (9, 8, 14, '2018-12-29 05:38:52', '2015-08-20 19:14:36', 1, '2010-12-27 11:42:20', '2023-03-27 22:01:15');
INSERT INTO `reserve_info` VALUES (10, 14, 13, '2007-08-05 13:30:58', '2001-10-30 11:41:31', 1, '2015-06-06 19:18:55', '2011-07-05 21:13:38');

-- ----------------------------
-- Table structure for system_setting
-- ----------------------------
DROP TABLE IF EXISTS `system_setting`;
CREATE TABLE `system_setting`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '设置ID',
  `setting_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设置名称',
  `setting_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '设置值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_setting
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '赵晓明', 'Wz99vNCZ6f', '14568885463', 'zhaoxiao@gmail.com', '2019-04-09 19:49:10', '2023-01-28 09:45:40');
INSERT INTO `user_info` VALUES (2, '王安琪', 'FeN9U27cNW', '13526857194', 'anqiw@outlook.com', '2019-10-18 09:48:37', '2022-10-16 07:17:54');
INSERT INTO `user_info` VALUES (3, '蔡云熙', 'K4pfrMLL2A', '19096852510', 'yunxi607@gmail.com', '2017-12-06 17:33:38', '2022-09-02 08:20:28');
INSERT INTO `user_info` VALUES (4, '戴宇宁', 'Ok1DvVjmsl', '17093795149', 'dai90@gmail.com', '2019-05-31 18:19:16', '2022-08-12 14:53:35');
INSERT INTO `user_info` VALUES (5, '唐嘉伦', 'lbgT6V8heX', '15992587177', 'tangjia2@gmail.com', '2018-11-28 19:05:22', '2023-01-25 17:21:04');
INSERT INTO `user_info` VALUES (6, '郭詩涵', 'wrPjq5mfQC', '18602086296', 'sguo@mail.com', '2018-10-09 09:56:02', '2022-10-30 16:39:27');
INSERT INTO `user_info` VALUES (7, '杜宇宁', '2ffXGR1FFp', '15880980601', 'yuningd@outlook.com', '2019-03-24 18:37:57', '2022-08-28 09:40:52');
INSERT INTO `user_info` VALUES (8, '周璐', 'omAYyLS07L', '14086371421', 'zhoulu827@icloud.com', '2019-04-08 01:27:39', '2023-01-24 21:55:41');
INSERT INTO `user_info` VALUES (9, '杜璐', 'VJjbbGV8Co', '16629919318', 'ludu@gmail.com', '2019-06-24 09:06:41', '2022-08-15 16:19:58');
INSERT INTO `user_info` VALUES (10, '邹睿', 'NYPocKkmC6', '16660853063', 'zou42@icloud.com', '2018-07-13 07:34:08', '2023-01-08 23:28:45');
INSERT INTO `user_info` VALUES (11, '王睿', 'RdZyfiwGKF', '13843731258', 'ruiwang46@gmail.com', '2019-04-30 10:09:46', '2022-10-30 08:27:15');
INSERT INTO `user_info` VALUES (12, '马安琪', '7uRyn8Onqd', '17435305856', 'anqima@outlook.com', '2017-12-07 20:52:35', '2022-12-12 06:59:54');
INSERT INTO `user_info` VALUES (13, '阎睿', 'zF4OlilEGk', '16516634738', 'yarui@outlook.com', '2018-03-06 01:38:51', '2022-11-21 21:42:13');
INSERT INTO `user_info` VALUES (14, '余致远', '2Ofsj6xebq', '18247298576', 'yu10@gmail.com', '2019-10-12 06:56:56', '2022-07-02 06:56:33');
INSERT INTO `user_info` VALUES (15, '戴秀英', 'YPl0nUcaqJ', '14690339021', 'daixiuyi3@gmail.com', '2019-01-08 12:45:49', '2022-09-30 06:15:26');
INSERT INTO `user_info` VALUES (16, '董致远', 'Ct1Mc54Obd', '14795045184', 'zdong@yahoo.com', '2018-12-08 15:10:20', '2023-03-13 14:30:05');
INSERT INTO `user_info` VALUES (17, '卢云熙', 'VsAKi78y9M', '14805877957', 'lyunxi63@icloud.com', '2017-12-17 17:30:45', '2023-02-05 21:55:54');
INSERT INTO `user_info` VALUES (18, '徐晓明', '2Zdm3z5Xvo', '19102343342', 'xxiaoming@hotmail.com', '2017-09-30 16:15:37', '2023-02-21 08:17:20');
INSERT INTO `user_info` VALUES (19, '魏子韬', '42zNCNSC1C', '17855056857', 'zitawe@icloud.com', '2018-01-28 00:55:35', '2022-07-21 20:38:31');
INSERT INTO `user_info` VALUES (20, '贾璐', 'A4ZHPe4AFg', '17450966811', 'jilu@yahoo.com', '2018-01-29 12:33:42', '2023-02-04 00:04:48');

SET FOREIGN_KEY_CHECKS = 1;

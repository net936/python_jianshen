/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_jianshen

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 26/06/2024 20:45:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');
INSERT INTO `auth_permission` VALUES (73, 'Can add qicai', 19, 'add_qicai');
INSERT INTO `auth_permission` VALUES (74, 'Can change qicai', 19, 'change_qicai');
INSERT INTO `auth_permission` VALUES (75, 'Can delete qicai', 19, 'delete_qicai');
INSERT INTO `auth_permission` VALUES (76, 'Can view qicai', 19, 'view_qicai');
INSERT INTO `auth_permission` VALUES (77, 'Can add teacher', 20, 'add_teacher');
INSERT INTO `auth_permission` VALUES (78, 'Can change teacher', 20, 'change_teacher');
INSERT INTO `auth_permission` VALUES (79, 'Can delete teacher', 20, 'delete_teacher');
INSERT INTO `auth_permission` VALUES (80, 'Can view teacher', 20, 'view_teacher');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1719388939316.jpeg', 'http://www.baidu.com', '2024-06-26 16:02:23.397498');
INSERT INTO `b_ad` VALUES (2, 'ad/1719388949077.jpeg', 'http://www.baidu.com', '2024-06-26 16:02:32.082539');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '力量类', '2024-06-21 17:29:44.574242');
INSERT INTO `b_classification` VALUES (2, '瑜伽类', '2024-06-21 17:29:49.807749');
INSERT INTO `b_classification` VALUES (3, '塑形类', '2024-06-21 17:29:56.723713');
INSERT INTO `b_classification` VALUES (4, '舞蹈类', '2024-06-21 17:30:10.673590');
INSERT INTO `b_classification` VALUES (5, '有氧类', '2024-06-21 17:30:16.175397');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '1111', '2024-06-26 20:35:32.392038', 0, 14, 4);
INSERT INTO `b_comment` VALUES (2, '22222', '2024-06-26 20:35:33.858091', 0, 14, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/index/thing/detail', 'GET', '对象不存在', '2024-06-26 20:20:23.814507');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/index/thing/detail', 'GET', '对象不存在', '2024-06-26 20:20:26.573751');

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈9999', '哈哈哈哈哈998888', 'tim', '1111w2011@gmail.com', '33381651534', '2024-06-26 16:03:22.135251');
INSERT INTO `b_feedback` VALUES (2, '测试', '223333', '刘三', '1118888@qq.com', NULL, '2024-06-26 16:03:53.605886');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-21 17:28:42.424159');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-26 15:14:49.106345');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-06-26 15:45:46.886031');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-26 20:18:10.730559');
INSERT INTO `b_login_log` VALUES (5, 'eee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-26 20:35:18.042778');
INSERT INTO `b_login_log` VALUES (6, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-26 20:38:50.771547');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'hello', 'hhhhhh', '2024-06-26 16:02:40.294322');
INSERT INTO `b_notice` VALUES (2, '测试通知', '哈哈哈哈哈111111', '2024-06-26 16:02:48.912980');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1473 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-21 17:28:31.591392', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-21 17:28:31.608484', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-21 17:28:31.610478', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-21 17:28:31.843326', '/myapp/index/thing/list', 'GET', NULL, '264');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-21 17:28:34.655210', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-21 17:28:34.658896', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-21 17:28:37.939883', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-21 17:28:42.440755', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-21 17:28:42.542985', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-21 17:28:42.554944', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-21 17:28:44.197103', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-21 17:29:09.268578', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-21 17:29:38.239826', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-21 17:29:44.590064', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-21 17:29:44.627422', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-21 17:29:49.807749', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-21 17:29:49.842313', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-21 17:29:56.737935', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-21 17:29:56.774379', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-21 17:30:10.689734', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-21 17:30:10.726160', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-21 17:30:16.188851', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-21 17:30:16.225130', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-21 17:35:13.707464', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-21 17:35:14.215496', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-21 17:35:14.219630', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-21 17:35:45.728781', '/myapp/admin/thing/create', 'POST', NULL, '278');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-21 17:35:45.772427', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-21 17:35:53.203164', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-21 17:41:06.616766', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-21 17:41:06.623715', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-21 17:41:08.062992', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-21 17:41:09.240315', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-21 17:41:09.744247', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-24 17:27:21.635145', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-24 17:27:21.642122', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-24 17:27:21.644116', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-24 17:27:21.668036', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-24 17:27:21.917968', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '257');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-24 17:27:57.326107', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-24 17:27:57.355005', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-24 17:28:00.039083', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-24 17:28:01.711076', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-24 17:28:05.105550', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-24 17:28:05.753573', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-24 17:28:05.763548', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-24 17:28:07.630452', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-24 17:28:08.342880', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-24 17:28:09.191887', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-24 17:28:10.023249', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-24 17:30:53.705167', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-24 17:30:53.713150', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-24 17:35:15.089943', '/myapp/admin/teacher/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-24 17:35:30.544481', '/myapp/admin/teacher/create', 'POST', NULL, '122');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-24 17:35:30.581802', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-24 17:35:33.130488', '/upload/cover/1719221724792.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-24 17:35:35.656793', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-24 17:35:36.077195', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-24 17:35:39.337702', '/upload/cover/1719221724792.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-24 17:38:24.578673', '/myapp/admin/teacher/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-24 17:38:24.624584', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-24 17:38:37.802137', '/myapp/admin/teacher/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-24 17:38:37.833047', '/myapp/admin/teacher/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-24 17:38:52.253037', '/myapp/admin/teacher/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-24 17:38:52.297895', '/myapp/admin/teacher/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-24 17:38:55.194382', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-24 17:38:57.346003', '/upload/cover/1719221724792.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-24 17:39:01.822945', '/myapp/admin/teacher/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-24 17:39:01.860900', '/myapp/admin/teacher/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-24 17:39:20.880791', '/myapp/admin/teacher/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-24 17:39:20.902893', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-26 15:14:44.619275', '/myapp/admin/adminLogin', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-26 15:14:49.111336', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-26 15:14:49.219905', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-26 15:14:49.222392', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-26 15:14:50.931994', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-26 15:14:58.790686', '/myapp/admin/user/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-26 15:14:58.838748', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-26 15:15:01.351171', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-26 15:15:01.353169', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-26 15:15:03.887285', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-26 15:15:05.469300', '/myapp/admin/teacher/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-26 15:15:06.941991', '/upload/cover/1719221955364.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-26 15:15:09.016011', '/myapp/admin/teacher/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-26 15:15:09.058560', '/myapp/admin/teacher/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-26 15:15:09.970037', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-26 15:15:13.108230', '/myapp/admin/teacher/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-26 15:15:13.162863', '/myapp/admin/teacher/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-26 15:15:15.915230', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-26 15:15:18.505198', '/myapp/admin/teacher/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-26 15:15:18.560490', '/myapp/admin/teacher/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-26 15:15:23.089566', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-26 15:15:25.029027', '/myapp/admin/teacher/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-26 15:15:25.084097', '/myapp/admin/teacher/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-26 15:15:26.446870', '/myapp/admin/teacher/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-26 15:15:28.239354', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-26 15:16:00.759016', '/myapp/admin/teacher/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-26 15:16:01.505904', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-26 15:16:02.151366', '/myapp/admin/teacher/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-26 15:16:17.433999', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-26 15:16:18.502841', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-26 15:16:18.510154', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-26 15:16:21.856300', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-26 15:19:13.258276', '/myapp/admin/teacher/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-26 15:19:13.261743', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-26 15:19:13.266191', '/myapp/admin/teacher/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-26 15:19:14.189415', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-26 15:19:14.714983', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-26 15:19:14.717942', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-26 15:19:14.722697', '/myapp/admin/teacher/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-26 15:20:00.280666', '/myapp/admin/thing/create', 'POST', NULL, '294');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-26 15:20:00.318766', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-26 15:20:02.648974', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-26 15:20:10.182331', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-26 15:20:10.235504', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-26 15:23:05.495556', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-26 15:23:05.502756', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-26 15:23:05.512990', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-26 15:23:05.792353', '/myapp/admin/teacher/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-26 15:23:06.566492', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-26 15:26:28.371034', '/myapp/admin/teacher/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-26 15:26:28.970778', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-26 15:26:30.186321', '/myapp/admin/teacher/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-26 15:26:31.783514', '/myapp/admin/teacher/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-26 15:26:41.089658', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-26 15:27:42.269315', '/myapp/admin/teacher/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-26 15:27:43.343731', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-26 15:27:50.930459', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-26 15:28:22.587349', '/myapp/admin/qicai/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-26 15:28:36.702607', '/myapp/admin/qicai/create', 'POST', NULL, '239');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-26 15:28:36.759047', '/myapp/admin/qicai/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-26 15:29:00.568470', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-26 15:29:02.514791', '/myapp/admin/teacher/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-26 15:29:02.900457', '/myapp/admin/qicai/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-26 15:29:16.492122', '/myapp/admin/qicai/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-26 15:29:18.480131', '/upload/cover/1719386913318.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-26 15:29:21.755475', '/myapp/admin/qicai/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-26 15:29:21.797394', '/myapp/admin/qicai/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-26 15:29:25.047598', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-26 15:29:25.605854', '/myapp/admin/qicai/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-26 15:29:28.327338', '/myapp/admin/teacher/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-26 15:29:28.874049', '/myapp/admin/qicai/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-26 15:29:29.715483', '/myapp/admin/teacher/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-26 15:29:30.794308', '/myapp/admin/qicai/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-26 15:29:31.749504', '/myapp/admin/teacher/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-26 15:29:32.535264', '/myapp/admin/qicai/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-26 15:37:48.855501', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-26 15:37:49.895831', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-26 15:37:49.901372', '/myapp/admin/teacher/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-26 15:37:49.913530', '/myapp/admin/teacher/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-26 15:38:04.488101', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-26 15:38:04.491089', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-26 15:38:04.514023', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-26 15:38:04.533806', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-26 15:38:04.737185', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-26 15:38:19.601355', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-26 15:38:20.068403', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-26 15:38:20.594918', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-26 15:38:21.489873', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-26 15:39:52.757775', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-26 15:39:52.771353', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-26 15:39:52.772349', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-26 15:39:52.773346', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-26 15:40:02.697269', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-26 15:40:02.709070', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-26 15:40:02.712648', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-26 15:40:02.765740', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-26 15:40:11.932070', '/myapp/index/thing/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-26 15:40:12.452971', '/myapp/index/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-26 15:40:13.145252', '/myapp/index/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-26 15:40:13.810548', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-26 15:40:14.224201', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-26 15:40:14.511264', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-26 15:40:44.474448', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-26 15:40:45.061612', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-26 15:41:25.689089', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-26 15:41:27.726581', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-26 15:41:27.731784', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-26 15:41:27.760254', '/myapp/index/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-26 15:41:27.785083', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-26 15:41:27.942613', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-26 15:41:28.290413', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-26 15:41:39.812396', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-26 15:41:42.119899', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-26 15:41:42.154808', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-26 15:41:42.155823', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-26 15:41:43.153611', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-26 15:41:53.790436', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-26 15:41:53.815375', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-26 15:41:53.816408', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-26 15:44:02.131445', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-26 15:44:02.133437', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-26 15:44:02.154697', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-26 15:44:02.161076', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-26 15:44:02.194776', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-26 15:44:02.199133', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-26 15:44:02.199133', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-26 15:44:02.205899', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-26 15:44:02.217553', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-26 15:45:16.019917', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-26 15:45:16.022639', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-26 15:45:16.024744', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-26 15:45:16.060029', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-26 15:45:16.061026', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-26 15:45:16.069010', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-26 15:45:21.337702', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-26 15:45:21.345417', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-26 15:45:21.394257', '/myapp/index/notice/list_api', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-26 15:45:21.405701', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-26 15:45:21.405701', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-26 15:45:26.861843', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-26 15:45:26.870655', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-26 15:45:26.886612', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-26 15:45:29.590003', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-26 15:45:29.592461', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-26 15:45:29.610447', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-26 15:45:29.611449', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-26 15:45:29.632152', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-26 15:45:29.650138', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-26 15:45:34.450597', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-26 15:45:34.451985', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-26 15:45:34.459809', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-26 15:45:34.466408', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-26 15:45:34.471888', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-26 15:45:34.488115', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-26 15:45:35.401884', '/myapp/index/thing/addWishUser', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-26 15:45:35.731468', '/myapp/index/thing/addCollectUser', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-26 15:45:37.438534', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-26 15:45:37.441450', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-26 15:45:37.446293', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-26 15:45:44.149764', '/myapp/index/user/register', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-26 15:45:46.891421', '/myapp/index/user/login', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-26 15:45:47.047891', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-26 15:45:47.069976', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-26 15:45:47.071993', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-26 15:45:47.086080', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-26 15:45:49.317395', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-26 15:45:49.319500', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-26 15:45:49.322125', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-26 15:45:49.323128', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-26 15:45:49.329459', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-26 15:45:49.337073', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-26 15:45:50.404962', '/myapp/index/thing/addWishUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-26 15:45:50.446076', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-26 15:45:50.815744', '/myapp/index/thing/addCollectUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-26 15:45:50.888533', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-26 15:45:52.451781', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-26 15:45:52.453775', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-26 15:45:52.462417', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-26 15:45:52.465418', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-26 15:45:52.489345', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-26 15:45:52.529723', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-26 15:45:53.483249', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-26 15:45:53.920310', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-26 15:46:28.656327', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-26 15:46:30.995961', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-26 15:46:32.726593', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-26 15:46:32.729096', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-26 15:46:32.730554', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-26 15:46:32.731561', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-26 15:46:32.753535', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-26 15:46:32.755895', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-26 15:46:34.250258', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-26 15:46:34.293976', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-26 15:48:29.032230', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-26 15:48:29.033255', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-26 15:48:29.040052', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-26 15:48:29.055672', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-26 15:48:30.583791', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-26 15:48:30.585807', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-26 15:48:30.587811', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-26 15:48:30.591854', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-26 15:48:30.598282', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-26 15:48:30.605473', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-26 15:48:32.573531', '/myapp/index/thing/addWishUser', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-26 15:48:32.630522', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-26 15:48:32.899445', '/myapp/index/thing/addCollectUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-26 15:48:32.964946', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-26 15:48:33.407379', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-26 15:48:33.409373', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-26 15:48:33.412362', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-26 15:48:33.419825', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-26 15:48:33.429139', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-26 15:48:33.433121', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-26 15:48:45.032233', '/myapp/index/order/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-26 15:48:45.139738', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-26 15:48:45.146673', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-26 15:49:14.314473', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-26 15:49:14.320224', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-26 15:49:14.324447', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-26 15:49:14.325585', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-26 15:49:14.326846', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-26 15:49:14.333226', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-26 15:50:02.162677', '/myapp/index/order/cancel_order', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-26 15:50:02.195959', '/myapp/index/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-26 15:50:03.994785', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-26 15:50:03.996761', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-26 15:50:03.999748', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-26 15:50:04.005727', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-26 15:50:04.028671', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-26 15:50:04.029665', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-26 15:50:10.439467', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-26 15:50:10.442697', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-26 15:50:10.461739', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-26 15:50:13.465939', '/myapp/admin/teacher/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-26 15:50:13.469493', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-26 15:50:13.476697', '/myapp/admin/teacher/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-26 15:50:16.644657', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-26 15:50:53.858983', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-26 15:50:55.490329', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-26 15:50:55.859059', '/myapp/admin/order/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-26 15:50:59.384640', '/myapp/admin/order/cancel_order', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-26 15:50:59.432123', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-26 15:51:40.729629', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-26 15:51:40.734156', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-26 15:51:40.740024', '/myapp/admin/teacher/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-26 15:51:41.775104', '/myapp/admin/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-26 15:51:41.898163', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-26 15:51:41.906165', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-26 15:51:41.909932', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-26 15:51:41.952579', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-26 15:51:41.955906', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-26 15:51:41.968137', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-26 15:51:41.969387', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-26 15:51:41.971388', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-26 15:51:41.972900', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-26 15:51:41.977177', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-26 15:52:03.481629', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-26 15:52:03.983680', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-26 15:52:03.984700', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-26 15:52:03.994951', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-26 15:53:32.053006', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-26 15:53:32.057624', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-26 15:53:32.066371', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-26 15:53:33.775003', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-26 15:53:33.779585', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-26 15:53:33.806086', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-26 15:53:33.808115', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-26 15:53:33.809124', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-26 15:53:33.810183', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-26 15:53:38.545156', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-26 15:53:38.546898', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-26 15:53:38.553643', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-26 15:53:47.816844', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-26 15:53:47.821235', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-26 15:53:47.829049', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-26 15:53:47.830130', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-26 15:53:47.839343', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-26 15:53:47.849143', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-26 15:53:57.648652', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-26 15:53:57.649948', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-26 15:53:57.654504', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-26 15:53:57.656663', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-26 15:53:57.665638', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-26 15:53:57.672217', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-26 15:53:57.680702', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-26 15:53:57.690858', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-26 15:54:53.822540', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-26 15:54:53.823636', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-26 15:54:53.832672', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-26 15:54:53.833669', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-26 15:54:53.839488', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-26 15:54:53.842719', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-26 15:54:53.852455', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-26 15:54:53.853855', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-26 15:59:50.636207', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-26 15:59:51.253259', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-26 15:59:51.262714', '/myapp/admin/teacher/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-26 15:59:51.282729', '/myapp/admin/teacher/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-26 16:00:24.596513', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-26 16:00:24.599938', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-26 16:00:24.623847', '/myapp/admin/teacher/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-26 16:00:24.705404', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-26 16:00:24.707464', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-26 16:00:24.735783', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-26 16:00:24.739774', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-26 16:00:24.743358', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-26 16:00:24.773011', '/myapp/index/user/info', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-26 16:00:25.229457', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-26 16:00:25.235631', '/myapp/admin/teacher/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-26 16:00:25.247590', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-26 16:00:25.365942', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-26 16:00:25.365942', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-26 16:00:25.561600', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-26 16:00:25.569813', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-26 16:00:25.573818', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-26 16:00:25.612211', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-26 16:00:25.619721', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-26 16:00:25.630296', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-26 16:00:46.238251', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-26 16:00:46.243459', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-26 16:00:46.486539', '/myapp/index/thing/getRecommend', 'GET', NULL, '253');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-26 16:00:47.165471', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-26 16:00:47.173330', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-26 16:00:47.177902', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-26 16:00:47.190690', '/myapp/index/notice/list_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-26 16:00:47.208510', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-26 16:00:47.209506', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-26 16:00:48.011438', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-26 16:00:48.014474', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-26 16:00:48.080277', '/myapp/index/user/info', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-26 16:00:48.086720', '/myapp/index/user/info', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-26 16:00:48.098497', '/myapp/index/user/info', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-26 16:00:48.143285', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-26 16:00:48.146640', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-26 16:00:49.294197', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-26 16:00:49.296337', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-26 16:00:49.301460', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-26 16:00:49.309119', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-26 16:00:49.327061', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-26 16:00:49.329402', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-26 16:00:49.881452', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-26 16:00:49.887732', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-26 16:00:49.894565', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-26 16:00:49.932848', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-26 16:00:50.906963', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-26 16:00:50.909179', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-26 16:00:50.917005', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-26 16:00:50.921357', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-26 16:00:50.939650', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-26 16:00:50.962609', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-26 16:00:51.597531', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-26 16:00:51.599147', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-26 16:00:51.603387', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-26 16:00:51.605390', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-26 16:00:51.624340', '/myapp/index/thing/getRecommend', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-26 16:00:51.640733', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-26 16:00:51.646409', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-26 16:00:52.293469', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-26 16:00:52.295168', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-26 16:00:52.305290', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-26 16:00:52.309287', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-26 16:00:52.326290', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-26 16:00:52.327287', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-26 16:00:52.796693', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-26 16:00:52.803824', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-26 16:00:52.812764', '/myapp/index/notice/list_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-26 16:00:52.831014', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-26 16:00:52.832109', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-26 16:00:55.238330', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-26 16:00:55.241783', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-26 16:00:55.250753', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-26 16:00:55.256731', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-26 16:00:55.287418', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-26 16:00:55.289410', '/myapp/admin/ad/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-26 16:01:10.558739', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-26 16:01:12.760918', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-26 16:01:26.602770', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-26 16:01:28.973928', '/myapp/admin/qicai/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-26 16:01:29.930824', '/myapp/admin/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-26 16:01:30.453915', '/myapp/admin/teacher/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-26 16:01:31.342190', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-26 16:01:32.037133', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-26 16:01:32.044726', '/myapp/admin/teacher/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-26 16:01:32.069602', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-26 16:01:40.702569', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-26 16:01:44.374259', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-26 16:02:03.060785', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-26 16:02:03.929029', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-26 16:02:04.995235', '/myapp/admin/qicai/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-26 16:02:06.683940', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-26 16:02:07.186663', '/myapp/admin/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-26 16:02:08.212585', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-26 16:02:09.666571', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-26 16:02:11.793970', '/myapp/admin/ad/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-26 16:02:23.404014', '/myapp/admin/ad/create', 'POST', NULL, '266');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-26 16:02:23.469190', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-26 16:02:23.520165', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-26 16:02:32.090508', '/myapp/admin/ad/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-26 16:02:32.135609', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-26 16:02:32.164268', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-26 16:02:33.780639', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-26 16:02:40.300238', '/myapp/admin/notice/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-26 16:02:40.328182', '/myapp/admin/notice/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-26 16:02:48.919942', '/myapp/admin/notice/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-26 16:02:48.950483', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-26 16:02:52.457544', '/myapp/admin/loginLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-26 16:02:53.144789', '/myapp/admin/opLog/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-26 16:02:54.005637', '/myapp/admin/loginLog/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-26 16:02:56.075663', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-26 16:02:58.407500', '/myapp/admin/feedback/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-26 16:03:04.267238', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-26 16:03:04.270852', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-26 16:03:22.140234', '/myapp/index/feedback/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-26 16:03:23.889531', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-26 16:03:23.891524', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-26 16:03:53.615151', '/myapp/index/feedback/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-26 16:03:55.261773', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-26 16:03:55.266515', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-26 16:03:58.039746', '/myapp/admin/feedback/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-26 16:03:59.272044', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-26 16:03:59.769897', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-26 16:03:59.807609', '/myapp/admin/overview/count', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-26 16:04:01.068707', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-26 16:04:01.073398', '/myapp/admin/teacher/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-26 16:04:01.096858', '/myapp/admin/teacher/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-26 16:04:18.331428', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-26 16:04:18.336154', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-26 16:04:18.338700', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-26 16:04:18.339334', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-26 16:04:22.850859', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-26 16:04:22.847841', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-26 16:04:22.856465', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-26 16:05:43.105812', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-26 16:05:43.116404', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-26 16:05:43.121542', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-26 16:05:43.130336', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-26 16:05:43.138300', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-26 16:05:43.150514', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-26 16:05:43.158486', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-26 16:05:43.165873', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-26 16:05:45.471366', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-26 16:06:27.748878', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-26 16:06:27.751901', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-26 16:06:27.757575', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-26 16:06:27.771961', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-26 16:06:27.771961', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-26 16:06:28.228519', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-26 16:06:28.233663', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-26 16:06:28.240236', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-26 16:06:28.546482', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-26 16:06:28.746376', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-26 16:06:28.748439', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-26 16:06:28.755575', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-26 16:06:28.788978', '/myapp/index/user/info', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-26 16:06:28.791589', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-26 16:06:31.185158', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-26 16:06:31.187602', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-26 16:06:31.190088', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-26 16:06:31.191973', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-26 16:06:32.614586', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-26 16:06:32.615589', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-26 16:06:32.618098', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-26 16:06:32.623617', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-26 16:06:34.444676', '/myapp/index/thing/getRecommend', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-26 16:06:34.448151', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-26 16:06:34.454187', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-26 16:06:51.942335', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-26 16:06:51.945365', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-26 16:06:51.948633', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-26 16:06:51.950924', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-26 16:06:52.601937', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-26 16:06:52.603949', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-26 16:06:52.614337', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-26 16:07:15.328172', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-26 16:07:15.331434', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-26 16:07:15.337185', '/myapp/index/notice/list_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-26 16:07:15.350612', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-26 16:07:15.360497', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-26 16:07:16.089153', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-26 16:07:16.092847', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-26 16:07:16.104693', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-26 16:07:16.240253', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-26 16:07:16.240253', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-26 16:07:17.256108', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-26 16:07:17.258587', '/myapp/admin/teacher/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-26 16:07:17.267308', '/myapp/admin/teacher/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-26 16:07:17.483921', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-26 16:07:17.486643', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-26 16:07:17.497842', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-26 16:07:18.501871', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-26 16:07:18.503675', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-26 16:07:18.509055', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-26 16:07:18.532685', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-26 16:07:18.532685', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-26 16:07:19.309698', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-26 16:07:19.312687', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-26 16:07:19.321179', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-26 16:07:19.332032', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-26 16:07:19.333072', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-26 16:09:36.181720', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-26 16:09:36.183887', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-26 16:09:36.186067', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-26 16:09:36.207241', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-26 16:09:36.207241', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-26 16:09:36.207241', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-26 16:09:36.207241', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-26 16:09:36.208626', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-26 16:09:38.647151', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-26 16:09:38.656567', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-26 16:09:38.668336', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-26 16:09:38.669358', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-26 16:09:38.671383', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-26 16:09:39.239308', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-26 16:09:39.241065', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-26 16:09:39.243406', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-26 16:09:39.278394', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-26 16:09:39.279897', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-26 16:09:39.278394', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-26 16:09:39.279897', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-26 16:09:39.282085', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-26 16:10:55.134278', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-26 16:10:55.137488', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-26 16:10:55.141633', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-26 16:10:55.142820', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-26 16:10:55.145911', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-26 16:10:55.148080', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-26 16:10:55.622052', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-26 16:10:55.624036', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-26 16:10:55.625708', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-26 16:10:55.651783', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-26 16:10:55.651783', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-26 16:10:55.652788', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-26 16:10:55.652788', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-26 16:10:55.654059', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-26 16:10:59.155304', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-26 16:11:04.736264', '/myapp/admin/teacher/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-26 16:11:04.784022', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-26 16:11:08.891276', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-26 16:11:08.894932', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-26 16:11:08.899464', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-26 16:11:08.927128', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-26 16:11:08.927128', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-26 16:11:08.930598', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-26 16:11:08.933186', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-26 16:11:08.934615', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-26 16:11:55.159459', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-26 16:11:55.162257', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-26 16:11:55.179843', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-26 16:11:58.121884', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-26 16:11:58.128427', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-26 16:11:58.133651', '/myapp/admin/teacher/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-26 16:11:58.979161', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-26 16:11:58.985804', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-26 16:11:59.000758', '/myapp/index/thing/getWishThingList', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-26 16:11:59.015992', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-26 16:11:59.023418', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-26 16:11:59.040412', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-26 16:11:59.655432', '/myapp/admin/teacher/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-26 16:11:59.666406', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-26 16:11:59.683363', '/myapp/admin/teacher/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-26 16:12:02.389377', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-26 16:12:02.395358', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-26 16:12:02.407553', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-26 16:12:04.664182', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-26 16:12:04.706400', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-26 16:12:04.709421', '/myapp/index/thing/getWishThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-26 16:12:04.774122', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-26 16:12:04.813987', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-26 16:12:04.843894', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-26 16:12:05.721099', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-26 16:12:05.725138', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-26 16:12:05.731615', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-26 16:12:06.971688', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-26 16:12:06.976315', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-26 16:12:06.992610', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-26 16:12:08.175250', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-26 16:12:08.180732', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-26 16:12:08.187742', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-26 16:12:08.193698', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-26 16:45:56.358196', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-26 16:45:56.361210', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-26 16:45:56.377703', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-26 16:45:56.399628', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-26 16:45:57.324750', '/myapp/index/notice/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-26 16:45:57.350672', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-26 16:45:57.356643', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-26 16:45:57.719621', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-26 16:45:57.723611', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-26 16:45:57.724614', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-26 16:45:57.726608', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-26 16:45:57.735568', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-26 16:45:57.741547', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-26 16:45:58.083377', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-26 16:47:46.345740', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-26 16:47:46.347095', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-26 16:47:46.352740', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-26 16:47:47.131232', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-26 16:47:47.135385', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-26 16:47:47.140592', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-26 16:47:47.276337', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-26 16:47:47.276337', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-26 16:47:47.702820', '/myapp/admin/teacher/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-26 16:47:47.747591', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-26 16:47:47.749586', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-26 16:47:47.753452', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-26 16:47:47.776639', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-26 16:47:49.000698', '/myapp/admin/teacher/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-26 16:47:49.003726', '/myapp/admin/teacher/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-26 16:47:49.005652', '/myapp/admin/teacher/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-26 16:47:49.646663', '/myapp/admin/qicai/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-26 16:47:49.649655', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-26 16:47:49.651647', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-26 16:47:49.666157', '/upload/cover/1719386913318.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-26 16:47:51.054914', '/myapp/admin/teacher/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-26 16:47:51.058521', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-26 16:47:51.061091', '/myapp/admin/teacher/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-26 16:47:53.500029', '/myapp/admin/qicai/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-26 16:47:53.503120', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-26 16:47:53.507110', '/myapp/admin/qicai/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-26 16:47:54.251562', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-26 16:47:54.255640', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-26 16:47:54.257648', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-26 16:48:02.234003', '/myapp/admin/qicai/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-26 16:48:31.347999', '/myapp/admin/qicai/create', 'POST', NULL, '152');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-26 16:48:31.379719', '/myapp/admin/qicai/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-26 16:49:54.448551', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-26 16:49:54.617708', '/myapp/admin/qicai/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-26 16:49:56.105416', '/upload/cover/1719391706317.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-26 16:50:07.323689', '/myapp/admin/qicai/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-26 16:50:07.351607', '/myapp/admin/qicai/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-26 16:50:13.445665', '/myapp/admin/qicai/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-26 16:50:13.488940', '/myapp/admin/qicai/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-26 16:50:14.481406', '/upload/cover/1719391805971.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-26 16:50:37.177629', '/myapp/admin/qicai/update', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-26 16:50:37.204063', '/myapp/admin/qicai/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-26 16:50:38.493839', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-26 16:50:47.827495', '/myapp/admin/qicai/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-26 16:50:47.850381', '/myapp/admin/qicai/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-26 16:50:51.264246', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-26 16:50:51.265237', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-26 16:50:51.276943', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-26 16:50:51.276943', '/upload/cover/1719391805971.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-26 16:50:51.279933', '/upload/cover/1719391805971.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-26 16:50:52.170425', '/myapp/admin/teacher/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-26 16:50:52.173435', '/myapp/admin/teacher/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-26 16:50:52.174499', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-26 16:50:52.199511', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-26 16:50:52.201789', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-26 16:50:52.201789', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-26 16:50:52.201789', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-26 16:50:52.202784', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-26 16:50:52.737365', '/myapp/admin/qicai/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-26 16:50:52.739437', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-26 16:50:52.740358', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-26 16:50:52.756392', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-26 16:50:52.756392', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-26 16:50:53.858080', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-26 16:50:53.860972', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-26 16:50:53.864177', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-26 16:50:53.896453', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-26 16:50:53.897447', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-26 16:50:53.898507', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-26 16:50:53.898507', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-26 16:50:53.899473', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-26 16:50:54.614097', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-26 16:50:54.616133', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-26 16:50:54.626179', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-26 16:50:54.647114', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-26 16:50:54.647114', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-26 16:51:07.042922', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-26 16:51:07.047906', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-26 16:51:07.052893', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-26 16:51:07.054887', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-26 16:51:09.648704', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-26 16:51:09.650697', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-26 16:51:09.659667', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-26 16:51:09.668638', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-26 16:51:09.679601', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-26 16:51:09.711501', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-26 16:51:10.083871', '/myapp/admin/qicai/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-26 16:51:10.086405', '/myapp/admin/qicai/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-26 16:51:10.078892', '/myapp/admin/qicai/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-26 16:51:10.651644', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-26 16:51:10.653722', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-26 16:51:10.655729', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-26 16:51:11.292505', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-26 16:51:11.294820', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-26 16:51:11.299478', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-26 16:51:11.303991', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-26 16:51:16.117488', '/myapp/admin/teacher/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-26 16:51:16.119482', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-26 16:51:16.134785', '/myapp/admin/teacher/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-26 16:51:23.540480', '/myapp/admin/teacher/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-26 16:51:23.542243', '/myapp/admin/teacher/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-26 16:51:23.555218', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-26 16:51:25.149758', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-26 16:51:26.050367', '/myapp/admin/teacher/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-26 16:51:26.957960', '/myapp/admin/teacher/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-26 16:51:26.960587', '/myapp/admin/teacher/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-26 16:51:26.969899', '/myapp/admin/teacher/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-26 20:16:15.830886', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-26 20:16:15.873452', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-26 20:16:15.904247', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-26 20:16:15.972983', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-26 20:16:15.990283', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-26 20:16:21.092930', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '5143');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-26 20:16:44.443311', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-26 20:16:44.484725', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-26 20:16:44.512678', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-26 20:16:46.895422', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-26 20:16:48.206618', '/myapp/admin/teacher/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-26 20:16:49.686714', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-26 20:16:49.695115', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-26 20:16:49.734276', '/myapp/admin/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-26 20:16:50.603889', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-26 20:16:51.736292', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-26 20:16:56.672129', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-26 20:16:56.667130', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-26 20:16:56.754097', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-26 20:16:56.759952', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-26 20:16:56.761971', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-26 20:16:56.774908', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-26 20:16:56.788978', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-26 20:16:56.983626', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '268');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-26 20:18:02.072769', '/upload/cover/1719221955364.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-26 20:18:04.345465', '/myapp/admin/teacher/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-26 20:18:10.739552', '/myapp/admin/adminLogin', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-26 20:18:11.051777', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-26 20:18:11.063778', '/myapp/admin/teacher/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-26 20:18:11.078826', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-26 20:18:12.628052', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-26 20:18:16.279790', '/myapp/admin/teacher/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-26 20:18:16.337983', '/myapp/admin/teacher/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-26 20:18:17.353076', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-26 20:18:19.564415', '/myapp/admin/teacher/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-26 20:18:19.627569', '/myapp/admin/teacher/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-26 20:18:20.690429', '/upload/cover/1719221913638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-26 20:18:22.751551', '/myapp/admin/teacher/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-26 20:18:22.829126', '/myapp/admin/teacher/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-26 20:18:23.644090', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-26 20:18:25.643023', '/myapp/admin/teacher/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-26 20:18:25.726949', '/myapp/admin/teacher/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-26 20:18:26.689519', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-26 20:18:31.892418', '/myapp/admin/teacher/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-26 20:18:31.966930', '/myapp/admin/teacher/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-26 20:18:37.980472', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-26 20:18:37.985465', '/myapp/admin/qicai/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-26 20:18:38.052756', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-26 20:18:38.054758', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-26 20:18:38.118739', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-26 20:18:38.474759', '/myapp/admin/teacher/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-26 20:18:38.491776', '/myapp/admin/teacher/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-26 20:18:38.586240', '/myapp/admin/teacher/list', 'GET', NULL, '158');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-26 20:18:56.123071', '/myapp/admin/teacher/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-26 20:18:56.194156', '/myapp/admin/teacher/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-26 20:18:59.495007', '/myapp/admin/teacher/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-26 20:18:59.581135', '/myapp/admin/teacher/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-26 20:19:06.984459', '/myapp/admin/qicai/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-26 20:19:06.991314', '/myapp/admin/qicai/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-26 20:19:07.082525', '/myapp/admin/qicai/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-26 20:19:07.426397', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-26 20:19:07.462388', '/myapp/admin/teacher/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-26 20:19:07.545648', '/myapp/admin/teacher/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-26 20:20:23.706619', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-26 20:20:23.749540', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-26 20:20:23.826198', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-26 20:20:23.820706', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-26 20:20:23.844798', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-26 20:20:23.868394', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-26 20:20:23.935941', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-26 20:20:23.936941', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-26 20:20:23.937938', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-26 20:20:23.940451', '/upload/cover/1718962530199.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-26 20:20:26.484519', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-26 20:20:26.532612', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-26 20:20:26.562750', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-26 20:20:26.570749', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-26 20:20:26.584389', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-26 20:20:26.657670', '/myapp/index/comment/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-26 20:20:29.154045', '/myapp/admin/qicai/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-26 20:20:29.161091', '/myapp/admin/qicai/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-26 20:20:29.221037', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-26 20:20:29.277670', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-26 20:20:29.286637', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-26 20:20:30.614109', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-26 20:20:30.622575', '/myapp/index/comment/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-26 20:20:30.649680', '/myapp/index/comment/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-26 20:20:30.693957', '/myapp/index/comment/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-26 20:20:30.740249', '/myapp/index/comment/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-26 20:20:30.797720', '/myapp/index/comment/list', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-26 20:21:16.122508', '/myapp/admin/qicai/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-26 20:21:16.127346', '/myapp/admin/qicai/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-26 20:21:16.265490', '/myapp/admin/qicai/list', 'GET', NULL, '170');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-26 20:21:17.609880', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-26 20:21:17.666837', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-26 20:21:17.698290', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-26 20:21:17.754172', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-26 20:21:17.870870', '/myapp/index/user/info', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-26 20:21:17.977873', '/myapp/index/user/info', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-26 20:21:18.206222', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-26 20:21:18.218421', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-26 20:21:18.284066', '/myapp/index/user/info', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-26 20:21:19.832057', '/myapp/admin/teacher/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-26 20:21:19.888822', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-26 20:21:19.893358', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-26 20:21:19.894847', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-26 20:21:19.896179', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-26 20:21:19.902219', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-26 20:21:19.916692', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-26 20:21:19.970101', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-26 20:21:27.275262', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-26 20:21:27.280753', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-26 20:21:27.313804', '/myapp/admin/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-26 20:21:27.694586', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-26 20:21:28.713556', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-26 20:21:30.038327', '/myapp/admin/qicai/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-26 20:22:36.904621', '/myapp/admin/qicai/create', 'POST', NULL, '493');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-26 20:22:36.975595', '/myapp/admin/qicai/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-26 20:22:40.417692', '/myapp/admin/qicai/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-26 20:22:40.428127', '/myapp/admin/qicai/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-26 20:22:40.481832', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-26 20:22:40.483908', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-26 20:22:40.544713', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-26 20:22:40.552725', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-26 20:23:29.555278', '/myapp/admin/qicai/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-26 20:23:29.635706', '/myapp/admin/qicai/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-26 20:23:33.092233', '/myapp/admin/teacher/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-26 20:23:33.100237', '/myapp/admin/teacher/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-26 20:23:33.193850', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-26 20:23:33.195846', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-26 20:23:33.199983', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-26 20:23:33.259064', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-26 20:23:33.268319', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-26 20:23:33.284387', '/upload/cover/1719221899649.jpeg', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-26 20:23:33.882703', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-26 20:23:33.888010', '/myapp/index/user/info', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-26 20:23:33.978079', '/upload/cover/1719404586772.jpeg', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-26 20:23:33.981082', '/upload/cover/1719404586772.jpeg', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-26 20:23:55.051630', '/myapp/admin/teacher/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-26 20:23:55.064390', '/myapp/admin/teacher/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-26 20:23:55.101547', '/myapp/admin/teacher/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-26 20:23:55.755714', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-26 20:23:56.924697', '/myapp/admin/teacher/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-26 20:23:57.838023', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-26 20:26:20.050511', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-26 20:26:20.064611', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-26 20:26:20.103940', '/myapp/admin/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-26 20:26:21.928045', '/upload/cover/1719386368715.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-26 20:27:15.162039', '/myapp/admin/thing/update', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-26 20:27:15.292304', '/myapp/admin/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-26 20:27:54.063786', '/myapp/admin/thing/delete', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-26 20:27:54.314764', '/myapp/admin/thing/list', 'GET', NULL, '217');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-26 20:28:05.329805', '/upload/cover/1719404785972.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-26 20:29:03.265582', '/myapp/admin/thing/list', 'GET', NULL, '348');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-26 20:29:08.111393', '/myapp/admin/thing/delete', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-26 20:29:08.425989', '/myapp/admin/thing/list', 'GET', NULL, '275');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-26 20:29:14.837778', '/myapp/admin/thing/delete', 'POST', NULL, '85');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-26 20:29:15.101210', '/myapp/admin/thing/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-26 20:29:33.237486', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-26 20:29:33.525806', '/myapp/admin/thing/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-26 20:29:42.611462', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-26 20:29:42.949148', '/myapp/admin/thing/list', 'GET', NULL, '252');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-26 20:29:51.522731', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-26 20:29:51.809509', '/myapp/admin/thing/list', 'GET', NULL, '198');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-26 20:30:38.334707', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-26 20:30:38.637637', '/myapp/admin/thing/list', 'GET', NULL, '207');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-26 20:30:57.075309', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-26 20:30:57.332405', '/myapp/admin/thing/list', 'GET', NULL, '188');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-26 20:31:04.904615', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-26 20:31:05.203641', '/myapp/admin/thing/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-26 20:31:10.141357', '/myapp/admin/thing/update', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-06-26 20:31:10.484408', '/myapp/admin/thing/list', 'GET', NULL, '257');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-06-26 20:31:14.405480', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-06-26 20:31:14.723761', '/myapp/admin/thing/list', 'GET', NULL, '245');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-06-26 20:31:18.697787', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-06-26 20:31:18.973526', '/myapp/admin/thing/list', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-06-26 20:31:32.027433', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-06-26 20:31:32.312451', '/myapp/admin/thing/list', 'GET', NULL, '233');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-06-26 20:31:43.681014', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-06-26 20:31:43.976637', '/myapp/admin/thing/list', 'GET', NULL, '222');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-06-26 20:31:50.808783', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-06-26 20:31:51.073167', '/myapp/admin/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-06-26 20:31:58.714824', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-06-26 20:31:58.999241', '/myapp/admin/thing/list', 'GET', NULL, '206');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-06-26 20:32:06.600928', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-06-26 20:32:06.876922', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-06-26 20:32:11.506715', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-06-26 20:32:11.779982', '/myapp/admin/thing/list', 'GET', NULL, '191');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-06-26 20:32:18.432394', '/myapp/admin/thing/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-06-26 20:32:18.669421', '/myapp/admin/thing/list', 'GET', NULL, '187');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-06-26 20:32:23.099323', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-06-26 20:32:23.355356', '/myapp/admin/thing/list', 'GET', NULL, '199');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-06-26 20:32:30.752860', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-06-26 20:32:31.036713', '/myapp/admin/thing/list', 'GET', NULL, '202');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-06-26 20:32:36.522007', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-06-26 20:32:36.801140', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-06-26 20:32:40.861874', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-06-26 20:32:41.118952', '/myapp/admin/thing/list', 'GET', NULL, '182');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-06-26 20:32:44.848986', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-06-26 20:32:45.171631', '/myapp/admin/thing/list', 'GET', NULL, '232');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-06-26 20:32:48.599848', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-06-26 20:32:48.904190', '/myapp/admin/thing/list', 'GET', NULL, '209');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-06-26 20:32:55.460393', '/myapp/admin/thing/update', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-06-26 20:32:55.769146', '/myapp/admin/thing/list', 'GET', NULL, '227');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-06-26 20:33:00.032913', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-06-26 20:33:00.282560', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-06-26 20:33:09.623562', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-06-26 20:33:09.884283', '/myapp/admin/thing/list', 'GET', NULL, '184');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-06-26 20:33:16.813186', '/myapp/admin/thing/update', 'POST', NULL, '70');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-06-26 20:33:17.090749', '/myapp/admin/thing/list', 'GET', NULL, '198');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-06-26 20:33:29.891847', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-06-26 20:33:30.164784', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-06-26 20:33:36.135011', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-06-26 20:33:36.398682', '/myapp/admin/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-06-26 20:33:44.247017', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-06-26 20:33:44.521194', '/myapp/admin/thing/list', 'GET', NULL, '200');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-06-26 20:33:52.220938', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-06-26 20:33:52.502618', '/myapp/admin/thing/list', 'GET', NULL, '201');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-06-26 20:33:58.731306', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-06-26 20:33:59.040320', '/myapp/admin/thing/list', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-06-26 20:34:05.261812', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-06-26 20:34:05.512593', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-06-26 20:34:11.469251', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-06-26 20:34:11.780619', '/myapp/admin/thing/list', 'GET', NULL, '228');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-06-26 20:34:17.621723', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-06-26 20:34:17.883374', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-06-26 20:34:22.967072', '/myapp/admin/thing/update', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-06-26 20:34:23.265635', '/myapp/admin/thing/list', 'GET', NULL, '224');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-06-26 20:34:33.187499', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-06-26 20:34:33.491097', '/myapp/admin/thing/list', 'GET', NULL, '223');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-06-26 20:34:40.559870', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-06-26 20:34:40.897561', '/myapp/admin/thing/list', 'GET', NULL, '237');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-06-26 20:34:45.516615', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-06-26 20:34:47.513522', '/myapp/admin/teacher/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-06-26 20:34:47.602818', '/myapp/admin/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-06-26 20:34:47.689943', '/myapp/admin/classification/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-06-26 20:34:48.930200', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-06-26 20:34:49.570947', '/myapp/admin/teacher/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-06-26 20:34:50.335163', '/myapp/admin/qicai/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-06-26 20:34:51.599583', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-06-26 20:34:58.319552', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-06-26 20:34:58.333545', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-06-26 20:34:58.385903', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-06-26 20:34:58.452665', '/upload/cover/1719404785972.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-06-26 20:34:58.481609', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-06-26 20:34:58.502487', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-06-26 20:34:58.507697', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-06-26 20:34:58.523573', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-06-26 20:34:58.522570', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-06-26 20:34:58.526283', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-06-26 20:34:58.557811', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-06-26 20:34:58.568915', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-06-26 20:34:58.587161', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-06-26 20:34:58.590178', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-06-26 20:34:58.592190', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-06-26 20:35:02.512140', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-06-26 20:35:15.374210', '/myapp/index/user/register', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-06-26 20:35:18.050766', '/myapp/index/user/login', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-06-26 20:35:18.140030', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-06-26 20:35:18.144023', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-06-26 20:35:18.153346', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-06-26 20:35:18.210573', '/myapp/index/user/info', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-06-26 20:35:18.270875', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-06-26 20:35:18.272872', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-06-26 20:35:18.273873', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-06-26 20:35:18.274879', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-06-26 20:35:18.283420', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-06-26 20:35:18.284429', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-06-26 20:35:18.330320', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-06-26 20:35:18.332320', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-06-26 20:35:18.338829', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-06-26 20:35:18.339824', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-06-26 20:35:18.342829', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-06-26 20:35:25.870820', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-06-26 20:35:25.885732', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-06-26 20:35:25.903601', '/myapp/index/thing/detail', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-06-26 20:35:25.912600', '/myapp/index/thing/detail', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-06-26 20:35:25.967743', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-06-26 20:35:25.984176', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-06-26 20:35:26.001712', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-06-26 20:35:26.005720', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-06-26 20:35:29.001539', '/myapp/index/thing/addWishUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-06-26 20:35:29.087525', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-06-26 20:35:32.409056', '/myapp/index/comment/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-06-26 20:35:32.446739', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-06-26 20:35:33.870802', '/myapp/index/comment/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-06-26 20:35:33.943780', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-06-26 20:35:35.131066', '/myapp/index/comment/create', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-06-26 20:35:36.749832', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-06-26 20:35:37.900990', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-06-26 20:35:37.940020', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-06-26 20:35:37.979464', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-06-26 20:35:38.001375', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-06-26 20:35:40.361953', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-06-26 20:35:41.504614', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-06-26 20:35:42.655602', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-06-26 20:35:43.631329', '/myapp/index/comment/create', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-06-26 20:35:46.632900', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-06-26 20:35:47.221476', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-06-26 20:35:48.946913', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-06-26 20:35:50.304014', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-06-26 20:35:54.924912', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-06-26 20:35:54.928912', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-06-26 20:35:54.940923', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-06-26 20:35:54.950913', '/myapp/index/user/info', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-06-26 20:35:55.021622', '/myapp/index/user/info', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-06-26 20:35:55.024586', '/myapp/index/user/info', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-06-26 20:36:07.076281', '/myapp/index/order/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-06-26 20:36:07.314077', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-06-26 20:36:07.319090', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-06-26 20:36:08.815129', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-06-26 20:36:08.821627', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-06-26 20:36:08.860977', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-06-26 20:36:08.864985', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-06-26 20:36:08.876975', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-06-26 20:36:08.883805', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-06-26 20:36:13.406487', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-06-26 20:36:13.902599', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-06-26 20:36:15.499901', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-06-26 20:36:23.369232', '/myapp/admin/feedback/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-06-26 20:36:24.341948', '/myapp/admin/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-06-26 20:36:25.548170', '/myapp/admin/teacher/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-06-26 20:36:25.562971', '/myapp/admin/teacher/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-06-26 20:36:25.723376', '/myapp/admin/teacher/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-06-26 20:36:29.771117', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-06-26 20:36:29.778220', '/myapp/admin/teacher/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-06-26 20:36:29.939769', '/myapp/admin/teacher/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-06-26 20:36:31.556362', '/myapp/admin/teacher/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-06-26 20:36:31.563512', '/myapp/admin/teacher/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-06-26 20:36:31.571660', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-06-26 20:36:31.622909', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-06-26 20:36:31.626897', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-06-26 20:36:31.627908', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-06-26 20:36:31.629949', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-06-26 20:36:31.634571', '/upload/cover/1719221940813.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-06-26 20:36:35.692230', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-06-26 20:36:35.702676', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-06-26 20:36:35.763465', '/myapp/index/thing/getRecommend', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-06-26 20:36:35.818096', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-06-26 20:36:35.824097', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-06-26 20:36:35.825100', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-06-26 20:36:35.823098', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-06-26 20:36:35.829864', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-06-26 20:36:35.843136', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-06-26 20:36:35.881176', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-06-26 20:36:35.881176', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-06-26 20:36:35.887766', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-06-26 20:36:35.899766', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-06-26 20:36:35.902765', '/upload/cover/1719405261841.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-06-26 20:36:35.906768', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-06-26 20:36:36.749176', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-06-26 20:36:36.759511', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-06-26 20:36:36.775063', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-06-26 20:36:36.837710', '/myapp/index/thing/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-06-26 20:36:38.902050', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-06-26 20:36:39.449226', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-06-26 20:36:40.223556', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-06-26 20:36:40.710165', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-06-26 20:36:41.462002', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-06-26 20:36:41.988038', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-06-26 20:36:42.486341', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-06-26 20:36:42.996032', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-06-26 20:36:43.608322', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-06-26 20:36:44.347261', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-06-26 20:36:45.508171', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-06-26 20:36:45.861683', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-06-26 20:36:46.363999', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-06-26 20:36:47.285517', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-06-26 20:36:47.329335', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-06-26 20:36:47.330791', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-06-26 20:36:47.942235', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-06-26 20:36:49.232624', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-06-26 20:36:55.594449', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-06-26 20:36:55.859689', '/myapp/admin/thing/list', 'GET', NULL, '183');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-06-26 20:36:56.766004', '/upload/cover/1719405221728.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-06-26 20:37:01.613806', '/upload/cover/1719405271973.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-06-26 20:37:04.672584', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-06-26 20:37:04.963849', '/myapp/admin/thing/list', 'GET', NULL, '220');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-06-26 20:37:05.625727', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-06-26 20:37:10.611672', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-06-26 20:37:10.857276', '/myapp/admin/thing/list', 'GET', NULL, '190');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-06-26 20:37:15.224558', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-06-26 20:37:15.236162', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-06-26 20:37:15.309421', '/myapp/index/thing/getRecommend', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-06-26 20:37:15.341967', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-06-26 20:37:15.344974', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-06-26 20:37:16.643026', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-06-26 20:37:16.652035', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-06-26 20:37:16.676022', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-06-26 20:37:16.713194', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-06-26 20:37:18.041514', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-06-26 20:37:18.718551', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-06-26 20:37:19.783060', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-06-26 20:37:27.668874', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-06-26 20:37:29.077886', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-06-26 20:37:30.644227', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-06-26 20:37:34.097615', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-06-26 20:37:34.112189', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-06-26 20:37:34.171098', '/myapp/index/user/info', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-06-26 20:37:35.166076', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-06-26 20:37:35.175020', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-06-26 20:37:35.186032', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-06-26 20:37:35.235168', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-06-26 20:37:49.158146', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-06-26 20:37:49.200065', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-06-26 20:37:49.363685', '/myapp/index/user/info', 'GET', NULL, '230');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-06-26 20:37:50.108758', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-06-26 20:37:50.121384', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-06-26 20:37:50.128385', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-06-26 20:37:50.183581', '/myapp/index/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-06-26 20:37:51.041106', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-06-26 20:37:51.061259', '/myapp/index/thing/getRecommend', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-06-26 20:37:51.078551', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-06-26 20:37:51.108549', '/myapp/index/thing/getRecommend', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-06-26 20:37:51.207910', '/myapp/index/thing/getRecommend', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-06-26 20:37:51.215908', '/myapp/index/thing/getRecommend', 'GET', NULL, '196');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-06-26 20:37:51.253452', '/upload/cover/1719405214283.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-06-26 20:37:54.052993', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-06-26 20:37:54.056477', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-06-26 20:37:54.073364', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-06-26 20:37:54.123352', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-06-26 20:37:54.175915', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-06-26 20:37:54.176917', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-06-26 20:37:54.177916', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-06-26 20:37:54.180935', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-06-26 20:37:54.185918', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-06-26 20:37:54.189920', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-06-26 20:37:54.222046', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-06-26 20:37:54.227723', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-06-26 20:37:54.228720', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-06-26 20:37:54.229728', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-06-26 20:37:55.506725', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-06-26 20:37:55.508721', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-06-26 20:37:55.522911', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-06-26 20:37:55.573092', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-06-26 20:37:55.579618', '/myapp/index/comment/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-06-26 20:37:55.613613', '/myapp/index/comment/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-06-26 20:37:56.937151', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-06-26 20:37:56.951156', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-06-26 20:37:56.956018', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-06-26 20:37:57.005987', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-06-26 20:37:57.603037', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-06-26 20:37:57.613092', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-06-26 20:37:57.646074', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-06-26 20:37:58.933957', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-06-26 20:37:58.943973', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-06-26 20:37:58.952346', '/myapp/admin/teacher/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-06-26 20:38:00.784775', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-06-26 20:38:00.798775', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-06-26 20:38:00.819184', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-06-26 20:38:00.839245', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-06-26 20:38:00.853381', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-06-26 20:38:00.876831', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-06-26 20:38:02.352758', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-06-26 20:38:03.037242', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-06-26 20:38:04.295333', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-06-26 20:38:14.611204', '/myapp/index/user/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-06-26 20:38:15.639942', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-06-26 20:38:15.648944', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-06-26 20:38:15.689116', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-06-26 20:38:15.695110', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-06-26 20:38:15.716504', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-06-26 20:38:15.732776', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-06-26 20:38:15.743775', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-06-26 20:38:18.256560', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-06-26 20:38:18.305139', '/upload/cover/1719405214283.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-06-26 20:38:21.486916', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-06-26 20:38:21.494380', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-06-26 20:38:21.516841', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-06-26 20:38:21.531246', '/upload/avatar/1719405489606.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-06-26 20:38:21.564960', '/upload/avatar/1719405489606.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-06-26 20:38:21.580260', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-06-26 20:38:21.592257', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-06-26 20:38:21.599540', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-06-26 20:38:21.601534', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-06-26 20:38:21.632266', '/upload/cover/1719405208808.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-06-26 20:38:27.657960', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-06-26 20:38:27.665558', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-06-26 20:38:27.685722', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-06-26 20:38:27.698382', '/myapp/admin/ad/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-06-26 20:38:27.705040', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-06-26 20:38:27.738827', '/upload/avatar/1719405489606.png', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-06-26 20:38:27.742824', '/upload/avatar/1719405489606.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-06-26 20:38:28.809163', '/myapp/index/thing/addWishUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-06-26 20:38:28.894877', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-06-26 20:38:29.155295', '/myapp/index/thing/addCollectUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-06-26 20:38:29.230058', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-06-26 20:38:32.527865', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-06-26 20:38:32.539825', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-06-26 20:38:32.533459', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-06-26 20:38:32.594332', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-06-26 20:38:32.647302', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-06-26 20:38:32.652478', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-06-26 20:38:32.655704', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-06-26 20:38:32.657728', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-06-26 20:38:32.656736', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-06-26 20:38:32.660741', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-06-26 20:38:32.695774', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-06-26 20:38:32.701415', '/upload/cover/1719405261841.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2024-06-26 20:38:32.706441', '/upload/cover/1719405261841.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2024-06-26 20:38:33.231522', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2024-06-26 20:38:33.245553', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2024-06-26 20:38:33.275951', '/myapp/index/thing/getWishThingList', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2024-06-26 20:38:33.297387', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2024-06-26 20:38:33.308388', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2024-06-26 20:38:33.333944', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2024-06-26 20:38:36.747657', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2024-06-26 20:38:36.766851', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2024-06-26 20:38:36.774903', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2024-06-26 20:38:36.829623', '/myapp/index/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2024-06-26 20:38:50.787282', '/myapp/admin/adminLogin', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2024-06-26 20:38:51.126306', '/myapp/admin/teacher/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2024-06-26 20:38:51.131849', '/myapp/admin/teacher/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2024-06-26 20:38:51.325884', '/myapp/admin/teacher/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2024-06-26 20:38:53.813648', '/myapp/admin/thing/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2024-06-26 20:38:55.525364', '/myapp/admin/thing/list', 'GET', NULL, '239');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2024-06-26 20:38:56.514318', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2024-06-26 20:38:57.226850', '/myapp/admin/teacher/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2024-06-26 20:38:57.238665', '/myapp/admin/teacher/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2024-06-26 20:38:57.407021', '/myapp/admin/teacher/list', 'GET', NULL, '194');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2024-06-26 20:41:43.501132', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2024-06-26 20:41:43.505108', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2024-06-26 20:41:43.527933', '/myapp/index/thing/getRecommend', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2024-06-26 20:41:44.498290', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2024-06-26 20:41:44.506549', '/myapp/admin/teacher/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2024-06-26 20:41:44.520000', '/myapp/admin/teacher/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2024-06-26 20:41:44.567878', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2024-06-26 20:41:44.570886', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2024-06-26 20:41:44.571889', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2024-06-26 20:41:44.572882', '/upload/avatar/1719405489606.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2024-06-26 20:41:44.580634', '/upload/cover/1719221924899.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2024-06-26 20:41:44.581635', '/upload/avatar/1719405489606.png', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2024-06-26 20:41:46.044341', '/myapp/admin/qicai/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2024-06-26 20:41:46.052577', '/myapp/admin/qicai/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2024-06-26 20:41:46.060784', '/myapp/admin/qicai/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2024-06-26 20:41:46.099462', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2024-06-26 20:41:46.100460', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2024-06-26 20:41:46.104458', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2024-06-26 20:41:46.106778', '/upload/cover/1719391812470.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2024-06-26 20:41:47.004001', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2024-06-26 20:41:47.012007', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2024-06-26 20:41:47.048709', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2024-06-26 20:41:47.081331', '/upload/cover/1719405208808.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2024-06-26 20:41:47.083361', '/upload/cover/1719405208808.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2024-06-26 20:41:48.466502', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2024-06-26 20:41:48.476828', '/myapp/admin/qicai/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2024-06-26 20:41:48.492837', '/myapp/admin/qicai/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2024-06-26 20:41:49.351547', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2024-06-26 20:41:49.361459', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2024-06-26 20:41:49.407702', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2024-06-26 20:41:49.424180', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2024-06-26 20:41:49.435917', '/myapp/index/user/info', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2024-06-26 20:41:49.482937', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2024-06-26 20:41:55.003342', '/myapp/admin/thing/list', 'GET', NULL, '198');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2024-06-26 20:41:59.503872', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1101');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2024-06-26 20:42:00.678081', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2024-06-26 20:42:00.690301', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2024-06-26 20:42:00.872273', '/myapp/admin/classification/list', 'GET', NULL, '213');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2024-06-26 20:42:05.759562', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2024-06-26 20:42:05.753527', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2024-06-26 20:42:05.768690', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2024-06-26 20:42:05.826754', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2024-06-26 20:42:05.898059', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2024-06-26 20:42:05.899056', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2024-06-26 20:42:05.900058', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2024-06-26 20:42:05.901342', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2024-06-26 20:42:05.902360', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2024-06-26 20:42:05.903359', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2024-06-26 20:42:05.948146', '/upload/cover/1719405256363.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2024-06-26 20:42:05.950826', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2024-06-26 20:42:05.951826', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2024-06-26 20:42:05.961891', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2024-06-26 20:43:19.308667', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2024-06-26 20:43:19.316663', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2024-06-26 20:43:19.337252', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2024-06-26 20:43:19.347414', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2024-06-26 20:43:21.784113', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2024-06-26 20:43:21.797546', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2024-06-26 20:43:21.826006', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2024-06-26 20:43:22.202040', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2024-06-26 20:43:22.206003', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2024-06-26 20:43:22.220181', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2024-06-26 20:43:22.277765', '/myapp/index/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2024-06-26 20:43:24.550523', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2024-06-26 20:43:24.559521', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2024-06-26 20:43:24.572620', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2024-06-26 20:43:24.624131', '/upload/avatar/1719405489606.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2024-06-26 20:43:24.642141', '/upload/avatar/1719405489606.png', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2024-06-26 20:43:24.707793', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2024-06-26 20:43:24.708843', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2024-06-26 20:43:24.713794', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2024-06-26 20:43:24.714808', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2024-06-26 20:43:24.715858', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2024-06-26 20:43:24.721823', '/upload/cover/1719405230875.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2024-06-26 20:43:24.772788', '/upload/cover/1719405250157.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2024-06-26 20:43:24.800314', '/upload/cover/1719405243920.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2024-06-26 20:43:24.840990', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2024-06-26 20:43:24.842026', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2024-06-26 20:43:24.842026', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2024-06-26 20:43:24.843986', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2024-06-26 20:43:26.788612', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2024-06-26 20:43:26.795275', '/myapp/admin/teacher/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2024-06-26 20:43:26.808113', '/myapp/admin/teacher/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2024-06-26 20:43:27.683214', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2024-06-26 20:43:27.706551', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2024-06-26 20:43:27.714850', '/myapp/index/thing/getRecommend', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2024-06-26 20:43:28.361685', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2024-06-26 20:43:28.369791', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2024-06-26 20:43:28.378089', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2024-06-26 20:43:28.438649', '/myapp/index/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2024-06-26 20:43:55.625465', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2024-06-26 20:43:55.634471', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2024-06-26 20:43:55.665462', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2024-06-26 20:43:55.675469', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2024-06-26 20:43:57.842407', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2024-06-26 20:43:57.846415', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2024-06-26 20:43:57.858681', '/myapp/index/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2024-06-26 20:43:57.889970', '/upload/avatar/1719405489606.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2024-06-26 20:43:57.906718', '/upload/avatar/1719405489606.png', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2024-06-26 20:43:59.935907', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2024-06-26 20:43:59.956993', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2024-06-26 20:43:59.988454', '/myapp/index/thing/getRecommend', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2024-06-26 20:44:00.513612', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2024-06-26 20:44:00.522384', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2024-06-26 20:44:00.532644', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2024-06-26 20:44:00.599187', '/myapp/index/thing/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2024-06-26 20:44:04.229206', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2024-06-26 20:44:04.898418', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2024-06-26 20:44:11.962210', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2024-06-26 20:44:12.616518', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2024-06-26 20:44:13.309274', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2024-06-26 20:44:14.595367', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2024-06-26 20:44:15.705665', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2024-06-26 20:44:16.340632', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2024-06-26 20:44:22.949832', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2024-06-26 20:44:27.544839', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2024-06-26 20:44:27.570163', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2024-06-26 20:44:27.594867', '/upload/ad/1719388949077.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2024-06-26 20:44:27.614254', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2024-06-26 20:44:27.640919', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2024-06-26 20:44:27.641922', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2024-06-26 20:44:27.662385', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2024-06-26 20:44:27.676768', '/upload/ad/1719388939316.jpeg', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2024-06-26 20:44:29.524192', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2024-06-26 20:44:29.532059', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2024-06-26 20:44:29.541865', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2024-06-26 20:44:29.605230', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2024-06-26 20:44:29.676839', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2024-06-26 20:44:29.679822', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2024-06-26 20:44:29.682823', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2024-06-26 20:44:29.683843', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2024-06-26 20:44:29.685872', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2024-06-26 20:44:29.700143', '/upload/cover/1719405237489.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2024-06-26 20:44:29.731349', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2024-06-26 20:44:29.732350', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2024-06-26 20:44:29.745347', '/upload/cover/1719405278830.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2024-06-26 20:44:31.863189', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2024-06-26 20:44:31.874190', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2024-06-26 20:44:31.880561', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2024-06-26 20:44:31.921870', '/myapp/index/thing/detail', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2024-06-26 20:44:31.942503', '/myapp/index/thing/detail', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2024-06-26 20:44:31.965925', '/myapp/index/thing/detail', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2024-06-26 20:44:42.590906', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2024-06-26 20:44:42.607252', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2024-06-26 20:44:42.617787', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2024-06-26 20:44:42.639917', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2024-06-26 20:44:42.658133', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2024-06-26 20:44:42.688463', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2024-06-26 20:44:45.232084', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2024-06-26 20:44:45.245675', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2024-06-26 20:44:45.277614', '/myapp/index/thing/getRecommend', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2024-06-26 20:44:45.967192', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2024-06-26 20:44:45.981271', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2024-06-26 20:44:45.973208', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2024-06-26 20:44:46.017125', '/upload/cover/1719404546775.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2024-06-26 20:44:46.017125', '/upload/cover/1719404546775.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2024-06-26 20:44:46.540101', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2024-06-26 20:44:46.558136', '/myapp/admin/teacher/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2024-06-26 20:44:46.564383', '/myapp/admin/teacher/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2024-06-26 20:44:47.011813', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2024-06-26 20:44:47.015827', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2024-06-26 20:44:47.039050', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2024-06-26 20:44:47.405849', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2024-06-26 20:44:47.401822', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2024-06-26 20:44:47.414574', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2024-06-26 20:44:48.024763', '/myapp/admin/qicai/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2024-06-26 20:44:48.034722', '/myapp/admin/qicai/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2024-06-26 20:44:48.038749', '/myapp/admin/qicai/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2024-06-26 20:44:49.241046', '/myapp/admin/teacher/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2024-06-26 20:44:49.248756', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2024-06-26 20:44:49.265757', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2024-06-26 20:44:54.151928', '/myapp/admin/qicai/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2024-06-26 20:44:54.160609', '/myapp/admin/qicai/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2024-06-26 20:44:54.165663', '/myapp/admin/qicai/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2024-06-26 20:44:56.017725', '/myapp/admin/teacher/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2024-06-26 20:44:56.025724', '/myapp/admin/teacher/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2024-06-26 20:44:56.041426', '/myapp/admin/teacher/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2024-06-26 20:45:01.485039', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2024-06-26 20:45:01.492060', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2024-06-26 20:45:01.498752', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2024-06-26 20:45:01.552054', '/myapp/index/thing/list', 'GET', NULL, '81');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1719388125012', 1, '2', '2024-06-26 15:48:45.016617', '刘德华', '', '2222', '', 2, 3);
INSERT INTO `b_order` VALUES (2, '1719405367045', 2, '1', '2024-06-26 20:36:07.057953', '刘文静', '', '13211112222', '', 15, 4);

-- ----------------------------
-- Table structure for b_qicai
-- ----------------------------
DROP TABLE IF EXISTS `b_qicai`;
CREATE TABLE `b_qicai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_qicai
-- ----------------------------
INSERT INTO `b_qicai` VALUES (1, '杠铃20kg', '该器材用于锻炼上肢肌肉', '0', 'cover/1719391812470.jpeg', '2024-06-26 15:28:36.695629');
INSERT INTO `b_qicai` VALUES (2, '肌肉练习器', '该器材用于锻炼下肢腿部肌肉。', '0', 'cover/1719391805971.jpeg', '2024-06-26 16:48:31.342372');
INSERT INTO `b_qicai` VALUES (3, '跑步机1号', '用于跑步训练。', '0', 'cover/1719404546775.jpeg', '2024-06-26 20:22:36.898621');
INSERT INTO `b_qicai` VALUES (4, '跑步机2号', '用于跑步训练和腿部肌肉练习', '0', 'cover/1719404586772.jpeg', '2024-06-26 20:23:29.539972');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (2, 2, 11, '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 2, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 14, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 15, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 15, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 17, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 23, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 16, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_teacher
-- ----------------------------
DROP TABLE IF EXISTS `b_teacher`;
CREATE TABLE `b_teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_teacher
-- ----------------------------
INSERT INTO `b_teacher` VALUES (1, '刘德华', '男', '35', 'cover/1719221940813.jpeg', '擅长指导客户正确的训练姿势、动作技巧和训练强度，确保客户在训练过程中正确并安全地进行各项运动。', '2024-06-24 17:35:30.541789');
INSERT INTO `b_teacher` VALUES (2, '王大力', '男', '32', 'cover/1719221899649.jpeg', '擅长根据个人的健身目标、体质状况和健康状况，设计符合个体需求的健身计划。', '2024-06-24 17:38:24.574580');
INSERT INTO `b_teacher` VALUES (3, '武松22', '男', '21', 'cover/1719221913638.jpeg', '擅长指导客户正确的训练姿势、动作技巧和训练强度，确保客户在训练过程中正确并安全地进行各项运动。', '2024-06-24 17:38:37.799632');
INSERT INTO `b_teacher` VALUES (4, '史泰龙', '男', '25', 'cover/1719221924899.jpeg', '擅长根据个人的健身目标、体质状况和健康状况，设计符合个体需求的健身计划。', '2024-06-24 17:38:52.241441');
INSERT INTO `b_teacher` VALUES (5, '王大猛', '男', '32', 'cover/1719221955364.jpeg', '擅长指导客户正确的训练姿势、动作技巧和训练强度，确保客户在训练过程中正确并安全地进行各项运动。', '2024-06-24 17:39:20.878700');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `shiyong` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xiaoguo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_thing_teacher_id_f9897aad_fk_b_teacher_id`(`teacher_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_teacher_id_f9897aad_fk_b_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `b_teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '测试课程', 'cover/1719404785972.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '初级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (14, '体型塑形课程', 'cover/1719405208808.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '中级', '0', '2024-06-26 15:20:00.273689', 15, 0, 2, 1, 4, NULL, 3, '青年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (15, '减肥课程22', 'cover/1719405214283.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '121', '初级', '0', '2024-06-26 15:20:00.273689', 20, 0, 2, 2, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (16, '测试课程222', 'cover/1719405221728.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '中级', '0', '2024-06-26 15:20:00.273689', 14, 0, 1, 1, 3, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (17, '美女减肥课程', 'cover/1719405230875.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '初级', '0', '2024-06-26 15:20:00.273689', 14, 0, 1, 1, 2, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (18, '肌肉练习课程', 'cover/1719405237489.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '56', '初级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (19, '测试课程33', 'cover/1719405243920.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '高级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 1, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (20, '测试课程44', 'cover/1719405250157.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '99', '初级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (21, '测试课程55', 'cover/1719405256363.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '289', '初级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (22, '测试课程66', 'cover/1719405261841.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '99', '初级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 4, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (23, '下肢肌肉练习训练', 'cover/1719405271973.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '65', '高级', '0', '2024-06-26 15:20:00.273689', 14, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);
INSERT INTO `b_thing` VALUES (24, '腹部肌肉练习课程', 'cover/1719405278830.jpeg', '健身课程是专门设计用于提高体能水平、增强肌肉力量、改善心肺功能、塑造身材和提高健康水平的课程。这些课程通常由经过专业培训的健身教练或专家设计和指导，旨在帮助参与者达到他们的健身目标。\r\n\r\n以下是一些常见的健身课程类型简介：\r\n\r\n1. 有氧运动课程：包括有氧健身操、有氧舞蹈、有氧循环、有氧普拉提等，通过持续的有氧运动来提高心肺功能，燃烧脂肪并增强体能。\r\n\r\n2. 力量训练课程：包括举重、器械训练、体能训练等，旨在增强肌肉力量、耐力和体能，并帮助雕塑身体线条。\r\n\r\n3. 高强度间歇训练（HIIT）课程：结合高强度的爆发性运动和短暂的休息，以提高代谢率、燃烧脂肪并增强心肺功能。\r\n\r\n4. 瑜伽课程：包括不同类型如哈达瑜伽、阿斯汤伽、流瑜伽等，通过体式练习、呼吸调控和冥想来增强体魄、柔韧性和平衡能力。\r\n\r\n5. 普拉提课程：通过肌肉控制、呼吸和姿势练习来强化核心肌群、改善体态和灵活性。\r\n\r\n以上是健身课程的一些常见类型，每种课程都有不同的训练效果和目标，适合不同类型人群和健身需求。在选择健身课程时，可以根据自己的身体状况、健身目标和个人偏好来选择适合自己的课程类型，并在专业教练的指导下进行训练，以获得最佳的健身效果。', '88', '高级', '0', '2024-06-26 15:20:00.273689', 13, 0, 1, 1, 5, NULL, 3, '中年人', '减肥、塑形', 5);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (2, 2, 3);
INSERT INTO `b_thing_collect` VALUES (3, 15, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 2, 3);
INSERT INTO `b_thing_wish` VALUES (3, 14, 4);
INSERT INTO `b_thing_wish` VALUES (4, 15, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-26 15:14:58.777458', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-26 15:45:44.146774', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'eee', 'd2f2297d6e829cd3493aa7de4416a18f', '2', '0', 'aaas', 'avatar/1719405489606.png', '133333', NULL, NULL, NULL, '2024-06-26 20:35:15.357908', 0, NULL, 0, NULL, 'd2f2297d6e829cd3493aa7de4416a18f');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'qicai');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'teacher');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-21 17:26:21.236570');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-21 17:26:21.566247');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-21 17:26:21.644763');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-21 17:26:21.644763');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-21 17:26:21.660441');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-21 17:26:21.729526');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-21 17:26:21.770278');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-21 17:26:21.817164');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-21 17:26:21.833263');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-21 17:26:21.864554');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-21 17:26:21.880149');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-21 17:26:21.880149');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-21 17:26:21.930127');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-21 17:26:21.974424');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-21 17:26:22.030404');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-21 17:26:22.037687');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-21 17:26:22.084582');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-21 17:26:23.058633');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-21 17:26:23.105534');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-21 17:26:23.278370');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-21 17:26:23.372661');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240518_1018', '2024-06-21 17:26:23.561066');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_auto_20240519_1116', '2024-06-21 17:26:23.671362');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20240621_1726', '2024-06-21 17:26:23.938993');
INSERT INTO `django_migrations` VALUES (25, 'sessions', '0001_initial', '2024-06-21 17:26:23.996351');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost-MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : smart_hotel

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 15/12/2022 01:08:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (9, 'Can add content type', 3, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (10, 'Can change content type', 3, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can view content type', 3, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add level', 4, 'add_level');
INSERT INTO `auth_permission` VALUES (14, 'Can change level', 4, 'change_level');
INSERT INTO `auth_permission` VALUES (15, 'Can delete level', 4, 'delete_level');
INSERT INTO `auth_permission` VALUES (16, 'Can view level', 4, 'view_level');
INSERT INTO `auth_permission` VALUES (17, 'Can add user', 5, 'add_user');
INSERT INTO `auth_permission` VALUES (18, 'Can change user', 5, 'change_user');
INSERT INTO `auth_permission` VALUES (19, 'Can delete user', 5, 'delete_user');
INSERT INTO `auth_permission` VALUES (20, 'Can view user', 5, 'view_user');
INSERT INTO `auth_permission` VALUES (21, 'Can add floor', 6, 'add_floor');
INSERT INTO `auth_permission` VALUES (22, 'Can change floor', 6, 'change_floor');
INSERT INTO `auth_permission` VALUES (23, 'Can delete floor', 6, 'delete_floor');
INSERT INTO `auth_permission` VALUES (24, 'Can view floor', 6, 'view_floor');
INSERT INTO `auth_permission` VALUES (25, 'Can add free room', 7, 'add_freeroom');
INSERT INTO `auth_permission` VALUES (26, 'Can change free room', 7, 'change_freeroom');
INSERT INTO `auth_permission` VALUES (27, 'Can delete free room', 7, 'delete_freeroom');
INSERT INTO `auth_permission` VALUES (28, 'Can view free room', 7, 'view_freeroom');
INSERT INTO `auth_permission` VALUES (29, 'Can add room', 8, 'add_room');
INSERT INTO `auth_permission` VALUES (30, 'Can change room', 8, 'change_room');
INSERT INTO `auth_permission` VALUES (31, 'Can delete room', 8, 'delete_room');
INSERT INTO `auth_permission` VALUES (32, 'Can view room', 8, 'view_room');
INSERT INTO `auth_permission` VALUES (33, 'Can add level', 9, 'add_level');
INSERT INTO `auth_permission` VALUES (34, 'Can change level', 9, 'change_level');
INSERT INTO `auth_permission` VALUES (35, 'Can delete level', 9, 'delete_level');
INSERT INTO `auth_permission` VALUES (36, 'Can view level', 9, 'view_level');
INSERT INTO `auth_permission` VALUES (37, 'Can add customer', 10, 'add_customer');
INSERT INTO `auth_permission` VALUES (38, 'Can change customer', 10, 'change_customer');
INSERT INTO `auth_permission` VALUES (39, 'Can delete customer', 10, 'delete_customer');
INSERT INTO `auth_permission` VALUES (40, 'Can view customer', 10, 'view_customer');
INSERT INTO `auth_permission` VALUES (41, 'Can add income', 11, 'add_income');
INSERT INTO `auth_permission` VALUES (42, 'Can change income', 11, 'change_income');
INSERT INTO `auth_permission` VALUES (43, 'Can delete income', 11, 'delete_income');
INSERT INTO `auth_permission` VALUES (44, 'Can view income', 11, 'view_income');
INSERT INTO `auth_permission` VALUES (45, 'Can add order', 12, 'add_order');
INSERT INTO `auth_permission` VALUES (46, 'Can change order', 12, 'change_order');
INSERT INTO `auth_permission` VALUES (47, 'Can delete order', 12, 'delete_order');
INSERT INTO `auth_permission` VALUES (48, 'Can view order', 12, 'view_order');
INSERT INTO `auth_permission` VALUES (49, 'Can add comment count', 13, 'add_commentcount');
INSERT INTO `auth_permission` VALUES (50, 'Can change comment count', 13, 'change_commentcount');
INSERT INTO `auth_permission` VALUES (51, 'Can delete comment count', 13, 'delete_commentcount');
INSERT INTO `auth_permission` VALUES (52, 'Can view comment count', 13, 'view_commentcount');
INSERT INTO `auth_permission` VALUES (53, 'Can add comment', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change comment', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete comment', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view comment', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add session', 15, 'add_session');
INSERT INTO `auth_permission` VALUES (58, 'Can change session', 15, 'change_session');
INSERT INTO `auth_permission` VALUES (59, 'Can delete session', 15, 'delete_session');
INSERT INTO `auth_permission` VALUES (60, 'Can view session', 15, 'view_session');
INSERT INTO `auth_permission` VALUES (61, 'Can add customer count', 16, 'add_customercount');
INSERT INTO `auth_permission` VALUES (62, 'Can change customer count', 16, 'change_customercount');
INSERT INTO `auth_permission` VALUES (63, 'Can delete customer count', 16, 'delete_customercount');
INSERT INTO `auth_permission` VALUES (64, 'Can view customer count', 16, 'view_customercount');

-- ----------------------------
-- Table structure for comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` smallint NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `customer_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_comment_customer_id_b1f5d181_fk_customer_customer_id`(`customer_id`) USING BTREE,
  INDEX `comment_comment_room_id_f818584a_fk_room_room_id`(`room_id`) USING BTREE,
  CONSTRAINT `comment_comment_customer_id_b1f5d181_fk_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_room_id_f818584a_fk_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------
INSERT INTO `comment_comment` VALUES (1, '还行，挺好的', 4, '2022-12-13 11:24:52.166328', 6, 2);
INSERT INTO `comment_comment` VALUES (7, '洋洋1231223123216767678', 3, '2022-12-14 03:31:48.301208', 12, 3);
INSERT INTO `comment_comment` VALUES (8, '啊啊啊', 1, '2022-12-14 07:08:18.889140', 17, 7);

-- ----------------------------
-- Table structure for comment_commentcount
-- ----------------------------
DROP TABLE IF EXISTS `comment_commentcount`;
CREATE TABLE `comment_commentcount`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `good` int NOT NULL,
  `medium` int NOT NULL,
  `bad` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_commentcount
-- ----------------------------
INSERT INTO `comment_commentcount` VALUES (1, 1, 1, 1);

-- ----------------------------
-- Table structure for customer_customer
-- ----------------------------
DROP TABLE IF EXISTS `customer_customer`;
CREATE TABLE `customer_customer`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `gender` smallint NOT NULL,
  `phone_num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_time` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `level_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `customer_customer_level_id_bf745067_fk_customer_level_id`(`level_id`) USING BTREE,
  CONSTRAINT `customer_customer_level_id_bf745067_fk_customer_level_id` FOREIGN KEY (`level_id`) REFERENCES `customer_level` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_customer
-- ----------------------------
INSERT INTO `customer_customer` VALUES (1, '小明', 18, 1, '13923430927', 'xiaoming@hrbeu.edu.cn', '2022-12-13 17:35:49.799634', '2022-12-13 07:53:46.423428', 1);
INSERT INTO `customer_customer` VALUES (2, '小红', 19, 2, '17623451234', 'xiaohong@qq.com', '2022-12-13 07:54:25.654448', '2022-12-13 07:54:25.654448', 1);
INSERT INTO `customer_customer` VALUES (3, '小刚', 21, 1, '13846612354', 'xiaogang@sina.com', '2022-12-13 07:56:33.610574', '2022-12-13 07:56:33.610574', 1);
INSERT INTO `customer_customer` VALUES (4, '小丽', 20, 2, '18842389198', 'xiaoli@gmail.com', '2022-12-13 07:57:16.110988', '2022-12-13 07:57:16.110988', 3);
INSERT INTO `customer_customer` VALUES (5, '小王', 23, 1, '18234567879', 'xiaowang@hit.edu.cn', '2022-12-13 07:59:32.518190', '2022-12-13 07:59:32.518190', 1);
INSERT INTO `customer_customer` VALUES (6, '小张', 22, 1, '13620874978', 'xiaozhang@hrbeu.edu.cn', '2022-12-13 11:18:12.434730', '2022-12-13 08:00:08.576112', 1);
INSERT INTO `customer_customer` VALUES (7, 'Mike', 24, 1, '19832364728', 'mikeloveyou@gmail.com', '2022-12-13 08:01:34.323998', '2022-12-13 08:01:34.323998', 1);
INSERT INTO `customer_customer` VALUES (8, 'Lily', 21, 2, '15290765217', 'pretty_lily@gmail.com', '2022-12-13 08:02:14.542691', '2022-12-13 08:02:14.542691', 1);
INSERT INTO `customer_customer` VALUES (12, 'xin2', 19, 2, '123123', '123123', '2022-12-14 06:58:30.799953', '2022-12-13 18:24:06.000857', 2);
INSERT INTO `customer_customer` VALUES (17, '洋洋', 20, 1, '6666', '66667777', '2022-12-14 06:54:36.249658', '2022-12-14 04:07:05.502021', 3);

-- ----------------------------
-- Table structure for customer_customercount
-- ----------------------------
DROP TABLE IF EXISTS `customer_customercount`;
CREATE TABLE `customer_customercount`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_customercount
-- ----------------------------
INSERT INTO `customer_customercount` VALUES (1, 10);

-- ----------------------------
-- Table structure for customer_level
-- ----------------------------
DROP TABLE IF EXISTS `customer_level`;
CREATE TABLE `customer_level`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` smallint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_level
-- ----------------------------
INSERT INTO `customer_level` VALUES (1, 1);
INSERT INTO `customer_level` VALUES (2, 2);
INSERT INTO `customer_level` VALUES (3, 3);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (14, 'comment', 'comment');
INSERT INTO `django_content_type` VALUES (13, 'comment', 'commentcount');
INSERT INTO `django_content_type` VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'customer', 'customer');
INSERT INTO `django_content_type` VALUES (16, 'customer', 'customercount');
INSERT INTO `django_content_type` VALUES (9, 'customer', 'level');
INSERT INTO `django_content_type` VALUES (11, 'order', 'income');
INSERT INTO `django_content_type` VALUES (12, 'order', 'order');
INSERT INTO `django_content_type` VALUES (6, 'room', 'floor');
INSERT INTO `django_content_type` VALUES (7, 'room', 'freeroom');
INSERT INTO `django_content_type` VALUES (8, 'room', 'room');
INSERT INTO `django_content_type` VALUES (15, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (4, 'user', 'level');
INSERT INTO `django_content_type` VALUES (5, 'user', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'room', '0001_initial', '2022-12-12 15:49:31.573002');
INSERT INTO `django_migrations` VALUES (2, 'customer', '0001_initial', '2022-12-12 15:49:52.971707');
INSERT INTO `django_migrations` VALUES (3, 'order', '0001_initial', '2022-12-12 15:50:12.792296');
INSERT INTO `django_migrations` VALUES (4, 'comment', '0001_initial', '2022-12-12 15:50:31.821590');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0001_initial', '2022-12-12 15:50:48.984099');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-12-12 15:50:49.010099');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0001_initial', '2022-12-12 15:50:49.118224');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2022-12-12 15:50:49.141223');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2022-12-12 15:50:49.146225');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2022-12-12 15:50:49.151224');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2022-12-12 15:50:49.155226');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2022-12-12 15:50:49.157223');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2022-12-12 15:50:49.162224');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2022-12-12 15:50:49.166225');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2022-12-12 15:50:49.171225');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2022-12-12 15:50:49.182225');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2022-12-12 15:50:49.192225');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2022-12-12 15:50:49.197225');
INSERT INTO `django_migrations` VALUES (19, 'user', '0001_initial', '2022-12-12 15:50:49.347224');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2022-12-12 15:52:39.668403');
INSERT INTO `django_migrations` VALUES (21, 'customer', '0002_alter_customer_email', '2022-12-13 07:45:08.997256');
INSERT INTO `django_migrations` VALUES (22, 'order', '0002_alter_order_pay', '2022-12-13 09:24:51.453198');
INSERT INTO `django_migrations` VALUES (23, 'customer', '0003_customercount', '2022-12-13 09:54:57.018190');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for order_income
-- ----------------------------
DROP TABLE IF EXISTS `order_income`;
CREATE TABLE `order_income`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total` decimal(6, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_income
-- ----------------------------
INSERT INTO `order_income` VALUES (1, 340.00);

-- ----------------------------
-- Table structure for order_order
-- ----------------------------
DROP TABLE IF EXISTS `order_order`;
CREATE TABLE `order_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pay` decimal(6, 2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `customer_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_order_customer_id_5bbbd957_fk_customer_customer_id`(`customer_id`) USING BTREE,
  INDEX `order_order_room_id_f254c8a5_fk_room_room_id`(`room_id`) USING BTREE,
  CONSTRAINT `order_order_customer_id_5bbbd957_fk_customer_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_order_room_id_f254c8a5_fk_room_room_id` FOREIGN KEY (`room_id`) REFERENCES `room_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_order
-- ----------------------------
INSERT INTO `order_order` VALUES (5, 80.00, '2022-12-13 09:30:09.011546', 1, 1);
INSERT INTO `order_order` VALUES (6, 100.00, '2022-12-13 09:30:16.012486', 1, 6);
INSERT INTO `order_order` VALUES (7, 160.00, '2022-12-13 09:34:03.503710', 6, 11);

-- ----------------------------
-- Table structure for room_floor
-- ----------------------------
DROP TABLE IF EXISTS `room_floor`;
CREATE TABLE `room_floor`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` smallint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_floor
-- ----------------------------
INSERT INTO `room_floor` VALUES (1, 1);
INSERT INTO `room_floor` VALUES (2, 2);
INSERT INTO `room_floor` VALUES (3, 3);
INSERT INTO `room_floor` VALUES (4, 4);
INSERT INTO `room_floor` VALUES (5, 5);

-- ----------------------------
-- Table structure for room_freeroom
-- ----------------------------
DROP TABLE IF EXISTS `room_freeroom`;
CREATE TABLE `room_freeroom`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_freeroom
-- ----------------------------
INSERT INTO `room_freeroom` VALUES (1, 12);
INSERT INTO `room_freeroom` VALUES (2, 17);

-- ----------------------------
-- Table structure for room_room
-- ----------------------------
DROP TABLE IF EXISTS `room_room`;
CREATE TABLE `room_room`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `space` smallint NOT NULL,
  `is_hotwater` smallint NOT NULL,
  `is_computer` smallint NOT NULL,
  `is_used` smallint NOT NULL,
  `value` decimal(5, 2) NOT NULL,
  `floor_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `room_room_floor_id_72247ec5_fk_room_floor_id`(`floor_id`) USING BTREE,
  CONSTRAINT `room_room_floor_id_72247ec5_fk_room_floor_id` FOREIGN KEY (`floor_id`) REFERENCES `room_floor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_room
-- ----------------------------
INSERT INTO `room_room` VALUES (1, '101', 1, 1, 0, 1, 80.00, 1);
INSERT INTO `room_room` VALUES (2, '102', 2, 0, 0, 0, 120.00, 1);
INSERT INTO `room_room` VALUES (3, '103', 1, 1, 0, 0, 110.00, 1);
INSERT INTO `room_room` VALUES (4, '104', 1, 1, 1, 0, 150.00, 1);
INSERT INTO `room_room` VALUES (5, '105', 2, 1, 1, 0, 150.00, 1);
INSERT INTO `room_room` VALUES (6, '201', 1, 1, 1, 1, 100.00, 2);
INSERT INTO `room_room` VALUES (7, '202', 2, 1, 0, 0, 130.00, 2);
INSERT INTO `room_room` VALUES (8, '203', 3, 1, 0, 0, 180.00, 2);
INSERT INTO `room_room` VALUES (9, '204', 1, 1, 1, 0, 150.00, 2);
INSERT INTO `room_room` VALUES (10, '205', 2, 0, 1, 0, 170.00, 2);
INSERT INTO `room_room` VALUES (11, '301', 1, 1, 1, 1, 160.00, 3);
INSERT INTO `room_room` VALUES (12, '302', 2, 1, 0, 0, 140.00, 3);
INSERT INTO `room_room` VALUES (13, '303', 2, 1, 1, 0, 190.00, 3);
INSERT INTO `room_room` VALUES (14, '304', 3, 1, 1, 0, 230.00, 3);
INSERT INTO `room_room` VALUES (15, '305', 4, 1, 1, 0, 320.00, 3);
INSERT INTO `room_room` VALUES (16, '401', 1, 1, 1, 0, 320.00, 4);
INSERT INTO `room_room` VALUES (17, '402', 1, 1, 1, 0, 320.00, 4);

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` smallint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES (1, 1);
INSERT INTO `user_level` VALUES (2, 2);

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `level_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `user_user_level_id_8726023b_fk_user_level_id`(`level_id`) USING BTREE,
  CONSTRAINT `user_user_level_id_8726023b_fk_user_level_id` FOREIGN KEY (`level_id`) REFERENCES `user_level` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES (1, 'pbkdf2_sha256$390000$i3xfxTieAYfjyB8qXx13HG$rp2XCNEUQvAWYgdtoldz38rneuGbzxOyNi29fNra8TM=', NULL, 0, 'admin', '', '', '', 0, 1, '2022-12-14 11:28:26.493073', 1);
INSERT INTO `user_user` VALUES (2, 'pbkdf2_sha256$390000$Xfx8QeQABxZvkDc4Phzt2d$f+JqwHXRCef3Sbe2mhB8AIViuNoGhs5e44pvdvNzlVs=', NULL, 0, 'root', '', '', '', 0, 1, '2022-12-14 11:28:37.694018', 1);

-- ----------------------------
-- Table structure for user_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_user_groups`;
CREATE TABLE `user_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_user_groups_user_id_group_id_bb60391f_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `user_user_groups_group_id_c57f13c0_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for user_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_user_user_permissions`;
CREATE TABLE `user_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_insert1`;
delimiter ;;
CREATE TRIGGER `comment_trigger_insert1` AFTER INSERT ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET good=good+1 WHERE id=1 AND new.star IN(4,5)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_insert2`;
delimiter ;;
CREATE TRIGGER `comment_trigger_insert2` AFTER INSERT ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET `medium`=`medium`+1 WHERE id=1 AND new.star=3
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_insert3`;
delimiter ;;
CREATE TRIGGER `comment_trigger_insert3` AFTER INSERT ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET bad=bad+1 WHERE id=1 AND new.star IN(1,2)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_delete1`;
delimiter ;;
CREATE TRIGGER `comment_trigger_delete1` AFTER DELETE ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET good=good-1 WHERE id=1 AND old.star IN(4,5)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_delete2`;
delimiter ;;
CREATE TRIGGER `comment_trigger_delete2` AFTER DELETE ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET `medium`=`medium`-1 WHERE id=1 AND old.star=3
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_delete3`;
delimiter ;;
CREATE TRIGGER `comment_trigger_delete3` AFTER DELETE ON `comment_comment` FOR EACH ROW UPDATE comment_commentcount SET bad=bad-1 WHERE id=1 AND old.star IN(1,2)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_modify1`;
delimiter ;;
CREATE TRIGGER `comment_trigger_modify1` AFTER UPDATE ON `comment_comment` FOR EACH ROW BEGIN
IF new.star IN(1,2) THEN 
UPDATE comment_commentcount 
SET bad=bad+1;
END IF;
IF new.star=3 THEN 
UPDATE comment_commentcount 
SET `medium`=`medium`+1;
END IF;
IF new.star IN(4,5) THEN 
UPDATE comment_commentcount 
SET good=good+1;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table comment_comment
-- ----------------------------
DROP TRIGGER IF EXISTS `comment_trigger_modify2`;
delimiter ;;
CREATE TRIGGER `comment_trigger_modify2` AFTER UPDATE ON `comment_comment` FOR EACH ROW BEGIN
IF old.star IN(1,2) THEN 
UPDATE comment_commentcount 
SET bad=bad-1;
END IF;
IF old.star=3 THEN 
UPDATE comment_commentcount 
SET `medium`=`medium`-1;
END IF;
IF old.star IN(4,5) THEN 
UPDATE comment_commentcount 
SET good=good-1;
END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table customer_customer
-- ----------------------------
DROP TRIGGER IF EXISTS `customer_insert_trigger`;
delimiter ;;
CREATE TRIGGER `customer_insert_trigger` AFTER INSERT ON `customer_customer` FOR EACH ROW UPDATE customer_customercount SET count=count+1 WHERE id=1
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table customer_customer
-- ----------------------------
DROP TRIGGER IF EXISTS `customer_delete_trigger`;
delimiter ;;
CREATE TRIGGER `customer_delete_trigger` AFTER DELETE ON `customer_customer` FOR EACH ROW UPDATE customer_customercount SET count=count-1 WHERE id=1
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table order_order
-- ----------------------------
DROP TRIGGER IF EXISTS `order_trigger_insert`;
delimiter ;;
CREATE TRIGGER `order_trigger_insert` AFTER INSERT ON `order_order` FOR EACH ROW UPDATE order_income SET total=total+new.pay WHERE id=1
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table order_order
-- ----------------------------
DROP TRIGGER IF EXISTS `order_trigger_delete`;
delimiter ;;
CREATE TRIGGER `order_trigger_delete` AFTER DELETE ON `order_order` FOR EACH ROW UPDATE order_income SET total=total-old.pay WHERE id=1
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table order_order
-- ----------------------------
DROP TRIGGER IF EXISTS `order_tridder_update`;
delimiter ;;
CREATE TRIGGER `order_tridder_update` AFTER UPDATE ON `order_order` FOR EACH ROW UPDATE order_income SET total=total-old.pay+new.pay WHERE id=1
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table order_order
-- ----------------------------
DROP TRIGGER IF EXISTS `order_trigger_delete1`;
delimiter ;;
CREATE TRIGGER `order_trigger_delete1` AFTER DELETE ON `order_order` FOR EACH ROW UPDATE room_room SET is_used=0 WHERE id=old.room_id
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table order_order
-- ----------------------------
DROP TRIGGER IF EXISTS `order_room_trigger`;
delimiter ;;
CREATE TRIGGER `order_room_trigger` AFTER UPDATE ON `order_order` FOR EACH ROW UPDATE room_room SET is_used=0 WHERE id=old.room_id
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table room_room
-- ----------------------------
DROP TRIGGER IF EXISTS `room_insert_trigger`;
delimiter ;;
CREATE TRIGGER `room_insert_trigger` AFTER INSERT ON `room_room` FOR EACH ROW UPDATE room_freeroom SET count=count+1 WHERE id IN(1,2)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table room_room
-- ----------------------------
DROP TRIGGER IF EXISTS `room_update_trigger1`;
delimiter ;;
CREATE TRIGGER `room_update_trigger1` AFTER UPDATE ON `room_room` FOR EACH ROW UPDATE room_freeroom SET count=count+1 WHERE id=1 AND new.is_used=0
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table room_room
-- ----------------------------
DROP TRIGGER IF EXISTS `room_update_trigger2`;
delimiter ;;
CREATE TRIGGER `room_update_trigger2` AFTER UPDATE ON `room_room` FOR EACH ROW UPDATE room_freeroom SET count=count-1 WHERE id=1 AND new.is_used=1
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;

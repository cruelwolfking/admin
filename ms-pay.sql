/*
 Navicat Premium Data Transfer

 Source Server         : brew_mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : ms-pay

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 21/05/2020 03:28:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_config
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站点名称',
  `seo_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关键字',
  `seo_desc` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `pc_logo` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pcLogo',
  `mobile_logo` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机LOGO',
  `conact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `kefu` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '客服地址',
  `sms_acount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信账户',
  `sms_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短信密钥',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `setting_name_unique` (`seo_title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_config
-- ----------------------------
BEGIN;
INSERT INTO `admin_config` VALUES (1, '麻瓜视频', '天下看', '站点名称', 'uploads/pc_logo1587138637.jpg', NULL, '1235546', 'http://imv2.cbddxe.com/service?app_id=drsGA9YfHhKRujKHdVwe68Tk&k=bykFXXtQUei2WONNpbvs&m=eb3eaf715af4e267557a5725c8934dcfdeb9c000137d6865d70bb7c542fba89b6195b34f09200ffa6c86653b9d9a51909f6e71d94f6cfe2fde6dce6f741b16727fbb744bf3ae8158677954fe561b50&to_user_id=null&actionType=local', NULL, NULL, '2020-05-16 16:27:41', '2020-05-16 16:27:41');
COMMIT;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'feather icon-settings', NULL, '2020-05-15 18:39:24', '2020-05-19 00:55:32');
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', '', 'auth/users', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', '', 'auth/roles', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', '', 'auth/permissions', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', '', 'auth/menu', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', '', 'auth/logs', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 9, '商户管理', 'fa-address-book', 'adminUser', '2020-05-16 13:47:21', '2020-05-20 01:23:07');
INSERT INTO `admin_menu` VALUES (9, 0, 10, '码商管理', 'fa-address-book-o', 'server', '2020-05-19 00:31:04', '2020-05-20 01:23:07');
INSERT INTO `admin_menu` VALUES (11, 0, 13, '我的服务商', 'fa-address-book-o', 'servers', '2020-05-19 00:59:53', '2020-05-19 01:07:49');
INSERT INTO `admin_menu` VALUES (12, 0, 14, '卖分记录', 'fa-book', 'giveLogs', '2020-05-19 01:00:44', '2020-05-19 01:07:49');
INSERT INTO `admin_menu` VALUES (13, 0, 15, '订单记录', 'fa-paste', 'orders', '2020-05-19 01:01:22', '2020-05-19 01:07:49');
INSERT INTO `admin_menu` VALUES (14, 0, 11, '我的平台', 'fa-cogs', 'merchant-plats', '2020-05-19 01:03:31', '2020-05-20 01:23:07');
INSERT INTO `admin_menu` VALUES (15, 0, 12, '服务商列表', 'fa-address-card-o', 'server-list', '2020-05-19 01:07:41', '2020-05-19 01:07:49');
INSERT INTO `admin_menu` VALUES (16, 0, 16, '买分记录', 'fa-book', 'bugRecord', '2020-05-19 01:17:30', '2020-05-19 01:17:30');
INSERT INTO `admin_menu` VALUES (17, 0, 17, '支付配置', 'fa-wrench', 'payment', '2020-05-19 01:18:20', '2020-05-20 01:21:40');
INSERT INTO `admin_menu` VALUES (18, 0, 18, '聊天窗口', 'fa-weixin', 'chat', '2020-05-19 01:19:04', '2020-05-19 01:19:04');
INSERT INTO `admin_menu` VALUES (19, 0, 8, '平台列表', 'fa-server', 'plats', '2020-05-20 01:22:56', '2020-05-20 01:23:07');
COMMIT;

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-15 18:39:53', '2020-05-15 18:39:53');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"pqpxSmtjiP00aRxXvhQNEfDpowiMI0jvdFDKMrHU\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-15 18:39:57', '2020-05-15 18:39:57');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-15 18:39:58', '2020-05-15 18:39:58');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-16 02:40:17', '2020-05-16 02:40:17');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 02:40:22', '2020-05-16 02:40:22');
INSERT INTO `admin_operation_log` VALUES (6, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-16 13:19:57', '2020-05-16 13:19:57');
INSERT INTO `admin_operation_log` VALUES (7, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YY1l7MwhT74ECuSitlWSiNxPlAuWo5gnlMy6MAhV\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-16 13:20:05', '2020-05-16 13:20:05');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-16 13:20:06', '2020-05-16 13:20:06');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:10', '2020-05-16 13:20:10');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-16 13:20:12', '2020-05-16 13:20:12');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\",\"permissions\":null,\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-05-16 13:20:23', '2020-05-16 13:20:23');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:23', '2020-05-16 13:20:23');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:23', '2020-05-16 13:20:23');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-16 13:20:25', '2020-05-16 13:20:25');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"slug\":\"server\",\"name\":\"\\u670d\\u52a1\\u5546\",\"permissions\":null,\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-05-16 13:20:40', '2020-05-16 13:20:40');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:40', '2020-05-16 13:20:40');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:40', '2020-05-16 13:20:40');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-16 13:20:45', '2020-05-16 13:20:45');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"slug\":\"administrator\",\"name\":\"\\u5e73\\u53f0\\u7ba1\\u7406\",\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-05-16 13:20:56', '2020-05-16 13:20:56');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:56', '2020-05-16 13:20:56');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:20:56', '2020-05-16 13:20:56');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:21:02', '2020-05-16 13:21:02');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"ms-pay\",\"tb\":\"admin_users\",\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\"}', '2020-05-16 13:22:45', '2020-05-16 13:22:45');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"admin_users\"}', '2020-05-16 13:22:46', '2020-05-16 13:22:46');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"admin_users\",\"exist-table\":\"ms-pay|admin_users\",\"model_name\":\"App\\\\Models\\\\AdminUser\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\AdminUserController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"username\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u8d26\\u6237\"},{\"name\":\"password\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5bc6\\u7801\"},{\"name\":\"name\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u6635\\u79f0\"},{\"name\":\"avatar\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5934\\u50cf\"},{\"name\":\"remember_token\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"amount\",\"translation\":null,\"type\":\"decimal\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u4f59\\u989d\"},{\"name\":\"havedJoin\",\"translation\":null,\"type\":\"integer\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u662f\\u5426\\u5df2\\u7f34\\u7eb3\\u4fdd\\u8bc1\\u91d1\"},{\"name\":\"join_money\",\"translation\":null,\"type\":\"string\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u7f34\\u7eb3\\u91d1\\u989d\"},{\"name\":\"rate\",\"translation\":null,\"type\":\"float\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u8d39\\u7387\"},{\"name\":\"join_type\",\"translation\":null,\"type\":\"tinyInteger\",\"key\":null,\"default\":\"1\",\"comment\":\"\\u6263\\u8d39\\u65b9\\u5f0f1\\u8d39\\u7387\\uff0c2\\u6708\\u4ed8\"},{\"name\":\"expire_time\",\"translation\":null,\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u8fc7\\u671f\\u65f6\\u95f4\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"soft_deletes\":\"1\",\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\"}', '2020-05-16 13:31:56', '2020-05-16 13:31:56');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-16 13:31:57', '2020-05-16 13:31:57');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:32:58', '2020-05-16 13:32:58');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:33:05', '2020-05-16 13:33:05');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '[]', '2020-05-16 13:46:36', '2020-05-16 13:46:36');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:46:39', '2020-05-16 13:46:39');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5546\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-address-book\",\"uri\":\"adminUser\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\"}', '2020-05-16 13:47:21', '2020-05-16 13:47:21');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:47:22', '2020-05-16 13:47:22');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-16 13:47:24', '2020-05-16 13:47:24');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:47:26', '2020-05-16 13:47:26');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:47:26', '2020-05-16 13:47:26');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:47:49', '2020-05-16 13:47:49');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:48:14', '2020-05-16 13:48:14');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:48:32', '2020-05-16 13:48:32');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:49:49', '2020-05-16 13:49:49');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:50:03', '2020-05-16 13:50:03');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:50:32', '2020-05-16 13:50:32');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:50:34', '2020-05-16 13:50:34');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:50:34', '2020-05-16 13:50:34');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:51:25', '2020-05-16 13:51:25');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:55:10', '2020-05-16 13:55:10');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:55:33', '2020-05-16 13:55:33');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:55:34', '2020-05-16 13:55:34');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:55:34', '2020-05-16 13:55:34');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-16 13:55:35', '2020-05-16 13:55:35');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:56:04', '2020-05-16 13:56:04');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/adminUser/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:56:20', '2020-05-16 13:56:20');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:56:35', '2020-05-16 13:56:35');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/adminUser/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 13:56:38', '2020-05-16 13:56:38');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"_id\":\"ggOqAftT6surBsQH\",\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"2020-04-30-07-28-23-5eaa7e177bcfe.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri May 15 2020 20:48:25 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"366230\"}', '2020-05-16 13:56:55', '2020-05-16 13:56:55');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"_id\":\"ggOqAftT6surBsQH\",\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"2020-04-30-07-28-23-5eaa7e177bcfe.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Fri May 15 2020 20:48:25 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"366230\"}', '2020-05-16 13:58:20', '2020-05-16 13:58:20');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"_id\":\"ggOqAftT6surBsQH\",\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"_method\":\"PUT\",\"avatar\":\"images\\/2020-04-30-07-28-23-5eaa7e177bcfe.png\"}', '2020-05-16 13:58:21', '2020-05-16 13:58:21');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:03:57', '2020-05-16 14:03:57');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/adminUser/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:04:00', '2020-05-16 14:04:00');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"avatar\":\"images\\/2020-04-30-07-28-23-5eaa7e177bcfe.png\",\"file-avatar\":null,\"_file_\":null,\"amount\":\"000000.00\",\"havedJoin\":\"0\",\"join_money\":null,\"rate\":\"0\",\"join_type\":\"1\",\"expire_time\":null,\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser\"}', '2020-05-16 14:04:13', '2020-05-16 14:04:13');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:04:13', '2020-05-16 14:04:13');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:04:15', '2020-05-16 14:04:15');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:04:16', '2020-05-16 14:04:16');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:04:45', '2020-05-16 14:04:45');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:05:08', '2020-05-16 14:05:08');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:06:15', '2020-05-16 14:06:15');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"_method\":\"PUT\",\"status\":\"1\"}', '2020-05-16 14:06:19', '2020-05-16 14:06:19');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/adminUser/1', 'PUT', '127.0.0.1', '{\"_token\":\"sa7ARQQreo2MpVJQFWcnyIEpCWgFpjkZ1leAbjG8\",\"_method\":\"PUT\",\"status\":\"0\"}', '2020-05-16 14:06:21', '2020-05-16 14:06:21');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:06:46', '2020-05-16 14:06:46');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:07:11', '2020-05-16 14:07:11');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/adminUser/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:12:26', '2020-05-16 14:12:26');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-16 14:12:47', '2020-05-16 14:12:47');
INSERT INTO `admin_operation_log` VALUES (72, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-18 21:09:56', '2020-05-18 21:09:56');
INSERT INTO `admin_operation_log` VALUES (73, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"13HWeYpWfSUajsEiOowHcBSlBdFazlwBxnfAKvcJ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-18 21:09:58', '2020-05-18 21:09:58');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-18 21:09:59', '2020-05-18 21:09:59');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:10:04', '2020-05-18 21:10:04');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/adminUser/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:10:10', '2020-05-18 21:10:10');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:10:14', '2020-05-18 21:10:14');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:10:15', '2020-05-18 21:10:15');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:10:18', '2020-05-18 21:10:18');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:15:05', '2020-05-18 21:15:05');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:15:28', '2020-05-18 21:15:28');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/adminUser/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:19:50', '2020-05-18 21:19:50');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/adminUser', 'POST', '127.0.0.1', '{\"_id\":\"oSU4c6K3IXbiUBZ8\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"upload_column\":\"avatar\",\"id\":\"WU_FILE_0\",\"name\":\"\\u7231\\u4fe1.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Mon Jul 29 2019 12:36:10 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"7480\"}', '2020-05-18 21:20:11', '2020-05-18 21:20:11');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/adminUser', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"name\":\"\\u6d4b\\u8bd5\\u5546\\u6237\",\"avatar\":\"images\\/\\u7231\\u4fe1.png\",\"file-avatar\":null,\"_file_\":null,\"amount\":\"0\",\"type\":\"merchant\",\"havedJoin\":\"0\",\"join_money\":\"0\",\"rate\":\"0\",\"join_type\":\"2\",\"expire_time\":\"2020-06-16 21:20:30\",\"password\":\"123******\",\"password_confirmation\":\"123******\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser\"}', '2020-05-18 21:20:40', '2020-05-18 21:20:40');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:20:40', '2020-05-18 21:20:40');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/adminUser/2', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"status\":\"1\"}', '2020-05-18 21:20:47', '2020-05-18 21:20:47');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:21:14', '2020-05-18 21:21:14');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/adminUser/2', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"status\":\"1\"}', '2020-05-18 21:21:17', '2020-05-18 21:21:17');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/adminUser/2', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"status\":\"0\"}', '2020-05-18 21:21:18', '2020-05-18 21:21:18');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:23:19', '2020-05-18 21:23:19');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:24:02', '2020-05-18 21:24:02');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 21:40:13', '2020-05-18 21:40:13');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 22:10:07', '2020-05-18 22:10:07');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/adminUser/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 22:33:45', '2020-05-18 22:33:45');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 22:33:47', '2020-05-18 22:33:47');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 22:33:49', '2020-05-18 22:33:49');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 22:34:10', '2020-05-18 22:34:10');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 22:34:12', '2020-05-18 22:34:12');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:08:34', '2020-05-18 23:08:34');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:08:54', '2020-05-18 23:08:54');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:09:56', '2020-05-18 23:09:56');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:09:57', '2020-05-18 23:09:57');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-18 23:15:06', '2020-05-18 23:15:06');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-18 23:15:57', '2020-05-18 23:15:57');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"target\":\"#show-current-user\",\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:16:00', '2020-05-18 23:16:00');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:16:00', '2020-05-18 23:16:00');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"target\":\"#show-current-user\",\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:16:02', '2020-05-18 23:16:02');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:16:02', '2020-05-18 23:16:02');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"target\":\"#show-current-user\",\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:16:49', '2020-05-18 23:16:49');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-18 23:16:52', '2020-05-18 23:16:52');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"target\":\"#show-current-user\",\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:16:54', '2020-05-18 23:16:54');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/adminUser/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:19:12', '2020-05-18 23:19:12');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:19:14', '2020-05-18 23:19:14');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:19:56', '2020-05-18 23:19:56');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:19:58', '2020-05-18 23:19:58');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"username\":\"merchant\",\"model\":\"App\\\\Models\\\\AdminUser\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_action\":\"App_Admin_RowActions_MerchantRearchge\",\"_key\":\"2\"}', '2020-05-18 23:20:06', '2020-05-18 23:20:06');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:20:20', '2020-05-18 23:20:20');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:26:23', '2020-05-18 23:26:23');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:26:24', '2020-05-18 23:26:24');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:33:28', '2020-05-18 23:33:28');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:34:17', '2020-05-18 23:34:17');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-18 23:34:20', '2020-05-18 23:34:20');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-19 00:04:07', '2020-05-19 00:04:07');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:14:25', '2020-05-19 00:14:25');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:16:27', '2020-05-19 00:16:27');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:16:35', '2020-05-19 00:16:35');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:17:10', '2020-05-19 00:17:10');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:17:33', '2020-05-19 00:17:33');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"1\",\"money\":\"100\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:20:21', '2020-05-19 00:20:21');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-19 00:20:28', '2020-05-19 00:20:28');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"100\",\"id\":\"2\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:20:35', '2020-05-19 00:20:35');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/adminUser', 'GET', '127.0.0.1', '[]', '2020-05-19 00:22:57', '2020-05-19 00:22:57');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1000\",\"id\":\"2\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:23:09', '2020-05-19 00:23:09');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"1000\",\"id\":\"2\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:23:25', '2020-05-19 00:23:25');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:23:26', '2020-05-19 00:23:26');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:23:36', '2020-05-19 00:23:36');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"recharge_type\":\"0\",\"money\":\"500\",\"id\":\"2\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\MerchantRecharge\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/adminUser?_pjax=%23pjax-container\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:23:51', '2020-05-19 00:23:51');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:23:51', '2020-05-19 00:23:51');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:24:01', '2020-05-19 00:24:01');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '[]', '2020-05-19 00:24:10', '2020-05-19 00:24:10');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:24:18', '2020-05-19 00:24:18');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:24:21', '2020-05-19 00:24:21');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:24:44', '2020-05-19 00:24:44');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:26:04', '2020-05-19 00:26:04');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:26:19', '2020-05-19 00:26:19');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/adminUser/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:26:55', '2020-05-19 00:26:55');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:26:59', '2020-05-19 00:26:59');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:27:49', '2020-05-19 00:27:49');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:28:12', '2020-05-19 00:28:12');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:28:14', '2020-05-19 00:28:14');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:28:29', '2020-05-19 00:28:29');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:29:34', '2020-05-19 00:29:34');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:29:57', '2020-05-19 00:29:57');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:30:45', '2020-05-19 00:30:45');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7801\\u5546\\u7ba1\\u7406\",\"icon\":\"fa-address-book-o\",\"uri\":\"server\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:31:04', '2020-05-19 00:31:04');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:31:04', '2020-05-19 00:31:04');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-19 00:31:06', '2020-05-19 00:31:06');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:31:08', '2020-05-19 00:31:08');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:31:59', '2020-05-19 00:31:59');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:51', '2020-05-19 00:33:51');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:52', '2020-05-19 00:33:52');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:52', '2020-05-19 00:33:52');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:53', '2020-05-19 00:33:53');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:53', '2020-05-19 00:33:53');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:33:54', '2020-05-19 00:33:54');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:36:18', '2020-05-19 00:36:18');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:36:54', '2020-05-19 00:36:54');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:36:55', '2020-05-19 00:36:55');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:07', '2020-05-19 00:37:07');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/server/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:16', '2020-05-19 00:37:16');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:16', '2020-05-19 00:37:16');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/server/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:18', '2020-05-19 00:37:18');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:41', '2020-05-19 00:37:41');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/server/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:37:43', '2020-05-19 00:37:43');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:38:32', '2020-05-19 00:38:32');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/server/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:38:34', '2020-05-19 00:38:34');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:38:54', '2020-05-19 00:38:54');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:38:55', '2020-05-19 00:38:55');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/server/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:39:02', '2020-05-19 00:39:02');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/server', 'POST', '127.0.0.1', '{\"username\":\"ms\",\"name\":\"\\u7801\\u5546\\u6d4b\\u8bd5\",\"avatar\":null,\"file-avatar\":null,\"_file_\":null,\"type\":\"server\",\"havedJoin\":\"0\",\"join_money\":\"0\",\"password\":\"123******\",\"password_confirmation\":\"123******\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/server\"}', '2020-05-19 00:40:09', '2020-05-19 00:40:09');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:40:09', '2020-05-19 00:40:09');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:40:32', '2020-05-19 00:40:32');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:10', '2020-05-19 00:41:10');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:19', '2020-05-19 00:41:19');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:20', '2020-05-19 00:41:20');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:21', '2020-05-19 00:41:21');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:21', '2020-05-19 00:41:21');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/server/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:41:24', '2020-05-19 00:41:24');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/server/9', 'PUT', '127.0.0.1', '{\"_id\":\"jnayCV3QSOAkjqfZ\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"upload_column\":\"avatar\",\"_method\":\"PUT\",\"id\":\"WU_FILE_0\",\"name\":\"icon_message_kefu.png\",\"type\":\"image\\/png\",\"lastModifiedDate\":\"Thu May 14 2020 01:56:01 GMT+0800 (\\u4e2d\\u56fd\\u6807\\u51c6\\u65f6\\u95f4)\",\"size\":\"17574\"}', '2020-05-19 00:41:31', '2020-05-19 00:41:31');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/server/9', 'PUT', '127.0.0.1', '{\"_id\":\"jnayCV3QSOAkjqfZ\",\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"avatar\":\"images\\/icon_message_kefu.png\"}', '2020-05-19 00:41:31', '2020-05-19 00:41:31');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:05', '2020-05-19 00:42:05');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/server/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:08', '2020-05-19 00:42:08');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:10', '2020-05-19 00:42:10');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:15', '2020-05-19 00:42:15');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:40', '2020-05-19 00:42:40');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:42', '2020-05-19 00:42:42');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:52', '2020-05-19 00:42:52');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:42:53', '2020-05-19 00:42:53');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:39', '2020-05-19 00:43:39');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:41', '2020-05-19 00:43:41');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:41', '2020-05-19 00:43:41');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:42', '2020-05-19 00:43:42');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:42', '2020-05-19 00:43:42');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:43', '2020-05-19 00:43:43');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:43', '2020-05-19 00:43:43');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:43', '2020-05-19 00:43:43');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:44', '2020-05-19 00:43:44');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:44', '2020-05-19 00:43:44');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:44', '2020-05-19 00:43:44');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:44', '2020-05-19 00:43:44');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:45', '2020-05-19 00:43:45');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:43:45', '2020-05-19 00:43:45');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:50:24', '2020-05-19 00:50:24');
INSERT INTO `admin_operation_log` VALUES (214, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 00:53:55', '2020-05-19 00:53:55');
INSERT INTO `admin_operation_log` VALUES (215, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"US0WZpkWhcVQNGJIAnsuadw53B6ravC9ovjL0HHE\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-19 00:54:04', '2020-05-19 00:54:04');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 00:54:04', '2020-05-19 00:54:04');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:54:05', '2020-05-19 00:54:05');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:54:05', '2020-05-19 00:54:05');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:54:05', '2020-05-19 00:54:05');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:54:05', '2020-05-19 00:54:05');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:54:16', '2020-05-19 00:54:16');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:54:16', '2020-05-19 00:54:16');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:54:16', '2020-05-19 00:54:16');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"jR7LJR4YhXGlnKCzVyVanh8huq52bEH3s6na36b2\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:54:16', '2020-05-19 00:54:16');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'merchant-admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:54:19', '2020-05-19 00:54:19');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:54:53', '2020-05-19 00:54:53');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:54:57', '2020-05-19 00:54:57');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:05', '2020-05-19 00:55:05');
INSERT INTO `admin_operation_log` VALUES (229, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 00:55:05', '2020-05-19 00:55:05');
INSERT INTO `admin_operation_log` VALUES (230, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"b9E8z99EODHiYDaVLmaygBjwk1wczjHZtP1pKIUY\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-19 00:55:13', '2020-05-19 00:55:13');
INSERT INTO `admin_operation_log` VALUES (231, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 00:55:13', '2020-05-19 00:55:13');
INSERT INTO `admin_operation_log` VALUES (232, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:55:13', '2020-05-19 00:55:13');
INSERT INTO `admin_operation_log` VALUES (233, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:55:13', '2020-05-19 00:55:13');
INSERT INTO `admin_operation_log` VALUES (234, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:55:13', '2020-05-19 00:55:13');
INSERT INTO `admin_operation_log` VALUES (235, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:55:14', '2020-05-19 00:55:14');
INSERT INTO `admin_operation_log` VALUES (236, 2, 'merchant-admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:16', '2020-05-19 00:55:16');
INSERT INTO `admin_operation_log` VALUES (237, 2, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:18', '2020-05-19 00:55:18');
INSERT INTO `admin_operation_log` VALUES (238, 2, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:19', '2020-05-19 00:55:19');
INSERT INTO `admin_operation_log` VALUES (239, 2, 'merchant-admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:19', '2020-05-19 00:55:19');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:26', '2020-05-19 00:55:26');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 00:55:28', '2020-05-19 00:55:28');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"feather icon-settings\",\"uri\":null,\"roles\":[\"1\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-19 00:55:32', '2020-05-19 00:55:32');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:32', '2020-05-19 00:55:32');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:32', '2020-05-19 00:55:32');
INSERT INTO `admin_operation_log` VALUES (245, 2, 'merchant-admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:55:37', '2020-05-19 00:55:37');
INSERT INTO `admin_operation_log` VALUES (246, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:55:37', '2020-05-19 00:55:37');
INSERT INTO `admin_operation_log` VALUES (247, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:55:37', '2020-05-19 00:55:37');
INSERT INTO `admin_operation_log` VALUES (248, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:55:37', '2020-05-19 00:55:37');
INSERT INTO `admin_operation_log` VALUES (249, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:55:38', '2020-05-19 00:55:38');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u79ef\\u5206\\u5145\\u503c\",\"icon\":\"fa-modx\",\"uri\":\"recahrge\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:56:45', '2020-05-19 00:56:45');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:56:45', '2020-05-19 00:56:45');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:56:49', '2020-05-19 00:56:49');
INSERT INTO `admin_operation_log` VALUES (253, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 00:56:54', '2020-05-19 00:56:54');
INSERT INTO `admin_operation_log` VALUES (254, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:56:54', '2020-05-19 00:56:54');
INSERT INTO `admin_operation_log` VALUES (255, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:56:54', '2020-05-19 00:56:54');
INSERT INTO `admin_operation_log` VALUES (256, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:56:54', '2020-05-19 00:56:54');
INSERT INTO `admin_operation_log` VALUES (257, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:56:54', '2020-05-19 00:56:54');
INSERT INTO `admin_operation_log` VALUES (258, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 00:56:55', '2020-05-19 00:56:55');
INSERT INTO `admin_operation_log` VALUES (259, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:56:55', '2020-05-19 00:56:55');
INSERT INTO `admin_operation_log` VALUES (260, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:56:55', '2020-05-19 00:56:55');
INSERT INTO `admin_operation_log` VALUES (261, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:56:55', '2020-05-19 00:56:55');
INSERT INTO `admin_operation_log` VALUES (262, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:56:55', '2020-05-19 00:56:55');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:56:57', '2020-05-19 00:56:57');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 00:57:00', '2020-05-19 00:57:00');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:05', '2020-05-19 00:57:05');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:07', '2020-05-19 00:57:07');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:10', '2020-05-19 00:57:10');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"merchant\",\"name\":\"\\u6d4b\\u8bd5\\u5546\\u6237\",\"avatar\":\"images\\/\\u7231\\u4fe1.png\",\"file-avatar\":null,\"_file_\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"2\",null],\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-05-19 00:57:14', '2020-05-19 00:57:14');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:14', '2020-05-19 00:57:14');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/users/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:18', '2020-05-19 00:57:18');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/auth/users/9', 'PUT', '127.0.0.1', '{\"username\":\"ms\",\"name\":\"\\u7801\\u5546\\u6d4b\\u8bd5\",\"avatar\":\"images\\/icon_message_kefu.png\",\"file-avatar\":null,\"_file_\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"3\",null],\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2020-05-19 00:57:22', '2020-05-19 00:57:22');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:57:22', '2020-05-19 00:57:22');
INSERT INTO `admin_operation_log` VALUES (273, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 00:57:25', '2020-05-19 00:57:25');
INSERT INTO `admin_operation_log` VALUES (274, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:57:25', '2020-05-19 00:57:25');
INSERT INTO `admin_operation_log` VALUES (275, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:57:25', '2020-05-19 00:57:25');
INSERT INTO `admin_operation_log` VALUES (276, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:57:25', '2020-05-19 00:57:25');
INSERT INTO `admin_operation_log` VALUES (277, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:57:25', '2020-05-19 00:57:25');
INSERT INTO `admin_operation_log` VALUES (278, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 00:57:28', '2020-05-19 00:57:28');
INSERT INTO `admin_operation_log` VALUES (279, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 00:57:28', '2020-05-19 00:57:28');
INSERT INTO `admin_operation_log` VALUES (280, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 00:57:28', '2020-05-19 00:57:28');
INSERT INTO `admin_operation_log` VALUES (281, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 00:57:28', '2020-05-19 00:57:28');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:59:15', '2020-05-19 00:59:15');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u670d\\u52a1\\u5546\\u7ba1\\u7406\",\"icon\":\"fa-address-book-o\",\"uri\":\"servers\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 00:59:53', '2020-05-19 00:59:53');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 00:59:53', '2020-05-19 00:59:53');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u4e70\\u5206\\u8bb0\\u5f55\",\"icon\":\"fa-book\",\"uri\":\"giveLogs\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:00:44', '2020-05-19 01:00:44');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:00:44', '2020-05-19 01:00:44');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 01:00:48', '2020-05-19 01:00:48');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"parent_id\":\"0\",\"title\":\"\\u5356\\u5206\\u8bb0\\u5f55\",\"icon\":\"fa-book\",\"uri\":\"giveLogs\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-19 01:00:53', '2020-05-19 01:00:53');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:00:53', '2020-05-19 01:00:53');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:00:53', '2020-05-19 01:00:53');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u8ba2\\u5355\\u8bb0\\u5f55\",\"icon\":\"fa-address-book-o\",\"uri\":\"orders\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:01:22', '2020-05-19 01:01:22');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:01:22', '2020-05-19 01:01:22');
INSERT INTO `admin_operation_log` VALUES (293, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:01:26', '2020-05-19 01:01:26');
INSERT INTO `admin_operation_log` VALUES (294, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:01:26', '2020-05-19 01:01:26');
INSERT INTO `admin_operation_log` VALUES (295, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:01:26', '2020-05-19 01:01:26');
INSERT INTO `admin_operation_log` VALUES (296, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:01:27', '2020-05-19 01:01:27');
INSERT INTO `admin_operation_log` VALUES (297, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:01:27', '2020-05-19 01:01:27');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 01:01:36', '2020-05-19 01:01:36');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u8bb0\\u5f55\",\"icon\":\"fa-paste\",\"uri\":\"orders\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-19 01:01:47', '2020-05-19 01:01:47');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:01:48', '2020-05-19 01:01:48');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:01:48', '2020-05-19 01:01:48');
INSERT INTO `admin_operation_log` VALUES (302, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:01:50', '2020-05-19 01:01:50');
INSERT INTO `admin_operation_log` VALUES (303, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:01:51', '2020-05-19 01:01:51');
INSERT INTO `admin_operation_log` VALUES (304, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:01:51', '2020-05-19 01:01:51');
INSERT INTO `admin_operation_log` VALUES (305, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:01:51', '2020-05-19 01:01:51');
INSERT INTO `admin_operation_log` VALUES (306, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:01:51', '2020-05-19 01:01:51');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5168\\u5c40\\u914d\\u7f6e\",\"icon\":\"fa-cogs\",\"uri\":\"merchant-config\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:03:31', '2020-05-19 01:03:31');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:03:31', '2020-05-19 01:03:31');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":14},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]\"}', '2020-05-19 01:03:40', '2020-05-19 01:03:40');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:03:40', '2020-05-19 01:03:40');
INSERT INTO `admin_operation_log` VALUES (311, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:03:42', '2020-05-19 01:03:42');
INSERT INTO `admin_operation_log` VALUES (312, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:03:42', '2020-05-19 01:03:42');
INSERT INTO `admin_operation_log` VALUES (313, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:03:42', '2020-05-19 01:03:42');
INSERT INTO `admin_operation_log` VALUES (314, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:03:42', '2020-05-19 01:03:42');
INSERT INTO `admin_operation_log` VALUES (315, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:03:42', '2020-05-19 01:03:42');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 01:04:10', '2020-05-19 01:04:10');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"parent_id\":\"0\",\"title\":\"\\u6211\\u7684\\u670d\\u52a1\\u5546\",\"icon\":\"fa-address-book-o\",\"uri\":\"servers\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-19 01:04:18', '2020-05-19 01:04:18');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:04:18', '2020-05-19 01:04:18');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:04:18', '2020-05-19 01:04:18');
INSERT INTO `admin_operation_log` VALUES (320, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:04:22', '2020-05-19 01:04:22');
INSERT INTO `admin_operation_log` VALUES (321, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:04:22', '2020-05-19 01:04:22');
INSERT INTO `admin_operation_log` VALUES (322, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:04:22', '2020-05-19 01:04:22');
INSERT INTO `admin_operation_log` VALUES (323, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:04:22', '2020-05-19 01:04:22');
INSERT INTO `admin_operation_log` VALUES (324, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:04:22', '2020-05-19 01:04:22');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:06:12', '2020-05-19 01:06:12');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:06:13', '2020-05-19 01:06:13');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:06:14', '2020-05-19 01:06:14');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:06:15', '2020-05-19 01:06:15');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:06:17', '2020-05-19 01:06:17');
INSERT INTO `admin_operation_log` VALUES (330, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:06:38', '2020-05-19 01:06:38');
INSERT INTO `admin_operation_log` VALUES (331, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:06:38', '2020-05-19 01:06:38');
INSERT INTO `admin_operation_log` VALUES (332, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:06:38', '2020-05-19 01:06:38');
INSERT INTO `admin_operation_log` VALUES (333, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:06:38', '2020-05-19 01:06:38');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u670d\\u52a1\\u5546\\u5217\\u8868\",\"icon\":\"fa-address-card-o\",\"uri\":\"server-list\",\"roles\":[\"2\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:07:41', '2020-05-19 01:07:41');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:07:42', '2020-05-19 01:07:42');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":14},{\\\"id\\\":10},{\\\"id\\\":15},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]\"}', '2020-05-19 01:07:49', '2020-05-19 01:07:49');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:07:49', '2020-05-19 01:07:49');
INSERT INTO `admin_operation_log` VALUES (338, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:07:51', '2020-05-19 01:07:51');
INSERT INTO `admin_operation_log` VALUES (339, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:07:51', '2020-05-19 01:07:51');
INSERT INTO `admin_operation_log` VALUES (340, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:07:51', '2020-05-19 01:07:51');
INSERT INTO `admin_operation_log` VALUES (341, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:07:51', '2020-05-19 01:07:51');
INSERT INTO `admin_operation_log` VALUES (342, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"kaPvSQMlPndJCjNHDwo3i3nysWoBixgUwO3yhDCH\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:07:51', '2020-05-19 01:07:51');
INSERT INTO `admin_operation_log` VALUES (343, 0, 'server-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 01:09:23', '2020-05-19 01:09:23');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:09:30', '2020-05-19 01:09:30');
INSERT INTO `admin_operation_log` VALUES (345, 0, 'server-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"SfMe71Xhg5P6FSTSBZygzcfTYcKmAkGno2YRxdAf\",\"username\":\"ms\",\"password\":\"123******\"}', '2020-05-19 01:09:34', '2020-05-19 01:09:34');
INSERT INTO `admin_operation_log` VALUES (346, 9, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:09:34', '2020-05-19 01:09:34');
INSERT INTO `admin_operation_log` VALUES (347, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:09:35', '2020-05-19 01:09:35');
INSERT INTO `admin_operation_log` VALUES (348, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:09:35', '2020-05-19 01:09:35');
INSERT INTO `admin_operation_log` VALUES (349, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:09:35', '2020-05-19 01:09:35');
INSERT INTO `admin_operation_log` VALUES (350, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:09:35', '2020-05-19 01:09:35');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:09:40', '2020-05-19 01:09:40');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u4e70\\u5206\\u8bb0\\u5f55\",\"icon\":\"fa-book\",\"uri\":\"bugRecord\",\"roles\":[\"3\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:17:30', '2020-05-19 01:17:30');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:17:30', '2020-05-19 01:17:30');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u652f\\u4ed8\\u914d\\u7f6e\",\"icon\":\"fa-send-o\",\"uri\":\"payment\",\"roles\":[\"3\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:18:19', '2020-05-19 01:18:19');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:18:20', '2020-05-19 01:18:20');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u804a\\u5929\\u7a97\\u53e3\",\"icon\":\"fa-weixin\",\"uri\":\"chat\",\"roles\":[\"3\",null],\"permissions\":null,\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\"}', '2020-05-19 01:19:04', '2020-05-19 01:19:04');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:19:04', '2020-05-19 01:19:04');
INSERT INTO `admin_operation_log` VALUES (358, 9, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:19:07', '2020-05-19 01:19:07');
INSERT INTO `admin_operation_log` VALUES (359, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:19:07', '2020-05-19 01:19:07');
INSERT INTO `admin_operation_log` VALUES (360, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:19:07', '2020-05-19 01:19:07');
INSERT INTO `admin_operation_log` VALUES (361, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:19:07', '2020-05-19 01:19:07');
INSERT INTO `admin_operation_log` VALUES (362, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:19:07', '2020-05-19 01:19:07');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-19 01:19:47', '2020-05-19 01:19:47');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"_token\":\"ue1NtdmGiCCU3EzXM7s5ONwtwduEiBORCHF7qef3\",\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u8bb0\\u5f55\",\"icon\":\"fa-paste\",\"uri\":\"orders\",\"roles\":[\"2\",\"3\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-19 01:19:51', '2020-05-19 01:19:51');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:19:51', '2020-05-19 01:19:51');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:19:51', '2020-05-19 01:19:51');
INSERT INTO `admin_operation_log` VALUES (367, 9, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 01:19:54', '2020-05-19 01:19:54');
INSERT INTO `admin_operation_log` VALUES (368, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 01:19:54', '2020-05-19 01:19:54');
INSERT INTO `admin_operation_log` VALUES (369, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 01:19:54', '2020-05-19 01:19:54');
INSERT INTO `admin_operation_log` VALUES (370, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 01:19:54', '2020-05-19 01:19:54');
INSERT INTO `admin_operation_log` VALUES (371, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"x8Aiu08hnQYMSEHReB3tLzxAfNT4ps4GNRjLe2wn\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 01:19:54', '2020-05-19 01:19:54');
INSERT INTO `admin_operation_log` VALUES (372, 9, 'server-admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 01:20:31', '2020-05-19 01:20:31');
INSERT INTO `admin_operation_log` VALUES (373, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 21:13:46', '2020-05-19 21:13:46');
INSERT INTO `admin_operation_log` VALUES (374, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"qQEihDUR7zbGczOhHbOFh0FNQJBdumZJSZ74Rqvm\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-19 21:13:49', '2020-05-19 21:13:49');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 21:13:50', '2020-05-19 21:13:50');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"7hCU5dg4R9uT2q9NGpav76RmUUuZbbnNE6jz1wN0\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 21:13:50', '2020-05-19 21:13:50');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"7hCU5dg4R9uT2q9NGpav76RmUUuZbbnNE6jz1wN0\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 21:13:50', '2020-05-19 21:13:50');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"7hCU5dg4R9uT2q9NGpav76RmUUuZbbnNE6jz1wN0\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 21:13:50', '2020-05-19 21:13:50');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"7hCU5dg4R9uT2q9NGpav76RmUUuZbbnNE6jz1wN0\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 21:13:50', '2020-05-19 21:13:50');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-19 21:14:02', '2020-05-19 21:14:02');
INSERT INTO `admin_operation_log` VALUES (381, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 21:14:02', '2020-05-19 21:14:02');
INSERT INTO `admin_operation_log` VALUES (382, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"CBSwOnOpS8lKHkb8Kkvv0sXJL8Y3Bv59qbJYbjcW\",\"username\":\"merchant\",\"password\":\"adm******\"}', '2020-05-19 21:14:49', '2020-05-19 21:14:49');
INSERT INTO `admin_operation_log` VALUES (383, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"CBSwOnOpS8lKHkb8Kkvv0sXJL8Y3Bv59qbJYbjcW\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-19 21:14:54', '2020-05-19 21:14:54');
INSERT INTO `admin_operation_log` VALUES (384, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 21:14:54', '2020-05-19 21:14:54');
INSERT INTO `admin_operation_log` VALUES (385, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 21:14:55', '2020-05-19 21:14:55');
INSERT INTO `admin_operation_log` VALUES (386, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 21:14:55', '2020-05-19 21:14:55');
INSERT INTO `admin_operation_log` VALUES (387, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 21:14:55', '2020-05-19 21:14:55');
INSERT INTO `admin_operation_log` VALUES (388, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 21:14:55', '2020-05-19 21:14:55');
INSERT INTO `admin_operation_log` VALUES (389, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 21:14:58', '2020-05-19 21:14:58');
INSERT INTO `admin_operation_log` VALUES (390, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 21:14:58', '2020-05-19 21:14:58');
INSERT INTO `admin_operation_log` VALUES (391, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 21:14:59', '2020-05-19 21:14:59');
INSERT INTO `admin_operation_log` VALUES (392, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 21:14:59', '2020-05-19 21:14:59');
INSERT INTO `admin_operation_log` VALUES (393, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 22:05:24', '2020-05-19 22:05:24');
INSERT INTO `admin_operation_log` VALUES (394, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 22:05:25', '2020-05-19 22:05:25');
INSERT INTO `admin_operation_log` VALUES (395, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 22:05:25', '2020-05-19 22:05:25');
INSERT INTO `admin_operation_log` VALUES (396, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"20WsNsbxDz75ePsz57nYZQLRATD7e8vD4ZSPj8Au\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 22:05:25', '2020-05-19 22:05:25');
INSERT INTO `admin_operation_log` VALUES (397, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-19 23:18:48', '2020-05-19 23:18:48');
INSERT INTO `admin_operation_log` VALUES (398, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"d24H8e7Cvc4F9rzKSgRSSAhstei32txNsEgwNRXD\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (399, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (400, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"59W8MCDcWFn7FknZkoKRE5B9jKVusRaQ8ahzXiVD\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (401, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"59W8MCDcWFn7FknZkoKRE5B9jKVusRaQ8ahzXiVD\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (402, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"59W8MCDcWFn7FknZkoKRE5B9jKVusRaQ8ahzXiVD\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (403, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"59W8MCDcWFn7FknZkoKRE5B9jKVusRaQ8ahzXiVD\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-19 23:18:58', '2020-05-19 23:18:58');
INSERT INTO `admin_operation_log` VALUES (404, 2, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 00:49:32', '2020-05-20 00:49:32');
INSERT INTO `admin_operation_log` VALUES (405, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 00:49:32', '2020-05-20 00:49:32');
INSERT INTO `admin_operation_log` VALUES (406, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"DwPqrVmc8l1EgdycTE56m6pAVd2rylTgHAHPGBQT\",\"username\":\"ms\",\"password\":\"123******\"}', '2020-05-20 00:49:38', '2020-05-20 00:49:38');
INSERT INTO `admin_operation_log` VALUES (407, 9, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 00:49:38', '2020-05-20 00:49:38');
INSERT INTO `admin_operation_log` VALUES (408, 9, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"48O0htTM3551PrmbmpTCBuPEQdt5AWHzu26FCJko\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 00:49:38', '2020-05-20 00:49:38');
INSERT INTO `admin_operation_log` VALUES (409, 9, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"48O0htTM3551PrmbmpTCBuPEQdt5AWHzu26FCJko\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 00:49:38', '2020-05-20 00:49:38');
INSERT INTO `admin_operation_log` VALUES (410, 9, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"48O0htTM3551PrmbmpTCBuPEQdt5AWHzu26FCJko\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 00:49:39', '2020-05-20 00:49:39');
INSERT INTO `admin_operation_log` VALUES (411, 9, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"48O0htTM3551PrmbmpTCBuPEQdt5AWHzu26FCJko\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 00:49:39', '2020-05-20 00:49:39');
INSERT INTO `admin_operation_log` VALUES (412, 9, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:14:14', '2020-05-20 01:14:14');
INSERT INTO `admin_operation_log` VALUES (413, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:14:14', '2020-05-20 01:14:14');
INSERT INTO `admin_operation_log` VALUES (414, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"lnwzoQIOEymOnjJvMGJaif6wOOrlGeRJyXsHoUn6\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:14:21', '2020-05-20 01:14:21');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:14:28', '2020-05-20 01:14:28');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:14:29', '2020-05-20 01:14:29');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'merchant-admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:14:32', '2020-05-20 01:14:32');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'merchant-admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:14:35', '2020-05-20 01:14:35');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'merchant-admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:14:47', '2020-05-20 01:14:47');
INSERT INTO `admin_operation_log` VALUES (425, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:15', '2020-05-20 01:15:15');
INSERT INTO `admin_operation_log` VALUES (426, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"xgvx1F0sIdg1XWE5y3W4phKtTFjR2nXA22My6amg\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 01:15:16', '2020-05-20 01:15:16');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:16', '2020-05-20 01:15:16');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:21', '2020-05-20 01:15:21');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:22', '2020-05-20 01:15:22');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:23', '2020-05-20 01:15:23');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:25', '2020-05-20 01:15:25');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:29', '2020-05-20 01:15:29');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:29', '2020-05-20 01:15:29');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:30', '2020-05-20 01:15:30');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:31', '2020-05-20 01:15:31');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/server', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:33', '2020-05-20 01:15:33');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:38', '2020-05-20 01:15:38');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:15:44', '2020-05-20 01:15:44');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"_token\":\"OeH1SXm9GmF4TZsdPCAMRWgIu9jDYFao8yZ5GTDP\",\"parent_id\":\"0\",\"title\":\"\\u5168\\u5c40\\u914d\\u7f6e\",\"icon\":\"fa-cogs\",\"uri\":\"merchant-config\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 01:15:52', '2020-05-20 01:15:52');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:52', '2020-05-20 01:15:52');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:15:52', '2020-05-20 01:15:52');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:53', '2020-05-20 01:15:53');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-20 01:15:56', '2020-05-20 01:15:56');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:16:09', '2020-05-20 01:16:09');
INSERT INTO `admin_operation_log` VALUES (445, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:10', '2020-05-20 01:16:10');
INSERT INTO `admin_operation_log` VALUES (446, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:12', '2020-05-20 01:16:12');
INSERT INTO `admin_operation_log` VALUES (447, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"d83Y5AGwo5czKNSAst1nCrDKJicv8mnn9fOEQ2hd\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 01:16:15', '2020-05-20 01:16:15');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:15', '2020-05-20 01:16:15');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:24', '2020-05-20 01:16:24');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:16:24', '2020-05-20 01:16:24');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:16:25', '2020-05-20 01:16:25');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:16:25', '2020-05-20 01:16:25');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"gA2G4SIZfw2mxc6l9T4P5vBsAXa4y46geEup9Dgo\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:16:25', '2020-05-20 01:16:25');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:16:28', '2020-05-20 01:16:28');
INSERT INTO `admin_operation_log` VALUES (455, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:28', '2020-05-20 01:16:28');
INSERT INTO `admin_operation_log` VALUES (456, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"oGX2ULYIYPhzv8HbWVorkLYgve66BGzdqRHsl1D2\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (457, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (458, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (459, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (460, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (461, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:16:36', '2020-05-20 01:16:36');
INSERT INTO `admin_operation_log` VALUES (462, 2, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:49', '2020-05-20 01:16:49');
INSERT INTO `admin_operation_log` VALUES (463, 2, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:16:50', '2020-05-20 01:16:50');
INSERT INTO `admin_operation_log` VALUES (464, 2, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:16:50', '2020-05-20 01:16:50');
INSERT INTO `admin_operation_log` VALUES (465, 2, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:16:50', '2020-05-20 01:16:50');
INSERT INTO `admin_operation_log` VALUES (466, 2, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JptYkS6SmYcZ9KQi6lxLeNEYqpicr0vw9WLhocfh\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:16:50', '2020-05-20 01:16:50');
INSERT INTO `admin_operation_log` VALUES (467, 2, 'server-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:16:54', '2020-05-20 01:16:54');
INSERT INTO `admin_operation_log` VALUES (468, 0, 'server-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:16:54', '2020-05-20 01:16:54');
INSERT INTO `admin_operation_log` VALUES (469, 0, 'server-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"AQxAGTNLk58v6JArkSxZcaOPEDjZlYvQZran55QR\",\"username\":\"ms\",\"password\":\"123******\"}', '2020-05-20 01:16:59', '2020-05-20 01:16:59');
INSERT INTO `admin_operation_log` VALUES (470, 9, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:00', '2020-05-20 01:17:00');
INSERT INTO `admin_operation_log` VALUES (471, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"TQmpBWzsNG8NMNbI9Z0ptkdf99vqsURVEQHQo9uj\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:17:00', '2020-05-20 01:17:00');
INSERT INTO `admin_operation_log` VALUES (472, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"TQmpBWzsNG8NMNbI9Z0ptkdf99vqsURVEQHQo9uj\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:17:00', '2020-05-20 01:17:00');
INSERT INTO `admin_operation_log` VALUES (473, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"TQmpBWzsNG8NMNbI9Z0ptkdf99vqsURVEQHQo9uj\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:17:00', '2020-05-20 01:17:00');
INSERT INTO `admin_operation_log` VALUES (474, 9, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"TQmpBWzsNG8NMNbI9Z0ptkdf99vqsURVEQHQo9uj\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:17:00', '2020-05-20 01:17:00');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:06', '2020-05-20 01:17:06');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:07', '2020-05-20 01:17:07');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:10', '2020-05-20 01:17:10');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:17:10', '2020-05-20 01:17:10');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:17:10', '2020-05-20 01:17:10');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:17:10', '2020-05-20 01:17:10');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:17:10', '2020-05-20 01:17:10');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:11', '2020-05-20 01:17:11');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:17:12', '2020-05-20 01:17:12');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:17:12', '2020-05-20 01:17:12');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:17:12', '2020-05-20 01:17:12');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:17:12', '2020-05-20 01:17:12');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'server-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:12', '2020-05-20 01:17:12');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 01:17:13', '2020-05-20 01:17:13');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 01:17:13', '2020-05-20 01:17:13');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 01:17:13', '2020-05-20 01:17:13');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'server-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Kin7evw872oxYeGkkObXc2dWTvzQTT7qUhpIysSP\",\"_key\":\"App\\\\ServerAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 01:17:13', '2020-05-20 01:17:13');
INSERT INTO `admin_operation_log` VALUES (492, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:19', '2020-05-20 01:17:19');
INSERT INTO `admin_operation_log` VALUES (493, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:17:20', '2020-05-20 01:17:20');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:18:02', '2020-05-20 01:18:02');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:18:06', '2020-05-20 01:18:06');
INSERT INTO `admin_operation_log` VALUES (496, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:18:06', '2020-05-20 01:18:06');
INSERT INTO `admin_operation_log` VALUES (497, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 01:18:08', '2020-05-20 01:18:08');
INSERT INTO `admin_operation_log` VALUES (498, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"hUAndnxSxE6NBVjXWQvzDkSKIMSUVGwiZDh5BZTJ\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 01:18:12', '2020-05-20 01:18:12');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 01:18:12', '2020-05-20 01:18:12');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:18:15', '2020-05-20 01:18:15');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:18:23', '2020-05-20 01:18:23');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:18:33', '2020-05-20 01:18:33');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:18:37', '2020-05-20 01:18:37');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\",\"parent_id\":\"0\",\"title\":\"\\u5e73\\u53f0\\u5217\\u8868\",\"icon\":\"fa-cogs\",\"uri\":\"merchant-plats\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 01:19:02', '2020-05-20 01:19:02');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:19:02', '2020-05-20 01:19:02');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:19:02', '2020-05-20 01:19:02');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:19:24', '2020-05-20 01:19:24');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\",\"parent_id\":\"0\",\"title\":\"\\u652f\\u4ed8\\u914d\\u7f6e\",\"icon\":\"fa-rmb\",\"uri\":\"payment\",\"roles\":[\"3\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 01:20:50', '2020-05-20 01:20:50');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:20:50', '2020-05-20 01:20:50');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:20:50', '2020-05-20 01:20:50');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:20:54', '2020-05-20 01:20:54');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\",\"parent_id\":\"0\",\"title\":\"\\u652f\\u4ed8\\u914d\\u7f6e\",\"icon\":\"fa-wrench\",\"uri\":\"payment\",\"roles\":[\"3\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 01:21:40', '2020-05-20 01:21:40');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:21:40', '2020-05-20 01:21:40');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:21:40', '2020-05-20 01:21:40');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\"}', '2020-05-20 01:21:52', '2020-05-20 01:21:52');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:21:52', '2020-05-20 01:21:52');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:22:09', '2020-05-20 01:22:09');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\",\"parent_id\":\"0\",\"title\":\"\\u6211\\u7684\\u5e73\\u53f0\",\"icon\":\"fa-cogs\",\"uri\":\"merchant-plats\",\"roles\":[\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 01:22:20', '2020-05-20 01:22:20');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:22:20', '2020-05-20 01:22:20');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:22:20', '2020-05-20 01:22:20');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5e73\\u53f0\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"plats\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\"}', '2020-05-20 01:22:56', '2020-05-20 01:22:56');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:22:56', '2020-05-20 01:22:56');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"FCuJB9CMHbLeVVNoSDu2aTUwSLfWv9KAJ7VTUCNk\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":19},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18}]\"}', '2020-05-20 01:23:07', '2020-05-20 01:23:07');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:23:07', '2020-05-20 01:23:07');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-20 01:23:08', '2020-05-20 01:23:08');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:23:35', '2020-05-20 01:23:35');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 01:23:47', '2020-05-20 01:23:47');
INSERT INTO `admin_operation_log` VALUES (528, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 01:23:49', '2020-05-20 01:23:49');
INSERT INTO `admin_operation_log` VALUES (529, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 20:33:53', '2020-05-20 20:33:53');
INSERT INTO `admin_operation_log` VALUES (530, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"xEXSI8Uozyw01YcMoQEV5sLxwhXv84wAXTDOOe1b\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 20:33:56', '2020-05-20 20:33:56');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-20 20:33:56', '2020-05-20 20:33:56');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:34:00', '2020-05-20 20:34:00');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:34:01', '2020-05-20 20:34:01');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 20:34:08', '2020-05-20 20:34:08');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:34:19', '2020-05-20 20:34:19');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 20:34:23', '2020-05-20 20:34:23');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:34:35', '2020-05-20 20:34:35');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 20:34:40', '2020-05-20 20:34:40');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 20:36:10', '2020-05-20 20:36:10');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:36:10', '2020-05-20 20:36:10');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:36:10', '2020-05-20 20:36:10');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 20:36:14', '2020-05-20 20:36:14');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/adminUser\",\"\\/adminUser\\/create\",\"\\/adminUser\\/*\",\"\\/adminUser\\/*\\/edit\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 20:36:57', '2020-05-20 20:36:57');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:36:57', '2020-05-20 20:36:57');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:36:57', '2020-05-20 20:36:57');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:37:03', '2020-05-20 20:37:03');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:37:05', '2020-05-20 20:37:05');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:37:06', '2020-05-20 20:37:06');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 20:37:08', '2020-05-20 20:37:08');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"server-manage\",\"name\":\"\\u7801\\u5546\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/server\",\"\\/server\\/create\",\"\\/server\\/*\",\"\\/server\\/*\\/edit\",null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 20:37:33', '2020-05-20 20:37:33');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:37:33', '2020-05-20 20:37:33');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 20:37:33', '2020-05-20 20:37:33');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 21:55:03', '2020-05-20 21:55:03');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"ms-pay\",\"tb\":\"plats\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\"}', '2020-05-20 21:55:06', '2020-05-20 21:55:06');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"plats\"}', '2020-05-20 21:55:06', '2020-05-20 21:55:06');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"plats\",\"exist-table\":\"ms-pay|plats\",\"model_name\":\"App\\\\Models\\\\Plat\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PlatController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"name\",\"translation\":\"\\u5e73\\u53f0\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e73\\u53f0\\u540d\\u79f0\"},{\"name\":\"extra_json\",\"translation\":\"\\u767b\\u5f55\\u53c2\\u6570\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u767b\\u5f55\\u53c2\\u6570\"},{\"name\":\"status\",\"translation\":\"\\u662f\\u5426\\u542f\\u7528\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u662f\\u5426\\u542f\\u7528\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\"}', '2020-05-20 21:55:14', '2020-05-20 21:55:14');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-20 21:55:14', '2020-05-20 21:55:14');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-20 21:56:02', '2020-05-20 21:56:02');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 21:56:10', '2020-05-20 21:56:10');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/merchant-plats/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 21:56:12', '2020-05-20 21:56:12');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 21:58:39', '2020-05-20 21:58:39');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/merchant-plats/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 21:58:41', '2020-05-20 21:58:41');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/merchant-plats', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u53d1\",\"extra_json\":{\"new_1\":{\"key\":\"api_url\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"dafa_id\",\"value\":null,\"desc\":\"\\u5927\\u53d1ID\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"dafa_secret\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\",\"_remove_\":\"0\"}},\"status\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/merchant-plats\"}', '2020-05-20 21:59:40', '2020-05-20 21:59:40');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/merchant-plats', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u53d1\",\"extra_json\":{\"new_1\":{\"key\":\"api_url\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"dafa_id\",\"value\":null,\"desc\":\"\\u5927\\u53d1ID\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"dafa_secret\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\",\"_remove_\":\"0\"}},\"status\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/merchant-plats\"}', '2020-05-20 22:00:16', '2020-05-20 22:00:16');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/merchant-plats', 'POST', '127.0.0.1', '{\"name\":\"\\u5927\\u53d1\",\"extra_json\":{\"new_1\":{\"key\":\"api_url\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"dafa_id\",\"value\":null,\"desc\":\"\\u5927\\u53d1ID\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"dafa_secret\",\"value\":null,\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\",\"_remove_\":\"0\"}},\"status\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/merchant-plats\"}', '2020-05-20 22:00:48', '2020-05-20 22:00:48');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:00:48', '2020-05-20 22:00:48');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/merchant-plats/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:01:03', '2020-05-20 22:01:03');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/merchant-plats', 'POST', '127.0.0.1', '{\"name\":\"\\u4e2d\\u535a\",\"extra_json\":{\"new_1\":{\"key\":\"admin_url\",\"value\":null,\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\",\"_remove_\":\"0\"},\"new_2\":{\"key\":\"username\",\"value\":null,\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\",\"_remove_\":\"0\"},\"new_3\":{\"key\":\"password\",\"value\":null,\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\",\"_remove_\":\"0\"}},\"status\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/merchant-plats\"}', '2020-05-20 22:01:42', '2020-05-20 22:01:42');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:01:42', '2020-05-20 22:01:42');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/merchant-plats/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:01:48', '2020-05-20 22:01:48');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:01:55', '2020-05-20 22:01:55');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 22:01:59', '2020-05-20 22:01:59');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:01', '2020-05-20 22:02:01');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:02', '2020-05-20 22:02:02');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:03', '2020-05-20 22:02:03');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:25', '2020-05-20 22:02:25');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:40', '2020-05-20 22:02:40');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/adminUser/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:46', '2020-05-20 22:02:46');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/adminUser', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:50', '2020-05-20 22:02:50');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/server', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:02:54', '2020-05-20 22:02:54');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:03:27', '2020-05-20 22:03:27');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:03:30', '2020-05-20 22:03:30');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"plats\",\"name\":\"\\u63a5\\u5165\\u5e73\\u53f0\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/plats\",\"\\/plats\\/create\",\"\\/plats\\/*\",\"\\/plats\\/*\\/edit\",null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 22:03:52', '2020-05-20 22:03:52');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:03:52', '2020-05-20 22:03:52');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:03:52', '2020-05-20 22:03:52');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:03:53', '2020-05-20 22:03:53');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:03:58', '2020-05-20 22:03:58');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"slug\":\"administrator\",\"name\":\"\\u5e73\\u53f0\\u7ba1\\u7406\",\"permissions\":\"2,3,4,5,6,7,8,9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-05-20 22:04:02', '2020-05-20 22:04:02');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:02', '2020-05-20 22:04:02');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:02', '2020-05-20 22:04:02');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:04', '2020-05-20 22:04:04');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:04:08', '2020-05-20 22:04:08');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":\"0\",\"title\":\"\\u5e73\\u53f0\\u5217\\u8868\",\"icon\":\"fa-server\",\"uri\":\"plats\",\"roles\":[\"1\",null],\"permissions\":\"9\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2020-05-20 22:04:18', '2020-05-20 22:04:18');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:18', '2020-05-20 22:04:18');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:19', '2020-05-20 22:04:19');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-20 22:04:22', '2020-05-20 22:04:22');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:29', '2020-05-20 22:04:29');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:04:41', '2020-05-20 22:04:41');
INSERT INTO `admin_operation_log` VALUES (599, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 22:04:56', '2020-05-20 22:04:56');
INSERT INTO `admin_operation_log` VALUES (600, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 22:05:04', '2020-05-20 22:05:04');
INSERT INTO `admin_operation_log` VALUES (601, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"WKFMhkadwVpW7YQOhSJMhLQeUjReQkPlMj3sUgiY\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (602, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (603, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (604, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (605, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (606, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 22:05:09', '2020-05-20 22:05:09');
INSERT INTO `admin_operation_log` VALUES (607, 2, 'merchant-admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:05:15', '2020-05-20 22:05:15');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:05:23', '2020-05-20 22:05:23');
INSERT INTO `admin_operation_log` VALUES (609, 2, 'merchant-admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-20 22:05:39', '2020-05-20 22:05:39');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:05:55', '2020-05-20 22:05:55');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"ms-pay\",\"tb\":\"merchant_plats\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\"}', '2020-05-20 22:06:00', '2020-05-20 22:06:00');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"merchant_plats\"}', '2020-05-20 22:06:01', '2020-05-20 22:06:01');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"merchant_plats\",\"exist-table\":\"ms-pay|merchant_plats\",\"model_name\":\"App\\\\Models\\\\MerchantPlat\",\"controller_name\":\"App\\\\MerchantAdmin\\\\Controllers\\\\MerchantPlatController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"site_title\",\"translation\":\"\\u7ad9\\u70b9\\u540d\\u79f0\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7ad9\\u70b9\\u540d\\u79f0\"},{\"name\":\"plat_id\",\"translation\":\"\\u5e73\\u53f0ID\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5e73\\u53f0ID\"},{\"name\":\"extra_json\",\"translation\":\"\\u673a\\u5668\\u4eba\\u767b\\u5f55\\u53c2\\u6570\",\"type\":\"text\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u673a\\u5668\\u4eba\\u767b\\u5f55\\u53c2\\u6570\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\"}', '2020-05-20 22:06:50', '2020-05-20 22:06:50');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-20 22:06:50', '2020-05-20 22:06:50');
INSERT INTO `admin_operation_log` VALUES (615, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 22:07:48', '2020-05-20 22:07:48');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-20 22:08:04', '2020-05-20 22:08:04');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:08:09', '2020-05-20 22:08:09');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:08:14', '2020-05-20 22:08:14');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:08:23', '2020-05-20 22:08:23');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:08:23', '2020-05-20 22:08:23');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:08:25', '2020-05-20 22:08:25');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"merchant-plats\",\"name\":\"\\u6211\\u7684\\u5e73\\u53f0\",\"http_method\":[null],\"http_path\":[null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 22:10:18', '2020-05-20 22:10:18');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:10:18', '2020-05-20 22:10:18');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:10:18', '2020-05-20 22:10:18');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:10:36', '2020-05-20 22:10:36');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"merchant-plats\",\"name\":\"\\u6211\\u7684\\u5e73\\u53f0\",\"http_method\":[null],\"http_path\":[\"\\/s s\",\"sss\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 22:11:15', '2020-05-20 22:11:15');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:11:15', '2020-05-20 22:11:15');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:11:15', '2020-05-20 22:11:15');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:11:18', '2020-05-20 22:11:18');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"merchant-plats\",\"name\":\"\\u6211\\u7684\\u5e73\\u53f0\",\"http_method\":[null],\"http_path\":[\"\\/merchant-lists*\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-20 22:11:34', '2020-05-20 22:11:34');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:11:34', '2020-05-20 22:11:34');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:11:34', '2020-05-20 22:11:34');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:12:10', '2020-05-20 22:12:10');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/auth/permissions/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\"}', '2020-05-20 22:12:32', '2020-05-20 22:12:32');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:12:32', '2020-05-20 22:12:32');
INSERT INTO `admin_operation_log` VALUES (636, 2, 'merchant-admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:12:42', '2020-05-20 22:12:42');
INSERT INTO `admin_operation_log` VALUES (637, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 22:12:42', '2020-05-20 22:12:42');
INSERT INTO `admin_operation_log` VALUES (638, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 22:12:42', '2020-05-20 22:12:42');
INSERT INTO `admin_operation_log` VALUES (639, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 22:12:42', '2020-05-20 22:12:42');
INSERT INTO `admin_operation_log` VALUES (640, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"Ole8FNgdJvnobXaY75xTMStyEQfk557wT89B8yLR\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 22:12:42', '2020-05-20 22:12:42');
INSERT INTO `admin_operation_log` VALUES (641, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:12:43', '2020-05-20 22:12:43');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:12:47', '2020-05-20 22:12:47');
INSERT INTO `admin_operation_log` VALUES (643, 2, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:13:04', '2020-05-20 22:13:04');
INSERT INTO `admin_operation_log` VALUES (644, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 22:13:04', '2020-05-20 22:13:04');
INSERT INTO `admin_operation_log` VALUES (645, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"t2I2YIDDntN6wUg2OwFJNn8y2azmZQiTDum9RLh9\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 22:13:10', '2020-05-20 22:13:10');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 22:13:10', '2020-05-20 22:13:10');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"3H8IzGyct1k1HNIQfQ09pt7loL32wM85kBI4h8r3\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 22:13:11', '2020-05-20 22:13:11');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"3H8IzGyct1k1HNIQfQ09pt7loL32wM85kBI4h8r3\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 22:13:11', '2020-05-20 22:13:11');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"3H8IzGyct1k1HNIQfQ09pt7loL32wM85kBI4h8r3\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 22:13:11', '2020-05-20 22:13:11');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"3H8IzGyct1k1HNIQfQ09pt7loL32wM85kBI4h8r3\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 22:13:11', '2020-05-20 22:13:11');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:13:13', '2020-05-20 22:13:13');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'merchant-admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:13:17', '2020-05-20 22:13:17');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'merchant-admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"3H8IzGyct1k1HNIQfQ09pt7loL32wM85kBI4h8r3\",\"parent_id\":null,\"slug\":\"merchant-list\",\"name\":\"\\u6211\\u7684\\u5e73\\u53f0\",\"http_method\":[null],\"http_path\":[\"\\/merchant-plats\",\"\\/merchant-plats\\/create\",\"\\/merchant-plats\\/*\",\"\\/merchant-plats\\/*\\/edit\",null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/permissions\"}', '2020-05-20 22:13:47', '2020-05-20 22:13:47');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:13:47', '2020-05-20 22:13:47');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:13:47', '2020-05-20 22:13:47');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:13:52', '2020-05-20 22:13:52');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'merchant-admin/merchant-plats/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:02', '2020-05-20 22:14:02');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:05', '2020-05-20 22:14:05');
INSERT INTO `admin_operation_log` VALUES (659, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 22:14:39', '2020-05-20 22:14:39');
INSERT INTO `admin_operation_log` VALUES (660, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"wONvHlioPXEOmmtNU16fXw9FUjnDBaVvdb5ZJrBH\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-20 22:14:41', '2020-05-20 22:14:41');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 22:14:41', '2020-05-20 22:14:41');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'merchant-admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:47', '2020-05-20 22:14:47');
INSERT INTO `admin_operation_log` VALUES (663, 0, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-20 22:14:47', '2020-05-20 22:14:47');
INSERT INTO `admin_operation_log` VALUES (664, 0, 'merchant-admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"bw5k4NXJaBKtXiATJKrDyFaUi8lf3Mf34mI31JNE\",\"username\":\"merchant\",\"password\":\"123******\"}', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (665, 2, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (666, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (667, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (668, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (669, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-20 22:14:51', '2020-05-20 22:14:51');
INSERT INTO `admin_operation_log` VALUES (670, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:53', '2020-05-20 22:14:53');
INSERT INTO `admin_operation_log` VALUES (671, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:54', '2020-05-20 22:14:54');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:14:59', '2020-05-20 22:14:59');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'merchant-admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-20 22:15:01', '2020-05-20 22:15:01');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'merchant-admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\",\"permissions\":\"11\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/roles\"}', '2020-05-20 22:15:06', '2020-05-20 22:15:06');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:15:06', '2020-05-20 22:15:06');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:15:06', '2020-05-20 22:15:06');
INSERT INTO `admin_operation_log` VALUES (677, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:15:08', '2020-05-20 22:15:08');
INSERT INTO `admin_operation_log` VALUES (678, 2, 'merchant-admin/merchant-plats/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 22:52:31', '2020-05-20 22:52:31');
INSERT INTO `admin_operation_log` VALUES (679, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:06:56', '2020-05-20 23:06:56');
INSERT INTO `admin_operation_log` VALUES (680, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:06:56', '2020-05-20 23:06:56');
INSERT INTO `admin_operation_log` VALUES (681, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:07:08', '2020-05-20 23:07:08');
INSERT INTO `admin_operation_log` VALUES (682, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:07:38', '2020-05-20 23:07:38');
INSERT INTO `admin_operation_log` VALUES (683, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:08:03', '2020-05-20 23:08:03');
INSERT INTO `admin_operation_log` VALUES (684, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:08:05', '2020-05-20 23:08:05');
INSERT INTO `admin_operation_log` VALUES (685, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:08:12', '2020-05-20 23:08:12');
INSERT INTO `admin_operation_log` VALUES (686, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:08:19', '2020-05-20 23:08:19');
INSERT INTO `admin_operation_log` VALUES (687, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:09:09', '2020-05-20 23:09:09');
INSERT INTO `admin_operation_log` VALUES (688, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-20 23:09:24', '2020-05-20 23:09:24');
INSERT INTO `admin_operation_log` VALUES (689, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:11:56', '2020-05-20 23:11:56');
INSERT INTO `admin_operation_log` VALUES (690, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:12:52', '2020-05-20 23:12:52');
INSERT INTO `admin_operation_log` VALUES (691, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:15:34', '2020-05-20 23:15:34');
INSERT INTO `admin_operation_log` VALUES (692, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:16:09', '2020-05-20 23:16:09');
INSERT INTO `admin_operation_log` VALUES (693, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:17:33', '2020-05-20 23:17:33');
INSERT INTO `admin_operation_log` VALUES (694, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:19:36', '2020-05-20 23:19:36');
INSERT INTO `admin_operation_log` VALUES (695, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:20:47', '2020-05-20 23:20:47');
INSERT INTO `admin_operation_log` VALUES (696, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:21:29', '2020-05-20 23:21:29');
INSERT INTO `admin_operation_log` VALUES (697, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:21:29', '2020-05-20 23:21:29');
INSERT INTO `admin_operation_log` VALUES (698, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:59:08', '2020-05-20 23:59:08');
INSERT INTO `admin_operation_log` VALUES (699, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:59:10', '2020-05-20 23:59:10');
INSERT INTO `admin_operation_log` VALUES (700, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-20 23:59:43', '2020-05-20 23:59:43');
INSERT INTO `admin_operation_log` VALUES (701, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:00:11', '2020-05-21 00:00:11');
INSERT INTO `admin_operation_log` VALUES (702, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:00:12', '2020-05-21 00:00:12');
INSERT INTO `admin_operation_log` VALUES (703, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:07:45', '2020-05-21 00:07:45');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:35', '2020-05-21 00:08:35');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:37', '2020-05-21 00:08:37');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:38', '2020-05-21 00:08:38');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:38', '2020-05-21 00:08:38');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:41', '2020-05-21 00:08:41');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:08:41', '2020-05-21 00:08:41');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:09:30', '2020-05-21 00:09:30');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:09:32', '2020-05-21 00:09:32');
INSERT INTO `admin_operation_log` VALUES (712, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:09:49', '2020-05-21 00:09:49');
INSERT INTO `admin_operation_log` VALUES (713, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:13', '2020-05-21 00:10:13');
INSERT INTO `admin_operation_log` VALUES (714, 2, 'merchant-admin/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:14', '2020-05-21 00:10:14');
INSERT INTO `admin_operation_log` VALUES (715, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:33', '2020-05-21 00:10:33');
INSERT INTO `admin_operation_log` VALUES (716, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:34', '2020-05-21 00:10:34');
INSERT INTO `admin_operation_log` VALUES (717, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:54', '2020-05-21 00:10:54');
INSERT INTO `admin_operation_log` VALUES (718, 2, 'merchant-admin/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:10:55', '2020-05-21 00:10:55');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:11:04', '2020-05-21 00:11:04');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:11:29', '2020-05-21 00:11:29');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:11:30', '2020-05-21 00:11:30');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:11:34', '2020-05-21 00:11:34');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:11:39', '2020-05-21 00:11:39');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:11:43', '2020-05-21 00:11:43');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"RpWtpT6dB3VqOcs17uc7fXDGiFLpPIismrksf97O\",\"parent_id\":null,\"slug\":\"plat-list\",\"name\":\"\\u83b7\\u53d6\\u63a5\\u5165\\u5e73\\u53f0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":[\"\\/merchant-admin\\/plats\",null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-21 00:12:24', '2020-05-21 00:12:24');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:24', '2020-05-21 00:12:24');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:24', '2020-05-21 00:12:24');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:38', '2020-05-21 00:12:38');
INSERT INTO `admin_operation_log` VALUES (729, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-21 00:12:38', '2020-05-21 00:12:38');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'merchant-admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'merchant-admin', 'GET', '127.0.0.1', '[]', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-21 00:12:50', '2020-05-21 00:12:50');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'merchant-admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:51', '2020-05-21 00:12:51');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'merchant-admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:53', '2020-05-21 00:12:53');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:12:54', '2020-05-21 00:12:54');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:13:10', '2020-05-21 00:13:10');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'merchant-admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:13:13', '2020-05-21 00:13:13');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'merchant-admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\",\"permissions\":\"11,12\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/roles\"}', '2020-05-21 00:13:17', '2020-05-21 00:13:17');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:13:17', '2020-05-21 00:13:17');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:13:17', '2020-05-21 00:13:17');
INSERT INTO `admin_operation_log` VALUES (744, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:13:21', '2020-05-21 00:13:21');
INSERT INTO `admin_operation_log` VALUES (745, 2, 'merchant-admin/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:13:22', '2020-05-21 00:13:22');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:13:31', '2020-05-21 00:13:31');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'merchant-admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:13:35', '2020-05-21 00:13:35');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'merchant-admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:13:59', '2020-05-21 00:13:59');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'merchant-admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:14:01', '2020-05-21 00:14:01');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'merchant-admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:14:08', '2020-05-21 00:14:08');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:14:12', '2020-05-21 00:14:12');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'merchant-admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:14:15', '2020-05-21 00:14:15');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'merchant-admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"parent_id\":null,\"slug\":\"plat-list\",\"name\":\"\\u83b7\\u53d6\\u63a5\\u5165\\u5e73\\u53f0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":[\"\\/merchant-admin\\/plats*\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/permissions\"}', '2020-05-21 00:14:30', '2020-05-21 00:14:30');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:14:30', '2020-05-21 00:14:30');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:14:30', '2020-05-21 00:14:30');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'merchant-admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:14:35', '2020-05-21 00:14:35');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'merchant-admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"parent_id\":null,\"slug\":\"plat-list\",\"name\":\"\\u83b7\\u53d6\\u63a5\\u5165\\u5e73\\u53f0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":[\"\\/merchant-admin\\/plats*\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/permissions\"}', '2020-05-21 00:15:09', '2020-05-21 00:15:09');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:15:09', '2020-05-21 00:15:09');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:15:09', '2020-05-21 00:15:09');
INSERT INTO `admin_operation_log` VALUES (760, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:15:17', '2020-05-21 00:15:17');
INSERT INTO `admin_operation_log` VALUES (761, 2, 'merchant-admin/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:15:19', '2020-05-21 00:15:19');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'merchant-admin/auth/permissions/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 00:17:12', '2020-05-21 00:17:12');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'merchant-admin/auth/permissions/12', 'PUT', '127.0.0.1', '{\"_token\":\"1I9sNuEKhhQfVG5OqUrzO5EADr04eyxnHSDsWUKY\",\"parent_id\":null,\"slug\":\"plat-list\",\"name\":\"\\u83b7\\u53d6\\u63a5\\u5165\\u5e73\\u53f0\\u5217\\u8868\",\"http_method\":[\"GET\",null],\"http_path\":[\"\\/plat_list\",null],\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/merchant-admin\\/auth\\/permissions\"}', '2020-05-21 00:17:24', '2020-05-21 00:17:24');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:17:24', '2020-05-21 00:17:24');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:17:24', '2020-05-21 00:17:24');
INSERT INTO `admin_operation_log` VALUES (766, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:17:34', '2020-05-21 00:17:34');
INSERT INTO `admin_operation_log` VALUES (767, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:17:48', '2020-05-21 00:17:48');
INSERT INTO `admin_operation_log` VALUES (768, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 00:17:49', '2020-05-21 00:17:49');
INSERT INTO `admin_operation_log` VALUES (769, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:19:30', '2020-05-21 00:19:30');
INSERT INTO `admin_operation_log` VALUES (770, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 00:19:31', '2020-05-21 00:19:31');
INSERT INTO `admin_operation_log` VALUES (771, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 00:23:48', '2020-05-21 00:23:48');
INSERT INTO `admin_operation_log` VALUES (772, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 00:23:50', '2020-05-21 00:23:50');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'merchant-admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2020-05-21 00:44:14', '2020-05-21 00:44:14');
INSERT INTO `admin_operation_log` VALUES (774, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-21 00:44:20', '2020-05-21 00:44:20');
INSERT INTO `admin_operation_log` VALUES (775, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"9dzyRUVJ64qG4GdSgk6qAy6prdF7YP7Np2ayQqFK\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-21 00:44:22', '2020-05-21 00:44:22');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-21 00:44:22', '2020-05-21 00:44:22');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:28', '2020-05-21 00:44:28');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/plats/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:33', '2020-05-21 00:44:33');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/plats/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5927\\u53d1\",\"extra_json\":{\"new___LA_KEY__\":{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\",\"_remove_\":null},\"1\":{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\",\"_remove_\":null},\"2\":{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\",\"_remove_\":null}},\"status\":\"1\",\"_token\":\"QcGhfriN7b4lOSVqyJ3kH0984gUjUdDnr1t8R3ZR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/plats\"}', '2020-05-21 00:44:40', '2020-05-21 00:44:40');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:40', '2020-05-21 00:44:40');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:43', '2020-05-21 00:44:43');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/plats/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:47', '2020-05-21 00:44:47');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/plats/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u4e2d\\u535a\",\"extra_json\":{\"new___LA_KEY__\":{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\",\"_remove_\":null},\"1\":{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\",\"_remove_\":null},\"2\":{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\",\"_remove_\":null}},\"status\":\"1\",\"_token\":\"QcGhfriN7b4lOSVqyJ3kH0984gUjUdDnr1t8R3ZR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/plats\"}', '2020-05-21 00:44:51', '2020-05-21 00:44:51');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 00:44:51', '2020-05-21 00:44:51');
INSERT INTO `admin_operation_log` VALUES (785, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:10:57', '2020-05-21 01:10:57');
INSERT INTO `admin_operation_log` VALUES (786, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:11:04', '2020-05-21 01:11:04');
INSERT INTO `admin_operation_log` VALUES (787, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:15:44', '2020-05-21 01:15:44');
INSERT INTO `admin_operation_log` VALUES (788, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:15:45', '2020-05-21 01:15:45');
INSERT INTO `admin_operation_log` VALUES (789, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:16:38', '2020-05-21 01:16:38');
INSERT INTO `admin_operation_log` VALUES (790, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:16:38', '2020-05-21 01:16:38');
INSERT INTO `admin_operation_log` VALUES (791, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:16:39', '2020-05-21 01:16:39');
INSERT INTO `admin_operation_log` VALUES (792, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:16:39', '2020-05-21 01:16:39');
INSERT INTO `admin_operation_log` VALUES (793, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:07', '2020-05-21 01:17:07');
INSERT INTO `admin_operation_log` VALUES (794, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:07', '2020-05-21 01:17:07');
INSERT INTO `admin_operation_log` VALUES (795, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:08', '2020-05-21 01:17:08');
INSERT INTO `admin_operation_log` VALUES (796, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:08', '2020-05-21 01:17:08');
INSERT INTO `admin_operation_log` VALUES (797, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:10', '2020-05-21 01:17:10');
INSERT INTO `admin_operation_log` VALUES (798, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:10', '2020-05-21 01:17:10');
INSERT INTO `admin_operation_log` VALUES (799, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:35', '2020-05-21 01:17:35');
INSERT INTO `admin_operation_log` VALUES (800, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:35', '2020-05-21 01:17:35');
INSERT INTO `admin_operation_log` VALUES (801, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:51', '2020-05-21 01:17:51');
INSERT INTO `admin_operation_log` VALUES (802, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:51', '2020-05-21 01:17:51');
INSERT INTO `admin_operation_log` VALUES (803, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:17:51', '2020-05-21 01:17:51');
INSERT INTO `admin_operation_log` VALUES (804, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:17:52', '2020-05-21 01:17:52');
INSERT INTO `admin_operation_log` VALUES (805, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:20:46', '2020-05-21 01:20:46');
INSERT INTO `admin_operation_log` VALUES (806, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:20:48', '2020-05-21 01:20:48');
INSERT INTO `admin_operation_log` VALUES (807, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:21:17', '2020-05-21 01:21:17');
INSERT INTO `admin_operation_log` VALUES (808, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:02', '2020-05-21 01:23:02');
INSERT INTO `admin_operation_log` VALUES (809, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:04', '2020-05-21 01:23:04');
INSERT INTO `admin_operation_log` VALUES (810, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:37', '2020-05-21 01:23:37');
INSERT INTO `admin_operation_log` VALUES (811, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:38', '2020-05-21 01:23:38');
INSERT INTO `admin_operation_log` VALUES (812, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:57', '2020-05-21 01:23:57');
INSERT INTO `admin_operation_log` VALUES (813, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:23:59', '2020-05-21 01:23:59');
INSERT INTO `admin_operation_log` VALUES (814, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:24:15', '2020-05-21 01:24:15');
INSERT INTO `admin_operation_log` VALUES (815, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:24:16', '2020-05-21 01:24:16');
INSERT INTO `admin_operation_log` VALUES (816, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:26:09', '2020-05-21 01:26:09');
INSERT INTO `admin_operation_log` VALUES (817, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:26:09', '2020-05-21 01:26:09');
INSERT INTO `admin_operation_log` VALUES (818, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:26:57', '2020-05-21 01:26:57');
INSERT INTO `admin_operation_log` VALUES (819, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:26:59', '2020-05-21 01:26:59');
INSERT INTO `admin_operation_log` VALUES (820, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:27:00', '2020-05-21 01:27:00');
INSERT INTO `admin_operation_log` VALUES (821, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:27:01', '2020-05-21 01:27:01');
INSERT INTO `admin_operation_log` VALUES (822, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:27:22', '2020-05-21 01:27:22');
INSERT INTO `admin_operation_log` VALUES (823, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:27:22', '2020-05-21 01:27:22');
INSERT INTO `admin_operation_log` VALUES (824, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:27:50', '2020-05-21 01:27:50');
INSERT INTO `admin_operation_log` VALUES (825, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:27:51', '2020-05-21 01:27:51');
INSERT INTO `admin_operation_log` VALUES (826, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:28:12', '2020-05-21 01:28:12');
INSERT INTO `admin_operation_log` VALUES (827, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:28:13', '2020-05-21 01:28:13');
INSERT INTO `admin_operation_log` VALUES (828, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:28:44', '2020-05-21 01:28:44');
INSERT INTO `admin_operation_log` VALUES (829, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:28:45', '2020-05-21 01:28:45');
INSERT INTO `admin_operation_log` VALUES (830, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:48:59', '2020-05-21 01:48:59');
INSERT INTO `admin_operation_log` VALUES (831, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:49:04', '2020-05-21 01:49:04');
INSERT INTO `admin_operation_log` VALUES (832, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:49:30', '2020-05-21 01:49:30');
INSERT INTO `admin_operation_log` VALUES (833, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:49:31', '2020-05-21 01:49:31');
INSERT INTO `admin_operation_log` VALUES (834, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:03', '2020-05-21 01:50:03');
INSERT INTO `admin_operation_log` VALUES (835, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:04', '2020-05-21 01:50:04');
INSERT INTO `admin_operation_log` VALUES (836, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:35', '2020-05-21 01:50:35');
INSERT INTO `admin_operation_log` VALUES (837, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:36', '2020-05-21 01:50:36');
INSERT INTO `admin_operation_log` VALUES (838, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:50:38', '2020-05-21 01:50:38');
INSERT INTO `admin_operation_log` VALUES (839, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:40', '2020-05-21 01:50:40');
INSERT INTO `admin_operation_log` VALUES (840, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:50:41', '2020-05-21 01:50:41');
INSERT INTO `admin_operation_log` VALUES (841, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:50:41', '2020-05-21 01:50:41');
INSERT INTO `admin_operation_log` VALUES (842, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:52:12', '2020-05-21 01:52:12');
INSERT INTO `admin_operation_log` VALUES (843, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:52:12', '2020-05-21 01:52:12');
INSERT INTO `admin_operation_log` VALUES (844, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:52:40', '2020-05-21 01:52:40');
INSERT INTO `admin_operation_log` VALUES (845, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:52:42', '2020-05-21 01:52:42');
INSERT INTO `admin_operation_log` VALUES (846, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:53:49', '2020-05-21 01:53:49');
INSERT INTO `admin_operation_log` VALUES (847, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:53:50', '2020-05-21 01:53:50');
INSERT INTO `admin_operation_log` VALUES (848, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:54:11', '2020-05-21 01:54:11');
INSERT INTO `admin_operation_log` VALUES (849, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:54:12', '2020-05-21 01:54:12');
INSERT INTO `admin_operation_log` VALUES (850, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:54:59', '2020-05-21 01:54:59');
INSERT INTO `admin_operation_log` VALUES (851, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:55:00', '2020-05-21 01:55:00');
INSERT INTO `admin_operation_log` VALUES (852, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:55:34', '2020-05-21 01:55:34');
INSERT INTO `admin_operation_log` VALUES (853, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:55:34', '2020-05-21 01:55:34');
INSERT INTO `admin_operation_log` VALUES (854, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:55:47', '2020-05-21 01:55:47');
INSERT INTO `admin_operation_log` VALUES (855, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:55:47', '2020-05-21 01:55:47');
INSERT INTO `admin_operation_log` VALUES (856, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:56:26', '2020-05-21 01:56:26');
INSERT INTO `admin_operation_log` VALUES (857, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:56:26', '2020-05-21 01:56:26');
INSERT INTO `admin_operation_log` VALUES (858, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:56:56', '2020-05-21 01:56:56');
INSERT INTO `admin_operation_log` VALUES (859, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:56:57', '2020-05-21 01:56:57');
INSERT INTO `admin_operation_log` VALUES (860, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 01:58:10', '2020-05-21 01:58:10');
INSERT INTO `admin_operation_log` VALUES (861, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:58:11', '2020-05-21 01:58:11');
INSERT INTO `admin_operation_log` VALUES (862, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 01:59:33', '2020-05-21 01:59:33');
INSERT INTO `admin_operation_log` VALUES (863, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 01:59:34', '2020-05-21 01:59:34');
INSERT INTO `admin_operation_log` VALUES (864, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:00:35', '2020-05-21 02:00:35');
INSERT INTO `admin_operation_log` VALUES (865, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:00:36', '2020-05-21 02:00:36');
INSERT INTO `admin_operation_log` VALUES (866, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:00:59', '2020-05-21 02:00:59');
INSERT INTO `admin_operation_log` VALUES (867, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:00:59', '2020-05-21 02:00:59');
INSERT INTO `admin_operation_log` VALUES (868, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:03:54', '2020-05-21 02:03:54');
INSERT INTO `admin_operation_log` VALUES (869, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:03:55', '2020-05-21 02:03:55');
INSERT INTO `admin_operation_log` VALUES (870, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:05:56', '2020-05-21 02:05:56');
INSERT INTO `admin_operation_log` VALUES (871, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:05:57', '2020-05-21 02:05:57');
INSERT INTO `admin_operation_log` VALUES (872, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:06:32', '2020-05-21 02:06:32');
INSERT INTO `admin_operation_log` VALUES (873, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:06:42', '2020-05-21 02:06:42');
INSERT INTO `admin_operation_log` VALUES (874, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:06:43', '2020-05-21 02:06:43');
INSERT INTO `admin_operation_log` VALUES (875, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:07:23', '2020-05-21 02:07:23');
INSERT INTO `admin_operation_log` VALUES (876, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:07:27', '2020-05-21 02:07:27');
INSERT INTO `admin_operation_log` VALUES (877, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"11\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 02:07:33', '2020-05-21 02:07:33');
INSERT INTO `admin_operation_log` VALUES (878, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"11\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 02:12:19', '2020-05-21 02:12:19');
INSERT INTO `admin_operation_log` VALUES (879, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"11\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 02:13:03', '2020-05-21 02:13:03');
INSERT INTO `admin_operation_log` VALUES (880, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"11\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 02:13:50', '2020-05-21 02:13:50');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'admin/plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:21:46', '2020-05-21 02:21:46');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:21:48', '2020-05-21 02:21:48');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 02:21:51', '2020-05-21 02:21:51');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"_token\":\"QcGhfriN7b4lOSVqyJ3kH0984gUjUdDnr1t8R3ZR\",\"parent_id\":null,\"slug\":\"merchant-api\",\"name\":\"\\u5546\\u6237\\u63a5\\u53e3\",\"http_method\":[null],\"http_path\":[\"\\/merchant\\/*\",null],\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/permissions\"}', '2020-05-21 02:22:30', '2020-05-21 02:22:30');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:22:30', '2020-05-21 02:22:30');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:22:30', '2020-05-21 02:22:30');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:22:37', '2020-05-21 02:22:37');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-05-21 02:22:40', '2020-05-21 02:22:40');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"_token\":\"QcGhfriN7b4lOSVqyJ3kH0984gUjUdDnr1t8R3ZR\",\"slug\":\"merchant\",\"name\":\"\\u5546\\u6237\",\"permissions\":\"11,12,13\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2020-05-21 02:22:44', '2020-05-21 02:22:44');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:22:44', '2020-05-21 02:22:44');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:22:44', '2020-05-21 02:22:44');
INSERT INTO `admin_operation_log` VALUES (892, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:22:57', '2020-05-21 02:22:57');
INSERT INTO `admin_operation_log` VALUES (893, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:22:58', '2020-05-21 02:22:58');
INSERT INTO `admin_operation_log` VALUES (894, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:23:03', '2020-05-21 02:23:03');
INSERT INTO `admin_operation_log` VALUES (895, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:23:04', '2020-05-21 02:23:04');
INSERT INTO `admin_operation_log` VALUES (896, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:23:25', '2020-05-21 02:23:25');
INSERT INTO `admin_operation_log` VALUES (897, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:23:25', '2020-05-21 02:23:25');
INSERT INTO `admin_operation_log` VALUES (898, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:23:25', '2020-05-21 02:23:25');
INSERT INTO `admin_operation_log` VALUES (899, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:26:06', '2020-05-21 02:26:06');
INSERT INTO `admin_operation_log` VALUES (900, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:26:07', '2020-05-21 02:26:07');
INSERT INTO `admin_operation_log` VALUES (901, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:26:07', '2020-05-21 02:26:07');
INSERT INTO `admin_operation_log` VALUES (902, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:28:48', '2020-05-21 02:28:48');
INSERT INTO `admin_operation_log` VALUES (903, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:28:50', '2020-05-21 02:28:50');
INSERT INTO `admin_operation_log` VALUES (904, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:28:50', '2020-05-21 02:28:50');
INSERT INTO `admin_operation_log` VALUES (905, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:30:32', '2020-05-21 02:30:32');
INSERT INTO `admin_operation_log` VALUES (906, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:32', '2020-05-21 02:30:32');
INSERT INTO `admin_operation_log` VALUES (907, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:32', '2020-05-21 02:30:32');
INSERT INTO `admin_operation_log` VALUES (908, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:30:35', '2020-05-21 02:30:35');
INSERT INTO `admin_operation_log` VALUES (909, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:35', '2020-05-21 02:30:35');
INSERT INTO `admin_operation_log` VALUES (910, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:35', '2020-05-21 02:30:35');
INSERT INTO `admin_operation_log` VALUES (911, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:30:53', '2020-05-21 02:30:53');
INSERT INTO `admin_operation_log` VALUES (912, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:53', '2020-05-21 02:30:53');
INSERT INTO `admin_operation_log` VALUES (913, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:30:53', '2020-05-21 02:30:53');
INSERT INTO `admin_operation_log` VALUES (914, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:31:06', '2020-05-21 02:31:06');
INSERT INTO `admin_operation_log` VALUES (915, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:31:08', '2020-05-21 02:31:08');
INSERT INTO `admin_operation_log` VALUES (916, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:31:08', '2020-05-21 02:31:08');
INSERT INTO `admin_operation_log` VALUES (917, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:31:40', '2020-05-21 02:31:40');
INSERT INTO `admin_operation_log` VALUES (918, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:31:41', '2020-05-21 02:31:41');
INSERT INTO `admin_operation_log` VALUES (919, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:31:41', '2020-05-21 02:31:41');
INSERT INTO `admin_operation_log` VALUES (920, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:32:42', '2020-05-21 02:32:42');
INSERT INTO `admin_operation_log` VALUES (921, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:32:42', '2020-05-21 02:32:42');
INSERT INTO `admin_operation_log` VALUES (922, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:32:42', '2020-05-21 02:32:42');
INSERT INTO `admin_operation_log` VALUES (923, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:32:50', '2020-05-21 02:32:50');
INSERT INTO `admin_operation_log` VALUES (924, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:32:50', '2020-05-21 02:32:50');
INSERT INTO `admin_operation_log` VALUES (925, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:32:50', '2020-05-21 02:32:50');
INSERT INTO `admin_operation_log` VALUES (926, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:40:30', '2020-05-21 02:40:30');
INSERT INTO `admin_operation_log` VALUES (927, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:40:30', '2020-05-21 02:40:30');
INSERT INTO `admin_operation_log` VALUES (928, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:40:30', '2020-05-21 02:40:30');
INSERT INTO `admin_operation_log` VALUES (929, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:40:51', '2020-05-21 02:40:51');
INSERT INTO `admin_operation_log` VALUES (930, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:40:51', '2020-05-21 02:40:51');
INSERT INTO `admin_operation_log` VALUES (931, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:40:51', '2020-05-21 02:40:51');
INSERT INTO `admin_operation_log` VALUES (932, 2, 'merchant-admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:41:07', '2020-05-21 02:41:07');
INSERT INTO `admin_operation_log` VALUES (933, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-21 02:41:07', '2020-05-21 02:41:07');
INSERT INTO `admin_operation_log` VALUES (934, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-21 02:41:07', '2020-05-21 02:41:07');
INSERT INTO `admin_operation_log` VALUES (935, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-21 02:41:07', '2020-05-21 02:41:07');
INSERT INTO `admin_operation_log` VALUES (936, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-21 02:41:07', '2020-05-21 02:41:07');
INSERT INTO `admin_operation_log` VALUES (937, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:41:08', '2020-05-21 02:41:08');
INSERT INTO `admin_operation_log` VALUES (938, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:41:08', '2020-05-21 02:41:08');
INSERT INTO `admin_operation_log` VALUES (939, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:41:08', '2020-05-21 02:41:08');
INSERT INTO `admin_operation_log` VALUES (940, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:41:30', '2020-05-21 02:41:30');
INSERT INTO `admin_operation_log` VALUES (941, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:41:30', '2020-05-21 02:41:30');
INSERT INTO `admin_operation_log` VALUES (942, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:41:30', '2020-05-21 02:41:30');
INSERT INTO `admin_operation_log` VALUES (943, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:43:47', '2020-05-21 02:43:47');
INSERT INTO `admin_operation_log` VALUES (944, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:43:47', '2020-05-21 02:43:47');
INSERT INTO `admin_operation_log` VALUES (945, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:43:47', '2020-05-21 02:43:47');
INSERT INTO `admin_operation_log` VALUES (946, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:43:48', '2020-05-21 02:43:48');
INSERT INTO `admin_operation_log` VALUES (947, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:43:48', '2020-05-21 02:43:48');
INSERT INTO `admin_operation_log` VALUES (948, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:43:48', '2020-05-21 02:43:48');
INSERT INTO `admin_operation_log` VALUES (949, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:45:42', '2020-05-21 02:45:42');
INSERT INTO `admin_operation_log` VALUES (950, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:42', '2020-05-21 02:45:42');
INSERT INTO `admin_operation_log` VALUES (951, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:42', '2020-05-21 02:45:42');
INSERT INTO `admin_operation_log` VALUES (952, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:45:43', '2020-05-21 02:45:43');
INSERT INTO `admin_operation_log` VALUES (953, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:43', '2020-05-21 02:45:43');
INSERT INTO `admin_operation_log` VALUES (954, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:43', '2020-05-21 02:45:43');
INSERT INTO `admin_operation_log` VALUES (955, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:45:44', '2020-05-21 02:45:44');
INSERT INTO `admin_operation_log` VALUES (956, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:44', '2020-05-21 02:45:44');
INSERT INTO `admin_operation_log` VALUES (957, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:45:44', '2020-05-21 02:45:44');
INSERT INTO `admin_operation_log` VALUES (958, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:47:02', '2020-05-21 02:47:02');
INSERT INTO `admin_operation_log` VALUES (959, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:47:02', '2020-05-21 02:47:02');
INSERT INTO `admin_operation_log` VALUES (960, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:47:02', '2020-05-21 02:47:02');
INSERT INTO `admin_operation_log` VALUES (961, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:50:08', '2020-05-21 02:50:08');
INSERT INTO `admin_operation_log` VALUES (962, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:50:09', '2020-05-21 02:50:09');
INSERT INTO `admin_operation_log` VALUES (963, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:50:09', '2020-05-21 02:50:09');
INSERT INTO `admin_operation_log` VALUES (964, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:50:10', '2020-05-21 02:50:10');
INSERT INTO `admin_operation_log` VALUES (965, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":0,\"online\":0,\"created_at\":\"2020-05-21 02:15:11\",\"updated_at\":\"2020-05-21 02:15:11\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:51:26', '2020-05-21 02:51:26');
INSERT INTO `admin_operation_log` VALUES (966, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:51:26', '2020-05-21 02:51:26');
INSERT INTO `admin_operation_log` VALUES (967, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":1,\"online\":0,\"created_at\":\"2020-05-21 02:51:26\",\"updated_at\":\"2020-05-21 02:51:26\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:52:01', '2020-05-21 02:52:01');
INSERT INTO `admin_operation_log` VALUES (968, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:02', '2020-05-21 02:52:02');
INSERT INTO `admin_operation_log` VALUES (969, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:52:20', '2020-05-21 02:52:20');
INSERT INTO `admin_operation_log` VALUES (970, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:21', '2020-05-21 02:52:21');
INSERT INTO `admin_operation_log` VALUES (971, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:21', '2020-05-21 02:52:21');
INSERT INTO `admin_operation_log` VALUES (972, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":0,\"online\":0,\"created_at\":\"2020-05-21 02:52:02\",\"updated_at\":\"2020-05-21 02:52:02\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:52:24', '2020-05-21 02:52:24');
INSERT INTO `admin_operation_log` VALUES (973, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:24', '2020-05-21 02:52:24');
INSERT INTO `admin_operation_log` VALUES (974, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:52:42', '2020-05-21 02:52:42');
INSERT INTO `admin_operation_log` VALUES (975, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:42', '2020-05-21 02:52:42');
INSERT INTO `admin_operation_log` VALUES (976, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:42', '2020-05-21 02:52:42');
INSERT INTO `admin_operation_log` VALUES (977, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":1,\"online\":0,\"created_at\":\"2020-05-21 02:52:24\",\"updated_at\":\"2020-05-21 02:52:24\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:52:49', '2020-05-21 02:52:49');
INSERT INTO `admin_operation_log` VALUES (978, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:49', '2020-05-21 02:52:49');
INSERT INTO `admin_operation_log` VALUES (979, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":0,\"online\":0,\"created_at\":\"2020-05-21 02:52:49\",\"updated_at\":\"2020-05-21 02:52:49\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:52:51', '2020-05-21 02:52:51');
INSERT INTO `admin_operation_log` VALUES (980, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:52:51', '2020-05-21 02:52:51');
INSERT INTO `admin_operation_log` VALUES (981, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":1,\"online\":0,\"created_at\":\"2020-05-21 02:52:51\",\"updated_at\":\"2020-05-21 02:52:51\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:55:59', '2020-05-21 02:55:59');
INSERT INTO `admin_operation_log` VALUES (982, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:55:59', '2020-05-21 02:55:59');
INSERT INTO `admin_operation_log` VALUES (983, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:58:32', '2020-05-21 02:58:32');
INSERT INTO `admin_operation_log` VALUES (984, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:58:33', '2020-05-21 02:58:33');
INSERT INTO `admin_operation_log` VALUES (985, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:58:33', '2020-05-21 02:58:33');
INSERT INTO `admin_operation_log` VALUES (986, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:58:33', '2020-05-21 02:58:33');
INSERT INTO `admin_operation_log` VALUES (987, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:58:33', '2020-05-21 02:58:33');
INSERT INTO `admin_operation_log` VALUES (988, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:58:33', '2020-05-21 02:58:33');
INSERT INTO `admin_operation_log` VALUES (989, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 02:59:11', '2020-05-21 02:59:11');
INSERT INTO `admin_operation_log` VALUES (990, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 02:59:11', '2020-05-21 02:59:11');
INSERT INTO `admin_operation_log` VALUES (991, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:59:11', '2020-05-21 02:59:11');
INSERT INTO `admin_operation_log` VALUES (992, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":0,\"online\":0,\"created_at\":\"2020-05-21 02:55:59\",\"updated_at\":\"2020-05-21 02:55:59\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:59:13', '2020-05-21 02:59:13');
INSERT INTO `admin_operation_log` VALUES (993, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:59:13', '2020-05-21 02:59:13');
INSERT INTO `admin_operation_log` VALUES (994, 2, 'merchant-admin/merchant/robotHandle', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":1,\"online\":0,\"created_at\":\"2020-05-21 02:59:13\",\"updated_at\":\"2020-05-21 02:59:13\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:59:16', '2020-05-21 02:59:16');
INSERT INTO `admin_operation_log` VALUES (995, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":2,\"site_title\":\"11\",\"merchant_id\":2,\"plat_id\":2,\"extra_json\":\"[{\\\"key\\\":\\\"admin_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u540e\\\\u53f0\\\\u767b\\\\u5f55\\\\u57df\\\\u540d\\\"},{\\\"key\\\":\\\"username\\\",\\\"value\\\":\\\"22\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u8d26\\\\u6237\\\"},{\\\"key\\\":\\\"password\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u673a\\\\u5668\\\\u4eba\\\\u5bc6\\\\u7801\\\"}]\",\"status\":1,\"online\":0,\"created_at\":\"2020-05-21 02:59:13\",\"updated_at\":\"2020-05-21 02:59:13\",\"plat\":{\"id\":2,\"name\":\"\\u4e2d\\u535a\",\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}],\"status\":1,\"created_at\":\"2020-05-20 22:01:42\",\"updated_at\":\"2020-05-21 00:44:51\"}}', '2020-05-21 02:59:17', '2020-05-21 02:59:17');
INSERT INTO `admin_operation_log` VALUES (996, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:59:17', '2020-05-21 02:59:17');
INSERT INTO `admin_operation_log` VALUES (997, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 02:59:59', '2020-05-21 02:59:59');
INSERT INTO `admin_operation_log` VALUES (998, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:01', '2020-05-21 03:00:01');
INSERT INTO `admin_operation_log` VALUES (999, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:01', '2020-05-21 03:00:01');
INSERT INTO `admin_operation_log` VALUES (1000, 2, 'merchant-admin/merchant/delete/2', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:04', '2020-05-21 03:00:04');
INSERT INTO `admin_operation_log` VALUES (1001, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:04', '2020-05-21 03:00:04');
INSERT INTO `admin_operation_log` VALUES (1002, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"\\u4e03\\u661f\\u5f69\\u7247\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:00:20', '2020-05-21 03:00:20');
INSERT INTO `admin_operation_log` VALUES (1003, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"\\u4e03\\u661f\\u5f69\\u7247\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:00:23', '2020-05-21 03:00:23');
INSERT INTO `admin_operation_log` VALUES (1004, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:00:27', '2020-05-21 03:00:27');
INSERT INTO `admin_operation_log` VALUES (1005, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:28', '2020-05-21 03:00:28');
INSERT INTO `admin_operation_log` VALUES (1006, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:28', '2020-05-21 03:00:28');
INSERT INTO `admin_operation_log` VALUES (1007, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:00:28', '2020-05-21 03:00:28');
INSERT INTO `admin_operation_log` VALUES (1008, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:28', '2020-05-21 03:00:28');
INSERT INTO `admin_operation_log` VALUES (1009, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:28', '2020-05-21 03:00:28');
INSERT INTO `admin_operation_log` VALUES (1010, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:00:30', '2020-05-21 03:00:30');
INSERT INTO `admin_operation_log` VALUES (1011, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:30', '2020-05-21 03:00:30');
INSERT INTO `admin_operation_log` VALUES (1012, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:00:30', '2020-05-21 03:00:30');
INSERT INTO `admin_operation_log` VALUES (1013, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"23213\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:00:58', '2020-05-21 03:00:58');
INSERT INTO `admin_operation_log` VALUES (1014, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:12', '2020-05-21 03:01:12');
INSERT INTO `admin_operation_log` VALUES (1015, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:13', '2020-05-21 03:01:13');
INSERT INTO `admin_operation_log` VALUES (1016, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:13', '2020-05-21 03:01:13');
INSERT INTO `admin_operation_log` VALUES (1017, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"111\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11111\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"22222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"3311\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:01:37', '2020-05-21 03:01:37');
INSERT INTO `admin_operation_log` VALUES (1018, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:37', '2020-05-21 03:01:37');
INSERT INTO `admin_operation_log` VALUES (1019, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:57', '2020-05-21 03:01:57');
INSERT INTO `admin_operation_log` VALUES (1020, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:57', '2020-05-21 03:01:57');
INSERT INTO `admin_operation_log` VALUES (1021, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:01:57', '2020-05-21 03:01:57');
INSERT INTO `admin_operation_log` VALUES (1022, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"site_title\":\"3123\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 03:02:03', '2020-05-21 03:02:03');
INSERT INTO `admin_operation_log` VALUES (1023, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:02:03', '2020-05-21 03:02:03');
INSERT INTO `admin_operation_log` VALUES (1024, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:24', '2020-05-21 03:04:24');
INSERT INTO `admin_operation_log` VALUES (1025, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:25', '2020-05-21 03:04:25');
INSERT INTO `admin_operation_log` VALUES (1026, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:25', '2020-05-21 03:04:25');
INSERT INTO `admin_operation_log` VALUES (1027, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:29', '2020-05-21 03:04:29');
INSERT INTO `admin_operation_log` VALUES (1028, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:30', '2020-05-21 03:04:30');
INSERT INTO `admin_operation_log` VALUES (1029, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:04:30', '2020-05-21 03:04:30');
INSERT INTO `admin_operation_log` VALUES (1030, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:14', '2020-05-21 03:06:14');
INSERT INTO `admin_operation_log` VALUES (1031, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:15', '2020-05-21 03:06:15');
INSERT INTO `admin_operation_log` VALUES (1032, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:15', '2020-05-21 03:06:15');
INSERT INTO `admin_operation_log` VALUES (1033, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:41', '2020-05-21 03:06:41');
INSERT INTO `admin_operation_log` VALUES (1034, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:41', '2020-05-21 03:06:41');
INSERT INTO `admin_operation_log` VALUES (1035, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:41', '2020-05-21 03:06:41');
INSERT INTO `admin_operation_log` VALUES (1036, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:50', '2020-05-21 03:06:50');
INSERT INTO `admin_operation_log` VALUES (1037, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:51', '2020-05-21 03:06:51');
INSERT INTO `admin_operation_log` VALUES (1038, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:06:51', '2020-05-21 03:06:51');
INSERT INTO `admin_operation_log` VALUES (1039, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:07:32', '2020-05-21 03:07:32');
INSERT INTO `admin_operation_log` VALUES (1040, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:07:32', '2020-05-21 03:07:32');
INSERT INTO `admin_operation_log` VALUES (1041, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:07:32', '2020-05-21 03:07:32');
INSERT INTO `admin_operation_log` VALUES (1042, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:08:51', '2020-05-21 03:08:51');
INSERT INTO `admin_operation_log` VALUES (1043, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:08:51', '2020-05-21 03:08:51');
INSERT INTO `admin_operation_log` VALUES (1044, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:08:51', '2020-05-21 03:08:51');
INSERT INTO `admin_operation_log` VALUES (1045, 2, 'merchant-admin/merchant/changeStatus', 'POST', '127.0.0.1', '{\"id\":3,\"site_title\":\"\\u4e03\\u661f\\u5f69\\u7247\",\"merchant_id\":2,\"plat_id\":1,\"extra_json\":\"[{\\\"key\\\":\\\"api_url\\\",\\\"value\\\":\\\"11\\\",\\\"desc\\\":\\\"\\\\u5927\\\\u53d1\\\\u63a5\\\\u53e3\\\\u5730\\\\u5740\\\"},{\\\"key\\\":\\\"dafa_id\\\",\\\"value\\\":\\\"222\\\",\\\"desc\\\":\\\"\\\\u5927\\\\u53d1ID\\\"},{\\\"key\\\":\\\"dafa_secret\\\",\\\"value\\\":\\\"33\\\",\\\"desc\\\":\\\"\\\\u5927\\\\u53d1\\\\u5bc6\\\\u94a5\\\"}]\",\"status\":0,\"online\":0,\"created_at\":\"2020-05-21 03:00:20\",\"updated_at\":\"2020-05-21 03:00:20\",\"plat\":{\"id\":1,\"name\":\"\\u5927\\u53d1\",\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}],\"status\":1,\"created_at\":\"2020-05-20 22:00:48\",\"updated_at\":\"2020-05-21 00:44:40\"}}', '2020-05-21 03:08:57', '2020-05-21 03:08:57');
INSERT INTO `admin_operation_log` VALUES (1046, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:08:57', '2020-05-21 03:08:57');
INSERT INTO `admin_operation_log` VALUES (1047, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:09:03', '2020-05-21 03:09:03');
INSERT INTO `admin_operation_log` VALUES (1048, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:09:03', '2020-05-21 03:09:03');
INSERT INTO `admin_operation_log` VALUES (1049, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:09:03', '2020-05-21 03:09:03');
INSERT INTO `admin_operation_log` VALUES (1050, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:09:16', '2020-05-21 03:09:16');
INSERT INTO `admin_operation_log` VALUES (1051, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:09:16', '2020-05-21 03:09:16');
INSERT INTO `admin_operation_log` VALUES (1052, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:09:16', '2020-05-21 03:09:16');
INSERT INTO `admin_operation_log` VALUES (1053, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:11:12', '2020-05-21 03:11:12');
INSERT INTO `admin_operation_log` VALUES (1054, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:11:13', '2020-05-21 03:11:13');
INSERT INTO `admin_operation_log` VALUES (1055, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:11:13', '2020-05-21 03:11:13');
INSERT INTO `admin_operation_log` VALUES (1056, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:03', '2020-05-21 03:12:03');
INSERT INTO `admin_operation_log` VALUES (1057, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:03', '2020-05-21 03:12:03');
INSERT INTO `admin_operation_log` VALUES (1058, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:03', '2020-05-21 03:12:03');
INSERT INTO `admin_operation_log` VALUES (1059, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:30', '2020-05-21 03:12:30');
INSERT INTO `admin_operation_log` VALUES (1060, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:31', '2020-05-21 03:12:31');
INSERT INTO `admin_operation_log` VALUES (1061, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:12:31', '2020-05-21 03:12:31');
INSERT INTO `admin_operation_log` VALUES (1062, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:13:35', '2020-05-21 03:13:35');
INSERT INTO `admin_operation_log` VALUES (1063, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:13:36', '2020-05-21 03:13:36');
INSERT INTO `admin_operation_log` VALUES (1064, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:13:36', '2020-05-21 03:13:36');
INSERT INTO `admin_operation_log` VALUES (1065, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:14:07', '2020-05-21 03:14:07');
INSERT INTO `admin_operation_log` VALUES (1066, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:14:08', '2020-05-21 03:14:08');
INSERT INTO `admin_operation_log` VALUES (1067, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:14:08', '2020-05-21 03:14:08');
INSERT INTO `admin_operation_log` VALUES (1068, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:14:32', '2020-05-21 03:14:32');
INSERT INTO `admin_operation_log` VALUES (1069, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:14:33', '2020-05-21 03:14:33');
INSERT INTO `admin_operation_log` VALUES (1070, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:14:33', '2020-05-21 03:14:33');
INSERT INTO `admin_operation_log` VALUES (1071, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:15:10', '2020-05-21 03:15:10');
INSERT INTO `admin_operation_log` VALUES (1072, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:15:11', '2020-05-21 03:15:11');
INSERT INTO `admin_operation_log` VALUES (1073, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:15:11', '2020-05-21 03:15:11');
INSERT INTO `admin_operation_log` VALUES (1074, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:15:20', '2020-05-21 03:15:20');
INSERT INTO `admin_operation_log` VALUES (1075, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:15:21', '2020-05-21 03:15:21');
INSERT INTO `admin_operation_log` VALUES (1076, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:15:21', '2020-05-21 03:15:21');
INSERT INTO `admin_operation_log` VALUES (1077, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:16:39', '2020-05-21 03:16:39');
INSERT INTO `admin_operation_log` VALUES (1078, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:16:40', '2020-05-21 03:16:40');
INSERT INTO `admin_operation_log` VALUES (1079, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:16:40', '2020-05-21 03:16:40');
INSERT INTO `admin_operation_log` VALUES (1080, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:18:02', '2020-05-21 03:18:02');
INSERT INTO `admin_operation_log` VALUES (1081, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:18:03', '2020-05-21 03:18:03');
INSERT INTO `admin_operation_log` VALUES (1082, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:18:03', '2020-05-21 03:18:03');
INSERT INTO `admin_operation_log` VALUES (1083, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":7,\"site_title\":\"hahahh\",\"plat_id\":2,\"extra_json\":[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]}', '2020-05-21 03:19:31', '2020-05-21 03:19:31');
INSERT INTO `admin_operation_log` VALUES (1084, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:19:31', '2020-05-21 03:19:31');
INSERT INTO `admin_operation_log` VALUES (1085, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:19:36', '2020-05-21 03:19:36');
INSERT INTO `admin_operation_log` VALUES (1086, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:19:37', '2020-05-21 03:19:37');
INSERT INTO `admin_operation_log` VALUES (1087, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:19:37', '2020-05-21 03:19:37');
INSERT INTO `admin_operation_log` VALUES (1088, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":5,\"site_title\":\"312312323\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:19:53', '2020-05-21 03:19:53');
INSERT INTO `admin_operation_log` VALUES (1089, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:19:53', '2020-05-21 03:19:53');
INSERT INTO `admin_operation_log` VALUES (1090, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":5,\"site_title\":\"6666666\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:20:16', '2020-05-21 03:20:16');
INSERT INTO `admin_operation_log` VALUES (1091, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:20:16', '2020-05-21 03:20:16');
INSERT INTO `admin_operation_log` VALUES (1092, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":5,\"site_title\":\"22222\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:20:31', '2020-05-21 03:20:31');
INSERT INTO `admin_operation_log` VALUES (1093, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:20:31', '2020-05-21 03:20:31');
INSERT INTO `admin_operation_log` VALUES (1094, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:21:15', '2020-05-21 03:21:15');
INSERT INTO `admin_operation_log` VALUES (1095, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:21:16', '2020-05-21 03:21:16');
INSERT INTO `admin_operation_log` VALUES (1096, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:21:16', '2020-05-21 03:21:16');
INSERT INTO `admin_operation_log` VALUES (1097, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":5,\"site_title\":\"\\u7231\\u4f60\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:21:26', '2020-05-21 03:21:26');
INSERT INTO `admin_operation_log` VALUES (1098, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:21:26', '2020-05-21 03:21:26');
INSERT INTO `admin_operation_log` VALUES (1099, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":6,\"site_title\":\"222\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11111\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"22222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"3311\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:21:53', '2020-05-21 03:21:53');
INSERT INTO `admin_operation_log` VALUES (1100, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:21:54', '2020-05-21 03:21:54');
INSERT INTO `admin_operation_log` VALUES (1101, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:15', '2020-05-21 03:22:15');
INSERT INTO `admin_operation_log` VALUES (1102, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:16', '2020-05-21 03:22:16');
INSERT INTO `admin_operation_log` VALUES (1103, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:16', '2020-05-21 03:22:16');
INSERT INTO `admin_operation_log` VALUES (1104, 2, 'merchant-admin/merchant/delete/6', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:27', '2020-05-21 03:22:27');
INSERT INTO `admin_operation_log` VALUES (1105, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:27', '2020-05-21 03:22:27');
INSERT INTO `admin_operation_log` VALUES (1106, 2, 'merchant-admin/merchant/delete/7', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:28', '2020-05-21 03:22:28');
INSERT INTO `admin_operation_log` VALUES (1107, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:28', '2020-05-21 03:22:28');
INSERT INTO `admin_operation_log` VALUES (1108, 2, 'merchant-admin/merchant/delete/8', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:28', '2020-05-21 03:22:28');
INSERT INTO `admin_operation_log` VALUES (1109, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:28', '2020-05-21 03:22:28');
INSERT INTO `admin_operation_log` VALUES (1110, 2, 'merchant-admin/merchant/delete/9', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:29', '2020-05-21 03:22:29');
INSERT INTO `admin_operation_log` VALUES (1111, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:29', '2020-05-21 03:22:29');
INSERT INTO `admin_operation_log` VALUES (1112, 2, 'merchant-admin/merchant/delete/10', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:30', '2020-05-21 03:22:30');
INSERT INTO `admin_operation_log` VALUES (1113, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:30', '2020-05-21 03:22:30');
INSERT INTO `admin_operation_log` VALUES (1114, 2, 'merchant-admin/merchant/delete/5', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:31', '2020-05-21 03:22:31');
INSERT INTO `admin_operation_log` VALUES (1115, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:31', '2020-05-21 03:22:31');
INSERT INTO `admin_operation_log` VALUES (1116, 2, 'merchant-admin/merchant/delete/11', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:33', '2020-05-21 03:22:33');
INSERT INTO `admin_operation_log` VALUES (1117, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:33', '2020-05-21 03:22:33');
INSERT INTO `admin_operation_log` VALUES (1118, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:35', '2020-05-21 03:22:35');
INSERT INTO `admin_operation_log` VALUES (1119, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:36', '2020-05-21 03:22:36');
INSERT INTO `admin_operation_log` VALUES (1120, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:36', '2020-05-21 03:22:36');
INSERT INTO `admin_operation_log` VALUES (1121, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":12,\"site_title\":\"\\u7231\\u4f602\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:22:41', '2020-05-21 03:22:41');
INSERT INTO `admin_operation_log` VALUES (1122, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:41', '2020-05-21 03:22:41');
INSERT INTO `admin_operation_log` VALUES (1123, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:22:54', '2020-05-21 03:22:54');
INSERT INTO `admin_operation_log` VALUES (1124, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:54', '2020-05-21 03:22:54');
INSERT INTO `admin_operation_log` VALUES (1125, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:54', '2020-05-21 03:22:54');
INSERT INTO `admin_operation_log` VALUES (1126, 2, 'merchant-admin/merchant/delete/14', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:57', '2020-05-21 03:22:57');
INSERT INTO `admin_operation_log` VALUES (1127, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:22:57', '2020-05-21 03:22:57');
INSERT INTO `admin_operation_log` VALUES (1128, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":13,\"site_title\":\"\\u5475\\u5475\\u5475\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11111\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"22222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"3311\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:23:01', '2020-05-21 03:23:01');
INSERT INTO `admin_operation_log` VALUES (1129, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:23:01', '2020-05-21 03:23:01');
INSERT INTO `admin_operation_log` VALUES (1130, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":13,\"site_title\":\"\\u5475\\u5475\\u5475\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"2312312313231\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222231213\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"11323123123123\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:23:11', '2020-05-21 03:23:11');
INSERT INTO `admin_operation_log` VALUES (1131, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:23:11', '2020-05-21 03:23:11');
INSERT INTO `admin_operation_log` VALUES (1132, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":12,\"site_title\":\"\\u7231\\u4f60\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"11111\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222111\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33333\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:23:21', '2020-05-21 03:23:21');
INSERT INTO `admin_operation_log` VALUES (1133, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:23:21', '2020-05-21 03:23:21');
INSERT INTO `admin_operation_log` VALUES (1134, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:24:36', '2020-05-21 03:24:36');
INSERT INTO `admin_operation_log` VALUES (1135, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:24:36', '2020-05-21 03:24:36');
INSERT INTO `admin_operation_log` VALUES (1136, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:24:36', '2020-05-21 03:24:36');
INSERT INTO `admin_operation_log` VALUES (1137, 2, 'merchant-admin/merchant-plats', 'POST', '127.0.0.1', '{\"id\":null,\"site_title\":\"\\u56db\\u65b9\\u53d1\\u8d22\",\"plat_id\":1,\"extra_json\":[{\"key\":\"api_url\",\"value\":\"http:www.hdd\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]}', '2020-05-21 03:24:53', '2020-05-21 03:24:53');
INSERT INTO `admin_operation_log` VALUES (1138, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:24:53', '2020-05-21 03:24:53');
INSERT INTO `admin_operation_log` VALUES (1139, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:24:56', '2020-05-21 03:24:56');
INSERT INTO `admin_operation_log` VALUES (1140, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:24:56', '2020-05-21 03:24:56');
INSERT INTO `admin_operation_log` VALUES (1141, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:24:56', '2020-05-21 03:24:56');
INSERT INTO `admin_operation_log` VALUES (1142, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:25:26', '2020-05-21 03:25:26');
INSERT INTO `admin_operation_log` VALUES (1143, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:26', '2020-05-21 03:25:26');
INSERT INTO `admin_operation_log` VALUES (1144, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:26', '2020-05-21 03:25:26');
INSERT INTO `admin_operation_log` VALUES (1145, 2, 'merchant-admin/merchant/delete/15', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:39', '2020-05-21 03:25:39');
INSERT INTO `admin_operation_log` VALUES (1146, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:39', '2020-05-21 03:25:39');
INSERT INTO `admin_operation_log` VALUES (1147, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:25:42', '2020-05-21 03:25:42');
INSERT INTO `admin_operation_log` VALUES (1148, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:42', '2020-05-21 03:25:42');
INSERT INTO `admin_operation_log` VALUES (1149, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:25:42', '2020-05-21 03:25:42');
INSERT INTO `admin_operation_log` VALUES (1150, 2, 'merchant-admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:25:59', '2020-05-21 03:25:59');
INSERT INTO `admin_operation_log` VALUES (1151, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Tickets\"}', '2020-05-21 03:25:59', '2020-05-21 03:25:59');
INSERT INTO `admin_operation_log` VALUES (1152, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\NewUsers\"}', '2020-05-21 03:25:59', '2020-05-21 03:25:59');
INSERT INTO `admin_operation_log` VALUES (1153, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\Sessions\"}', '2020-05-21 03:25:59', '2020-05-21 03:25:59');
INSERT INTO `admin_operation_log` VALUES (1154, 2, 'merchant-admin/dcat-api/value', 'POST', '127.0.0.1', '{\"_token\":\"JdrUJAofpgVhPGJS5gdDnw2JjoeCzVuD3T7KXKv1\",\"_key\":\"App\\\\MerchantAdmin\\\\Metrics\\\\Examples\\\\ProductOrders\"}', '2020-05-21 03:25:59', '2020-05-21 03:25:59');
INSERT INTO `admin_operation_log` VALUES (1155, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:26:00', '2020-05-21 03:26:00');
INSERT INTO `admin_operation_log` VALUES (1156, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:26:00', '2020-05-21 03:26:00');
INSERT INTO `admin_operation_log` VALUES (1157, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:26:00', '2020-05-21 03:26:00');
INSERT INTO `admin_operation_log` VALUES (1158, 2, 'merchant-admin/merchant-plats', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-21 03:26:10', '2020-05-21 03:26:10');
INSERT INTO `admin_operation_log` VALUES (1159, 2, 'merchant-admin/plat_list', 'GET', '127.0.0.1', '[]', '2020-05-21 03:26:10', '2020-05-21 03:26:10');
INSERT INTO `admin_operation_log` VALUES (1160, 2, 'merchant-admin/merchant/plats', 'GET', '127.0.0.1', '[]', '2020-05-21 03:26:10', '2020-05-21 03:26:10');
COMMIT;

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu` (
  `permission_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_permission_menu_permission_id_menu_id_unique` (`permission_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_permission_menu` VALUES (9, 19, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_permissions` VALUES (7, '商户管理', 'merchant', '', '/adminUser,/adminUser/create,/adminUser/*,/adminUser/*/edit', 7, 0, '2020-05-20 20:36:10', '2020-05-20 20:36:57');
INSERT INTO `admin_permissions` VALUES (8, '码商管理', 'server-manage', '', '/server,/server/create,/server/*,/server/*/edit', 8, 0, '2020-05-20 20:37:33', '2020-05-20 20:37:33');
INSERT INTO `admin_permissions` VALUES (9, '接入平台管理', 'plats', '', '/plats,/plats/create,/plats/*,/plats/*/edit', 9, 0, '2020-05-20 22:03:52', '2020-05-20 22:03:52');
INSERT INTO `admin_permissions` VALUES (11, '我的平台', 'merchant-list', '', '/merchant-plats,/merchant-plats/create,/merchant-plats/*,/merchant-plats/*/edit', 10, 0, '2020-05-20 22:13:47', '2020-05-20 22:13:47');
INSERT INTO `admin_permissions` VALUES (12, '获取接入平台列表', 'plat-list', 'GET', '/plat_list', 11, 0, '2020-05-21 00:12:24', '2020-05-21 00:17:24');
INSERT INTO `admin_permissions` VALUES (13, '商户接口', 'merchant-api', '', '/merchant/*', 12, 0, '2020-05-21 02:22:30', '2020-05-21 02:22:30');
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_menu_role_id_menu_id_unique` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 19, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 14, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 15, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 13, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 16, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 17, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (3, 18, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_permissions_role_id_permission_id_unique` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_permissions` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 5, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 13, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `admin_role_users_role_id_user_id_unique` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (3, 9, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES (1, '平台管理', 'administrator', '2020-05-15 18:39:24', '2020-05-16 13:20:56');
INSERT INTO `admin_roles` VALUES (2, '商户', 'merchant', '2020-05-16 13:20:23', '2020-05-16 13:20:23');
INSERT INTO `admin_roles` VALUES (3, '服务商', 'server', '2020-05-16 13:20:40', '2020-05-16 13:20:40');
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(8) unsigned DEFAULT '0' COMMENT '积分',
  `havedJoin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否加入担保计划',
  `join_money` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '担保金',
  `rate` float(3,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '费率',
  `expire_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '过期时间',
  `join_type` int(1) unsigned NOT NULL DEFAULT '1' COMMENT '合作方式，1费率2月付',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$In8S0fuv9ZNIRFGHX7aex.K.ek0Lj4M.DuMXpBI36c4u7kdgS5Jnu', 'Administrator', NULL, 'images/2020-04-30-07-28-23-5eaa7e177bcfe.png', NULL, 0, 0, NULL, 0.00, NULL, 1, 0, '2020-05-16 13:58:21', '2020-05-15 18:39:24', NULL);
INSERT INTO `admin_users` VALUES (2, 'merchant', '$2y$10$5ZiFUouAWqy3Sa2beMlVKOGLL288SpvZb/qICL1ptCCPx4ppZRS02', '测试商户', 'merchant', 'images/爱信.png', NULL, 1500, 0, 0.00, 0.00, '2020-06-16 21:20:30', 2, 0, '2020-05-19 00:23:51', '2020-05-18 21:20:40', NULL);
INSERT INTO `admin_users` VALUES (9, 'ms', '$2y$10$f5NeQhW5Bqyl0USK3uZFT.0d3vbaC4AhS.62/oG6E2Voa2gjcrvhy', '码商测试', 'server', 'images/icon_message_kefu.png', NULL, 0, 0, 0.00, 0.00, NULL, 1, 0, '2020-05-19 00:41:31', '2020-05-19 00:40:09', NULL);
COMMIT;

-- ----------------------------
-- Table structure for chat_msg
-- ----------------------------
DROP TABLE IF EXISTS `chat_msg`;
CREATE TABLE `chat_msg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL COMMENT '服务商ID',
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '消息发送者：server/user',
  `user_id` int(11) DEFAULT NULL COMMENT '游客ID',
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '游客名称',
  `merchant_id` int(11) NOT NULL COMMENT '所属商户',
  `merchant_plat_id` int(11) NOT NULL COMMENT '所属商户平台',
  `msg_type` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'txt' COMMENT '消息类型',
  `content` text COLLATE utf8mb4_bin COMMENT '消息内容',
  `time` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '发送时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for merchant_plats
-- ----------------------------
DROP TABLE IF EXISTS `merchant_plats`;
CREATE TABLE `merchant_plats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站点名称',
  `merchant_id` int(11) DEFAULT NULL COMMENT '商户ID',
  `plat_id` int(11) DEFAULT NULL COMMENT '平台ID',
  `extra_json` text COLLATE utf8mb4_unicode_ci COMMENT '机器人登录参数',
  `status` int(1) unsigned DEFAULT '0' COMMENT '是否禁用',
  `online` int(1) unsigned DEFAULT '0' COMMENT '是否在线',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `setting_name_unique` (`site_title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of merchant_plats
-- ----------------------------
BEGIN;
INSERT INTO `merchant_plats` VALUES (3, '七星彩片', 2, 1, '[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]', 1, 0, '2020-05-21 03:08:57', '2020-05-21 03:08:57');
INSERT INTO `merchant_plats` VALUES (12, '爱你', 2, 1, '[{\"key\":\"api_url\",\"value\":\"11111\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222111\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33333\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]', 0, 0, '2020-05-21 03:23:21', '2020-05-21 03:23:21');
INSERT INTO `merchant_plats` VALUES (13, '呵呵呵', 2, 1, '[{\"key\":\"api_url\",\"value\":\"2312312313231\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222231213\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"11323123123123\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]', 0, 0, '2020-05-21 03:23:11', '2020-05-21 03:23:11');
COMMIT;

-- ----------------------------
-- Table structure for merchant_servers
-- ----------------------------
DROP TABLE IF EXISTS `merchant_servers`;
CREATE TABLE `merchant_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL COMMENT '商户ID',
  `plat_id` int(11) NOT NULL COMMENT '机器人ID',
  `server_id` int(11) NOT NULL COMMENT '服务商ID',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '服务商购分余额',
  `have_send_money` float(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '已上分总额度',
  `status` int(1) NOT NULL COMMENT '状态',
  `is_online` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否在线',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL COMMENT '充值金额',
  `merchant_id` int(11) DEFAULT NULL COMMENT '商户id',
  `merchant_plat_id` int(11) DEFAULT NULL COMMENT '商户平台ID',
  `server_id` int(11) DEFAULT NULL COMMENT '服务商ID',
  `status` int(1) unsigned DEFAULT '0' COMMENT '状态 0:等待确认，1：确认，已上分，2充值错误，已退回，3:已驳回',
  `time` int(11) DEFAULT NULL COMMENT '处理耗时：秒',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for plats
-- ----------------------------
DROP TABLE IF EXISTS `plats`;
CREATE TABLE `plats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '平台编号',
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '平台名称',
  `extra_json` text COLLATE utf8mb4_bin COMMENT '登录参数',
  `status` int(1) DEFAULT NULL COMMENT '是否启用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin MIN_ROWS=1000;

-- ----------------------------
-- Records of plats
-- ----------------------------
BEGIN;
INSERT INTO `plats` VALUES (1, '大发', '[{\"key\":\"api_url\",\"value\":\"11\",\"desc\":\"\\u5927\\u53d1\\u63a5\\u53e3\\u5730\\u5740\"},{\"key\":\"dafa_id\",\"value\":\"222\",\"desc\":\"\\u5927\\u53d1ID\"},{\"key\":\"dafa_secret\",\"value\":\"33\",\"desc\":\"\\u5927\\u53d1\\u5bc6\\u94a5\"}]', 1, '2020-05-20 22:00:48', '2020-05-21 00:44:40');
INSERT INTO `plats` VALUES (2, '中博', '[{\"key\":\"admin_url\",\"value\":\"11\",\"desc\":\"\\u540e\\u53f0\\u767b\\u5f55\\u57df\\u540d\"},{\"key\":\"username\",\"value\":\"22\",\"desc\":\"\\u673a\\u5668\\u4eba\\u8d26\\u6237\"},{\"key\":\"password\",\"value\":\"11\",\"desc\":\"\\u673a\\u5668\\u4eba\\u5bc6\\u7801\"}]', 1, '2020-05-20 22:01:42', '2020-05-21 00:44:51');
COMMIT;

-- ----------------------------
-- Table structure for server_accounts
-- ----------------------------
DROP TABLE IF EXISTS `server_accounts`;
CREATE TABLE `server_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '账户类型：alipay ,wechat, bank,third_code',
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '账户名/归属行',
  `realname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '真实姓名',
  `nickname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '昵称',
  `bank_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '银行卡号',
  `bank_place` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开户行',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '收款二维码图',
  `limit_max` int(11) DEFAULT NULL COMMENT '每日限额',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for trade_logs
-- ----------------------------
DROP TABLE IF EXISTS `trade_logs`;
CREATE TABLE `trade_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `merchant_plat_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL COMMENT '卖出多少分',
  `trade_time` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '交易时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;

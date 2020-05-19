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

 Date: 20/05/2020 01:24:48
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
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `plat_id` int(11) DEFAULT NULL COMMENT '平台ID',
  `extra_json` text COLLATE utf8mb4_unicode_ci COMMENT '机器人登录参数',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `setting_name_unique` (`site_title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of merchant_plats
-- ----------------------------
BEGIN;
INSERT INTO `merchant_plats` VALUES (1, '七星彩票', NULL, NULL, '2020-05-19 23:44:21', '2020-05-19 23:44:21');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin MIN_ROWS=1000;

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

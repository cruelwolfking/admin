/*
 Navicat Premium Data Transfer

 Source Server         : brew_mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : zb-act

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 18/05/2020 00:14:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'feather icon-settings', '', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (3, 2, 3, 'Users', '', 'auth/users', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', '', 'auth/roles', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', '', 'auth/permissions', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', '', 'auth/menu', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', '', 'auth/logs', '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 9, '投注活动', 'fa-heartbeat', 'members', '2020-05-09 01:01:40', '2020-05-09 01:14:27');
INSERT INTO `admin_menu` VALUES (9, 0, 10, '存款活动', 'fa-cc-paypal', 'records', '2020-05-09 01:02:06', '2020-05-09 01:14:27');
INSERT INTO `admin_menu` VALUES (10, 0, 8, '配置', 'fa-chrome', 'config', '2020-05-09 01:14:11', '2020-05-09 01:14:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-08 15:46:01', '2020-05-08 15:46:01');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"3hU8idv0DgwfQrwU3ikNeVAi461eiTHKhooYXwSV\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-08 15:46:04', '2020-05-08 15:46:04');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-08 15:46:04', '2020-05-08 15:46:04');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-08 23:47:39', '2020-05-08 23:47:39');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-08 23:47:54', '2020-05-08 23:47:54');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-08 23:55:49', '2020-05-08 23:55:49');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 00:58:14', '2020-05-09 00:58:14');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"zb-act\",\"tb\":\"members\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 00:58:17', '2020-05-09 00:58:17');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"members\"}', '2020-05-09 00:58:18', '2020-05-09 00:58:18');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"members\",\"exist-table\":\"zb-act|members\",\"model_name\":\"App\\\\Models\\\\Member\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\MemberController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"username\",\"translation\":\"\\u73a9\\u5bb6\\u8d26\\u6237\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"level\",\"translation\":\"VIP\\u7b49\\u7ea7\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"amount\",\"translation\":\"\\u5956\\u91d1\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"status\",\"translation\":\"\\u6d3e\\u53d1\\u72b6\\u6001\",\"type\":\"unsignedInteger\",\"key\":null,\"default\":\"0\",\"comment\":\"\\u6d3e\\u53d1\\u72b6\\u6001\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 00:58:47', '2020-05-09 00:58:47');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-09 00:58:47', '2020-05-09 00:58:47');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 00:58:49', '2020-05-09 00:58:49');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"zb-act\",\"tb\":\"play_records\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 00:58:53', '2020-05-09 00:58:53');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"play_records\"}', '2020-05-09 00:58:54', '2020-05-09 00:58:54');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"play_records\",\"exist-table\":\"zb-act|play_records\",\"model_name\":\"App\\\\Models\\\\PlayRecord\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\PlayRecordController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"username\",\"translation\":\"\\u73a9\\u5bb6\\u8d26\\u6237\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"play_amount\",\"translation\":\"\\u6295\\u6ce8\\u91d1\\u989d\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6295\\u6ce8\\u91d1\\u989d\"},{\"name\":\"amount\",\"translation\":\"\\u5956\\u91d1\\u989d\\u5ea6\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u5956\\u91d1\\u989d\\u5ea6\"},{\"name\":\"status\",\"translation\":\"\\u6d3e\\u53d1\\u72b6\\u6001\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6d3e\\u53d1\\u72b6\\u6001\"},{\"name\":\"play_time\",\"translation\":\"\\u6295\\u6ce8\\u65f6\\u95f4\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u6295\\u6ce8\\u65f6\\u95f4\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 00:59:05', '2020-05-09 00:59:05');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-09 00:59:05', '2020-05-09 00:59:05');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 00:59:06', '2020-05-09 00:59:06');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 00:59:09', '2020-05-09 00:59:09');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u6295\\u6ce8\\u6d3b\\u52a8\",\"icon\":\"fa-heartbeat\",\"uri\":\"members\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 01:01:40', '2020-05-09 01:01:40');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:01:40', '2020-05-09 01:01:40');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u5b58\\u6b3e\\u6d3b\\u52a8\",\"icon\":\"fa-cc-paypal\",\"uri\":\"records\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 01:02:06', '2020-05-09 01:02:06');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:02:06', '2020-05-09 01:02:06');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-09 01:02:08', '2020-05-09 01:02:08');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:02:09', '2020-05-09 01:02:09');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:02:52', '2020-05-09 01:02:52');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/members', 'GET', '127.0.0.1', '[]', '2020-05-09 01:04:33', '2020-05-09 01:04:33');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/members', 'GET', '127.0.0.1', '[]', '2020-05-09 01:04:47', '2020-05-09 01:04:47');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:04:57', '2020-05-09 01:04:57');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 01:05:44', '2020-05-09 01:05:44');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:49', '2020-05-09 01:05:49');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:49', '2020-05-09 01:05:49');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:50', '2020-05-09 01:05:50');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:51', '2020-05-09 01:05:51');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:51', '2020-05-09 01:05:51');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:52', '2020-05-09 01:05:52');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:52', '2020-05-09 01:05:52');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:52', '2020-05-09 01:05:52');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:53', '2020-05-09 01:05:53');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:05:53', '2020-05-09 01:05:53');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:12:56', '2020-05-09 01:12:56');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"zb-act\",\"tb\":\"config\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 01:12:59', '2020-05-09 01:12:59');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"config\"}', '2020-05-09 01:13:00', '2020-05-09 01:13:00');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"config\",\"exist-table\":\"zb-act|config\",\"model_name\":\"App\\\\Models\\\\Config\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ConfigController\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"plat\",\"translation\":\"\\u767b\\u5f55\\u5730\\u5740\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"username\",\"translation\":\"\\u8d26\\u6237\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"password\",\"translation\":\"\\u5bc6\\u7801\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"primary_key\":\"id\",\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 01:13:23', '2020-05-09 01:13:23');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-05-09 01:13:24', '2020-05-09 01:13:24');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:13:26', '2020-05-09 01:13:26');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:13:56', '2020-05-09 01:13:56');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u914d\\u7f6e\",\"icon\":\"fa-chrome\",\"uri\":\"config\",\"roles\":[\"1\",null],\"permissions\":null,\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\"}', '2020-05-09 01:14:11', '2020-05-09 01:14:11');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:14:11', '2020-05-09 01:14:11');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":10},{\\\"id\\\":8},{\\\"id\\\":9}]\"}', '2020-05-09 01:14:27', '2020-05-09 01:14:27');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:14:27', '2020-05-09 01:14:27');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-05-09 01:14:29', '2020-05-09 01:14:29');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:14:32', '2020-05-09 01:14:32');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:18:12', '2020-05-09 01:18:12');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2020-05-09 01:18:12', '2020-05-09 01:18:12');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/config', 'GET', '127.0.0.1', '[]', '2020-05-09 01:18:26', '2020-05-09 01:18:26');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:18:47', '2020-05-09 01:18:47');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:18:49', '2020-05-09 01:18:49');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:20:33', '2020-05-09 01:20:33');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:20:34', '2020-05-09 01:20:34');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:20:35', '2020-05-09 01:20:35');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:22:26', '2020-05-09 01:22:26');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:23:11', '2020-05-09 01:23:11');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:23', '2020-05-09 01:24:23');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:24', '2020-05-09 01:24:24');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:25', '2020-05-09 01:24:25');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:26', '2020-05-09 01:24:26');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:30', '2020-05-09 01:24:30');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:30', '2020-05-09 01:24:30');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:32', '2020-05-09 01:24:32');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:33', '2020-05-09 01:24:33');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:24:34', '2020-05-09 01:24:34');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:12', '2020-05-09 01:29:12');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:13', '2020-05-09 01:29:13');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:14', '2020-05-09 01:29:14');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:15', '2020-05-09 01:29:15');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:27', '2020-05-09 01:29:27');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:28', '2020-05-09 01:29:28');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 01:29:30', '2020-05-09 01:29:30');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/members', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:05', '2020-05-09 02:50:05');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:50:06', '2020-05-09 02:50:06');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:12', '2020-05-09 02:50:12');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:50:45', '2020-05-09 02:50:45');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/records/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:50:48', '2020-05-09 02:50:48');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:50:49', '2020-05-09 02:50:49');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:51', '2020-05-09 02:50:51');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:52', '2020-05-09 02:50:52');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:52', '2020-05-09 02:50:52');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:53', '2020-05-09 02:50:53');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:53', '2020-05-09 02:50:53');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:54', '2020-05-09 02:50:54');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:54', '2020-05-09 02:50:54');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:54', '2020-05-09 02:50:54');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:55', '2020-05-09 02:50:55');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:55', '2020-05-09 02:50:55');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:56', '2020-05-09 02:50:56');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:57', '2020-05-09 02:50:57');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:57', '2020-05-09 02:50:57');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:57', '2020-05-09 02:50:57');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:58', '2020-05-09 02:50:58');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:58', '2020-05-09 02:50:58');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:59', '2020-05-09 02:50:59');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:50:59', '2020-05-09 02:50:59');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:00', '2020-05-09 02:51:00');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:00', '2020-05-09 02:51:00');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:01', '2020-05-09 02:51:01');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:02', '2020-05-09 02:51:02');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:02', '2020-05-09 02:51:02');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:11', '2020-05-09 02:51:11');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:51:12', '2020-05-09 02:51:12');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:53:49', '2020-05-09 02:53:49');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:54:21', '2020-05-09 02:54:21');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-09 02:54:37', '2020-05-09 02:54:37');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:55:04', '2020-05-09 02:55:04');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:55:06', '2020-05-09 02:55:06');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"f\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:55:06', '2020-05-09 02:55:06');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"all\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:55:07', '2020-05-09 02:55:07');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 02:55:08', '2020-05-09 02:55:08');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:55:27', '2020-05-09 02:55:27');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"RRLORX27vvGAsGval3E586F5DYyQd4FuEyX0ulSS\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-09 02:55:31', '2020-05-09 02:55:31');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:57:53', '2020-05-09 02:57:53');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:58:06', '2020-05-09 02:58:06');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:58:33', '2020-05-09 02:58:33');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:59:15', '2020-05-09 02:59:15');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 02:59:39', '2020-05-09 02:59:39');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 03:00:04', '2020-05-09 03:00:04');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 03:00:32', '2020-05-09 03:00:32');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 03:00:50', '2020-05-09 03:00:50');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 03:01:06', '2020-05-09 03:01:06');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 03:01:17', '2020-05-09 03:01:17');
INSERT INTO `admin_operation_log` VALUES (130, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-09 21:20:02', '2020-05-09 21:20:02');
INSERT INTO `admin_operation_log` VALUES (131, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"KpH7geUZJbD73fIVhdT5uZiiWPdB5CbJlXlFKAJd\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-09 21:20:04', '2020-05-09 21:20:04');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 21:20:04', '2020-05-09 21:20:04');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:24:18', '2020-05-09 22:24:18');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:26:44', '2020-05-09 22:26:44');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:27:41', '2020-05-09 22:27:41');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:31:06', '2020-05-09 22:31:06');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:32:01', '2020-05-09 22:32:01');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:32:34', '2020-05-09 22:32:34');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:34:53', '2020-05-09 22:34:53');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:41:37', '2020-05-09 22:41:37');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:43:34', '2020-05-09 22:43:34');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:43:54', '2020-05-09 22:43:54');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:44:40', '2020-05-09 22:44:40');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:45:16', '2020-05-09 22:45:16');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:45:38', '2020-05-09 22:45:38');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:45:44', '2020-05-09 22:45:44');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:45:56', '2020-05-09 22:45:56');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:46:03', '2020-05-09 22:46:03');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:46:51', '2020-05-09 22:46:51');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:47:16', '2020-05-09 22:47:16');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:48:04', '2020-05-09 22:48:04');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:48:26', '2020-05-09 22:48:26');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:48:46', '2020-05-09 22:48:46');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:49:07', '2020-05-09 22:49:07');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:49:29', '2020-05-09 22:49:29');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:50:48', '2020-05-09 22:50:48');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:51:32', '2020-05-09 22:51:32');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:51:41', '2020-05-09 22:51:41');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:32', '2020-05-09 22:54:32');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:33', '2020-05-09 22:54:33');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:34', '2020-05-09 22:54:34');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:34', '2020-05-09 22:54:34');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:39', '2020-05-09 22:54:39');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:39', '2020-05-09 22:54:39');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:40', '2020-05-09 22:54:40');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:54:57', '2020-05-09 22:54:57');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:55:10', '2020-05-09 22:55:10');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:55:24', '2020-05-09 22:55:24');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:55:26', '2020-05-09 22:55:26');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 22:56:12', '2020-05-09 22:56:12');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 22:56:24', '2020-05-09 22:56:24');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:07:49', '2020-05-09 23:07:49');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:07:58', '2020-05-09 23:07:58');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:09:01', '2020-05-09 23:09:01');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 23:09:11', '2020-05-09 23:09:11');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\"}', '2020-05-09 23:10:16', '2020-05-09 23:10:16');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/records', 'GET', '127.0.0.1', '{\"gender\":\"m\",\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:10:36', '2020-05-09 23:10:36');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:26:28', '2020-05-09 23:26:28');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"plat\":\"http:\\/\\/b283ejr8dxbdfpu.cbacksecond.com\",\"username\":\"gcwyh666\",\"password\":\"qaz******\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Setting\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/config?_pjax=%23pjax-container\",\"_token\":\"0sS9GRKBYrfD9GS3R9Kf5XFz6t28e2Nl1kFMpAIW\"}', '2020-05-09 23:27:05', '2020-05-09 23:27:05');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:27:05', '2020-05-09 23:27:05');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:27:07', '2020-05-09 23:27:07');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:27:08', '2020-05-09 23:27:08');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"plat\":\"https:\\/\\/b283ejr8dxbdfpu.cbacksecond.com\",\"username\":\"gcwyh666\",\"password\":\"qaz******\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Setting\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/config?_pjax=%23pjax-container\",\"_token\":\"0sS9GRKBYrfD9GS3R9Kf5XFz6t28e2Nl1kFMpAIW\"}', '2020-05-09 23:30:08', '2020-05-09 23:30:08');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:30:08', '2020-05-09 23:30:08');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/dcat-api/form', 'POST', '127.0.0.1', '{\"plat\":\"https:\\/\\/b283ejr8dxbdfpu.cbacksecond.com\",\"username\":\"gcwyh666\",\"password\":\"qaz******\",\"_form_\":\"App\\\\Admin\\\\Forms\\\\Setting\",\"_current_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/config?_pjax=%23pjax-container\",\"_token\":\"0sS9GRKBYrfD9GS3R9Kf5XFz6t28e2Nl1kFMpAIW\"}', '2020-05-09 23:30:24', '2020-05-09 23:30:24');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:30:24', '2020-05-09 23:30:24');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:35:23', '2020-05-09 23:35:23');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-09 23:36:34', '2020-05-09 23:36:34');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 01:24:27', '2020-05-10 01:24:27');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 01:25:43', '2020-05-10 01:25:43');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:25:48', '2020-05-10 01:25:48');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:26:28', '2020-05-10 01:26:28');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:30:01', '2020-05-10 01:30:01');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 01:33:00', '2020-05-10 01:33:00');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:33:04', '2020-05-10 01:33:04');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:34:06', '2020-05-10 01:34:06');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:36:11', '2020-05-10 01:36:11');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:40:37', '2020-05-10 01:40:37');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:44:05', '2020-05-10 01:44:05');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:45:07', '2020-05-10 01:45:07');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:45:39', '2020-05-10 01:45:39');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:46:48', '2020-05-10 01:46:48');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:47:48', '2020-05-10 01:47:48');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:51:05', '2020-05-10 01:51:05');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:51:26', '2020-05-10 01:51:26');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:54:49', '2020-05-10 01:54:49');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 01:57:38', '2020-05-10 01:57:38');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 02:01:23', '2020-05-10 02:01:23');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 02:04:47', '2020-05-10 02:04:47');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 02:45:03', '2020-05-10 02:45:03');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 02:45:05', '2020-05-10 02:45:05');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 02:54:23', '2020-05-10 02:54:23');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 02:56:11', '2020-05-10 02:56:11');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:03:24', '2020-05-10 03:03:24');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:04:36', '2020-05-10 03:04:36');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:08:23', '2020-05-10 03:08:23');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:10:18', '2020-05-10 03:10:18');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:13:25', '2020-05-10 03:13:25');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:14:17', '2020-05-10 03:14:17');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:14:43', '2020-05-10 03:14:43');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:16:15', '2020-05-10 03:16:15');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:17:14', '2020-05-10 03:17:14');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:17:57', '2020-05-10 03:17:57');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:18:26', '2020-05-10 03:18:26');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:20:00', '2020-05-10 03:20:00');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:22:03', '2020-05-10 03:22:03');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:22:43', '2020-05-10 03:22:43');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:24:07', '2020-05-10 03:24:07');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 03:25:06', '2020-05-10 03:25:06');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 03:25:55', '2020-05-10 03:25:55');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 03:32:23', '2020-05-10 03:32:23');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 03:32:28', '2020-05-10 03:32:28');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:08:16', '2020-05-10 04:08:16');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:08:17', '2020-05-10 04:08:17');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:08:55', '2020-05-10 04:08:55');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:12:41', '2020-05-10 04:12:41');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:14:21', '2020-05-10 04:14:21');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:14:26', '2020-05-10 04:14:26');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:15:40', '2020-05-10 04:15:40');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:16:50', '2020-05-10 04:16:50');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:24:24', '2020-05-10 04:24:24');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/records', 'GET', '127.0.0.1', '{\"page\":\"4\",\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:24:44', '2020-05-10 04:24:44');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"5\"}', '2020-05-10 04:24:47', '2020-05-10 04:24:47');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:25:16', '2020-05-10 04:25:16');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:25:38', '2020-05-10 04:25:38');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:27:17', '2020-05-10 04:27:17');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:27:31', '2020-05-10 04:27:31');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:28:16', '2020-05-10 04:28:16');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:28:18', '2020-05-10 04:28:18');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:30:54', '2020-05-10 04:30:54');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:30:56', '2020-05-10 04:30:56');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:30:57', '2020-05-10 04:30:57');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:31:27', '2020-05-10 04:31:27');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:31:28', '2020-05-10 04:31:28');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 04:32:06', '2020-05-10 04:32:06');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:33:02', '2020-05-10 04:33:02');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:33:10', '2020-05-10 04:33:10');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:37:22', '2020-05-10 04:37:22');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:38:00', '2020-05-10 04:38:00');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:39:20', '2020-05-10 04:39:20');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:40:11', '2020-05-10 04:40:11');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 04:40:14', '2020-05-10 04:40:14');
INSERT INTO `admin_operation_log` VALUES (263, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-05-10 14:46:50', '2020-05-10 14:46:50');
INSERT INTO `admin_operation_log` VALUES (264, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"820tOdrGD4e9zVhSnBasQThdipA75x3GXLDHwKah\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-05-10 14:46:53', '2020-05-10 14:46:53');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-05-10 14:46:53', '2020-05-10 14:46:53');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 14:46:55', '2020-05-10 14:46:55');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:01:04', '2020-05-10 15:01:04');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:02:03', '2020-05-10 15:02:03');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:02:05', '2020-05-10 15:02:05');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:02:06', '2020-05-10 15:02:06');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:02:55', '2020-05-10 15:02:55');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:02:55', '2020-05-10 15:02:55');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/members', 'GET', '127.0.0.1', '[]', '2020-05-10 15:11:10', '2020-05-10 15:11:10');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:12:10', '2020-05-10 15:12:10');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:12:14', '2020-05-10 15:12:14');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:12:25', '2020-05-10 15:12:25');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:13:02', '2020-05-10 15:13:02');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:13:58', '2020-05-10 15:13:58');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/members', 'GET', '127.0.0.1', '[]', '2020-05-10 15:14:27', '2020-05-10 15:14:27');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:14:30', '2020-05-10 15:14:30');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:14:52', '2020-05-10 15:14:52');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:14:52', '2020-05-10 15:14:52');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:15:45', '2020-05-10 15:15:45');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:15:45', '2020-05-10 15:15:45');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:16:13', '2020-05-10 15:16:13');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/members', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 15:16:13', '2020-05-10 15:16:13');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:16:43', '2020-05-10 15:16:43');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/dcat-api/action', 'POST', '127.0.0.1', '{\"type\":\"2\",\"_token\":\"j2SjpTCfJzGMn5SMCdNXciPVuwCVo0XNhjJ5gvKe\",\"_action\":\"App_Admin_Grid_Tools_SendMessage\",\"_key\":null}', '2020-05-10 15:17:19', '2020-05-10 15:17:19');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/records', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-05-10 16:01:43', '2020-05-10 16:01:43');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/records', 'GET', '127.0.0.1', '[]', '2020-05-10 16:01:43', '2020-05-10 16:01:43');
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
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-05-08 15:45:40', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-05-08 15:45:40', NULL);
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
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 10, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-05-08 15:45:40', '2020-05-08 15:45:40');
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$kQB.8BqzYtSrHGL/M41a5.G6qEKVdWSq/uIsneSPUK5uiQCLzxNhK', 'Administrator', NULL, NULL, '2020-05-08 15:45:40', '2020-05-08 15:45:40');
COMMIT;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `plat` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of config
-- ----------------------------
BEGIN;
INSERT INTO `config` VALUES (1, 'https://b283ejr8dxbdfpu.cbacksecond.com', 'gcwyh666', 'qazzaq853');
COMMIT;

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
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
INSERT INTO `jobs` VALUES (10, 'default', '{\"uuid\":\"16dc4b68-fcd0-4808-acd6-067018905157\",\"displayName\":\"App\\\\Jobs\\\\RechargeJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\RechargeJob\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\RechargeJob\\\":11:{s:5:\\\"\\u0000*\\u0000zb\\\";O:13:\\\"App\\\\Spider\\\\Zb\\\":4:{s:6:\\\"\\u0000*\\u0000url\\\";s:39:\\\"https:\\/\\/b283ejr8dxbdfpu.cbacksecond.com\\\";s:7:\\\"\\u0000*\\u0000host\\\";N;s:8:\\\"username\\\";s:8:\\\"gcwyh666\\\";s:8:\\\"password\\\";s:9:\\\"qazzaq853\\\";}s:8:\\\"\\u0000*\\u0000pages\\\";i:16;s:9:\\\"\\u0000*\\u0000params\\\";a:3:{s:6:\\\"pageNo\\\";i:1;s:7:\\\"startDt\\\";s:10:\\\"2020-05-09\\\";s:5:\\\"endDt\\\";s:10:\\\"2020-05-09\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:1;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1589055113, 1589055112);
INSERT INTO `jobs` VALUES (11, 'default', '{\"uuid\":\"81c474b8-8014-4cf1-b9ec-6bc4787fb672\",\"displayName\":\"App\\\\Jobs\\\\AddJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddJob\",\"command\":\"O:15:\\\"App\\\\Jobs\\\\AddJob\\\":11:{s:5:\\\"\\u0000*\\u0000zb\\\";O:13:\\\"App\\\\Spider\\\\Zb\\\":4:{s:6:\\\"\\u0000*\\u0000url\\\";s:39:\\\"https:\\/\\/b283ejr8dxbdfpu.cbacksecond.com\\\";s:7:\\\"\\u0000*\\u0000host\\\";N;s:8:\\\"username\\\";s:8:\\\"gcwyh666\\\";s:8:\\\"password\\\";s:9:\\\"qazzaq853\\\";}s:8:\\\"\\u0000*\\u0000pages\\\";i:63;s:9:\\\"\\u0000*\\u0000params\\\";a:3:{s:6:\\\"pageNo\\\";i:1;s:7:\\\"startDt\\\";s:10:\\\"2020-04-10\\\";s:5:\\\"endDt\\\";s:10:\\\"2020-05-10\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";i:1;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1589056436, 1589056435);
COMMIT;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `level` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '派发状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of members
-- ----------------------------
BEGIN;
INSERT INTO `members` VALUES (533, '377241785', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (534, 'tian1986090730', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (535, 'abcdefg1314', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (536, 'wyzq', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (537, 'lin15098649991', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (538, 'cheng302', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (539, '13708544281', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (540, '770520zhou', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (541, 'z18998128770j', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (542, 'wang4101', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (543, 'he1817635', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (544, 'winer666', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (545, '2424283898', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (546, '818286', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (547, 'www19851029', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (548, '1761266876', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (549, 'xyh147258', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (550, '123441329', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (551, '111888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (552, '1860158900', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (553, 'aa8899', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (554, 'w13863551415', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (555, '15187120146yxw', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (556, '075110086', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (557, '123456wzy', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (558, '310dl', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (559, 'hjf5634', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (560, '1357924680wang', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (561, '11M08', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (562, 'xy0518', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (563, 'jljj12345678', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (564, '13387939515', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (565, 'tl23717', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (566, 'yechunya', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (567, 'QQ0088', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (568, '15996068975', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (569, '1994300l', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (570, 'lb92852', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (571, '8279445769', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (572, 'hgx888999', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (573, '453780156', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (574, '138322zsq', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (575, 'w13763960521', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (576, 'awmumdf', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (577, 'zjf123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (578, 'daguniang123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (579, 'hgye4d', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (580, '77558zwg', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (581, '17621847301', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (582, '13727557709', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (583, '18091262355', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (584, '448970062', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (585, 'SFJ15078397137', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (586, 'jxz15604765606', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (587, 'h328', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (588, 'czt123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (589, 'lxj20001017', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (590, 'guchunyan999999', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (591, '448888', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (592, '19850', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (593, 'Zzj888333', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (594, '3398', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (595, 'peiqiyang', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (596, '15005856709', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (597, '1695835947', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (598, '18367631537', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (599, 'ylx5201314', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (600, '1479254149', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (601, '1223985979', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (602, 'yj258369', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (603, '907452', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (604, 'HQSHxt5201314', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (605, '13887519847zh', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (606, 'ff512', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (607, 'xiao8080', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (608, 'ly9981', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (609, 'ztx356', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (610, '13727598298', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (611, '914326', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (612, 'zsz200869', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (613, 'lh4578', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (614, '1971543869', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (615, 'qinjialiang1993', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (616, 'ld980926', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (617, '668888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (618, 'zbwa1985123', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (619, '13646225866', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (620, 'qwe261122', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (621, 'xuyan1028', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (622, '1954782279', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (623, 'wo669766748', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (624, 'b999888777b', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (625, 'zhao123456', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (626, 't5201314h', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (627, '995158', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (628, 'yy987654321', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (629, 'lrh235888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (630, 'ying8888', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (631, '128650', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (632, 'a1862060', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (633, 'lcxlzjq', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (634, 'heibro', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (635, '1762951', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (636, 'any888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (637, '197220', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (638, 'yafei0905', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (639, '13909121164', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (640, 'hx927', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (641, '437483649', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (642, 'yyy44447777', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (643, '720924', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (644, '616490536', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (645, 'allan19861115', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (646, '15994399607', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (647, 'zg242628', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (648, '988888', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (649, 'H15209313345', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (650, 'candy', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (651, 'zzfxl', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (652, 'a2318335877', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (653, '17051512225', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (654, '607324', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (655, 'tanxin', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (656, 'wy668', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (657, 'wang1964325', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (658, '885045', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (659, '910746846gzq', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (660, 'dw62486', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (661, '214929588', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (662, 'dyf22553311000', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (663, 'ghm123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (664, '56731266', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (665, '1954246740', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (666, 'wo1122', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (667, 'a153214', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (668, '1234567890ykf', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (669, '599283125', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (670, '138151427', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (671, 'lyn198510', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (672, '15731002528', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (673, 'qtsd01', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (674, 'abc7877352', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (675, 'xdming', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (676, 'ii261532', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (677, 'sgc9357', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (678, 'zap123456', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (679, '897764', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (680, 'caipiao123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (681, '13735201365', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (682, 'clf880330', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (683, 'yuan3153', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (684, 'guang0918', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (685, '13615438883wzb', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (686, 'ren528481', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (687, '8895495', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (688, 'aa729429967', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (689, 'qf1518518', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (690, 'duoduo', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (691, '15086581172', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (692, '785264208', '9', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (693, 'abcd1986', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (694, 'hsy1005', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (695, '15777595996', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (696, 'sheng456789', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (697, 'lishuxun420', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (698, 'a999888777a', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (699, 'l17875134725', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (700, 'Qwe456', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (701, '1925467524', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (702, '547492742', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (703, '18748621515lxl', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (704, 'www369258', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (705, 'cai13538758432', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (706, 'DXY8899', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (707, 'b881009hl', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (708, 'hanhan0118', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (709, '13787951538', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (710, '116539445', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (711, 'tike123789', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (712, 'lk8787', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (713, '2902316544', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (714, '5678910', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (715, 'xqj123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (716, 'sxy123456789fzy', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (717, 'zhang123456789', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (718, '888666zw', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (719, '13989367675', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (720, 'Yuan2825', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (721, '20081202888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (722, '928870816', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (723, '17605340257t', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (724, '578136678smz', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (725, '570913544', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (726, 'wp123456', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (727, 'hyj123456', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (728, 'hl132826', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (729, 'fei8611148614', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (730, 'qwe123456654321', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (731, '13607021599', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (732, '15891680304', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (733, 'zxh123456', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (734, '805589617', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (735, '1000062400', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (736, 'ZHAO96', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (737, 'wx893431187', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (738, '200311', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (739, '13908499051', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (740, '418039WQB5A7', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (741, 'wanzhi123456', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (742, 'wang2006', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (743, 'zhx8945', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (744, 'yxfyfc888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (745, '110120yy', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (746, '3264297945', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (747, 'szj625918', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (748, 'lz12345678q', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (749, '830215', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (750, 'sss888999', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (751, 'wbx6211521', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (752, 'abs147', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (753, '19660412', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (754, '840179814', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (755, 'cjx1518518', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (756, '7792y', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (757, 'hao0508', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (758, 'lp249', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (759, 'zz980498', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (760, '18790638359', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (761, 'yan18707662428', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (762, 'khy7506', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (763, 'liuye1234', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (764, 'grp52020', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (765, 'w518888', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (766, 'liuyufang168', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (767, 'aa595aa', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (768, 'wxy198800wxy', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (769, '924785', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (770, '2215592721', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (771, '182987', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (772, '1584337418', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (773, '15111517157', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (774, 'q17258', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (775, '3353591159', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (776, '18503210918', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (777, 'abc14785210076', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (778, 'yangrong123456', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (779, 'zyz321562', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (780, '1594062025', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (781, '13005963442', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (782, 'ai1314', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (783, 'q648990863', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (784, '7713307', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (785, '2369181486', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (786, 'qian888', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (787, '14797325924', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (788, 'dly521ying0802', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (789, '18288362807', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (790, 'zkn987654321', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (791, 'zzw15279594613', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (792, '0750891153375', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (793, 'cfplf025', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (794, 'ac123456789', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (795, '15348415539', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (796, '199369', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (797, '11288076aaa', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (798, 'qun13788167256', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (799, 'gpm3626492', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (800, 'xiao910505', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (801, 'hao16888', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (802, 'w2589086207w', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (803, '3324384976', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (804, 'a8886888', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (805, 'papa1234', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (806, '13919055212', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (807, 'abc588668', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (808, '139032517', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (809, 'penjiahon558', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (810, 'y20080425LZY', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (811, '6217003130000952', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (812, 'lhl159357', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (813, 'chulan1971', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (814, '18973537459', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (815, '2925924033', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (816, '2019524', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (817, 'gaolu', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (818, '137137138', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (819, '18151153088', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (820, '1234567wo', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (821, '06340634a', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (822, '15077595088', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (823, 'q123456p', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (824, 'yzj13870524249', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (825, 'ab503545031', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (826, 'xycwhy874695', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (827, 'lw5957', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (828, 'pj123789', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (829, 'gaolx153520', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (830, '502126460', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (831, 'c0001', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (832, 'a789789', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (833, 'a1562526', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (834, 'wqc123456', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (835, 'f13933801813', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (836, 'kaiwanxiao', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (837, 'xp5201314', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (838, '15168215330', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (839, '770880', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (840, 'Chenli19950425', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (841, '13927883128', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (842, 'a23870524259', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (843, '406115623', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (844, 'wang20170218', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (845, 'yangyankun', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (846, 'guojing1990', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (847, 'zz040907', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (848, 'si2022', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (849, '15383351001', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (850, 'aa6688', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (851, 'lqmr1990', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (852, 'yu12345678', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (853, '17697044806', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (854, 'abcd12345123451', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (855, '18396821337', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (856, 'b15917462860', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (857, 'z258', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (858, '723769023', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (859, 'yxh3456', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (860, 'wang8886', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (861, '15939251008', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (862, 'qingtao1993', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (863, 'lgh102825895', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (864, '18363186961', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (865, 'yingwen558', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (866, '22222299', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (867, '1664756593', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (868, '1475370164', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (869, '13796344825', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (870, '771031pan', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (871, '13481171072', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (872, 'he14736900', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (873, 'wzb15858942587', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (874, '707607838', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (875, 'aaa2568', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (876, '1791730173', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (877, 'wl1314', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (878, '444555666', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (879, '1159321995', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (880, '826269935', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (881, '18595825774', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (882, 'llh5566', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (883, 'LT900214', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (884, 'lex358', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (885, 'fu1661', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (886, 'Wang393613', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (887, 'gxm123', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (888, '1468820675', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (889, 'chen12345600', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (890, 'chen136749', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (891, '17710502373', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (892, '13408742329', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (893, 'zzz1018', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (894, '998888', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (895, '987456321', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (896, 'zkj00000', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (897, '17821846423', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (898, 'xdm1986', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (899, '13918728776', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (900, '1870937', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (901, '2962621254', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (902, 'yhcs41888', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (903, 'ABWW', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (904, '15014663110', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (905, '444488', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (906, 'xsq391', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (907, '2840133862', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (908, '9536782', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (909, 'lkm5117', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (910, '13332030377', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (911, '5201314jy', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (912, 'Lisn0912', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (913, 'qixinglove000', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (914, '18378442441', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (915, 'a13517951170', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (916, '155923341', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (917, 'hw2010', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (918, '16638395458', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (919, 'qq58888', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (920, 'syb123654', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (921, 'ytw198510', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (922, 's90098', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (923, 'qqtea1988', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (924, 'songxf1', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (925, '15683173105', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (926, 'yu1233', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (927, 'qq2473131106', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (928, 'abc123abc456', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (929, '7531246123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (930, '13902591913', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (931, 'hua1888888', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (932, 'a1285961593', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (933, 'he1473690', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (934, 'sx7179', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (935, 'w13166988708', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (936, 'a25489y', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (937, '1175432932', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (938, 'py318520', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (939, 'sjx123', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (940, 'AA123', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (941, '1397991', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (942, 'qwe159357', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (943, 'wcw651217', '8', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (944, 'yhb988988', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (945, '03147841687', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (946, 'taidi16888', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (947, 'cheche168', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (948, '15981945864', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (949, '188abc', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (950, '916979006', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (951, '980805', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (952, 'a9876543', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (953, 'qfsr8', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (954, 'qrupqrup', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (955, 'r520877', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (956, '852000', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (957, 'wgy123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (958, '1970642322', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (959, '199005218010', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (960, '185340747', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (961, 'gchuohuo', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (962, 'kiss1008', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (963, 'jiang880709', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (964, 'xg1598974', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (965, '720312', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (966, 'duxin', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (967, 'zxcasd', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (968, 'wanghai', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (969, 'qing14800', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (970, '18533936594', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (971, 'y8888', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (972, 'wtj1688', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (973, 'ti990111', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (974, '7878dj', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (975, '1055759922', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (976, 'zyx521', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (977, '22989494', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (978, 'wly666', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (979, '2384608046', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (980, '1008699kk', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (981, 'eeeppp9988', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (982, 'rui959529', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (983, '13237688866', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (984, 'lai466785262', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (985, 'chuchu136', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (986, 'wowo123', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (987, 'Z58407666', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (988, 'ab987654321', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (989, 'kk1166', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (990, 'nnlf666', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (991, '4545', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (992, '18775306270l', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (993, '124652', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (994, '392895062', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (995, 'hp123456', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (996, 'gaojian', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (997, '520202', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (998, 'lty2104951727', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (999, 'srqaaa', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1000, '390986975', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1001, 'hao136749', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1002, 'xjne', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1003, 'qq136749', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1004, 'li1234', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1005, 'rhb84919', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1006, 'ha01', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1007, 'km803157', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1008, 'wa925', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1009, '22784090', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1010, 'shuohao518', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1011, 'xiao666999', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1012, '15254871700', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1013, '55446405', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1014, 'q2694582735', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1015, 'z75600', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1016, '18174540678', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1017, 'chenpingyou168', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1018, '2847624966', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1019, 'angry', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1020, '157977lll', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1021, 'qq14700', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1022, 'Zzj333888', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1023, 'x1954', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1024, 'lm14789', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1025, 'chen10', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1026, 'shitao2018', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1027, '731433291', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1028, 'a14725869', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1029, 'a18079566694', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1030, '50155026', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1031, '3104244052', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1032, 'wo6688', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1033, '18685365807', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1034, 'csb78175', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1035, 'lzw123456', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1036, '14755729996', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1037, 'sss8906425', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1038, 'ma0302', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1039, '2137677', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1040, 'nihaoa', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1041, 'meijia', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1042, '20181212', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1043, '4747aa', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1044, 'lu82966870', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1045, 'nx123456', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1046, '18876876372', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1047, 'kc183173', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1048, 'LXP1953481816', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1049, '5623106', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1050, 'che145', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1051, 'sssss123456', '3', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1052, '1719168747', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1053, '15217662496', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1054, 'ad123456789', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1055, '17873789258', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1056, '2463', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1057, 'xmq456', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1058, '13933137725', '7', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1059, '1489302825', '6', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1060, 'cb201425', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1061, 'hao1991', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1062, 'qiu258', '4', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1063, 'ylcyx99', '5', '2288', 0, NULL, NULL, '2020-05-10');
INSERT INTO `members` VALUES (1064, 'laizhisheng', '3', '2288', 0, NULL, NULL, '2020-05-10');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_05_10_031314_create_jobs_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for play_records
-- ----------------------------
DROP TABLE IF EXISTS `play_records`;
CREATE TABLE `play_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `play_amount` decimal(10,2) DEFAULT NULL COMMENT '投注金额',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '奖金额度',
  `status` int(1) DEFAULT NULL COMMENT '派发状态',
  `start_time` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of play_records
-- ----------------------------
BEGIN;
INSERT INTO `play_records` VALUES (100, 'tian1986090730', 40000.00, 588.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (101, 'awmumdf', 29500.00, 228.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (102, 'wyzq', 82000.00, 888.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (103, 'aa8899', 6100.00, 88.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (104, 'xyh147258', 21570.00, 228.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (105, 'www19851029', 32996.50, 588.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (106, 'lb92852', 30000.00, 588.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (107, 'heibro', 12100.00, 228.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (108, 'QQ0088', 5000.00, 88.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (109, '18091262355', 4600.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (110, '818286', 1480.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (111, 'jljj12345678', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (112, '770520zhou', 10000.00, 228.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (113, 'wo669766748', 100.18, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (114, '988888', 2509.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (115, '15005856709', 542.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:21', NULL);
INSERT INTO `play_records` VALUES (116, 'ld980926', 620.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (117, 'daguniang123', 6000.00, 88.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (118, 'jxz15604765606', 4600.60, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (119, 'ylx5201314', 1289.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (120, 'winer666', 2000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (121, 'yechunya', 775.17, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (122, 'he1817635', 5800.00, 88.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (123, '19850', 1007.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (124, '1762951', 800.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (125, 'hgx888999', 1980.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (126, '138151427', 3586.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (127, 'peiqiyang', 4000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (128, '448970062', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (129, '17621847301', 390.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (130, 'abc14785210076', 900.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (131, 'xiao8080', 180.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (132, '123456wzy', 2481.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (133, '075110086', 499.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (134, '2925924033', 1500.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:22', NULL);
INSERT INTO `play_records` VALUES (135, '1234567wo', 290.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (136, '8279445769', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (137, '1954246740', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (138, '2019524', 600.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (139, 'yuan3153', 1060.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (140, 'Zzj888333', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (141, '607324', 400.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (142, '15731002528', 916.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (143, 'guojing1990', 1000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (144, '13727557709', 168.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (145, 'lh4578', 600.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (146, 'ying8888', 150.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (147, 'khy7506', 500.10, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (148, 'q648990863', 1700.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (149, 'wbx6211521', 400.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (150, '1357924680wang', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (151, 'Yuan2825', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (152, '200311', 350.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (153, 'chen12345600', 150.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (154, 'sgc9357', 101.22, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (155, 'hanhan0118', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (156, 'allan19861115', 2000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (157, '1954782279', 300.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (158, '1468820675', 1000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (159, 'cai13538758432', 120.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (160, '15994399607', 120.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (161, 'lyn198510', 1000.00, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (162, 'b999888777b', 474.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (163, 'qwe123456654321', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (164, 'py318520', 300.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:23', NULL);
INSERT INTO `play_records` VALUES (165, 'candy', 301.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (166, '437483649', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (167, '137137138', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (168, 'xycwhy874695', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (169, 'aa595aa', 1100.10, 28.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (170, 'hjf5634', 400.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (171, 'ren528481', 115.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (172, '13005963442', 139.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (173, '1475370164', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (174, 'cheng302', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (175, '5678910', 360.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (176, 'papa1234', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (177, 'a1862060', 499.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:24', NULL);
INSERT INTO `play_records` VALUES (178, 'duoduo', 500.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (179, 'qqtea1988', 300.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (180, 'dly521ying0802', 300.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (181, 'lxj20001017', 150.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (182, '13332030377', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (183, 'hsy1005', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (184, '19660412', 100.10, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (185, 'nnlf666', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (186, '1994300l', 300.10, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (187, 'ghm123', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (188, 'grp52020', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:25', NULL);
INSERT INTO `play_records` VALUES (189, 'hao0508', 257.30, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (190, '128650', 150.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (191, '155923341', 140.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (192, '840179814', 200.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (193, 'zz980498', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (194, 'qrupqrup', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (195, 'gaojian', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (196, '2384608046', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:26', NULL);
INSERT INTO `play_records` VALUES (197, 'duxin', 100.00, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:27', NULL);
INSERT INTO `play_records` VALUES (198, '13909121164', 870.80, 8.00, 0, '2020-05-09', '2020-05-09', '2020-05-10 04:25:27', NULL);
COMMIT;

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

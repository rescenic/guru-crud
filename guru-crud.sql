/*
 Navicat Premium Data Transfer

 Source Server         : mysql@laragon
 Source Server Type    : MySQL
 Source Server Version : 50741 (5.7.41)
 Source Host           : localhost:3306
 Source Schema         : guru-crud

 Target Server Type    : MySQL
 Target Server Version : 50741 (5.7.41)
 File Encoding         : 65001

 Date: 07/09/2023 21:48:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bidang` enum('Agama','Bahasa Indonesia','Bahasa Inggris','Matematika','Fisika','Olah Raga') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (1, 'Ridwan', 'admin@email.com', 'Matematika', 'Jalan Ke Kotamu');
INSERT INTO `guru` VALUES (2, 'Lesthi', 'admin@email.com', 'Agama', 'Jalan Ke Rumahmu');

SET FOREIGN_KEY_CHECKS = 1;

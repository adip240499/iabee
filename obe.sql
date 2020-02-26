/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : obe

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 26/02/2020 11:55:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for capaian_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `capaian_mahasiswa`;
CREATE TABLE `capaian_mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ref_cpmk` int(11) NULL DEFAULT NULL,
  `id_ref_mahasiswa` int(11) NULL DEFAULT NULL,
  `nilai` float NULL DEFAULT NULL,
  `kelas` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tahun` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `semester` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ganjil, genap',
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_ref_cpmk`(`id_ref_cpmk`) USING BTREE,
  INDEX `id_ref_mahasiswa`(`id_ref_mahasiswa`) USING BTREE,
  CONSTRAINT `capaian_mahasiswa_ibfk_1` FOREIGN KEY (`id_ref_cpmk`) REFERENCES `ref_cpmk` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `capaian_mahasiswa_ibfk_2` FOREIGN KEY (`id_ref_mahasiswa`) REFERENCES `ref_mahasiswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1170 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of capaian_mahasiswa
-- ----------------------------
INSERT INTO `capaian_mahasiswa` VALUES (973, 37, 1, 1, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (974, 38, 1, 2, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (975, 39, 1, 3, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (976, 40, 1, 4, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (977, 37, 34, 10, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (978, 38, 34, 9, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (979, 39, 34, 8, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (980, 40, 34, 7, 'B', '2017', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (981, 458, 93, 72, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (982, 459, 93, 94, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (983, 460, 93, 100, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (984, 458, 1, 94, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (985, 459, 1, 90, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (986, 460, 1, 100, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (987, 458, 18, 96, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (988, 459, 18, 100, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (989, 460, 18, 80, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (990, 458, 34, 100, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (991, 459, 34, 90, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (992, 460, 34, 100, 'A', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (996, 382, 93, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (997, 383, 93, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (998, 384, 93, 87.5, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (999, 385, 93, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1000, 386, 93, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1001, 382, 1, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1002, 383, 1, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1003, 384, 1, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1004, 385, 1, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1005, 386, 1, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1006, 382, 4, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1007, 383, 4, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1008, 384, 4, 82.5, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1009, 385, 4, 85, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1010, 386, 4, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1011, 382, 12, 70, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1012, 383, 12, 75, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1013, 384, 12, 82.5, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1014, 385, 12, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1015, 386, 12, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1016, 382, 16, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1017, 383, 16, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1018, 384, 16, 85, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1019, 385, 16, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1020, 386, 16, 90, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1021, 382, 20, 70, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1022, 383, 20, 70, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1023, 384, 20, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1024, 385, 20, 80, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1025, 386, 20, 70, 'A', '2019', 'Genap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1026, 33, 88, 0, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1027, 34, 88, 0, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1028, 35, 88, 0, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1029, 36, 88, 0, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1030, 33, 107, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1031, 34, 107, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1032, 35, 107, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1033, 36, 107, 82.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1034, 33, 108, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1035, 34, 108, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1036, 35, 108, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1037, 36, 108, 82.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1038, 33, 110, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1039, 34, 110, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1040, 35, 110, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1041, 36, 110, 91, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1042, 33, 111, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1043, 34, 111, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1044, 35, 111, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1045, 36, 111, 91, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1046, 33, 112, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1047, 34, 112, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1048, 35, 112, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1049, 36, 112, 76.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1050, 33, 113, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1051, 34, 113, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1052, 35, 113, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1053, 36, 113, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1054, 33, 114, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1055, 34, 114, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1056, 35, 114, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1057, 36, 114, 82.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1058, 33, 115, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1059, 34, 115, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1060, 35, 115, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1061, 36, 115, 82.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1062, 33, 116, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1063, 34, 116, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1064, 35, 116, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1065, 36, 116, 82.5, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1066, 33, 117, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1067, 34, 117, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1068, 35, 117, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1069, 36, 117, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1070, 33, 118, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1071, 34, 118, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1072, 35, 118, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1073, 36, 118, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1074, 33, 119, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1075, 34, 119, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1076, 35, 119, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1077, 36, 119, 81, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1078, 33, 120, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1079, 34, 120, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1080, 35, 120, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1081, 36, 120, 82, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1082, 33, 121, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1083, 34, 121, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1084, 35, 121, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1085, 36, 121, 82, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1086, 33, 122, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1087, 34, 122, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1088, 35, 122, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1089, 36, 122, 79, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1090, 33, 123, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1091, 34, 123, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1092, 35, 123, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1093, 36, 123, 82, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1094, 33, 124, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1095, 34, 124, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1096, 35, 124, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1097, 36, 124, 81, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1098, 33, 127, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1099, 34, 127, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1100, 35, 127, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1101, 36, 127, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1102, 33, 128, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1103, 34, 128, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1104, 35, 128, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1105, 36, 128, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1106, 33, 129, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1107, 34, 129, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1108, 35, 129, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1109, 36, 129, 96, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1110, 33, 130, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1111, 34, 130, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1112, 35, 130, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1113, 36, 130, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1114, 33, 131, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1115, 34, 131, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1116, 35, 131, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1117, 36, 131, 91, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1118, 33, 132, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1119, 34, 132, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1120, 35, 132, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1121, 36, 132, 96, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1122, 33, 133, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1123, 34, 133, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1124, 35, 133, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1125, 36, 133, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1126, 33, 134, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1127, 34, 134, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1128, 35, 134, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1129, 36, 134, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1130, 33, 135, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1131, 34, 135, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1132, 35, 135, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1133, 36, 135, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1134, 33, 136, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1135, 34, 136, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1136, 35, 136, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1137, 36, 136, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1138, 33, 137, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1139, 34, 137, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1140, 35, 137, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1141, 36, 137, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1142, 33, 138, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1143, 34, 138, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1144, 35, 138, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1145, 36, 138, 87, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1146, 33, 139, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1147, 34, 139, 90, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1148, 35, 139, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1149, 36, 139, 79, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1150, 33, 141, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1151, 34, 141, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1152, 35, 141, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1153, 36, 141, 99, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1154, 33, 143, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1155, 34, 143, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1156, 35, 143, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1157, 36, 143, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1158, 33, 144, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1159, 34, 144, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1160, 35, 144, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1161, 36, 144, 80, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1162, 33, 145, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1163, 34, 145, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1164, 35, 145, 100, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1165, 36, 145, 99, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1166, 33, 147, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1167, 34, 147, 85, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1168, 35, 147, 95, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);
INSERT INTO `capaian_mahasiswa` VALUES (1169, 36, 147, 99, 'D', '2019', 'Ganjil', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for file_upload
-- ----------------------------
DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_mata_kuliah_tayang` int(11) NULL DEFAULT NULL,
  `jenis` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `base_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_mata_kuliah_tayang`(`id_mata_kuliah_tayang`) USING BTREE,
  CONSTRAINT `file_upload_ibfk_1` FOREIGN KEY (`id_mata_kuliah_tayang`) REFERENCES `mata_kuliah_tayang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_upload
-- ----------------------------
INSERT INTO `file_upload` VALUES (14, 6, 'krs', 'krs_EE4025-19_Sistem Pendukung Keputusan_A_Tahun_2019', 'nilai_EE4025-19_Sistem Pendukung Keputusan_A_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (15, 6, 'nilai', 'nilai_EE4025-19_Sistem Pendukung Keputusan_A_Tahun_2019', 'nilai_EE4025-19_Sistem Pendukung Keputusan_A_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (16, 8, 'krs', 'krs_EE4008-19_Pengolahan Citra_A_Tahun_2019', 'nilai_EE4008-19_Pengolahan Citra_A_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (17, 8, 'nilai', 'nilai_EE4008-19_Pengolahan Citra_A_Tahun_2019', 'nilai_EE4008-19_Pengolahan Citra_A_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (18, 5, 'krs', 'krs_EE0108-19_Orientasi Prodi_D_Tahun_2019 (1)', 'nilai_EE0108-19_Orientasi Prodi_D_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (19, 5, 'nilai', 'nilai_EE0108-19_Orientasi Prodi_D_Tahun_2019', 'nilai_EE0108-19_Orientasi Prodi_D_Tahun_2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload` VALUES (20, 9, 'krs', 'krs_EE0108-19_Orientasi Prodi_D_Tahun_2019 (1)', 'nilai_EE0505-19_Proyek Kreatif IV_C_Tahun_2020', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for krs
-- ----------------------------
DROP TABLE IF EXISTS `krs`;
CREATE TABLE `krs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ref_mahasiswa` int(11) NULL DEFAULT NULL,
  `id_mata_kuliah_tayang` int(11) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_ref_mahasiswa`(`id_ref_mahasiswa`) USING BTREE,
  INDEX `id_mata_kuliah_tayang`(`id_mata_kuliah_tayang`) USING BTREE,
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`id_ref_mahasiswa`) REFERENCES `ref_mahasiswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mata_kuliah_tayang`) REFERENCES `mata_kuliah_tayang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of krs
-- ----------------------------
INSERT INTO `krs` VALUES (6, 93, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (7, 1, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (8, 18, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (9, 34, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (10, 93, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (11, 1, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (12, 4, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (13, 12, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (14, 16, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (15, 20, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (16, 88, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (17, 107, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (18, 108, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (19, 110, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (20, 111, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (21, 112, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (22, 113, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (23, 114, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (24, 115, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (25, 116, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (26, 117, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (27, 118, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (28, 119, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (29, 120, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (30, 121, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (31, 122, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (32, 123, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (33, 124, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (34, 127, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (35, 128, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (36, 129, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (37, 130, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (38, 131, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (39, 132, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (40, 133, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (41, 134, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (42, 135, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (43, 136, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (44, 137, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (45, 138, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (46, 139, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (47, 141, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (48, 143, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (49, 144, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (50, 145, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (51, 147, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (52, 88, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (53, 107, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (54, 108, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (55, 110, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (56, 111, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (57, 112, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (58, 113, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (59, 114, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (60, 115, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (61, 116, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (62, 117, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (63, 118, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (64, 119, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (65, 120, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (66, 121, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (67, 122, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (68, 123, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (69, 124, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (70, 127, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (71, 128, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (72, 129, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (73, 130, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (74, 131, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (75, 132, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (76, 133, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (77, 134, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (78, 135, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (79, 136, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (80, 137, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (81, 138, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (82, 139, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (83, 141, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (84, 143, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (85, 144, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (86, 145, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `krs` VALUES (87, 147, 9, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for mata_kuliah_tayang
-- ----------------------------
DROP TABLE IF EXISTS `mata_kuliah_tayang`;
CREATE TABLE `mata_kuliah_tayang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tahun_ajaran` int(11) NULL DEFAULT NULL,
  `semester` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_ref_mata_kuliah` int(11) NULL DEFAULT NULL,
  `id_ref_kelas` int(11) NULL DEFAULT NULL,
  `id_ref_dosen` int(11) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_tahun_ajaran`(`id_tahun_ajaran`) USING BTREE,
  INDEX `id_ref_mata_kuliah`(`id_ref_mata_kuliah`) USING BTREE,
  INDEX `id_ref_kelas`(`id_ref_kelas`) USING BTREE,
  INDEX `id_ref_dosen`(`id_ref_dosen`) USING BTREE,
  CONSTRAINT `mata_kuliah_tayang_ibfk_1` FOREIGN KEY (`id_ref_mata_kuliah`) REFERENCES `ref_mata_kuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mata_kuliah_tayang_ibfk_2` FOREIGN KEY (`id_ref_kelas`) REFERENCES `ref_kelas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mata_kuliah_tayang_ibfk_3` FOREIGN KEY (`id_ref_dosen`) REFERENCES `ref_dosen` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `mata_kuliah_tayang_ibfk_4` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `ref_tahun_ajaran` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mata_kuliah_tayang
-- ----------------------------
INSERT INTO `mata_kuliah_tayang` VALUES (5, 6, 'Ganjil', 8, 4, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `mata_kuliah_tayang` VALUES (6, 6, 'Ganjil', 106, 1, 11, 1, NULL, NULL, NULL, NULL);
INSERT INTO `mata_kuliah_tayang` VALUES (7, 7, 'Ganjil', 1, 4, 6, 0, NULL, NULL, NULL, NULL);
INSERT INTO `mata_kuliah_tayang` VALUES (8, 6, 'Genap', 89, 1, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `mata_kuliah_tayang` VALUES (9, 7, 'Ganjil', 42, 3, 1, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration`  (
  `version` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', 1578401606);
INSERT INTO `migration` VALUES ('m130524_201442_init', 1578401609);
INSERT INTO `migration` VALUES ('m190124_110200_add_verification_token_column_to_user_table', 1578401610);

-- ----------------------------
-- Table structure for ref_cpl
-- ----------------------------
DROP TABLE IF EXISTS `ref_cpl`;
CREATE TABLE `ref_cpl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ringkasan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_cpl
-- ----------------------------
INSERT INTO `ref_cpl` VALUES (1, 'CPL01', 'Mampu menerapkan pengetahuan matematika, ilmu pengetahuan alam dan/atau material, teknologi informasi dan keteknikan untuk mendapatkan pemahaman menyeluruh tentang prinsip-prinsip teknik elektro.', 'Menguasai ilmu teknik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (2, 'CPL02', 'Mampu mendesain komponen, system dan/atau proses untuk memenuhi kebutuhan yang diharapkan didalam batasan-batasan realistis dalam bidang teknik Elektro.', 'Mampu Mendesain', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (3, 'CPL03', 'Mampu mendesain dan melaksanakan eksperimen laboratorium dan/atau lapangan serta menganalisis dan mengartikan data untuk memperkuat penilaian teknik.', 'Experimen dan analisis data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (4, 'CPL04', 'Mampu mengidentifikasi, merumuskan, menganalisis dan menyelesaikan permasalahan Teknik elektro.', 'Memecahkan masalah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (5, 'CPL05', 'Mampu menerapkan metode, keterampilan dan piranti teknik elektro yang modern yang diperlukan untuk praktek keteknikan.', 'Menguasai metode dan alat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (6, 'CPL06', 'Mampu berkomunikasi secara efektif baik lisan maupun tulisan.', 'Komunikasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (7, 'CPL07', 'Mampu merencanakan, menyelesaikan dan mengevaluasi tugas didalam batasan-batasan yang ada.', 'Manajemen proyek', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (8, 'CPL08', 'Mampu bekerja dalam tim lintas disiplin dan lintas budaya. ', 'Mampu berkerjasama', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (9, 'CPL09', 'Mampu bertanggung jawab kepada masyarakat dan mematuhi etika profesi dalam menyelesaikan permasalahan Teknik elektro.', 'Memiliki etika dan profesionalisme', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpl` VALUES (10, 'CPL10', 'Mampu memahami kebutuhan akan pembelajaran sepanjang hayat, termasuk akses terhadap pengetahuan terkait isu-isuke kinian yang relevan.', 'Belajar sepanjang hayat', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_cpmk
-- ----------------------------
DROP TABLE IF EXISTS `ref_cpmk`;
CREATE TABLE `ref_cpmk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ref_mata_kuliah` int(11) NULL DEFAULT NULL,
  `kode` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isi` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_mata_kuliah`(`id_ref_mata_kuliah`) USING BTREE,
  CONSTRAINT `ref_cpmk_ibfk_1` FOREIGN KEY (`id_ref_mata_kuliah`) REFERENCES `ref_mata_kuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 488 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_cpmk
-- ----------------------------
INSERT INTO `ref_cpmk` VALUES (1, 1, '1', 'Mahasiswa mampu menjelaskan fungsi, grafik operasi fungsi, limit, turunan, dan integral ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (2, 1, '2', 'Mahasiswa mampu menerapkan aplikasi turunan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (3, 1, '3', 'Mahasiswa mampu menerapkan aplikasi integral ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (4, 1, '4', 'Mahasiswa mampu memecahakan permasalahan dengan teknik integrasi ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (5, 2, '1', 'Mahasiswa mampu menjelaskan Medan Listri dan Potential Listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (6, 2, '2', 'Mahasiswa mampu menjelaskan kapasitansi, dielektrik, arus dan resistansi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (7, 2, '3', 'Mahasiswa mampu menganalisis DC sirkuit dan medan magnet', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (8, 2, '4', 'Mahasiswa mampu menganalisis Hukum Faraday dan Induktansi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (9, 3, '1', 'Mahasiswa mampu menjelaskan Logika, himpunan, relasi dan fungsi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (10, 3, '2', 'mahasiswa mampu menerapkan induksi matematika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (11, 3, '3', 'Mahasiswa mampu menerapkan kombinatorial dan peluang diskrit', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (12, 3, '4', 'Mahasiswa dapat menerapkan aljabar boolean', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (13, 4, '1', 'Mahasiswa mampu menjelaskan konsep dasar matriks dan vector', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (14, 4, '2', 'Mahasiswa mampu menerapkan aplikasi determinan dan inverse matriks ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (15, 4, '3', 'Mahasiswa mampu menerapkan eigenvalue', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (16, 4, '4', 'Mahasiswa mampu menerapkan vector differential', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (17, 4, '5', 'Mahasiswa mampu menerapkan vector integral', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (18, 5, '1', 'Mahasiswa mampu menjelaskan konsep atom dan molekul', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (19, 5, '2', 'Mahasiswa mampu membedakan ikatan kimia untuk berbagai keadaan benda', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (20, 5, '3', 'Mahasiswa mampu menjabarkan konsep stokiometri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (21, 5, '4', 'Mahasiswa mampu menjelaskan kinetika dan kesetimbangan kimia dan aplikasinya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (22, 5, '5', 'Mahasiswa mampu menerapkan konsep elektrokimia dan sifat kelistrikan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (23, 6, '1', 'Mahasiswa mampu menjelaskan pengertian filsafat : arti, fungsi, tujuan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (24, 6, '2', 'Mahasiswa mampu menjelaskan penelusuran makna atau hakekat kehidupan menuju keluhuran budi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (25, 6, '3', 'Mahasiswa mampu memahami pola pikir yang kritis, kreatif dan inovatif berdasar kriteria kebenaran', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (26, 6, '4', 'Mahasiswa mampu menjelaskan mind-set, passion, minat dan bakat untuk pengembangan ilmu pengetahuan\n', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (27, 6, '5', 'Mahasiswa mampu mengaplikasikan metoda berfikir ilmiah dalam analisa masalah baik secara induktif maupun deduktif', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (28, 7, '1', 'Mahasiswa mampu menjelaskan jenis-jenis bahasa pemrograman dan siklus pengembangan program komputer', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (29, 7, '2', 'Mahasiswa mampu menjelaskan algoritma dan pemodelan matematik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (30, 7, '3', 'Mahasiswa mampu menerapkan struktur kontrol dan looping ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (31, 7, '4', 'Mahasiswa mampu menerapkan fungsi, array, input-output, dan pointer ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (32, 7, '5', 'Mahasiswa mampu membuat program komputer sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (33, 8, '1', 'Mahasiswa mampu berkomunikasi secara efektif baik lisan maupun tulisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (34, 8, '2', 'Mahasiswa mampu mengelola tugas-tugas yang diberikan tentang keprodian dan teknologi dibidang elektro', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (35, 8, '3', 'Mahasiswa mampu menerapkan teamwork dalam kehidupan sehari-hari', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (36, 8, '4', 'Mahasiswa mampu menggali pengetahuan yang relevan terkait topik yang diminatinya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (37, 9, '1', 'Mahasiswa mampu menjelaskan peta koordinat dan geometrik dalam ruang dan vektor ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (38, 9, '2', 'Mahasiswa mampu menjabarkan fungsi derivatif dua variabel atau lebih ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (39, 9, '3', 'Mahasiswa mampu menerapkan multiple integral ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (40, 9, '4', 'Mahasiswa mampu menerapkan vektor kalkulus ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (41, 10, '1', 'Mahasiswa mampu memahami konsep mekanika, panas, fluida dan bunyi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (42, 10, '2', 'Mahasiswa dapat menjelaskan medan elektromagnet dan optika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (43, 10, '3', 'Mahasiswa mampu menganalisis sifat gelombang dan mekanika kuantum', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (44, 10, '4', 'Mahasiswa mampu menguraikan konsep struktur materi dan fisika nuklir', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (45, 11, '1', 'Mahasiswa mampu menerapkan konsep pengukuran', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (46, 11, '2', 'Mahasiswa mampu menerapkan fisika sederhana yang berlandaskan pada fenomena fisis mekanika dan gelombang', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (47, 11, '3', 'Mahasiswa mampu menerapkan analisis dan pengolahan data yang berlandaskan pada fenomena fisis listrik dan magnet', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (48, 12, '1', 'Mahasiswa mampu menjelaskan prinsip dalam statistik deskriptif', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (49, 12, '2', 'Mahasiswa mampu menjelaskan konsep dan prinsip dalam teori peluang/probabilitas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (50, 12, '3', 'Mahasiswa mampu mengkalkulasi menggunakan berbagai distribusi probabilitas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (51, 12, '4', 'Mahasiswa mampu mengkalkulasi menggunakan sampling, estimasi dan uji hipotesis', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (52, 12, '5', 'Mahasiswa mampu melakukan pengambilan data dan mengolah sesuai kaidah statistik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (53, 13, '1', 'Mahasiswa mampu menjelaskan Hukum Ohm, Daya dan Energi, ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (54, 13, '2', 'Mahasiswa mampu menghitung besarnya tegangan dan arus menggunakan Hukum Kirchhoff arus dan tegangan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (55, 13, '3', 'Mahasiswa mampu menggunakan Analisis nodal dan mesh, superposisi, Teorema Norton dan Thevenin dan rangkaian DC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (56, 13, '4', 'Mahasiswa mampu membedakan rangkaian DC dan AC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (57, 14, '1', 'Mahasiswa mampu menjelaskan sistem komputer', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (58, 14, '2', 'Mahasiswa mampu menjelaskan aritmetika dan logika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (59, 14, '3', 'Mahasiswa mampu menjelaskan CPU', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (60, 14, '4', 'Mahasiswa mampu menjelaskan organisasi paralel', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (61, 14, '5', 'Mahasiswa mampu menjelaskan unit kontrol', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (62, 15, '1', 'Mahasiswa mampu menjelaskan prinsip gerbang logika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (63, 15, '2', 'Mahasiswa mampu menerapkan rangkaian kombinasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (64, 15, '3', 'Mahasiswa mampu menjelaskan prinsip flipflop,register, counter', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (65, 15, '4', 'Mahasiswa mampu menerapkan rangkaian sekuensial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (66, 16, '1', 'Mahasiswa mampu membuat proposal karya tulis', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (67, 16, '2', 'Mahasiswa mampu membuat skematik elektronika sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (68, 16, '3', 'Mahasiswa mampu mendesain dan membuat PCB', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (69, 16, '4', 'Mahasiswa mampu membuat rangkaian elektronik sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (70, 16, '5', 'Mahasiswa mampu melaporkan proyek kreatif secara tulis dan lisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (71, 17, '1', 'Mahasiswa mampu mengoperasikan peralatan instrumentasi dan power supply ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (72, 17, '2', 'Mahasiswa mampu menganalisa Nodal dan Mesh (KCL dan KVL)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (73, 17, '3', 'Mahasiswa mampu menganalisa superposisi, Thevenin, dan Norton ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (74, 17, '4', 'Mahasiswa mampu menganalisa rangkaian kutub empat ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (75, 18, '1', 'Mahasiswa mampu memanfaatkan IC gerbang logika untuk merangkai rangkaian kombinasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (76, 18, '2', 'Mahasiswa mampu memanfaatkan IC flipflop untuk merangkai rangkaian sekuensial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (77, 18, '3', 'Mahasiswa mampu memanfaatkan FPGA untuk membuat rangkaian logika kombinasional dan sekuensial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (78, 19, '1', 'Mahasiswa mampu menjelaskan deret Taylor dan analisa error', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (79, 19, '2', 'Mahasiswa mampu menerapkan metode pencarian akar', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (80, 19, '3', 'Mahasiswa mampu menerapkan metode interpolasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (81, 19, '4', 'Mahasiswa mampu menerapkan integrasi numerik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (82, 19, '5', 'Mahasiswa mampu memakai MATLAB untuk analisa numerik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (83, 20, '1', 'Mahasiswa mampu menerapkan ODE Orde Pertama', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (84, 20, '2', 'Mahasiswa mampu menerapkan ODE Linier Orde Kedua', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (85, 20, '3', 'Mahasiswa mampu menerapkan ODE Linear Orde Tinggi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (86, 20, '4', 'Mahasiswa mampu menerapkan Sistem ODE. Phase Plane. Metode Kualitatif.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (87, 21, '1', 'Mahasiswa mampu menjelaskan Analisis Vektor,  Gaya Coulomb, dan Medan Listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (88, 21, '2', 'Mahasiswa mampu menjelaskan Hukum Gauss, Teori Divergensi, Medan Elektrostatik, Kerja dan Energi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (89, 21, '3', 'Mahasiswa mampu menjelaskan Arus, Konduktor, Hukum Ampere dan Magnetisme ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (90, 21, '4', 'Mahasiswa mampu menjelaskan Gaya, Torsi dalam Medan Magnet dan Induktansi ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (91, 22, '1', 'Mahasiswa mampu menjelaskan prinsip semikonduktor, dioda, BJT dan MOSFET', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (92, 22, '2', 'Mahasiswa mampu memodelkan mode kerja dalam dioda, BJT dan MOSFET', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (93, 22, '3', 'Mahasiswa mampu menganalisa analisis DC pada rangkaian dioda, BJT dan MOSFET', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (94, 22, '4', 'Mahasiswa mampu menganalisa analisis sinyal kecil pada rangkaian dioda, BJT dan MOSFET', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (95, 22, '5', 'Mahasiswa mampu menerapkan dioda , BJT dan MOSFET pada rangkaian regulator, amplifier dan switch ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (96, 23, '1', 'Mahasiswa mampu menjelaskan konsep Hukum ohm dan Kirchoff', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (97, 23, '2', 'Mahasiswa mampu menguraikan metode analisis simpul, mesh dan superposisi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (98, 23, '3', 'Mahasiswa mampu menjelaskan konsep teorema thevenin dan Norton', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (99, 23, '4', 'Mahasiswa mampu menganalisis rangkain RLC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (100, 23, '5', 'mahasiswa mampu mengkaji konsep phasor, resonansi frekuensi dan kompleks power', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (101, 24, '1', 'Mahasiswa mampu menjelaskan konsep sinyal, sistem dan LTI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (102, 24, '2', 'Mahasiswa mampu mengkalkulasi Fourier Series', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (103, 24, '3', 'Mahasiswa mampu mengkalkulasi Fourier Transform kontinyu', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (104, 24, '4', 'Mahasiswa mampu mengkalkulasi Fourier Transform diskrit', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (105, 24, '5', 'Mahasiswa mampu mengkalkulasi transformasi Z', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (106, 25, '1', 'Mahasiswa mampu menjelaskan prinsip kerja mesin-mesin listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (107, 25, '2', 'Mahasiswa mampu menjabarkan mesin listrik DC ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (108, 25, '3', 'Mahasiswa mampu menjabarkan mesin listrik Transformator ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (109, 25, '4', 'Mahasiswa mampu menjabarkan mesin listrik AC ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (110, 25, '5', 'Mahasiswa mampu memecahkan persoalan efesiensi mesin listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (111, 26, '1', 'Mahasiswa mampu melakukan pemrograman arduino', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (112, 26, '2', 'Mahasiswa mampu mendesain 3D sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (113, 26, '3', 'Mahasiswa mampu membuat UI App sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (114, 26, '4', 'Mahasiswa mampu membuat projek berbasis pemrograman', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (115, 26, '5', 'Mahasiswa mampu melaporkan proyek kreatif secara tulis maupun lisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (116, 27, '1', 'Mahasiswa mampu mendemonstrasikan rangkaian RLC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (117, 27, '2', 'Mahasiswa mampu menganalisa transien pada rangkaian Kombinasi RLC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (118, 27, '3', 'Mahasiswa mampu mendemonstrasikan sinyal dan sistem LTI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (119, 27, '4', 'Mahasiswa mampu menganalisa sinyal dan frekuensi dalam diskrit dan kontinyu', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (120, 27, '5', 'Mahasiswa mampu medemontrasikan rangkaian sinyal dengan hardware', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (121, 28, '1', 'Mahasiswa mampu menerapkan Persamaan Diferensial Orde Satu dan Orde Dua', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (122, 28, '2', 'Mahasiswa mampu menerapkan Persamaan Diferensial Orde tinggi dan orde lanjut', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (123, 28, '3', 'Mahasiswa mampu mengaplikasikan Seri Solusi ODE. Fungsi khusus', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (124, 28, '4', 'Mahasiswa mampu menerapkan Transformasi Laplace', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (125, 28, '5', 'Mahasiswa mampu menerapkan Analisis Fourier', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (126, 29, '1', 'Mahasiswa mampu menjelaskan sensor dan aktuator, digital input-output, analog input-output dan parameter pengukuran', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (127, 29, '2', 'Mahasiswa mampu menerapkan konversi A/D dan D/A ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (128, 29, '3', 'Mahasiswa mampu menganalisis pengkondisi sinyal analog antara lain amplifier, filter, junction compensation dan bridge', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (129, 29, '4', 'Mahasiswa mampu menganalisis discrete proces control dan analog controller', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (130, 29, '5', 'Mahasiswa mampu memecahkan masalah closed loop control menggunakan sensor, aktuator, controller dan pengkondisi sinyal', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (131, 30, '1', 'Mahasiswa mampu menganalisis rangkaian penguat daya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (132, 30, '2', 'Mahasiswa mampu menganalisis rangkaian operational amplifier', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (133, 30, '3', 'Mahasiswa mampu menganalisis analisa frekuensi pada rangkaian aktif', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (134, 30, '4', 'Mahasiswa mampu menganalisis rangkaian oscillator', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (135, 30, '5', 'Mahasiswa mampu menganalisis rangkaian catu daya teregulasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (136, 31, '1', 'Mahasiswa mampu menjelaskan sistem telekomunikasi (transmitter,reciver, medium,dll), mampu menghitung konsep dasar trafik, antrian, bandwidth, transfer rate, decibel, penguatan, pelemahan,dll', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (137, 31, '2', 'Mahasiswa mampu menjelaskan sifat, karakteristik propagasi, sistem telekomunikasi wireline dan wireless', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (138, 31, '3', 'Mahasiswa mampu menjelaskan  konsep switching, signaling, kinerja jaringan telekomunikasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (139, 31, '4', 'Mahasiswa mampu menjelaskan dan menganalisa ADC, PCM 30, SONET, dasar modulasi, dasar multiplexing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (140, 31, '5', 'Mahasiswa mampu menjelaskan dan menganalisa berbagai macam sistem komunikasi beserta arsitekturnya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (141, 32, '1', 'Mahasiswa  mampu mengidentifikasi sistem tenaga listrik dan permasalahan umum pada sistem tenaga listrik.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (142, 32, '2', 'Mahasiswa mampu menjelaskan konsep dan konversi energi pada sistem pembangkitan tenaga listrik.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (143, 32, '3', 'Mahasiswa mampu menjelaskan konsep dari transmisi dan distribusi sistem tenaga listrik.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (144, 32, '4', 'Mahasiswa mampu menganalisis  beban sistem tenaga listrik, sistem satu phasa, starting bintang-delta atau sebaliknya, beban aktif, beban reaktif, beban kapasitif, faktor daya, dan  analisis fasor.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (145, 32, '5', 'Mahasiswa mampu memahami perlidungan sistem tenaga listrik, sistem proteksi dan grounding.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (146, 33, '1', 'Mahasiswa mampu mendesain pemodelan sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (147, 33, '2', 'Mahasiswa mampu menganalisa respon transient', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (148, 33, '3', 'Mahasiswa mampu mendesain system kendali dengan rootlocus', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (149, 33, '4', 'Mahasiswa mampu menganalisa respon frekuensi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (150, 33, '5', 'Mahasiswa mampu mengaplikasikan kendali PID', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (151, 34, '1', 'Mahasiswa mampu menjelaskan perkembangan mikroprosesor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (152, 34, '2', 'Mahasiswa mampu menjelaskan  teknologi dan arsitektur mikroprosesor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (153, 34, '3', 'Mahasiswa mampu memahami konsep control unit, ALU, register dan memory', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (154, 34, '4', 'Mahasiswa mampu memahami konsep IO, bus dan komunikasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (155, 34, '5', 'Mahasiswa mampu mengaplikasikan dasar pemrograman', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (156, 35, '1', 'Mahasiswa mampu memahami konsep penulisan ilmiyah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (157, 35, '2', 'Mahasiswa mampu membuat proposal penelitian yang baik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (158, 35, '3', 'Mahasiswa mampu menerapkan prinsip manajemen proyek', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (159, 35, '4', 'Mahasiswa mampu membuat prototyping sebuah produk elektronik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (160, 35, '5', 'Mahasiswa mampu melaporkan proyek kreatif mereka baik secara lisan atau tulisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (161, 36, '1', 'Mahasiswa mampu mendemonstrasikan karakteristik dioda, BJT dan MOSFET', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (162, 36, '2', 'Mahasiswa mampu mendemonstrasikan penguat daya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (163, 36, '3', 'Mahasiswa mampu mendemonstrasikan rangkaian aktif (op amp dan filter aktif)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (164, 36, '4', 'Mahasiswa mampu mendemonstrasikan rangkaian oscillator', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (165, 36, '5', 'Mahasiswa mampu mendemonstrasikan rangkaian catu daya teregulasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (166, 37, '1', 'Mahasiswa mampu  mendemonstrasikan prinsip-prinsip dasar elektromagnetik dari mesin-mesin listrik dan prinsip yang mendasari metode pengujiannya.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (167, 37, '2', 'Mahasiswa mampu mengidentifikasi data mengenai kinerja dan karakteristik mesin-mesin listrik.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (168, 37, '3', 'Mahasiswa mampu melakukan pengukuran dan pengujian mesin-mesin listrik secara berkelompok.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (169, 38, '1', 'Mahasiswa mampu memahami  konsep komunikasi data, arsitektur jaringan komputer dan komponen penyusunnya(LAN,WAN, MAN,internet)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (170, 38, '2', 'Mahasiswa mampu menjelaskan dan menganalisa  cara kerja layering dengan OSI layer (7 layer:physical, datalink, network,transport,session, presentation,apllication) dan  TCP/IP(5 layer)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (171, 38, '3', 'Mahasiswa mampu menjelaskan dan menganalisa  line coding, deteksi dan koreksi error', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (172, 38, '4', 'Mahasiswa mampu menjelaskan  sistem internet-working terkini', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (173, 39, '1', 'Mahasiswa mampu menjelaskan konsep sensor dan transduser', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (174, 39, '2', 'Mahasiswa mampu menjelaskan konsep pengkondisi sinyal', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (175, 39, '3', 'Mahasiswa mampu menguraikan aktuator (pneumatik, elektrik dan mekanik)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (176, 39, '4', 'Mahasiswa mampu mendesain rangkaian PLC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (177, 40, '1', 'Mahasiswa mampu menggunakan alat ukur domain waktu dan frekuensi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (178, 40, '2', 'Mahasiswa mampu mendemonstrasikan modulasi AM dan FM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (179, 40, '3', 'Mahasiswa mampu mendemonstrasikan komunikasi di layer datalink, network dan transport', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (180, 40, '4', 'Mahasiswa mampu mensimulasikan jaringan komputer data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (181, 40, '5', 'Mahasiswa mampu membuat aplikasi menggunakan TCP/IP', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (182, 41, '1', 'Mahasiswa mampu melakukan pemodelan sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (183, 41, '2', 'Mahasiswa mampu mengaplikasikan metode kendali pada beberapa plant', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (184, 41, '3', 'Mahasiswa mampu menggunakan fungsi dasar mikroprosesor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (185, 42, '1', 'Mahasiswa mampu membuat proposal penelitian yang baik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (186, 42, '2', 'Mahasiswa mampu menelaah tulisan ilmiah (paper)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (187, 42, '3', 'Mahasiswa mampu menerapkan prinsip manajemen proyek', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (188, 42, '4', 'Mahasiswa mampu membuat prototyping sebuah produk elektronik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (189, 42, '5', 'Mahasiswa mampu melaporkan proyek kreatif mereka baik secara lisan atau tulisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (190, 43, '1', 'Mahasiswa mampu mengindentifikan masalah teknik elektro (topik KP)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (191, 43, '2', 'Mahasiswa mampu menganalisa masalah teknik Elektro (topik KP) dengan baik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (192, 43, '3', 'Mahasiswa memiliki etika dan profesionalisme dalam bekerja ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (193, 44, '1', 'Mahasiswa mampu menjelaskan jenis-jenis sumber energi terbarukan dan diversifikasi energi.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (194, 44, '2', 'Mahasiswa mampu memahami prinsip kerja dan karakteristik dari berbagai macam pembangkit energi baru dan terbarukan (PV, wind, biomass, mikrohydro, fuel cell, tidal dll.)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (195, 44, '3', 'Mahasiswa mampu menghitung kapasitas kebutuhan pembangkit energi baru dan terbarukan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (196, 44, '4', 'Mahasiswa mampu menghitung kapasitas kebutuhan penyimpan energi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (197, 44, '5', 'Mahasiswa mampu menjelaskan sistem pengaman dan kontrol pada pembangkit energi terbarukan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (198, 45, '1', 'Mahasiswa mampu menjelaskan Pancasila dalam Kajian Sejarah Bangsa Indonesia, Pancasila Sebagai Dasar Negara,\nPancasila sebagai Idiologi Negara, Pancasila Sebagai Sistem Filsafat, Pancasila sebagai Sistem Etika, dan \nPancasila sebagaidasar Nilai Pengembangan Ilmu.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (199, 45, '2', 'Mamahasiswa mampu mengklasifikasikan perilaku yang sesuai dengan nilai-nilai pengamalan Pancasila ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (200, 45, '3', 'Mahasiswa mampu mengaitkan sebuah contoh kasus dengan nilai-nilai pancasila ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (201, 45, '4', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (202, 45, '5', NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (203, 46, '1', 'Mahasiswa mampu menerapkan kemampuan teknik untuk memecahkan masalah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (204, 46, '2', 'Mahasiswa mampu mendesain dan membuat prototyping produk terkait bidang teknik elektro', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (205, 46, '3', 'Mahasiswa mampu melaporkan produk yang dihasilkan baik secara lisan atau tulisan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (206, 47, '1', 'Mahasiswa mampu menyimpulkan pekerjaan dalam tugas akhir, paper, jurnal yang sudah ada', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (207, 47, '2', 'Mahasiswa mampu menganalisis latar belakang permasalahan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (208, 47, '3', 'Mahasiswa mampu menentukan dan merencanakan batasan serta metodologi untuk penyelesaian masalah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (209, 48, '1', 'Mahasiswa mampu menjelaskan metode-metode kecerdasan buatan (ANN, Fuzzy logic, GA, dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (210, 48, '2', 'Merumuskan pilihan teknik-teknik kecerdasan buatan yang sesuai untuk menyelesaikan permasalahan keteknikan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (211, 48, '3', 'Mendesain dan mengimplementasikan salah satu metode kecerdasan buatan dan digunakan untuk penyelesaian masalah di elektro', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (212, 49, '1', 'Mahasiswa mampu menjelaskan  ajaran agama sebagai sumber nilai\ndalam pengembangan profesi dan kepribadian islami', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (213, 49, '2', 'Mahasiswa mampu menerapkan ajaran agama sebagai sumber nilai\ndalam pengembangan profesi dan kepribadian islami ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (214, 49, '3', 'Mahasiswa mampu menganalisis perilaku sehari-hari yang relevan dengan ajaran agama ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (215, 50, '1', 'Mahasiswa mampu menjelaskan pengenalan identitas nasional ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (216, 50, '2', 'Mahasiswa mampu menjelaskan konsep negara, konstitusi, dan demokrasi ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (217, 50, '3', 'Mahasiswa mampu menguraikan konsep negara hukum dan HAM, geo politik, dan geo strategi. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (218, 50, '4', 'Mahasiswa mampu mengklasifikasikan Hak dan Kewajiban ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (219, 51, '1', 'mahasiswa mampu menjelaskan konsep kewirausahaan dan etika bisnis', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (220, 51, '2', 'Mahasiswa mampu menyusun kurva evolusi startup', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (221, 51, '3', 'Mahasiswa mampu membuat rencana bisnis secara lengkap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (222, 51, '4', 'mahasiswa mampu menjelaskan konsep waralaba', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (223, 52, '1', 'Mahasiswa mampu menjelaskan dasar-dasar manajemen', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (224, 52, '2', 'Mahasiswa mampu menjelaskan alat identifikasi masalah dan peningkatan kualitas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (225, 52, '3', 'Mahasiswa mampu mengidentifikasi konsep siklus desain produk', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (226, 52, '4', 'Mahasiswa mampu merancang produk tertentu', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (227, 53, '1', 'Mahasiswa mampu mengembangkan desain/solusi dari latar belakang permasalahan teknik menggunakan kaidah sains dan keteknikan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (228, 53, '2', 'Mahasiswa mampu menguasai metode dan peralatan untuk mengembangkan solusi/desain', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (229, 53, '3', 'Mahasiswa mampu mengevaluasi dan mengukur solusi/desain yang diajukan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (230, 53, '4', 'Mahasiswa mampu mengatur pekerjaan/penugasan yang diberikan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (231, 53, '5', 'Mahasiswa mampu mendokumentasikan dan mempresentasikan hasil pekerjaan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (232, 54, '1', 'Mahasiswa mampu membiasakan komunikasi yang baik dengan masyarakat ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (233, 54, '2', 'Mahasiswa mampu menganalisis dan memecahkan permasalahan di masyarakat ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (234, 54, '3', 'Mamahasiswa mampu mengarahkan masyarakat dalam program KKN ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (235, 54, '4', 'Mahasiswa mampu merancang program-program pemberdayaan masyarakat ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (236, 55, '1', 'Mahasiswa mampu menjelaskan jenis sumber energi dan potensi energi di Indonesia\n', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (237, 55, '2', 'Mahasiswa mampu menjelaskan proses konversi energi dan termodinamika pembangkit', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (238, 55, '3', 'Mahasiswa mampu memahami prinsip kerja pembangkit tenaga listrik konvensional dan non konvensional (energi terbarukan)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (239, 55, '4', 'Mahasiswa mampu memahami kerateristik pengaturan tegangan dan frekuensi di pembangkit', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (240, 55, '5', 'Mahasiswa mampu menghitung karakteristik permintaan beban, klasifikasi pembebanan, kurva beban dan penjadwalan pembangkit listrik  dll.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (241, 56, '1', 'Mahasiswa mampu menjelaskan proses transmisi dan distribusi tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (242, 56, '2', 'Mahasiswa mampu memngkalasifikasikan peralatan transmisi dan distribusi tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (243, 56, '3', 'Mahasiswa mampu menganalisis kehandalan sistem transmisi dan distribusi tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (244, 56, '4', 'Mahasiswa mampu mensimulasikan sistem transmisi dan distribusi tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (245, 57, '1', 'Mahasiswa mampu menganalisis konsep daya 3 fase dan diagram rangkaian pengganti untuk menguraikan suatu sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (246, 57, '2', 'Mahasiswa mampu menggunakan sitem per unit dalam perhitungan sistem jaringan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (247, 57, '3', 'Mahasiswa mampu memecahkan permasalahan study aliran daya atau load flow', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (248, 57, '4', 'Mahasiswa mampu memecahkan permasalahan hubung singkat simentri (balanced) dan hubung singkat asimentri (unbalanced)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (249, 57, '5', 'Mahasiswa mampu memecahkan permasalahan ketasbilan transien dalam sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (250, 58, '1', 'Mampu menguasai dasar teknologi mesin listrik lanjut', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (251, 58, '2', 'Mampu mengembangkan mesin listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (252, 58, '3', 'Mampu melakukan perhitungan daya pada mesin listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (253, 58, '4', 'Menguasai teknik pengaturan mesin listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (254, 59, '1', 'Mahasiswa mampu menjelaskan perlengkapan listrik tenaga di pembangkitan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (255, 59, '2', 'Mahasiswa mampu menjelaskan perlengkapan listrik tenaga di Gardu Induk ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (256, 59, '3', 'Mahasiswa mampu mmenjabarkan perlengkapan listrik tenaga di jalur transmisi dan distribusi  ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (257, 59, '4', 'Mahasiswa mampu melakukan pengamatan dan identifikasi perlengkapan sistem tenaga di sekitar ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (258, 60, '1', 'Mahasiswa mampu menjelaskan konsep sistem proteksi tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (259, 60, '2', 'Mahasiswa mampu mengklasifikasikan peralatan sistem proteksi ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (260, 60, '3', 'Mahasiswa mampu menganalisis fault/kesalahan/gangguan dalam sistem tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (261, 60, '4', 'Mahasiswa mampu menerapkan sistem proteksi pada sistem tenaga listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (262, 61, '1', 'Mahasiswa mampu menjelaskan konsep elektronika daya beserta komponennya. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (263, 61, '2', 'Mahasiswa mampu mendesain AC-DC converter dan simulasinya. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (264, 61, '3', 'Mahasiswa mampu menjabarkan cara kerja DC-DC converter dan simulasinya. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (265, 61, '4', 'Mahasiswa mampu menjabarkan cara kerja AC-AC dan DC-AC converter dan simulasinya. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (266, 61, '5', 'Mahasiswa mampu mensimulasikan konsep DC drive dan AC drive. ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (267, 62, '1', 'Mahasiswa mampu memahami gambaran umum sistem pengiriman daya dari pembangkit sampai dengan konsumen.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (268, 62, '2', 'Mahasiswa mampu memahami klasifikasi tegangan dan gambar instalasi pada sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (269, 62, '3', 'Mahasiswa mampu menghitung dan merancang sistem iluminasi atau penerangan listrik dengan menerapkan peraturan intalasi PUIL dan perarturan yang belaku.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (270, 62, '4', 'Mahasiswa mampu memahami dan menghitung perencanaan pemasangan intalasi mesin-mesin listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (271, 62, '5', 'Mahasiswa mampu memahami dan menghitung perencanaan instalasi penangkal petir dan sistem pembumian (grounding)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (272, 63, '1', 'Mahasiswa mampu menjelaskan topik pilihan terkini yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (273, 63, '2', 'Mahasiswa mampu merumuskan permasalahan dan solusinya sesuai dengan topik yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (274, 63, '3', 'Mahasiswa mampu melaksanakan tugas baik induvidu maupu kelompok kemudian mempresentasikannya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (275, 64, '1', 'Mahasiswa mampu menjelaskan konsep sistem otomasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (276, 64, '2', 'Mahasiswa mampu merancang sistem otomasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (277, 64, '3', 'Mahasiswa mampu menentukan teknik dasar PLC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (278, 64, '4', 'mahasiswa mampu merancang rangkaian berbasis PLC berdasarkan permasalahan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (279, 65, '1', 'Mahasiswa mampu menjelaskan klasifikasi robot', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (280, 65, '2', 'Mahasiswa mampu mengidentifikasi mekanika robot', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (281, 65, '3', 'Mahasiswa mampu mengaplikasikan konsep kinematis dan dinamik robot', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (282, 65, '4', 'Mahasiswa mampu menguraikan tentang path planning dan trajectory planning', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (283, 65, '5', 'Mahasiswa mampu mengaplikasikan control robot pada mobile robot', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (284, 66, '1', 'Mahasiswa mampu menjelaskan konsep dasar pneumatik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (285, 66, '2', 'Mahasiswa mampu merancang sistem kontrol pneumatik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (286, 66, '3', 'Mahasiswa mampu menjelaskan konsep sistem hidrolika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (287, 66, '4', 'Mahasiswa mampu merancang sistem kontrol hidrolika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (288, 66, '5', 'mahasiswa mampu merancang sistem kontrol elektro pneumatik / hidrolika berdasarkan permasalahan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (289, 67, '1', 'Mahasiswa mampu mengaplikasikan pemrograman mikrokontroller dengan Bahasa C', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (290, 67, '2', 'Mahasiswa mampu menjelaskan peripheral MCU dan fungsinya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (291, 67, '3', 'Mahasiswa mampu mengaplikasikan komunikasi antar device', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (292, 67, '4', 'Mahasiswa mampu mengaplikasikan system kendali sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (293, 67, '5', 'Mahasiswa mampu mendesain HMI dan akuisisi data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (294, 68, '1', 'Mahasiswa mampu mendesain pemodelan state-space dan Analisa controllability\nobservability', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (295, 68, '2', 'Mahasiswa mampu menggunakan metode kendali pole placement dan observer', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (296, 68, '3', 'Mahasiswa mampu menerapkan metode optimal control', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (297, 68, '4', 'Mahasiswa mampu memahami konsep kestabilan lyapunov', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (298, 68, '5', 'Mahasiswa mampu menerapkan metode sliding mode control', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (299, 69, '1', 'Mahasiswa mampu memahami konsep konsep kendaraan autonomous dan kinematiknya.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (300, 69, '2', 'Mahasiswa mampu mendesain  sensor yang dipakai pada kendaraan autonomous.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (301, 69, '3', 'Mahasiswa mampu mendesain localization dan mapping sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (302, 69, '4', 'Mahasiswa mampu memahami konsep navigasi kendaraan autonomous.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (303, 69, '5', 'Mahasiswa mampu mendesain kontrol kendaraan autonomous.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (304, 70, '1', 'Mahasiswa mampu menjelaskan cara kerja pembangkit listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (305, 70, '2', 'Mahasiswa mampu memahami konsep generator dan AVR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (306, 70, '3', 'Mahasiswa mampu memahami system panel surya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (307, 70, '4', 'Mahasiswa mampu mendesain DC-DC converter', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (308, 70, '5', 'Mahasiswa mampu mendesain DC-AC converter', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (309, 71, '1', 'Mahasiswa mampu menjelaskan konsep sistem terintegrasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (310, 71, '2', 'Mahasiswa mampu memahami  konsep real time system', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (311, 71, '3', 'Mahasiswa mampu memahami konsep Remote control and comunication', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (312, 71, '4', 'Mahasiswa mampu menjelaskan RTU, MTU, HMI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (313, 71, '5', 'Mahasiswa mampu mengaplikasikan sistem terintegrasi dalam memecahkan suatu permasalahan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (314, 72, '1', 'Mahasiswa mampu menjelaskan topik pilihan terkini yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (315, 72, '2', 'Mahasiswa mampu merumuskan permasalahan dan solusinya sesuai dengan topik yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (316, 72, '3', 'Mahasiswa mampu melaksanakan tugas baik induvidu maupu kelompok kemudian mempresentasikannya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (317, 73, '1', 'Mahasiswa mampu menjelaskankan dan menghitung  konsep konsep dasar antenna : medan listrik, medan magnet, propagasi, hukum Maxwell,dll', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (318, 73, '2', 'Mahasiswa mampu menjelaskankan dan menghitung parameter dasar antenna : gain,directivity, pola radiasi, beamwidth, aperture, dll', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (319, 73, '3', 'Mahasiswa mampu memahami dan menghitung bentuk bentuk antenna dan karakteristiknya ( array antenna ,wire, broadband antenna,microstip antenna', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (320, 73, '4', 'Mahasiswa mampu mendesain antenna dengan tool software simulator', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (321, 74, '1', 'Mahasiswa mampu memodelkan software embedded dengan UML, FSM dan DFD', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (322, 74, '2', 'Mahasiswa mampu menerapkan model FSM ke dalam mikrokontroler', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (323, 74, '3', 'Mahasiswa mampu menerapkan proses multitasking, scheduling, komunikasi antar proses dan manajemen resource pada mikrokontroler', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (324, 74, '4', 'Mahasiswa mampu menerapkan komunikasi peripheral antar mikrokontroler dan PC menggunakan protokol serial dan network', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (325, 74, '5', 'Mahasiswa mampu menerapkan producer/consumer design pattern pada sistem tertanam', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (326, 75, '1', 'Mahasiswa mampu menerapkan sampling sinyal dan konversi sinyal analog ke digital', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (327, 75, '2', 'Mahasiswa mampu menganalisis menggunakan transformasi Z', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (328, 75, '3', 'Mahasiswa mampu menganalisis menggunakan Discrete Fourier Transform', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (329, 75, '4', 'Mahasiswa mampu merancang filter digital FIR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (330, 75, '5', 'Mahasiswa mampu merancang filter digital IIR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (331, 76, '1', 'Mahasiswa mampu menjelaskan berbagai struktur data (stack, queue, array)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (332, 76, '2', 'Mahasiswa mampu menjelaskan algoritma (searching, sorthing)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (333, 76, '3', 'Mahasiswa mampu menerapkan algoritma dan struktur data untuk memecahkan masalah ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (334, 76, '4', 'Mahasiswa mampu membangun sistem database sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (335, 77, '1', 'Mahasiswa mampu menjelaskan organisasi, manajemen, dan perusahaan jaringan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (336, 77, '2', 'Mahasiswa mampu menjelaskan infrastruktur teknologi informasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (337, 77, '3', 'Mahasiswa mampu menerapkan aplikasi sistem utama untuk era digital', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (338, 77, '4', 'Mahasiswa mampu membangun dan mengelola sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (339, 78, '1', 'Mahasiswa mampu memahami sistem komunikasi digital, kinerja dan kualitasnya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (340, 78, '2', 'Mahasiswa mampu menjelaskan dan menganalisa source coding, multiple access, channel coding, digital modulation', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (341, 78, '3', 'Mahasiswa mampu menjelaskan dan menghitungkualitas link: BER, throughput,', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (342, 78, '4', 'Mahasiswa mampu menjelaskan sistem komunikasi digital masa kini ; 5G, Fiber optic (DWDM), Wireless Sensor Network', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (343, 79, '1', 'Mahasiswa mampu merancang rangkaian kombinasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (344, 79, '2', 'Mahasiswa mampu merancang rangkaian sekuensial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (345, 79, '3', 'Mahasiswa mampu merancang komponen datapath dan RTL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (346, 79, '4', 'Mahasiswa mampu menerapkan optimasi pada hardware RTL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (347, 80, '1', 'Mahasiswa mampu menjelaskan pemrograman berbasis objek (OOP)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (348, 80, '2', 'Mahasiswa mampu membuat pemrograman berbasis objek sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (349, 80, '3', 'Mahasiswa mampu menerapkan pemrograman lanjut (OOP, pemrograman web atau berbasis mobile)untuk permasalah teknik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (350, 81, '1', 'Mahasiswa mampu menjelaskan topik pilihan terkini yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (351, 81, '2', 'Mahasiswa mampu merumuskan permasalahan dan solusinya sesuai dengan topik yang dibahas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (352, 81, '3', 'Mahasiswa mampu melaksanakan tugas baik induvidu maupu kelompok kemudian mempresentasikannya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (353, 82, '1', 'Mahasiswa mampu menjelaskan prinsip-prinsip dari operasi sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (354, 82, '2', 'Mahasiswa mampu membuat kurva biaya pembangkit tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (355, 82, '3', 'Mahasiswa mampu menguasai prinsip pengamanan, pengendalian, analisis dan evaluasi operasi sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (356, 82, '4', 'Mahasiswa mampu menguasai pemrograman, membuat laporan dalam mengatasi perlasalahan di operasi STL', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (357, 83, '1', 'Mahasiswa mampu menjelaskan difinisi dan klasifikasi stabilitas dinamika pada Sistem Tenaga Listrik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (358, 83, '2', 'Mahasiswa mampu menguasai metode analisa kestabilan Sistem Tenaga Listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (359, 83, '3', 'Mahasiswa mampu menguasai teknik Teknik Pengaturan Stabilitas Tenaga Listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (360, 84, '1', 'Mahasiswa mampu mengidentifikasi dan mengaplikasikan desain dan standar instalasi  sistem kelistrikan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (361, 84, '2', 'Mahasiswa mampu mengaplikasikan prinsip keteknikan, manajemen dan mengambar sistem kelistrikan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (362, 84, '3', 'Mahasiswa mampu mengaplikasikan konsep analisis sistem tenaga pada sistem kelistrikan sistem industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (363, 84, '4', 'Mahasiswa mampu mengestimasi proyek keteknikan : perencanaan, pelaksanaan, detail spesifikasi, pemilihan, pembiayaan dan evaluasi.  ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (364, 85, '1', 'Mahasiswa mampu menjelaskan persoalan-persoalan operasi, jadwal pemeliharaan dan keandalan sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (365, 85, '2', 'Mahasiswa mampu menjabarkan Langkah- langkah perhitungan Loss of load probability dan forced outage rate', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (366, 85, '3', 'Mahasiswa mampu menganalisis pengaruh pengurangan dan penambahan unit dari sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (367, 85, '4', 'Mahasiswa mampu menganalisis keandalan 3 unit pembangkit yang terinterkoneksi.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (368, 85, '5', 'Mahasiswa mampu menganalisis sekuritas sistem daya, analisis kontingensi dan deteksi problem jaringan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (369, 86, '1', 'Mahasiswa mampu menjelaskan konsep dasar Smart Grid ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (370, 86, '2', 'Mahasiswa mampu mengkalisifkasikan jenis aplikasi-aplikasi Smart Grid ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (371, 86, '3', 'Mahasiswa mampu mensimulasikan proses perancangan smart Grid ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (372, 86, '4', 'Mahasiswa mampu menganalis kehandalan sebuah sistem Smart Grid ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (373, 87, '1', 'Mahasiswa mampu memahami konsep dasar  dan perkembangan teknologi transportasi dan kendaraan listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (374, 87, '2', 'Mahasiswa mampu memahami desain dan cara kerja kendaraan hybrid beserta sistem propulsinya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (375, 87, '3', 'Mahasiswa mampu memodelkan berbagi jenis kendaraan (ICE, EV, Hybrid)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (376, 87, '4', 'Mahasiswa mampu memahami terkait power source, energy storage dan regenerative braking pada kendaraan listrik.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (377, 87, '5', 'Mahasiswa mampu merancang sederhana sistem kendaraan listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (378, 88, '1', 'Mahasiswa mampu menjelaskan konsep kualitas daya ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (379, 88, '2', 'Mahasiswa mampu mengeksplorasi permasalahan\ntegangan pada kualitas daya di\ndunia industry', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (380, 88, '3', 'Mahasiswa mampu menganalisis kualitas daya pada\npembengkit terdistribusi (DG)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (381, 88, '4', 'Mahasiswa mampu mensimulasikan kualitas daya pada pembangkit, industri, dan grounding ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (382, 89, '1', 'Mahasiswa mampu menjelaskan konsep sinyal citra dan warna', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (383, 89, '2', 'Mahasiswa mampu menerapkan pemrosesan citra dalam domain spatial dan domain frekuensi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (384, 89, '3', 'Mahasiswa mampu menerapkan pemrosesan morfologi citra', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (385, 89, '4', 'Mahasiswa mampu menerapkan pemrosesan object recognition pada citra', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (386, 89, '5', 'Mahasiswa mampu membuat aplikasi pengolahan citra untuk mengekstrak fitur pada citra', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (387, 90, '1', 'Mahasiswa mampu menerapkan beberapa protokol layer fisik IoT (Ethernet, Wifi, Bluetooth, LoRA)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (388, 90, '2', 'Mahasiswa mampu menerapkan beberapa protokol layer aplikasi IoT (MQTT, RESTful, HTTP)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (389, 90, '3', 'Mahasiswa mampu menggunakan service cloud/database untuk IoT', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (390, 90, '4', 'Mahasiswa mampu mendesain sistem IoT secara lengkap', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (391, 91, '1', 'Mahasiswa mengerti cara menyimpan dan memproses data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (392, 91, '2', 'Mahasiswa mengerti cara memantau data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (393, 91, '3', 'Mahasiswa mengerti cara manajemen klaster', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (394, 91, '4', 'Mahasiswa mengerti cara analitik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (395, 91, '5', 'Mahasiswa mengerti cara melaporkan data', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (396, 92, '1', 'Mahasiswa mampu meMAHAMI ciri khas siskomber (konsep sel,kluster,frequency reuse,hondover), frekuensi kerja, komponen penyusun siskomber', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (397, 92, '2', 'Mahasiswa mampu menJELASKAN arsitektur jaringan siskomber', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (398, 92, '3', 'Mahasiswa mampu menjelaskan sistem komunikasi digital dalam siskomber (Teknik modulasi, multiplexing, akses jamak, pengkodean kanal,sistem RF) serta pemodelan redaman dalam siskomber', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (399, 92, '4', 'Mahasiswa mampu menjelaskan cara kerja radio access dan core network', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (400, 92, '5', 'Mahasiswa mampu memahami perkembangan teknologi siskomber (2G,3G,4G) beserta arsitektur dan komponen penyusunnya.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (401, 93, '1', 'Mahasiswa mampu menjelaskan berbagai macam frekuensi kerja,konsep komunikasi uplink dan downlink, jenis orbit, beserta komponen penyusun siskomsat.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (402, 93, '2', 'Mahasiswa mampu memahami arsitektur jaringan siskomsat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (403, 93, '3', 'Mahasiswa mampu menjelaskan dan menghitung parameter kunci dalam menilai kinerja perangkat RF dan link siskomsat ( temperature noise (T), daya noise (N), G/T)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (404, 93, '4', 'Mahasiswa mampu menerapkan power link budget dalam sebuah transponder siskomsat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (405, 93, '5', 'Mahasiswa mampu menjelaskan dan menghitung kinerja link  siskomsat (S/N. C/N)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (406, 94, '1', 'Mahasiswa mampu menerapkan konfigurasi siskomsat, cara kerja sistem komunikasi satelit untuk mendapatkan citra', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (407, 94, '2', 'Mahasiswa mampu menerapkan konsep dasar remote sensing, remote sensing aktif-pasif,energi, spektrum frekuensi, sensor, scaterring, absorbtion, dll', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (408, 94, '3', 'Mahasiswa mampu menerapkan  tahapan tahapan radiasi-atmosfer, interaksi objek target, perekaman energi oleh sensor, proses transmisi-tenerimaan pada sistem remote sensing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (409, 94, '4', 'Mahasiswa mampu menerapkan  pemrosesan interpretasi-analisa dan aplikasi pada sistem remote sensing', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (410, 95, '1', 'Mahasiswa mampu menjelaskan jenis-jenis sensor dan prinsip kerjanya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (411, 95, '2', 'Mahasiswa mampu menjelaskan MEMS dan cara kerjanya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (412, 95, '3', 'Mahasiswa mampu membedakan MEMS dan aktuator', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (413, 95, '4', 'Mahasiswa mampu menjelaskan MEMS-IDT Sensor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (414, 95, '5', 'Mahasiswa mampu menjelaskan smart sensor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (415, 96, '1', 'Mahasiswa mampu menjelaskan konsep manajemen proyek ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (416, 96, '2', 'Mahasiswa mampu melakukan penyusunan perencanaan dan pengorganisasin proyek ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (417, 96, '3', 'Mahasiswa mampu menyusun rencana anggaran biaya dalam sebuah proyek ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (418, 96, '4', 'Mahasiswa mampu mensimulasikan dan menganalis sebuah proyek melalui sebuah software ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (419, 97, '1', 'Mahasiswa mampu menjelaskan ruang lingkup, pengertian, alasan-alasan penerapan K3, dan contoh kebijakan & organisasi K3 yang dibuat\noleh suatu organisasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (420, 97, '2', 'Mahasiswa mampu menggambarkan berbagai jenis hazard & resiko di tempat kerja serta cara\npenilaiannya ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (421, 97, '3', 'Mahasiswa menjelaskan berbagai cara pengendalian hazard dalam rangka mengelola resiko dan berbagai metode monitoring, review, audit, investigasi &\npelaporan kecelakaan kerja', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (422, 98, '1', 'Mahasiswa mampu menjelaskan supervised, unsupervised dan reinforcement learning', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (423, 98, '2', 'Mahasiswa mampu menerapkan metode surpervised learning dalam masalah klasifikasi atau yang lainnya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (424, 98, '3', 'Mahasiswa mampu menerapkan metode unsupervised/reinforcement learning dalam permasalahan clustering dan lainnya', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (425, 98, '4', 'Mahasiswa mampu menganalisis salah satu metode machine learning untuk masalah pattern recornition, computer vision atau datamining', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (426, 99, '1', 'Mahasiswa mampu menjelaskan sifat SKSO dibanding sistem komunikasi lain, frekuensi kerja,perangkat penyusun SKSO (optical source, optical detector, fiber optic)  serta arsitektur jaringan SKSO.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (427, 99, '2', 'Mahasiswa mampu memahami sifat optical source (LED,LASER), jenis mode fiber optik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (428, 99, '3', 'Mahasiswa mampu memahami jenis redaman dalam fiber optic (bending, ketidaksamaan ukuran core, sambungan core, konektor) beserta perangkat perangkat yang digunakan dalam jaringan fiber optic yang berbasis optical/cahaya (optical duplexer, optical repeater,dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (429, 99, '4', 'Mahasiswa mampu menjelaskan sifat optical detector (PIN, APD)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (430, 100, '1', 'Mahasiswa mampu menjelaskan prinsip dasar dan komponennyta, material elektronika.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (431, 100, '2', 'Mahasiswa mampu menjelaskan karakteristik listrik, optik dan magnetik dari material semikonduktor.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (432, 100, '3', 'Mahasiswa mampu menjelaskan struktur  dan step-step pembuatan divais semikonduktor.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (433, 100, '4', 'Mahasiswa mampu mendisain dan mengukur transistor dan diode nano.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (434, 101, '1', 'Mahasiswa mampu menjelaskan sifat material semikonduktor', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (435, 101, '2', 'Mahasiswa mampu menceritakan proses pembuatan divais ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (436, 101, '3', 'Mahasiswa mampu menghitung melalui laju diffusi, thermal oxidation', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (437, 101, '4', 'Mahasiswa mampu menjelaskan penumbuhan dengan metode chemical', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (438, 102, '1', 'Mahasiswa mampu mengkaji berbagai spesifikasi sistem instrumentasi biomedis', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (439, 102, '2', 'Mahasiswa mampu mengkaji sistem fisiologi tubuh dan sumber potensial bioelektrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (440, 102, '3', 'Mahasiswa menjelaskan beberapa macam sensor dalam biomedika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (441, 102, '4', 'Mahasiswa mampu menerapkan konsep pengukuran output kardiak, denyut jantung, dan suara jantung', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (442, 102, '5', 'Mahasiswa mampu menganalisis ultrasonografi, endoskopi dan termografi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (443, 103, '1', 'Mahasiswa mampu menguraikan pemodelan matematis sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (444, 103, '2', 'Mahasiswa mampu menguraikan konsep MRAC', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (445, 103, '3', 'Mahasiswa mampu menguraikan konsep Auto Tuning', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (446, 103, '4', 'Mahasiswa mampu menjelaskan beberapa jenis system kendali adaptif', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (447, 103, '5', 'Mahasiswa mampu mengaplikasikan teknik kendali adaptif pada permasalahan di bidang elektro', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (448, 104, '1', 'Mahasiswa mampu memahami konsep neural - network', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (449, 104, '2', 'Mahasiswa mampu mendesain system kendali NN-PID', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (450, 104, '3', 'Mahasiswa mampu memahami konsep fuzzy logic controller', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (451, 104, '4', 'Mahasiswa mampu memahami fuzzy NN', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (452, 104, '5', 'Mahasiswa mampu mengaplikasikan metode NN dan FLC pada system kendali', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (453, 105, '1', 'Mahasiswa mampu memahami konsep kendali digital', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (454, 105, '2', 'Mahasiswa mampu memahami transformasi z', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (455, 105, '3', 'Mahasiswa mampu memahami konsep sampling', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (456, 105, '4', 'Mahasiswa mampu mengaplikasikan konsep discrete time modeling dan kontrol', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (457, 105, '5', 'Mahasiswa mampu mengaplikasikan teknik kendali digital pada contoh yang diberikan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (458, 106, '1', 'Mahasiswa mampu menjelaskan bagian-bagian dari sistem pendukung keputusan (decision support systems) dan management support system', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (459, 106, '2', 'Mahasiswa mampu menjelaskan intelligent decision support systems', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (460, 106, '3', 'Mahaiswa mampu membangun sistem pendukung keputusan dalam permasalahan teknik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (461, 107, '1', 'Mahasiswa mampu memahami metode-metode kecerdasan buatan (Machine learning, PSO, ANN, Fuzzy logic, GA, dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (462, 107, '2', 'Mahasiswa mampu menganalisa dan memodelkan permasalahan optimisasi dalam sistem tenaga listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (463, 107, '3', 'Mahasiswa mampu menganalisa pilihan metode kecerdasan buatan yang sesuai untuk menyelesaikan permasalahan sistem tenaga listrik (optimal power flow, unit commitment, load forecasting dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (464, 107, '4', 'Mahasiswa mampu untuk memodelkan optimisasi dan fungsi objektif pada sistem tenaga listrik (single objective and multi objective optimization)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (465, 107, '5', 'Mahasiswa mampu mengaplikasikan salah satu metode kecerdasan buatan yang digunakan untuk penyelesaian masalah di bidang Sistem Tenaga Listrik', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (466, 108, '1', 'Mahasiswa mampu memahami tahapan state of the art Perancangan Pembangkit Energi Terbarukan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (467, 108, '2', 'Mahasiswa mampu merancang dan mensimulasikan Pembangkit Energi Terbarukan (Tenaga Surya, Tenaga Angin, Tenaga Air, Tenaga Biomassa, Tenaga Panas Bumi, Tidal, Fuel Cell, Hidrogen dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (468, 108, '3', 'Mahasiswa mampu merancang dan mensimulasikan Sistem Pembangkit Off-Grid, Sistem Pembangkit Hybrid, Sistem Pembangkit On-Grid.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (469, 108, '4', 'Mahasiswa mampu mengaplikasikan mekanisme kerja dan merancang berbagai Pembangkit Energi Terbarukan (singli line diagram racangan, proses kerja dll)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (470, 108, '5', 'Mahasiswa mampu menganalisis Tekno Ekonomi Peracangan Pembangkit Energi Terbarukan (Biaya pembangkitan, cash flow, BEP, TOC, NPC)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (471, 109, '1', 'Mahasiswa mampu menerapkan konsep inti di android studio', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (472, 109, '2', 'Mahasiswa mampu menerapkan activity di android studio', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (473, 109, '3', 'Mahasiswa mampu menerapkan honeycomb dan tablet di android studio', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (474, 109, '4', 'Mahasiswa mampu menerapkan penyimpanan data, layanan jaringan, dan API di android studio', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (475, 109, '5', 'Mahasiswa mampu menerapkan layanan di android studio', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (476, 110, '1', 'Mahasiswa mampu menjelaskan prinsip-prinsip perencanaan dan manajemen energi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (477, 110, '2', 'Mahasiswa mampu menganalisa  pre audit, audit dan menuliskan Laporan manajemen energi untuk bangunan, wilayah dan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (478, 110, '3', 'Mahasiswa mampu menganalisa  efisiensi energi, prinsip pembebanan listrik, penerangan, cara penghematan,  dan Manajemen energi pada bangunan, wilayah dan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (479, 110, '4', 'Mahasiswa mampu menganalisa  tekno ekonomi audit energi pada bangunan, wilayah dan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (480, 110, '5', 'Mahasiswa mampu merancang  audit energi pada bangunan, wilayah dan industri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (481, 111, '1', 'Mahasiswa mampu mengidentifikasi prinsip-prinsip sistem Penyimpanan Energi Fudamental konversi energi dan energi storage', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (482, 111, '2', 'Mahasiswa mampu menjelaskan jenis dan karakteristik  energi storage konvensional vs modern vs storage 4.0', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (483, 111, '3', 'Mahasiswa mampu memahami  aplikasi dan pemanfaatan penyimpanan energi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (484, 111, '4', 'Mahasiswa mampu merancang  aplikasi dan pemanfaatan penyimpanan energi (sistem charging, sistem BMS dan monitoring)', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (485, 112, '1', 'Mahasiswa menguasai metode pemodelan sistem', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (486, 112, '2', 'Mahasiswa mampu merumuskan teknik-teknik pemodelan yang sesuai untuk menyelesaikan permasalahan keteknikan sederhana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_cpmk` VALUES (487, 112, '3', 'Mahasiswa mampu mendesain pemodelan sistem untuk penyelesaian masalah di bidang elektro', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_dosen
-- ----------------------------
DROP TABLE IF EXISTS `ref_dosen`;
CREATE TABLE `ref_dosen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_dosen` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `nip` bigint(30) NULL DEFAULT NULL,
  `nama_dosen` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kode_dosen`(`kode_dosen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_dosen
-- ----------------------------
INSERT INTO `ref_dosen` VALUES (1, 'AUG001', 1951100120161001, 'Dr.Ir. Augustinus Sujono M.T.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (2, 'CHI001', 198804162015041002, 'Chico Hermanu Brillianto Apribowo S.T., M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (3, 'DRM001', 1983032420130201, 'Dr. Miftahul Anwar S.Si., M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (4, 'FER001', 196801161999031001, 'Feri Adriyanto, Ph.D.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (5, 'HAR050', 199104132018031001, 'Hari Maghfiroh M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (6, 'IRW001', 197004041996031002, 'Irwan Iftadi S.T., M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (7, 'MEI002', 197705132009121004, 'Meiyanto Eko Sulistyo S.T., M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (8, 'MUH015', 197007201999031001, 'Prof. Muhammad Nizam S.T,M.T,Ph.D.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (9, 'MUH043', 1988122920161001, 'Muhammad Hamka Ibrahim St., M.Eng.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (10, 'SUB012', 198106092003121002, 'Subuh Pramono S.T., M.T.', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_dosen` VALUES (11, 'SUT034', 1987050620180701, 'Sutrisno S.T., M.Sc, Ph.D.', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_kelas
-- ----------------------------
DROP TABLE IF EXISTS `ref_kelas`;
CREATE TABLE `ref_kelas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_kelas
-- ----------------------------
INSERT INTO `ref_kelas` VALUES (1, 'A', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_kelas` VALUES (2, 'B', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_kelas` VALUES (3, 'C', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_kelas` VALUES (4, 'D', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `ref_mahasiswa`;
CREATE TABLE `ref_mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `angkatan` int(11) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nim`(`nim`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 187 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_mahasiswa
-- ----------------------------
INSERT INTO `ref_mahasiswa` VALUES (1, 'I0716001', 'ADIP SAFIUDIN', 2016, 8, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (2, 'I0716002', 'Adrian Seta Ekananda', 2016, 8, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (3, 'I0716003', 'Afif Yuhendrasmiko', 2016, 8, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (4, 'I0716004', 'AHMAD IMAM RAUYANI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (5, 'I0716005', 'AMMAR GALIH GUMILANG', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (6, 'I0716006', 'Annisa Hanifa', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (7, 'I0716007', 'Aulia Ramadhani', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (8, 'I0716008', 'Axel Adam Mahendra', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (9, 'I0716009', 'AZIS UBAIDILAH', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (10, 'I0716010', 'BHADRIKA EVANDITO A', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (11, 'I0716011', 'BINTANG SUJATMIKO', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (12, 'I0716012', 'Daniel Aquino Purba', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (13, 'I0716013', 'ERDIAN DWI LAKSANA', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (14, 'I0716014', 'Fuad Nur Kuncoro', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (15, 'I0716015', 'GHUFRON HUSNAN', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (16, 'I0716016', 'Henry Probo Santoso', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (17, 'I0716017', 'I Wayan Yoga K', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (18, 'I0716018', 'Kevin Sebastian', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (19, 'I0716019', 'Krisna Hakim', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (20, 'I0716020', 'MIFTAHUDDIN IRFANI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (21, 'I0716021', 'Mohamad Nisman Falic', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (22, 'I0716022', 'Muhammad Amirudin S', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (23, 'I0716023', 'MUHAMMAD FAKHRI ERRI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (24, 'I0716024', 'MUHAMMAD THARIEQ P', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (25, 'I0716025', 'MUHAMMAD ULIL `AZMI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (26, 'I0716026', 'Musyaffa\' Ahmad', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (27, 'I0716027', 'OKI SETIAWAN', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (28, 'I0716028', 'Rilo Pambudi Aditya Wardani', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (29, 'I0716029', 'ROYANI AULIA IHSANTI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (30, 'I0716030', 'SALMAN AL FARISI', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (31, 'I0716031', 'TYAN WIDOTOMO', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (32, 'I0716032', 'Vernanda S. Z. H', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (33, 'I0716033', 'Wiwik Nur Winda', 2016, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (34, 'I0716034', 'YUDHI PRABOWO KUSUMA', 2016, 8, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (35, 'I0714001', 'ABID ALIM MUSTAQIM', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (36, 'I0714002', 'ADITYA MEITA NUGRAHA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (37, 'I0714003', 'AJI FAUZAN HIDAYAT', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (38, 'I0714004', 'ANDRYAWAN JAYA P', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (39, 'I0714005', 'ANRICO GIDEON ALFANO', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (40, 'I0714006', 'AULIA ARDAN SULTANI', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (41, 'I0714007', 'BIMA TRI PRASETYA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (42, 'I0714008', 'BINA PANGESTU N', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (43, 'I0714009', 'BONI VASIUS ROSEN', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (44, 'I0714010', 'DWIYAN BAGAS DEWANTO', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (45, 'I0714011', 'EDI NUGROHO', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (46, 'I0714012', 'FADHILA AMALIA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (47, 'I0714013', 'FASDA ILHAQ ROBBANI', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (48, 'I0714014', 'FEBRIANO EKKY R P Y', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (49, 'I0714015', 'FERDIANSYAH ASHIL', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (50, 'I0714016', 'FX RIAN WICAKSONO', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (51, 'I0714017', 'IGOR M FARHAN', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (52, 'I0714018', 'IRFAN MAULANA M', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (53, 'I0714019', 'LUTHFY MAKHMUDY', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (54, 'I0714020', 'M HAKIM ADHIGUNA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (55, 'I0714021', 'MUHAMAD DZAKY A', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (56, 'I0714022', 'MUHAMMAD IQBAL', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (57, 'I0714023', 'NADYA FARADIBA E', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (58, 'I0714024', 'PANJI MUSLIM', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (59, 'I0714026', 'RENALDY PURWANTO', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (60, 'I0714027', 'REYNALDO HUTAURUK', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (61, 'I0714028', 'REZA YUSADIKA PUTRA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (62, 'I0714029', 'RIO YUAN PALLAFINE', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (63, 'I0714030', 'RIZAL ABDUL ROZAQ R', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (64, 'I0714031', 'RIZAL NURHIDAYAT', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (65, 'I0714032', 'STEPHANUS HANURJAYA', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (66, 'I0714033', 'ZULHENDRA HANIF', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (67, 'I0714034', 'DION PUTRA ANUGRAH', 2014, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (68, 'I0715001', 'Abyan Habibie', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (69, 'I0715002', 'ADITYA NUR FAUZI G', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (70, 'I0715003', 'AHMAD SYAH ALJABAR', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (71, 'I0715004', 'Arif Nuruddin', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (72, 'I0715005', 'Arifian Trilaksita', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (73, 'I0715006', 'ARIS MAULANA FAUZAN', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (74, 'I0715007', 'Arthur Joshua Titus', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (75, 'I0715008', 'CESARIUS ADI A K', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (76, 'I0715009', 'DWIKI DIMAS SHIDIQ', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (77, 'I0715010', 'FARIS IZZATURRAHMAN', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (78, 'I0715011', 'FEBRI ABDUL ROHMAN', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (79, 'I0715012', 'Ghea Faradiba', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (80, 'I0715013', 'Hillga Richman R', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (81, 'I0715014', 'JOHAN TRY AFFANDY', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (82, 'I0715015', 'Jusuf Abimas Pratama', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (83, 'I0715016', 'Kharis Akbar B', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (84, 'I0715017', 'Kirana Dyah Utari Ku', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (85, 'I0715018', 'LATIF NUR FAUZI', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (86, 'I0715019', 'Lia Alvionita', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (87, 'I0715020', 'Lia Anjarwati', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (88, 'I0715021', 'MOHAMMAD IZZUL MUKHTAR', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (89, 'I0715022', 'Muhammad Akmal', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (90, 'I0715024', 'Muhammad Fajar Prakasa', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (91, 'I0715025', 'Muhammad Gunawan', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (92, 'I0715026', 'Muhammad Ramadhan Bagas Purnomo', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (93, 'I0715027', 'MUHAMMAD WAHID HASYIM', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (94, 'I0715028', 'Mustofa Danang Ariyanto', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (95, 'I0715029', 'Oktavian Listiyanto', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (96, 'I0715030', 'Ramanda Fadhillah', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (97, 'I0715031', 'Ratih Rachmatika', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (98, 'I0715032', 'Ryoki Martfuadi', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (99, 'I0715033', 'Sifa\'us Wulaning Arsri', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (100, 'I0715034', 'Tony Febrianto', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (101, 'I0715035', 'Wahyu Kurniawan', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (102, 'I0715036', 'WAHYU RAHMAT HIDAYAT', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (103, 'I0715037', 'YAN MAHARDHIKA PUTRA PERDANA', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (104, 'I0715038', 'YASMINE AFIFAH', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (105, 'I0715039', 'Zaniar Rickiansyah', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (106, 'I0715040', 'YUANA AYUB SUNARYA', 2015, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (107, 'I0717001', 'ADITYA PRATAMA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (108, 'I0717002', 'AGUNG BUDI UTOMO', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (109, 'I0717003', 'AIMMATUL YUMNA ARIVATUL AZRA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (110, 'I0717004', 'Alvin Ichwannur Ridho', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (111, 'I0717005', 'ARIF WIBOWO', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (112, 'I0717006', 'Athaya Cantia Putri', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (113, 'I0717007', 'Attar Al Mufashal Rasyid', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (114, 'I0717008', 'Aulia Vici Yunitasari', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (115, 'I0717009', 'Bakasrian Fericoari', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (116, 'I0717010', 'BANU MAHESWARA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (117, 'I0717011', 'Bayhaqi Irfani', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (118, 'I0717012', 'Berlianne Shanaza Andriany', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (119, 'I0717013', 'BIMA DAMAR JATI', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (120, 'I0717014', 'BINTAR YUDO SADEWO', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (121, 'I0717015', 'FAHMI ISMAIL', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (122, 'I0717016', 'FAISHAL HANIFAN MA`RUF', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (123, 'I0717017', 'GILANG SATRIA AJIE', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (124, 'I0717018', 'Hanifah Yulia', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (125, 'I0717019', 'HARISNO', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (126, 'I0717020', 'HERWIN JONATHAN NABABAN', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (127, 'I0717021', 'Hisbullah Ahmad Fathoni', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (128, 'I0717022', 'IVAN ROBI SEPTIAN', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (129, 'I0717023', 'Kevin Dwiyanto Saputra', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (130, 'I0717024', 'M. IQBAL ZIDNY', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (131, 'I0717025', 'M. MAULANA YUSUF', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (132, 'I0717026', 'MOHAMMAD RAIHAN H.', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (133, 'I0717027', 'MUHAMMAD AL HAMID', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (134, 'I0717028', 'MUHAMMAD IKYU ARQIE RAMADHAN', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (135, 'I0717029', 'Muhammad Renaldy Darmawan', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (136, 'I0717030', 'Muhammad Rifai', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (137, 'I0717031', 'MUHAMMAD RIFYAL ABUBAKAR', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (138, 'I0717032', 'MUHAMMAD RIZQI SUBENO', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (139, 'I0717033', 'Muhammad Wakhid Wardani', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (140, 'I0717034', 'MUHAMMAD YAHYA IZZUDIN', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (141, 'I0717035', 'Nanda Hafidz Rivanda', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (142, 'I0717036', 'RAFIQ SATRIA YUDHA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (143, 'I0717037', 'RIFQI PARADISA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (144, 'I0717038', 'RISKI RAMA KUSUMA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (145, 'I0717039', 'Sony Adyatama', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (146, 'I0717040', 'Wahyu Aji Rahmantya Soedjono', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (147, 'I0717041', 'Weldino Panji Kurniadi', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (148, 'I0717042', 'YUSUF YAHYA', 2017, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (149, 'I0718001', 'ABRAHAM BABTISTIO', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (150, 'I0718002', 'AHMAD AZZAM HAFIDZ', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (151, 'I0718003', 'ALVIAN AJI PANGESTU', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (152, 'I0718004', 'ANDHIKA RIZKITA PUTERA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (153, 'I0718005', 'Annisa Larasati Febrianingrum', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (154, 'I0718006', 'CATYA AFIF KASUDYA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (155, 'I0718007', 'Desi Sunyahni', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (156, 'I0718008', 'Eri Setiawan', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (157, 'I0718009', 'FANDI SURYA ADINATA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (158, 'I0718010', 'Firmansyah Abada', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (159, 'I0718011', 'GHOZY ABROR AUFAN', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (160, 'I0718012', 'GIBRAN DZULFIKAR GHAFFARA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (161, 'I0718013', 'Hanandya Maya Shafira', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (162, 'I0718014', 'HANIF ARDIYOANSYAH', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (163, 'I0718015', 'ILHAM GILANG PRADANA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (164, 'I0718016', 'IMAM ARIF', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (165, 'I0718017', 'KHILALUL HANIF', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (166, 'I0718018', 'M. FATKHI FUTUKHAL ARIFIN', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (167, 'I0718019', 'Moh.Adith Setiawan', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (168, 'I0718020', 'Mohammad Ravi Rachman', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (169, 'I0718021', 'MUHAMAD MIFTAHUS SURUR', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (170, 'I0718022', 'MUHAMMAD DIDIN KAMALUDIN', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (171, 'I0718023', 'MUHAMMAD GHOZY AL HAKIM', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (172, 'I0718024', 'Muhammad Ibnu Sina Abbas Parlin', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (173, 'I0718025', 'Nada Syadza Azizah', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (174, 'I0718026', 'Nadya Namirasepti Efendi', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (175, 'I0718027', 'Nur Udin Galang Ga', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (176, 'I0718028', 'OGA SRI LESTYANA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (177, 'I0718029', 'RAIHAN RAFIF KAUTSAR PRIYANTO', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (178, 'I0718030', 'RAMADHAN PRIHANTONO', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (179, 'I0718031', 'RIZAL MUJADDID IRSYAD', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (180, 'I0718032', 'ROIS HASAN MUHAMMAD', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (181, 'I0718033', 'RONI TAMADO', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (182, 'I0718034', 'SLASH ARTHUR EDI SUMAWANG', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (183, 'I0718035', 'Syaifullah Filard L', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (184, 'I0718036', 'SYAUQY MAULANAR RAHMAN', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (185, 'I0718037', 'TAUFIK WIDYASTAMA', 2018, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mahasiswa` VALUES (186, 'I07160000', 'Ini Nama ya ', 2019, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_mata_kuliah
-- ----------------------------
DROP TABLE IF EXISTS `ref_mata_kuliah`;
CREATE TABLE `ref_mata_kuliah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sks` smallint(6) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_mata_kuliah
-- ----------------------------
INSERT INTO `ref_mata_kuliah` VALUES (1, 'EE0101-19', 'Kalkulus I', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (2, 'EE0102-19', 'Fisika Dasar I', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (3, 'EE0103-19', 'Matematika Diskret dan Logika', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (4, 'EE0104-19', 'Aljabar Linear', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (5, 'EE0105-19', 'Kimia', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (6, 'EE0106-19', 'Filsafat Ilmu Pengetahuan', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (7, 'EE0107-19', 'Pemrograman Dasar dan Lab', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (8, 'EE0108-19', 'Orientasi Prodi', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (9, 'EE0201-19', 'Kalkulus II', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (10, 'EE0202-19', 'Fisika Dasar II', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (11, 'EE0203-19', 'Praktikum Fisika Dasar', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (12, 'EE0204-19', 'Probabilitas dan Statistika', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (13, 'EE0205-19', 'Rangkaian Listrik I', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (14, 'EE0206-19', 'Organisasi dan Arsitektur Komputer', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (15, 'EE0207-19', 'Teknik Digital', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (16, 'EE0208-19', 'Proyek Kreatif I', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (17, 'EE0209-19', 'Prak. Elektro Dasar I', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (18, 'EE0210-20', 'Prak. Teknik Digital', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (19, 'EE0301-19', 'Metode Numerik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (20, 'EE0302-19', 'Matematika Teknik I', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (21, 'EE0303-19', 'Medan Elektromagnetis', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (22, 'EE0304-19', 'Elektronika Dasar', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (23, 'EE0305-19', 'Rangkaian Listrik II', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (24, 'EE0306-19', 'Isyarat dan Sistem', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (25, 'EE0307-19', 'Mesin Listrik Dasar', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (26, 'EE0308-19', 'Proyek Kreatif II', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (27, 'EE0309-19', 'Prak. Elektro Dasar II', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (28, 'EE0401-19', 'Matematika Teknik II', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (29, 'EE0402-19', 'Instrumentasi', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (30, 'EE0403-19', 'Elektronika Analog', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (31, 'EE0404-19', 'Telekomunikasi Dasar', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (32, 'EE0405-19', 'Teknik Tenaga Listrik', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (33, 'EE0406-19', 'Sistem Kendali', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (34, 'EE0407-19', 'Sistem Mikroprosessor', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (35, 'EE0408-19', 'Proyek Kreatif III', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (36, 'EE0409-19', 'Prak. Elektronika', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (37, 'EE0410-19', 'Prak. Teknik Tenaga Listrik', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (38, 'EE0501-19', 'Jaringan Komunikasi Data', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (39, 'EE0502-19', 'Mekatronika', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (40, 'EE0503-19', 'Prak. Telekomunikasi Dasar', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (41, 'EE0504-19', 'Prak. Sistem Kendali', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (42, 'EE0505-19', 'Proyek Kreatif IV', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (43, 'EE0601-19', 'Kerja Praktek', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (44, 'EE0602-19', 'Energi Baru dan Terbarukan', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (45, 'EE0603-19', 'Pancasila', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (46, 'EE0604-19', 'Desain Capstone', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (47, 'EE0701-19', 'Seminar Proposal Skripsi', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (48, 'EE0702-19', 'Kecerdasan Buatan', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (49, 'EE0703-19', 'Agama dan Etika', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (50, 'EE0704-19', 'Kewarganegaraan', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (51, 'EE0705-19', 'Kewirausahaan', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (52, 'EE0706-19', 'Manajemen Industri', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (53, 'EE0801-19', 'Skripsi dan Pendadaran', 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (54, 'EE0802-19', 'Kuliah Kerja Nyata', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (55, 'EE1501-19', 'Pembangkitan Tenaga Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (56, 'EE1502-19', 'Transmisi dan Distribusi Tenaga Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (57, 'EE1503-19', 'Analisis Sistem Tenaga', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (58, 'EE1504-19', 'Mesin Listrik Lanjut', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (59, 'EE1505-19', 'Perlengkapan Sistem Tenaga', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (60, 'EE1601-19', 'Teknik Proteksi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (61, 'EE1602-19', 'Elektronika Daya', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (62, 'EE1603-19', 'Teknik Instalasi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (63, 'EE1604-19', 'Topik Pilihan Teknik Tenaga', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (64, 'EE2501-19', 'Sistem Otomasi dan PLC', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (65, 'EE2502-19', 'Teknik Robot', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (66, 'EE2503-19', 'Pnenumatik Hidrolik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (67, 'EE2504-19', 'Sistem Berbasis Mikroprosesor', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (68, 'EE2505-19', 'Teknik Kendali Lanjut', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (69, 'EE2601-19', 'Kendaraan Cerdas', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (70, 'EE2602-19', 'Kontrol Sistem Energi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (71, 'EE2603-19', 'Sistem Terintegrasi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (72, 'EE2604-19', 'Topik Pilihan Kontrol Mekatronika', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (73, 'EE3501-19', 'Antena dan Propagasi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (74, 'EE3502-19', 'Sistem Tertanam dan Periferal', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (75, 'EE3503-19', 'Pengolahan Isyarat Digital', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (76, 'EE3504-19', 'Algoritma dan Struktur Data', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (77, 'EE3505-19', 'Sistem Informasi', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (78, 'EE3601-19', 'Telekomunikasi Lanjut', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (79, 'EE3602-19', 'Perancangan Sistem Digital', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (80, 'EE3603-19', 'Pemrograman Lanjut', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (81, 'EE3604-19', 'Topik Pilihan Komputer dan Telekomunikasi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (82, 'EE4001-19', 'Operasi Sistem Tenaga Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (83, 'EE4002-19', 'Dinamika Dan Stabilitas Sistem Tenaga\n Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (84, 'EE4003-19', 'Perancangan Sistem Listrik Industri', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (85, 'EE4004-19', 'Keandalan Sistem Tenaga Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (86, 'EE4005-19', 'Smart Grid', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (87, 'EE4006-19', 'Teknologi Transportasi dan Kendaraan\n Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (88, 'EE4007-19', 'Kualitas Daya', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (89, 'EE4008-19', 'Pengolahan Citra', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (90, 'EE4009-19', 'Sistem berbasis IoT', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (91, 'EE4010-19', 'Big Data dan Analitik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (92, 'EE4011-19', 'Sistem Komunikasi Bergerak', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (93, 'EE4012-19', 'Sistem Komunikasi Satelit', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (94, 'EE4013-19', 'Remote Sensing', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (95, 'EE4014-19', 'MEMS', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (96, 'EE4015-19', 'Manajemen Proyek', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (97, 'EE4016-19', 'Manajemen Keselamatan dan Kesehatan\n Kerja', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (98, 'EE4017-19', 'Machine Learning', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (99, 'EE4018-19', 'Sistem Komunikasi Serat Optik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (100, 'EE4019-19', 'Piranti Mikro dan Nano', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (101, 'EE4020-19', 'Mikroelektronika', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (102, 'EE4021-19', 'Instrumentasi Biomedis', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (103, 'EE4022-19', 'Teknik Kontrol Adaptif', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (104, 'EE4023-19', 'Teknik Kendali Neuro-Fuzzy', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (105, 'EE4024-19', 'Teknik Kendali Digital', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (106, 'EE4025-19', 'Sistem Pendukung Keputusan', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (107, 'EE4026-19', 'Komputasi Cerdas dalam Sistem Tenaga\n Listrik', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (108, 'EE4027-19', 'Perancangan Pembangkit Energi Baru\n dan Terbarukan', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (109, 'EE4028-19', 'Pengembangan Aplikasi Mobile', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (110, 'EE4029-19', 'Perencanaan dan Manajemen Energi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (111, 'EE4030-19', 'Sistem Penyimpanan Energi', 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_mata_kuliah` VALUES (112, 'EE4031-19', 'Pemodelan Sistem', 3, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_tahun_ajaran
-- ----------------------------
DROP TABLE IF EXISTS `ref_tahun_ajaran`;
CREATE TABLE `ref_tahun_ajaran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_tahun_ajaran
-- ----------------------------
INSERT INTO `ref_tahun_ajaran` VALUES (1, '2014', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (2, '2015', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (3, '2016', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (4, '2017', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (5, '2018', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (6, '2019', 1, NULL, NULL, NULL, NULL);
INSERT INTO `ref_tahun_ajaran` VALUES (7, '2020', 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for relasi_cpmk_cpl
-- ----------------------------
DROP TABLE IF EXISTS `relasi_cpmk_cpl`;
CREATE TABLE `relasi_cpmk_cpl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ref_cpmk` int(11) NULL DEFAULT NULL,
  `id_ref_cpl` int(11) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `created_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_ref_cpmk`(`id_ref_cpmk`) USING BTREE,
  INDEX `id_ref_cpl`(`id_ref_cpl`) USING BTREE,
  CONSTRAINT `relasi_cpmk_cpl_ibfk_1` FOREIGN KEY (`id_ref_cpmk`) REFERENCES `ref_cpmk` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `relasi_cpmk_cpl_ibfk_2` FOREIGN KEY (`id_ref_cpl`) REFERENCES `ref_cpl` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 701 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relasi_cpmk_cpl
-- ----------------------------
INSERT INTO `relasi_cpmk_cpl` VALUES (1, 1, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (2, 2, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (3, 3, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (4, 4, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (5, 5, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (6, 6, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (7, 7, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (8, 8, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (9, 9, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (10, 10, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (11, 11, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (12, 12, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (13, 13, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (14, 14, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (15, 15, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (16, 16, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (17, 17, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (18, 18, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (19, 19, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (20, 20, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (21, 21, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (22, 22, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (23, 23, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (24, 24, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (25, 25, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (26, 25, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (27, 26, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (28, 27, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (29, 28, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (30, 29, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (31, 30, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (32, 31, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (33, 32, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (34, 33, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (35, 33, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (36, 34, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (37, 35, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (38, 35, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (39, 36, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (40, 37, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (41, 38, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (42, 39, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (43, 40, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (44, 41, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (45, 42, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (46, 43, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (47, 44, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (48, 45, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (49, 45, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (50, 46, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (51, 47, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (52, 47, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (53, 48, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (54, 49, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (55, 50, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (56, 51, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (57, 52, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (58, 53, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (59, 54, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (60, 55, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (61, 56, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (62, 57, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (63, 58, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (64, 59, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (65, 60, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (66, 61, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (67, 62, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (68, 63, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (69, 64, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (70, 65, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (71, 66, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (72, 67, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (73, 68, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (74, 69, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (75, 69, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (76, 70, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (77, 70, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (78, 71, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (79, 71, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (80, 72, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (81, 73, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (82, 74, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (83, 75, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (84, 76, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (85, 77, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (86, 75, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (87, 76, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (88, 77, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (89, 77, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (90, 78, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (91, 79, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (92, 80, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (93, 81, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (94, 82, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (95, 83, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (96, 84, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (97, 85, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (98, 86, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (99, 87, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (100, 88, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (101, 89, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (102, 90, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (103, 91, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (104, 92, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (105, 93, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (106, 94, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (107, 95, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (108, 95, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (109, 96, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (110, 97, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (111, 98, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (112, 99, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (113, 100, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (114, 101, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (115, 102, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (116, 103, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (117, 104, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (118, 105, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (119, 106, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (120, 107, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (121, 108, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (122, 109, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (123, 110, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (124, 111, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (125, 111, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (126, 112, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (127, 113, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (128, 114, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (129, 115, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (130, 115, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (131, 115, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (132, 116, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (133, 116, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (134, 117, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (135, 118, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (136, 118, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (137, 119, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (138, 120, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (139, 120, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (140, 121, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (141, 122, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (142, 123, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (143, 124, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (144, 125, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (145, 126, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (146, 127, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (147, 127, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (148, 128, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (149, 129, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (150, 130, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (151, 130, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (152, 131, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (153, 132, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (154, 133, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (155, 134, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (156, 135, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (157, 131, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (158, 132, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (159, 133, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (160, 134, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (161, 135, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (162, 136, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (163, 137, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (164, 138, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (165, 136, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (166, 137, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (167, 138, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (168, 139, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (169, 140, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (170, 139, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (171, 140, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (172, 139, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (173, 140, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (174, 141, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (175, 142, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (176, 143, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (177, 144, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (178, 144, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (179, 145, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (180, 146, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (181, 147, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (182, 148, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (183, 149, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (184, 150, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (185, 151, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (186, 152, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (187, 153, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (188, 154, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (189, 155, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (190, 156, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (191, 157, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (192, 158, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (193, 158, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (194, 159, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (195, 159, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (196, 160, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (197, 161, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (198, 162, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (199, 163, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (200, 163, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (201, 164, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (202, 165, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (203, 166, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (204, 165, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (205, 166, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (206, 167, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (207, 168, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (208, 168, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (209, 169, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (210, 170, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (211, 170, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (212, 170, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (213, 171, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (214, 171, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (215, 171, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (216, 172, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (217, 173, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (218, 174, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (219, 175, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (220, 176, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (221, 177, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (222, 178, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (223, 179, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (224, 178, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (225, 179, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (226, 180, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (227, 181, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (228, 182, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (229, 183, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (230, 182, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (231, 183, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (232, 184, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (233, 185, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (234, 185, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (235, 186, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (236, 187, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (237, 187, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (238, 188, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (239, 188, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (240, 189, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (241, 189, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (242, 190, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (243, 190, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (244, 190, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (245, 191, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (246, 192, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (247, 192, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (248, 193, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (249, 194, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (250, 195, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (251, 196, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (252, 197, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (253, 197, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (254, 198, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (255, 199, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (256, 200, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (259, 203, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (260, 203, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (261, 203, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (262, 203, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (263, 204, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (264, 204, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (265, 204, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (266, 205, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (267, 205, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (268, 205, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (269, 206, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (270, 207, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (271, 207, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (272, 208, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (273, 208, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (274, 208, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (275, 209, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (276, 210, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (277, 210, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (278, 211, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (279, 211, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (280, 211, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (281, 212, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (282, 213, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (283, 213, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (284, 214, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (285, 215, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (286, 216, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (287, 217, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (288, 218, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (289, 218, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (290, 219, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (291, 220, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (292, 221, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (293, 222, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (294, 223, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (295, 224, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (296, 225, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (297, 226, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (298, 226, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (299, 227, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (300, 227, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (301, 227, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (302, 228, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (303, 228, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (304, 229, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (305, 229, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (306, 230, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (307, 230, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (308, 230, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (309, 231, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (310, 231, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (311, 232, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (312, 232, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (313, 232, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (314, 233, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (315, 233, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (316, 234, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (317, 234, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (318, 235, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (319, 236, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (320, 237, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (321, 238, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (322, 239, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (323, 240, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (324, 241, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (325, 242, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (326, 243, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (327, 244, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (328, 245, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (329, 246, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (330, 247, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (331, 248, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (332, 249, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (333, 248, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (334, 249, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (335, 250, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (336, 250, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (337, 251, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (338, 252, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (339, 253, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (340, 254, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (341, 255, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (342, 256, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (343, 257, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (344, 257, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (345, 258, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (346, 259, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (347, 260, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (348, 261, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (349, 262, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (350, 263, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (351, 264, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (352, 265, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (353, 266, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (354, 266, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (355, 267, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (356, 268, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (357, 269, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (358, 270, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (359, 271, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (360, 272, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (361, 273, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (362, 274, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (363, 275, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (364, 276, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (365, 277, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (366, 278, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (367, 278, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (368, 279, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (369, 280, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (370, 281, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (371, 282, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (372, 283, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (373, 283, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (374, 284, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (375, 285, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (376, 286, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (377, 287, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (378, 288, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (379, 288, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (380, 289, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (381, 290, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (382, 291, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (383, 292, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (384, 293, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (385, 294, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (386, 295, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (387, 296, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (388, 297, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (389, 298, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (390, 298, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (391, 299, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (392, 300, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (393, 301, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (394, 301, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (395, 302, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (396, 303, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (397, 303, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (398, 304, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (399, 305, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (400, 306, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (401, 307, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (402, 308, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (403, 307, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (404, 308, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (405, 309, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (406, 310, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (407, 311, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (408, 312, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (409, 313, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (410, 313, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (411, 314, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (412, 315, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (413, 316, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (414, 316, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (415, 317, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (416, 318, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (417, 317, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (418, 318, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (419, 319, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (420, 319, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (421, 319, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (422, 320, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (423, 320, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (424, 320, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (425, 320, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (426, 321, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (427, 322, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (428, 323, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (429, 324, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (430, 325, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (431, 325, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (432, 326, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (433, 327, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (434, 328, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (435, 329, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (436, 330, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (437, 331, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (438, 332, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (439, 333, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (440, 334, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (441, 333, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (442, 334, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (443, 333, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (444, 334, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (445, 333, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (446, 334, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (447, 335, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (448, 336, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (449, 337, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (450, 338, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (451, 335, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (452, 336, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (453, 337, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (454, 338, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (455, 335, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (456, 336, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (457, 337, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (458, 338, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (459, 335, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (460, 336, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (461, 337, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (462, 338, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (463, 335, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (464, 336, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (465, 337, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (466, 338, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (467, 339, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (468, 340, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (469, 340, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (470, 341, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (471, 342, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (472, 342, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (473, 343, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (474, 344, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (475, 345, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (476, 346, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (477, 346, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (478, 347, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (479, 348, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (480, 349, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (481, 348, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (482, 349, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (483, 348, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (484, 349, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (485, 348, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (486, 349, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (487, 350, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (488, 351, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (489, 351, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (490, 351, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (491, 351, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (492, 352, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (493, 352, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (494, 352, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (495, 353, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (496, 354, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (497, 355, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (498, 354, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (499, 355, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (500, 356, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (501, 356, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (502, 357, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (503, 358, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (504, 359, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (505, 358, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (506, 359, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (507, 360, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (508, 361, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (509, 361, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (510, 362, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (511, 363, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (512, 363, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (513, 364, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (514, 365, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (515, 366, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (516, 367, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (517, 368, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (518, 369, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (519, 370, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (520, 371, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (521, 372, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (522, 373, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (523, 374, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (524, 375, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (525, 376, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (526, 377, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (527, 378, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (528, 379, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (529, 380, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (530, 381, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (531, 382, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (532, 383, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (533, 384, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (534, 385, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (535, 386, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (536, 383, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (537, 384, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (538, 385, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (539, 386, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (540, 387, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (541, 388, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (542, 389, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (543, 390, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (544, 390, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (545, 391, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (546, 392, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (547, 393, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (548, 394, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (549, 395, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (550, 391, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (551, 392, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (552, 393, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (553, 394, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (554, 395, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (555, 391, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (556, 392, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (557, 393, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (558, 394, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (559, 395, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (560, 391, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (561, 392, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (562, 393, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (563, 394, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (564, 395, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (565, 396, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (566, 397, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (567, 396, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (568, 397, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (569, 398, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (570, 398, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (571, 398, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (572, 399, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (573, 400, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (574, 400, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (575, 401, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (576, 402, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (577, 403, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (578, 404, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (579, 405, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (580, 406, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (581, 407, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (582, 407, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (583, 408, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (584, 409, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (585, 410, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (586, 411, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (587, 412, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (588, 413, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (589, 414, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (590, 415, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (591, 416, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (592, 416, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (593, 417, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (594, 418, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (595, 418, 9, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (596, 419, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (597, 420, 6, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (598, 421, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (599, 422, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (600, 423, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (601, 424, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (602, 423, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (603, 424, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (604, 425, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (605, 425, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (606, 426, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (607, 427, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (608, 427, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (609, 428, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (610, 429, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (611, 429, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (612, 430, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (613, 431, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (614, 431, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (615, 432, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (616, 432, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (617, 433, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (618, 434, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (619, 435, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (620, 436, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (621, 437, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (622, 438, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (623, 439, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (624, 440, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (625, 441, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (626, 442, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (627, 443, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (628, 444, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (629, 445, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (630, 446, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (631, 447, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (632, 447, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (633, 448, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (634, 449, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (635, 450, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (636, 451, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (637, 452, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (638, 452, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (639, 453, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (640, 454, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (641, 455, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (642, 456, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (643, 457, 3, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (644, 457, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (645, 458, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (646, 459, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (647, 459, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (648, 460, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (649, 460, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (650, 461, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (651, 461, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (652, 462, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (653, 463, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (654, 462, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (655, 463, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (656, 464, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (657, 465, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (658, 464, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (659, 465, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (660, 464, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (661, 465, 8, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (662, 466, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (663, 466, 10, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (664, 467, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (665, 468, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (666, 469, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (667, 470, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (668, 471, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (669, 472, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (670, 472, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (671, 472, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (672, 473, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (673, 474, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (674, 473, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (675, 474, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (676, 473, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (677, 474, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (678, 473, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (679, 474, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (681, 476, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (682, 477, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (683, 478, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (684, 477, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (685, 478, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (686, 479, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (687, 479, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (688, 480, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (689, 480, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (690, 481, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (691, 482, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (692, 483, 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (693, 482, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (694, 483, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (695, 484, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (696, 484, 7, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (697, 485, 5, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (698, 486, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (699, 487, 4, 1, NULL, NULL, NULL, NULL);
INSERT INTO `relasi_cpmk_cpl` VALUES (700, 487, 8, 1, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `password_reset_token`(`password_reset_token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'adip240499', '6bAkalGCgJL3EvH1Dj6BIJ7N_EGf5g2J', '$2y$13$Nnysx6xlMBB6rh69P/KYG.WJ6xSuBeNuAjjoGEIZQZwqVkiFEMzw2', NULL, 'adip240499@gmail.com', 10, 1578401709, 1578401709, 'XlH6T_IxDeWBfEipLS1FrYlfN9cfuWZV_1578401709');
INSERT INTO `user` VALUES (2, 'admin', 'EGs0VSjiAcivBE8KOhXYXThWiKtnOJnq', '$2y$13$usXLtX8wVTpEhiKuEtn/5.F/lPoTDwU13IWBz/wweF/jYhgftssgO', NULL, 'admin@gmail.com', 10, 1581402172, 1581402172, 'ngtCv-CIUvarOVYloutkbN0eRzc_dsiV_1581402172');

SET FOREIGN_KEY_CHECKS = 1;

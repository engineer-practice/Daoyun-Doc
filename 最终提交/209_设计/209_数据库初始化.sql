/*
 Navicat MySQL Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 120.77.220.113:3306
 Source Schema         : daoyun

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 29/06/2021 18:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attendence
-- ----------------------------
DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `end_time` datetime(6) NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL COMMENT '倒计时',
  `is_end` int(11) NULL DEFAULT NULL COMMENT '是否结束，1结束，0未结束',
  `longitude` double(255, 0) NULL DEFAULT NULL COMMENT '经度',
  `latitude` double(255, 0) NULL DEFAULT NULL COMMENT '纬度',
  `attendance_type` int(11) NULL DEFAULT NULL,
  `creater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `is_delete` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courseId`(`start_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendence
-- ----------------------------
INSERT INTO `attendence` VALUES (1, 11, '2021-06-17 21:50:34.000000', NULL, NULL, NULL, 100, 26, 0, '张先涌', '2021-06-17 21:50:34.000000', 1);
INSERT INTO `attendence` VALUES (2, 11, '2021-06-28 10:07:36.000000', NULL, NULL, NULL, 100, 67, 0, '张先涌', '2021-06-28 10:07:36.000000', 1);
INSERT INTO `attendence` VALUES (3, 11, '2021-06-28 02:53:44.000000', NULL, 60, NULL, 0, 0, 1, '张先涌', '2021-06-28 02:53:44.000000', 1);
INSERT INTO `attendence` VALUES (4, 11, '2021-06-28 02:54:08.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 02:54:08.000000', 1);
INSERT INTO `attendence` VALUES (5, 11, '2021-06-28 03:12:09.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:12:09.000000', 1);
INSERT INTO `attendence` VALUES (6, 11, '2021-06-28 03:12:15.000000', NULL, 60, NULL, 0, 0, 1, '张先涌', '2021-06-28 03:12:15.000000', 1);
INSERT INTO `attendence` VALUES (7, 11, '2021-06-28 03:13:47.000000', NULL, 60, NULL, 0, 0, 1, '张先涌', '2021-06-28 03:13:47.000000', 1);
INSERT INTO `attendence` VALUES (8, 11, '2021-06-28 03:20:44.000000', NULL, 60, NULL, 0, 0, 1, '张先涌', '2021-06-28 03:20:44.000000', 1);
INSERT INTO `attendence` VALUES (9, 11, '2021-06-28 03:21:06.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:21:06.000000', 1);
INSERT INTO `attendence` VALUES (10, 11, '2021-06-28 03:26:39.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:26:39.000000', 1);
INSERT INTO `attendence` VALUES (11, 11, '2021-06-28 03:28:15.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:28:15.000000', 1);
INSERT INTO `attendence` VALUES (12, 11, '2021-06-28 03:41:02.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:41:02.000000', 1);
INSERT INTO `attendence` VALUES (13, 11, '2021-06-28 03:41:40.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:41:40.000000', 1);
INSERT INTO `attendence` VALUES (14, 11, '2021-06-28 03:49:43.000000', NULL, 0, NULL, 0, 0, 0, '张先涌', '2021-06-28 03:49:43.000000', 1);
INSERT INTO `attendence` VALUES (15, 11, '2021-06-28 10:07:36.000000', NULL, NULL, NULL, 0, 0, 0, '张先涌', '2021-06-28 10:07:36.000000', 1);
INSERT INTO `attendence` VALUES (16, 11, '2021-06-28 10:07:36.000000', NULL, NULL, NULL, 0, 0, 0, '张先涌', '2021-06-28 10:07:36.000000', 0);
INSERT INTO `attendence` VALUES (17, 14, '2021-06-28 11:59:29.000000', NULL, 0, NULL, 0, 0, 0, '先涌66', '2021-06-28 11:59:29.000000', 1);
INSERT INTO `attendence` VALUES (18, 14, '2021-06-28 11:59:51.000000', NULL, 60, NULL, 0, 0, 1, '先涌66', '2021-06-28 11:59:51.000000', 1);
INSERT INTO `attendence` VALUES (19, 15, '2021-06-28 12:18:36.000000', NULL, 60, NULL, 0, 0, 1, '先涌66', '2021-06-28 12:18:36.000000', 1);
INSERT INTO `attendence` VALUES (20, 15, '2021-06-29 00:53:08.000000', NULL, 0, NULL, 0, 0, 0, '先涌66', '2021-06-29 00:53:08.000000', 1);
INSERT INTO `attendence` VALUES (21, 18, '2021-06-29 01:06:49.000000', NULL, 0, NULL, 0, 0, 0, '先涌77', '2021-06-29 01:06:49.000000', 1);
INSERT INTO `attendence` VALUES (22, 18, '2021-06-29 01:07:09.000000', NULL, 0, NULL, 0, 0, 0, '先涌77', '2021-06-29 01:07:09.000000', 1);
INSERT INTO `attendence` VALUES (23, 18, '2021-06-29 01:07:49.000000', NULL, 60, NULL, 0, 0, 1, '先涌77', '2021-06-29 01:07:49.000000', 1);
INSERT INTO `attendence` VALUES (24, 18, '2021-06-29 01:10:25.000000', NULL, 60, NULL, 0, 0, 1, '先涌77', '2021-06-29 01:10:25.000000', 1);
INSERT INTO `attendence` VALUES (25, 18, '2021-06-29 01:11:00.000000', NULL, 60, NULL, 0, 0, 1, '先涌77', '2021-06-29 01:11:00.000000', 1);
INSERT INTO `attendence` VALUES (26, 18, '2021-06-29 09:59:46.000000', NULL, 0, NULL, 119, 26, 0, '张先涌', '2021-06-29 09:59:46.000000', 1);
INSERT INTO `attendence` VALUES (27, 18, '2021-06-29 10:02:16.000000', NULL, 60, NULL, 119, 26, 1, '张先涌', '2021-06-29 10:02:16.000000', 1);
INSERT INTO `attendence` VALUES (28, 18, '2021-06-29 10:55:47.000000', NULL, 0, NULL, 119, 26, 0, '张先涌', '2021-06-29 10:55:47.000000', 1);
INSERT INTO `attendence` VALUES (29, 18, '2021-06-29 10:59:06.000000', NULL, 0, NULL, 119, 26, 0, '张先涌', '2021-06-29 10:59:06.000000', 1);
INSERT INTO `attendence` VALUES (30, 18, '2021-06-29 11:10:25.000000', NULL, 60, NULL, 119, 26, 1, '张先涌', '2021-06-29 11:10:25.000000', 1);
INSERT INTO `attendence` VALUES (31, 15, '2021-06-29 13:42:32.000000', NULL, 0, NULL, 119, 26, 0, '张先涌', '2021-06-29 13:42:32.000000', 1);
INSERT INTO `attendence` VALUES (32, 15, '2021-06-29 13:42:41.000000', NULL, 60, NULL, 119, 26, 1, '张先涌', '2021-06-29 13:42:41.000000', 1);
INSERT INTO `attendence` VALUES (33, 21, '2021-06-29 15:04:06.000000', NULL, 0, NULL, 119, 26, 0, 'teacher', '2021-06-29 15:04:06.000000', 1);
INSERT INTO `attendence` VALUES (34, 21, '2021-06-29 15:52:44.000000', NULL, 60, NULL, 119, 26, 1, 'teacher', '2021-06-29 15:52:44.000000', 1);
INSERT INTO `attendence` VALUES (35, 21, '2021-06-29 15:53:19.000000', NULL, 0, NULL, 119, 26, 0, 'teacher', '2021-06-29 15:53:19.000000', 1);
INSERT INTO `attendence` VALUES (36, 21, '2021-06-29 15:54:21.000000', NULL, 60, NULL, 119, 26, 1, 'teacher', '2021-06-29 15:54:21.000000', 1);
INSERT INTO `attendence` VALUES (37, 21, '2021-06-29 16:12:40.000000', NULL, 60, NULL, 119, 26, 1, 'teacher', '2021-06-29 16:12:40.000000', 1);

-- ----------------------------
-- Table structure for attendence_result
-- ----------------------------
DROP TABLE IF EXISTS `attendence_result`;
CREATE TABLE `attendence_result`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NULL DEFAULT NULL,
  `attend_time` datetime(6) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `attend_id` int(11) NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `distance` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendence_result
-- ----------------------------
INSERT INTO `attendence_result` VALUES (1, 24, NULL, 1, 11, NULL, '123.6', '66.6', 140);
INSERT INTO `attendence_result` VALUES (2, 24, '2021-06-28 11:28:35.000000', 0, 11, 11, '0.0', '0.0', 0);
INSERT INTO `attendence_result` VALUES (3, 24, '2021-06-28 11:28:35.000000', 0, 11, 12, '0.0', '0.0', 0);
INSERT INTO `attendence_result` VALUES (4, 24, NULL, 1, 11, NULL, '200.0', '110.0', 228);
INSERT INTO `attendence_result` VALUES (5, 24, NULL, 1, 11, NULL, '200.0', '110.0', 228);
INSERT INTO `attendence_result` VALUES (6, 24, '2021-06-28 11:28:35.000000', 0, 11, 13, '0.0', '0.0', 0);
INSERT INTO `attendence_result` VALUES (7, 24, '2021-06-28 04:00:02.000000', 0, 11, 15, '0.0', '0.0', 0);
INSERT INTO `attendence_result` VALUES (8, 24, '2021-06-28 04:12:23.000000', 0, 11, 16, '0.0', '0.0', 0);
INSERT INTO `attendence_result` VALUES (9, 24, '2021-06-29 10:00:15.000000', 0, 18, 26, '119.1959942', '26.06509714', 0);
INSERT INTO `attendence_result` VALUES (10, 25, '2021-06-29 10:02:38.000000', 0, 18, 27, '119.1959942', '26.06509714', 0);
INSERT INTO `attendence_result` VALUES (11, 24, '2021-06-29 10:59:31.000000', 0, 18, 29, '119.1959942', '26.06509714', 0);
INSERT INTO `attendence_result` VALUES (12, 24, NULL, 1, 21, NULL, '0.0', '0.0', 122);
INSERT INTO `attendence_result` VALUES (13, 24, NULL, 1, 21, NULL, '0.0', '0.0', 122);
INSERT INTO `attendence_result` VALUES (14, 24, NULL, 1, 21, NULL, '0.0', '0.0', 122);
INSERT INTO `attendence_result` VALUES (15, 25, NULL, 1, 21, NULL, '0.0', '0.0', 122);
INSERT INTO `attendence_result` VALUES (16, 24, '2021-06-29 15:52:30.000000', 0, 21, 34, '120.0', '26.0', 1);
INSERT INTO `attendence_result` VALUES (17, 24, '2021-06-29 15:52:30.000000', 0, 21, 35, '120.0', '26.0', 1);
INSERT INTO `attendence_result` VALUES (18, 25, '2021-06-29 15:53:30.000000', 0, 21, 35, '120.0', '26.0', 1);
INSERT INTO `attendence_result` VALUES (19, 25, '2021-06-29 15:53:30.000000', 0, 21, 36, '120.0', '26.0', 1);
INSERT INTO `attendence_result` VALUES (20, 24, '2021-06-29 15:53:30.000000', 0, 21, 36, '120.0', '26.0', 1);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班课名（课程）',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班课号',
  `className` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学期',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班课封面',
  `learnRequire` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学习要求',
  `teachProgress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教学进度',
  `examSchedule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考试安排',
  `school_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校和院系（外键，连接school表）',
  `flag` int(11) NOT NULL COMMENT '是否学校课表班课（0表示是，1表示否）',
  `student_id` int(11) NULL DEFAULT NULL COMMENT '班课创建者',
  `activityId` int(11) NULL DEFAULT NULL COMMENT '活动，链接活动表',
  `messageId` int(11) NULL DEFAULT NULL COMMENT '消息，链接消息表',
  `isJoin` int(11) NOT NULL COMMENT '是否可以加入班课，默认可以，0可以，1不可以',
  `isDelete` int(11) NOT NULL COMMENT '0表示未删除，1表示删除',
  `teacher_id` int(11) NULL DEFAULT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `schoolId`(`school_code`) USING BTREE,
  INDEX `activityId`(`activityId`) USING BTREE,
  INDEX `messageId`(`messageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (4, '机器学习', '8583603', '', '', NULL, '', '', '0', '1', 0, NULL, NULL, NULL, 0, 1, 13, NULL);
INSERT INTO `course` VALUES (5, 'JAVA', '2968661', '一班', '上', NULL, '', '', '', '', 0, NULL, NULL, NULL, 1, 1, 13, NULL);
INSERT INTO `course` VALUES (6, '高级机器学习', '3818536', '一班', '', NULL, '', '', '', '11', 0, NULL, NULL, NULL, 1, 1, 13, NULL);
INSERT INTO `course` VALUES (7, '数据结构', '7537629', '二班', '', NULL, '', '', '', '', 0, NULL, NULL, NULL, 1, 1, 13, NULL);
INSERT INTO `course` VALUES (8, '数据结构', '3902108', '三班', '', NULL, ' ', ' ', ' ', ' ', 0, NULL, NULL, NULL, 0, 1, 17, NULL);
INSERT INTO `course` VALUES (11, '算法', '2437641', '', '', NULL, '', '', '', '10001', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (12, '测试', '7957995', '', '', NULL, '', '', '', '10001', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (13, 'BigData', '2268525', 'class 3', '2020-2021-2', NULL, '501', '', '', '10001', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (14, 'Data', '3237870', 'class 1 ', '2020-2021-2', NULL, '401', '', '', '10003', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (15, 'Basic Algorithm', '6344193', 'class 2', '2020-2021-1', NULL, '301', '', '', '100010', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (16, 'DL', '5439681', 'class 1', '2020-2021-2', NULL, '201', '', '', '100005', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (17, 'ML', '4449637', 'class 2', '2020-2021-2', NULL, '502', '', '', '10003', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (18, 'data struct', '8374505', 'class 2', '2020-2021-2', NULL, '501', '', '', '10002', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (19, '人工智能', '5944479', '专硕3班', '2020-2021-2', NULL, '数计2号楼305', '', '', '10001', 0, NULL, NULL, NULL, 1, 0, 26, NULL);
INSERT INTO `course` VALUES (20, '最后的测试', '2357532', '专硕3班', '2020-2021-2', NULL, '东3—103', '', '', '10001', 0, NULL, NULL, NULL, 1, 1, 26, NULL);
INSERT INTO `course` VALUES (21, '工程实践', '6252092', '专硕2班', '2020-2021-2', NULL, '数计305', '', '', '10001', 0, NULL, NULL, NULL, 1, 0, 23, NULL);

-- ----------------------------
-- Table structure for course_manage
-- ----------------------------
DROP TABLE IF EXISTS `course_manage`;
CREATE TABLE `course_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(6) NULL DEFAULT NULL,
  `is_deleted` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_manage
-- ----------------------------
INSERT INTO `course_manage` VALUES (1, '数据结构', 2, '1', 'teacher', '2021-04-04 09:28:35.000000', 0);
INSERT INTO `course_manage` VALUES (2, 'java', 1, '1', 'teacher', '2021-04-04 09:47:20.000000', 0);
INSERT INTO `course_manage` VALUES (3, 'c++', 1, '1', 'teacher', '2021-04-04 13:50:29.000000', 0);

-- ----------------------------
-- Table structure for course_student
-- ----------------------------
DROP TABLE IF EXISTS `course_student`;
CREATE TABLE `course_student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exp` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_id`(`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_student
-- ----------------------------
INSERT INTO `course_student` VALUES (5, 8, '13', 0, 1);
INSERT INTO `course_student` VALUES (6, 5, '26', 0, 1);
INSERT INTO `course_student` VALUES (7, 8, '26', 0, 1);
INSERT INTO `course_student` VALUES (8, 11, '22', 0, 1);
INSERT INTO `course_student` VALUES (9, 11, '24', 0, 1);
INSERT INTO `course_student` VALUES (10, 14, '24', 0, 1);
INSERT INTO `course_student` VALUES (11, 14, '25', 0, 1);
INSERT INTO `course_student` VALUES (12, 15, '24', 0, 1);
INSERT INTO `course_student` VALUES (13, 6, '26', 0, 1);
INSERT INTO `course_student` VALUES (14, 18, '24', 0, 1);
INSERT INTO `course_student` VALUES (15, 18, '25', 2, 1);
INSERT INTO `course_student` VALUES (16, 5, '26', 0, 1);
INSERT INTO `course_student` VALUES (17, 5, '26', 0, 1);
INSERT INTO `course_student` VALUES (18, 21, '24', 6, 0);
INSERT INTO `course_student` VALUES (19, 21, '25', 4, 0);

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex', '性别', 1, '性别');
INSERT INTO `dictionary` VALUES (2, 'school', '学校', 0, '2');
INSERT INTO `dictionary` VALUES (3, 'sad', '傻屌', 1, '大');
INSERT INTO `dictionary` VALUES (4, 'df', '丹丹', 1, '觉得赛道');
INSERT INTO `dictionary` VALUES (5, 'jda', '阿萨德', 1, '打算');
INSERT INTO `dictionary` VALUES (6, 'jsad', '打算', 1, '阿斯加德');
INSERT INTO `dictionary` VALUES (7, 'wqe', '萨达', 1, '可看到');
INSERT INTO `dictionary` VALUES (8, 'sa', '阿萨德', 1, '伟大');
INSERT INTO `dictionary` VALUES (9, 'djsa', '爱仕达', 1, '看看老师打');
INSERT INTO `dictionary` VALUES (10, 'asdj', '撒', 1, '爱仕达看见了');
INSERT INTO `dictionary` VALUES (11, 'sad', '第三方', 1, '爱仕达骷髅精灵');
INSERT INTO `dictionary` VALUES (12, 'vsc', '大立科技', 1, '阿斯加德');
INSERT INTO `dictionary` VALUES (13, 'sex', '性别', 1, ' ');
INSERT INTO `dictionary` VALUES (14, 'asdgfasd', 'asgasdg', 1, ' ');
INSERT INTO `dictionary` VALUES (15, 'wafasda', 'ahgsadfhsdf', 1, ' ');
INSERT INTO `dictionary` VALUES (16, 'jgjfg', 'werwe', 1, ' ');
INSERT INTO `dictionary` VALUES (17, 'dhdfgg', 'xcxvx', 0, ' ');
INSERT INTO `dictionary` VALUES (18, '测试', 'test', 0, ' ');
INSERT INTO `dictionary` VALUES (19, '测试1', 'test1', 0, ' ');
INSERT INTO `dictionary` VALUES (20, 'sex', '性别', 0, ' ');
INSERT INTO `dictionary` VALUES (21, 'test2', 'test2', 1, ' ');

-- ----------------------------
-- Table structure for dictionary_detail
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_detail`;
CREATE TABLE `dictionary_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_default` int(11) NULL DEFAULT NULL,
  `dict_order` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_code`(`type_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary_detail
-- ----------------------------
INSERT INTO `dictionary_detail` VALUES (1, '1', 'sex', '男', '1', 1, 0, 1);
INSERT INTO `dictionary_detail` VALUES (2, '0', 'sex', '女', '0', 0, 0, 1);
INSERT INTO `dictionary_detail` VALUES (3, '0', '测试1', 'ahdsa', '0', 0, 0, 0);
INSERT INTO `dictionary_detail` VALUES (4, '0', 'sex', '男', '0', 1, 0, 0);
INSERT INTO `dictionary_detail` VALUES (5, '1', 'sex', '女', '1', 0, 0, 0);
INSERT INTO `dictionary_detail` VALUES (6, '2', 'sex', '未知', '2', 0, 0, 0);
INSERT INTO `dictionary_detail` VALUES (7, '1', '测试1', 'afgasdf', '1', 0, 0, 0);
INSERT INTO `dictionary_detail` VALUES (8, '0', 'test2', '测试1', '0', 1, 0, 1);
INSERT INTO `dictionary_detail` VALUES (9, '2', 'test2', '测试2', '2', 0, 0, 1);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menu_order` int(11) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '类型(1:菜单2:按钮)',
  `is_menu` int(11) NULL DEFAULT NULL,
  `is_visible` int(11) NULL DEFAULT NULL,
  `is_page` int(11) NULL DEFAULT NULL,
  `is_deleted` int(11) NULL DEFAULT NULL,
  `menu_level` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '角色管理', 1, '', '/roleManage', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (2, 0, '用户管理', 3, 'fhkd', '/userManage', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (3, 0, '数据字典管理', 2, 'sys', '/dataDictionary', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (4, 0, '菜单管理', 4, NULL, '/menuManage', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (5, 0, '系统参数管理', 5, NULL, '/systemManage', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (6, 0, '学校管理', 6, NULL, '/schoolManage', 1, 1, 1, 1, 0, 1);
INSERT INTO `menu` VALUES (7, 0, '班课管理', 7, NULL, '/courseManage', 1, 1, 1, 1, 0, 1);

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power`  (
  `id` int(255) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父节点，表内自查。0表示无上一级权限，如用户，菜单，班课管理。',
  `isDelete` int(11) NULL DEFAULT NULL COMMENT '0表示未删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `is_student` int(11) NULL DEFAULT NULL COMMENT '0表示不是学生，1表示是学生',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `power_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限，中间用/分开，连接权限表',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态（0表示正常，1表示禁用）',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '0表示未删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_ibfk_1`(`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'superadmin', 0, '超级管理员', '2,9,10', 1, 0);
INSERT INTO `role` VALUES (2, 'teacher', 0, '教师', '0', 1, 0);
INSERT INTO `role` VALUES (3, 'student', 1, '学生', '0', 1, 0);
INSERT INTO `role` VALUES (4, 'admin', 0, '管理员', '0', 1, 0);

-- ----------------------------
-- Table structure for role_power
-- ----------------------------
DROP TABLE IF EXISTS `role_power`;
CREATE TABLE `role_power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `power_id` int(11) NULL DEFAULT NULL,
  `id_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_power
-- ----------------------------
INSERT INTO `role_power` VALUES (1, 1, 1, 0);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学院或学校名称',
  `parent_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表示学院属于哪个学校。如果为0表示是学校',
  `is_delete` int(11) NOT NULL COMMENT '0表示未删除，1表示删除',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '福州大学', '0', 0, '1000');
INSERT INTO `school` VALUES (2, '数学与计算机学院', '1', 0, '10001');
INSERT INTO `school` VALUES (3, '物理与信息学院', '1', 0, '10002');
INSERT INTO `school` VALUES (4, '土木工程学院', '1', 0, '10003');
INSERT INTO `school` VALUES (5, '外国语学院', '1', 0, '100010');
INSERT INTO `school` VALUES (6, '福建江夏学院', '0', 0, '2000');
INSERT INTO `school` VALUES (7, '计算机学院', '6', 0, '20001');
INSERT INTO `school` VALUES (8, '马克思学院', '1', 0, '10005');
INSERT INTO `school` VALUES (9, '梅努斯学院', '1', 0, '10004');
INSERT INTO `school` VALUES (10, '法学院', '1', 0, '10006');
INSERT INTO `school` VALUES (11, '土木工程学院', '6', 0, '20002');
INSERT INTO `school` VALUES (12, '物理与信息学院', '6', 0, '20003');

-- ----------------------------
-- Table structure for system_manage
-- ----------------------------
DROP TABLE IF EXISTS `system_manage`;
CREATE TABLE `system_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `para_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_value` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_manage
-- ----------------------------
INSERT INTO `system_manage` VALUES (17, '签到经验', 'experience', 2, 0);
INSERT INTO `system_manage` VALUES (18, '签到距离', 'distance', 100, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别（0表示男，1表示女）',
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱\r\n邮箱',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `birth` int(11) NULL DEFAULT NULL COMMENT '出生年份',
  `role_id` int(11) NOT NULL COMMENT '角色，外键，连接角色表',
  `exp` int(11) NOT NULL COMMENT '经验值',
  `state` int(11) NOT NULL COMMENT '状态（0表示正常，1表示禁用）',
  `school_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校和院系（外键，连接school表）',
  `power_id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限，中间用/分开，连接权限表',
  `education` int(11) NOT NULL COMMENT '学历，0表示高中、1表示大学本科、2表示大学专科、3表示硕士、4表示博士',
  `is_delete` int(11) NOT NULL COMMENT '0表示未删除，1表示删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`role_id`) USING BTREE,
  INDEX `schoolId`(`school_code`) USING BTREE,
  INDEX `powerId`(`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (13, 'MGGG', '0', '0', '200327105', 0, '13385989351', '791937916@qq.com', 'ym12345', 0, 0, 0, 0, '10001', '0', 0, 1);
INSERT INTO `user` VALUES (16, '1', '0', '0', '200327104', 0, '0', '1768388995@qq.com', 'daling,11', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (17, '宁', '0', '0', '200327106', 0, '13338233633', '136342916@qq.com', '123456', 0, 1, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (18, 'yang', '1', '0', '200327111', 0, '0', '791937918@qq.com', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (19, '0', '2', '1', '0', 0, '0', '123', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (20, 'string', '0', '0', '0', 0, '0', '1234@qq.com', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (21, '测试', '0', '0', '0', 0, '0', '111', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (22, 'admin', '0', '0', '0', 0, '15900000001', '0', '123456', 0, 2, 0, 0, '0', '0', 0, 0);
INSERT INTO `user` VALUES (23, 'teacher', '标哥', '0', '200327999', 0, '15900000002', '0', '123456', 19980117, 1, 0, 0, '10001', '0', 0, 0);
INSERT INTO `user` VALUES (24, 'student1', '小绿', '0', '200327666', 0, '15900000003', '0', '123456', 199980117, 0, 20, 0, '10004', '0', 0, 0);
INSERT INTO `user` VALUES (25, 'student2', '小红', '0', '200327888', 1, '15900000004', '0', '123456', 19980123, 0, 6, 0, '100010', '0', 0, 0);
INSERT INTO `user` VALUES (26, '张先涌', '仙咏', '0', '200327155', 0, '18760372609', '0', '1235789', 19980117, 1, 23, 0, '10003', '0', 0, 1);
INSERT INTO `user` VALUES (27, '123', '0', '0', '0', 1, '0', '136342913@qq.com', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (28, 'ceshi', '0', '0', '0', 1, '13385989333', '0', '123', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (29, '测试小号', '0', '0', '0', 1, '', '0', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (30, '测试小号', '0', '0', '0', 1, '14543566666', '0', '123456', 0, 0, 0, 0, '0', '0', 0, 1);
INSERT INTO `user` VALUES (31, '林高升', '0', '0', '0', 1, '17859918979', '0', '123456', 0, 1, 0, 0, '0', '0', 0, 1);

-- ----------------------------
-- Table structure for user_auths
-- ----------------------------
DROP TABLE IF EXISTS `user_auths`;
CREATE TABLE `user_auths`  (
  `id` int(255) NOT NULL,
  `user_id` int(255) NULL DEFAULT NULL,
  `identity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录类型',
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标识',
  `credential` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '令牌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `is_delete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

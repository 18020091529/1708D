/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : bawei

Target Server Type    : MYSQL
Target Server Version : 50099
File Encoding         : 65001

Date: 2019-10-15 13:42:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`title`  varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`summary`  varchar(144) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`picture`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`hits`  int(11) NULL DEFAULT NULL ,
`hot`  bit(1) NULL DEFAULT NULL ,
`status`  int(11) NULL DEFAULT NULL ,
`deleted`  bit(1) NULL DEFAULT NULL ,
`created`  datetime NULL DEFAULT NULL ,
`updated`  datetime NULL DEFAULT NULL ,
`channel_id`  int(11) NULL DEFAULT NULL ,
`category_id`  int(11) NULL DEFAULT NULL ,
`user_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=48 */

;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
BEGIN;
INSERT INTO cms_article VALUES ('1', '惊人的大数据画像', '大数据，一直被认为是互联网公司的金矿', '<p>大数据，一直被认为是互联网公司的金矿，其多次利用潜力深不可测。所以基于市场调研或收集的相关数据，通过科学论断分析后，其显示出来的惊人画像有时准确的让人害怕。</p>', '/upload/2afd6aca2c4147d0b34c31184c67569d.jpg', '96', '', '1', '', '2019-04-10 23:32:21', '2019-04-23 23:32:24', '1', '2', '1'), ('2', 'java', 'java ', 'java', null, '22', '', '1', '', '2019-04-16 13:59:33', '2019-04-16 13:59:36', '1', '1', '1'), ('3', '阿斯顿发生发达', 'mysqlsadfasf', '士大夫撒旦', null, '331', '', '0', '', '2019-04-16 14:00:05', '2019-04-16 14:00:11', '2', '5', '1'), ('4', 'js', 'js', 'js', null, '3', '', '1', '', '2019-04-09 14:00:34', '2019-04-16 14:00:37', '1', '3', '1'), ('5', null, '撒旦法', 'sdf', null, '3', null, '0', '', null, null, '1', '3', '1'), ('6', null, 'sdf', '师傅', null, '3', null, null, '', null, null, '1', '3', '1'), ('8', '中美之战', '厉害', '关于华为', '/upload/haha.jpg', '2', '', '1', '', '2019-05-27 14:53:40', null, null, null, '2'), ('14', 'SUV', 'bbb', 'aaa', '/upload/haha.jpg', '1', '', '1', '', '2019-05-28 13:32:43', null, '4', '14', '2'), ('15', '姚明', '牛X', '要命', '/upload/haha.jpg', '3', '', '1', '', '2019-05-28 13:38:50', null, '5', '17', '3'), ('16', 'ccc', 'eee', 'ddd', '/upload/haha.jpg', '3', '', '1', '', '2019-05-28 13:42:43', null, '3', '10', '3'), ('17', '111', '333', '222', '/upload/haha.jpg', '4', '', '1', '', '2019-05-28 13:45:19', null, '3', '10', '2'), ('21', '汽车报道', '关于汽车', '首先请求参数的格式一定的要求，老的方式是<a href=\"demo8?name=张三&age=23\">跳转</a>，\r\n\r\n而restful格式是：<a href=\"demo8/123/abc\">跳转</a>\r\n\r\n在控制器中：\r\n\r\n 在@RequestMapping 中一定要和请求格式对应\r\n {名称} 中名称自定义名称\r\n @PathVariable 获取@RequestMapping 中内容,默认按照方法参数名称去寻找.\r\n\r\n\r\n@RequestMapping(\"demo8/{id1}/{name}\")\r\npublic String demo8(@PathVariable String  name,@PathVariable(\"id1\") int age){\r\n　　System.out.println(name +\" \"+age);\r\n　　return \"/main.jsp\";\r\n}', '/upload/2.jpg', '52', '', '1', '', '2019-05-29 16:41:12', null, '4', '14', '2'), ('22', '', '', '', '/upload/', '45', '', '1', '', '2019-05-30 16:19:55', null, '1', '2', '1'), ('23', '', '', '', '/upload/', '5', '', '1', '', '2019-05-30 16:20:03', null, '1', '2', '1'), ('24', '1212121', '43432432', '3432432', '/upload/2.jpg', '5', '', '1', '', '2019-05-30 16:37:21', null, '3', '11', '1'), ('25', null, null, 'fsdfsdfsdffdsfdsfsd', null, null, null, null, null, null, null, null, null, null), ('27', '13rrrew', 'tretre', 'tretret', '/upload/2.jpg', '4', '', '1', '', '2019-05-30 16:42:54', null, '1', '2', '1'), ('28', '111111', '333', '222222', '/upload/2.jpg', '4', '', '1', '', '2019-05-30 16:47:27', null, '1', '2', '1'), ('29', 'ggggg', 'ddd', 'cccc', '/upload/2.jpg', '5', '', '1', '', '2019-05-30 16:51:41', null, '1', '2', '1'), ('30', '旅游', '222', '111', '/upload/2.jpg', '3', '', '1', '', '2019-05-30 23:48:24', null, '5', '18', '1'), ('31', '游戏', '222', '111', '/upload/2.jpg', '1', '', '1', '', '2019-05-30 23:49:16', null, '2', '1', '1'), ('32', '周考', '222', '111', '/upload/2.jpg', '0', '', '1', '', '2019-05-30 23:52:27', null, '5', '19', '1'), ('33', '徒步111', '333', '222', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 00:01:58', null, '7', '26', '1'), ('34', 'ccc', '32323', '232323', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 00:05:39', null, '5', '20', '1'), ('35', 'aaaccc', '22', '111', '/upload/2.jpg', '5', '', '1', '', '2019-05-31 00:08:17', null, '5', '19', '1'), ('36', '而额外人', '222', '1111', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 09:26:26', null, '3', '10', '1'), ('37', 'gfdgfdgfd', 'ertretreter', 'hgfhgfhgfhgfhgf', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 09:29:00', null, '7', '26', '1'), ('38', '各个国家', '可以', '很多', '/upload/2.jpg', '12', '', '1', '', '2019-05-31 09:31:31', null, '3', '10', '1'), ('39', '1212', '43432', '23243', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 11:24:39', null, '1', '2', '1'), ('40', 'tetre', 'etretre', 'tret', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 11:25:09', null, '1', '2', '1'), ('41', 'd11', '4343', '2323', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 11:25:40', null, '1', '2', '1'), ('42', 'fghgfhgf', 'hghgh', 'hgfhgfh', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 14:13:51', null, '5', '20', '1'), ('43', 'b', 'eer', 'erer', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 14:21:47', null, '1', '2', null), ('44', 'bc', '222', '1111', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 14:22:24', null, '2', '1', '1'), ('45', 'b', 'gfdg', 'fdsfds', '/upload/2.jpg', '0', '', '1', '', '2019-05-31 14:24:06', null, '1', '2', '1'), ('46', '111', '333', '222', '/upload/2.jpg', '1', '', '1', '', '2019-05-31 14:27:17', null, '3', '10', '1'), ('47', '汽车', '他热帖热帖', '高浮雕高浮雕高浮雕', '/upload/2.jpg', '2', '', '1', '', '2019-05-31 14:34:16', null, '4', '13', '2');
COMMIT;

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sorted`  int(11) NULL DEFAULT NULL ,
`channel_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=29 */

;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
BEGIN;
INSERT INTO cms_category VALUES ('1', '互联网', '0', '2'), ('2', '软件', '1', '1'), ('3', '智能家居', '2', '1'), ('4', '虚拟货币', '0', '2'), ('5', '股票', '1', '2'), ('6', '外汇', '2', '2'), ('7', '黄金', '3', '2'), ('8', '宏观经济', '4', '2'), ('9', '美国', '0', '3'), ('10', '亚洲', '1', '3'), ('11', '欧洲', '2', '3'), ('12', '非洲', '3', '3'), ('13', '新车', '0', '4'), ('14', 'SUV', '1', '4'), ('15', '汽车导购', '2', '4'), ('16', '用车', '3', '4'), ('17', 'NBA', '0', '5'), ('18', 'CBA', '1', '5'), ('19', '中超', '2', '5'), ('20', '意甲', '3', '5'), ('21', '电影', '0', '6'), ('22', '电视剧', '1', '6'), ('23', '综艺', '2', '6'), ('24', '明星八卦', '3', '6'), ('25', '段子', '0', '7'), ('26', '爆笑节目', '1', '7'), ('27', '童趣萌宠', '2', '7'), ('28', '雷人囧事', '3', '7');
COMMIT;

-- ----------------------------
-- Table structure for `cms_channel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`description`  varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`icon`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`sorted`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=8 */

;

-- ----------------------------
-- Records of cms_channel
-- ----------------------------
BEGIN;
INSERT INTO cms_channel VALUES ('1', '科技', null, null, '0'), ('2', '财经', null, null, '1'), ('3', '国际', null, null, '2'), ('4', '汽车', null, null, '3'), ('5', '体育', null, null, '4'), ('6', '娱乐', null, null, '5'), ('7', '搞笑', null, null, '6');
COMMIT;

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`content`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`blog_id`  int(11) NULL DEFAULT NULL ,
`displayTime`  datetime NULL DEFAULT NULL ,
`user_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=34 */

;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
BEGIN;
INSERT INTO cms_comment VALUES ('7', 'aaaaaaaaa', '2', '2019-04-28 13:38:14', '1'), ('8', 'sdfsdfa', '2', '2019-04-28 13:57:43', '1'), ('11', 'asfdaf', '2', '2019-04-28 15:17:34', '1'), ('12', 'asfaf', '2', '2019-04-28 15:17:42', '1'), ('13', 'sdfsdfa', '2', '2019-04-28 15:48:55', '1'), ('14', 'sdfsad', '1', '2019-04-28 15:53:27', '1'), ('15', '243432v 32', '21', '2019-05-30 10:14:39', '1'), ('16', '获救矿工的伤口高峰会上公开符合国家开放', '21', '2019-05-30 10:17:15', '1'), ('26', '涛涛涛涛', null, '2019-05-30 10:38:19', '1'), ('27', '热帖热帖', null, '2019-05-30 10:39:12', '1'), ('28', '广泛大锅饭', null, '2019-05-30 10:40:14', '1'), ('29', '一般化', null, '2019-05-30 10:47:52', '1'), ('30', '11111', null, '2019-05-30 10:49:12', '1'), ('31', '热望认为', null, '2019-05-30 10:51:06', '1'), ('32', '退热退热退热', null, '2019-05-30 10:54:02', '1'), ('33', '饿温热我认为', null, '2019-05-30 10:55:51', '1');
COMMIT;

-- ----------------------------
-- Table structure for `cms_settings`
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
`id`  int(11) NOT NULL ,
`site_domain`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`site_name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`article_list_size`  int(11) NULL DEFAULT NULL ,
`slide_size`  int(11) NULL DEFAULT NULL ,
`admin_username`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`admin_password`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
BEGIN;
INSERT INTO cms_settings VALUES ('1', 'localhost', 'CMS内容管理系', '10', '5', 'admin', '888888');
COMMIT;

-- ----------------------------
-- Table structure for `cms_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`title`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`picture`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`url`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`created`  date NOT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=3 */

;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
BEGIN;
INSERT INTO cms_slide VALUES ('1', '1', '/upload/66e796c3g755eaef7edc8&690.jpg', null, '2019-04-10'), ('2', '1', '/upload/66e796c3g755eaef7edc8&690.jpg', null, '2019-04-10');
COMMIT;

-- ----------------------------
-- Table structure for `cms_terms`
-- ----------------------------
DROP TABLE IF EXISTS `cms_terms`;
CREATE TABLE `cms_terms` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=152 */

;

-- ----------------------------
-- Records of cms_terms
-- ----------------------------
BEGIN;
INSERT INTO cms_terms VALUES ('41', '﻿手游'), ('42', '网游'), ('43', '单击'), ('44', '徒步'), ('45', '自驾游'), ('46', '飞机'), ('47', '梦游'), ('48', 'Java编程'), ('49', 'C编程'), ('50', '.net编程'), ('62', 'a'), ('63', 'b'), ('64', 'c'), ('76', '飞机'), ('77', '梦游'), ('78', '网游'), ('79', '﻿手游'), ('80', 'Java编程'), ('81', '徒步ttt'), ('82', '﻿手'), ('83', '徒步'), ('84', 'aaaa'), ('85', 'bbb'), ('86', 'aaa'), ('87', 'bbb'), ('99', '呵呵'), ('100', 'a'), ('101', 'b'), ('102', 'c'), ('103', 'd'), ('104', '美国'), ('105', '欧洲'), ('106', '南美洲'), ('107', '锘挎墜娓竱缃戞父'), ('148', 'fewwerew'), ('149', 'SUV'), ('150', '火车'), ('151', '跑车');
COMMIT;

-- ----------------------------
-- Table structure for `cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`username`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`nickname`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`birthday`  date NULL DEFAULT NULL ,
`gender`  int(11) NULL DEFAULT NULL ,
`locked`  bit(1) NULL DEFAULT NULL ,
`created`  date NOT NULL ,
`updated`  date NOT NULL ,
`url_blog`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`score`  int(255) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=4 */

;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
BEGIN;
INSERT INTO cms_user VALUES ('1', 'test', 'efbe40026c52c653374cc758bf5b5489', 'test', null, '1', '', '2019-04-22', '2019-04-22', null, '20'), ('2', 'admin', '06e92d9a0557509978ed7cae61463e03', 'admin', null, '0', '', '2019-05-28', '2019-05-28', null, '10'), ('3', 'zhangsan', '87f435bd1aa5f9b1098ab95823d151dc', 'zhangsan', null, '1', '', '2019-05-28', '2019-05-28', null, null);
COMMIT;

-- ----------------------------
-- Table structure for `term_article`
-- ----------------------------
DROP TABLE IF EXISTS `term_article`;
CREATE TABLE `term_article` (
`article_id`  int(11) NULL DEFAULT NULL ,
`term_id`  int(11) NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of term_article
-- ----------------------------
BEGIN;
INSERT INTO term_article VALUES ('1', '41'), ('1', '42'), ('1', '43'), ('2', '41'), ('2', '45'), ('3', '46'), ('4', '47'), ('4', '48'), ('5', '44'), ('5', '49'), ('5', '50'), ('1', '86'), ('1', '87'), ('36', '99'), ('37', '100'), ('37', '101'), ('37', '102'), ('37', '103'), ('38', '104'), ('38', '105'), ('38', '106'), ('41', '118'), ('42', '141'), ('42', '142'), ('42', '143'), ('44', '144'), ('44', '145'), ('45', '146'), ('46', '147'), ('46', '148'), ('47', '149'), ('47', '150'), ('47', '151');
COMMIT;

-- ----------------------------
-- Indexes structure for table `cms_article`
-- ----------------------------
CREATE INDEX `FK_lfkytqlwoutq98g8j5f4ci62h` USING BTREE ON `cms_article`(`channel_id`);
CREATE INDEX `FK_2t7t521ow9c08uqbd9p11fsq4` USING BTREE ON `cms_article`(`category_id`);
CREATE INDEX `FK_p9jh9l0c468m5fxtcp1bcv3a6` USING BTREE ON `cms_article`(`user_id`);

-- ----------------------------
-- Auto increment value for `cms_article`
-- ----------------------------
ALTER TABLE `cms_article` AUTO_INCREMENT=48;

-- ----------------------------
-- Indexes structure for table `cms_category`
-- ----------------------------
CREATE INDEX `FK_ht3vk3a5838apbxow8dc6r6da` USING BTREE ON `cms_category`(`channel_id`);

-- ----------------------------
-- Auto increment value for `cms_category`
-- ----------------------------
ALTER TABLE `cms_category` AUTO_INCREMENT=29;

-- ----------------------------
-- Auto increment value for `cms_channel`
-- ----------------------------
ALTER TABLE `cms_channel` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for `cms_comment`
-- ----------------------------
ALTER TABLE `cms_comment` AUTO_INCREMENT=34;

-- ----------------------------
-- Auto increment value for `cms_slide`
-- ----------------------------
ALTER TABLE `cms_slide` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `cms_terms`
-- ----------------------------
ALTER TABLE `cms_terms` AUTO_INCREMENT=152;

-- ----------------------------
-- Indexes structure for table `cms_user`
-- ----------------------------
CREATE UNIQUE INDEX `UK_m4o7s4w3o9o3www57522hfp8m` USING BTREE ON `cms_user`(`username`);
CREATE INDEX `idx_user_account` USING BTREE ON `cms_user`(`username`);

-- ----------------------------
-- Auto increment value for `cms_user`
-- ----------------------------
ALTER TABLE `cms_user` AUTO_INCREMENT=4;

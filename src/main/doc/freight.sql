/*
Navicat MySQL Data Transfer

Source Server         : dd
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : freight

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2021-03-17 12:35:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for freight
-- ----------------------------
DROP TABLE IF EXISTS `freight`;
CREATE TABLE `freight` (
  `freightId` int NOT NULL AUTO_INCREMENT COMMENT ' 唯一值  ',
  `areaName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 名称',
  `areaEgName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT ' 英文简称',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 价格 ',
  `freightType` int DEFAULT NULL COMMENT '包裹类型 0：文件，1：包裹，2：盒装',
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '重量',
  `priceType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '价格类型',
  PRIMARY KEY (`freightId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9201 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of freight
-- ----------------------------

-- ----------------------------
-- Table structure for freightarea
-- ----------------------------
DROP TABLE IF EXISTS `freightarea`;
CREATE TABLE `freightarea` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '唯一值',
  `areaname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国家名称',
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属分区',
  `egarea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '英文简称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of freightarea
-- ----------------------------
INSERT INTO `freightarea` VALUES ('1', '文莱', 'E', 'Brunei');
INSERT INTO `freightarea` VALUES ('2', '柬埔寨', 'E', 'Cambodia');
INSERT INTO `freightarea` VALUES ('3', '东帝汶', 'E', 'East Timor');
INSERT INTO `freightarea` VALUES ('4', '关岛', 'E', 'Guam');
INSERT INTO `freightarea` VALUES ('5', '老挝', 'E', 'Laos');
INSERT INTO `freightarea` VALUES ('6', '东帝汶', 'E', 'East Timor');
INSERT INTO `freightarea` VALUES ('7', '关岛', 'E', 'Guam');
INSERT INTO `freightarea` VALUES ('8', '老挝', 'E', 'Laos');
INSERT INTO `freightarea` VALUES ('9', '新西兰', 'U', 'New Zealand');
INSERT INTO `freightarea` VALUES ('10', '澳大利亚', 'U', 'Australia');
INSERT INTO `freightarea` VALUES ('11', '加拿大', 'N', 'Canada');
INSERT INTO `freightarea` VALUES ('12', '香港', 'V', 'Hong Kong SAR CHINA');
INSERT INTO `freightarea` VALUES ('13', '印度', 'O', 'India');
INSERT INTO `freightarea` VALUES ('14', '印度尼西亚', 'T', 'Indonesia');
INSERT INTO `freightarea` VALUES ('15', '日本', 'U', 'Japan');
INSERT INTO `freightarea` VALUES ('16', '澳门', 'A', 'Macau SAR CHINA');
INSERT INTO `freightarea` VALUES ('17', '马来西亚', 'Q', 'Malaysia');
INSERT INTO `freightarea` VALUES ('18', '墨西哥', 'N', 'Mexico');
INSERT INTO `freightarea` VALUES ('19', '蒙古', 'D', 'Mongolia');
INSERT INTO `freightarea` VALUES ('20', '菲律宾', 'S', 'Philippines');
INSERT INTO `freightarea` VALUES ('21', '新加坡', 'Y', 'Singapore');
INSERT INTO `freightarea` VALUES ('22', '韩国', 'Z', 'South Korea');
INSERT INTO `freightarea` VALUES ('23', '台湾', 'X', 'Taiwan');
INSERT INTO `freightarea` VALUES ('24', '泰国', 'R', 'Thailand');
INSERT INTO `freightarea` VALUES ('25', '越南', 'B', 'Vietnam');
INSERT INTO `freightarea` VALUES ('26', '捷克共和国', 'F', 'Czech Republic');
INSERT INTO `freightarea` VALUES ('27', '匈牙利', 'F', 'Hungary');
INSERT INTO `freightarea` VALUES ('28', '以色列', 'F', 'Israel');
INSERT INTO `freightarea` VALUES ('29', '列支敦士登', 'F', 'Liechtenstein');
INSERT INTO `freightarea` VALUES ('30', '波兰', 'F', 'Poland');
INSERT INTO `freightarea` VALUES ('31', '保加利亚', 'F', 'Bulgaria');
INSERT INTO `freightarea` VALUES ('32', '克罗地亚', 'F', 'Croatia');
INSERT INTO `freightarea` VALUES ('33', '塞浦路斯', 'F', 'Cyprus');
INSERT INTO `freightarea` VALUES ('34', '爱沙尼亚', 'F', 'Estonia');
INSERT INTO `freightarea` VALUES ('35', '冰岛', 'F', 'Iceland');
INSERT INTO `freightarea` VALUES ('36', '拉脱维亚', 'F', 'Latvia');
INSERT INTO `freightarea` VALUES ('37', '立陶宛', 'F', 'Lithuania');
INSERT INTO `freightarea` VALUES ('38', '马耳他', 'F', 'Malta');
INSERT INTO `freightarea` VALUES ('39', '罗马尼亚', 'F', 'Romania');
INSERT INTO `freightarea` VALUES ('40', '塞尔维亚', 'F', 'Serbia');
INSERT INTO `freightarea` VALUES ('41', '斯洛伐克', 'F', 'Slovakia');
INSERT INTO `freightarea` VALUES ('42', '斯洛文尼亚', 'F', 'Slovenia');
INSERT INTO `freightarea` VALUES ('43', '土耳其', 'F', 'Turkey');
INSERT INTO `freightarea` VALUES ('44', '乌克兰', 'F', 'Ukraine');
INSERT INTO `freightarea` VALUES ('45', '阿根廷', 'G', 'Argentina');
INSERT INTO `freightarea` VALUES ('46', '智利', 'G', 'Chile');
INSERT INTO `freightarea` VALUES ('47', '哥伦比亚', 'G', 'Colombia');
INSERT INTO `freightarea` VALUES ('48', '哥斯达黎加', 'G', 'Costa Rica');
INSERT INTO `freightarea` VALUES ('49', '多米尼加共和国', 'G', 'DominicaRepublic');
INSERT INTO `freightarea` VALUES ('50', '萨尔瓦多', 'G', 'El Salvador');
INSERT INTO `freightarea` VALUES ('51', '危地马拉', 'G', 'Guatemala');
INSERT INTO `freightarea` VALUES ('52', '洪都拉斯', 'G', 'Honduras');
INSERT INTO `freightarea` VALUES ('53', '巴拿马', 'G', 'Panama');
INSERT INTO `freightarea` VALUES ('54', '秘鲁', 'G', 'Peru');
INSERT INTO `freightarea` VALUES ('55', '特立尼达和多巴哥', 'G', 'Trinidad & Tobago');
INSERT INTO `freightarea` VALUES ('56', '乌拉圭', 'G', 'Uruguay');
INSERT INTO `freightarea` VALUES ('57', '委内瑞拉', 'G', 'Venezuela');
INSERT INTO `freightarea` VALUES ('58', '美属萨摩亚岛', 'G', 'American Samoa ');
INSERT INTO `freightarea` VALUES ('59', '玻利维亚', 'G', 'Bolivia');
INSERT INTO `freightarea` VALUES ('60', '博奈尔', 'G', 'Bonaire');
INSERT INTO `freightarea` VALUES ('61', '巴西 ', 'G', 'Brail');
INSERT INTO `freightarea` VALUES ('62', '英属维尔京群岛', 'G', 'British Virgin Islands');
INSERT INTO `freightarea` VALUES ('63', '库克群岛', 'G', 'Cook Islands');
INSERT INTO `freightarea` VALUES ('64', '库拉索', 'G', 'Curacao');
INSERT INTO `freightarea` VALUES ('65', '斐济 ', 'G', 'Fiji');
INSERT INTO `freightarea` VALUES ('66', '法属玻利尼西亚 ', 'G', 'French Polynesia');
INSERT INTO `freightarea` VALUES ('67', '格林纳达', 'G', ' Grenada ');
INSERT INTO `freightarea` VALUES ('68', '瓜德罗普', 'G', 'Guadeloupe');
INSERT INTO `freightarea` VALUES ('69', '马绍尔群岛', 'G', 'Marshall Islands');
INSERT INTO `freightarea` VALUES ('70', '马提尼克', 'G', 'Martinique');
INSERT INTO `freightarea` VALUES ('71', '密克罗尼西亚', 'G', 'Micronesia');
INSERT INTO `freightarea` VALUES ('72', '荷属安提利斯群岛', 'G', 'Netherlands Antilles');
INSERT INTO `freightarea` VALUES ('73', '新喀里多尼亚', 'G', 'New Caledonia');
INSERT INTO `freightarea` VALUES ('74', '尼加拉瓜', 'G', 'Nicaragua');
INSERT INTO `freightarea` VALUES ('75', '北马利安群岛', 'G', 'Northern Mariana Islands ');
INSERT INTO `freightarea` VALUES ('76', '帕劳', 'G', 'Palau');
INSERT INTO `freightarea` VALUES ('77', '巴布亚新几内亚', 'G', 'Papua New Guinea');
INSERT INTO `freightarea` VALUES ('78', '巴拉圭', 'G', 'Paraguay');
INSERT INTO `freightarea` VALUES ('79', '法属圣马丁岛', 'G', 'Saint Martin');
INSERT INTO `freightarea` VALUES ('80', '萨摩亚', 'G', 'Samoa');
INSERT INTO `freightarea` VALUES ('81', '荷属圣马丁', 'G', 'St. Maarten');
INSERT INTO `freightarea` VALUES ('82', '汤加', 'G', 'Tonga');
INSERT INTO `freightarea` VALUES ('83', '特立尼达和多巴哥', 'G', 'Trinidad & Tobago');
INSERT INTO `freightarea` VALUES ('84', '瓦努阿图', 'G', 'Vanuatu');
INSERT INTO `freightarea` VALUES ('85', '瓦利斯群岛和富图那群岛', 'G', 'Wallis & Futuna');
INSERT INTO `freightarea` VALUES ('86', '巴林', 'H', 'Bahrain');
INSERT INTO `freightarea` VALUES ('87', '埃及', 'H', 'Egypt');
INSERT INTO `freightarea` VALUES ('88', '科威特', 'H', 'Kuwait');
INSERT INTO `freightarea` VALUES ('89', '卡塔尔', 'H', 'Qatar');
INSERT INTO `freightarea` VALUES ('90', '南非', 'H', 'South Africa');
INSERT INTO `freightarea` VALUES ('91', '阿尔巴尼亚', 'H', 'Albania');
INSERT INTO `freightarea` VALUES ('92', '孟加拉国', 'H', 'Bangladesh');
INSERT INTO `freightarea` VALUES ('93', '白俄罗斯', 'H', 'Belarus');
INSERT INTO `freightarea` VALUES ('94', '波斯尼亚和黑塞哥维那', 'H', 'Bosnia-Herzegovina');
INSERT INTO `freightarea` VALUES ('95', '博茨瓦纳', 'H', 'Botswana');
INSERT INTO `freightarea` VALUES ('96', '格鲁吉亚', 'H', 'Georgia');
INSERT INTO `freightarea` VALUES ('97', '加纳', 'H', 'Ghana');
INSERT INTO `freightarea` VALUES ('98', '约旦', 'H', 'Jordan');
INSERT INTO `freightarea` VALUES ('99', '肯尼亚', 'H', 'Kenya');
INSERT INTO `freightarea` VALUES ('100', '利比亚', 'H', 'Libya');
INSERT INTO `freightarea` VALUES ('101', '马拉维', 'H', 'Malawi');
INSERT INTO `freightarea` VALUES ('102', '毛里求斯', 'H', 'Mauritius');
INSERT INTO `freightarea` VALUES ('103', '摩尔多瓦', 'H', 'Moldova Republic');
INSERT INTO `freightarea` VALUES ('104', '黑山共和国', 'H', 'Montenegro');
INSERT INTO `freightarea` VALUES ('105', '摩洛哥', 'H', 'Morocco');
INSERT INTO `freightarea` VALUES ('106', '尼日利亚', 'H', 'Nigeria');
INSERT INTO `freightarea` VALUES ('107', '阿曼', 'H', 'Oman');
INSERT INTO `freightarea` VALUES ('108', '巴基斯坦', 'H', 'Pakistan');
INSERT INTO `freightarea` VALUES ('109', '沙特阿拉伯', 'H', 'Saudi Arabia');
INSERT INTO `freightarea` VALUES ('110', '斯里兰卡', 'H', 'Sri Lanka');
INSERT INTO `freightarea` VALUES ('111', '突尼斯', 'H', 'Tunisia');
INSERT INTO `freightarea` VALUES ('112', '阿联酋', 'H', 'United Arab Emirates');
INSERT INTO `freightarea` VALUES ('113', '奥地利', 'M', 'Austria');
INSERT INTO `freightarea` VALUES ('114', '比利时', 'K', 'Belgium');
INSERT INTO `freightarea` VALUES ('115', '丹麦', 'M', 'Denmark');
INSERT INTO `freightarea` VALUES ('116', '法国', 'K', 'France');
INSERT INTO `freightarea` VALUES ('117', '德国', 'K', 'Germany');
INSERT INTO `freightarea` VALUES ('118', '爱尔兰', 'M', 'Ireland');
INSERT INTO `freightarea` VALUES ('119', '意大利', 'K', 'Italy');
INSERT INTO `freightarea` VALUES ('120', '摩纳哥', 'M', 'Monaco');
INSERT INTO `freightarea` VALUES ('121', '卢森堡', 'M', 'Luxembourg');
INSERT INTO `freightarea` VALUES ('122', '荷兰', 'K', 'Netherlands');
INSERT INTO `freightarea` VALUES ('123', '挪威', 'M', 'Norway');
INSERT INTO `freightarea` VALUES ('124', '西班牙', 'K', 'Spain');
INSERT INTO `freightarea` VALUES ('125', '瑞典', 'M', 'Sweden');
INSERT INTO `freightarea` VALUES ('126', '瑞士', 'M', 'Switzerland');
INSERT INTO `freightarea` VALUES ('127', '英国', 'K', 'United Kingdom');
INSERT INTO `freightarea` VALUES ('128', '芬兰', 'M', 'Finland');
INSERT INTO `freightarea` VALUES ('129', '希腊', 'M', 'Greece');
INSERT INTO `freightarea` VALUES ('130', '马其顿', 'H', 'Macedonia');
INSERT INTO `freightarea` VALUES ('131', '葡萄牙', 'M', 'Portugal');
INSERT INTO `freightarea` VALUES ('132', '俄罗斯', 'M', 'Russia Federation');
INSERT INTO `freightarea` VALUES ('133', '美西80000-81699', '1', 'Colorado');
INSERT INTO `freightarea` VALUES ('134', '美西83200-83999', '1', 'Idaho');
INSERT INTO `freightarea` VALUES ('135', '美西84000-84799', '1', 'Utah');
INSERT INTO `freightarea` VALUES ('136', '美西85000-86599', '1', 'Arizona');
INSERT INTO `freightarea` VALUES ('137', '美西89000-89899', '1', 'Nevada');
INSERT INTO `freightarea` VALUES ('138', '美西90000-96699', '1', 'California');
INSERT INTO `freightarea` VALUES ('139', '美西97000-97999', '1', 'Oregon');
INSERT INTO `freightarea` VALUES ('140', '美西98000-99499', '1', 'Washington');
INSERT INTO `freightarea` VALUES ('141', '美国其他地区', '2', 'U.S. (Rest of Country)');

-- ----------------------------
-- Table structure for freightex
-- ----------------------------
DROP TABLE IF EXISTS `freightex`;
CREATE TABLE `freightex` (
  `freightExId` int NOT NULL AUTO_INCREMENT COMMENT '唯一值    ',
  `fuelPrice` decimal(10,3) DEFAULT NULL COMMENT '燃油单价  ',
  `attention1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注意事项1',
  `attention2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '注意事项2',
  PRIMARY KEY (`freightExId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of freightex
-- ----------------------------
INSERT INTO `freightex` VALUES ('1', '0.165', null, null);

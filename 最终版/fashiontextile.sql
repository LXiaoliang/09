/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : fashiontextile

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2017-12-14 14:31:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_buyneed
-- ----------------------------
DROP TABLE IF EXISTS `tb_buyneed`;
CREATE TABLE `tb_buyneed` (
  `buyneed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `buyneed_designerWorksId` int(11) DEFAULT NULL COMMENT '设计作品ID（关联设计作品ID）',
  `buyneed_userId` int(11) DEFAULT NULL,
  `buyneed_designerId` int(11) DEFAULT NULL COMMENT '设计师ID（关联设计师ID）',
  `buyneed_buyType` int(11) DEFAULT NULL COMMENT '购买类型（关联字典数据购买类型）',
  `buyneed_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `buyneed_name` varchar(50) DEFAULT NULL COMMENT '购买者姓名',
  `buyneed_message` varchar(255) DEFAULT NULL COMMENT '留言',
  `buyneed_dateTime` varchar(255) DEFAULT NULL COMMENT '时间',
  `buyneed_status` int(11) DEFAULT NULL COMMENT '购买意愿的状态（已读：1，未读：0）',
  PRIMARY KEY (`buyneed_id`),
  KEY `buyneed_designerWorksId` (`buyneed_designerWorksId`),
  KEY `buyneed_designerID` (`buyneed_designerId`),
  KEY `buyneed_userId` (`buyneed_userId`),
  CONSTRAINT `tb_buyneed_ibfk_1` FOREIGN KEY (`buyneed_designerWorksId`) REFERENCES `tb_designerworks` (`designerWorks_id`),
  CONSTRAINT `tb_buyneed_ibfk_3` FOREIGN KEY (`buyneed_userId`) REFERENCES `tb_useraccount` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='tb_buyNeed';

-- ----------------------------
-- Records of tb_buyneed
-- ----------------------------
INSERT INTO `tb_buyneed` VALUES ('1', '2', '36', '3', '1', '13958745986', '李依依', '我想购买您的作品，请与我联系，谢谢。', '2015-02-03', '0');
INSERT INTO `tb_buyneed` VALUES ('2', '5', '1', '9', '2', '12546343432', '张彩虹', '有兴趣想要了解你的作品，请与我联系', '2016-05-01', '0');
INSERT INTO `tb_buyneed` VALUES ('3', '4', '2', '8', '3', '15673437635', '吴国新', '我想购买您的作品，请与我联系，谢谢。', '2015-04-08', '0');
INSERT INTO `tb_buyneed` VALUES ('4', '4', '3', '4', '1', '12537863752', '龙小平', '很喜欢您的作品，请与我联系', '2014-03-04', '0');
INSERT INTO `tb_buyneed` VALUES ('5', '8', '4', '1', '2', '12354678645', '林海峰', '有兴趣想要了解你的作品，请与我联系', '2013-04-23', '0');
INSERT INTO `tb_buyneed` VALUES ('6', '7', '5', '6', '3', '16985433213', '张志峰', '我想购买您的作品，请与我联系，谢谢。', '2015-04-05', '0');
INSERT INTO `tb_buyneed` VALUES ('7', '7', '1', '5', '1', '13635765435', '李大叔', '很喜欢您的作品，请与我联系', '2005-12-12', '0');
INSERT INTO `tb_buyneed` VALUES ('8', '6', '2', '8', '2', '13656465876', '林佳佳', '您的作品真的很好。请与我联系', '2016-04-08', '0');
INSERT INTO `tb_buyneed` VALUES ('9', '6', '4', '9', '3', '15676876456', '王珊珊', '请与我联系，我想够买您的作品', '2013-11-05', '0');
INSERT INTO `tb_buyneed` VALUES ('10', '4', '5', '7', '1', '15687654345', '郭海军', '这是我的联系方式，请与我联系。谢谢', '2017-04-12', '0');
INSERT INTO `tb_buyneed` VALUES ('11', '7', '6', '4', '2', '13636345565', '李建东', '您的作品真的很好。请与我联系', '2017-08-29', '0');
INSERT INTO `tb_buyneed` VALUES ('12', '12', '5', '12', '3', '13113113101', '王新平', '我很喜欢你的作品可以聊一下吗', '2016-02-03', '0');
INSERT INTO `tb_buyneed` VALUES ('13', '13', '11', '13', '1', '13115116102', '林希', '我很中意你的作品，希望可以联系一下', '2017-10-05', '0');
INSERT INTO `tb_buyneed` VALUES ('14', '14', '36', '14', '2', '13417150123', '孙小小', '你的作品很好看，我很喜欢', '2017-11-06', '0');
INSERT INTO `tb_buyneed` VALUES ('15', '15', '12', '15', '3', '13715163158', '范忠', '我对你的作品很感兴趣，可以联系一下谈谈吗', '2016-10-05', '0');
INSERT INTO `tb_buyneed` VALUES ('16', '16', '12', '16', '1', '13511581618', '张平珊', '看了你的作品的图片我很喜欢可以联系一下吗电话是13415153589', '2017-02-03', '0');
INSERT INTO `tb_buyneed` VALUES ('17', '17', '15', '17', '2', '13816158161', '叶小山', '你的作品为很感兴趣，可以联系一下吗电话是13581616849', '2015-10-02', '0');
INSERT INTO `tb_buyneed` VALUES ('18', '18', '16', '18', '2', '13715162138', '钱风', '我很喜欢你的作品，可以私下聊一下吗，我的电话是13518156158', '2017-09-15', '0');
INSERT INTO `tb_buyneed` VALUES ('19', '19', '17', '19', '3', '13815816918', '云希', '你的作品很好，我有意购买，可以联系一下吗，电话是13411515156', '2017-11-01', '0');
INSERT INTO `tb_buyneed` VALUES ('20', '20', '18', '20', '1', '13715158166', '季熙', '作品设计的理念我很喜欢，可以联系一下吗，我想购买，电话是13415163169', '2017-11-12', '0');
INSERT INTO `tb_buyneed` VALUES ('21', '21', '19', '21', '1', '12803458441', '陈小希', '我想购买您的作品，请与我联系，谢谢。', '2015-02-03', '0');
INSERT INTO `tb_buyneed` VALUES ('22', '22', '20', '22', '2', '17864414247', '刘文珊', '有兴趣想要了解你的作品，请与我联系', '2016-05-01', '0');
INSERT INTO `tb_buyneed` VALUES ('23', '23', '21', '23', '3', '15025549664', '李亚希', '我想购买您的作品，请与我联系，谢谢。', '2015-04-08', '0');
INSERT INTO `tb_buyneed` VALUES ('24', '24', '22', '24', '3', '12167467351', '陈滨康', '很喜欢您的作品，请与我联系', '2014-03-04', '0');
INSERT INTO `tb_buyneed` VALUES ('25', '25', '23', '25', '2', '18782477433', '观冠', '有兴趣想要了解你的作品，请与我联系', '2013-04-23', '0');
INSERT INTO `tb_buyneed` VALUES ('26', '26', '24', '26', '1', '13564996969', '劳宇', '我想购买您的作品，请与我联系，谢谢。', '2015-04-05', '0');
INSERT INTO `tb_buyneed` VALUES ('27', '27', '25', '27', '1', '14925124815', '林茜茜', '很喜欢您的作品，请与我联系', '2017-12-12', '0');
INSERT INTO `tb_buyneed` VALUES ('28', '28', '26', '28', '2', '18287638541', '白小易', '您的作品真的很好。请与我联系', '2016-04-08', '0');
INSERT INTO `tb_buyneed` VALUES ('29', '29', '27', '29', '3', '15253455348', '陈翼博', '请与我联系，我想够买您的作品', '2013-11-05', '0');
INSERT INTO `tb_buyneed` VALUES ('30', '30', '28', '30', '3', '17166491745', '吴一帆', '这是我的联系方式，请与我联系。谢谢', '2012-04-12', '0');
INSERT INTO `tb_buyneed` VALUES ('31', '44', '36', '1', '1', '13581212165', '李莉', '有兴趣想要了解你的作品，请与我联系', '2017-12-06 21:22:25', '0');
INSERT INTO `tb_buyneed` VALUES ('32', '44', '36', '1', '2', '13570426259', '林洁儿', '我想购买您的作品，请与我联系，谢谢。', '2017-12-06 21:23:44', '0');
INSERT INTO `tb_buyneed` VALUES ('33', '91', '12', '47', '1', '13570426259', '郭一飞', '很喜欢您的作品，请与我联系', '2017-12-07 21:23:44', '0');
INSERT INTO `tb_buyneed` VALUES ('34', '59', '37', '9', '2', '13570426258', '张碧晨', '您的作品真的很好。请与我联系', '2017-12-09 14:31:50', '0');
INSERT INTO `tb_buyneed` VALUES ('35', '67', '37', '17', '2', '15015498756', '李晓阳', '这是我的联系方式，请与我联系。谢谢', '2017-12-09 18:18:50', '0');

-- ----------------------------
-- Table structure for tb_clotheclassify
-- ----------------------------
DROP TABLE IF EXISTS `tb_clotheclassify`;
CREATE TABLE `tb_clotheclassify` (
  `clotheClassify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服装分类的id',
  `clotheClassify_code` varchar(11) DEFAULT '0' COMMENT '服装分类-代号',
  `clotheClassify_name` varchar(255) DEFAULT NULL COMMENT '服装分类-名字',
  `clotheClassify_parentCode` varchar(11) DEFAULT '0' COMMENT '服装分类上级菜单的代号',
  PRIMARY KEY (`clotheClassify_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_clotheclassify
-- ----------------------------
INSERT INTO `tb_clotheclassify` VALUES ('1', 'C01', '男装款式', '0');
INSERT INTO `tb_clotheclassify` VALUES ('2', 'C02', '女装款式', '0');
INSERT INTO `tb_clotheclassify` VALUES ('3', 'C03', '童装款式', '0');
INSERT INTO `tb_clotheclassify` VALUES ('4', 'C04', '婚纱款式', '0');
INSERT INTO `tb_clotheclassify` VALUES ('5', 'C05', '毛衫针织', '0');
INSERT INTO `tb_clotheclassify` VALUES ('6', 'C06', '内衣/家居', '0');
INSERT INTO `tb_clotheclassify` VALUES ('7', 'C07', '鞋帽配饰', '0');
INSERT INTO `tb_clotheclassify` VALUES ('8', 'C08', '职业服装', '0');
INSERT INTO `tb_clotheclassify` VALUES ('9', 'C0101', '上装', 'C01');
INSERT INTO `tb_clotheclassify` VALUES ('10', 'C0102', '下装', 'C01');
INSERT INTO `tb_clotheclassify` VALUES ('11', 'C0103', '套装/系列', 'C01');
INSERT INTO `tb_clotheclassify` VALUES ('12', 'C0201', '上装', 'C02');
INSERT INTO `tb_clotheclassify` VALUES ('13', 'C0202', '下装', 'C02');
INSERT INTO `tb_clotheclassify` VALUES ('14', 'C0203', '套装/系列', 'C02');
INSERT INTO `tb_clotheclassify` VALUES ('15', 'C0301', '上装', 'C03');
INSERT INTO `tb_clotheclassify` VALUES ('16', 'C0302', '下装', 'C03');
INSERT INTO `tb_clotheclassify` VALUES ('17', 'C0303', '套装/亲子装', 'C03');
INSERT INTO `tb_clotheclassify` VALUES ('18', 'C0401', '婚纱', 'C04');
INSERT INTO `tb_clotheclassify` VALUES ('19', 'C0402', '礼服', 'C04');
INSERT INTO `tb_clotheclassify` VALUES ('20', 'C0403', '旗袍', 'C04');
INSERT INTO `tb_clotheclassify` VALUES ('21', 'C0501', '毛衫针织', 'C05');
INSERT INTO `tb_clotheclassify` VALUES ('22', 'C0601', '文胸', 'C06');
INSERT INTO `tb_clotheclassify` VALUES ('23', 'C0602', '内裤', 'C06');
INSERT INTO `tb_clotheclassify` VALUES ('24', 'C0603', '家居服', 'C06');
INSERT INTO `tb_clotheclassify` VALUES ('25', 'C0604', '泳装', 'C06');
INSERT INTO `tb_clotheclassify` VALUES ('26', 'C0605', '美体塑身', 'C06');
INSERT INTO `tb_clotheclassify` VALUES ('27', 'C0701', '鞋子', 'C07');
INSERT INTO `tb_clotheclassify` VALUES ('28', 'C0702', '箱包', 'C07');
INSERT INTO `tb_clotheclassify` VALUES ('29', 'C0703', '帽子', 'C07');
INSERT INTO `tb_clotheclassify` VALUES ('30', 'C0704', '其他饰品', 'C07');
INSERT INTO `tb_clotheclassify` VALUES ('31', 'C0801', '正装', 'C08');
INSERT INTO `tb_clotheclassify` VALUES ('32', 'C0802', '功能服', 'C08');
INSERT INTO `tb_clotheclassify` VALUES ('33', 'C0803', '户外', 'C08');
INSERT INTO `tb_clotheclassify` VALUES ('34', 'C0804', '职业制服', 'C08');
INSERT INTO `tb_clotheclassify` VALUES ('35', 'C010101', '外套／夹克', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('36', 'C010102', '大衣/风衣/皮衣', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('37', 'C010103', 'T恤／衬衫', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('38', 'C010104', '卫衣', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('39', 'C010105', '背心／马夹', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('40', 'C010106', '小西装', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('41', 'C010107', '棉服／羽绒服', 'C0101');
INSERT INTO `tb_clotheclassify` VALUES ('42', 'C010201', '牛仔裤', 'C0102');
INSERT INTO `tb_clotheclassify` VALUES ('43', 'C010202', '休闲裤', 'C0102');
INSERT INTO `tb_clotheclassify` VALUES ('44', 'C010203', '西装裤', 'C0102');
INSERT INTO `tb_clotheclassify` VALUES ('45', 'C010204', '短裤', 'C0102');
INSERT INTO `tb_clotheclassify` VALUES ('46', 'C010301', '休闲套装', 'C0103');
INSERT INTO `tb_clotheclassify` VALUES ('47', 'C010302', '运动套装', 'C0103');
INSERT INTO `tb_clotheclassify` VALUES ('48', 'C010303', '创意时装', 'C0103');
INSERT INTO `tb_clotheclassify` VALUES ('49', 'C020101', '大衣/风衣/夹克', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('50', 'C020102', '皮衣／皮草', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('51', 'C020103', '衬衫／雪纺衫', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('52', 'C020104', 'T恤', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('53', 'C020105', '卫衣', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('54', 'C020106', '背心／马夹', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('55', 'C020107', '小西装', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('56', 'C020108', '棉服／羽绒服', 'C0201');
INSERT INTO `tb_clotheclassify` VALUES ('57', 'C020201', '牛仔裤', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('58', 'C020202', '休闲裤', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('59', 'C020203', '西装裤', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('60', 'C020204', '短裤', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('61', 'C020205', '连衣裙', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('62', 'C020206', '半身裙', 'C0202');
INSERT INTO `tb_clotheclassify` VALUES ('63', 'C020301', '休闲套装', 'C0203');
INSERT INTO `tb_clotheclassify` VALUES ('64', 'C020302', 'OL套装', 'C0203');
INSERT INTO `tb_clotheclassify` VALUES ('65', 'C020303', '运动套装', 'C0203');
INSERT INTO `tb_clotheclassify` VALUES ('66', 'C020304', '创意时装', 'C0203');
INSERT INTO `tb_clotheclassify` VALUES ('67', 'C030101', '外套／夹克', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('68', 'C030102', '大衣／风衣', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('69', 'C030103', '毛衣', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('70', 'C030104', 'T恤／衬衫', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('71', 'C030105', '卫衣', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('72', 'C030106', '马夹', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('73', 'C030107', '背心／吊带衫', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('74', 'C030108', '棉服／羽绒服', 'C0301');
INSERT INTO `tb_clotheclassify` VALUES ('75', 'C030201', '裤子', 'C0302');
INSERT INTO `tb_clotheclassify` VALUES ('76', 'C030202', '裙子', 'C0302');
INSERT INTO `tb_clotheclassify` VALUES ('77', 'C030301', '休闲套装', 'C0303');
INSERT INTO `tb_clotheclassify` VALUES ('78', 'C030302', '婴幼套装', 'C0303');
INSERT INTO `tb_clotheclassify` VALUES ('79', 'C030303', '运动套装', 'C0303');
INSERT INTO `tb_clotheclassify` VALUES ('80', 'C030304', '亲子装', 'C0303');
INSERT INTO `tb_clotheclassify` VALUES ('81', 'C040101', '婚纱', 'C0401');
INSERT INTO `tb_clotheclassify` VALUES ('82', 'C040201', '礼服', 'C0402');
INSERT INTO `tb_clotheclassify` VALUES ('83', 'C040301', '旗袍', 'C0403');
INSERT INTO `tb_clotheclassify` VALUES ('84', 'C050101', '毛衫针织', 'C0501');
INSERT INTO `tb_clotheclassify` VALUES ('85', 'C060101', '文胸', 'C0601');
INSERT INTO `tb_clotheclassify` VALUES ('86', 'C060102', '套装', 'C0601');
INSERT INTO `tb_clotheclassify` VALUES ('87', 'C060201', '男士内裤', 'C0602');
INSERT INTO `tb_clotheclassify` VALUES ('88', 'C060202', '女士内裤', 'C0602');
INSERT INTO `tb_clotheclassify` VALUES ('89', 'C060301', '男士睡衣', 'C0603');
INSERT INTO `tb_clotheclassify` VALUES ('90', 'C060302', '女士睡衣', 'C0603');
INSERT INTO `tb_clotheclassify` VALUES ('91', 'C060303', '儿童睡衣', 'C0603');
INSERT INTO `tb_clotheclassify` VALUES ('92', 'C060401', '男士泳装', 'C0604');
INSERT INTO `tb_clotheclassify` VALUES ('93', 'C060402', '女士泳装', 'C0604');
INSERT INTO `tb_clotheclassify` VALUES ('94', 'C060403', '儿童泳装', 'C0604');
INSERT INTO `tb_clotheclassify` VALUES ('95', 'C060501', '美体塑身', 'C0605');
INSERT INTO `tb_clotheclassify` VALUES ('96', 'C070101', '男鞋', 'C0701');
INSERT INTO `tb_clotheclassify` VALUES ('97', 'C070102', '女鞋', 'C0701');
INSERT INTO `tb_clotheclassify` VALUES ('98', 'C070103', '童鞋', 'C0701');
INSERT INTO `tb_clotheclassify` VALUES ('99', 'C070201', '女包', 'C0702');
INSERT INTO `tb_clotheclassify` VALUES ('100', 'C070202', '男包', 'C0702');
INSERT INTO `tb_clotheclassify` VALUES ('101', 'C070203', '箱', 'C0702');
INSERT INTO `tb_clotheclassify` VALUES ('102', 'C070301', '男士', 'C0703');
INSERT INTO `tb_clotheclassify` VALUES ('103', 'C070302', '女士', 'C0703');
INSERT INTO `tb_clotheclassify` VALUES ('104', 'C070401', '饰品\r\n', 'C0704');
INSERT INTO `tb_clotheclassify` VALUES ('105', 'C080101', '男士', 'C0801');
INSERT INTO `tb_clotheclassify` VALUES ('106', 'C080102', '女士', 'C0801');
INSERT INTO `tb_clotheclassify` VALUES ('107', 'C080103', '系列', 'C0801');
INSERT INTO `tb_clotheclassify` VALUES ('108', 'C080201', '功能服\r\n', 'C0802');
INSERT INTO `tb_clotheclassify` VALUES ('109', 'C080301', '户外\r\n', 'C0803');
INSERT INTO `tb_clotheclassify` VALUES ('110', 'C080401', '商场营业类', 'C0804');
INSERT INTO `tb_clotheclassify` VALUES ('111', 'C080402', '宾馆酒店类', 'C0804');
INSERT INTO `tb_clotheclassify` VALUES ('112', 'C080403', '医疗卫生类', 'C0804');
INSERT INTO `tb_clotheclassify` VALUES ('113', 'C080404', '行政事业类', 'C0804');
INSERT INTO `tb_clotheclassify` VALUES ('114', 'C080405', '劳动工装类', 'C0804');

-- ----------------------------
-- Table structure for tb_clotherbrandinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_clotherbrandinfo`;
CREATE TABLE `tb_clotherbrandinfo` (
  `clothesBrand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `clothesBrand_name` varchar(50) NOT NULL COMMENT '名称',
  `clothesBrand_des` longtext NOT NULL COMMENT '简介',
  `clothesBrand_price` int(11) DEFAULT NULL COMMENT '价格',
  `enterprise_id` int(11) NOT NULL COMMENT '关联服装企业id',
  `clothesBrand_design` int(11) NOT NULL COMMENT '服装版型，款式（关联字典数据实体id）',
  `clothesBrand_style` int(11) NOT NULL COMMENT '风格（关联字典数据实体id）',
  `clothesBrand_brand` int(11) NOT NULL COMMENT '品牌（关联服装品牌实体id）',
  `clothesBrand_elements` int(11) NOT NULL COMMENT '面料成分（关联面料成分实体id）',
  `clothesBrand_color` varchar(10) NOT NULL COMMENT '主要颜色',
  `clothesBrand_imgOne` varchar(50) NOT NULL COMMENT '照片一链接',
  `clothesBrand_imgTwo` varchar(50) DEFAULT NULL COMMENT '照片二链接',
  `clothesBrand_imgThree` varchar(50) DEFAULT NULL COMMENT '照片三链接',
  `clothesBrand_imgFour` varchar(50) DEFAULT NULL COMMENT '照片四链接',
  `clothesBrand_imgFive` varchar(50) DEFAULT NULL COMMENT '照片五链接',
  `clothesBrand_imgSix` varchar(50) DEFAULT NULL COMMENT '照片六链接',
  `clothesBrand_imgSeven` varchar(50) DEFAULT NULL COMMENT '照片七链接',
  `clothesBrand_imgEight` varchar(50) DEFAULT NULL COMMENT '照片八链接',
  `clothesBrand_likeNum` int(11) DEFAULT NULL COMMENT '被喜欢次数',
  `clothesBrand_collection` int(11) DEFAULT NULL COMMENT '被收藏时间',
  `clothesBrand_addTime` varchar(50) NOT NULL COMMENT '发布时间',
  `clothesBrand_updateTime` varchar(50) NOT NULL COMMENT '修改时间',
  `clothesBrand_status` int(11) NOT NULL DEFAULT '1' COMMENT '状态（正常:1、删除:0）',
  PRIMARY KEY (`clothesBrand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='tb_clotherBrandInfo';

-- ----------------------------
-- Records of tb_clotherbrandinfo
-- ----------------------------
INSERT INTO `tb_clotherbrandinfo` VALUES ('2', 'T&W', 'T&W-蕴含着都市年轻女性对着装、品位和美丽的永恒追求;品牌的作品诠释了女性都市.自由.时尚等元素。', '100', '2', '2', '2', '2', '8', '白色', 'image/clotheBrand/one/imgOne_2.png', 'image/clotheBrand/two/imgTwo_2.png', 'image/clotheBrand/three/imgThree_2.png', 'image/clotheBrand/four/imgFour_2.png', 'image/clotheBrand/five/imgFive_2.png', null, null, null, '113', '12', '2016-02-02', '2016-06-07', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('3', '潮流前线', 'BodyStyle布迪设计品牌将欧洲简约时尚的设计手法，融合东方女性特有的温婉和精致，打造出“布一样性感”的品牌主张，让每一位拒绝平庸的东方女性，拥有独特个性的性感魅力。', '180', '3', '1', '1', '1', '9', '多色', 'image/clotheBrand/one/imgOne_3.png', 'image/clotheBrand/two/imgTwo_3.png', 'image/clotheBrand/three/imgThree_3.png', 'image/clotheBrand/four/imgFour_3.png', 'image/clotheBrand/five/imgFive_3.png', null, null, null, '185', '33', '2003-01-02', '2014-04-02', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('4', 'BD内衣品牌', 'BD是一个传播美式文化的年轻活力品牌，她潮流，国际化，她希望用最少的价格让顾客去享受最流行的当下时尚，用简单易穿的单品制作、流行的搭配与造型，让时尚变得容易，充分展现现代都市女孩多彩而热情的青春朝气和活力。', '552', '4', '5', '5', '5', '10', '撞色', 'image/clotheBrand/one/imgOne_4.png', 'image/clotheBrand/two/imgTwo_4.png', 'image/clotheBrand/three/imgThree_4.png', 'image/clotheBrand/four/imgFour_4.png', 'image/clotheBrand/five/imgFive_4.png', null, null, null, '254', '1013', '2013-05-06', '2013-06-05', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('5', '阿迪达斯', '阿迪达斯从创办初期就集“色彩鲜艳，款式时尚，舒适耐用”为一身，风靡整个欧洲。在欧洲最好的百货商店，包括老佛爷百货，Au Printemps \r\nHaussmann - Paris和Selfridges都能找到lipault的身影。而在大西洋，lipault也风靡美国和加拿大。', '824', '5', '4', '2', '2', '8', '黑白', 'image/clotheBrand/one/imgOne_5.png', 'image/clotheBrand/two/imgTwo_5.png', 'image/clotheBrand/three/imgThree_5.png', 'image/clotheBrand/four/imgFour_5.png', 'image/clotheBrand/five/imgFive_5.png', null, null, null, '33', '2186', '2008-05-02', '2009-01-21', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('6', '苏昔', '苏昔服装涵盖了男、女装和童装系列，款款实用而流行。LACOSTE以精致的面料选择，多变的色彩搭配，变化丰富的款式，展现了青春活力和时尚一族的魅力。', '320', '6', '3', '4', '8', '9', '灰白', 'image/clotheBrand/one/imgOne_6.png', 'image/clotheBrand/two/imgTwo_6.png', 'image/clotheBrand/three/imgThree_6.png', 'image/clotheBrand/four/imgFour_6.png', 'image/clotheBrand/five/imgFive_6.png', null, null, null, '55', '3812', '2012-12-21', '2012-12-23', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('7', '思凯乐', '思凯乐人深刻理解和践行着攀登者的精神，不但以卓越品质的户外用品满足户外爱好者的需求，还大胆突破创新，实施以最新科技应用与时尚设计相结合的产品战略，充分考虑户外爱好者们的功能诉求的同时，创造户外生活的美好新境界。', '420', '7', '5', '6', '7', '8', '粉色', 'image/clotheBrand/one/imgOne_7.png', 'image/clotheBrand/two/imgTwo_7.png', 'image/clotheBrand/three/imgThree_7.png', 'image/clotheBrand/four/imgFour_7.png', 'image/clotheBrand/five/imgFive_7.png', null, null, null, '253', '46', '2013-02-15', '2014-11-12', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('8', '七度', '七度源于意大利工艺，不断汲取世界各地对美学的诠释。秉持高品质精神，精湛工艺，在行业中广受赞誉。七度设计风格，充满现代感同时崇尚真我表达，大胆采用各种创新镶嵌材质，风格独特，产品种类繁多，对时尚的深刻理解。', '452', '8', '5', '4', '2', '9', '黑白', 'image/clotheBrand/one/imgOne_8.png', 'image/clotheBrand/two/imgTwo_8.png', 'image/clotheBrand/three/imgThree_8.png', 'image/clotheBrand/four/imgFour_8.png', 'image/clotheBrand/five/imgFive_8.png', null, null, null, '65', '553', '2013-05-16', '2014-05-03', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('9', '七匹狼', '为全世界呈现中国文化艺术的精髓是珠宝设计师Dennis Chan和同为Qeelin创始人的法国商界英才Guillaume Brod的共同梦想。二人寻求东西方美学精神的整合，将传统工艺与现代设计元素糅合，创造出了一个卓尔不群的珠宝品牌Qeelin。', '260', '9', '4', '4', '5', '10', '黑白', 'image/clotheBrand/one/imgOne_9.png', 'image/clotheBrand/two/imgTwo_9.png', 'image/clotheBrand/three/imgThree_9.png', 'image/clotheBrand/four/imgFour_9.png', 'image/clotheBrand/five/imgFive_9.png', null, null, null, '333', '45', '2013-04-21', '2013-04-23', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('10', '森马', '匆忙的都市生活中，每个人都渴望撇去繁重拥有全新的“轻生活”。betu融合优雅摩登易搭的“轻理念”满足都市女性不同生活场合中的需求。让她们能够在“轻理念”中拨开锁住束缚真我个性的种种樊篱，挖掘出内心埋藏的个体风格。在“轻生活”中找到淡然、时尚、优雅的自己。', '230', '10', '4', '2', '5', '10', '黑白', 'image/clotheBrand/one/imgOne_10.png', 'image/clotheBrand/two/imgTwo_10.png', 'image/clotheBrand/three/imgThree_10.png', 'image/clotheBrand/four/imgFour_10.png', 'image/clotheBrand/five/imgFive_10.png', null, null, null, '92', '1500', '2013-12-20', '2014-12-23', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('11', '老爷车', '老爷车男装的核心生活人群是四十岁左右的成熟男性，这一人群注重外貌形象，因而有着稀罕的审美，老爷车男装成为他们钟爱的选择，因此，老爷车男装在市场上贩卖火爆，赢得广泛青睐!', '210', '1', '3', '2', '5', '20', '黑白', 'image/clotheBrand/one/imgOne_11.jpg', 'image/clotheBrand/two/imgTwo_11.jpg', 'image/clotheBrand/three/imgThree_11.jpg', 'image/clotheBrand/four/imgFour_11.jpg', 'image/clotheBrand/five/imgFive_11.jpg', null, null, null, '99', '101', '2016-10-01', '2017-10-01', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('12', '阳光鼠', '阳光鼠译自SunRoo。Sun代表阳光、成长及勃勃生机，Roo代表贴心与关怀。Sunroo阳光鼠不仅提供优质产品，更是倡导一种生活哲学和育儿理念。尊重成长规律、呵护纯真天性，关注生命本质。', '110', '2', '2', '2', '2', '21', '白色', 'image/clotheBrand/one/imgOne_12.jpg', 'image/clotheBrand/two/imgTwo_12.jpg', 'image/clotheBrand/three/imgThree_12.jpg', 'image/clotheBrand/four/imgFour_12.jpg', 'image/clotheBrand/five/imgFive_12.jpg', null, null, null, '85', '1256', '2015-05-02', '2017-10-02', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('13', '小嗨皮', '小嗨皮童装集中一切可利用的资源强化品牌广告投入，利用广告投入和移动终端互动带动市场拓展，以较高的起点进入各细分市场，创造行业新的品牌推广模式，累积品牌价值，树立更高一层具有实用价值并引领时尚的童装风向标，打造中国儿童休闲时尚用品的引领品牌!', '112', '3', '1', '1', '1', '22', '多色', 'image/clotheBrand/one/imgOne_13.jpg', 'image/clotheBrand/two/imgTwo_13.jpg', 'image/clotheBrand/three/imgThree_13.jpg', 'image/clotheBrand/four/imgFour_13.jpg', 'image/clotheBrand/five/imgFive_13.jpg', null, null, null, '67', '45', '2015-07-25', '2015-06-03', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('14', '汤尼威尔', '品牌自创立以来秉承“以繁化简，以简为雅”的设计理念来研发独特的裁剪及崭新的视觉艺术。以全新的设计手法，致力于为一群对品质生活充满追求和向往的，走在时尚前沿的人提供自然个性品味着装。', '118', '4', '5', '5', '5', '20', '撞色', 'image/clotheBrand/one/imgOne_14.jpg', 'image/clotheBrand/two/imgTwo_14.jpg', 'image/clotheBrand/three/imgThree_14.jpg', 'image/clotheBrand/four/imgFour_14.jpg', 'image/clotheBrand/five/imgFive_14.jpg', null, null, null, '594', '563', '2010-05-26', '2011-10-04', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('15', 'valentino 瓦伦蒂诺', '在专注茄克35年的发展历程中，劲霸男装一直专心、专业、专注于以茄克为核心品类的商务休闲男装市场，以“设计领先”和“更好版型”获得消费者良好口碑，并通过精湛领先的产品研发设计，强而有力的品牌运营管理，稳健齐备的专卖销售体系，跃升成为中国休闲男装行业标志性品牌。', '116', '5', '4', '2', '2', '21', '黑白', 'image/clotheBrand/one/imgOne_15.jpg', 'image/clotheBrand/two/imgTwo_15.jpg', 'image/clotheBrand/three/imgThree_15.jpg', 'image/clotheBrand/four/imgFour_15.jpg', 'image/clotheBrand/five/imgFive_15.jpg', null, null, null, '712', '25', '2000-07-29', '2009-10-22', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('16', '葆蝶家 (Bottega Veneta) ', '葆蝶家 (Bottega Veneta) 品牌创始人是意大利莫尔泰杜(Moltedo)家族，他们于1966年在意大利Vicenza设立总部，取名为葆蝶家 (Bottega Veneta) 意即VENETA工坊。莫尔泰杜(Moltedo)家族独家的皮革梭织法，让BOTTEGA VENETA在70年代发光发热，成为知名的顶级名牌。', '130', '6', '3', '4', '8', '22', '灰白', 'image/clotheBrand/one/imgOne_16.jpg', 'image/clotheBrand/two/imgTwo_16.jpg', 'image/clotheBrand/three/imgThree_16.jpg', 'image/clotheBrand/four/imgFour_16.jpg', 'image/clotheBrand/five/imgFive_16.jpg', null, null, null, '27', '49', '2015-10-11', '2017-02-22', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('17', '古孜 （gucci）', '古孜集团将品牌服装进一步延伸至棉花种植、纺织等服装上游产业，随着2008年集团并购美国KELLWOOD公司旗下核心男装业务——香港新马集团，雅戈尔更获得强大的设计开发能力、国际经营管理能力以及遍布美国的分销网络，形成了全球最大的纺织服装产业链之一。', '140', '7', '5', '6', '7', '20', '粉色', 'image/clotheBrand/one/imgOne_17.jpg', 'image/clotheBrand/two/imgTwo_17.jpg', 'image/clotheBrand/three/imgThree_17.jpg', 'image/clotheBrand/four/imgFour_17.jpg', 'image/clotheBrand/five/imgFive_17.jpg', null, null, null, '33', '512', '2016-10-27', '2014-05-09', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('18', '吉凡克斯', '吉凡克斯 (Gieves & Hawkes) 西服采用100%特细毛料制作，经过细心而严格的布料的选定过程后，吉凡克斯 (Gieves & Hawkes) 的布料还均需经过特别的蒸缩定型处理，可减少布料缩水的情况。', '150', '8', '5', '4', '2', '21', '黑白', 'image/clotheBrand/one/imgOne_18.jpg', 'image/clotheBrand/two/imgTwo_18.jpg', 'image/clotheBrand/three/imgThree_18.jpg', 'image/clotheBrand/four/imgFour_18.jpg', 'image/clotheBrand/five/imgFive_18.jpg', null, null, null, '173', '17', '2013-02-02', '2017-08-17', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('19', 'GANT', 'GANT是世界著名三大休闲品牌之一，是欧洲经典与美国东海岸休闲的完美结合。我们的产品包括：男装、女装、童装、家居家纺、配饰、香水，等。销售网络现已遍布全球93个国家，被誉为全球最具美感的高品质经典生活方式品牌。', '152', '9', '4', '4', '5', '22', '黑白', 'image/clotheBrand/one/imgOne_19.jpg', 'image/clotheBrand/two/imgTwo_19.jpg', 'image/clotheBrand/three/imgThree_19.jpg', 'image/clotheBrand/four/imgFour_19.jpg', 'image/clotheBrand/five/imgFive_19.jpg', null, null, null, '19', '56', '2013-04-15', '2015-02-08', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('20', '阿玛尼', 'Armani Collezioni 作为阿玛尼 (Armani) 的另一个副牌，在中国的名气虽远不及主线乔治·阿玛尼 (Giorgio Armani) 和年轻副线品牌安普里奥·阿玛尼(Emporio Armani)，却是阿玛尼家族中最奢华的一员。Armani Collezioni 是意大利语，翻译成英文就是Armani Collections。', '160', '9', '4', '2', '5', '29', '黑白', 'image/clotheBrand/one/imgOne_20.jpg', 'image/clotheBrand/two/imgTwo_20.jpg', 'image/clotheBrand/three/imgThree_20.jpg', 'image/clotheBrand/four/imgFour_20.jpg', 'image/clotheBrand/five/imgFive_20.jpg', null, null, null, '195', '7724', '2016-05-09', '2017-02-10', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('21', '保罗·史密斯 (Paul Smith) ', '保罗·史密斯 (Paul Smith) 的设计主要以朴实、简单为理念，客人从不会看到保罗·史密斯 (Paul Smith) 推出一些奢华的时装或哗众取宠的新奇作品。', '480', '10', '3', '2', '5', '30', '黑白', 'image/clotheBrand/one/imgOne_21.png', 'image/clotheBrand/two/imgTwo_21.png', 'image/clotheBrand/three/imgThree_21.png', 'image/clotheBrand/four/imgFour_21.png', 'image/clotheBrand/five/imgFive_21.png', null, null, null, '203', '18', '2005-06-07', '2005-06-07', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('22', 'eddaDior 迪奥女装', 'eddaDior迪奥女装体现在致力于时尚的可理解性，选用高档的上乘面料如绸缎、传统大衣呢、精纺羊毛、塔夫绸、华丽的刺绣品。', '570', '11', '2', '2', '2', '31', '白色', 'image/clotheBrand/one/imgOne_22.png', 'image/clotheBrand/two/imgTwo_22.png', 'image/clotheBrand/three/imgThree_22.png', 'image/clotheBrand/four/imgFour_22.png', 'image/clotheBrand/five/imgFive_22.png', null, null, null, '11', '12', '2016-02-02', '2016-06-07', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('23', 'SIEGO西蔻', '　SIEGO(西蔻) 来自独立设计师PHOEBE创立的摩登文艺女装品牌，以高街风格为品牌定位，独特而深厚的摩登文艺底蕴，满足一众现代时装迷追求高品质与个性并重的需求与欲望。', '182', '12', '1', '1', '1', '29', '多色', 'image/clotheBrand/one/imgOne_23.png', 'image/clotheBrand/two/imgTwo_23.png', 'image/clotheBrand/three/imgThree_23.png', 'image/clotheBrand/four/imgFour_23.png', 'image/clotheBrand/five/imgFive_23.png', null, null, null, '186', '34', '2003-01-02', '2014-04-02', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('24', '卡索Castle', '卡索Castle，源自一份对古堡的美丽憧憬与浪漫情怀。在每一座古堡里，都住着一位高贵的公主，她优雅而奢华，浪漫且性感，是所有人心目中完美的象征。', '184', '13', '5', '5', '5', '30', '撞色', 'image/clotheBrand/one/imgOne_24.png', 'image/clotheBrand/two/imgTwo_24.png', 'image/clotheBrand/three/imgThree_24.png', 'image/clotheBrand/four/imgFour_24.png', 'image/clotheBrand/five/imgFive_24.png', null, null, null, '25', '10', '2013-05-06', '2013-06-05', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('25', '马克拉菲', '马克菲儿，以潮尚的姿态讲述关于衣服的故事。充满新意的创意搭配层出不穷，百变造型、充满活力与激情的都市独立女性、海派摩登人文的影响是马克菲儿一路坚持的信念.', '240', '14', '4', '2', '2', '31', '黑白', 'image/clotheBrand/one/imgOne_25.png', 'image/clotheBrand/two/imgTwo_25.png', 'image/clotheBrand/three/imgThree_25.png', 'image/clotheBrand/four/imgFour_25.png', 'image/clotheBrand/five/imgFive_25.png', null, null, null, '34', '22', '2008-05-02', '2009-01-21', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('26', 'GrowStyle 服饰', 'GrowStyle 服饰结合国内外时尚潮流，在设计上注重艺术与文化的结合，充分运用色与形的自然交融，为产品注入灵魂，表现出Growstye人的独特魅力及具有前瞻性的艺术视野。', '230', '15', '3', '4', '8', '8', '灰白', 'image/clotheBrand/one/imgOne_26.png', 'image/clotheBrand/two/imgTwo_26.png', 'image/clotheBrand/three/imgThree_26.png', 'image/clotheBrand/four/imgFour_26.png', 'image/clotheBrand/five/imgFive_26.png', null, null, null, '55', '38', '2012-12-21', '2012-12-23', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('27', '法拉狄奥品牌', 'PAUL FARADEAO先生以他简洁、高雅、艺术为设计理念创办了FARADEAO法拉狄奥品牌，一直延续至今，今天的FARADEAO法拉狄奥在几十年的沉淀及创新后已有了它特有的品牌风格，是时尚的风向标之一。', '240', '16', '5', '6', '7', '9', '粉色', 'image/clotheBrand/one/imgOne_27.png', 'image/clotheBrand/two/imgTwo_27.png', 'image/clotheBrand/three/imgThree_27.png', 'image/clotheBrand/four/imgFour_27.png', 'image/clotheBrand/five/imgFive_27.png', null, null, null, '25', '46', '2013-02-15', '2014-11-12', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('28', 'ZENL佐纳利', 'ZENL佐纳利服饰的产品崇尚自由、创新、随意的潮流风格，表现意大利时尚气息的同时彰显现代都市一族的青春和活力，大自然般清新随意，优雅的闲逸感，贵气但并非天真，打造青春潮人“平民贵族化”的不俗气质和自在悠然的奢华情调，把这些自信、活力的男性们打扮的像明星一样时尚、自信和耀眼。', '180', '17', '5', '4', '2', '10', '黑白', 'image/clotheBrand/one/imgOne_28.png', 'image/clotheBrand/two/imgTwo_28.png', 'image/clotheBrand/three/imgThree_28.png', 'image/clotheBrand/four/imgFour_28.png', 'image/clotheBrand/five/imgFive_28.png', null, null, null, '57', '56', '2013-05-16', '2014-05-03', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('29', 'IKKI(安娜与艾伦)', '安娜的百宝箱，里面装着各式各样的零星布料，孩子们非常喜欢围着安娜坐在草地上挑选自己喜爱的颜色和图案。安娜的善心慢慢地打动了身边的一位男孩-艾伦，每次艾伦都会细心地帮安娜记录下孩子们的尺寸，一起精心的缝制衣物赠送给孩子们，逐渐的发展成了一家小有规模的服装店。', '190', '18', '4', '4', '5', '11', '黑白', 'image/clotheBrand/one/imgOne_29.png', 'image/clotheBrand/two/imgTwo_29.png', 'image/clotheBrand/three/imgThree_29.png', 'image/clotheBrand/four/imgFour_29.png', 'image/clotheBrand/five/imgFive_29.png', null, null, null, '34', '46', '2013-04-21', '2013-04-23', '1');
INSERT INTO `tb_clotherbrandinfo` VALUES ('30', '“兰缔吉儿”休闲服饰', '“兰缔吉儿”休闲服饰品牌。兰缔吉儿品牌始于2005年，主营亲情休闲系列服饰(亲子装、情侣装)，是国内较早经营该系列服饰的品牌，品牌突出了都市亲情的个性特点和文化内涵，以独特的设计理念塑造经典都市生活，为和谐家庭塑造时尚、增添温馨。兰缔吉儿，让“家·多一点时尚”。', '260', '19', '4', '2', '5', '12', '黑白', 'image/clotheBrand/one/imgOne_30.png', 'image/clotheBrand/two/imgTwo_30.png', 'image/clotheBrand/three/imgThree_30.png', 'image/clotheBrand/four/imgFour_30.png', 'image/clotheBrand/five/imgFive_30.png', null, null, null, '89', '149', '2013-12-20', '2014-12-23', '1');

-- ----------------------------
-- Table structure for tb_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `collection_userId` int(11) NOT NULL COMMENT '收藏人ID（对应用户账号）',
  `collection_objectId` int(11) NOT NULL COMMENT '收藏对象ID',
  `collection_type` int(11) NOT NULL COMMENT '收藏对象类别（作品0、服装1、面料2）',
  `collection_datetime` varchar(50) NOT NULL COMMENT '时间',
  PRIMARY KEY (`collection_id`),
  KEY `collection_userID` (`collection_userId`),
  CONSTRAINT `tb_collection_ibfk_1` FOREIGN KEY (`collection_userID`) REFERENCES `tb_useraccount` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='tb_collection';

-- ----------------------------
-- Records of tb_collection
-- ----------------------------
INSERT INTO `tb_collection` VALUES ('1', '8', '3', '0', '2013-12-21');
INSERT INTO `tb_collection` VALUES ('2', '5', '5', '1', '2013-05-23');
INSERT INTO `tb_collection` VALUES ('3', '2', '5', '2', '2014-06-21');
INSERT INTO `tb_collection` VALUES ('4', '6', '4', '2', '2012-12-12');
INSERT INTO `tb_collection` VALUES ('5', '9', '6', '0', '2017-08-02');
INSERT INTO `tb_collection` VALUES ('6', '4', '6', '2', '2016-11-12');
INSERT INTO `tb_collection` VALUES ('7', '9', '7', '1', '2015-11-23');
INSERT INTO `tb_collection` VALUES ('8', '7', '6', '0', '2014-07-06');
INSERT INTO `tb_collection` VALUES ('9', '6', '7', '2', '2014-12-21');
INSERT INTO `tb_collection` VALUES ('10', '4', '9', '1', '2014-11-23');
INSERT INTO `tb_collection` VALUES ('11', '11', '11', '0', '2016-10-01');
INSERT INTO `tb_collection` VALUES ('12', '12', '11', '1', '2016-10-02');
INSERT INTO `tb_collection` VALUES ('13', '13', '11', '2', '2016-10-03');
INSERT INTO `tb_collection` VALUES ('14', '14', '12', '0', '2016-10-04');
INSERT INTO `tb_collection` VALUES ('15', '15', '12', '1', '2016-10-05');
INSERT INTO `tb_collection` VALUES ('16', '16', '12', '2', '2016-10-06');
INSERT INTO `tb_collection` VALUES ('17', '17', '13', '0', '2016-10-07');
INSERT INTO `tb_collection` VALUES ('18', '18', '13', '1', '2016-10-08');
INSERT INTO `tb_collection` VALUES ('19', '19', '13', '2', '2015-02-08');
INSERT INTO `tb_collection` VALUES ('20', '20', '14', '0', '2016-12-21');
INSERT INTO `tb_collection` VALUES ('21', '21', '21', '1', '2014-11-23');
INSERT INTO `tb_collection` VALUES ('22', '22', '22', '2', '2016-10-01');
INSERT INTO `tb_collection` VALUES ('23', '23', '23', '1', '2016-10-02');
INSERT INTO `tb_collection` VALUES ('24', '24', '24', '3', '2016-10-03');
INSERT INTO `tb_collection` VALUES ('25', '25', '25', '0', '2016-10-04');
INSERT INTO `tb_collection` VALUES ('26', '26', '26', '0', '2016-10-05');
INSERT INTO `tb_collection` VALUES ('27', '27', '27', '2', '2016-10-06');
INSERT INTO `tb_collection` VALUES ('28', '28', '28', '3', '2016-10-07');
INSERT INTO `tb_collection` VALUES ('29', '29', '29', '2', '2016-10-08');
INSERT INTO `tb_collection` VALUES ('30', '30', '30', '1', '2015-02-08');
INSERT INTO `tb_collection` VALUES ('37', '36', '10', '1', '2017-12-06 15:03:35');
INSERT INTO `tb_collection` VALUES ('38', '36', '20', '1', '2017-12-06 15:06:05');
INSERT INTO `tb_collection` VALUES ('39', '36', '23', '1', '2017-12-06 15:09:52');
INSERT INTO `tb_collection` VALUES ('40', '36', '29', '1', '2017-12-06 15:55:36');
INSERT INTO `tb_collection` VALUES ('48', '36', '32', '2', '2017-12-07 00:43:27');
INSERT INTO `tb_collection` VALUES ('49', '36', '40', '2', '2017-12-07 00:46:18');
INSERT INTO `tb_collection` VALUES ('50', '36', '25', '1', '2017-12-07 01:25:27');
INSERT INTO `tb_collection` VALUES ('51', '36', '25', '0', '2017-12-08 07:05:16');
INSERT INTO `tb_collection` VALUES ('53', '36', '91', '1', '2017-12-08 17:14:36');
INSERT INTO `tb_collection` VALUES ('54', '36', '15', '2', '2017-12-08 17:49:17');
INSERT INTO `tb_collection` VALUES ('55', '36', '67', '1', '2017-12-08 17:59:57');
INSERT INTO `tb_collection` VALUES ('57', '36', '35', '2', '2017-12-08 20:14:02');
INSERT INTO `tb_collection` VALUES ('59', '7', '87', '0', '2017-12-09 10:58:04');
INSERT INTO `tb_collection` VALUES ('60', '37', '16', '0', '2017-12-09 14:19:13');
INSERT INTO `tb_collection` VALUES ('61', '37', '25', '0', '2017-12-09 14:30:48');
INSERT INTO `tb_collection` VALUES ('65', '36', '91', '0', '2017-12-09 17:09:15');
INSERT INTO `tb_collection` VALUES ('66', '36', '4', '1', '2017-12-09 17:10:16');
INSERT INTO `tb_collection` VALUES ('67', '36', '63', '0', '2017-12-09 17:56:25');
INSERT INTO `tb_collection` VALUES ('68', '36', '2', '0', '2017-12-10 00:36:28');
INSERT INTO `tb_collection` VALUES ('69', '36', '28', '1', '2017-12-10 00:38:43');
INSERT INTO `tb_collection` VALUES ('70', '36', '92', '0', '2017-12-11 22:28:59');
INSERT INTO `tb_collection` VALUES ('71', '36', '96', '0', '2017-12-11 22:45:24');
INSERT INTO `tb_collection` VALUES ('72', '36', '28', '2', '2017-12-11 22:52:34');
INSERT INTO `tb_collection` VALUES ('73', '36', '8', '0', '2017-12-11 23:46:55');
INSERT INTO `tb_collection` VALUES ('74', '36', '9', '1', '2017-12-12 13:23:06');
INSERT INTO `tb_collection` VALUES ('75', '36', '38', '2', '2017-12-12 13:50:53');
INSERT INTO `tb_collection` VALUES ('76', '36', '83', '0', '2017-12-12 16:07:34');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `comment_content` longtext NOT NULL COMMENT '评论内容',
  `comment_commentatorId` int(11) NOT NULL COMMENT '评论人ID（关联用户表的ID）',
  `comment_type` int(11) NOT NULL COMMENT '评论对象类型（作品0、品牌服装1、布料辅料2、资讯3）',
  `comment_objectId` int(11) NOT NULL COMMENT '评论对象ID',
  `commnet_dateTime` varchar(50) NOT NULL COMMENT '时间',
  PRIMARY KEY (`comment_Id`),
  KEY `comment_commentatorId` (`comment_commentatorId`),
  CONSTRAINT `tb_comment_ibfk_1` FOREIGN KEY (`comment_commentatorId`) REFERENCES `tb_useraccount` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='tb_comment';

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('1', '设计图画的很不错，搭配的真好，设计师很厉害啊', '2', '0', '8', '2017-02-03');
INSERT INTO `tb_comment` VALUES ('2', '图片中的布料看起来很不错，就是不知道实物是什么情况', '4', '2', '2', '2016-05-21');
INSERT INTO `tb_comment` VALUES ('3', '一直都很喜欢这个牌子的衣服，赞', '6', '1', '9', '2015-02-21');
INSERT INTO `tb_comment` VALUES ('4', '布的面料很好，很适合我们的刺绣', '5', '2', '5', '2013-06-18');
INSERT INTO `tb_comment` VALUES ('5', '这作品看起来有点过时，不是很喜欢', '8', '0', '6', '2012-05-21');
INSERT INTO `tb_comment` VALUES ('6', '很喜欢这个类型的衣服，这个设计作品真的很喜欢', '4', '0', '9', '2013-06-05');
INSERT INTO `tb_comment` VALUES ('7', '这个信息来得正是时候嘛，不错', '5', '3', '10', '2014-03-23');
INSERT INTO `tb_comment` VALUES ('8', '这布料我买过比想象中的要厚', '6', '2', '2', '2014-05-26');
INSERT INTO `tb_comment` VALUES ('9', '这品牌的衣服都很耐穿，买了很多件', '7', '1', '7', '2015-12-30');
INSERT INTO `tb_comment` VALUES ('10', '是棉麻的，有点硬', '9', '2', '5', '2013-06-18');
INSERT INTO `tb_comment` VALUES ('11', '看着很喜欢设计很新颖，好看', '11', '0', '11', '2015-12-16');
INSERT INTO `tb_comment` VALUES ('12', '配色太好了吧这件作品，很喜欢', '12', '0', '12', '2016-05-06');
INSERT INTO `tb_comment` VALUES ('13', '很喜欢这件作品，理念很好', '13', '0', '12', '2016-06-18');
INSERT INTO `tb_comment` VALUES ('14', '很喜欢这个品牌的服装，赞', '14', '1', '14', '2017-10-02');
INSERT INTO `tb_comment` VALUES ('15', '这个品牌的服装风格我很喜欢，款式也很好看', '15', '1', '15', '2014-11-25');
INSERT INTO `tb_comment` VALUES ('16', '颜色搭配很好，款式也好看，很喜欢', '16', '1', '16', '2016-10-11');
INSERT INTO `tb_comment` VALUES ('17', '这个布料看起来颜色好看，不错', '17', '2', '17', '2016-04-05');
INSERT INTO `tb_comment` VALUES ('18', '这个布料材料很不错，看起来织的也很好', '18', '2', '18', '2017-10-05');
INSERT INTO `tb_comment` VALUES ('19', '这个信息很新，学到了', '19', '3', '19', '2017-10-11');
INSERT INTO `tb_comment` VALUES ('20', '在这个资讯中了解到了很多，学到了', '20', '3', '20', '2017-05-02');
INSERT INTO `tb_comment` VALUES ('21', '布料十分符合我的要求', '21', '2', '21', '2017-02-03');
INSERT INTO `tb_comment` VALUES ('22', '我很喜欢这个牌子的衣服！', '22', '1', '22', '2016-05-21');
INSERT INTO `tb_comment` VALUES ('23', '啊！我需要这种成分的斜纹布', '23', '2', '23', '2015-02-21');
INSERT INTO `tb_comment` VALUES ('24', '有没有其他类似的布料', '24', '2', '24', '2013-06-18');
INSERT INTO `tb_comment` VALUES ('25', '冬季服装还没出么？', '25', '1', '25', '2012-05-21');
INSERT INTO `tb_comment` VALUES ('26', '这个作品设计的很华丽啊，看得我都心动了', '26', '0', '26', '2013-06-05');
INSERT INTO `tb_comment` VALUES ('27', '有没有的卖？这个布料', '27', '2', '27', '2014-03-23');
INSERT INTO `tb_comment` VALUES ('28', '我想用这布料来做件衣服', '28', '2', '28', '2014-05-26');
INSERT INTO `tb_comment` VALUES ('29', '一直关注着但没钱买', '29', '1', '29', '2015-12-30');
INSERT INTO `tb_comment` VALUES ('30', '明天就去下订单买！', '30', '1', '30', '2013-06-18');
INSERT INTO `tb_comment` VALUES ('31', '这个资讯正是我现在最需要的，终于找到了', '23', '3', '3', '2017-12-06 09:37:39');
INSERT INTO `tb_comment` VALUES ('32', '真的学到了，赞', '36', '3', '3', '2017-12-06 09:41:36');
INSERT INTO `tb_comment` VALUES ('33', '不错的资讯，了解到了，666', '34', '3', '21', '2017-12-06 09:50:49');
INSERT INTO `tb_comment` VALUES ('34', '我觉得这个作品是需要改进的', '36', '3', '21', '2017-12-06 09:53:29');
INSERT INTO `tb_comment` VALUES ('35', '做衣服一直用的就是这种布料来着', '22', '2', '21', '2017-12-06 09:56:15');
INSERT INTO `tb_comment` VALUES ('36', '我不相信，这布料有那么好', '36', '2', '21', '2017-12-06 09:58:07');
INSERT INTO `tb_comment` VALUES ('37', '上次用过这种布料真的很不好用', '11', '2', '21', '2017-12-06 10:04:46');
INSERT INTO `tb_comment` VALUES ('38', '这个牌子的衣服太多了，都好喜欢', '13', '1', '21', '2017-12-06 10:07:45');
INSERT INTO `tb_comment` VALUES ('39', '其实这个作品色彩搭配不是很和谐，个人意见', '18', '0', '29', '2017-12-06 15:22:45');
INSERT INTO `tb_comment` VALUES ('40', '作品很好，希望作者能多设计这类型作品', '36', '0', '29', '2017-12-06 15:28:57');
INSERT INTO `tb_comment` VALUES ('41', '虽然别人觉得不好看，但是我就喜欢这类型的', '20', '0', '42', '2017-12-06 23:25:03');
INSERT INTO `tb_comment` VALUES ('42', '很想认识这作品的设计师，被圈粉了', '25', '0', '33', '2017-12-06 23:25:26');
INSERT INTO `tb_comment` VALUES ('43', '不喜欢这设计风格，觉得不好看', '31', '0', '42', '2017-12-06 23:25:50');
INSERT INTO `tb_comment` VALUES ('44', '有点失望，虽然设计风格是我的菜', '34', '0', '42', '2017-12-06 23:39:52');
INSERT INTO `tb_comment` VALUES ('45', '去年买了一件，很不错，穿着很舒适', '11', '1', '24', '2017-12-06 23:42:28');
INSERT INTO `tb_comment` VALUES ('46', '很想设计师能帮我设计一套服装，哈哈', '28', '0', '40', '2017-12-07 00:46:33');
INSERT INTO `tb_comment` VALUES ('47', '并不是我想知道的资讯，失望', '20', '3', '34', '2017-12-07 01:22:21');
INSERT INTO `tb_comment` VALUES ('48', '看起来不错，想去看看', '16', '3', '51', '2017-12-07 01:25:07');
INSERT INTO `tb_comment` VALUES ('49', '发现自己好喜欢这个作品', '18', '0', '91', '2017-12-08 16:47:29');
INSERT INTO `tb_comment` VALUES ('50', '设计的很不错哦，希望可以交流一下', '36', '0', '91', '2017-12-08 17:04:49');
INSERT INTO `tb_comment` VALUES ('51', '作品设计的很6，想法很大胆', '30', '0', '10', '2017-12-08 19:29:37');
INSERT INTO `tb_comment` VALUES ('52', '这颜色搭配我真的不敢苟同', '29', '0', '10', '2017-12-08 19:29:53');
INSERT INTO `tb_comment` VALUES ('53', '创意是不错，开始搭配做的也太水了吧', '37', '0', '16', '2017-12-09 14:19:36');
INSERT INTO `tb_comment` VALUES ('54', '厉害，佩服佩服', '36', '0', '87', '2017-12-09 17:13:49');
INSERT INTO `tb_comment` VALUES ('55', '你这想法也太夸张了吧，佩服', '2', '0', '11', '2017-12-09 17:14:42');
INSERT INTO `tb_comment` VALUES ('56', '灰色花园真迷人', '5', '0', '11', '2017-12-09 17:23:58');
INSERT INTO `tb_comment` VALUES ('58', '你这脑洞也是没谁了，牛', '9', '0', '17', '2017-12-09 17:37:29');
INSERT INTO `tb_comment` VALUES ('60', '感觉还有很多可以改进的地方啊', '11', '0', '77', '2017-12-09 17:41:35');
INSERT INTO `tb_comment` VALUES ('61', '很期待看到你跟多的作品', '25', '0', '63', '2017-12-09 17:42:53');
INSERT INTO `tb_comment` VALUES ('62', '希望作者多多更新，设计更多的作品', '29', '0', '63', '2017-12-09 17:43:25');
INSERT INTO `tb_comment` VALUES ('63', '总感觉嘛有点丑，不喜勿喷', '31', '0', '2', '2017-12-10 00:36:47');
INSERT INTO `tb_comment` VALUES ('64', 'so cool', '36', '3', '38', '2017-12-10 11:59:43');
INSERT INTO `tb_comment` VALUES ('65', '不好看，不喜欢', '21', '3', '38', '2017-12-10 12:08:05');
INSERT INTO `tb_comment` VALUES ('66', '这也是没谁了，看不下去了', '9', '3', '38', '2017-12-10 12:08:07');
INSERT INTO `tb_comment` VALUES ('67', '牛，是真的牛，无言以对', '18', '3', '38', '2017-12-10 12:08:54');
INSERT INTO `tb_comment` VALUES ('68', '没意见就是想占个楼', '19', '3', '38', '2017-12-10 12:09:03');
INSERT INTO `tb_comment` VALUES ('69', '我就 是路过的而已', '23', '3', '38', '2017-12-10 12:09:34');
INSERT INTO `tb_comment` VALUES ('70', '不是我想要的还是去别的逛逛吧', '20', '3', '38', '2017-12-10 12:10:02');
INSERT INTO `tb_comment` VALUES ('71', '别乱讲行吗，醉了', '17', '3', '38', '2017-12-10 12:19:54');
INSERT INTO `tb_comment` VALUES ('72', '在这里呢，找了贼久', '5', '3', '38', '2017-12-10 12:22:47');
INSERT INTO `tb_comment` VALUES ('73', '不错，很新的消息', '24', '3', '41', '2017-12-10 12:37:23');
INSERT INTO `tb_comment` VALUES ('74', '哈哈，过来占个楼', '31', '3', '41', '2017-12-10 12:37:25');
INSERT INTO `tb_comment` VALUES ('75', '喜欢这类资讯，感觉很受用', '2', '3', '41', '2017-12-10 12:37:27');
INSERT INTO `tb_comment` VALUES ('76', '还想知道更多这类的资讯', '14', '3', '41', '2017-12-10 12:37:29');
INSERT INTO `tb_comment` VALUES ('77', '找了很久终于找到了，正是不易啊', '23', '3', '41', '2017-12-10 12:37:32');
INSERT INTO `tb_comment` VALUES ('78', '这个品牌衣服不错，很值得购买的', '32', '1', '5', '2017-12-10 14:04:03');
INSERT INTO `tb_comment` VALUES ('79', '这个衣服不行啊，没穿多久就起球了', '9', '1', '5', '2017-12-10 14:06:52');
INSERT INTO `tb_comment` VALUES ('80', '虽然不是很耐穿但是穿着真的不错', '17', '1', '5', '2017-12-10 14:07:00');
INSERT INTO `tb_comment` VALUES ('81', '价格不高，质量又好真的没得说', '28', '1', '5', '2017-12-10 14:07:03');
INSERT INTO `tb_comment` VALUES ('82', '虽然 款式多样但是价格有点贵', '34', '1', '5', '2017-12-10 14:07:06');
INSERT INTO `tb_comment` VALUES ('83', '买不起，买不起，这么贵', '22', '1', '5', '2017-12-10 14:07:10');
INSERT INTO `tb_comment` VALUES ('84', '作者理念和我很相似希望有机会可以交流一下', '11', '0', '96', '2017-12-10 14:07:29');
INSERT INTO `tb_comment` VALUES ('85', '作品我贼喜欢，希望有机会能跟作者合作', '33', '0', '96', '2017-12-10 14:07:32');
INSERT INTO `tb_comment` VALUES ('86', '搭配的太完美了，非常喜欢', '26', '0', '96', '2017-12-10 14:07:36');
INSERT INTO `tb_comment` VALUES ('87', '能画的在潦草点吗，看不下去了', '12', '0', '96', '2017-12-10 14:07:38');
INSERT INTO `tb_comment` VALUES ('88', '希望设计师能继续努力', '18', '0', '96', '2017-12-10 14:07:40');
INSERT INTO `tb_comment` VALUES ('89', '理念很好但是作品有点不符啊', '21', '0', '96', '2017-12-10 14:07:42');
INSERT INTO `tb_comment` VALUES ('90', '你这个也太大胆了吧，不过我喜欢', '33', '0', '47', '2017-12-10 14:07:58');
INSERT INTO `tb_comment` VALUES ('91', '你这设计贼6，给你点个赞', '26', '0', '47', '2017-12-10 14:08:00');
INSERT INTO `tb_comment` VALUES ('92', '设计的很好，但可惜不是我需要的', '31', '0', '43', '2017-12-10 14:08:31');
INSERT INTO `tb_comment` VALUES ('93', '希望以后有机会一起合作，你设计的真的不错', '21', '0', '43', '2017-12-10 14:08:34');
INSERT INTO `tb_comment` VALUES ('94', '作品很好看，就觉得真的好看', '36', '0', '43', '2017-12-10 14:08:36');
INSERT INTO `tb_comment` VALUES ('95', '作品画的真的不错，厉害', '34', '0', '43', '2017-12-10 14:08:37');
INSERT INTO `tb_comment` VALUES ('96', '如果换另外一种颜色可能会好很多', '35', '0', '43', '2017-12-10 14:08:39');
INSERT INTO `tb_comment` VALUES ('97', '设计的不错嘛，可以交流一下', '21', '0', '43', '2017-12-10 14:09:07');
INSERT INTO `tb_comment` VALUES ('98', '这布料不好，手感不好', '26', '2', '43', '2017-12-10 14:17:52');
INSERT INTO `tb_comment` VALUES ('99', '这布料漂亮是漂亮但是真心不耐穿', '29', '2', '43', '2017-12-10 14:17:54');
INSERT INTO `tb_comment` VALUES ('100', '布料不错颜色很好看', '25', '2', '43', '2017-12-10 14:17:57');
INSERT INTO `tb_comment` VALUES ('101', '这布料的质量是真心不错，手感是真的好', '21', '2', '43', '2017-12-10 14:17:59');
INSERT INTO `tb_comment` VALUES ('102', '这是我找了很久的布料，一直找不到', '14', '2', '43', '2017-12-10 14:18:01');
INSERT INTO `tb_comment` VALUES ('103', '这布料真难找，终于找到了', '18', '2', '43', '2017-12-10 14:18:03');
INSERT INTO `tb_comment` VALUES ('104', '人才，设计的也太好了吧', '23', '0', '59', '2017-12-10 14:22:16');
INSERT INTO `tb_comment` VALUES ('105', '很中意，想买下来', '21', '0', '59', '2017-12-10 14:22:18');
INSERT INTO `tb_comment` VALUES ('106', '虽然很喜欢但是并不是我真正想要的', '11', '0', '59', '2017-12-10 14:22:20');
INSERT INTO `tb_comment` VALUES ('107', '这个设计作品不错，已收藏', '23', '0', '59', '2017-12-10 14:22:23');
INSERT INTO `tb_comment` VALUES ('108', '我想让你帮我设计一件衣服，可以私下联系一下吗', '31', '0', '59', '2017-12-10 14:22:24');
INSERT INTO `tb_comment` VALUES ('109', '理念是真的好，太喜欢了', '15', '0', '59', '2017-12-10 14:22:29');
INSERT INTO `tb_comment` VALUES ('110', '布料很厚不过手感不是很好', '26', '2', '41', '2017-12-10 14:22:56');
INSERT INTO `tb_comment` VALUES ('111', '布料价格比较便宜，不过质量不是很好', '32', '2', '41', '2017-12-10 14:22:58');
INSERT INTO `tb_comment` VALUES ('112', '花纹很好看，很喜欢', '13', '2', '41', '2017-12-10 14:22:59');
INSERT INTO `tb_comment` VALUES ('113', '我很中意，这布料是很不错', '24', '2', '41', '2017-12-10 14:23:01');
INSERT INTO `tb_comment` VALUES ('114', '质量很好买了好几块', '9', '2', '41', '2017-12-10 14:23:03');
INSERT INTO `tb_comment` VALUES ('115', '布料的质量和花纹都很好，赞', '19', '2', '41', '2017-12-10 14:23:07');
INSERT INTO `tb_comment` VALUES ('116', '这作品是真的好看，搭配贼6', '23', '0', '96', '2017-12-11 22:16:31');
INSERT INTO `tb_comment` VALUES ('117', 'denglu', '33', '0', '94', '2017-12-11 22:48:45');
INSERT INTO `tb_comment` VALUES ('118', '不是在', '22', '0', '96', '2017-12-12 00:39:57');

-- ----------------------------
-- Table structure for tb_designerflag
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerflag`;
CREATE TABLE `tb_designerflag` (
  `designerFlag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `designerFlag_designerId` int(11) NOT NULL COMMENT '设计师id，与设计师表的设计师id关联',
  `designerFlag` int(11) NOT NULL COMMENT '设计标签，与数据字典表中设计标签id关联',
  `designerFlag_likeCount` int(11) DEFAULT '0' COMMENT '人气指数（该类作品被喜欢时加一）',
  PRIMARY KEY (`designerFlag_id`),
  KEY `designerFlag_designerId` (`designerFlag_designerId`),
  CONSTRAINT `tb_designerflag_ibfk_1` FOREIGN KEY (`designerFlag_designerId`) REFERENCES `tb_designerinfo` (`designer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerflag
-- ----------------------------
INSERT INTO `tb_designerflag` VALUES ('1', '5', '2', '23');
INSERT INTO `tb_designerflag` VALUES ('2', '6', '5', '32');
INSERT INTO `tb_designerflag` VALUES ('3', '4', '4', '22');
INSERT INTO `tb_designerflag` VALUES ('4', '8', '1', '56');
INSERT INTO `tb_designerflag` VALUES ('5', '4', '6', '2887');
INSERT INTO `tb_designerflag` VALUES ('6', '9', '7', '77');
INSERT INTO `tb_designerflag` VALUES ('7', '3', '6', '89');
INSERT INTO `tb_designerflag` VALUES ('8', '7', '2', '45');
INSERT INTO `tb_designerflag` VALUES ('9', '5', '1', '9887');
INSERT INTO `tb_designerflag` VALUES ('10', '2', '8', '12');
INSERT INTO `tb_designerflag` VALUES ('11', '11', '2', '13');
INSERT INTO `tb_designerflag` VALUES ('12', '12', '5', '4545');
INSERT INTO `tb_designerflag` VALUES ('13', '13', '4', '56');
INSERT INTO `tb_designerflag` VALUES ('14', '14', '1', '89');
INSERT INTO `tb_designerflag` VALUES ('15', '15', '6', '262');
INSERT INTO `tb_designerflag` VALUES ('16', '16', '7', '12');
INSERT INTO `tb_designerflag` VALUES ('17', '17', '6', '55');
INSERT INTO `tb_designerflag` VALUES ('18', '18', '2', '8978');
INSERT INTO `tb_designerflag` VALUES ('19', '19', '1', '56');
INSERT INTO `tb_designerflag` VALUES ('20', '20', '8', '66');
INSERT INTO `tb_designerflag` VALUES ('21', '21', '2', '73');
INSERT INTO `tb_designerflag` VALUES ('22', '22', '5', '8345');
INSERT INTO `tb_designerflag` VALUES ('23', '23', '4', '71');
INSERT INTO `tb_designerflag` VALUES ('24', '24', '1', '62');
INSERT INTO `tb_designerflag` VALUES ('25', '25', '6', '21745');
INSERT INTO `tb_designerflag` VALUES ('26', '26', '7', '71');
INSERT INTO `tb_designerflag` VALUES ('27', '27', '6', '81');
INSERT INTO `tb_designerflag` VALUES ('28', '28', '2', '53');
INSERT INTO `tb_designerflag` VALUES ('29', '29', '1', '392');
INSERT INTO `tb_designerflag` VALUES ('30', '30', '8', '188');
INSERT INTO `tb_designerflag` VALUES ('31', '34', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('32', '34', '7', '0');
INSERT INTO `tb_designerflag` VALUES ('33', '34', '6', '0');
INSERT INTO `tb_designerflag` VALUES ('34', '35', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('35', '35', '3', '0');
INSERT INTO `tb_designerflag` VALUES ('36', '35', '7', '0');
INSERT INTO `tb_designerflag` VALUES ('37', '36', '0', '0');
INSERT INTO `tb_designerflag` VALUES ('38', '36', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('39', '36', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('40', '37', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('41', '37', '0', '0');
INSERT INTO `tb_designerflag` VALUES ('42', '37', '3', '0');
INSERT INTO `tb_designerflag` VALUES ('43', '38', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('44', '38', '2', '0');
INSERT INTO `tb_designerflag` VALUES ('45', '38', '5', '0');
INSERT INTO `tb_designerflag` VALUES ('46', '39', '0', '0');
INSERT INTO `tb_designerflag` VALUES ('47', '39', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('64', '45', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('65', '45', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('66', '45', '7', '0');
INSERT INTO `tb_designerflag` VALUES ('67', '46', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('68', '46', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('69', '46', '7', '0');
INSERT INTO `tb_designerflag` VALUES ('70', '36', '5', '0');
INSERT INTO `tb_designerflag` VALUES ('71', '47', '1', '1');
INSERT INTO `tb_designerflag` VALUES ('72', '47', '2', '0');
INSERT INTO `tb_designerflag` VALUES ('73', '47', '3', '125');
INSERT INTO `tb_designerflag` VALUES ('74', '20', '2', '0');
INSERT INTO `tb_designerflag` VALUES ('75', '21', '3', '0');
INSERT INTO `tb_designerflag` VALUES ('76', '24', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('77', '25', '2', '0');
INSERT INTO `tb_designerflag` VALUES ('78', '26', '2', '0');
INSERT INTO `tb_designerflag` VALUES ('79', '24', '3', '0');
INSERT INTO `tb_designerflag` VALUES ('80', '25', '3', '0');
INSERT INTO `tb_designerflag` VALUES ('81', '26', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('82', '48', '0', '0');
INSERT INTO `tb_designerflag` VALUES ('83', '49', '4', '0');
INSERT INTO `tb_designerflag` VALUES ('84', '50', '10', '0');
INSERT INTO `tb_designerflag` VALUES ('85', '51', '1', '0');
INSERT INTO `tb_designerflag` VALUES ('86', '52', '1', '0');

-- ----------------------------
-- Table structure for tb_designerfocus
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerfocus`;
CREATE TABLE `tb_designerfocus` (
  `designerFocus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `designerFocus_userId` int(11) NOT NULL COMMENT '用户ID(关联用户表的ID)',
  `designerFocus_designerID` int(11) NOT NULL COMMENT '设计师ID(关联设计师表的ID)',
  PRIMARY KEY (`designerFocus_id`),
  KEY `designerFocus_userId` (`designerFocus_userId`),
  KEY `designerFocus_designerID` (`designerFocus_designerID`),
  CONSTRAINT `tb_designerfocus_ibfk_1` FOREIGN KEY (`designerFocus_userId`) REFERENCES `tb_useraccount` (`user_id`),
  CONSTRAINT `tb_designerfocus_ibfk_2` FOREIGN KEY (`designerFocus_designerID`) REFERENCES `tb_designerinfo` (`designer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='tb_designerFocus';

-- ----------------------------
-- Records of tb_designerfocus
-- ----------------------------
INSERT INTO `tb_designerfocus` VALUES ('1', '5', '6');
INSERT INTO `tb_designerfocus` VALUES ('2', '6', '8');
INSERT INTO `tb_designerfocus` VALUES ('3', '8', '9');
INSERT INTO `tb_designerfocus` VALUES ('4', '4', '1');
INSERT INTO `tb_designerfocus` VALUES ('5', '9', '4');
INSERT INTO `tb_designerfocus` VALUES ('6', '6', '3');
INSERT INTO `tb_designerfocus` VALUES ('7', '1', '6');
INSERT INTO `tb_designerfocus` VALUES ('8', '2', '3');
INSERT INTO `tb_designerfocus` VALUES ('9', '6', '7');
INSERT INTO `tb_designerfocus` VALUES ('10', '7', '2');
INSERT INTO `tb_designerfocus` VALUES ('11', '15', '11');
INSERT INTO `tb_designerfocus` VALUES ('12', '21', '12');
INSERT INTO `tb_designerfocus` VALUES ('13', '22', '13');
INSERT INTO `tb_designerfocus` VALUES ('14', '23', '14');
INSERT INTO `tb_designerfocus` VALUES ('15', '24', '15');
INSERT INTO `tb_designerfocus` VALUES ('16', '11', '16');
INSERT INTO `tb_designerfocus` VALUES ('17', '12', '17');
INSERT INTO `tb_designerfocus` VALUES ('18', '13', '18');
INSERT INTO `tb_designerfocus` VALUES ('19', '14', '19');
INSERT INTO `tb_designerfocus` VALUES ('20', '25', '20');
INSERT INTO `tb_designerfocus` VALUES ('21', '26', '21');
INSERT INTO `tb_designerfocus` VALUES ('22', '27', '22');
INSERT INTO `tb_designerfocus` VALUES ('23', '28', '23');
INSERT INTO `tb_designerfocus` VALUES ('24', '29', '24');
INSERT INTO `tb_designerfocus` VALUES ('25', '30', '25');
INSERT INTO `tb_designerfocus` VALUES ('26', '31', '26');
INSERT INTO `tb_designerfocus` VALUES ('27', '32', '27');
INSERT INTO `tb_designerfocus` VALUES ('28', '33', '28');
INSERT INTO `tb_designerfocus` VALUES ('29', '34', '29');
INSERT INTO `tb_designerfocus` VALUES ('30', '35', '30');
INSERT INTO `tb_designerfocus` VALUES ('31', '10', '47');
INSERT INTO `tb_designerfocus` VALUES ('32', '11', '47');
INSERT INTO `tb_designerfocus` VALUES ('33', '36', '10');
INSERT INTO `tb_designerfocus` VALUES ('34', '36', '11');
INSERT INTO `tb_designerfocus` VALUES ('35', '36', '14');
INSERT INTO `tb_designerfocus` VALUES ('36', '36', '29');
INSERT INTO `tb_designerfocus` VALUES ('37', '37', '25');
INSERT INTO `tb_designerfocus` VALUES ('38', '36', '20');

-- ----------------------------
-- Table structure for tb_designerinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerinfo`;
CREATE TABLE `tb_designerinfo` (
  `designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id 自增长',
  `designer_userId` int(11) NOT NULL COMMENT '账号id,关联用户账号表的主键',
  `designer_image` varchar(255) DEFAULT NULL COMMENT '个人照片',
  `designer_name` varchar(255) DEFAULT NULL COMMENT '个人姓名',
  `designer_gender` int(11) DEFAULT '0' COMMENT '性别（男：0，女：1）',
  `designer_likeNum` int(11) DEFAULT '0' COMMENT '被点赞数、',
  `designer_birthday` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `designer_phone` varchar(255) NOT NULL COMMENT '电话号码',
  `designer_education` varchar(255) DEFAULT NULL COMMENT '学历',
  `designer_experience` varchar(255) DEFAULT NULL COMMENT '从业经验',
  `designer_changeTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`designer_id`),
  KEY `designer_id` (`designer_id`),
  KEY `designer_userId` (`designer_userId`),
  CONSTRAINT `tb_designerinfo_ibfk_1` FOREIGN KEY (`designer_userId`) REFERENCES `tb_useraccount` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerinfo
-- ----------------------------
INSERT INTO `tb_designerinfo` VALUES ('1', '1', 'image/designerImage/designer_1.png', '张雨晴', '0', '4553', '1987-12-24', '13654987524', '本科', '8年设计经验', '2012-01-03');
INSERT INTO `tb_designerinfo` VALUES ('2', '2', 'image/designerImage/designer_2.png', '郭子健', '1', '4564', '1982-12-21', '15987465234', '硕士', '10年设计经验', '2013-06-04');
INSERT INTO `tb_designerinfo` VALUES ('3', '3', 'image/designerImage/designer_3.png', '王子君', '0', '1221', '1990-11-01', '15698746256', '本科', '5年设计经验', '2013-05-19');
INSERT INTO `tb_designerinfo` VALUES ('4', '4', 'image/designerImage/designer_4.png', '袁莎', '0', '5354', '1985-12-19', '14895752562', '博士', '6年设计经验', '2014-05-23');
INSERT INTO `tb_designerinfo` VALUES ('5', '5', 'image/designerImage/designer_5.png', '郭子涵', '1', '1645', '1983-12-20', '15987465236', '本科', '4年设计经验', '2013-06-12');
INSERT INTO `tb_designerinfo` VALUES ('6', '6', 'image/designerImage/designer_6.png', '林俊', '1', '465', '1984-02-23', '15987562549', '本科', '3年设计经验', '2010-05-05');
INSERT INTO `tb_designerinfo` VALUES ('7', '7', 'image/designerImage/designer_7.png', '林海', '1', '456', '1980-11-23', '15984622346', '硕士', '8年设计经验', '2011-12-23');
INSERT INTO `tb_designerinfo` VALUES ('8', '8', 'image/designerImage/designer_8.png', '张子琪', '0', '8789', '1984-05-26', '15956564236', '本科', '7年设计经验', '2014-06-25');
INSERT INTO `tb_designerinfo` VALUES ('9', '9', 'image/designerImage/designer_9.png', '李斌', '1', '18673', '1970-01-03', '15646526562', '硕士', '15年设计经验', '2016-02-22');
INSERT INTO `tb_designerinfo` VALUES ('10', '10', 'image/designerImage/designer_10.png', '张辉', '1', '45681', '1980-11-12', '16654984822', '本科', '6年设计经验', '2010-09-28');
INSERT INTO `tb_designerinfo` VALUES ('11', '11', 'image/designerImage/designer_11.jpg', '陆希', '0', '4386', '1980-10-01', '13713713701', '大专', '3年工作经验', '2016-10-01');
INSERT INTO `tb_designerinfo` VALUES ('12', '12', 'image/designerImage/designer_12.jpg', '李敏', '0', '5656', '1982-12-03', '13713713702', '本科', '无工作经验', '2016-05-06');
INSERT INTO `tb_designerinfo` VALUES ('13', '13', 'image/designerImage/designer_13.jpg', '林夕', '0', '7887', '1981-05-06', '13713713703', '高中', '2年工作经验', '2015-07-23');
INSERT INTO `tb_designerinfo` VALUES ('14', '14', 'image/designerImage/designer_14.jpg', '鲁明', '0', '16823', '1981-08-19', '13713713704', '本科', '15年设计经验', '2015-04-04');
INSERT INTO `tb_designerinfo` VALUES ('15', '15', 'image/designerImage/designer_15.jpg', '赵小刀', '0', '5542', '1980-10-09', '13713713705', '本科', '无工作经验', '2014-07-22');
INSERT INTO `tb_designerinfo` VALUES ('16', '21', 'image/designerImage/designer_16.jpg', '林秀', '1', '454', '1985-10-10', '13713713706', '大专', '5年设计经验', '2016-09-19');
INSERT INTO `tb_designerinfo` VALUES ('17', '22', 'image/designerImage/designer_17.jpg', '张小小', '1', '4635', '1980-06-07', '13713713707', '初中', '6年设计经验', '2016-08-28');
INSERT INTO `tb_designerinfo` VALUES ('18', '23', 'image/designerImage/designer_18.jpg', '白展堂', '1', '1868', '1980-08-17', '13713713708', '本科', '4年设计经验', '2015-05-25');
INSERT INTO `tb_designerinfo` VALUES ('19', '24', 'image/designerImage/designer_19.jpg', '李岚', '1', '6553', '1980-09-24', '13713713709', '本科', '无工作经验', '2014-10-10');
INSERT INTO `tb_designerinfo` VALUES ('20', '25', 'image/designerImage/designer_20.jpg', '吴珊珊', '1', '5453', '1981-09-23', '13713713710', '大专', '无工作经验', '2015-10-25');
INSERT INTO `tb_designerinfo` VALUES ('21', '26', 'image/designerImage/designer_21.png', '刘小飞', '1', '2843', '1987-12-24', '12803458441', '本科', '12年工作经验', '2012-01-03');
INSERT INTO `tb_designerinfo` VALUES ('22', '27', 'image/designerImage/designer_22.png', '刘池', '0', '8987', '1982-12-21', '17864414247', '硕士', '7年设计经验', '2013-06-04');
INSERT INTO `tb_designerinfo` VALUES ('23', '29', 'image/designerImage/designer_23.png', '李冰', '1', '4896', '1990-11-01', '15025549664', '本科', '15年设计经验', '2013-05-19');
INSERT INTO `tb_designerinfo` VALUES ('24', '33', 'image/designerImage/designer_24.png', '张凯发', '0', '3674', '1985-12-19', '12167467351', '博士', '6年设计经验', '2014-05-23');
INSERT INTO `tb_designerinfo` VALUES ('25', '34', 'image/designerImage/designer_25.png', '观冠', '1', '8966', '1983-12-20', '18782477433', '本科', '7年工作经验', '2013-06-12');
INSERT INTO `tb_designerinfo` VALUES ('26', '46', 'image/designerImage/designer_26.png', '陆依萍', '1', '4566', '1984-02-23', '13564996969', '本科', '无工作经验', '2010-05-05');
INSERT INTO `tb_designerinfo` VALUES ('27', '47', 'image/designerImage/designer_27.png', '张武', '0', '6752', '1980-11-23', '14925124815', '硕士', '无工作经验', '2011-12-23');
INSERT INTO `tb_designerinfo` VALUES ('28', '49', 'image/designerImage/designer_28.png', '吴小易', '1', '8795', '1984-05-26', '18287638541', '本科', '8年设计经验', '2014-06-25');
INSERT INTO `tb_designerinfo` VALUES ('29', '50', 'image/designerImage/designer_29.png', '陈先成', '1', '7489', '1970-01-03', '15253455348', '硕士', '10年设计经验', '2016-02-22');
INSERT INTO `tb_designerinfo` VALUES ('30', '51', 'image/designerImage/designer_30.png', '蒋毅', '1', '8753', '1980-11-12', '17166491745', '本科', '6年设计经验', '2010-09-28');
INSERT INTO `tb_designerinfo` VALUES ('31', '52', 'image/designerImage/designer_31.png', '吴茉莉', '0', '565', '1990-11-01', '18532564864', '本科', '4年设计经验', '2013-12-23');
INSERT INTO `tb_designerinfo` VALUES ('32', '53', 'image/designerImage/designer_32.png', '席丽拉', '0', '123', '1985-12-19', '18532564865', '本科', '3年设计经验', '2013-12-23');
INSERT INTO `tb_designerinfo` VALUES ('34', '54', 'image/designerImage/designer_34.png', '赵阳', '0', '452', '1983-12-20', '18532564866', '硕士', '8年设计经验', '2002-12-25');
INSERT INTO `tb_designerinfo` VALUES ('35', '60', 'image/designerImage/designer_35.png', '陈观里', '0', '456', '1984-02-23', '15118648953', '本科', '4年设计经验', '2015-12-12');
INSERT INTO `tb_designerinfo` VALUES ('36', '61', 'image/designerImage/designer_36.png', '钱柏豪', '0', '456', '1980-11-23', '13568256432', '硕士', '3年设计经验', '2014-05-13');
INSERT INTO `tb_designerinfo` VALUES ('37', '52', 'image/designerImage/designer_37.png', '周萍', '0', '213', '1984-05-26', '12623654852', '本科', '8年设计经验', '2016-08-30');
INSERT INTO `tb_designerinfo` VALUES ('38', '53', 'image/designerImage/designer_38.png', '侯秀琳', '0', '213', '1998-11-02', '13256455874', '本科', '7年设计经验', '2016-05-04');
INSERT INTO `tb_designerinfo` VALUES ('39', '54', 'image/designerImage/designer_39.png', '郭晓棋', '0', '45', '1999-02-12', '15118645953', '本科', '15年设计经验', '2016-03-04');
INSERT INTO `tb_designerinfo` VALUES ('45', '60', 'image/designerImage/designer_45.png', '林莎', '0', '456', '1984-12-21', '13570426259', '硕士', '8年设计经验', '2016-05-11');
INSERT INTO `tb_designerinfo` VALUES ('46', '61', 'image/designerImage/designer_46.png', '韦海洋', '0', '13', '1988-11-14', '15325698523', '本科', '10年设计经验', '2015-08-19');
INSERT INTO `tb_designerinfo` VALUES ('47', '36', 'image/designerImage/designer_47.png', '伍茜茜', '1', '2131', '1986-12-23', '13502453265', '硕士', '5年设计经验', '2016-12-25');
INSERT INTO `tb_designerinfo` VALUES ('48', '68', 'image/designerImage/designer_48.png', '林海龙', '0', '58', '1990-11-01', '15113835849', '本科', '无工作经验', '2015-07-23');
INSERT INTO `tb_designerinfo` VALUES ('49', '69', 'image/designerImage/designer_49.png', '谢思琪', '0', '678', '1985-12-19', '17166491745', '本科', '6年设计经验', '2015-04-04');
INSERT INTO `tb_designerinfo` VALUES ('50', '70', 'image/designerImage/designer_50.png', '吴伯萧', '0', '57', '1983-12-20', '18532564864', '本科', '4年设计经验', '2014-07-22');
INSERT INTO `tb_designerinfo` VALUES ('51', '72', 'image/designerImage/designer_51.png', '吴俊毅', '0', '98', '1984-02-23', '18532564865', '大专', '3年设计经验', '2016-09-19');
INSERT INTO `tb_designerinfo` VALUES ('52', '75', 'image/designerImage/designer_52.png', '苏华俊', '0', '247', '1980-11-23', '18532564866', '初中', '8年设计经验', '2016-08-28');

-- ----------------------------
-- Table structure for tb_designerworks
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerworks`;
CREATE TABLE `tb_designerworks` (
  `designerWorks_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `designerWorks_designerId` int(11) NOT NULL COMMENT '设计师ID，与用户表的设计师ID关联',
  `designerWorks_specialId` int(11) NOT NULL COMMENT '专辑id,与专辑表的专辑id关联',
  `designerWorks_effectImage` varchar(255) NOT NULL COMMENT '效果图',
  `designerWorks_styleImage` varchar(255) DEFAULT NULL COMMENT '款式图',
  `designerWorks_technologyImage` varchar(255) DEFAULT NULL COMMENT '工艺图',
  `designerWorks_fabricImage` varchar(255) DEFAULT NULL COMMENT '面料图',
  `designerWorks_finishImage` varchar(255) DEFAULT NULL COMMENT '成衣图',
  `designerworks_otherImage` varchar(255) DEFAULT NULL COMMENT '其他图',
  `designerWorks_workName` varchar(255) NOT NULL COMMENT '作品名称',
  `designerWorks_type` varchar(11) DEFAULT NULL COMMENT '作品分类，关联字典数据中作品分类的id',
  `designerWorks_style` int(11) DEFAULT NULL COMMENT '作品风格，关联字典数据表中作品风格id',
  `designerWorks_fabric` int(11) DEFAULT NULL COMMENT '作品面料，关联字典数据表中作品面料id',
  `designerWorks_model` int(11) DEFAULT NULL COMMENT '款式，关联字典数据中款式id',
  `designerWorks_colors` varchar(255) NOT NULL COMMENT '色彩',
  `designerWorks_des` longtext COMMENT '描述',
  `designerWorks_likeCount` int(11) DEFAULT NULL COMMENT '被喜欢次数',
  `designerWorks_collectionCount` int(11) DEFAULT NULL COMMENT '被收藏次数',
  `designerWorks_publishTime` varchar(255) DEFAULT NULL COMMENT '发表时间',
  `designerWorks_changeTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `designerWorks_status` int(11) DEFAULT '1' COMMENT '状态（正常1，删除0）',
  PRIMARY KEY (`designerWorks_id`),
  KEY `designerWorks_designerId` (`designerWorks_designerId`),
  KEY `designerWorks_specialId` (`designerWorks_specialId`),
  CONSTRAINT `tb_designerworks_ibfk_1` FOREIGN KEY (`designerWorks_designerId`) REFERENCES `tb_designerinfo` (`designer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerworks
-- ----------------------------
INSERT INTO `tb_designerworks` VALUES ('1', '1', '1', 'image/designerWorks/effect/effect_1.png', 'image/designerWorks/style/style_1.png', 'image/designerWorks/technology/technology_1.png', 'image/designerWorks/fabric/fabric_1.png', 'image/designerWorks/finish/finish_1.png', 'image/designerWorks/other/other_1.png', '大雨将至', 'C010101', '1', '11', '1', '黑白', '此设计追求的境界说到底是风格的定位和设计，服装风格表现了设计师独特的创作思想，艺术追求，也反映了鲜明的时代特色', '12', '246', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('2', '5', '2', 'image/designerWorks/effect/effect_2.png', 'image/designerWorks/style/style_2.png', 'image/designerWorks/technology/technology_2.png', 'image/designerWorks/fabric/fabric_2.png', 'image/designerWorks/finish/finish_2.png', 'image/designerWorks/other/other_2.png', '净悦念', 'C010102', '2', '15', '2', '彩色', '作品主打“伊人风尚”主要受众群是年轻白领；而“服饰美容”大家都可以看。但总体说来，瑞丽的主要风格还是以甜美优雅深入人心。', '2012', '209', '2016-08-09', '2016-10-11', '1');
INSERT INTO `tb_designerworks` VALUES ('3', '3', '3', 'image/designerWorks/effect/effect_3.png', 'image/designerWorks/style/style_3.png', 'image/designerWorks/technology/technology_3.png', 'image/designerWorks/fabric/fabric_3.png', 'image/designerWorks/finish/finish_3.png', 'image/designerWorks/other/other_3.png', '圣湖', 'C010103', '1', '11', '3', '撞色', '设计从细节上看，繁复的印花、圆形的口袋、细致的腰部缝合线、粗糙的毛边、珠宝的配饰等，都将成为个性化穿着的表达方式', '35', '552', '2014-05-06', '2014-08-08', '1');
INSERT INTO `tb_designerworks` VALUES ('4', '4', '4', 'image/designerWorks/effect/effect_4.png', 'image/designerWorks/style/style_4.png', 'image/designerWorks/technology/technology_4.png', 'image/designerWorks/fabric/fabric_4.png', 'image/designerWorks/finish/finish_4.png', 'image/designerWorks/other/other_4.png', '沁心', 'C010104', '3', '15', '4', '灰白', '此作品可以搭配各类衣服,很实用的单件服饰，与其他款式、颜色的服饰均能产生一定的效果.一般都是比较基本的、经典的样式或颜色。如纯色系服装，牛仔裤等。', '54', '44', '2016-05-01', '2017-01-01', '1');
INSERT INTO `tb_designerworks` VALUES ('5', '5', '5', 'image/designerWorks/effect/effect_5.png', 'image/designerWorks/style/style_5.png', 'image/designerWorks/technology/technology_5.png', 'image/designerWorks/fabric/fabric_5.png', 'image/designerWorks/finish/finish_5.png', 'image/designerWorks/other/other_5.png', '唯度', 'C010105', '5', '57', '5', '黑白', '以海洋元素为灵感源的家居服设计，这套家居服打破了传统概念上家居服就是睡衣的刻板印象，款式变化多样，包括晨起活动、在家会客等时间段的服装，整个设计宽松舒适，给人轻松、明快的感觉', '11', '356', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('6', '6', '6', 'image/designerWorks/effect/effect_6.png', 'image/designerWorks/style/style_6.png', 'image/designerWorks/technology/technology_6.png', 'image/designerWorks/fabric/fabric_6.png', 'image/designerWorks/finish/finish_6.png', 'image/designerWorks/other/other_6.png', '优胜怡', 'C010106', '6', '16', '6', '粉色', '此作品体现现代都市人何尝不是这样的处境，被生活磨炼的失去棱角，却在各自的剧场中努力绽放自己，在白天穿上形形色色的舞台服，扮演着各种别人所 期待看到的角色，而回到家中自己最希望换上那一身属于自己最真实最舒适的家居服。本次家居服设计的灵感正是来源于木偶人，宽大的廓形设计，夸张的打散方式，体现现代人的追求个性，不忘真我的特点。色彩采用舒适的暖灰色调，温馨而又时尚大气。材质经过了面料的搓揉，折叠等再处理，以及不同的软硬面料的相互碰撞，使得本系列设计增添更多的趣味性。', '22', '203', '2014-03-01', '2015-03-08', '1');
INSERT INTO `tb_designerworks` VALUES ('7', '7', '7', 'image/designerWorks/effect/effect_7.png', 'image/designerWorks/style/style_7.png', 'image/designerWorks/technology/technology_7.png', 'image/designerWorks/fabric/fabric_7.png', 'image/designerWorks/finish/finish_7.png', 'image/designerWorks/other/other_7.png', '魔鬼百变', 'C010107', '7', '52', '1', '黑色', '自然清新、优雅宜人是淑女风格的概括。蕾丝与褶边是柔美新淑女风格的两大时尚标志', '1024', '232', '2012-08-04', '2013-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('8', '8', '8', 'image/designerWorks/effect/effect_8.png', 'image/designerWorks/style/style_8.png', 'image/designerWorks/technology/technology_8.png', 'image/designerWorks/fabric/fabric_8.png', 'image/designerWorks/finish/finish_8.png', 'image/designerWorks/other/other_8.png', '深水不见', 'C010201', '1', '12', '2', '蓝色', '体现最典型的韩装那种淡淡的纯度很高的色彩；面料精当，面料更多喜欢用棉，锦等很舒适的面料；贴身剪裁、做工精细，特别是上身部分裁减精致贴身。', '521', '815', '2008-11-02', '2008-11-02', '1');
INSERT INTO `tb_designerworks` VALUES ('9', '9', '9', 'image/designerWorks/effect/effect_9.png', 'image/designerWorks/style/style_9.png', 'image/designerWorks/technology/technology_9.png', 'image/designerWorks/fabric/fabric_9.png', 'image/designerWorks/finish/finish_9.png', 'image/designerWorks/other/other_9.png', '可可小姐', 'C010202', '5', '41', '2', '黑白', '主张大气、简洁，面料自然，比较随意,比较简约搭配感和设计感强。', '5525', '92', '2015-05-04', '2015-06-07', '1');
INSERT INTO `tb_designerworks` VALUES ('10', '10', '10', 'image/designerWorks/effect/effect_10.png', 'image/designerWorks/style/style_10.png', 'image/designerWorks/technology/technology_10.png', 'image/designerWorks/fabric/fabric_10.png', 'image/designerWorks/finish/finish_10.png', 'image/designerWorks/other/other_10.jpg', '苗雨', 'C010203', '8', '25', '3', '粉色', '也许身处校园生活的你，总是想方设法找机会把自己打扮得性感成熟，但只要一旦踏出校门，很快你就会重新迷恋简单却又充满理性的学院派风格。针织帽、藏青裙、条纹衫、白衬衫……', '825', '758', '2009-04-07', '2010-06-04', '1');
INSERT INTO `tb_designerworks` VALUES ('11', '11', '11', 'image/designerWorks/effect/effect_11.jpg', 'image/designerWorks/style/style_11.jpg', 'image/designerWorks/technology/technology_11.jpg', 'image/designerWorks/fabric/fabric_11.jpg', 'image/designerWorks/finish/finish_11.jpg', 'image/designerWorks/other/other_11.jpg', '灰色花园', 'C010204', '1', '53', '6', '灰色和白色为主', '设计造型上则采用于A型、X型H型相结合，服结构设计上能有所突破。礼服通过太空棉和刺绣花蕾丝（有立体、肌理）及精致的面料。 服装的面料是用制作服装的材料，作为三要素之一，面料不仅可以接受服装的风格和特点，而且可以接受服装的色彩和造型表现的效果。本款采用了白色的太空棉与黑色、白色、灰色三种的刺绣花蕾丝。', '6821', '100', '2016-10-01', '2017-10-01', '1');
INSERT INTO `tb_designerworks` VALUES ('12', '12', '12', 'image/designerWorks/effect/effect_12.jpg', 'image/designerWorks/style/style_12.jpg', 'image/designerWorks/technology/technology_12.jpg', 'image/designerWorks/fabric/fabric_12.jpg', 'image/designerWorks/finish/finish_12.jpg', 'image/designerWorks/other/other_12.jpg', '爱莲新说', 'C010301', '1', '50', '5', '色彩丰富', '以粉红、粉蓝、白色等粉色系列为主，衣料选用大量蕾丝，务求缔造出洋娃娃般的可爱和烂漫。', '4565', '236', '2016-05-11', '2016-11-11', '1');
INSERT INTO `tb_designerworks` VALUES ('13', '13', '13', 'image/designerWorks/effect/effect_13.jpg', 'image/designerWorks/style/style_13.jpg', 'image/designerWorks/technology/technology_13.jpg', 'image/designerWorks/fabric/fabric_13.jpg', 'image/designerWorks/finish/finish_13.jpg', 'image/designerWorks/other/other_13.jpg', '万物之源', 'C010302', '5', '54', '4', '色彩丰富', '灵感来源于曾经的那片海，“那片海”海的轮廓，海的韵味，正是本系列的的灵魂。身在都市繁华难得能感受海的开阔、温柔、博大，我们要将都市狭窄的空间和紧凑的生活带给我们的那种压迫和紧张，通过这种海的蜕变形式，找到重新认识自己的机会，去寻找真正你想要的人生。 ', '4512', '125', '2015-05-05', '2016-02-05', '1');
INSERT INTO `tb_designerworks` VALUES ('14', '14', '14', 'image/designerWorks/effect/effect_14.jpg', 'image/designerWorks/style/style_14.jpg', 'image/designerWorks/technology/technology_14.jpg', 'image/designerWorks/fabric/fabric_14.jpg', 'image/designerWorks/finish/finish_14.jpg', 'image/designerWorks/other/other_14.jpg', 'informal', 'C010303', '8', '34', '3', '白色为主', '《informal》生活中的随意涂写，将图案运用到服装的局部，服装风格为叛逆、、颓废、随性洒脱的街头时尚风格。', '983', '111', '2015-02-12', '2017-10-11', '1');
INSERT INTO `tb_designerworks` VALUES ('15', '15', '15', 'image/designerWorks/effect/effect_15.jpg', 'image/designerWorks/style/style_15.jpg', 'image/designerWorks/technology/technology_15.jpg', 'image/designerWorks/fabric/fabric_15.jpg', 'image/designerWorks/finish/finish_15.jpg', 'image/designerWorks/other/other_15.jpg', '玩味牛仔', 'C020101', '8', '36', '2', '蓝色为主', '本系列以牛仔的面料改造为主要创作手法，将面料的不同肌理，不同材质的碰撞结合在一起。成为这样一个既有西部狂野风格又在细节上尽显细腻的设计，在保证实穿性的同时又最大极限的凸显面料与质感的结合，使它能够紧密与市场结合，颜色的选择上也结合了牛仔色与小羊皮的色彩交错，时尚而大气。', '6843', '45', '2014-12-23', '2017-02-08', '1');
INSERT INTO `tb_designerworks` VALUES ('16', '16', '16', 'image/designerWorks/effect/effect_16.jpg', 'image/designerWorks/style/style_16.jpg', 'image/designerWorks/technology/technology_16.jpg', 'image/designerWorks/fabric/fabric_16.jpg', 'image/designerWorks/finish/finish_16.jpg', 'image/designerWorks/other/other_16.jpg', '净悦念心', 'C020102', '6', '35', '2', '黑色和灰色为主', '设计以“净、悦、念”为灵感来源，分别从禅学、时尚、高定三大主线出发。从概念化的艺术到艺术设计的解构再到艺术设计成衣化，再从艺术设计的成衣发展到颇具韵味的成衣化小礼服最后再延展到极具奢侈、魅力的高级定制，由点生面亦由面聚点，突破传统思维模式，使艺术与设计完美融合。', '1255', '90', '2016-11-23', '2017-01-10', '1');
INSERT INTO `tb_designerworks` VALUES ('17', '17', '17', 'image/designerWorks/effect/effect_17.jpg', 'image/designerWorks/style/style_17.jpg', 'image/designerWorks/technology/technology_17.jpg', 'image/designerWorks/fabric/fabric_17.jpg', 'image/designerWorks/finish/finish_17.jpg', 'image/designerWorks/other/other_17.jpg', 'playful', 'C020103', '7', '21', '4', '色彩丰富', '设计这套服装为童装，设计灵感来源于爱丽丝梦游仙境，通过对其中人物特点与个性的解读，加以改装变形，创造出现在所呈现的这套服装，为了使这套服装更受小朋友们的喜爱我也特别加了一些毛绒材质，心理医生说过毛绒制品会使人感到安心，我希望小朋友穿着我的服装会感到安心，舒适。', '7825', '26', '2010-12-04', '2016-11-25', '1');
INSERT INTO `tb_designerworks` VALUES ('18', '18', '18', 'image/designerWorks/effect/effect_18.jpg', 'image/designerWorks/style/style_18.jpg', 'image/designerWorks/technology/technology_18.jpg', 'image/designerWorks/fabric/fabric_18.jpg', 'image/designerWorks/finish/finish_18.jpg', 'image/designerWorks/other/other_18.jpg', 'blue-blue-blue', 'C020104', '3', '22', '1', '色彩丰富', '以海洋元素为灵感源的家居服设计，这套家居服打破了传统概念上家居服就是睡衣的刻板印象，款式变化多样，包括晨起活动、在家会客等时间段的服装，整个设计宽松舒适，给人轻松、明快的感觉', '891', '74', '2011-12-18', '2016-08-19', '1');
INSERT INTO `tb_designerworks` VALUES ('19', '19', '19', 'image/designerWorks/effect/effect_19.jpg', 'image/designerWorks/style/style_19.jpg', 'image/designerWorks/technology/technology_19.jpg', 'image/designerWorks/fabric/fabric_19.jpg', 'image/designerWorks/finish/finish_19.jpg', 'image/designerWorks/other/other_19.jpg', 'Puppec city', 'C020105', '7', '23', '3', '橘色和浅棕色为主', '木偶人随着手中的线跳动，仿佛处处受人摆布，但又如此生动逼真，精彩绝伦。现代都市人何尝不是这样的处境，被生活磨炼的失去棱角，却在各自的剧场中努力绽放自己，在白天穿上形形色色的舞台服，扮演着各种别人所 期待看到的角色，而回到家中自己最希望换上那一身属于自己最真实最舒适的家居服。本次家居服设计的灵感正是来源于木偶人，宽大的廓形设计，夸张的打散方式，体现现代人的追求个性，不忘真我的特点。色彩采用舒适的暖灰色调，温馨而又时尚大气。材质经过了面料的搓揉，折叠等再处理，以及不同的软硬面料的相互碰撞，使得本系列设计增添更多的趣味性。', '1220', '45', '2009-04-06', '2017-11-02', '1');
INSERT INTO `tb_designerworks` VALUES ('20', '20', '20', 'image/designerWorks/effect/effect_20.jpg', 'image/designerWorks/style/style_20.jpg', 'image/designerWorks/technology/technology_20.jpg', 'image/designerWorks/fabric/fabric_20.jpg', 'image/designerWorks/finish/finish_20.jpg', 'image/designerWorks/other/other_20.jpg', '舞动京魂', 'C020106', '3', '25', '5', '红白色为主', '此作品让人宽容地接纳了平底鞋、宽松长裤、针织套衫，因为这些服饰品让穿着者看上去温和,更加贴近自然，做工精致，重点在于打造干练、简洁、清爽的形象。', '258', '26', '2011-10-01', '2015-06-26', '1');
INSERT INTO `tb_designerworks` VALUES ('21', '21', '21', 'image/designerWorks/effect/effect_21.png', 'image/designerWorks/style/style_21.png', 'image/designerWorks/technology/technology_21.png', 'image/designerWorks/fabric/fabric_21.png', 'image/designerWorks/finish/finish_21.png', 'image/designerWorks/other/other_21.png', '极简设计', 'C020107', '2', '26', '4', '黑色', '田园风格的服装，宽大舒松的款式，天然的材质，为人们带来了有如置身于悠闲浪漫的心理感受，具有一种悠然的美。这种服装具有较强的活动机能，很适合人们有郊游、散步和作各种轻松活动时穿着，迎合现代人的生活需求。', '1221', '24', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('22', '22', '22', 'image/designerWorks/effect/effect_22.png', 'image/designerWorks/style/style_22.png', 'image/designerWorks/technology/technology_22.png', 'image/designerWorks/fabric/fabric_22.png', 'image/designerWorks/finish/finish_22.png', 'image/designerWorks/other/other_22.png', '暗系列\r\n', 'C020108', '7', '31', '6', '黑色', '设计造型上则采用于A型、X型H型相结合，服结构设计上能有所突破。礼服通过太空棉和刺绣花蕾丝（有立体、肌理）及精致的面料。 服装的面料是用制作服装的材料，作为三要素之一，面料不仅可以接受服装的风格和特点，而且可以接受服装的色彩和造型表现的效果。本款采用了白色的太空棉与黑色、白色、灰色三种的刺绣花蕾丝。', '204', '201', '2016-08-09', '2016-10-11', '1');
INSERT INTO `tb_designerworks` VALUES ('23', '23', '23', 'image/designerWorks/effect/effect_23.png', 'image/designerWorks/style/style_23.png', 'image/designerWorks/technology/technology_23.png', 'image/designerWorks/fabric/fabric_23.png', 'image/designerWorks/finish/finish_23.png', 'image/designerWorks/other/other_23.png', '扎染服装', 'C020201', '4', '32', '4', '白色', '纯棉质地、小方格、均匀条纹、碎花图案、棉质花边等都是田园风格中最常见的元素。', '352', '55', '2014-05-06', '2014-08-08', '1');
INSERT INTO `tb_designerworks` VALUES ('24', '24', '24', 'image/designerWorks/effect/effect_24.png', 'image/designerWorks/style/style_24.png', 'image/designerWorks/technology/technology_24.png', 'image/designerWorks/fabric/fabric_24.png', 'image/designerWorks/finish/finish_24.png', 'image/designerWorks/other/other_24.png', '意想不到', 'C020202', '4', '34', '3', '灰/蓝色', '灵感来源于曾经的那片海，“那片海”海的轮廓，海的韵味，正是本系列的的灵魂。身在都市繁华难得能感受海的开阔、温柔、博大，我们要将都市狭窄的空间和紧凑的生活带给我们的那种压迫和紧张，通过这种海的蜕变形式，找到重新认识自己的机会，去寻找真正你想要的人生。 ', '5425', '44', '2016-05-01', '2017-01-01', '1');
INSERT INTO `tb_designerworks` VALUES ('25', '25', '25', 'image/designerWorks/effect/effect_25.png', 'image/designerWorks/style/style_25.png', 'image/designerWorks/technology/technology_25.png', 'image/designerWorks/fabric/fabric_25.png', 'image/designerWorks/finish/finish_25.png', 'image/designerWorks/other/other_25.png', '心之旅', 'C020203', '3', '33', '2', '白色', '淡蓝色素衣裹身，外披白色纱衣，露出线条优美的颈项和清晰可见的锁骨', '1133', '355', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('26', '26', '26', 'image/designerWorks/effect/effect_26.png', 'image/designerWorks/style/style_26.png', 'image/designerWorks/technology/technology_26.png', 'image/designerWorks/fabric/fabric_26.png', 'image/designerWorks/finish/finish_26.png', 'image/designerWorks/other/other_26.png', '芭蕾舞平底女鞋', 'C020204', '2', '48', '4', '白色', '身穿是淡白色宫装，淡雅处却多了几分出尘气质。宽大裙幅逶迤身后，优雅华贵。墨\r\n玉般的青丝', '22121', '20', '2014-03-01', '2015-03-08', '1');
INSERT INTO `tb_designerworks` VALUES ('27', '27', '27', 'image/designerWorks/effect/effect_27.png', 'image/designerWorks/style/style_27.png', 'image/designerWorks/technology/technology_27.png', 'image/designerWorks/fabric/fabric_27.png', 'image/designerWorks/finish/finish_27.png', 'image/designerWorks/other/other_27.png', '缝石作品', 'C020205', '4', '26', '1', '灰色', '一袭粉蓝色的宫装，外罩一件纱衣，看起来素雅，却显得华贵', '1024', '23', '2012-08-04', '2013-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('28', '28', '28', 'image/designerWorks/effect/effect_28.png', 'image/designerWorks/style/style_28.png', 'image/designerWorks/technology/technology_28.png', 'image/designerWorks/fabric/fabric_28.png', 'image/designerWorks/finish/finish_28.png', 'image/designerWorks/other/other_28.png', '职也装也时尚', 'C020206', '6', '45', '1', '黑/白色', '身着一袭淡粉宫装，雅致的玉颜上画着清淡的梅花妆，若是原似嫡仙般风姿卓越倾国\r\n倾城，现却似误落凡尘沾染了丝丝尘缘的仙子般。', '5', '8', '2008-11-02', '2008-11-02', '1');
INSERT INTO `tb_designerworks` VALUES ('29', '29', '29', 'image/designerWorks/effect/effect_29.png', 'image/designerWorks/style/style_29.png', 'image/designerWorks/technology/technology_29.png', 'image/designerWorks/fabric/fabric_29.png', 'image/designerWorks/finish/finish_29.png', 'image/designerWorks/other/other_29.png', '灵感汇', 'C020301', '7', '10', '5', '黄/绿色', '一袭兰色的纱质长裙，看起来淡雅脱俗，外面是深兰色的，裙摆绣满珍珠的薄长纱，\r\n高雅飘逸，腰系一条深蓝色绣花腰带', '532', '9', '2015-05-04', '2015-06-07', '1');
INSERT INTO `tb_designerworks` VALUES ('30', '30', '30', 'image/designerWorks/effect/effect_30.png', 'image/designerWorks/style/style_30.png', 'image/designerWorks/technology/technology_30.png', 'image/designerWorks/fabric/fabric_30.png', 'image/designerWorks/finish/finish_30.png', 'image/designerWorks/other/other_30.png', 'laurence xu', 'C020302', '2', '19', '2', '红/黄色', '淡粉色华衣裹身，外披白色纱衣，露出线条优美的颈项和清晰可见的锁骨，裙幅褶褶\r\n如雪月光华流动轻泻于地', '8215', '747', '2009-04-07', '2010-06-04', '1');
INSERT INTO `tb_designerworks` VALUES ('42', '1', '31', 'image/designerWroks/effect/effect_31.png', 'image/designerWroks/style/style_31.png', 'image/designerWroks/technology/technology_31.png', 'image/designerWroks/fabric/fabric_31.png', 'image/designerWroks/finish/finish_31.png', 'image/designerWroks/other/other_31.png', 'lonely lonely', 'C020303', '2', '45', '3', '黑白为主', '此系列是一组以西藏命名的服装主题，靓丽的颜色搭配和西藏独特的长袖 单肩 毛绒的服装特点设计的具有西藏民族特色的服装。', '4641', '465', '2008-12-23', '2010-10-10', '1');
INSERT INTO `tb_designerworks` VALUES ('43', '1', '32', 'image/designerWorks/effect/effect_32.png', 'image/designerWorks/style/style_32.png', 'image/designerWorks/technology/technology_32.png', 'image/designerWorks/fabric/fabric_32.png', 'image/designerWorks/finish/finish_32.png', 'image/designerWorks/other/other_32.png', '苗域', 'C020304', '6', '41', '4', '彩色', '主色是黑和白，特征是想表达神秘恐怖和死亡的感觉。通常配以十字架银器等装饰，以及化较为浓烈的深色妆容，如黑色指甲、眼影、唇色，强调神秘色彩。', '4564', '467', '2013-02-03', '2014-05-03', '1');
INSERT INTO `tb_designerworks` VALUES ('44', '1', '33', 'image/designerWorks/effect/effect_33.png', 'image/designerWorks/style/style_33.png', 'image/designerWorks/technology/technology_33.png', 'image/designerWorks/fabric/fabric_33.png', 'image/designerWorks/finish/finish_33.png', 'image/designerWorks/other/other_33.png', '丛林探险家', 'C030101', '7', '56', '2', '裸色', '以简约色调为主，着重剪裁以表达清雅的心思，颜色不出挑，如茶色和白色。蕾丝花边会相应减少，而荷叶褶是最大特色，整体风格比较平实。', '5652', '689', '2017-02-03', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('45', '1', '31', 'image/designerWorks/effect/effect_34.png', 'image/designerWorks/style/style_34.png', 'image/designerWorks/technology/technology_34.png', 'image/designerWorks/fabric/fabric_34.png', 'image/designerWorks/finish/finish_34.png', 'image/designerWorks/other/other_34.png', 'cool kids fashion', 'C030102', '3', '48', '6', '糖果色', '层层叠叠的花边，无领袒肩的宽松上衣、大朵的印花、手工的花边和细绳结、皮质的流苏、纷乱的珠串装饰、还有波浪乱发', '4533', '897', '2016-03-01', '2016-11-13', '1');
INSERT INTO `tb_designerworks` VALUES ('46', '1', '31', 'image/designerWorks/effect/effect_35.png', 'image/designerWorks/style/style_35.png', 'image/designerWorks/technology/technology_35.png', 'image/designerWorks/fabric/fabric_35.png', null, 'image/designerWorks/other/other_35.png', 'Puppec city', 'C010107', '5', '45', '6', '荧光色', '简约风格的服装几乎不要任何装饰，信奉简约主义的服装设计师擅长做减法。', '6565', '256', '2017-10-02', '2017-10-02', '1');
INSERT INTO `tb_designerworks` VALUES ('47', '1', '32', 'image/designerWorks/effect/effect_36.png', 'image/designerWorks/style/style_36.png', 'image/designerWorks/technology/technology_36.png', null, 'image/designerWorks/finish/finish_36.png', null, '斯乃纳迪', 'C040101', '6', '50', '4', '糖果色', 'PUNK的另外特征是，服装的破碎感和金属感。PUNK系列多喜好用大型金属别针，吊链，裤链等比较显眼的金属制品来装饰服装，尤其常见的是将服装故意撕碎和破坏的地方用其连接', '1651', '465', '2009-04-06', '2009-04-06', '1');
INSERT INTO `tb_designerworks` VALUES ('48', '2', '34', 'image/designerWorks/effect/effect_37.png', null, 'image/designerWorks/technology/technology_37.png', 'image/designerWorks/fabric/fabric_37.png', null, 'image/designerWorks/other/other_37.png', '缄默时光', 'C080201', '2', '26', '1', '混色', '作品装束的色彩运用通常也很固定，譬如红黑，全黑，红白，蓝白，黄绿，红绿，黑白等等，最常见的是红黑搭配。制作的也很精致。', '32', '261', '2011-10-01', '2011-10-01', '1');
INSERT INTO `tb_designerworks` VALUES ('49', '2', '35', 'image/designerWorks/effect/effect_38.png', 'image/designerWorks/style/style_38.png', null, 'image/designerWorks/fabric/fabric_38.png', 'image/designerWorks/finish/finish_38.png', 'image/designerWorks/other/other_38.png', '听水无声', 'C070101', '5', '50', '2', '绿色                                                                                                                                                                                                                                                             ', '一袭浅紫色碧荷高腰儒裙,淡淡的紫色,裙上绣着一朵白色的蔷薇,一朵,唯一的一朵,裙\r\n脚上绣着一只翩然起舞的蝴蝶', '1655', '323', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('50', '2', '34', 'image/designerWorks/effect/effect_39.png', 'image/designerWorks/style/style_39.png', 'image/designerWorks/technology/technology_38.png', null, 'image/designerWorks/finish/finish_39.png', null, '年华停摆 ', 'C050101', '6', '59', '3', '红色系  ', '艳阳高照，微风徐徐。一袭鹅黄色精致的绣着白色雏菊上衣，下罩月牙色的垂苏软裙\r\n白衣，月白色的腰带凸显曼妙的身姿，玲珑有致。挽起一个小巧的发髻，一些宝蓝色\r\n珠花颗颗点缀，紫玉簪上的兰花如真，淡雅如斯。', '312', '646', '2016-08-09', '2016-08-09', '1');
INSERT INTO `tb_designerworks` VALUES ('51', '3', '36', 'image/designerWorks/effect/effect_40.png', null, 'image/designerWorks/technology/technology_39.png', null, null, null, '浊净空', 'C030105', '8', '58', '5', '橙色系  ', '一袭淡色宫装包裹玲珑身段，端庄淑容，又不失其娴静之美。秀发挽起云髻，单用支\r\n玉簪固着，清秀典雅。', '656', '8498', '2014-05-06', '2014-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('52', '3', '37', 'image/designerWorks/effect/effect_41.png', null, 'image/designerWorks/technology/technology_40.png', 'image/designerWorks/fabric/fabric_39.png', null, 'image/designerWorks/other/other_39.png', '檀茶落曲', 'C030108', '1', '44', '6', '黄色系   ', '一袭月白色统一秀女着装，只为了区分，而隐显丝丝清雅竹纹。乳白色的绣鞋绣了一\r\n朵淡粉色的莲花，踏步无声', '2323', '265', '2016-05-01', '2016-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('53', '3', '38', 'image/designerWorks/effect/effect_42.png', 'image/designerWorks/style/style_40.png', null, 'image/designerWorks/fabric/fabric_40.png', 'image/designerWorks/finish/finish_40.png', null, '着笔飞白书', 'C030201', '2', '47', '4', '绿色系   ', '身着淡粉色锦缎裹胸，下坠白色曳地烟胧荷花百水裙，轻挽淡薄如清雾胧绢纱，腰间\r\n坠一条淡青色丝带，挂了个薰衣草荷包，不时散发出阵阵幽香。', '546', '215', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('54', '4', '39', 'image/designerWorks/effect/effect_43.png', 'image/designerWorks/style/style_41.png', 'image/designerWorks/technology/technology_41.png', 'image/designerWorks/fabric/fabric_41.png', 'image/designerWorks/finish/finish_41.png', 'image/designerWorks/other/other_40.png', '浊净空', 'C020301', '5', '4', '4', '青色系   ', '碧绿的翠烟衫，散花水雾绿草百褶裙，身披翠水薄烟纱，肩若削成腰若约素，肌若凝\r\n脂气若幽兰。', '9862', '6546', '2014-03-01', '2014-03-01', '1');
INSERT INTO `tb_designerworks` VALUES ('55', '5', '40', 'image/designerWorks/effect/effect_44.png', 'image/designerWorks/style/style_42.png', null, null, 'image/designerWorks/finish/finish_42.png', null, '七色彩虹', 'C020206', '4', '4', '4', '蓝色系   ', '着了身烟色对襟软罗烟长裙，外罩淡色轻纱，乌丝被一支青玉镂空簪绾成一个浮华流\r\n月簪', '2156', '949', '2012-08-04', '2012-08-04', '1');
INSERT INTO `tb_designerworks` VALUES ('56', '6', '41', 'image/designerWorks/effect/effect_45.png', 'image/designerWorks/style/style_43.png', 'image/designerWorks/technology/technology_42.png', 'image/designerWorks/fabric/fabric_42.png', 'image/designerWorks/finish/finish_43.png', 'image/designerWorks/other/other_41.png', '语苑撷英', 'C020205', '6', '56', '6', '紫色系   ', '淡淡的粉色颜色长袭纱裙纬地,外套玫红锦缎小袄,边角缝制雪白色的绒毛', '6562', '646', '2009-04-06', '2009-04-06', '1');
INSERT INTO `tb_designerworks` VALUES ('57', '7', '42', 'image/designerWorks/effect/effect_46.png', 'image/designerWorks/style/style_44.png', null, null, 'image/designerWorks/finish/finish_44.png', null, '淡荷', 'C020203', '1', '37', '2', '黑色系   ', '设计造型上则采用于A型、X型H型相结合，服结构设计上能有所突破。礼服通过太空棉和刺绣花蕾丝（有立体、肌理）及精致的面料。 服装的面料是用制作服装的材料，作为三要素之一，面料不仅可以接受服装的风格和特点，而且可以接受服装的色彩和造型表现的效果。本款采用了白色的太空棉与黑色、白色、灰色三种的刺绣花蕾丝。', '2132', '564', '2011-10-01', '2011-10-01', '1');
INSERT INTO `tb_designerworks` VALUES ('58', '8', '43', 'image/designerWorks/effect/effect_47.png', null, 'image/designerWorks/technology/technology_43.png', 'image/designerWorks/fabric/fabric_43.png', null, 'image/designerWorks/other/other_42.png', '浓浓月色', 'C030107', '2', '32', '3', '白色系  ', '服装以绣花、蓝印花、蜡染、扎染为主要工艺，面料一般为棉和麻，款式上具有民族特征，或者在细节上带有民族风格。目前流行的经典唐装、旗袍、改良民族服装等是主要款式，当然还包括尼泊尔、印度等民族服装。', '4653', '6516', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('59', '9', '44', 'image/designerWorks/effect/effect_48.png', null, 'image/designerWorks/technology/technology_44.png', null, null, 'image/designerWorks/other/other_43.png', '百草集', 'C030301', '3', '52', '1', '红色系  ', '灵感来源于曾经的那片海，“那片海”海的轮廓，海的韵味，正是本系列的的灵魂。身在都市繁华难得能感受海的开阔、温柔、博大，我们要将都市狭窄的空间和紧凑的生活带给我们的那种压迫和紧张，通过这种海的蜕变形式，找到重新认识自己的机会，去寻找真正你想要的人生。 ', '4862', '4895', '2016-08-09', '2016-08-09', '1');
INSERT INTO `tb_designerworks` VALUES ('60', '10', '45', 'image/designerWorks/effect/effect_49.png', 'image/designerWorks/style/style_45.png', 'image/designerWorks/technology/technology_45.png', 'image/designerWorks/fabric/fabric_44.png', 'image/designerWorks/finish/finish_45.png', 'image/designerWorks/other/other_44.png', '素衣风尘叹', 'C040101', '5', '50', '1', '橙色系  ', '淡蓝色素衣裹身，外披白色纱衣，露出线条优美的颈项和清晰可见的锁骨', '4894', '9847', '2014-05-06', '2014-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('61', '11', '46', 'image/designerWorks/effect/effect_50.png', 'image/designerWorks/style/style_46.png', null, null, 'image/designerWorks/finish/finish_46.png', null, '蒲公英的翅膀', 'C060101', '7', '41', '5', '黄色系   ', '身穿是淡白色宫装，淡雅处却多了几分出尘气质。宽大裙幅逶迤身后，优雅华贵。墨\r\n玉般的青丝', '2156', '4654', '2016-05-01', '2016-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('62', '12', '47', 'image/designerWorks/effect/effect_51.png', 'image/designerWorks/style/style_47.png', 'image/designerWorks/technology/technology_46.png', 'image/designerWorks/fabric/fabric_45.png', 'image/designerWorks/finish/finish_47.png', null, '无翼的飞翔', 'C060201', '8', '3', '6', '绿色系   ', '身着一袭宝蓝逶迤长裙，青丝高挽，发间斜插一珍珠钗，玉带将楚腰高束起，薄施粉\r\n黛，清新淡雅，风华绝代', '8923', '162', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('63', '13', '48', 'image/designerWorks/effect/effect_52.png', 'image/designerWorks/style/style_48.png', 'image/designerWorks/technology/technology_47.png', 'image/designerWorks/fabric/fabric_46.png', 'image/designerWorks/finish/finish_48.png', null, '记忆', 'C040201', '4', '8', '6', '青色系   ', '着了身烟色对襟软罗烟长裙，外罩淡色轻纱，乌丝被一支青玉镂空簪绾成一个浮华流\r\n月簪', '1325', '132', '2014-03-01', '2014-03-01', '1');
INSERT INTO `tb_designerworks` VALUES ('64', '14', '49', 'image/designerWorks/effect/effect_53.png', 'image/designerWorks/style/style_49.png', 'image/designerWorks/technology/technology_48.png', 'image/designerWorks/fabric/fabric_47.png', null, null, '西窗残忆', 'C030303', '1', '5', '2', '蓝色系   ', '淡淡的粉色颜色长袭纱裙纬地,外套玫红锦缎小袄,边角缝制雪白色的绒毛', '5649', '484', '2012-08-04', '2012-08-04', '1');
INSERT INTO `tb_designerworks` VALUES ('65', '15', '50', 'image/designerWorks/effect/effect_54.png', 'image/designerWorks/style/style_50.png', 'image/designerWorks/technology/technology_49.png', null, 'image/designerWorks/finish/finish_49.png', 'image/designerWorks/other/other_45.png', '细雨挽轻裳', 'C070401', '5', '4', '4', '紫色系   ', '淡蓝色素衣裹身，外披白色纱衣，露出线条优美的颈项和清晰可见的锁骨', '1321', '461', '2008-11-02', '2008-11-02', '1');
INSERT INTO `tb_designerworks` VALUES ('66', '16', '51', 'image/designerWorks/effect/effect_55.png', null, 'image/designerWorks/technology/technology_50.png', 'image/designerWorks/fabric/fabric_48.png', null, 'image/designerWorks/other/other_46.png', '赋流云', 'C070203', '5', '10', '3', '红色系  ', '身穿是淡白色宫装，淡雅处却多了几分出尘气质。宽大裙幅逶迤身后，优雅华贵。墨\r\n玉般的青丝', '4894', '6499', '2015-05-04', '2015-05-04', '1');
INSERT INTO `tb_designerworks` VALUES ('67', '17', '52', 'image/designerWorks/effect/effect_56.png', null, 'image/designerWorks/technology/technology_51.png', 'image/designerWorks/fabric/fabric_49.png', 'image/designerWorks/finish/finish_50.png', 'image/designerWorks/other/other_47.png', 'Supreme Last Supper', 'C070202', '4', '15', '2', '橙色系  ', '一袭粉蓝色的宫装，外罩一件纱衣，看起来素雅，却显得华贵', '1324', '6416', '2009-04-07', '2009-04-07', '1');
INSERT INTO `tb_designerworks` VALUES ('68', '18', '53', 'image/designerWorks/effect/effect_57.png', null, 'image/designerWorks/technology/technology_52.png', 'image/designerWorks/fabric/fabric_50.png', null, null, '冷青藏', 'C070101', '6', '16', '5', '黄色系   ', '设计这套服装为童装，设计灵感来源于爱丽丝梦游仙境，通过对其中人物特点与个性的解读，加以改装变形，创造出现在所呈现的这套服装，为了使这套服装更受小朋友们的喜爱我也特别加了一些毛绒材质，心理医生说过毛绒制品会使人感到安心，我希望小朋友穿着我的服装会感到安心，舒适。', '5465', '4496', '2008-12-23', '2008-12-23', '1');
INSERT INTO `tb_designerworks` VALUES ('69', '19', '54', 'image/designerWorks/effect/effect_58.png', 'image/designerWorks/style/style_51.png', 'image/designerWorks/technology/technology_53.png', null, null, 'image/designerWorks/other/other_48.png', 'Supreme E.T.', 'C080102', '2', '52', '6', '绿色系   ', '以海洋元素为灵感源的家居服设计，这套家居服打破了传统概念上家居服就是睡衣的刻板印象，款式变化多样，包括晨起活动、在家会客等时间段的服装，整个设计宽松舒适，给人轻松、明快的感觉', '5416', '6516', '2009-04-06', '2009-04-06', '1');
INSERT INTO `tb_designerworks` VALUES ('70', '20', '55', 'image/designerWorks/effect/effect_59.png', 'image/designerWorks/style/style_52.png', null, 'image/designerWorks/fabric/fabric_51.png', null, 'image/designerWorks/other/other_49.png', '殃樾晨', 'C080405', '4', '14', '4', '红色系  ', '木偶人随着手中的线跳动，仿佛处处受人摆布，但又如此生动逼真，精彩绝伦。现代都市人何尝不是这样的处境，被生活磨炼的失去棱角，却在各自的剧场中努力绽放自己，在白天穿上形形色色的舞台服，扮演着各种别人所 期待看到的角色，而回到家中自己最希望换上那一身属于自己最真实最舒适的家居服。本次家居服设计的灵感正是来源于木偶人，宽大的廓形设计，夸张的打散方式，体现现代人的追求个性，不忘真我的特点。色彩采用舒适的暖灰色调，温馨而又时尚大气。材质经过了面料的搓揉，折叠等再处理，以及不同的软硬面料的相互碰撞，使得本系列设计增添更多的趣味性。', '4894', '4165', '2011-10-01', '2011-10-01', '1');
INSERT INTO `tb_designerworks` VALUES ('71', '21', '56', 'image/designerWorks/effect/effect_60.png', 'image/designerWorks/style/style_53.png', 'image/designerWorks/technology/technology_54.png', null, 'image/designerWorks/finish/finish_51.png', 'image/designerWorks/other/other_50.png', 'Wtaps', 'C070401', '4', '20', '2', '橙色系  ', '着一件浅水蓝的裙，长发垂肩，用一根水蓝的绸束好，玉簪轻挽，簪尖垂细如水珠的小链，微一晃动就如雨意缥缈', '1321', '564', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('72', '22', '57', 'image/designerWorks/effect/effect_61.png', null, 'image/designerWorks/technology/technology_55.png', null, 'image/designerWorks/finish/finish_52.png', 'image/designerWorks/other/other_51.png', '颜洛殇', 'C080405', '8', '23', '3', '黄色系   ', '身着一袭宝蓝逶迤长裙，青丝高挽，发间斜插一珍珠钗，玉带将楚腰高束起，薄施粉\r\n黛，清新淡雅，风华绝代', '6456', '161', '2016-08-09', '2016-08-09', '1');
INSERT INTO `tb_designerworks` VALUES ('73', '23', '58', 'image/designerWorks/effect/effect_62.png', null, 'image/designerWorks/technology/technology_56.png', 'image/designerWorks/fabric/fabric_52.png', 'image/designerWorks/finish/finish_53.png', null, 'x Bape', 'C080404', '2', '28', '5', '绿色系   ', '着了身烟色对襟软罗烟长裙，外罩淡色轻纱，乌丝被一支青玉镂空簪绾成一个浮华流\r\n月簪', '6165', '6516', '2014-05-06', '2014-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('74', '24', '59', 'image/designerWorks/effect/effect_63.png', 'image/designerWorks/style/style_54.png', null, 'image/designerWorks/fabric/fabric_53.png', 'image/designerWorks/finish/finish_54.png', null, 'Supreme', 'C080101', '1', '27', '6', '青色系   ', '一袭蓝色昙花雨丝锦裙，淡淡的蓝色丝质中衣用深兰色的丝线在衣料上绣出了了一朵朵梅花', '646', '615', '2016-05-01', '2016-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('75', '25', '60', 'image/designerWorks/effect/effect_64.png', null, 'image/designerWorks/technology/technology_57.png', null, null, 'image/designerWorks/other/other_52.png', '星星上的亮光', 'C070301', '3', '46', '2', '黄色系   ', '淡粉色华衣裹身，外披白色纱衣，露出线条优美的颈项和清晰可见的锁骨', '6123', '5611', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('76', '26', '61', 'image/designerWorks/effect/effect_65.png', 'image/designerWorks/style/style_55.png', null, 'image/designerWorks/fabric/fabric_54.png', null, 'image/designerWorks/other/other_53.png', '随笔荟萃', 'C070201', '2', '40', '4', '紫色系   ', '一条色彩斑斓的长裙一直延伸到她的脚踝-随着轻快的步伐流转着，马路对面的这个女孩，戴着一顶样式别致的草帽，一副大红色边的黑色墨镜', '123', '456', '2014-03-01', '2014-03-01', '1');
INSERT INTO `tb_designerworks` VALUES ('77', '26', '61', 'image/designerWorks/effect/effect_66.png', null, 'image/designerWorks/technology/technology_58.png', 'image/designerWorks/fabric/fabric_55.png', 'image/designerWorks/finish/finish_55.png', 'image/designerWorks/other/other_54.png', '秋水长逝', 'C030107', '5', '52', '5', '黑色系   ', '设计造型上则采用于A型、X型H型相结合，服结构设计上能有所突破。礼服通过太空棉和刺绣花蕾丝（有立体、肌理）及精致的面料。 服装的面料是用制作服装的材料，作为三要素之一，面料不仅可以接受服装的风格和特点，而且可以接受服装的色彩和造型表现的效果。本款采用了白色的太空棉与黑色、白色、灰色三种的刺绣花蕾丝。', '6654', '465', '2012-08-04', '2012-08-04', '1');
INSERT INTO `tb_designerworks` VALUES ('78', '26', '26', 'image/designerWorks/effect/effect_67.png', null, 'image/designerWorks/technology/technology_59.png', 'image/designerWorks/fabric/fabric_56.png', null, null, '荏苒', 'C040301', '5', '15', '6', '白色系  ', '主色是黑和白，特征是想表达神秘恐怖和死亡的感觉。通常配以十字架银器等装饰，以及化较为浓烈的深色妆容，如黑色指甲、眼影、唇色，强调神秘色彩。', '5465', '6156', '2008-11-02', '2008-11-02', '1');
INSERT INTO `tb_designerworks` VALUES ('79', '16', '16', 'image/designerWorks/effect/effect_68.png', 'image/designerWorks/style/style_56.png', null, 'image/designerWorks/fabric/fabric_57.png', 'image/designerWorks/finish/finish_56.png', null, '花开的声音', 'C060201', '6', '13', '2', '黄色系   ', '以简约色调为主，着重剪裁以表达清雅的心思，颜色不出挑，如茶色和白色。蕾丝花边会相应减少，而荷叶褶是最大特色，整体风格比较平实。', '498', '651', '2009-04-06', '2009-04-06', '1');
INSERT INTO `tb_designerworks` VALUES ('80', '20', '20', 'image/designerWorks/effect/effect_69.png', null, 'image/designerWorks/technology/technology_60.png', null, null, null, '梦里梦外', 'C060202', '2', '10', '1', '红色系  ', '层层叠叠的花边，无领袒肩的宽松上衣、大朵的印花、手工的花边和细绳结、皮质的流苏、纷乱的珠串装饰、还有波浪乱发', '798', '1651', '2011-10-01', '2011-10-01', '1');
INSERT INTO `tb_designerworks` VALUES ('81', '18', '18', 'image/designerWorks/effect/effect_70.png', null, 'image/designerWorks/technology/technology_61.png', 'image/designerWorks/fabric/fabric_58.png', 'image/designerWorks/finish/finish_57.png', null, '天天天蓝', 'C030303', '1', '14', '3', '橙色系  ', '身穿是淡白色宫装，淡雅处却多了几分出尘气质。宽大裙幅逶迤身后，优雅华贵。墨\r\n玉般的青丝', '889', '1156', '2017-05-06', '2017-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('82', '14', '14', 'image/designerWorks/effect/effect_71.png', 'image/designerWorks/style/style_57.png', 'image/designerWorks/technology/technology_62.png', 'image/designerWorks/fabric/fabric_59.png', null, null, '成长足迹', 'C030301', '8', '25', '5', '红色系  ', '身着一袭宝蓝逶迤长裙，青丝高挽，发间斜插一珍珠钗，玉带将楚腰高束起，薄施粉\r\n黛，清新淡雅，风华绝代', '6456', '615', '2016-08-09', '2016-08-09', '1');
INSERT INTO `tb_designerworks` VALUES ('83', '14', '14', 'image/designerWorks/effect/effect_72.png', null, 'image/designerWorks/technology/technology_63.png', null, 'image/designerWorks/finish/finish_58.png', 'image/designerWorks/other/other_55.png', 'Girls by Mag', 'C040201', '7', '26', '6', '橙色系  ', '着了身烟色对襟软罗烟长裙，外罩淡色轻纱，乌丝被一支青玉镂空簪绾成一个浮华流\r\n月簪', '132', '615', '2014-05-06', '2014-05-06', '1');
INSERT INTO `tb_designerworks` VALUES ('84', '17', '17', 'image/designerWorks/effect/effect_73.png', 'image/designerWorks/style/style_58.png', null, 'image/designerWorks/fabric/fabric_60.png', null, 'image/designerWorks/other/other_56.png', '豆蔻年华', 'C060102', '7', '30', '4', '黄色系   ', '淡淡的粉色颜色长袭纱裙纬地,外套玫红锦缎小袄,边角缝制雪白色的绒毛', '2315', '894', '2016-05-01', '2016-05-01', '1');
INSERT INTO `tb_designerworks` VALUES ('85', '22', '22', 'image/designerWorks/effect/effect_74.png', 'image/designerWorks/style/style_59.png', null, 'image/designerWorks/fabric/fabric_61.png', 'image/designerWorks/finish/finish_59.png', null, '青藤浅语', 'C030106', '3', '29', '1', '绿色系   ', '淡紫色宫装长裙，长及倚地。细长腰带束住腰身，缓步行走，翩于身后。广袖轻盈，\r\n裙褶翩然，随意一转', '5465', '894', '2015-06-22', '2015-06-22', '1');
INSERT INTO `tb_designerworks` VALUES ('91', '47', '102', 'designerWorks/20171203_070257_33375923820933.png', 'designerWorks/20171203_070257_33375929326943.png', 'designerWorks/20171203_070257_33375932846927.png', 'designerWorks/20171203_070257_33375965509760.png', 'designerWorks/20171203_070257_33375968273495.png', null, 'Indie Pop', 'C010101', '1', '19', '2', '黑色系   ', '一袭粉蓝色的宫装，外罩一件纱衣，看起来素雅，却显得华贵', '543', '64', '19:02:57', '19:02:57', '1');
INSERT INTO `tb_designerworks` VALUES ('92', '47', '102', 'designerWorks/20171203_071119_33878094823548.png', 'designerWorks/20171203_071119_33878113739085.png', 'designerWorks/20171203_071120_33878146195712.png', 'designerWorks/20171203_071120_33878153363042.png', null, null, '心与家的距离', 'C010105', '4', '33', '3', '白色系  ', '身着一袭淡粉宫装，雅致的玉颜上画着清淡的梅花妆，若是原似嫡仙般风姿卓越倾国\r\n倾城，现却似误落凡尘沾染了丝丝尘缘的仙子般。', '436', '1665', '19:11:19', '19:11:19', '1');
INSERT INTO `tb_designerworks` VALUES ('93', '47', '105', 'designerWorks/20171203_071408_34046569815104.png', 'designerWorks/20171203_071408_34046629368371.png', 'designerWorks/20171203_071408_34046647709608.png', 'designerWorks/20171203_071408_34046654765437.png', null, null, '山河故人', 'C010107', '8', '19', '6', '黄色系   ', '一袭兰色的纱质长裙，看起来淡雅脱俗，外面是深兰色的，裙摆绣满珍珠的薄长纱，\r\n高雅飘逸，腰系一条深蓝色绣花腰带', '6746', '65', '19:14:08', '19:14:08', '0');
INSERT INTO `tb_designerworks` VALUES ('94', '47', '106', 'designerWorks/20171203_071645_34203997454135.png', 'designerWorks/20171203_071645_34204024742521.png', 'designerWorks/20171203_071645_34204063674610.png', 'designerWorks/20171203_071645_34204102928141.png', null, null, '丝路遗梦', 'C010101', '5', '19', '1', '红色系  ', '层层叠叠的花边，无领袒肩的宽松上衣、大朵的印花、手工的花边和细绳结、皮质的流苏、纷乱的珠串装饰、还有波浪乱发', '543', '54', '19:16:45', '19:16:45', '1');
INSERT INTO `tb_designerworks` VALUES ('95', '47', '102', 'designerWorks/20171203_072426_34664480416389.png', 'designerWorks/20171203_072426_34664480416389.png', 'designerWorks/20171203_072426_34664496993201.png', 'designerWorks/20171203_072426_34664496993201.png', null, null, '鬼马幻想夜', 'C010101', '5', '19', '1', '橙色系  ', '简约风格的服装几乎不要任何装饰，信奉简约主义的服装设计师擅长做减法。', '6746', '35', '19:24:26', '19:24:26', '0');
INSERT INTO `tb_designerworks` VALUES ('96', '47', '105', 'designerWorks/20171210_112116_6486320389422.png', 'designerWorks/20171210_112116_6486320389422.png', 'designerWorks/20171210_112116_6486335385604.png', 'designerWorks/20171210_112116_6486335385604.png', 'designerWorks/20171210_112116_6486349218256.png', 'designerWorks/20171210_112116_6486349218256.png', '心之向往', 'C010103', '2', '10', '3', '黑白色系', 'PUNK的另外特征是，服装的破碎感和金属感。PUNK系列多喜好用大型金属别针，吊链，裤链等比较显眼的金属制品来装饰服装，尤其常见的是将服装故意撕碎和破坏的地方用其连接', '6543', '58', '11:21:16', '11:21:16', '1');

-- ----------------------------
-- Table structure for tb_dictionarycategory
-- ----------------------------
DROP TABLE IF EXISTS `tb_dictionarycategory`;
CREATE TABLE `tb_dictionarycategory` (
  `dictionaryCategory_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增长',
  `dictionaryCategory_number` int(11) NOT NULL COMMENT '类别编号',
  `dictionaryCategory_name` varchar(50) NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`dictionaryCategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dictionarycategory
-- ----------------------------
INSERT INTO `tb_dictionarycategory` VALUES ('1', '1', '设计标签');
INSERT INTO `tb_dictionarycategory` VALUES ('2', '2', '风格');
INSERT INTO `tb_dictionarycategory` VALUES ('3', '3', '款式');
INSERT INTO `tb_dictionarycategory` VALUES ('4', '4', '男装款式');
INSERT INTO `tb_dictionarycategory` VALUES ('5', '5', '女装款式');
INSERT INTO `tb_dictionarycategory` VALUES ('6', '6', '童装款式');
INSERT INTO `tb_dictionarycategory` VALUES ('7', '7', '婚纱款式');
INSERT INTO `tb_dictionarycategory` VALUES ('8', '8', '毛衫针织');
INSERT INTO `tb_dictionarycategory` VALUES ('9', '9', '内衣/家居');
INSERT INTO `tb_dictionarycategory` VALUES ('10', '10', '鞋帽配饰');
INSERT INTO `tb_dictionarycategory` VALUES ('11', '11', '职业服装');
INSERT INTO `tb_dictionarycategory` VALUES ('12', '12', '男装上装');
INSERT INTO `tb_dictionarycategory` VALUES ('13', '13', '男装下装');
INSERT INTO `tb_dictionarycategory` VALUES ('14', '14', '男装套装/系列');
INSERT INTO `tb_dictionarycategory` VALUES ('15', '15', '女装上装');
INSERT INTO `tb_dictionarycategory` VALUES ('16', '16', '女装下装');
INSERT INTO `tb_dictionarycategory` VALUES ('17', '17', '女装套装/系列');
INSERT INTO `tb_dictionarycategory` VALUES ('18', '18', '童装上装');
INSERT INTO `tb_dictionarycategory` VALUES ('19', '19', '童装下装');
INSERT INTO `tb_dictionarycategory` VALUES ('20', '20', '童装套装/亲子装');
INSERT INTO `tb_dictionarycategory` VALUES ('21', '21', '婚纱');
INSERT INTO `tb_dictionarycategory` VALUES ('22', '22', '礼服');
INSERT INTO `tb_dictionarycategory` VALUES ('23', '23', '旗袍');
INSERT INTO `tb_dictionarycategory` VALUES ('24', '24', '毛衫针织');
INSERT INTO `tb_dictionarycategory` VALUES ('25', '25', '文胸');
INSERT INTO `tb_dictionarycategory` VALUES ('26', '26', '内裤');
INSERT INTO `tb_dictionarycategory` VALUES ('27', '27', '家居服');
INSERT INTO `tb_dictionarycategory` VALUES ('28', '28', '泳装');
INSERT INTO `tb_dictionarycategory` VALUES ('29', '29', '美体塑身');
INSERT INTO `tb_dictionarycategory` VALUES ('30', '30', '鞋子');
INSERT INTO `tb_dictionarycategory` VALUES ('31', '31', '箱包');
INSERT INTO `tb_dictionarycategory` VALUES ('32', '32', '帽子');
INSERT INTO `tb_dictionarycategory` VALUES ('33', '33', '其他饰品');
INSERT INTO `tb_dictionarycategory` VALUES ('34', '34', '正装');
INSERT INTO `tb_dictionarycategory` VALUES ('35', '35', '功能服');
INSERT INTO `tb_dictionarycategory` VALUES ('36', '36', '户外');
INSERT INTO `tb_dictionarycategory` VALUES ('37', '37', '职业制服');
INSERT INTO `tb_dictionarycategory` VALUES ('38', '38', '购买类型');
INSERT INTO `tb_dictionarycategory` VALUES ('39', '39', '主要用途');

-- ----------------------------
-- Table structure for tb_dictionarydata
-- ----------------------------
DROP TABLE IF EXISTS `tb_dictionarydata`;
CREATE TABLE `tb_dictionarydata` (
  `dictionaryData_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增',
  `dictionaryData_categoryNumber` int(11) NOT NULL COMMENT '类别编号',
  `dictionaryData_dataNumber` int(11) NOT NULL COMMENT '数据编号',
  `dictionaryData_Value` varchar(50) NOT NULL COMMENT '数据值',
  PRIMARY KEY (`dictionaryData_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COMMENT='tb_dictionaryData';

-- ----------------------------
-- Records of tb_dictionarydata
-- ----------------------------
INSERT INTO `tb_dictionarydata` VALUES ('1', '1', '1', '男装设计');
INSERT INTO `tb_dictionarydata` VALUES ('2', '1', '2', '女装设计');
INSERT INTO `tb_dictionarydata` VALUES ('3', '1', '3', '童装设计');
INSERT INTO `tb_dictionarydata` VALUES ('4', '1', '4', '内衣设计');
INSERT INTO `tb_dictionarydata` VALUES ('5', '1', '5', '休闲设计');
INSERT INTO `tb_dictionarydata` VALUES ('6', '1', '6', '牛仔设计');
INSERT INTO `tb_dictionarydata` VALUES ('7', '1', '7', '家纺设计');
INSERT INTO `tb_dictionarydata` VALUES ('8', '1', '8', '配饰设计');
INSERT INTO `tb_dictionarydata` VALUES ('9', '1', '9', '婚纱礼服');
INSERT INTO `tb_dictionarydata` VALUES ('10', '1', '10', '箱包设计');
INSERT INTO `tb_dictionarydata` VALUES ('11', '1', '11', '皮草设计');
INSERT INTO `tb_dictionarydata` VALUES ('12', '1', '12', '陈列设计');
INSERT INTO `tb_dictionarydata` VALUES ('13', '2', '1', '运动');
INSERT INTO `tb_dictionarydata` VALUES ('14', '2', '2', '休闲');
INSERT INTO `tb_dictionarydata` VALUES ('15', '2', '3', '职业');
INSERT INTO `tb_dictionarydata` VALUES ('16', '2', '4', '牛仔');
INSERT INTO `tb_dictionarydata` VALUES ('17', '2', '5', '民族风');
INSERT INTO `tb_dictionarydata` VALUES ('18', '2', '6', '创意时装');
INSERT INTO `tb_dictionarydata` VALUES ('19', '2', '7', '皮草皮革');
INSERT INTO `tb_dictionarydata` VALUES ('20', '2', '8', '成衣馆');
INSERT INTO `tb_dictionarydata` VALUES ('21', '3', '1', 'A型');
INSERT INTO `tb_dictionarydata` VALUES ('22', '3', '2', 'H型');
INSERT INTO `tb_dictionarydata` VALUES ('23', '3', '3', 'O型');
INSERT INTO `tb_dictionarydata` VALUES ('24', '3', '4', 'Y型');
INSERT INTO `tb_dictionarydata` VALUES ('25', '3', '5', '郁金香型');
INSERT INTO `tb_dictionarydata` VALUES ('26', '3', '6', '不规则形');
INSERT INTO `tb_dictionarydata` VALUES ('27', '0', '1', '鞋帽配饰');
INSERT INTO `tb_dictionarydata` VALUES ('28', '0', '2', '职业服装');
INSERT INTO `tb_dictionarydata` VALUES ('29', '4', '1', '男装上装');
INSERT INTO `tb_dictionarydata` VALUES ('30', '4', '2', '男装下装');
INSERT INTO `tb_dictionarydata` VALUES ('31', '4', '3', '男装套装/系列');
INSERT INTO `tb_dictionarydata` VALUES ('32', '5', '1', '女装上装');
INSERT INTO `tb_dictionarydata` VALUES ('33', '5', '2', '女装下装');
INSERT INTO `tb_dictionarydata` VALUES ('34', '5', '3', '女装套装/系列');
INSERT INTO `tb_dictionarydata` VALUES ('35', '6', '1', '童装上装');
INSERT INTO `tb_dictionarydata` VALUES ('36', '6', '2', '童装下装');
INSERT INTO `tb_dictionarydata` VALUES ('37', '6', '3', '童装套装/亲子装');
INSERT INTO `tb_dictionarydata` VALUES ('38', '7', '1', '婚纱');
INSERT INTO `tb_dictionarydata` VALUES ('39', '7', '2', '礼服');
INSERT INTO `tb_dictionarydata` VALUES ('40', '7', '3', '旗袍');
INSERT INTO `tb_dictionarydata` VALUES ('41', '8', '1', '毛衫针织');
INSERT INTO `tb_dictionarydata` VALUES ('42', '9', '1', '文胸');
INSERT INTO `tb_dictionarydata` VALUES ('43', '9', '2', '内裤');
INSERT INTO `tb_dictionarydata` VALUES ('44', '9', '3', '家居服');
INSERT INTO `tb_dictionarydata` VALUES ('45', '9', '4', '泳装');
INSERT INTO `tb_dictionarydata` VALUES ('46', '9', '5', '美体塑身');
INSERT INTO `tb_dictionarydata` VALUES ('47', '10', '1', '鞋子');
INSERT INTO `tb_dictionarydata` VALUES ('48', '10', '2', '箱包');
INSERT INTO `tb_dictionarydata` VALUES ('49', '10', '3', '帽子');
INSERT INTO `tb_dictionarydata` VALUES ('50', '10', '4', '其他饰品');
INSERT INTO `tb_dictionarydata` VALUES ('51', '11', '1', '正装');
INSERT INTO `tb_dictionarydata` VALUES ('52', '11', '2', '功能服');
INSERT INTO `tb_dictionarydata` VALUES ('53', '11', '3', '户外');
INSERT INTO `tb_dictionarydata` VALUES ('54', '11', '4', '职业制服');
INSERT INTO `tb_dictionarydata` VALUES ('55', '12', '1', '外套／夹克');
INSERT INTO `tb_dictionarydata` VALUES ('56', '12', '2', '大衣／风衣／皮衣');
INSERT INTO `tb_dictionarydata` VALUES ('57', '12', '3', 'T恤／衬衫');
INSERT INTO `tb_dictionarydata` VALUES ('58', '12', '4', '卫衣');
INSERT INTO `tb_dictionarydata` VALUES ('59', '12', '5', '背心／马夹');
INSERT INTO `tb_dictionarydata` VALUES ('60', '12', '6', '小西装');
INSERT INTO `tb_dictionarydata` VALUES ('61', '12', '7', '棉服／羽绒服');
INSERT INTO `tb_dictionarydata` VALUES ('62', '13', '1', '牛仔裤');
INSERT INTO `tb_dictionarydata` VALUES ('63', '13', '2', '休闲裤');
INSERT INTO `tb_dictionarydata` VALUES ('64', '13', '3', '西装裤');
INSERT INTO `tb_dictionarydata` VALUES ('65', '13', '4', '短裤');
INSERT INTO `tb_dictionarydata` VALUES ('66', '14', '1', '休闲套装');
INSERT INTO `tb_dictionarydata` VALUES ('67', '14', '2', '运动套装');
INSERT INTO `tb_dictionarydata` VALUES ('68', '14', '3', '创意时装');
INSERT INTO `tb_dictionarydata` VALUES ('69', '15', '1', '大衣／风衣／夹克');
INSERT INTO `tb_dictionarydata` VALUES ('70', '15', '2', '皮衣／皮草');
INSERT INTO `tb_dictionarydata` VALUES ('71', '15', '3', '衬衫／雪纺衫');
INSERT INTO `tb_dictionarydata` VALUES ('72', '15', '4', 'T恤');
INSERT INTO `tb_dictionarydata` VALUES ('73', '15', '5', '卫衣');
INSERT INTO `tb_dictionarydata` VALUES ('74', '15', '6', '背心／马夹');
INSERT INTO `tb_dictionarydata` VALUES ('75', '15', '7', '小西装');
INSERT INTO `tb_dictionarydata` VALUES ('76', '15', '8', '棉服／羽绒服');
INSERT INTO `tb_dictionarydata` VALUES ('77', '16', '1', '牛仔裤');
INSERT INTO `tb_dictionarydata` VALUES ('78', '16', '2', '休闲裤');
INSERT INTO `tb_dictionarydata` VALUES ('79', '16', '3', '西装裤');
INSERT INTO `tb_dictionarydata` VALUES ('80', '16', '4', '短裤');
INSERT INTO `tb_dictionarydata` VALUES ('81', '16', '5', '连衣裙');
INSERT INTO `tb_dictionarydata` VALUES ('82', '16', '6', '半身裙');
INSERT INTO `tb_dictionarydata` VALUES ('83', '17', '1', '休闲套装');
INSERT INTO `tb_dictionarydata` VALUES ('84', '17', '2', 'OL套装');
INSERT INTO `tb_dictionarydata` VALUES ('85', '17', '3', '运动套装');
INSERT INTO `tb_dictionarydata` VALUES ('86', '17', '4', '创意时装');
INSERT INTO `tb_dictionarydata` VALUES ('87', '18', '1', '外套／夹克');
INSERT INTO `tb_dictionarydata` VALUES ('88', '18', '2', '大衣／风衣');
INSERT INTO `tb_dictionarydata` VALUES ('89', '18', '3', '毛衣');
INSERT INTO `tb_dictionarydata` VALUES ('90', '18', '4', 'T恤／衬衫');
INSERT INTO `tb_dictionarydata` VALUES ('91', '18', '5', '卫衣');
INSERT INTO `tb_dictionarydata` VALUES ('92', '18', '6', '马夹');
INSERT INTO `tb_dictionarydata` VALUES ('93', '18', '7', '背心／吊带衫');
INSERT INTO `tb_dictionarydata` VALUES ('94', '18', '8', '棉服／羽绒服');
INSERT INTO `tb_dictionarydata` VALUES ('95', '19', '1', '裤子');
INSERT INTO `tb_dictionarydata` VALUES ('96', '19', '2', '裙子');
INSERT INTO `tb_dictionarydata` VALUES ('97', '20', '1', '休闲套装');
INSERT INTO `tb_dictionarydata` VALUES ('98', '20', '2', '婴幼套装');
INSERT INTO `tb_dictionarydata` VALUES ('99', '20', '3', '运动套装');
INSERT INTO `tb_dictionarydata` VALUES ('100', '20', '4', '亲子装');
INSERT INTO `tb_dictionarydata` VALUES ('101', '21', '1', '婚纱');
INSERT INTO `tb_dictionarydata` VALUES ('102', '22', '1', '礼服');
INSERT INTO `tb_dictionarydata` VALUES ('103', '23', '1', '旗袍');
INSERT INTO `tb_dictionarydata` VALUES ('104', '24', '1', '毛衫针织');
INSERT INTO `tb_dictionarydata` VALUES ('105', '25', '1', '文胸');
INSERT INTO `tb_dictionarydata` VALUES ('106', '25', '2', '套装');
INSERT INTO `tb_dictionarydata` VALUES ('107', '26', '1', '男士内裤');
INSERT INTO `tb_dictionarydata` VALUES ('108', '26', '2', '女士内裤');
INSERT INTO `tb_dictionarydata` VALUES ('109', '27', '1', '男士睡衣');
INSERT INTO `tb_dictionarydata` VALUES ('110', '27', '2', '女士睡衣');
INSERT INTO `tb_dictionarydata` VALUES ('111', '27', '3', '儿童睡衣');
INSERT INTO `tb_dictionarydata` VALUES ('112', '28', '1', '男士泳装');
INSERT INTO `tb_dictionarydata` VALUES ('113', '28', '2', '女士泳装');
INSERT INTO `tb_dictionarydata` VALUES ('114', '28', '3', '儿童泳装');
INSERT INTO `tb_dictionarydata` VALUES ('115', '29', '1', '美体塑身');
INSERT INTO `tb_dictionarydata` VALUES ('116', '30', '1', '男鞋');
INSERT INTO `tb_dictionarydata` VALUES ('117', '30', '2', '女鞋');
INSERT INTO `tb_dictionarydata` VALUES ('118', '30', '3', '童鞋');
INSERT INTO `tb_dictionarydata` VALUES ('119', '31', '1', '女包');
INSERT INTO `tb_dictionarydata` VALUES ('120', '31', '2', '男包');
INSERT INTO `tb_dictionarydata` VALUES ('121', '31', '3', '箱');
INSERT INTO `tb_dictionarydata` VALUES ('122', '32', '1', '男士');
INSERT INTO `tb_dictionarydata` VALUES ('123', '32', '2', '女士');
INSERT INTO `tb_dictionarydata` VALUES ('124', '33', '1', '饰品\r\n');
INSERT INTO `tb_dictionarydata` VALUES ('125', '34', '1', '男士');
INSERT INTO `tb_dictionarydata` VALUES ('126', '34', '2', '女士');
INSERT INTO `tb_dictionarydata` VALUES ('127', '34', '3', '系列');
INSERT INTO `tb_dictionarydata` VALUES ('128', '35', '1', '功能服\r\n');
INSERT INTO `tb_dictionarydata` VALUES ('129', '36', '1', '户外\r\n');
INSERT INTO `tb_dictionarydata` VALUES ('130', '37', '1', '商场营业类');
INSERT INTO `tb_dictionarydata` VALUES ('131', '37', '2', '宾馆酒店类');
INSERT INTO `tb_dictionarydata` VALUES ('132', '37', '3', '医疗卫生类');
INSERT INTO `tb_dictionarydata` VALUES ('133', '37', '4', '行政事业类');
INSERT INTO `tb_dictionarydata` VALUES ('134', '37', '5', '劳动工装类');
INSERT INTO `tb_dictionarydata` VALUES ('135', '38', '1', '企业购买版权');
INSERT INTO `tb_dictionarydata` VALUES ('136', '38', '2', '个人购买衣服');
INSERT INTO `tb_dictionarydata` VALUES ('137', '38', '3', '其他');
INSERT INTO `tb_dictionarydata` VALUES ('138', '39', '1', '男装面料');
INSERT INTO `tb_dictionarydata` VALUES ('139', '39', '2', '女装面料');
INSERT INTO `tb_dictionarydata` VALUES ('140', '39', '3', '运动面料');
INSERT INTO `tb_dictionarydata` VALUES ('141', '39', '4', '外套面料');
INSERT INTO `tb_dictionarydata` VALUES ('142', '39', '5', '内衣面料');
INSERT INTO `tb_dictionarydata` VALUES ('143', '39', '6', '衬衣面料');
INSERT INTO `tb_dictionarydata` VALUES ('144', '39', '7', '泳衣面料');
INSERT INTO `tb_dictionarydata` VALUES ('145', '39', '8', '里布');
INSERT INTO `tb_dictionarydata` VALUES ('146', '39', '9', '裤料面料');
INSERT INTO `tb_dictionarydata` VALUES ('147', '39', '10', '睡衣面料');
INSERT INTO `tb_dictionarydata` VALUES ('148', '39', '11', '西服面料');
INSERT INTO `tb_dictionarydata` VALUES ('149', '39', '12', '休闲服面料');
INSERT INTO `tb_dictionarydata` VALUES ('150', '39', '13', '工作服/制服面料');
INSERT INTO `tb_dictionarydata` VALUES ('151', '39', '14', '羽绒服');
INSERT INTO `tb_dictionarydata` VALUES ('152', '39', '15', '礼服/旗袍面料');
INSERT INTO `tb_dictionarydata` VALUES ('153', '39', '16', '民族服装面料');
INSERT INTO `tb_dictionarydata` VALUES ('154', '39', '17', '户外服装');
INSERT INTO `tb_dictionarydata` VALUES ('155', '39', '18', 'T恤面料');
INSERT INTO `tb_dictionarydata` VALUES ('156', '39', '19', '功能性面料');
INSERT INTO `tb_dictionarydata` VALUES ('157', '39', '20', '春装面料');
INSERT INTO `tb_dictionarydata` VALUES ('158', '39', '21', '夏装面料');
INSERT INTO `tb_dictionarydata` VALUES ('159', '39', '22', '秋装面料');
INSERT INTO `tb_dictionarydata` VALUES ('160', '39', '23', '冬装面料');
INSERT INTO `tb_dictionarydata` VALUES ('161', '39', '24', '风衣料');
INSERT INTO `tb_dictionarydata` VALUES ('162', '39', '25', '其他用途');

-- ----------------------------
-- Table structure for tb_enterpriseinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_enterpriseinfo`;
CREATE TABLE `tb_enterpriseinfo` (
  `enterprise_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `enterprise_name` varchar(50) NOT NULL COMMENT '企业名称',
  `enterprise_des` longtext NOT NULL COMMENT '简介',
  `enterprise_address` varchar(50) NOT NULL COMMENT '地址 ',
  `enterprise_phone` varchar(50) NOT NULL COMMENT '电话',
  `enterprise_fax` varchar(50) NOT NULL COMMENT '传真',
  `enterprise_contacts` varchar(50) NOT NULL COMMENT '联系人姓名',
  `enterprise_contactsphone` varchar(50) NOT NULL COMMENT '联系人电话 ',
  `enterprise_net` varchar(50) DEFAULT NULL COMMENT '网址',
  `enterprise_updateTime` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `enterprise_logo` varchar(50) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`enterprise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='tb_enterpriseInfo';

-- ----------------------------
-- Records of tb_enterpriseinfo
-- ----------------------------
INSERT INTO `tb_enterpriseinfo` VALUES ('1', '深圳市鸿威服饰有限公司', '赛茗轩纺织家族经营:专业供应化纤布,高密度尼龙尼丝纺，涤纶，各种产体感觉提花印花等等！ ', '广东省深圳市南山区科技园南区R2-B三楼', '0763-13156133', '0763-13156133', '张双双', '12645648923', 'http://www.aimashi.com/', '2012-02-21', 'image/enterprise/logo_1.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('2', '北京贵仕佳艺服装有限公司', '公司成立于2005年12月，是近年来在中国服装市场迅速崛起的著名服饰企业，拥有国内著名青春休闲服饰品牌“潮流前线”。', '广东省广州市天河区天河路89号', '0766-56123132', '0766-56123132', '李小平', '13564632326', 'http://www.aiyifu.com/', '2013-06-23', 'image/enterprise/logo_2.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('3', '深圳市宝安区西乡凯德兰服装厂', '深圳市凯德兰服饰有限公司是一家集设计生产、制作、销售、为一体的大型服饰企业，专业设计生产；工厂制服、矿山制服、码头制服、运输制服、建筑制服、酒店制服、学校制服、医院制服等...', '广东省广州市荔湾区沙面北街53号', '020-856416332', '020-856416332', '林丹和', '15423564564', 'http://www.fasion.com/', '2013-11-12', 'image/enterprise/logo_3.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('4', '东阳市鼎尚服饰有限公司', '东阳市鼎尚服饰有限公司是一家专业的制帽公司 我司专业生产各款帽子及配套的围巾一系列服饰类产品。 ', '广东省广州市天河区天河路89号', '020-62548642', '020-62548642', '王遂', '15456232336', 'http://www.onr.com/', '2013-05-23', 'image/enterprise/logo_4.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('5', '深圳市金凌外贸服饰有限公司', '深圳市金凌外贸服饰有限公司是等产品专业生产加工的公司，拥有完整、科学的质量管理体系。深圳市金凌外贸服饰有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临参观', '广东省广州市越秀区北京路182号', '020-22564162', '020-22564162', '李世', '15978956232', 'http://www.djsins.com/', '2012-03-21', 'image/enterprise/logo_5.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('6', '广州市花都区狮岭信义皮革商行', ' 本公司专业生产70DPVC/70T里布、190T里布、210T/210D牛津布、230D斜纹、300D高弹、420D牛津布、600D牛津布、840D牛津布、900D牛津布、1200D牛津布、1680D单股、1680D双股优丽胶、1800D、PU、PE、PVC、涂银、发泡、色丁面料、珠江帆、花瑶米高、一分格、二分格、三分格、五分格、十字提花、优丽胶提花、印花等面料的箱包牛津布,雨衣帐篷布,沙滩椅牛津布、及防水防冻、抗紫外线、阻燃、低毒、平纹钻纹亮光底，也可以由客户提供样品,按要求定做.为客户提供织造,染色', '广东省广州市天河区元岗北街11号', '020-80165165', '020-80165165', '李爽', '16548975234', 'http://www.cjk.com/', '2014-06-28', 'image/enterprise/logo_6.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('7', ' 苏州璟轩纺织有限公司', '苏州璟轩纺织有限公司创立于2010年，坐落于有“日出万匹，衣被天下”美誉的绸都—盛泽。公司主要从事纺织面料研发、印染、后整理生产及销售。 ', '广东省佛山市南海区里水镇河塱沙东部工业区自编路6号 ', '020-84623322', '020-84623322', '李易', '14894623233', 'http://www.huanxuan.com/', '2010-03-14', 'image/enterprise/logo_7.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('8', '广州市海珠区滨江飞赛茗轩纺织品店', '广州市海珠区滨江飞赛茗轩纺织品成立于2005年11月13日， 坐落于广州市海珠区中大新港路顺景街4号首层5号铺。顺景停车场对面。 \r\n赛茗轩纺织家族经营:专业供应化纤布,高密度尼龙尼丝纺，涤纶，各种产体感觉提花印花等等！ ', '佛山市禅城区汾江中路121号东建大厦21楼k室', '020-84131323', '020-84131323', '杜佳佳', '14894223236', 'http://www.cdiso.com/', '2008-11-28', 'image/enterprise/logo_8.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('9', ' 广州宏森布业纺织', '广州宏森布业纺织。位于广州中大布料批发市场核心地带(广州中大布料批发市场五凤西场三区正街20号宏森纺织)。本商行经营各种户外系列梭织/针织布料，产品均为自产自销品种，产品适用于户外系列服饰（骑行服/皮肤衣/驴行服/快干服/快干裤/冲锋衣/防晒服/蹬山服/野外服等）专用特殊纺织布料，防水/防寒/防静电等三防工艺。广州宏森纺织在广州中大布料批发市场,于2010年成立网络上经营批发业务，主营：户外体育针织系列布料、户外休闲梭织系列布料、风衣羽绒服布料、（各种工作服、制服、校服）指定专用纺织布料、时尚休闲梭织纯棉', '广东省佛山市南海区里水和顺逢涌小康路文头岭1号', '020-84625462', '020-84625462', '龙思思', '15897462133', 'http://www.hongsheng.com/', '2012-08-08', 'image/enterprise/logo_9.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('10', '绍兴泉兴纺织品有限公司', '绍兴县泉兴纺织品有限公司位于绍兴县柯桥——世界上最大的纺织基地中国轻纺城。本公司基于 华南纺织印染有限公司 合作专业生产：全棉、涤棉、涤纶、CVC、TC、亚麻、亚麻棉、亚麻粘、苎麻，摇粒绒，复合面料、四面弹复合TPU摇粒绒、珊瑚绒等产品，拥有完整、科学的质量管理体系。产品远销欧、美、澳洲、南美、中东、东南亚等国家。 \r\n', '广东省佛山市顺德区北滘镇跃进南路1号跃进中心大楼（原文化广场）A座五楼512号 ', '0785-56165163', '0785-56165163', '章小平', '15498489456', 'http://www.csincl.com/', '2014-09-10', 'image/enterprise/logo_10.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('11', '保定葆玖服饰制造有限公司', '保定葆玖服饰制造有限公司是中年帽子、雷锋帽、棒球帽、网纱帽、鸭舌帽等产品专业生产加工的公司', '河北 保定市盛泽镇渔业村强渔路20-21号', '020-56156161', '020-56156161', '李小姐', '13613613601', 'http://www.baojiu.com/', '2016-10-01', 'image/enterprise/logo_11.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('12', '深圳市芊衣芊荨服饰有限公司', '深圳市芊衣芊荨服饰有限公司 经销批发的服饰、服饰畅销消费者市场，在消费者当中享有较高的地位', '广东省深圳市南山区科技园南区R2-B三楼', '020-81361651', '020-81361651', '林小姐', '13613613602', 'http://www.xianyi.com/', '2017-10-11', 'image/enterprise/logo_12.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('13', '深圳市锦龙服饰有限公司', '深圳市锦龙服饰有限公司，是专业的职业装制造企业，拥有最先进的进口设备', '天津市河西区解放南路475号 ', '0769-21651322', '0769-21651322', '刘小姐', '13613613603', 'http://www.mianlong.com/', '2017-10-03', 'image/enterprise/logo_13.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('14', '北京米兰博服装有限公司', '米兰博服装公司对中外企事业单位机构提供一个从设计、生产、销...', '中国广东广州花都区狮岭镇皮革皮具城A一街62号', '0575 - 84115076', '0575 - 84115076', '王先生', '13613613604', 'http://www.milaibo.com/', '2017-06-04', 'image/enterprise/logo_14.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('15', '上海黎歌企业管理咨询有限公司', '上海黎歌企业管理咨询有限公司是一家专注于毛呢大衣、羊绒大衣、毛衫、羽绒服、连衣裙等产品设计', '中国江苏苏州吴江区盛泽镇西环路西侧(林桑场)', '0569-56959598', '0569-56959598', '白先生', '13613613605', 'http://www.lising.com/', '2017-10-22', 'image/enterprise/logo_15.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('16', '深圳市洪熙衣衣服饰企业', '深圳市洪熙衣衣服饰企业 经销批发的服装、女装畅销消费者市场，在消费者当中享有较高的地位', '中国广东广州海珠区新港西路82号自编F-1区C1058展厅', '020-84625462', '020-84625462', '赵先生', '13613613606', 'http://www.hongxi.com/', '2016-02-06', 'image/enterprise/logo_16.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('17', '东莞市松雨服饰有限公司', '虎门松雨服饰始创2006年，是集研发、生产、营销、运营为一体的服饰企业', '中国 江苏 苏州市吴江区盛泽镇丝绸商城别墅区7区20号左二排第一家 ', '020-89612332', '020-89612332', '洪先生', '13613613607', 'http://www.songyu.com/', '2017-10-07', 'image/enterprise/logo_17.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('18', '艾利斯服饰', '广州市艾利斯服饰集销售、生产为一体的综合性企业', '中国广东东莞虎门镇富民皮料市场B687号铺位', '020-35945616', '020-35945616', '叶先生', '13613613608', 'http://www.ailisi.com/', '2017-10-15', 'image/enterprise/logo_18.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('19', '佛山市迈利特贸易有限公司', '佛山市迈利特贸易有限公司是女装，包括连衣裙、衬衫、T-Shirt、外套等产品', '广东 佛山市禅城区汾江中路121号东建大厦21楼k室', '0759-5526163', '0759-5526163', '钱先生', '13613613609', 'http://www.mailite.com/', '2017-01-09', 'image/enterprise/logo_19.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('20', '广州露依服装有限公司', '广州露依服装有限公司 经销批发的连衣裙、半身裙、上衣、裤子、外套畅销消费者市场', '河北 保定市盛泽镇渔业村强渔路20-21号', '020-868686869', '020-868686869', '范先生', '13613613610', 'http://www.luyifu.com/', '2015-10-10', 'image/enterprise/logo_20.jpg');
INSERT INTO `tb_enterpriseinfo` VALUES ('21', '莱克斯顿', 'LAXDN是LAXDN家族于1986年创立了男装品牌，它沿承了拉丁文“LAXUS”的优雅、华丽的意思', '广东省深圳市南山区科技园南区R2-B三楼', '+86 20-84011328', '+86 20-84011618', ' 张如 ', '15986521021 ', 'http://www.laxdn.com/', '2012-02-21', 'image/enterprise/logo_21.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('22', 'GIORGIO GIULINI庄姿妮', 'GIORGIO GIULINI庄姿妮是广东省纺织品进出口股份旗下一女装品牌', '广东省广州市小北路168号粤纺大厦4楼', '020-83562945', '(020)83558987', '许小姐', '13600471626', 'http://www.giogiu.com/', '2013-06-23', 'image/enterprise/logo_22.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('23', 'Cabbeen 卡宾', '卡宾服饰由中国时装设计界最高奖——“金顶奖”得主卡宾先生于1997年创建。', '广州市天河区瘦狗岭路379号卡宾服饰大厦', '852 - 23195624 \r\n', '852 - 23195824 \r\n', '招燕', '13659456232', 'http://www.cabbeen.com/', '2013-11-12', 'image/enterprise/logo_23.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('24', '约翰尊品', '铁岭县约翰尊品专卖店地址设在新兴的煤电能源之城---铁岭，辽宁 铁岭 新华街，老板是赵德义', '广州市番禺区广州大学城外环东路232号', '(0410)4848884', '(0410)4848884', '赵德义', '14659526323', 'http://www.huangye.com/', '2013-05-23', 'image/enterprise/logo_24.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('25', '路易诗兰 LOUIS LONG', '路易诗兰服饰有限公司，以设计为先导，集生产、销售、服务为一体，主要经营中高档服饰系列产品', '浙江省温州市龙湾区沙城镇明珠路855号', '0577-86806869', '0577-86806868', '王恣意', '15045623233', 'http://www.louislong.com/', '2012-03-21', 'image/enterprise/logo_25.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('26', '佛伦派克', '佛伦派克(FULENPAK)一个源自于浪漫的国度--意大利的著名时装品牌', '广东省东莞市虎门港口大道103号喜来登商贸中心三楼', '0769-5225799', '0769-5225799', '李萍', '14959623233', 'http://www.fulenpak.com/', '2014-06-28', 'image/enterprise/logo_26.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('27', '朵兰帝', '朵兰帝，英文名称是DOLAND，是深圳市天汇服饰有限公司旗下的服装品牌。', '深圳市福田区八卦4路411栋2楼8楼', '0755-82429694', '0755-82446286', '王先生', '17985945652', 'http://www.doland.com/', '2010-03-14', 'image/enterprise/logo_27.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('28', '深圳市伊思佩尔时装有限公司', '伊思佩尔深圳市伊思佩尔时装有限公司，是香港伊思佩尔国际时装有限公司进驻中国市场设立的商业机构', '广东深圳南山区南海大道256号 ', '0086-0755-82451392', '0086-0755-82440333', '王凯', '13697565652', 'http://www.easpeer.com/', '2008-11-28', 'image/enterprise/logo_28.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('29', '城市俪人CSLR', '达利国际集团有限公司为全球知名的丝绸纺织及服装企业。', '广东深圳南山区南海大道3688号 ', '400-9958-399', '400-9958-399', '陆一峰', '13694566456', 'http://www.chinasspp.com/', '2012-08-08', 'image/enterprise/logo_29.png');
INSERT INTO `tb_enterpriseinfo` VALUES ('30', 'GIORDANO佐丹奴', 'GIORDANO品牌1983年于香港创立，并开设服装零售连锁店', '广东省佛山市顺德区北滘镇跃进南路1号跃进中心大楼（原文化广场）A座五楼512号', '(8621) 6350 1589', '(8621) 6350 15', '冯清', '12546465322', 'https://www.giordanoladies.com/', '2014-09-10', 'image/enterprise/logo_30.png');

-- ----------------------------
-- Table structure for tb_fabriccomposition
-- ----------------------------
DROP TABLE IF EXISTS `tb_fabriccomposition`;
CREATE TABLE `tb_fabriccomposition` (
  `fabricComposition_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增',
  `fabricComposition_number` int(11) NOT NULL COMMENT '编号',
  `fabricComposition_supCategory` int(11) DEFAULT NULL COMMENT '上级分类',
  `fabricComposition_categoryName` varchar(50) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`fabricComposition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='tb_fabricComposition';

-- ----------------------------
-- Records of tb_fabriccomposition
-- ----------------------------
INSERT INTO `tb_fabriccomposition` VALUES ('1', '1', '0', '棉');
INSERT INTO `tb_fabriccomposition` VALUES ('2', '2', '0', '化纤');
INSERT INTO `tb_fabriccomposition` VALUES ('3', '3', '0', '皮毛');
INSERT INTO `tb_fabriccomposition` VALUES ('4', '4', '0', '混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('5', '5', '0', '麻');
INSERT INTO `tb_fabriccomposition` VALUES ('6', '6', '0', '新型纤维');
INSERT INTO `tb_fabriccomposition` VALUES ('7', '7', '0', '丝');
INSERT INTO `tb_fabriccomposition` VALUES ('8', '8', '1', '全棉布');
INSERT INTO `tb_fabriccomposition` VALUES ('9', '9', '1', '净色棉');
INSERT INTO `tb_fabriccomposition` VALUES ('10', '10', '1', '灯芯绒');
INSERT INTO `tb_fabriccomposition` VALUES ('11', '11', '1', '帆布');
INSERT INTO `tb_fabriccomposition` VALUES ('12', '12', '1', '缎纹／贡缎');
INSERT INTO `tb_fabriccomposition` VALUES ('13', '13', '1', '棉竹节');
INSERT INTO `tb_fabriccomposition` VALUES ('14', '14', '1', '牛仔布');
INSERT INTO `tb_fabriccomposition` VALUES ('15', '15', '1', '纱卡');
INSERT INTO `tb_fabriccomposition` VALUES ('16', '16', '1', '平布');
INSERT INTO `tb_fabriccomposition` VALUES ('17', '17', '1', '府绸');
INSERT INTO `tb_fabriccomposition` VALUES ('18', '18', '1', '斜纹');
INSERT INTO `tb_fabriccomposition` VALUES ('19', '19', '1', '其他棉类');
INSERT INTO `tb_fabriccomposition` VALUES ('20', '20', '2', '雪纺');
INSERT INTO `tb_fabriccomposition` VALUES ('21', '21', '2', '全涤布');
INSERT INTO `tb_fabriccomposition` VALUES ('22', '22', '2', '尼龙布');
INSERT INTO `tb_fabriccomposition` VALUES ('23', '23', '2', '丝绒');
INSERT INTO `tb_fabriccomposition` VALUES ('24', '24', '2', '粘胶');
INSERT INTO `tb_fabriccomposition` VALUES ('25', '25', '2', '氨纶');
INSERT INTO `tb_fabriccomposition` VALUES ('26', '26', '2', '人造丝');
INSERT INTO `tb_fabriccomposition` VALUES ('27', '27', '2', '空气层');
INSERT INTO `tb_fabriccomposition` VALUES ('28', '28', '2', '其他化纤');
INSERT INTO `tb_fabriccomposition` VALUES ('29', '29', '3', '麦呢');
INSERT INTO `tb_fabriccomposition` VALUES ('30', '30', '3', '法兰绒');
INSERT INTO `tb_fabriccomposition` VALUES ('31', '31', '3', '毛毡');
INSERT INTO `tb_fabriccomposition` VALUES ('32', '32', '3', '毛绒');
INSERT INTO `tb_fabriccomposition` VALUES ('33', '33', '3', '毛呢／呢绒');
INSERT INTO `tb_fabriccomposition` VALUES ('34', '34', '3', '全毛');
INSERT INTO `tb_fabriccomposition` VALUES ('35', '35', '3', '呢绒');
INSERT INTO `tb_fabriccomposition` VALUES ('36', '36', '3', '人造皮革');
INSERT INTO `tb_fabriccomposition` VALUES ('37', '37', '3', '羊毛');
INSERT INTO `tb_fabriccomposition` VALUES ('38', '38', '3', '鹿皮绒');
INSERT INTO `tb_fabriccomposition` VALUES ('39', '39', '3', '其他皮毛');
INSERT INTO `tb_fabriccomposition` VALUES ('40', '40', '4', 'T／R');
INSERT INTO `tb_fabriccomposition` VALUES ('41', '41', '4', 'T／C');
INSERT INTO `tb_fabriccomposition` VALUES ('42', '42', '4', 'CVC');
INSERT INTO `tb_fabriccomposition` VALUES ('43', '43', '4', 'N/C');
INSERT INTO `tb_fabriccomposition` VALUES ('44', '44', '4', '棉毛混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('45', '45', '4', '化纤类混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('46', '46', '4', 'T／A');
INSERT INTO `tb_fabriccomposition` VALUES ('47', '47', '4', '交织类混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('48', '48', '4', '其他混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('49', '49', '5', '亚麻');
INSERT INTO `tb_fabriccomposition` VALUES ('50', '50', '5', '麻混纺');
INSERT INTO `tb_fabriccomposition` VALUES ('51', '51', '5', '大麻');
INSERT INTO `tb_fabriccomposition` VALUES ('52', '52', '5', '黄麻');
INSERT INTO `tb_fabriccomposition` VALUES ('53', '53', '5', '剑麻');
INSERT INTO `tb_fabriccomposition` VALUES ('54', '54', '5', '其他麻类');
INSERT INTO `tb_fabriccomposition` VALUES ('55', '55', '6', '天丝');
INSERT INTO `tb_fabriccomposition` VALUES ('56', '56', '6', '莫代尔');
INSERT INTO `tb_fabriccomposition` VALUES ('57', '57', '6', '铜氨丝');
INSERT INTO `tb_fabriccomposition` VALUES ('58', '58', '6', '粘纤');
INSERT INTO `tb_fabriccomposition` VALUES ('59', '59', '6', '醋酸纤维');
INSERT INTO `tb_fabriccomposition` VALUES ('60', '60', '6', '其他纤维');
INSERT INTO `tb_fabriccomposition` VALUES ('61', '61', '7', '缎丝');
INSERT INTO `tb_fabriccomposition` VALUES ('62', '62', '7', '纺类');
INSERT INTO `tb_fabriccomposition` VALUES ('63', '63', '7', '真丝弹力');
INSERT INTO `tb_fabriccomposition` VALUES ('64', '64', '7', '绢类');
INSERT INTO `tb_fabriccomposition` VALUES ('65', '65', '7', '锦类');
INSERT INTO `tb_fabriccomposition` VALUES ('66', '66', '7', '其他丝类');

-- ----------------------------
-- Table structure for tb_fabricinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_fabricinfo`;
CREATE TABLE `tb_fabricinfo` (
  `fabric_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `provider_id` int(11) NOT NULL COMMENT '供应商id(关联供应商信息实体的ID)',
  `fabric_name` varchar(255) NOT NULL COMMENT '面料名称',
  `fabric_price` varchar(255) DEFAULT NULL COMMENT '价格',
  `fabric_compositionId` int(11) DEFAULT NULL COMMENT '成分（关联面料成分实体的ID）',
  `fabric_weaveId` int(11) NOT NULL COMMENT '织法（关联面料织法实体的ID）',
  `fabric_mainApplication` int(11) NOT NULL COMMENT '主要用途（关联字典数据实体的ID）',
  `fabric_image` varchar(255) NOT NULL COMMENT '图片',
  `fabric_like` int(11) DEFAULT NULL COMMENT '被喜欢次数',
  `fabric_collection` int(11) DEFAULT NULL COMMENT '被收藏次数',
  `fabric_addTime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `fabric_updateTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`fabric_id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `tb_fabricinfo_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `tb_provider` (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_fabricinfo
-- ----------------------------
INSERT INTO `tb_fabricinfo` VALUES ('1', '2', '帆布布料', '30', '8', '5', '2', 'image/fabric/fabric_1.png', '22', '12', '2017-04-03', '2017-04-04');
INSERT INTO `tb_fabricinfo` VALUES ('2', '5', '冰丝冰绸', '50', '9', '6', '9', 'image/fabric/fabric_2.png', '28', '88', '2017-08-09', '2017-12-13');
INSERT INTO `tb_fabricinfo` VALUES ('3', '8', '牛仔布', '900', '10', '7', '5', 'image/fabric/fabric_3.png', '45', '89', '2015-12-24', '2016-05-03');
INSERT INTO `tb_fabricinfo` VALUES ('4', '4', '素色 麻布 亚麻布', '100', '11', '10', '6', 'image/fabric/fabric_4.png', '40', '20', '2013-04-12', '2014-12-23');
INSERT INTO `tb_fabricinfo` VALUES ('5', '6', '童装布料', '520', '12', '11', '4', 'image/fabric/fabric_5.png', '109', '89', '2013-01-01', '2013-02-15');
INSERT INTO `tb_fabricinfo` VALUES ('6', '9', '素色 麻布 亚麻布', '130', '13', '18', '6', 'image/fabric/fabric_6.png', '123', '213', '2017-10-10', '2017-10-12');
INSERT INTO `tb_fabricinfo` VALUES ('7', '7', '纯色簿 棉麻衣服装布料', '230', '14', '13', '8', 'image/fabric/fabric_7.png', '45', '25', '2013-09-12', '2014-05-05');
INSERT INTO `tb_fabricinfo` VALUES ('8', '6', '薄款DIY手工布面料', '120', '15', '15', '6', 'image/fabric/fabric_8.png', '66', '86', '2016-10-23', '2016-10-25');
INSERT INTO `tb_fabricinfo` VALUES ('9', '3', '加密蚊帐软网纱布料', '200', '8', '16', '7', 'image/fabric/fabric_9.png', '79', '38', '2010-12-28', '2010-12-29');
INSERT INTO `tb_fabricinfo` VALUES ('10', '5', '蓬蓬裙窗帘床幔纱面料', '120', '9', '12', '2', 'image/fabric/fabric_10.png', '56', '23', '2014-12-23', '2015-08-08');
INSERT INTO `tb_fabricinfo` VALUES ('11', '12', '百搭裙毛料', '150', '10', '11', '2', 'image/fabric/fabric_11.jpg', '45', '59', '2017-01-01', '2017-10-10');
INSERT INTO `tb_fabricinfo` VALUES ('12', '15', '纯色布料', '110', '11', '14', '9', 'image/fabric/fabric_12.jpg', '59', '78', '2015-10-12', '2016-10-10');
INSERT INTO `tb_fabricinfo` VALUES ('13', '18', '净色棉', '89', '12', '16', '5', 'image/fabric/fabric_13.jpg', '49', '78', '2010-12-21', '2016-05-19');
INSERT INTO `tb_fabricinfo` VALUES ('14', '14', '童装全涤布面料', '65', '13', '17', '6', 'image/fabric/fabric_14.jpg', '59', '75', '2011-05-06', '2015-11-27');
INSERT INTO `tb_fabricinfo` VALUES ('15', '16', '加厚尼龙布面料', '12', '15', '22', '4', 'image/fabric/fabric_15.jpg', '90', '78', '2010-12-23', '2016-05-12');
INSERT INTO `tb_fabricinfo` VALUES ('16', '19', '加密平布面料', '47', '12', '24', '6', 'image/fabric/fabric_16.jpg', '78', '56', '2009-10-24', '2017-02-24');
INSERT INTO `tb_fabricinfo` VALUES ('17', '17', '灯芯绒面料', '112', '16', '12', '8', 'image/fabric/fabric_17.jpg', '26', '58', '2011-08-12', '2016-10-15');
INSERT INTO `tb_fabricinfo` VALUES ('18', '16', '帆布面料', '99', '17', '14', '6', 'image/fabric/fabric_18.jpg', '55', '99', '2014-10-02', '2016-05-11');
INSERT INTO `tb_fabricinfo` VALUES ('19', '13', '府绸面料', '120', '18', '15', '7', 'image/fabric/fabric_19.jpg', '88', '67', '2012-07-11', '2013-11-09');
INSERT INTO `tb_fabricinfo` VALUES ('20', '15', '莫代尔面料', '150', '15', '25', '2', 'image/fabric/fabric_20.jpg', '99', '110', '2015-10-10', '2017-10-02');
INSERT INTO `tb_fabricinfo` VALUES ('21', '21', '葛城厚斜纹布', '6', '16', '16', '2', 'image/fabric/fabric_21.png', '227', '195', '2017-04-03', '2017-04-04');
INSERT INTO `tb_fabricinfo` VALUES ('22', '22', '丝光卡其军服布', '10', '18', '17', '9', 'image/fabric/fabric_22.png', '89', '47', '2017-08-09', '2017-12-13');
INSERT INTO `tb_fabricinfo` VALUES ('23', '23', '灯芯绒，天鹅绒', '21.8', '8', '9', '5', 'image/fabric/fabric_23.png', '108', '68', '2015-12-24', '2016-05-03');
INSERT INTO `tb_fabricinfo` VALUES ('24', '24', '麦尔登呢', '18', '9', '11', '6', 'image/fabric/fabric_24.png', '57', '37', '2013-04-12', '2014-12-23');
INSERT INTO `tb_fabricinfo` VALUES ('25', '25', '苏格兰格子', '15', '10', '9', '4', 'image/fabric/fabric_25.png', '78', '53', '2013-01-01', '2013-02-15');
INSERT INTO `tb_fabricinfo` VALUES ('26', '26', '柳条绉', '15', '12', '21', '6', 'image/fabric/fabric_26.png', '137', '79', '2017-10-10', '2017-10-12');
INSERT INTO `tb_fabricinfo` VALUES ('27', '27', '山东府绸', '10', '13', '26', '8', 'image/fabric/fabric_27.png', '164', '62', '2013-09-12', '2014-05-05');
INSERT INTO `tb_fabricinfo` VALUES ('28', '28', '平纹织布', '26', '13', '25', '6', 'image/fabric/fabric_28.png', '37', '27', '2016-10-23', '2016-10-25');
INSERT INTO `tb_fabricinfo` VALUES ('29', '29', '上等细布', '7.5', '14', '12', '7', 'image/fabric/fabric_29.png', '178', '72', '2010-12-28', '2010-12-29');
INSERT INTO `tb_fabricinfo` VALUES ('30', '30', '细平布', '22', '14', '8', '2', 'image/fabric/fabric_30.png', '73', '26', '2014-12-23', '2015-08-08');
INSERT INTO `tb_fabricinfo` VALUES ('31', '1', '密织平纹', '230', '14', '6', '20', 'image/fabric/fabric_31.png', '200', '130', '2015-12-11', '2016-02-02');
INSERT INTO `tb_fabricinfo` VALUES ('32', '30', '牛津布', '465', '14', '5', '5', 'image/fabric/fabric_32.png', '15623', '9854', '2016-10-23', '2016-10-23');
INSERT INTO `tb_fabricinfo` VALUES ('33', '25', '丝光卡其军服布', '1456', '14', '5', '4', 'image/fabric/fabric_33.png', '4987', '5445', '2010-12-28', '2010-12-28');
INSERT INTO `tb_fabricinfo` VALUES ('34', '16', '哔叽呢', '48', '14', '6', '8', 'image/fabric/fabric_34.png', '4654', '464', '2014-12-23', '2014-12-23');
INSERT INTO `tb_fabricinfo` VALUES ('35', '14', '小方格花纹', '135', '15', '10', '6', 'image/fabric/fabric_35.png', '3157', '880', '2017-01-01', '2017-01-01');
INSERT INTO `tb_fabricinfo` VALUES ('36', '18', '粗呢', '258', '14', '13', '8', 'image/fabric/fabric_36.png', '981', '233', '2015-10-12', '2015-10-12');
INSERT INTO `tb_fabricinfo` VALUES ('37', '12', '粗花呢', '364', '14', '20', '7', 'image/fabric/fabric_37.png', '2646', '6456', '2010-12-21', '2010-12-21');
INSERT INTO `tb_fabricinfo` VALUES ('38', '14', '格伦格', '256', '16', '15', '4', 'image/fabric/fabric_38.png', '2157', '6747', '2011-05-06', '2011-05-06');
INSERT INTO `tb_fabricinfo` VALUES ('39', '16', '纬呢斯缎纹', '248', '10', '7', '5', 'image/fabric/fabric_39.png', '7986', '8752', '2010-12-23', '2010-12-23');
INSERT INTO `tb_fabricinfo` VALUES ('40', '15', '珊瑚绒面料', '625', '14', '9', '20', 'image/fabric/fabric_40.png', '1653', '4121', '2009-10-24', '2009-10-24');
INSERT INTO `tb_fabricinfo` VALUES ('41', '19', '重浆平布', '506', '15', '6', '23', 'image/fabric/fabric_41.png', '4563', '8795', '2011-08-12', '2011-08-12');
INSERT INTO `tb_fabricinfo` VALUES ('42', '20', '茧绸', '888', '16', '13', '21', 'image/fabric/fabric_42.png', '8976', '5456', '2014-10-02', '2014-10-02');
INSERT INTO `tb_fabricinfo` VALUES ('43', '17', '静电植绒', '999', '17', '12', '20', 'image/fabric/fabric_43.png', '6546', '8798', '2012-07-11', '2012-07-11');
INSERT INTO `tb_fabricinfo` VALUES ('44', '20', '乳白处理', '465', '22', '20', '8', 'image/fabric/fabric_44.png', '213', '435', '2015-10-10', '2015-10-10');
INSERT INTO `tb_fabricinfo` VALUES ('45', '28', '植绒印花', '488', '25', '10', '4', 'image/fabric/fabric_45.png', '489', '1354', '2017-04-03', '2017-04-03');
INSERT INTO `tb_fabricinfo` VALUES ('46', '29', '人造短纤维织物', '1562', '26', '5', '6', 'image/fabric/fabric_46.png', '874', '2165', '2017-08-09', '2017-08-09');
INSERT INTO `tb_fabricinfo` VALUES ('47', '30', '花塔夫', '151', '23', '8', '1', 'image/fabric/fabric_47.png', '2463', '8786', '2015-10-10', '2017-10-02');
INSERT INTO `tb_fabricinfo` VALUES ('48', '14', '双面布', '485', '10', '9', '5', 'image/fabric/fabric_48.png', '489', '465', '2017-04-03', '2017-04-04');
INSERT INTO `tb_fabricinfo` VALUES ('49', '17', '上胶涂布', '974', '14', '7', '2', 'image/fabric/fabric_49.png', '3546', '465', '2017-08-09', '2017-12-13');
INSERT INTO `tb_fabricinfo` VALUES ('50', '16', '桃皮起毛整理', '246', '16', '12', '2', 'image/fabric/fabric_50.png', '424', '264', '2015-12-24', '2016-05-03');

-- ----------------------------
-- Table structure for tb_helpandfeedback
-- ----------------------------
DROP TABLE IF EXISTS `tb_helpandfeedback`;
CREATE TABLE `tb_helpandfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `user_id` int(11) NOT NULL COMMENT '用户ID，关联用户表',
  `content` longtext NOT NULL COMMENT '反馈的内容',
  `datetime` varchar(255) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_helpandfeedback
-- ----------------------------

-- ----------------------------
-- Table structure for tb_information
-- ----------------------------
DROP TABLE IF EXISTS `tb_information`;
CREATE TABLE `tb_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `information_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `information_photo` varchar(255) DEFAULT NULL COMMENT '资讯相关图片一',
  `information_issueDatetime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `information_source` varchar(255) DEFAULT NULL COMMENT '信息来源',
  `information_content` longtext COMMENT '资讯内容',
  `infromation_readCount` int(11) DEFAULT NULL COMMENT '阅读次数',
  `information_status` int(11) DEFAULT NULL COMMENT '状态(正常0、置顶1、删除2)',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='tb_information';

-- ----------------------------
-- Records of tb_information
-- ----------------------------
INSERT INTO `tb_information` VALUES ('31', 'Adidas最新季报：净利润大涨 35%，中国北美销售增速均超 20%', 'http://img1.cfw.cn/editors/attached/image/20171113/20171113151098809880.png', '2017-10-25', '华丽志 文/宋凡夫', '<h4 style=\"color:#0062CC;text-align: center;\">Adidas最新季报：净利润大涨 35%，中国北美销售增速均超 20%</h3>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">德国运动用品巨头 Adidas(阿迪达斯)近日公布了2017财年第三季度的财务简报，\r\n			大中华地区和美国市场以及电商渠道高速增长，全公司本季度净利润激增 35%。不过由于欧洲的增速明显减缓，\r\n			Adidas 的股价下跌了2.2%，降至四个月来的最低点。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">在截至2017年9月30日的三个月内，Adidas 的核心财务数据如下：</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">销售额同比增长9%至56.77亿欧元，低于分析师58.6亿欧元的预期</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">毛利率增长240个基点至50.4%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">净利润同比增长35%至5.49亿欧元，高于分析师5.12亿欧元的预期</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">摊薄后每股收益同比增长33%至2.7欧元</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">电商销售额同比增长39%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Adidas 表示，价格与产品组合的优化抵消了更高的投入成本以及不利的汇率变动，毛利率得以实现较大的增长。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">各地区表现如下：</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">大中华地区销售额同比增长28%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">北美市场销售同比增长23%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">西欧销售额增幅仅为7%，远低于第二季度的19%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">拉丁美洲销售额同比增长8%</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">俄罗斯销售额同比减少17%，受累于消极的消费情绪与门店关闭</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Adidas 周三表示，大中华地区将成为公司全球扩张最大的市场机会，而电商是所有地区增长最快的渠道。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">目前，Adidas 在大中华地区拥有约一万家门店，预计到2020年将增长一倍。首席执行官 Kasper Rorsted 表示，\r\n			尽管目前该地区线上销售占比还是个位数，但是预计未来会有很大改变。他还补充说，目前中国门店超过40%的支付都是在手机端完成。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Adidas 的跑步、户外以及 Originals 和 Neo 等时尚系列的销售额均实现了两位数的增长，但表示足球和篮球业务销\r\n			售额有所下滑，主要是因为特定赞助协议的终止。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171113/20171113151098809880.png\" style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">一些投资者此前认为，在Puma上调全年预期后，Adidas 可能也会上调其全年预期。不过公司并没有再次上调其预期。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">该公司重申了2017全年预期，预计销售额将同比增长17~19%，净利润同比增长26~28%，约为13.6~13.9亿欧元。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">NFS Capital 的分析师写道：“在竞争激烈的美国市场上，Adidas 正在迎头赶上，与主要竞争对手 Nike 和 Under Armour 的疲态形成了鲜明的对比。”现在消费者更愿意购买 Adidas \r\n			的复古鞋和休闲鞋，而不是 Nike 和 Under Armour 的篮球和运动鞋。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Nike上季度销售额的增速创七年以来新低，北美季度销售十年来首次下滑。\r\n			而 Under Armour上季度销售额自2005年上市以来首次下滑，北美地区销售额同比减少12%，下调了其全预期。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">市场情报公司NPD的数据显示，Adidas 在美国鞋履市场的份额在八月份增长至 16%，而Nike 的份额则下滑至56%。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：华丽志 文/宋凡夫</p>\r\n			', '256461', '1');
INSERT INTO `tb_information` VALUES ('32', '再见“紧身衣之王”，摩洛哥时装设计师 Azzedine Alaïa 去世', 'http://img1.cfw.cn/editors/attached/image/20171120/20171120155122602260.jpg', '2017-11-01', '理想生活实验室 文/吴诗源', '<h4 style=\"color:#0062CC;text-align: center;\">再见“紧身衣之王”，摩洛哥时装设计师 Azzedine Alaïa 去世</h3>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171120/20171120155122602260.jpg\"style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">当地时间 11 月 18 日，出生于摩洛哥的时装设计师 Azzedine Alaïa 在巴黎去世，享年 77 岁。这是又一位和我们告别的传奇大师。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Azzedine Alaïa 生于 1940 年，年少时学习艺术的 Alaïa 在 1957 年来到巴黎，并从为 Christian Dior 工作开始，随后也有为 Guy Laroche 和 Thierry Mugler 工作的经历。到了 1979 年，他成立了自己的工作室，随即在 1980 年就推出了自己的首个高级成衣系列，并在纽约和比弗利山庄开出精品店。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">值得一提的是，Alaïa 更多走实用路线，他并不热衷于各种时装秀（十多年来走秀次数一只手就可以数出来，可以说是几乎不做秀了），但却以自己的作品实实在在影响了整个时尚圈。他被认为是上世纪 80 年代“超紧身性感风潮”的开端，也因此被称为“king of cling（紧身衣之王）”，他开创的紧束胸衣、柳钉、蛇皮、金属环扣等元素不断被众多品牌借鉴采用，同时他也成为各路明星的御用定制设计师，Lady Gaga、Naomi Campbell 等都是他的常客。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">今年 7 月，Azzedine Alaïa 举办了 2017 秋冬高定秀，这是从 2011 年之后 Alaïa 举办的再一次走秀（频率之低可想而知），灵感缪斯 Naomi Campbell 开场，一切都还是属于老爷子的节奏和方式。而他的突然离开，也让人感到无比惋惜，40 多年的职业生涯，Alaïa 留下了对设计和工艺的专注、对设计的态度和初衷的坚持，还有不随大流（Alber Elbaz 曾评价 Alaïa 是“自创体系”）但绝不固执的开放姿态——他自由地决定产品上市时间，也热情地拥抱 Net-a-Porter 这样的电商平台。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">直到去世之前，已经被瑞士历峰完成品牌控股的 Alaïa 本人仍然参与到具体的设计工作当中，具体的设计工作只有两个助理进行辅助。这样工匠式的方式以今天看来——尤其以 Alaïa 的资历来说难以想象，但也可以说是 Alaïa 一生的缩影。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">直到去世之前，已经被瑞士历峰完成品牌控股的 Alaïa 本人仍然参与到具体的设计工作当中，具体的设计工作只有两个助理进行辅助。这样工匠式的方式以今天看来——尤其以 Alaïa 的资历来说难以想象，但也可以说是 Alaïa 一生的缩影。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：理想生活实验室 文/吴诗源</p>', '254568', '1');
INSERT INTO `tb_information` VALUES ('33', '2018春夏米兰男装周：Versace 2018春夏男装系列秀', 'http://img1.cfw.cn/images/news_images/title_images/2017/06/19//20170619173942229.jpg', '2016-10-25', '新浪时尚', '<h4 style=\"color:#0062CC;text-align: center;\">Chloé 推出 2018 春季系列，波浪饰边、蕾丝细节处处彰显精巧的手工！ </h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/17//20171117102701193.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Chloé 每一季的系列总是会带来惊喜，这不，品牌又于最近推出了 2018 春季系列！此番 Chloé 系列主打从容迷人的飘逸造型，伞形剪裁和荷叶边设计糅合型格军服细节，刚柔并重。充满异国风情的图案透现脱俗的波希米亚气息，仿佛将我们带入一个充满阳光的国度。含蓄的装饰细节及精致的工艺，令休闲慵懒的线条增添华丽的摇滚魅力。浅灰色、奶黄色、亮白色及浅啡色等柔和色调，与清凉的粉色、深邃蓝色和深红色交错，展现新意。 </p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">不论是窗格纹还是工装裤，处处以利落的线条流露中性魅力；钩织斗篷、荷叶边胸饰上衣及饰以褶裥及蕾丝的吊坠则浪漫柔美，两者形成迷人对比。百褶、褶裥和垂坠荷叶边为层次分明的长裙和上衣注入轻盈动感，而质感独特的斗篷，则化作飘逸 V 领上衣或灯笼袖。狩猎外套今季化身时尚短裤和蕾丝休闲外套，金属色波浪提花或金属色卷藤花卉图案则为晚装长裙注入精致复古气息。从 Chloé 经典的波浪饰边、编织蕾丝到精致蕾丝，系列处处可见琳琅满目的精巧手工细节。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：popbee 文/Kay.Q</p>', '16131', '1');
INSERT INTO `tb_information` VALUES ('34', 'GUESS 2017假日广告大片', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/14//20171114151938963.jpg', '2015-11-25', '优网', '<h4 style=\"color:#0062CC;text-align: center;\">GUESS 2017假日广告大片</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/14//20171114151938963.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 拥有多张白金唱片认证的古巴墨西哥裔美国唱作歌手Camila Cabello再度归来，与模特Alex Dellisola联袂出演GUESS 2017假日广告大片，在一张张经典黑白与高饱和度彩色影像中展现无与伦比的丹宁魅力。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">本组广告大片由GUESS Inc.首席创意总监Paul Marciano担纲艺术指导，由时尚摄影师Tatiana Gerusova掌镜，取景于好莱坞著名地标——马尔蒙庄园酒店。片中，两位主角演绎的奔放活力牢牢地吸引了众人的目光，令人流连迷醉。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">无拘无束、风情万种的Cabello在著名的日落大道展现出热情似火、性感妖娆的时尚魅力。极具视觉冲击的大片呈现出令人目不暇接的特色服装设计，本季风格浓烈的色彩似欲从图片中奔涌而出。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：优网</p>', '23315', '1');
INSERT INTO `tb_information` VALUES ('35', ' PUMA x THE WEEKND 第三波联名系列重磅登陆！「精工军装」', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113151811334.jpg', '2015-08-06', 'popbee 文/Kay.Q', '<h4 style=\"color:#0062CC;text-align: center;\"> PUMA x THE WEEKND 第三波联名系列重磅登陆！「精工军装」</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113151811334.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 近日，The Weeknd 携手 PUMA 正式公布了最新一波联名单品，为其 2017 秋冬联名系列划上一个完满句号。第三波新品主打「精工军装（Crafted Military）」，采用与前两波「奢华丹宁（Deluxe Denim）」风格完全不同的配色与印花图案呈现。本季最后一波单品，在以运动作为整体设计灵感的同时，通过超大的廓形、带有藏域风情的军装风细节设计、奢华的刺绣、剪裁和缝线细节，彰显当代街头风尚。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">全新系列将高品质面料与优质的工艺相结合，赋予高街服饰新高度。主打单品包括：PUMA x XO 飞行员夹克，有迷彩帆布和全黑尼龙两款可选；复刻推出的和服式牛仔外套，同样有全黑和迷彩帆布两款可选。全系统一的风格还在 PUMA x XO 双肩背包、针织帽和棒球帽这些配饰单品中得到延伸。XO 标志性的廓形设计与粗狂的做旧元素，在采用全新迷彩图案和淡黄配色的 PUMA x XO 连帽衫及带有 PUMA x XO 徽标的 T 恤和背心上实现风格的统一。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">全黑配色的 PUMA x XO Parallel 鞋款成为此次 PUMA x XO 第三波联名系列的亮点。该款全新中帮运动靴，从经典实用的军靴中汲取设计灵感，以精工优质的意大利皮革材质打造整个鞋面，鞋底搭载配有 IGNITE 缓震技术的橡胶中底，后跟前卫的异形设计搭配加长的 PUMA 标志性跑道条纹，精奢质感与简洁设计相融合。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：popbee 文/Kay.Q</p>', '564956', '1');
INSERT INTO `tb_information` VALUES ('36', 'ZARA 秋冬耳饰系列 ：以最美丽的价格带来不一样的日常', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/02//20171102154212488.jpg', '2013-05-26', 'POPBEE', '<h4 style=\"color:#0062CC;text-align: center;\"> ZARA 秋冬耳饰系列 ：以最美丽的价格带来不一样的日常</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/02//20171102154212488.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 当耳环爱好者们看到 ZARA 的全新耳饰系列，一定会对这些首饰爱不释手。作为17年冬季系列的一部分，ZARA 将耳环设计贴近秋冬潮流，选择走夸张夺目的路线正是时下的主流。在秀台上也不例外，从 Saint Laurent 到 Roksanda，都曾出现了夸张复古耳环的身影。但是在 ZARA，我们只需要花上大牌一半的价格，就能拥有属于耳朵的时尚风格。耳饰系列中的元素，甚至比服装线更多。金属网纱、复古吊穗、珍珠镶嵌，所有这些复古的经典都不超过120 元。而这些耳饰上市的时间也恰好赶在派对满满的月份之前。当然，夸张风格的耳饰并不是只有在派对上才能出现，和日常穿搭重新组合，也能给生活带来耳目一新的惊喜。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：POPBEE</p>', '315456', '1');
INSERT INTO `tb_information` VALUES ('37', ' Free People 推出全新系列，用时尚造型扮靓秋冬美好时光！', 'http://img1.cfw.cn/images/news_images/title_images/2017/10/25//20171025165501949.jpg', '2016-04-23', 'popbee 文/Kay.Q', '<h4 style=\"color:#0062CC;text-align: center;\"> Free People 推出全新系列，用时尚造型扮靓秋冬美好时光！</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/10/25//20171025165501949.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> Free People 于近日推出全新 2017 秋冬系列，将秋日暖阳融入单品设计之中，时髦感升级之余更打造舒适温暖的穿着感。无论是暖色调并极致柔软的高领毛衣、充满现代感的简洁风衣，还是百搭的时尚绒面高筒靴、经典乐福鞋，都将成为本季时髦衣柜的必备之选。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">此外，一系列复古元素也带领我们重温经典旧时光，开启一段充满温情的秋冬时尚旅程。此番秋冬系列的单品设计中融入多彩花朵刺绣、提花、亮片、丝绸及天鹅绒等经久不衰的时尚元素，为秋冬穿搭注入一抹靓丽的色彩。Free People 用时尚态度打造温暖单品，扮靓秋冬美好时光。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：popbee 文/Kay.Q</p>\r\n		', '546132', '1');
INSERT INTO `tb_information` VALUES ('38', '2018春夏米兰男装周：Versace 2018春夏男装系列秀', 'http://img1.cfw.cn/images/news_images/title_images/2017/06/19//20170619173942229.jpg', '2013-09-10', '新浪时尚', '<h4 style=\"color:#0062CC;text-align: center;\"> 2018春夏米兰男装周：Versace 2018春夏男装系列秀</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/06/19//20170619173942229.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 2018春夏米兰男装周，为了纪念20年前死去的哥哥，Versace 2018春夏男装系列把目光放到了怀念上，运用了不少设计理念均来自哥哥Gianni。开场时模特身穿的条纹西服套装从细节到形状都与Gianni曾经的设计相似。而服装上象征Versace的印花图案更是把目光带回了80年代，整场秀充满回忆但又不失经典。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：新浪时尚</p>	', '465664', '1');
INSERT INTO `tb_information` VALUES ('39', '摈弃固有套路，将潮流格局扩展：上海时装周 INXX 2018 春夏系列秀场直击', 'http://img1.cfw.cn/images/news_images/title_images/2017/10/17//20171017112606901.jpg', '2016-11-12', 'POPBEE', '<h4 style=\"color:#0062CC;text-align: center;\"> 摈弃固有套路，将潮流格局扩展：上海时装周 INXX 2018 春夏系列秀场直击 </h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/10/17//20171017112606901.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 时尚品牌 INXX 在上海时装周新天地会场发布了其 2018 春夏男女服饰系列。这场秀以 REVERSAL OF RULES(反转规则)为名，如大家所见，INXX 的最新系列就是要摒弃一切固有套路，将潮流格局再次扩展。明年作为足球之年，2018 年的世界杯将在俄罗斯举办，INXX 由此作为灵感来源，将一系列足球装备「INXX」化，并以国人的精神图腾——中国红为主色，使整个系列呈现耀斑爆发一般的炙热之感，也同时寄托了国足征战世界舞台的希冀。  </p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这一季拥有极强存在感的背景设置与 INXX 当季所呈示复古运动风在对比中透露着呼应，红蓝、迷彩等鲜活色彩被提取辅以叛逆宽大的廓形，简洁有力的色块展示与时兴潮流元素的摄取，让观众目睹二者如何在协调中保持本色。颇为隐喻的是 INXX 也在深化了 90 年代的设计上做出了努力，而这灵感正来源于日系的热血漫，热血不灭。相互扶持，穿着极具时代感的运动制服，整齐划一、充满威逼感。线条分明的外套、戏谑般的叠穿，踏上绚丽的鞋履，使人们体验到关于高街潮流的无限可能。从中我们可以感受到诸多复古文化意象的精描与交融，而不仅仅是色块的堆叠与凌厉廓形的展示。INXX 除了在整体观感上加重了运动时装的比重，也融入了诸多复古意味的设计理念，使整体具备了更为强烈的复古运动文化肌理。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：POPBEE</p>', '795231', '1');
INSERT INTO `tb_information` VALUES ('40', '勇者无惧 动者无疆 XIANG SHANG SPORT•黄皆明运动装发布会', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/07//20171107140631069.jpg', '2015-07-28', '中国国际时装周', '<h4 style=\"color:#0062CC;text-align: center;\">勇者无惧 动者无疆 XIANG SHANG SPORT•黄皆明运动装发布会 </h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/07//20171107140631069.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">11月2日，武汉纺织大学服装学院副教授、中国十佳时装设计师黄皆明携手山东向尚服饰文化有限公司“向尚运动”品牌，在751D•PARK第一车间带来最新的2018S/S春夏运动时尚设计系列。这是黄皆明继2010年后，再次在中国国际时装周上亮相，而此时他的身份正如其名，横跨产学研“皆明”。确切地说，本次发布是黄皆明作为国内首屈一指的运动类别专业设计师潜心产业蛰伏7年后携手专业品牌的首次创意爆发。 </p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">向尚 2018S/S春夏运动时尚系列设计，以“无惧”为主题，着重诠释运动为人类带来探索、发现、跨越或涅槃，进而找回自我、找回快乐、找回对生活无限期待的精神，以及由运动过程提炼出的一种无关种族、无关年龄、无关贫富的极简时尚。黄皆明本季共带来两个系列45套新品服装，其中的足球运动系列延续了他多年来专业进行运动装备设计的精湛娴熟的技艺和风格，而“时髦又实用”的运动生活系列则成为设计师视野由专业运动向全民健身转化的一次全新尝试。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：中国国际时装周</p>', '64564', '1');
INSERT INTO `tb_information` VALUES ('41', '周杰伦快闪店开进北京 SKP，明星 IP 生意……就是这样？', 'http://img1.cfw.cn/editors/attached/image/20170828/20170828110314011401.jpg', '2014-09-18', '好奇心日报 文/刘璐天', '<h4 style=\"color:#0062CC;text-align: center;\"> 周杰伦快闪店开进北京 SKP，明星 IP 生意……就是这样？</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">离 8 月 25 日、26 日举行的周杰伦“地表最强”北京演唱会还有一周的时候，一家同名快闪店开在了北京高端奢侈品百货 SKP 地下一层 SKP Select 的正门口。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">快闪店不大，只有 10 平米左右，更类似一个展台。陈列算不上精致：一个黑色货架和两架 T 恤、卫衣共同围合成一个向外敞开的正方形区域。地板上贴着印有“地表最强” Logo 的黑色星空图案，最显眼的还是货架旁一张模拟朋友圈状态的周杰伦立板;在售商品有 50 多件，包括演唱会周边和 MRJ 品牌单品，比如 48 元的证件袋、168 元的荧光棒、299 元的 T 恤以及 830 元的外套。</p>\r\n\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170828/20170828110314011401.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170828/20170828110389168916.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">从平均标价来看，快闪店的这些在售商品与 SKP Select 自售品牌有一定差距。SKP Select 是北京 SKP 在 2014 年成立的自营多品牌集合店。B1 区在售品牌包括 Bella Freud, Self Portrait, Opening Ceremony, Public School 等。虽然定价比位于 4 楼的另一个 SKP Select 区域相对偏低，但售价平均也在千元左右。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">我们于 8 月 21 日(周一)和 8 月 26 日(周六)中午探访时，没有遇到任何光顾该快闪店的顾客。在微博上，负责设立和运营该快闪店的电商平台“星品库”也没有大力推广，主要是在快闪店开设次日( 8 月 19 日)通过其官方账号“J 概念品牌联盟”发布了一则通知，也仅获得 6 次转发、30 条评论和 25 个赞。我们在微博上搜索“打卡”表示光顾过该店的网友，截止发稿只找到 3 位。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">接受我们随机采访的几位常居北京的周杰伦歌迷表示，她们并不知道这间快闪店，也没有去光顾的计划。一位歌迷给出的理由是：“真的……买不下东西，进去一圈就出来了。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">此外，星品库还于 8 月 9 日在朝阳大悦城 4 楼的品牌集合店 INXX 也设立了一个演唱会周边商品的销售柜台。在其官方微博发布的通知下，同样只有 18 次转发、19 个评论和 43 个赞。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">星品库 COO Valentine 对此解释说：“我们这次的选址主要强调地理位置便捷，以及合作方的价值观和专业度，没有大规模推广。微博通知信息类活动的这些表现，在 4 万多星品库真实粉丝账号下是正常的。微博的情况不代表全面情况，比如 SKP 这个活动的微信阅读目前就有 7542。”他还表示，事实销售情况与社交媒体上的表现是“相悖的”。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">但他并没有给出具体的销售数字。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170828/20170828110452845284.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">SKP 市场部的一位工作人员在接受《好奇心日报》采访时表示，SKP 很少为商场内没有的品牌开设快闪店。这次合作属于“巧合”：“他们来找市场部，我们觉得适合地下一层的自营买手店，就推荐了，然后就成了。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">根据 Valentine 的说法，未来他们打算继续配合周杰伦的全国巡演，在上海、苏州、厦门等地开设快闪店。合作方可能会选择诚品书店等同样强调购物环境和体验的商家，以突出“品牌调性”。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">至于具体如何“整合”，戴炎成在各类媒体采访中提到的主要案例，是和“星品库”关联在一起的一部网剧和一部网络综艺节目。这包括由方文山担任总导演、根据周杰伦歌曲《蒲公英的约定》制作的同名网剧，以及与东方卫视 2015 年综艺《女神的新衣》(后改称《我的新衣》)创意类似的《明星战衣》。它们均计划于今年在优酷上线。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">此外，星品库目前只有一个官网和微博、微信营销账号。尽管接手管理已有一年多，其官网在百度搜索页面显示的状态仍然是“试运营”。戴炎成表示，他们“不便透露到目前为止的销售数字”，但正在计划上线一个新版本。它将由一支二十人的团队运营，包括买手、选品、内容编辑和市场推广。但具体形式“也不便透露”，只是“暂时不会入驻天猫，也不会首推 App”。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">题图来自@地表最强周杰伦世界巡回演唱会官微</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：好奇心日报 文/刘璐天</p>', '64654', '1');
INSERT INTO `tb_information` VALUES ('42', '吴小怡携定制奖杯见证战狼2女主卫冕年度最受关注女演员', 'http://img1.cfw.cn/editors/attached/image/20170826/20170826173068846884.jpg', '2013-01-14', '中国服装时尚网', '<h4 style=\"color:#0062CC;text-align: center;\"> 吴小怡携定制奖杯见证战狼2女主卫冕年度最受关注女演员</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这个暑期档最火热电影，非属《战狼2》了，据猫眼实时票房数据显示，《战狼2》的票房成绩已经正式进入全球票房前百强榜。女主卢靖姗也随之走进大家的视野，收获了大批的粉丝。片中援非医生勇敢、机智的形象给人留下深刻印象，展示出了女性的特有刚柔并济，更凸显出了巾帼不让须眉气势。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">近日卢靖姗亮相在上海W Hotel，参加由InStyle iLady Icon Awards举办的年度偶像盛典，并获得了年度最受关注女演员。</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170826/20170826173068846884.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">现代传播传媒集团创办人，董事会主席兼首席内容官邵忠先生为卢靖姗颁奖</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170826/20170826173175097509.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">与现代传播传媒集团创办人、董事会主席兼首席内容官邵忠先生合影者，就是本次盛典奖杯的出品商，百德珠宝B&D的创始人吴小怡女士。她所创造出的每件珠宝产品都如她本人一般，高贵、优雅、富有智慧。笔者特别喜欢她说的一句话：我们始终坚持有品质的创造，并坚信态度能改变一切!</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170826/20170826173198219821.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">吴小怡不仅是百德珠宝B&D的创始人，能力出众的她还是深圳优家荟会长，带领着优家荟姐妹遇见更加美好的自己。作为时尚达人、成功的女企业家，她是女性的典范，巾帼不让须眉的她是巾帼潮商会副主席、广东国际钻石商会副会长、深圳市文化创意产业协会副会长、深圳市总商会女企业家商会常务理事、BANG LADIE 联合创始人，还是深圳红颜会理事。作为现代传播集团旗下《优家荟》深圳地区的会长，此次活动，吴小怡携同深圳地区的黑金卡会员一同盛装出席，成为盛典中的另一道亮丽风景。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170826/20170826173113171317.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">优家荟从2010年开始，作为《优家画报》旗下的高端女性组织，已经为全国各地的精英女性们举办了上百场活动，那些由精彩的瞬间所分享出来的惊喜，已经在成千上万人的生命中留下了蜕变的印记。优家荟不仅仅是一个俱乐部，更是一个成长与分享的社交平台，是一个日日夜夜“实践幸福人生”的场域。百德珠宝B&D创始人吴小怡在2017年的7月7日正式成为优家荟深圳地区会长，并且举办了轰动整个名媛的会长就职典礼，开启了优家荟深圳地区的新篇章</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170826/2017082617310411411.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">心动了吗?心动不如行动，期待更多的朋友加入优家荟的大家庭。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：中国服装时尚网</p>\r\n		', '5461', '1');
INSERT INTO `tb_information` VALUES ('43', '入冬必败清单，这些衣服你买了吗？', 'http://img1.cfw.cn/editors/attached/image/20171110/20171110130844224422.jpg', '2015-06-23', '穿衣打扮', '<h4 style=\"color:#0062CC;text-align: center;\"> 入冬必败清单，这些衣服你买了吗？</h3>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">总有一些衣服，看似毫不起眼，却默默承包了所有的出街装扮，冬天也不例外，为了迎合女人日益挑剔的眼光，特地整理了一份入冬必败清单，供大家选择，对搭配没有头绪者，赶紧学起来吧。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110130844224422.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">01 首先，你要有一套特别显气质的套装，不同于其它三个季节的衣服，冬天的衣服可以说是非常昂贵了，想来也不难理解，厚实嘛，所以，品相一定要好，酒红色毛衣和花灰色半裙组成的套装裙就不错，生动的诠释了什么叫优雅自若。 </p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110130885878587.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">02 上档次的短款外套也得有一件，尤其是小个子女人，轻松穿出大长腿来，当然，高个子女人如果喜欢也可以尝试，谁还会跟两条更长的腿过不去呢。放眼穿衣打扮，如此受欢迎的任务，唯有交给羊剪绒，方不负盛名。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110130877377737.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">03 半高领的打底衫简直不要太实用，无论脖子长短，都能驾驭，不想衣橱里清一色都是黑白灰的话，可以选择百搭的咖色，穿在里面衬气色，穿在外面还有精致的灯笼袖负责出彩，别提多周到了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110130973457345.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">04 和不高不低的半高领有异曲同工之妙，不长不短的羽绒服遵循的也是中庸之道。别的暂且不论，光是什么时候都不会过时这一点，就足够让女人为之倾倒了，更不用说立领和连帽处匠心独运的撞色设计了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131033753375.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">05 今年流行的复古风毛呢外套怎么能漏掉呢，看腻了各种烂大街的款式之后，这件绝对可以称得上是与众不同的代名词。不仅采用的是大大方方的直筒版型，连格纹都是不规则的灰格子，对独特的渴求之情，溢于言表。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131080178017.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：穿衣打扮</p>', '545454', '1');
INSERT INTO `tb_information` VALUES ('44', '遇见冬天的另一面，你的小可爱即将出现', 'http://img1.cfw.cn/editors/attached/image/20171110/20171110131652715271.jpg', '2017-05-28', '穿衣打扮', '<h4 style=\"color:#0062CC;text-align: center;\">遇见冬天的另一面，你的小可爱即将出现 </h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">与“风刀霜剑严相逼”相对应的大概是温暖柔软毛茸茸，以柔克刚以软化硬一物降一物，而且穿上毛绒才是冬天的专属嘛，拼色彩、玩廓形，先从达人们的精彩表现中找灵感： </p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131652715271.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 邻近色穿搭，从白到米、焦糖、橙红、正红色彩依次递进，素雅到艳丽层次丰富渐变自然，像精心调制的油画温暖而生动，多领叠加兼顾保暖与显瘦，整体色调上浅下深显白优雅。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131760376037.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 同色系相配，是所有搭配中最不容易失手的一种，Margherita Missoni用白色高领衫打底，同色毛衣阔腿裤纵向延伸，与外套形成深浅对比，毛衣的长度与小包的位置就是腰线所在，黑白色平底鞋让造型首尾呼应。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131779347934.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 用基础单品来突出外套这一个重点，Erin Wasson这身算是教科书级别的皮草穿搭示范，一身深色用闪亮配饰和白色鞋子来提亮，喇叭长裤将上下延伸和横向控制都做得很好，整体线条干净顺畅。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110131796529652.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 来源：穿衣打扮</p>\r\n', '45845', '1');
INSERT INTO `tb_information` VALUES ('45', '经济实用又耐穿，为棉马甲疯狂打call啊', 'http://img1.cfw.cn/editors/attached/image/20171110/20171110134657085708.jpg', '2016-02-23', '穿衣打扮', '<h4 style=\"color:#0062CC;text-align: center;\"> 经济实用又耐穿，为棉马甲疯狂打call啊</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">换季时节，衣橱里难免会缺一件承前启后的单品，秋冬也不例外，既不能太单薄，损了冬的威严，又不能太厚重，失了秋的韵味。于是，只能折中取个平均值，介于毛呢外套和羽绒服之间，棉马甲无疑是最好的选择。 </p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134657085708.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">01 耐人寻味的白，在黑边的勾勒下，似乎变得乖巧了不少，也难怪，本来是充满想象力的无限延伸，突然变成了中规中矩的条条框框，自然要收敛，否则，和寻常就能见到的泛泛之流有什么区别。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134656195619.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">02 虽然棉马甲只是一个用来缓和矛盾的存在，却也有其值得存在的道理。哪怕平凡如黑色，都能在精心的搭配中渗透出不平凡的味道，个中魅力，想必不需要用华丽的辞藻赘述，就已经一目了然了。 </p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134629122912.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">03 没办法，万能型单品就是如此任性。所谓万能，倒不是说随便谁都能穿出其精髓来的意思，而是，只要适合，就可以穿很久很久，完全不用担心过时的问题，包括艳丽的玫红色棉马甲在内，都不例外。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134712721272.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">04 有时候，棉马甲还会玩一玩两面穿的梗，正面是干净的军绿色，反面是成熟的豹纹，漫不经心的把两种截然不同的风格融汇到一起，竟然还能呈现出一种莫名的和谐感，也是厉害了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134710461046.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">05 如果想赶一赶潮流，不妨选择灯芯绒材质的棉马甲，作为复古风袭来的其中之一个鲜明到没朋友的元素，灯芯绒出现在棉马甲身上简直不要太惊喜，粗略的一打扮，怀旧的气息就扑面而来了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134757485748.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">06 除了各种众所周知的优点以外，棉马甲还有一个非常值得称道的地方，就是性价比，大概是本来就很低调的缘故，鲜少有女人会注意到这些，其实，仔细算算，买一件棉马甲比买一件其它的秋冬装划算多了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134722662266.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">07 气温不是很低的时候穿出去，没毛病，气温很低的时候穿出去，也没毛病，实在是怕冷的话，可以当做家居服，上班族则可以放在办公室，用来填补空调房室内外的温差，总之，怎么穿都便利。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171110/20171110134891239123.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 来源：穿衣打扮</p>', '64854', '1');
INSERT INTO `tb_information` VALUES ('46', '纽约时装区或将迁移，时尚制造业前景堪忧', 'http://img1.cfw.cn/editors/attached/image/20170825/20170825143015071507.png', '2017-09-23', '华丽志 文/宋凡夫', '<h4 style=\"color:#0062CC;text-align: center;\">纽约时装区或将迁移，时尚制造业前景堪忧 </h3>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">纽约经济发展局(Economic Development Corporation)近日出台一项新举措，试图让纽约时装区(Garment District)的制造商从曼哈顿中城迁往布鲁克林的日落公园，这一举措或许会给纽约州时尚制造业的未来蒙上一层阴影。 </p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">分区法已经保护了时尚行业几十年，随着这一法规的废除，制造商将不得不迁移到占地 20万平方英尺的工业区(目前正在翻新中)，虽然租金变低，租赁期变长，工厂也会获得搬迁费用等一些经济援助，但令人担忧的是，新位置的交通不够便利，面积比起现在的时装区也差距甚远，同时整个工厂仍处于未检测阶段，对所有工人来说，这三点都会成为他们工作的障碍。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">有报道指出，截至目前大约有 13家工厂因为风险太高，决定不迁往日落公园工厂，一些行业专家也担心这会导致纽约本地公司数量锐减，从而导致美国本土制造工艺的大幅下降。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 曼哈顿中城的工厂、展厅以及面料供应商对设计师们来说是至关重要的，他们一起构建了一个生态系统，而要在日落公园构建另一个新的生态系统需要花费数十年。迁移可能会导致大量的年轻设计师选择去其他时尚大都市(如洛杉矶，伦敦，巴黎和米兰)学习，纽约时尚学校的入学率将会下滑。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170825/20170825143015071507.png\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">纽约时装区每年都能吸引数百名设计师前来学习，开创自己的产品线，同时能够提供约 20万个工作岗位，销售额达到数十亿美元。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">如果该计划得到当地委员会的批准，将会被提交到市议会进行最终投票，预计将在几个月后揭晓。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：华丽志 文/宋凡夫</p>', '67494', '1');
INSERT INTO `tb_information` VALUES ('47', ' 英国时尚电商 ASOS 为北欧消费者推出“先发货后付款”服务', 'http://img1.cfw.cn/editors/attached/image/20171024/20171024170145464546.png', '2016-11-23', '华丽志 文/杨涛声', '<h4 style=\"color:#0062CC;text-align: center;\"> 英国时尚电商 ASOS 为北欧消费者推出“先发货后付款”服务</h3>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 三年前，英国时尚电商 ASOS 与瑞典电商公司 Klarna 合作，向其消费者提供“先发货后付款”服务。最近，ASOS 将把这项服务扩大到整个北欧地区。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">该计划可以让北欧的消费者在发货后的 14天内灵活付款。让他们有机会试穿他们订购的产品，并在付款之前考虑产品是否真正适合自己。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">北欧的用户现在已经可以在 ASOS 的桌面端和移动设备上选择这项新服务，坐在家中就能享受堪比实体门店的购物体验。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171024/20171024170145464546.png\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">ASOS 推出的这项服务和此前美国电商巨头亚马逊推出的“先试衣、再购买”——Prime Wardrobe 服务非常类似。亚马逊数百万的 Prime 会员可以在线下单，在家试衣，试穿完后只需保留他们想要的，不需要的则留在 Prime Wardrobe 盒子中，工作人员会重新密封做退货处理。购物者会有 7天时间在家试穿，如果留下的产品数量有3-4件，购买可享受 9折优惠;留下 5件或以上，购买可享受 8折优惠。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这个“先试后买”的新模式或许会对刚刚申请IPO的美国创新时尚电商 Stitch Fix 主打的按月订购模式形成有力竞争。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">近日，ASOS 公布了 2017财年的业绩报告，在公司灵活的商业模式和正确的产品战略的指导下，ASOS 的销售额在 2017财年实现了高速增长，零售销售额同比增长 34%，达到 18.76亿英镑。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：华丽志 文/杨涛声</p>', '6451', '1');
INSERT INTO `tb_information` VALUES ('48', '中国国际时装周—NUOYI•秦婉瑜', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113110153714.jpg', '2013-05-05', '中国国际时装周', '<h4 style=\"color:#0062CC;text-align: center;\">中国国际时装周—NUOYI•秦婉瑜 </h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113110153714.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 本场发布会设计主题为“因至简，故至雅”本系列春夏服装包含两条主线：精简和雅致，通过色彩和针织花型的相互碰撞、融合，展示出当代女性性格：柔美却饱含力量，简洁又满盈优雅。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">本场发布会分为两个设计系列。系列一：删繁就简的舒适廓形，呈现出凝练又不失精致的格调，冰川绿，水鸭翼灰蓝色调的色彩氛围，较高明度的色彩对比，简约而纯粹。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">系列二：柔和的曲线打造专属女性的柔和典雅，复古桔作为主题主导色彩，搭配古书红，牡丹粉注重表现女性内在的温柔，优美的长裙结合带有俏皮感的荷叶边，采用复古元素调和补充，诠释女性优雅的精神气质。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">因简而故雅。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：中国国际时装周</p>', '32154', '1');
INSERT INTO `tb_information` VALUES ('49', '中国国际时装周—尤珈', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113114455229.jpg', '2012-01-25', '中国国际时装周', '<h4 style=\"color:#0062CC;text-align: center;\">中国国际时装周—尤珈 </h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/13//20171113114455229.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 尤珈“姹寂之美”是纯天然植物染色品牌，系列服装设计作品通过植物染色和传统手工扎染纹样来致敬传统与自然。传承传统同时又不拘泥于传统，将中式结构与意大利立体剪裁结合风格雅致大气。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">中国人喜繁华颜色，折子里唱原来姹紫嫣红开遍。繁花如许，草木有情，草木染正是以花木着色，故取“姹”。侘寂美学是崇尚朴素安静又不圆满的美学，是重视自然留在设计中的痕迹，忽视修饰，朴拙脱俗，繁华归于平静的残缺之美，可意会不可言传。似这般都付与断井颓垣，故取“寂”。得名“姹寂之美”。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：中国国际时装周</p>', '45133', '1');
INSERT INTO `tb_information` VALUES ('50', '中国国际时装周—暇步士童装', 'http://img1.cfw.cn/images/news_images/title_images/2017/11/14//20171114143213857.jpg', '2017-04-20', '中国国际时装周', '<h4 style=\"color:#0062CC;text-align: center;\"> 中国国际时装周—暇步士童装</h3>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/images/news_images/title_images/2017/11/14//20171114143213857.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 本场发布会中的设计系列，美式休闲其实是体现都市感，代表一个城市的文化和生活状态。其中海军系列是暇步士的DNA系列。此系列的款式风格：运动棒球，海军学院。色系以美国旗帜作为背景----红黄蓝。设计上秉承美国的经典元素，比如棒球领，彩条，格子等设计。是暇步士童装的灵魂组系。此系列面对的是知识家庭，传统而保守，并追求品质感的家庭。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：中国国际时装周</p>', '54641', '1');
INSERT INTO `tb_information` VALUES ('51', '除了妖娆多姿的裙子，你的衣橱还少了一件C.J.YAO', 'http://img1.cfw.cn/editors/attached/image/20161213/20161213135929332933.jpg', '2013-12-20', '关于One▪一味', '<h4 style=\"color:#0062CC;text-align: center;\"> 除了妖娆多姿的裙子，你的衣橱还少了一件C.J.YAO</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">《我的新衣》第四期“闺蜜下午茶”主题中，嘉宾吴昕与她的搭档设计师以经典电影《美女与野兽》为灵感，采用“荷叶边”元素，将厚棉类硬朗且朴素的材质与休闲卫衣的元素做了基因重组，搭配深绿色裙子及简单的丸子头，与男舞蹈演员深情演绎美女与野兽的爱情。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213135929332933.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">没想到的是，这一身青春活泼的装扮并没有让买手们“口下留情”。素有“国民造型师”之称的江南一度劝说设计师尝试走出自己的世界，设计出更符合当下市场的作品。 </p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 但这番言辞并未被设计师所接受，她认为，“如果所有的设计师都在关注什么系列好卖，什么元素流行，那么中国的时装可能就要死翘翘了。”</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 视频在此，感兴趣的朋友可以自己看(第22分钟开始)↓↓</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213140061226122.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这位固执己见的设计师，就是C.J.▼</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/2016121314020259259.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">2006年，她荣获新加坡时装周“亚洲青年设计师比赛”亚军头衔，同一年里又获得了由“CHINA FASHION FOUNDATION”筹办的“Young Fashion Designers Overseas Internship Program”冠军。之后留学伦敦中央圣马丁设计学院，在校期间，曾在Alexander Mcqueen工作室实习。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">2012年，她的毕业设计系列在众多作品中脱颖而出，在官方秀场上发布。这一系列秉承了传统手工艺和现代审美于一体的利落剪裁，将木头元素与服装的各种面料结合搭配，显得非常概念化，而去掉木头，又不失实穿性，特别符合现代女性独立果敢的审美，至今仍被时尚界津津乐道。</p>\r\n		\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213140953825382.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213140925462546.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213140918351835.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213140956045604.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">2012年年底，C.J.成立了个人工作室，同时在英国和中国注册创立了品牌“C.J.YAO”。但她很快玩起了“消失”，花了两年的时间去结婚生子，直到2014年才首次登陆国内T台，在上海时装周发布2015春夏系列，获得无数好评;第二年再次发布2015秋冬系列，还获得上海时装周组委会颁发的“新锐活力”设计师奖项。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">今年，C.J.两度牵手餐饮巨头肯德基，打造了一组以肯德基为灵感的迷你主题系列时装秀，用出其不意的创意，将肯德基的美味形体化，用独特的色彩搭配与立体的版型剪裁，将肯德基带给人的味觉享受转化为视觉的时尚呈现，引发了时尚与“食”尚圈高度关注。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">时尚与“食尚”的跨界合作，这并不是一个简单的点，但C.J.认为，任何新事物都免不了遭受质疑，最重要的是敢不敢去做，怎样去做。“我的目标很明确，我也清楚自己的方向，所以做出来的东西都在自己能掌控范围之内。我更倾向于自己纯粹的设计，但是这样的跨界，也能为设计增添很多色彩。”</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213141637783778.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">就像在《我的新衣》节目中一样，这样的C.J.总是面对“不够大众化”的质疑，但她认为，设计师只能在合理范围内服务于一部分人群，没办法做出面面俱到的风格，如果人人都能接受的东西必然是大众的，甚至是无趣的、乏味的。在有趣和商业之间，她毫不犹豫地选择了前者。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213142153725372.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">“如果是做一个比较商业的品牌，可能我犯了‘大忌’，因为我在做设计的时候属于比较自我的状态。现在商业的品牌太多了，如果我像他们一样做大众设计，那么我的品牌存在感就没那么重要了，多我一个不多，少我一个不少。我还是希望能够尽一些责任，给大家提供一些特别的、独一无二的东西，就好比磁铁的s极和n极，如果爱我们，自然相吸;如果无法足够被吸引或是相斥，我们也不会强求。”</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161213/20161213142116621662.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">关于One▪一味</p>', '879451', '1');
INSERT INTO `tb_information` VALUES ('52', '当服装有了“情绪”，设计就像创造生命', 'http://img1.cfw.cn/editors/attached/image/20161130/20161130095260846084.jpg', '2017-04-25', '每一周，一位人，一味声音。', '<h4 style=\"color:#0062CC;text-align: center;\"> 当服装有了“情绪”，设计就像创造生命</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">纷繁复杂的社会造就了形形色色的人，也造就了千变万化的小情绪，服装也一样。对于赵晓旭来说，每一件服装都是有感情、有生命、有灵魂的个体，它们包裹着每一个年轻女性的梦想和对世界的好奇——可能你买不起高定的名牌，但依然能做特立独行的自己。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">2016年，赵晓旭和朋友欧赛一起创立了“兆三”原创设计师品牌，从“情绪”这一独特视角切入，试图打破常规的设计理念，设计出更新奇更前卫的小众服饰。</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/20161130095260846084.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"color:#0062CC;text-indent:2em;font-size: 16px;color: #000000;\">她为服装画上彩色的翅膀</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">受极具浪漫主义的父亲影响，赵晓旭从小就对绘画有着浓厚的兴趣。“在我心中，父亲就是艺术家，每每看到父亲提笔作画，顷刻间山林美景、鸟兽虫鱼跃然纸上，让孩提时的我如痴如醉。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">在父亲的指导下，赵晓旭练就扎实的艺术功底。进入美术班后，她发现学生们成天穿着的校服虽然整洁，但少了一丝灵韵，于是将校服作为画布，用颜料、色块肆意挥洒，让原本单调的校服灵动起来，同龄人纷纷成为小粉丝。赵晓旭第一次感受到，自己在享受绘画时的快乐，竟然通过服装感染了每个人，这难道不是服装本身“情绪”的力量吗?在那之后，她开始尝试着在T恤上作画，在牛仔裤上戳洞，在简单的改动中，结下与服装设计的缘分。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">大二那年，赵晓旭从全系四百多人中脱颖而出，得以进入试点班，成为学校重点培养对象。“当时有一门《服装品牌策划与设计》的课程大作业，我把关于服装“情绪”的观点呈现出来，竟然拿到了全班最高分。”她告诉我，这是兆三品牌的雏形。</p>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">大二那年，赵晓旭从全系四百多人中脱颖而出，得以进入试点班，成为学校重点培养对象。“当时有一门《服装品牌策划与设计》的课程大作业，我把关于服装“情绪”的观点呈现出来，竟然拿到了全班最高分。”她告诉我，这是兆三品牌的雏形。 </p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/20161130095289068906.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"color:#0062CC;text-indent:2em;font-size: 16px;color: #000000;\">“情绪”设计，让服装锦上添花</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">毕业后的头两年，赵晓旭在一家设计工作室坚持着自己的梦想。工作室规模不大，但做的是原创设计，特别锻炼人。随着对服装产业的理解加深，创立品牌的想法开始在她心中落地生根。恰逢此时，闺蜜欧赛对当前的工作不满意，也有创业的想法。“我在公关公司锻炼这么久，摸清了门路，而你在服装公司做设计，我们可以一起创业，你做设计，我做运营。”在闺蜜的鼓励下，她们白手起家，分工明确，赵晓旭掌握着设计方面的绝对话语权，而闺蜜负责运营推广，从两人姓名中各取一字的谐音作为品牌名，“兆三”就这样建立起来了。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">在今年的秋冬新品中，赵晓旭大胆尝试了三种动物的抽象图案，来诠释“解放天性”的主题：“老虎代表凶猛和野性，是人们努力奋斗，战胜弱肉强食的社会所需要的;猩猩代表灵性，是人们希望自己成为真正有智慧的人;狐猴代表习性，喜欢白天翻肚皮‘朝拜’太阳，是希望年轻人能成为太阳的使者，怀抱温暖，用积极情绪面对严寒。”</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/20161130095319271927.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/2016113009540377377.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/2016113009550328328.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/20161130095768936893.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">以前，国内消费者喜欢购买国外品牌，但随着这几年消费理念的转变，情况发生了变化。“其实国内的设计不输给欧美设计师，在海外也能收获好评。以前大家喜欢购买国外品牌，觉得带出去有面子，但现在吸引人们购买的已经不是品牌logo，而是产品背后的文化，国内设计师要做好设计，需要和中国的历史文化底蕴结合起来。”赵晓旭也在做相关的尝试，比如近年来非常流行的刺绣，这种传统制作手法在今天呈现出来的效果依然惊艳。赵晓旭在手工刺绣基础上进行了更具现代感的机绣，用大面积、密集型绣花，使服装更有流行感。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20161130/20161130100140554055.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">每一周，一位人，一味声音。</p>\r\n		', '45648', '1');
INSERT INTO `tb_information` VALUES ('53', '据说2017年是时尚圈“最有包容性的一年”，体现在何处？', 'http://img1.cfw.cn/editors/attached/image/20170901/20170901111457195719.jpg', '2015-08-08', '好奇心日报 文/刘璐天', '<h4 style=\"color:#0062CC;text-align: center;\">据说2017年是时尚圈“最有包容性的一年”，体现在何处？ </h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">如果你觉得在 T 台和时装大片里看到的模特正变得越来越多样，那是因为事实的确如此。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">网络杂志 The Fashion Spot 最近发布了一份关于时尚广告多样性的报告。它们评估了 187 张 2017 年秋季平面广告，并且跟踪调查了广告拍摄背后的 457 次模特试镜，发现非白人模特在广告中的占比首次超过了 30%，与去年春季相比上升了 5.9%。这意味着平面广告正在比 T 台变得更多样化——后者中非白人模特的比例只有 27.9%。 </p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170901/20170901111457195719.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 从 3 年前起，The Fashion Spot 每年都会发布两次多样性报告。最初，报告中只包含种族这一项指标，随后又增加了尺码、年龄、跨性别者比例等衡量标准</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这一季，参与试镜的模特中共有 10% 为大码模特，和上一季基本持平。不过有趣的是，70% 给大码模特发出试镜邀请的，并不是以大码服装为主要定位的品牌，而是 Dolce & Gabbana 和Vivienne Westwood 等奢侈品牌。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">年龄方面，和 T 台上高龄模特数量的稳定增长相比，品牌在平面广告上的口味却显得摇摆不定。2015 年秋季，共有 22 次高龄模特出境;到了 2017 年春季，这个数字骤降到 2 次。今年秋，她们一共又出现了 14 次。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">总体来说，跨性别模特在广告中出现的频次仍然是最少的。在 457 次试镜中，只有 6 次是跨性别模特，仅占 1.3%。但在这方面有几个品牌一直保持着支持的态度，比如 Gucci、Helmut Lang、Sisley 和 Philipp Plein 等。</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170901/20170901111450185018.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">可以想象，试图通过平面广告强调多样性的品牌列表也变得越来越长。在 2001 年到 2015 年间从没找过任何一个有色人种拍摄广告的 Saint Laurent，今年一共拍摄了 3 位非白人模特;在 Christian Dior 和 Coach 1941 的秋季广告中，非白人模特的比例均高达 67%;而在 Dolce & Gabbana 和 Sisley，这个比例也分别达到 63% 和 40%。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">大众品牌也是如此。Gap 新一季广告“Bridging the Gap”中的 10 位模特，只有 1 位是白人。Gap 首席营销官 Craig Brommers 表示，他们想“用不同面孔反映美国人的不同侧面，并把它们统一展示出来”。而美国百货公司 Nordstrom 则找来普通人和模特一起拍摄广告，其中 64% 为非白人女性。</p>\r\n		\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170901/2017090111140545545.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170901/20170901111437823782.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">但广告中的这些变化在多大程度上能反映时尚行业的真实状况，还要画个问号。“还是有很多只是在追求政治正确，”人力咨询公司Model Alliance 的创始人 Sara Ziff 今年 3 月接受《纽约时报》采访时说：“设计师和试镜总监往往只是想确保品牌顾及到了多样性这一点。很多模特参与试镜时会被告知，‘我们已经有一位黑人模特’了。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">这些表面文章让时尚圈看上去似乎正在自我革新，然而真正的改变可能却微乎其微。三月初，Vogue 发布了一篇题为“2017 年秋，凹凸有致的身材是否已占领 T 台”的文章。然而事实是，数百场秀中，只有 11 场有大码模特出现。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：好奇心日报 文/刘璐天</p>', '454654', '1');
INSERT INTO `tb_information` VALUES ('54', '相信自己 和别人都不一样', 'http://img1.cfw.cn/editors/attached/image/20171121/20171121094625682568.jpg', '2015-01-20', '穿衣打扮', '<h4 style=\"color:#0062CC;text-align: center;\"> 相信自己 和别人都不一样</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">生活需要吸收正能量，鸡汤文都有毒，但不得不承认读起来还是有用，只是有时候觉得不那么适合自己。或许是因为我们都少了一种能力，那种把自己的日子过成自己想要的能力。世界那么大，时间那么长，要相信自己，和别人都不一样。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094625682568.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\"> 01 相信自己，和别人都不一样。你微笑的样子，别人都不能复制。生活在苟且的日子里，追求诗和远方似乎少了点勇气和底气。那就让生活五彩起来吧，从一件针织衫开始，慢慢远离苟且的错觉。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094629922992.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">02 相信自己，和别人都不一样。生活中总有遇到那么一两个人，你忍不住要去比较。然后常常落荒而逃。没关系，给自己一个大大的拥抱。挑喜欢的针织衫和印花裤，让那些五彩的流苏细节点缀生活的缤纷。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094666716671.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">03 相信自己，和别人都不一样。颜值和金钱是我们的底气，但笑容和活力应该是我们生活的状态。喜欢你穿着提花毛衣的样子，不规则的色彩碰撞，就像生活中种种意料之外，一不小心就凑成了另一种时尚感。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/201711210947002121.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">04 相信自己，和别人都不一样。有人说粉色太甜美，你穿上却那么好看。有没有曲线美有什么要紧，刺绣的气质复古而精致，气场绝对撑得住。不是比不上别人，或许只是选取的角度和方式不对罢了。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094764566456.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">05 相信自己，和别人都不一样。寻找相似性是我们经常给自己找的安慰，可是你怎么知道有没有人在寻找和你之间的相似性呢?就像格纹，看起来都差不多，仔细比较起来才发现色彩和线条都大不一样。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094792579257.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size:16px;color: #000000;\">06 相信自己，和别人都不一样。喜欢看到你抱着膝盖忧郁的样子，毛呢的大口袋也装不下落寞。不是情绪上忧郁而是神态上的些许落寞。刚刚好就展现别人察觉不到的气质，完全属于你自己。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20171121/20171121094783338333.jpg\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：穿衣打扮</p>', '896564', '1');
INSERT INTO `tb_information` VALUES ('55', '马莎百货计划转让香港与澳门全部直营门店，继续收缩海外直营业务', 'http://img1.cfw.cn/editors/attached/image/20170901/20170901112444074407.png', '2015-11-23', '华丽志 文/周婧', '<h4 style=\"color:#0062CC;text-align: center;\"> 马莎百货计划转让香港与澳门全部直营门店，继续收缩海外直营业务</h3>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">英国时尚和生活方式零售商 Marks & Spencer (马莎百货)最近表示，计划出售香港和澳门直营零售店的代理权，潜在买家为其在中东和亚洲的现有业务代理商——迪拜的大型商业集团 Al-Futtaim。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">目前双方正在进行谈判，并需要进行为期数月的尽职调查。在此期间，马莎百货在香港和澳门的零售店将继续正常营业。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">虽然马莎百货在本土的表现十分强势，但是他们的海外扩张之路却充满波折。早在 2008年，马莎百货就以上海为中心，围绕上海周边长三角区域的二线市场拓展零售网络，但是效果并不理想。2015年，马莎百货在对上海周边二线城市的多家门店进行评估后，决定关闭其中五家表现不佳的门店。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">去年上半年，马莎百货的利润下滑了91%至1590万磅。新任首席执行官 Steve Rowe 表示，将对公司进行重组，放弃包括中国在内的国际直营业务，重新以英国本土市场为重心，计划关闭 10个国家的共计 53家全资拥有的直营门店。</p>\r\n		<center><img src=\"http://img1.cfw.cn/editors/attached/image/20170901/20170901112444074407.png\"  style=\"max-height: 200px;max-width: 400px;\"></center>\r\n		\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">马莎百货的国际总监 Paul Friston 表示：“在11月，我们拟定了计划：专注于公司现有的合作关系来发展我们的国际业务。Al-Futtaim 是马莎百货在亚洲和中东地区重要的合作伙伴，我们希望能够加深和他们在这两个地区的合作关系。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">目前，Al-Futtaim 拥有中东，新加坡和马来西亚等地区的43家马莎百货零售店的代理权。如果交易成功，Al-Futtaim 将收购香港和澳门所有马莎百货的直营店，成为马莎百货这两个地区的独家授权经营合作伙伴。</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">Al-Futtaim时尚与生活部门的高级董事Stephen Rayfield表示：“香港和澳门是马莎百货非常重要的两个市场。Al-Futtaim 将在这两个市场提供优质的产品和服务，巩固我们自身业务的同时，也帮助马莎百货进一步拓展国际市场。”</p>\r\n		<p style=\"text-indent:2em;font-size: 16px;color: #000000;\">来源：华丽志 文/周婧</p>', '64551', '1');

-- ----------------------------
-- Table structure for tb_like
-- ----------------------------
DROP TABLE IF EXISTS `tb_like`;
CREATE TABLE `tb_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `like_userId` int(11) DEFAULT NULL,
  `like_objectId` int(11) DEFAULT NULL,
  `like_type` int(11) DEFAULT NULL,
  `like_datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_like
-- ----------------------------
INSERT INTO `tb_like` VALUES ('1', '36', '10', '1', '2017-12-06 14:54:03');
INSERT INTO `tb_like` VALUES ('2', '36', '20', '1', '2017-12-06 15:06:08');
INSERT INTO `tb_like` VALUES ('3', '36', '20', '1', '2017-12-06 15:06:34');
INSERT INTO `tb_like` VALUES ('4', '36', '23', '1', '2017-12-06 15:09:49');
INSERT INTO `tb_like` VALUES ('5', '36', '29', '1', '2017-12-06 15:57:02');
INSERT INTO `tb_like` VALUES ('6', '36', '38', '1', '2017-12-07 00:17:49');
INSERT INTO `tb_like` VALUES ('14', '36', '32', '2', '2017-12-07 00:43:25');
INSERT INTO `tb_like` VALUES ('15', '36', '40', '2', '2017-12-07 00:46:16');
INSERT INTO `tb_like` VALUES ('16', '36', '25', '1', '2017-12-07 01:25:26');
INSERT INTO `tb_like` VALUES ('17', '36', '91', '1', '2017-12-08 17:14:35');
INSERT INTO `tb_like` VALUES ('18', '36', '15', '2', '2017-12-08 17:49:15');
INSERT INTO `tb_like` VALUES ('19', '36', '67', '1', '2017-12-08 17:59:55');
INSERT INTO `tb_like` VALUES ('20', '36', '67', '1', '2017-12-08 20:13:42');
INSERT INTO `tb_like` VALUES ('21', '36', '35', '2', '2017-12-08 20:14:04');
INSERT INTO `tb_like` VALUES ('22', '36', '91', '1', '2017-12-08 20:16:51');
INSERT INTO `tb_like` VALUES ('23', '5', '66', '1', '2017-12-08 20:44:26');
INSERT INTO `tb_like` VALUES ('24', '5', '66', '1', '2017-12-08 20:44:29');
INSERT INTO `tb_like` VALUES ('25', '5', '66', '1', '2017-12-08 20:44:30');
INSERT INTO `tb_like` VALUES ('26', '7', '87', '1', '2017-12-09 10:58:01');
INSERT INTO `tb_like` VALUES ('27', '37', '8', '1', '2017-12-09 11:05:38');
INSERT INTO `tb_like` VALUES ('28', '37', '16', '1', '2017-12-09 14:19:16');
INSERT INTO `tb_like` VALUES ('29', '36', '91', '1', '2017-12-09 17:09:12');
INSERT INTO `tb_like` VALUES ('30', '36', '13', '1', '2017-12-09 17:09:28');
INSERT INTO `tb_like` VALUES ('31', '36', '4', '1', '2017-12-09 17:10:18');
INSERT INTO `tb_like` VALUES ('32', '36', '67', '1', '2017-12-09 17:12:32');
INSERT INTO `tb_like` VALUES ('33', '36', '63', '1', '2017-12-09 17:55:33');
INSERT INTO `tb_like` VALUES ('34', '36', '63', '1', '2017-12-09 17:55:33');
INSERT INTO `tb_like` VALUES ('35', '36', '63', '1', '2017-12-09 17:55:43');
INSERT INTO `tb_like` VALUES ('36', '36', '8', '1', '2017-12-09 18:09:14');
INSERT INTO `tb_like` VALUES ('37', '36', '8', '1', '2017-12-09 18:09:54');
INSERT INTO `tb_like` VALUES ('38', '36', '92', '1', '2017-12-09 22:32:52');
INSERT INTO `tb_like` VALUES ('39', '36', '28', '1', '2017-12-10 00:38:46');
INSERT INTO `tb_like` VALUES ('40', '36', '60', '1', '2017-12-11 16:13:52');
INSERT INTO `tb_like` VALUES ('41', '36', '60', '1', '2017-12-11 16:13:56');
INSERT INTO `tb_like` VALUES ('42', '36', '58', '1', '2017-12-11 17:44:47');
INSERT INTO `tb_like` VALUES ('43', '36', '39', '2', '2017-12-11 21:45:29');
INSERT INTO `tb_like` VALUES ('44', '36', '39', '2', '2017-12-11 21:45:31');
INSERT INTO `tb_like` VALUES ('45', '36', '96', '1', '2017-12-11 22:16:11');
INSERT INTO `tb_like` VALUES ('46', '36', '96', '1', '2017-12-11 22:22:41');
INSERT INTO `tb_like` VALUES ('47', '36', '67', '1', '2017-12-11 22:24:32');
INSERT INTO `tb_like` VALUES ('48', '36', '92', '1', '2017-12-11 22:28:57');
INSERT INTO `tb_like` VALUES ('49', '36', '96', '1', '2017-12-11 22:45:23');
INSERT INTO `tb_like` VALUES ('50', '36', '28', '2', '2017-12-11 22:52:35');
INSERT INTO `tb_like` VALUES ('51', '36', '44', '1', '2017-12-11 23:17:54');
INSERT INTO `tb_like` VALUES ('52', '36', '44', '1', '2017-12-11 23:17:55');
INSERT INTO `tb_like` VALUES ('53', '36', '8', '1', '2017-12-11 23:46:49');
INSERT INTO `tb_like` VALUES ('54', '36', '8', '1', '2017-12-11 23:46:51');
INSERT INTO `tb_like` VALUES ('55', '36', '8', '1', '2017-12-11 23:46:55');
INSERT INTO `tb_like` VALUES ('56', '36', '8', '1', '2017-12-11 23:46:56');
INSERT INTO `tb_like` VALUES ('57', '36', '8', '1', '2017-12-11 23:47:00');
INSERT INTO `tb_like` VALUES ('58', '36', '8', '1', '2017-12-11 23:47:02');
INSERT INTO `tb_like` VALUES ('59', '36', '96', '1', '2017-12-12 00:40:07');
INSERT INTO `tb_like` VALUES ('60', '36', '96', '1', '2017-12-12 00:40:09');
INSERT INTO `tb_like` VALUES ('61', '36', '44', '1', '2017-12-12 11:07:48');
INSERT INTO `tb_like` VALUES ('62', '36', '19', '1', '2017-12-12 12:51:47');
INSERT INTO `tb_like` VALUES ('63', '36', '14', '1', '2017-12-12 12:52:00');
INSERT INTO `tb_like` VALUES ('64', '36', '9', '1', '2017-12-12 13:23:05');
INSERT INTO `tb_like` VALUES ('65', '36', '38', '2', '2017-12-12 13:50:52');
INSERT INTO `tb_like` VALUES ('66', '36', '83', '1', '2017-12-12 16:07:33');

-- ----------------------------
-- Table structure for tb_provider
-- ----------------------------
DROP TABLE IF EXISTS `tb_provider`;
CREATE TABLE `tb_provider` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自动增长',
  `provider_name` varchar(255) NOT NULL COMMENT '供应商名称',
  `summary` varchar(255) DEFAULT NULL COMMENT '简介',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `fax` varchar(255) DEFAULT NULL COMMENT '传真',
  `contactsName` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `contactsPhone` varchar(255) DEFAULT NULL COMMENT '联系人电话',
  `modifyDatetime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `logo` varchar(50) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------
INSERT INTO `tb_provider` VALUES ('1', '青岛恒利服装有限公司', '作为一家集服装设计，生产，服务于一体的专业性制装企业，就要始终本着：\"诚信、共赢、创新、务实\"的经营宗旨．', '广东省深圳市南山区科技园南区R2-B三楼', '020-82026621', '86-878787870', '张双双', '12645648923', '2012-02-21', 'image/provider/provider_1.png');
INSERT INTO `tb_provider` VALUES ('2', '上海南塘服装有限公司', '依靠精湛的技术，先进的设备，严格的管理．周到的售后服务；使每一件eipobie产品设计构思均力求完美，引导时尚潮流，并柔和欧洲风格', '广东省广州市天河区天河路89号', '020-85656233', '020-85656233', '李小平', '13564632326', '2013-06-23', 'image/provider/provider_2.png');
INSERT INTO `tb_provider` VALUES ('3', '中山市安奇宝服装有限公司', '公司要有一支经验丰富的专业量体队伍，一整套面向各行业的服务理念；要充分体现的是设计理念于客户同心，在通过服装事业，不断塑造单位的标识性形象', '广东省广州市荔湾区沙面北街53号', '020-32166256', '020-32166256', '林丹和', '15423564564', '2013-11-12', 'image/provider/provider_3.png');
INSERT INTO `tb_provider` VALUES ('4', '东莞市澳芭服装有限公司', '公司要始终坚持以一流的管理，一流的品质，一流的服务，不断制造经典，不断塑造完美的服务理念', '广东省广州市天河区天河路89号', '020-26616532', '020-26616532', '王遂', '15456232336', '2013-05-23', 'image/provider/provider_4.png');
INSERT INTO `tb_provider` VALUES ('5', '深圳市金宇泰服装有限公司', '公司的质量把关与品牌生存息息理关，营销策略也十分重要，生产开发与销售是服装公司生存的命脉所在。', '广东省广州市越秀区北京路182号', '020-62548642', '020-62548642', '李世', '15978956232', '2012-03-21', 'image/provider/provider_5.png');
INSERT INTO `tb_provider` VALUES ('6', '深圳市环球伟业服装有限公司', '质量的把关与品牌生存息息理关，营销策略也十分重要，生产开发与销售是服装公司生存的命脉所在。', '广东省广州市天河区元岗北街11号', '020-22564162', '020-22564162', '李爽', '16548975234', '2014-06-28', 'image/provider/provider_6.png');
INSERT INTO `tb_provider` VALUES ('7', '佛山亨衢服饰有限公司', '集团是以国际领先的“快时尚虚拟联合”经营模式和以服饰品牌的创意、设计、营销为主体，多元化发展国际加工贸易、商业投资产业为两翼的综合性集团，员工人数达5680余人。', '广东省佛山市南海区里水镇河塱沙东部工业区自编路6号 ', '020-80165165', '020-80165165', '吉拉拉', '14894623233', '2010-03-14', 'image/provider/provider_7.png');
INSERT INTO `tb_provider` VALUES ('8', '北京天奇服装有限公司', '公司成立于2014年7月，是一家专业运营国际品牌的服饰机构。成立之初就与ELLE品牌的持有者法国桦榭菲力柏契出版社（法国上市企业）签订了“ELLE”与“ELLE Girl”10年授权合同', '佛山市禅城区汾江中路121号东建大厦21楼k室', '020-84623322', '020-84623322', '杜佳佳', '14894223236', '2008-11-28', 'image/provider/provider_8.png');
INSERT INTO `tb_provider` VALUES ('9', '中山市安奇制衣有限公司', '公司成立于2005年12月，是近年来在中国服装市场迅速崛起的著名服饰企业，拥有国内著名青春休闲服饰品牌“潮流前线”。', '广东省佛山市南海区里水和顺逢涌小康路文头岭1号', '020-84131323', '020-84131323', '龙思思', '15897462133', '2012-08-08', 'image/provider/provider_9.png');
INSERT INTO `tb_provider` VALUES ('10', '深圳市鸿威服饰有限公司', '赛茗轩纺织家族经营:专业供应化纤布,高密度尼龙尼丝纺，涤纶，各种产体感觉提花印花等等！ ', '广东省佛山市顺德区北滘镇跃进南路1号跃进中心大楼（原文化广场）A座五楼512号 ', '020-84625462', '020-84625462', '章绍兴', '15498489456', '2014-09-10', 'image/provider/provider_10.png');
INSERT INTO `tb_provider` VALUES ('11', '北京贵仕佳艺服装有限公司', '公司成立于2005年12月，是近年来在中国服装市场迅速崛起的著名服饰企业，拥有国内著名青春休闲服饰品牌“潮流前线”。', '广东省深圳市南山区科技园南区R2-B三楼', '020-89612332', '020-89612332', '陈思诚', '15646562323', '2013-02-23', 'image/provider/provider_11.jpg');
INSERT INTO `tb_provider` VALUES ('12', '深圳市宝安区西乡凯德兰服装厂', '深圳市凯德兰服饰有限公司是一家集设计生产、制作、销售、为一体的大型服饰企业，专业设计生产；工厂制服、矿山制服、码头制服、运输制服、建筑制服、酒店制服、学校制服、医院制服等...', '天津市河西区解放南路475号 ', '020-35945616', '020-35945616', '王先生', '13513513502', '2012-02-21', 'image/provider/provider_12.jpg');
INSERT INTO `tb_provider` VALUES ('13', '东阳市鼎尚服饰有限公司', '东阳市鼎尚服饰有限公司是一家专业的制帽公司 我司专业生产各款帽子及配套的围巾一系列服饰类产品。 ', '北京朝阳光华路9号世贸天阶大厦D座', '0759-5526163', '0759-5526163', '赵小姐', '13513513503', '2013-06-23', 'image/provider/provider_13.jpg');
INSERT INTO `tb_provider` VALUES ('14', '深圳市金凌外贸服饰有限公司', '深圳市金凌外贸服饰有限公司是等产品专业生产加工的公司，拥有完整、科学的质量管理体系。深圳市金凌外贸服饰有限公司的诚信、实力和产品质量获得业界的认可。欢迎各界朋友莅临参观', '广州市天河区天源路789号', '0757-56416131', '0757-56416131', '林先生', '13513513504', '2013-11-12', 'image/provider/provider_14.jpg');
INSERT INTO `tb_provider` VALUES ('15', '广州市梵曦服饰有限公司', '：广州市衣甸园服饰厂专业生产女装，是生产和销售为一体的服装加工工厂，与广州及各地批发商保持紧密联系。公司以韩版时尚女装生产为主，且集设计、生产、批发于一体。公司坚持以“客户...', '广东省东莞市迎宾大道7号', '0763-13156133', '0763-13156133', '孙先生', '13513513505', '2013-05-23', 'image/provider/provider_15.jpg');
INSERT INTO `tb_provider` VALUES ('16', '义乌市心之丹服饰有限公司', '义乌市心之丹服饰有限公司是童鞋、婴儿鞋、毛线套装、手工儿童帽、手工婴儿鞋、毛线发带等产品专业生产加工的公司，拥有完整、科学的质量管理体系。义乌市心之丹服饰有限公司的诚信、...', '广州市番禺区广州大学城外环东路232号', '0766-56123132', '0766-56123132', '白先生', '13513513506', '2012-03-21', 'image/provider/provider_16.jpg');
INSERT INTO `tb_provider` VALUES ('17', '广州信男良才服饰有限公司', '广州信男良才服饰有限公司是服装、纺织、各种商品、服装、纺织、各种商品等产品专业生产加工的公司，拥有完整、科学的质量管理体系。广州信男良才服饰有限公司的诚信、实力和产品质量...', '广东深圳市南山区南海大道3688号 ', '020-856416332', '020-856416332', '叶小姐', '13513513507', '2014-06-28', 'image/provider/provider_17.jpg');
INSERT INTO `tb_provider` VALUES ('18', '深圳市露娜思服饰有限公司', '深圳市露娜思服饰有限公司是女装、连衣裙、T恤、衬衫、雪纺衫、大衣、风衣、大衣、毛衣、针织衫、棉衣、西装、外套、皮衣、牛仔裤、休闲裤、卫衣、半身裙、马甲、背心等产品专业生产...', '广东深圳市南山区南海大道3688号 ', '020-858585857', '020-858585857', '钱先生', '13513513508', '2010-03-14', 'image/provider/provider_18.jpg');
INSERT INTO `tb_provider` VALUES ('19', '深圳市欧美世界服饰有限公司', '深圳市欧美世界服饰有限公司是生产、成人休闲装、时装、成人运动装，儿童服饰、潮流服饰、韩版、美版、欧版等服装的生产和委托加工业务，并能自行设计制作各类流行时装产品专业生产加...', '广东广州市白云区广花二路638号', '020-856546123', '020-856546123', '范先生', '13513513509', '2008-11-28', 'image/provider/provider_19.jpg');
INSERT INTO `tb_provider` VALUES ('20', '雄县亿尚美服饰有限公司', '雄县亿尚美服饰有限公司主要生产中高档男士棒球帽、平顶帽.中老年毛呢棉帽.速干薄网帽.女款针织帽等产品专业生产加工。本厂专注帽子三十年，拥有完整、科学的质量管理体系，以质量...', '河北 佛山市禅城区江湾一路18号', '020-80165165', '020-80165165', '刘先生', '13513513510', '2012-08-08', 'image/provider/provider_20.jpg');
INSERT INTO `tb_provider` VALUES ('21', '广州市花都区狮岭信义皮革商行', ' 本公司专业生产70DPVC/70T里布、190T里布、210T/210D牛津布、230D斜纹、300D高弹、420D牛津布、600D牛津布、840D牛津布、900D牛津布、1200D牛津布、1680D单股、1680D双股优丽胶、1800D、PU、PE、PVC、涂银、发泡、色丁面料、珠江帆、花瑶米高、一分格、二分格、三分格、五分格、十字提花、优丽胶提花、印花等面料的箱包牛津布,雨衣帐篷布,沙滩椅牛津布、及防水防冻、抗紫外线、阻燃、低毒、平纹钻纹亮光底，也可以由客户提供样品,按要求定做.为客户提供织造,染色', '中国广东广州花都区狮岭镇皮革皮具城A一街62号', '020-84623322', '020-84623322', '杨苏枝', '18688853391', '2012-02-21', 'image/provider/provider_21.png');
INSERT INTO `tb_provider` VALUES ('22', ' 苏州璟轩纺织有限公司', '苏州璟轩纺织有限公司创立于2010年，坐落于有“日出万匹，衣被天下”美誉的绸都—盛泽。公司主要从事纺织面料研发、印染、后整理生产及销售。 ', '中国江苏苏州吴江区盛泽镇西环路西侧(林桑场)', '020-84131323', '020-84131323', '易亮', '18625063315', '2013-06-23', 'image/provider/provider_22.png');
INSERT INTO `tb_provider` VALUES ('23', '广州市海珠区滨江飞赛茗轩纺织品店', '广州市海珠区滨江飞赛茗轩纺织品成立于2005年11月13日， 坐落于广州市海珠区中大新港路顺景街4号首层5号铺。顺景停车场对面。 \r\n赛茗轩纺织家族经营:专业供应化纤布,高密度尼龙尼丝纺，涤纶，各种产体感觉提花印花等等！ ', '中国广东广州海珠区新港西路82号自编F-1区C1058展厅', '0759-25646456', '0759-25646456', '马楚辉', '13688892142', '2013-11-12', 'image/provider/provider_23.png');
INSERT INTO `tb_provider` VALUES ('24', ' 广州宏森布业纺织', '广州宏森布业纺织。位于广州中大布料批发市场核心地带(广州中大布料批发市场五凤西场三区正街20号宏森纺织)。本商行经营各种户外系列梭织/针织布料，产品均为自产自销品种，产品适用于户外系列服饰（骑行服/皮肤衣/驴行服/快干服/快干裤/冲锋衣/防晒服/蹬山服/野外服等）专用特殊纺织布料，防水/防寒/防静电等三防工艺。广州宏森纺织在广州中大布料批发市场,于2010年成立网络上经营批发业务，主营：户外体育针织系列布料、户外休闲梭织系列布料、风衣羽绒服布料、（各种工作服、制服、校服）指定专用纺织布料、时尚休闲梭织纯棉', '中国 广东 广州市海珠区 广州中大布料批发市场五凤三区正街20号', '0759-55466156', '0759-55466156', '陈育文', '13760883662', '2013-05-23', 'image/provider/provider_24.png');
INSERT INTO `tb_provider` VALUES ('25', '绍兴泉兴纺织品有限公司', '绍兴县泉兴纺织品有限公司位于绍兴县柯桥——世界上最大的纺织基地中国轻纺城。本公司基于 华南纺织印染有限公司 合作专业生产：全棉、涤棉、涤纶、CVC、TC、亚麻、亚麻棉、亚麻粘、苎麻，摇粒绒，复合面料、四面弹复合TPU摇粒绒、珊瑚绒等产品，拥有完整、科学的质量管理体系。产品远销欧、美、澳洲、南美、中东、东南亚等国家。 \r\n', '中国浙江绍兴柯桥区柯桥湖西路轻纺大厦607-3号', '0785-56165163', '0785-56165163', '白喜明', '18057560126', '2012-03-21', 'image/provider/provider_25.png');
INSERT INTO `tb_provider` VALUES ('26', '苏州键鼎纺织有限公司', '键鼎纺织作为一个箱包面料生产企业，从自身的企业特点和企业核心价值观，把“诚信服务，顾客至上”作为自己的企业宗旨和根本理念。 企业使命，简单说，就是企业存在于社会的价值和意义所在，做一家对社会有用的企业，这就是企业的最基本使命。我们愿意为中国纺织业增添新动力，愿意为中国纺织业全球化走得更好、走得更远做出新贡献。为此，我们需要与时俱进，跟上时代的潮流，全力为各国客商采购中国纺织品提供优质产品，超出客户期望，增加客户价值。同时，我们应当将继续探索把国外好产品引入国内，为国内客户和消费者提供更佳的产品选择和优质的', '中国江苏苏州吴江盛泽镇渔业村强渔路20-21号', '020-56156161', '020-56156161', '沈健', '17751157990', '2014-06-28', 'image/provider/provider_26.png');
INSERT INTO `tb_provider` VALUES ('27', '吴江龙驰纺织品有限公司', '吴江龙驰纺织品有限公司是一个集化纤织造、印染于一体的综合性纺织品公司。公司位于风景秀丽的化纤面料加工基地苏州吴江盛泽；拥有国际先进的日本喷气G高速织机津田驹ZAX-230,KSH500整,浆,并和分条整经机,倍捻机,加弹机等,喷水织机百余台，韩国tsm整将并，德国100加弹机；配套的高中低档涂层机，印花机。满足不同客户群的需求，诚信经营，谋求共同发展。 ', '中国 江苏 苏州市吴江区盛泽镇丝绸商城别墅区7区20号左二排第一家 ', '020-81361651', '020-81361651', '王小龙', '13382161038', '2010-03-14', 'image/provider/provider_27.png');
INSERT INTO `tb_provider` VALUES ('28', '东莞市云龙嘉怡布料有限公司\r\n', '东莞市云龙嘉怡布料有限公司是帆布、棉布、涤纶布、麻布、帆布坯布、T/C布等产品专业生产加工的公司，拥有完整、科学的质量管理体系。东莞市云龙嘉怡布料有限公司的诚信、实力和产品质量获得业界的认可。', '中国广东东莞虎门镇富民皮料市场B687号铺位', '0769-21651322', '0769-21651322', '李宇航', '13929479611', '2008-11-28', 'image/provider/provider_28.png');
INSERT INTO `tb_provider` VALUES ('29', '绍兴彤绮纺织品有限公司', '绍兴县彤绮纺织品有限公司是全棉色织布、涤棉色织布、染色人造棉、毛呢料、TR拉毛布、针织布等产品专业生产加工的公司，拥有完整、科学的质量管理体系。绍兴县彤绮纺织品有限公司的诚信、实力和产品质量获得业界的认可。\r\n', '中国浙江绍兴柯桥区福全镇龙尾山村714号', '0575 - 84115076', '0575 - 84115076', '林冰', '16519165463', '2012-08-08', 'image/provider/provider_29.png');
INSERT INTO `tb_provider` VALUES ('30', '吴江市万隆纺织有限公司', '吴江市万隆纺织有限公司坐落于享有“日出万匹，衣被天下”的丝绸名镇----------江苏省吴江市盛泽镇。创建于2002年，注册资本500万元。拥有喷水织机500余台（其中包括400余台多臂龙头机和100台280cm和360cm阔幅龙头织机）及配套加捻，进口整浆并，分条整经设备。 \r\n日产面料18万米，年出口4000万美金。 \r\n我们全产业链服务覆盖了纱线、面料、成品、贸易、分销，主营产品麂皮绒系列、灯芯绒系列、仿麻布系列、特宽磨毛布系列家纺面料，以及超纤双面绒面料。', '中国江苏苏州平望开发区东宇路82号自编F-1区C1058展厅', '0569-56959598', '0569-56959598', '王兆江', '13912754201', '2014-09-10', 'image/provider/provider_30.png');

-- ----------------------------
-- Table structure for tb_specialinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_specialinfo`;
CREATE TABLE `tb_specialinfo` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `special_name` varchar(255) NOT NULL COMMENT '专辑名称',
  `special_desgnerId` int(11) NOT NULL COMMENT '设计师ID（关联设计师的ID）',
  `special_image` varchar(255) DEFAULT NULL COMMENT '专辑封面图片',
  `special_status` int(11) NOT NULL DEFAULT '1' COMMENT '状态（正常1、删除2）',
  `special_isdefault` int(11) DEFAULT NULL COMMENT '是不是默认专辑（0：不是。1：是）',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='tb_specialInfo';

-- ----------------------------
-- Records of tb_specialinfo
-- ----------------------------
INSERT INTO `tb_specialinfo` VALUES ('1', '十七画', '1', 'image/special/special_1.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('2', 'ASOBIO', '2', 'image/special/special_2.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('3', '闲附', '3', 'image/special/special_3.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('4', '日常设计学习', '4', 'image/special/special_4.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('5', '上衣亿', '5', 'image/special/special_5.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('6', '回忆说', '6', 'image/special/special_6.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('7', '待寒', '7', 'image/special/special_7.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('8', '尼可拉斯', '8', 'image/special/special_8.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('9', '车水马龙', '9', 'image/special/special_9.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('10', '超薄女款', '10', 'image/special/special_10.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('11', '通勤韩版', '11', 'image/special/special_11.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('12', '欧美街头风', '12', 'image/special/special_12.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('13', '儿童学院风', '13', 'image/special/special_13.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('14', '时尚女装', '14', 'image/special/special_14.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('15', '炫酷男装', '15', 'image/special/special_15.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('16', '优雅礼服', '16', 'image/special/special_16.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('17', '精致配饰', '17', 'image/special/special_17.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('18', '休闲家居', '18', 'image/special/special_18.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('19', '图案专辑', '19', 'image/special/special_19.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('20', '内衣专辑', '20', 'image/special/special_20.jpg', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('21', '极简设计', '21', 'image/special/special_21.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('22', '暗系列\r\n', '22', 'image/special/special_22.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('23', '扎染服装', '23', 'image/special/special_23.png', '2', '0');
INSERT INTO `tb_specialinfo` VALUES ('24', '成衣设计', '24', 'image/special/special_24.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('25', '婚纱礼服', '25', 'image/special/special_25.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('26', '8lei5芭蕾舞平底女鞋', '26', 'image/special/special_26.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('27', '缝石作品', '27', 'image/special/special_27.png', '2', '0');
INSERT INTO `tb_specialinfo` VALUES ('28', '职也装也时尚', '28', 'image/special/special_28.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('29', '灵感汇', '29', 'image/special/special_29.png', '2', '0');
INSERT INTO `tb_specialinfo` VALUES ('30', 'laurence xu', '30', 'image/special/special_30.png', '2', '0');
INSERT INTO `tb_specialinfo` VALUES ('31', 'lonely', '1', 'image/special/special_31.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('32', 'SevenSeven', '1', 'image/special/special_32.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('33', '西藏文化', '1', 'image/special/special_33.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('34', '斯耐迪', '2', 'image/special/special_34.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('35', '年华未逝', '2', 'image/special/special_35.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('36', '雪蕊之漪', '3', 'image/special/special_36.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('37', '存在的回忆', '3', 'image/special/special_37.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('38', '回忆剪影', '3', 'image/special/special_38.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('39', '童年的记忆', '4', 'image/special/special_39.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('40', '迎着阳光飞翔', '5', 'image/special/special_40.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('41', '文草青青', '6', 'image/special/special_41.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('42', '快乐之门', '7', 'image/special/special_42.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('43', '成长的轨迹', '8', 'image/special/special_43.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('44', '初生的太阳', '9', 'image/special/special_44.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('45', '浪花飞溅的声音', '10', 'image/special/special_45.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('46', '采撷时光的微笑', '11', 'image/special/special_46.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('47', '正雅阁plus', '12', '', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('48', '三味书香', '13', 'image/special/special_48.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('49', '书香秋韵', '14', 'image/special/special_49.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('50', '梓叶', '15', 'image/special/special_50.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('51', '飘雪的冬季', '16', 'image/special/special_51.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('52', '原色', '17', 'image/special/special_52.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('53', '心事', '18', 'image/special/special_53.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('54', '启程', '19', 'image/special/special_54.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('55', '斜挂窗棂的旧梦', '20', 'image/special/special_55.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('56', '微光', '21', 'image/special/special_56.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('57', '朝露心语', '22', 'image/special/special_57.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('58', '心灵沟通', '23', 'image/special/special_58.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('59', '新蕾', '24', 'image/special/special_59.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('60', '童海拾贝', '25', 'image/special/special_60.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('61', '蓓蕾', '26', 'image/special/special_61.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('62', '默认专辑', '1', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('63', '默认专辑', '2', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('64', '默认专辑', '3', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('65', '默认专辑', '4', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('66', '默认专辑', '5', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('67', '默认专辑', '6', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('68', '默认专辑', '7', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('69', '默认专辑', '8', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('70', '默认专辑', '9', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('71', '默认专辑', '10', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('72', '默认专辑', '11', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('73', '默认专辑', '12', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('74', '默认专辑', '13', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('75', '默认专辑', '14', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('76', '默认专辑', '15', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('77', '默认专辑', '16', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('78', '默认专辑', '17', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('79', '默认专辑', '18', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('80', '默认专辑', '19', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('81', '默认专辑', '20', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('82', '默认专辑', '21', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('83', '默认专辑', '22', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('84', '默认专辑', '23', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('85', '默认专辑', '24', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('86', '默认专辑', '25', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('87', '默认专辑', '26', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('88', '默认专辑', '27', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('89', '默认专辑', '28', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('90', '默认专辑', '29', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('91', '默认专辑', '30', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('92', '默认专辑', '31', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('93', '默认专辑', '32', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('94', '默认专辑', '34', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('95', '默认专辑', '35', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('96', '默认专辑', '36', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('97', '默认专辑', '37', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('98', '默认专辑', '38', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('99', '默认专辑', '39', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('100', '默认专辑', '45', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('101', '默认专辑', '46', null, '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('102', '默认专辑', '47', 'specialImage/20171209_082229_38229975780939.png', '1', '1');
INSERT INTO `tb_specialinfo` VALUES ('105', 'Andrew&Angel', '47', 'specialImage/20171207_095228_3685655356533.png', '1', '0');
INSERT INTO `tb_specialinfo` VALUES ('106', 'Longbrigs', '47', 'specialImage/20171207_095958_4135733391929.png', '2', '0');
INSERT INTO `tb_specialinfo` VALUES ('107', '正雅阁', '47', 'specialImage/20171209_081501_37781155361592.png', '1', '0');

-- ----------------------------
-- Table structure for tb_useraccount
-- ----------------------------
DROP TABLE IF EXISTS `tb_useraccount`;
CREATE TABLE `tb_useraccount` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id 自增长',
  `user_username` varchar(50) NOT NULL COMMENT '用户名',
  `user_password` varchar(150) NOT NULL COMMENT '密码',
  `user_petname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `user_personsign` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `user_email` varchar(50) NOT NULL COMMENT '电子邮件',
  `user_actor` varchar(50) NOT NULL DEFAULT '2' COMMENT '角色（设计师：1，普通用户：2）',
  `user_regdatetime` varchar(100) NOT NULL COMMENT '注册时间',
  `user_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态（启用：0，停用：1）',
  PRIMARY KEY (`user_id`,`user_username`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_useraccount
-- ----------------------------
INSERT INTO `tb_useraccount` VALUES ('1', 'wangshanshan', '123456', 'wang', '我常说自己只不过是一个手艺人，能力有限，凭能能耐吃饭。不要说什么设计师这么高雅！', '756489513@qq.com', '1', '2017-02-03', 'image/headImage/1.png', '0');
INSERT INTO `tb_useraccount` VALUES ('2', 'liyiyi', '2569874', 'lili', '我设计的不是服装，我设计的是梦想。', '259874651@qq.com', '1', '2016-04-02', 'image/headImage/2.png', '0');
INSERT INTO `tb_useraccount` VALUES ('3', 'zhangcaihong', '1568462', 'tiny', '创造力来自于不同观点的碰撞。', '265897456@qq.com', '1', '2016-11-12', 'image/headImage/3.png', '0');
INSERT INTO `tb_useraccount` VALUES ('4', 'guoxin', '19526269', 'wuli', '一切随心，有心去感悟空间。', '246942331@qq.com', '1', '2013-11-23', 'image/headImage/4.png', '0');
INSERT INTO `tb_useraccount` VALUES ('5', 'xiaoping', '5987462', 'lala', '生活是创意的来源，创意源于文化，创意源于自己。', '266943215@qq.com', '1', '2013-12-23', 'image/headImage/5.png', '0');
INSERT INTO `tb_useraccount` VALUES ('6', 'haifeng', '598746513', 'tutu', '设计是一种追求完美的生活态度，设计是一种追求品味的生活概念', '115456623@qq.com', '1', '2013-12-23', 'image/headImage/6.png', '0');
INSERT INTO `tb_useraccount` VALUES ('7', 'zhifeng', '5698745', 'xixi', '人为的设计生活方式，努力去创造一种更好的生活状态。', '125987465@qq.com', '1', '2002-12-25', 'image/headImage/7.png', '0');
INSERT INTO `tb_useraccount` VALUES ('8', 'dashu', '2459953', 'niuniu', '让灵感自由释放，创造一个心灵渴望的空间', '256987463@qq.com', '1', '2015-12-12', 'image/headImage/8.png', '0');
INSERT INTO `tb_useraccount` VALUES ('9', 'jiajia', '2564657', 'belin', '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', '256987463@qq.com', '1', '2014-05-13', 'image/headImage/9.png', '0');
INSERT INTO `tb_useraccount` VALUES ('10', 'haijun', '15646523', 'hailin', '一切设计由概念出发，围绕功能进行细节设计。', '145645622@qq.com', '1', '2016-08-30', 'image/headImage/10.png', '0');
INSERT INTO `tb_useraccount` VALUES ('11', 'kongming', 'YKM123', '小空', '设计是制造歧感，而不是为了达成共识。', '154464652@qq.com', '1', '2016-05-04', 'image/headImage/11.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('12', 'xiwen', 'YXW123', '小夕', '真正的涉及设计不是看着像“设计”，而更多的是代表“设计”的精神。', '548945615@qq.com', '1', '2016-03-04', 'image/headImage/12.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('13', 'wenshi', 'SWS123 ', '小文', '如果梦能成真，不敢睡觉的人一定很多。万一世上的人全长得一模一样，时装设计师就是最重要的人。', '156213232@qq.com', '1', '2016-05-11', 'image/headImage/13.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('14', 'feiyu', 'SFY123', '小飞', '设计师在我心中如一缕阳光射出，一丝清风吹过，让我觉得温暖，总能激起我对人生的兴趣！', '256465125@qq.com', '1', '2015-08-19', 'image/headImage/14.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('15', 'youling', 'ZYL123', '小友', '服装设计师是一个有趣的职业，因为它富有创造性。同时它也是个非常辛苦的职业，因为设计师一定要有灵感。', '489456262@qq.com', '1', '2016-02-22', 'image/headImage/15.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('16', 'bingzhi', 'QBZ123', '小冰', '我设计的不是服装，我设计的是梦想。', '154945626@qq.com', '2', '2014-12-23', 'image/headImage/16.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('17', 'xinzhi', 'YXZ123', '小新', '创造力来自于不同观点的碰撞。', '548945626@qq.com', '2', '2014-02-02', 'image/headImage/17.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('18', 'shuzu', 'DSZ123', '小书', '一切随心，有心去感悟空间。', '489562323@qq.com', '2', '2015-05-09', 'image/headImage/18.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('19', 'yuda', 'SYD123', '小宇 ', '生活是创意的来源，创意源于文化，创意源于自己。', '548948945@qq.com', '2', '2015-08-12', 'image/headImage/19.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('20', 'erfeng', 'DEF123', '小尔', '设计是一种追求完美的生活态度，设计是一种追求品味的生活概念', '548946513@163.com', '2', '2015-09-28', 'image/headImage/20.jpg', '0');
INSERT INTO `tb_useraccount` VALUES ('21', 'mingming', 'ZMM123', '小明', '人为的设计生活方式，努力去创造一种更好的生活状态。', '215616516@163.com', '1', '2015-07-11', 'image/headImage/21.png', '0');
INSERT INTO `tb_useraccount` VALUES ('22', '\r\njinping', 'ZJP123', '小金', '让灵感自由释放，创造一个心灵渴望的空间', '215616584@163.com', '1', '2015-11-06', 'image/headImage/22.png', '0');
INSERT INTO `tb_useraccount` VALUES ('23', 'xuhuan', 'XY123', '小媛', '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', '215615184@163.com', '1', '2016-12-22', 'image/headImage/23.png', '0');
INSERT INTO `tb_useraccount` VALUES ('24', 'huijuan', 'XHJ123', '小慧', '一切设计由概念出发，围绕功能进行细节设计。', '123259845@163.com', '1', '2016-09-19', 'image/headImage/24.png', '0');
INSERT INTO `tb_useraccount` VALUES ('25', 'yuqun', 'LYQ123', '小雨', '设计是制造歧感，而不是为了达成共识。', '458948916@163.com', '1', '2016-07-17', 'image/headImage/25.png', '0');
INSERT INTO `tb_useraccount` VALUES ('26', '7769078669', '10690152768', '刘先生', '真正的涉及设计不是看着像“设计”，而更多的是代表“设计”的精神。', 'liusheng@163.com', '1', '2017-02-03', 'image/headImage/26.png', '0');
INSERT INTO `tb_useraccount` VALUES ('27', '3067172455', '13061001654', '刘小姐', '如果梦能成真，不敢睡觉的人一定很多。万一世上的人全长得一模一样，时装设计师就是最重要的人。', 'liuliu86@163.com', '1', '2016-04-02', 'image/headImage/27.png', '0');
INSERT INTO `tb_useraccount` VALUES ('28', '4877863762', '13068211548', '李师父', '设计是一种追求完美的生活态度，设计是一种追求品味的生活概念', 'li830321@163.com', '2', '2016-11-12', 'image/headImage/28.png', '0');
INSERT INTO `tb_useraccount` VALUES ('29', '6181621884', '13528631290', '陈小姐', '人为的设计生活方式，努力去创造一种更好的生活状态。', 'aiou101@163.com', '1', '2013-11-23', 'image/headImage/29.png', '0');
INSERT INTO `tb_useraccount` VALUES ('30', '2633512347', '10655240631', '观冠', '让灵感自由释放，创造一个心灵渴望的空间', 'guanguan11@163.com', '2', '2013-12-23', 'image/headImage/30.png', '0');
INSERT INTO `tb_useraccount` VALUES ('31', '3634462317', 'a13690752913', '钦彭友', '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', 'pengyouh@163.com', '2', '2013-12-23', 'image/headImage/31.png', '0');
INSERT INTO `tb_useraccount` VALUES ('32', '4764831048', 'chenguanqin01', '爱日夜', '一切设计由概念出发，围绕功能进行细节设计。', 'luandade@163.com', '2', '2002-12-25', 'image/headImage/32.png', '0');
INSERT INTO `tb_useraccount` VALUES ('33', '7686157250', 'guanqin0824', '吴记', '设计是一种追求完美的生活态度，设计是一种追求品味的生活概念', 'wuji0824@163.com', '1', '2015-12-12', 'image/headImage/33.png', '0');
INSERT INTO `tb_useraccount` VALUES ('34', '8647315828', 'chen970428', '陈先生', '人为的设计生活方式，努力去创造一种更好的生活状态。', 'chen0428@163.com', '1', '2014-05-13', 'image/headImage/34.png', '0');
INSERT INTO `tb_useraccount` VALUES ('35', '5636868694', 'q108240927', '蒋公', '让灵感自由释放，创造一个心灵渴望的空间', 'jianggong@163.com', '2', '2016-08-30', 'image/headImage/35.png', '0');
INSERT INTO `tb_useraccount` VALUES ('36', 'xiaoliang', '123456', '意犹未尽', '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', '95327475@qq.com', '1', '2016-10-06', 'userHeadImage/20171211_100924_6869480302312.png', '0');
INSERT INTO `tb_useraccount` VALUES ('37', 'admin2', '123456', '意犹未尽2', '一切设计由概念出发，围绕功能进行细节设计。', '1224777294@qq.com', '2', '2016-11-30', 'userHeadImage/20171209_022226_16626728902152.png', '0');
INSERT INTO `tb_useraccount` VALUES ('46', 'xiaolian', 'xiao', null, '我常说自己只不过是一个手艺人，能力有限，凭能能耐吃饭。不要说什么设计师这么高雅！', '96832745@qq.com', '1', '2017-10-29 19:54:17', 'image/headImage/46.png', '0');
INSERT INTO `tb_useraccount` VALUES ('47', 'xiaolian', 'xiao', null, '我设计的不是服装，我设计的是梦想。', '96832745@qq.com', '1', '2017-10-29 19:57:33', 'image/headImage/47.png', '0');
INSERT INTO `tb_useraccount` VALUES ('49', 'xiaolian', 'xiao', null, '创造力来自于不同观点的碰撞。', '96832745@qq.com', '1', '2017-10-29 20:03:38', 'image/headImage/49.png', '0');
INSERT INTO `tb_useraccount` VALUES ('50', 'xiao', '123456', null, '一切随心，有心去感悟空间。', '123456@qq.com', '1', '2017-11-07 08:33:08', 'image/headImage/50.png', '0');
INSERT INTO `tb_useraccount` VALUES ('51', 'liang1', '123456', null, '生活是创意的来源，创意源于文化，创意源于自己。', '65842@qq.com', '1', '2017-11-07 08:35:27', 'image/headImage/51.png', '0');
INSERT INTO `tb_useraccount` VALUES ('52', 'user', '123456', null, '设计是一种追求完美的生活态度，设计是一种追求品味的生活概念', '12346@qq.com', '1', '2017-11-07 09:43:14', 'image/headImage/52.png', '0');
INSERT INTO `tb_useraccount` VALUES ('53', '123456', '123456', null, '人为的设计生活方式，努力去创造一种更好的生活状态。', '123456@qq.com', '1', '2017-11-07 09:47:07', 'image/headImage/53.png', '0');
INSERT INTO `tb_useraccount` VALUES ('54', 'alsdjflk', '123456', null, '让灵感自由释放，创造一个心灵渴望的空间', '165741@qq.com', '1', '2017-11-07 09:48:25', 'image/headImage/54.png', '0');
INSERT INTO `tb_useraccount` VALUES ('60', '132', '123456', null, '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', '123132@qq.com', '1', '2017-11-07 10:36:10', 'image/headImage/60.png', '0');
INSERT INTO `tb_useraccount` VALUES ('61', 'zhong', '123456', null, '一切设计由概念出发，围绕功能进行细节设计。', '456789@qq.com', '1', '2017-11-07 10:57:35', 'image/headImage/61.png', '0');
INSERT INTO `tb_useraccount` VALUES ('62', 'alsdjflk', '123', null, '设计是制造歧感，而不是为了达成共识。', '9521456413@qq.com', '2', '2017-11-07 11:21:41', 'image/headImage/62.png', '0');
INSERT INTO `tb_useraccount` VALUES ('63', 'www', '123456', null, '真正的涉及设计不是看着像“设计”，而更多的是代表“设计”的精神。', '1073783031@qq.com', '2', '2017-12-10 15:25:07', null, '0');
INSERT INTO `tb_useraccount` VALUES ('64', 'wwww', '123456', null, '如果梦能成真，不敢睡觉的人一定很多。万一世上的人全长得一模一样，时装设计师就是最重要的人。', '1073783031@qq.com', '2', '2017-12-10 15:29:35', null, '0');
INSERT INTO `tb_useraccount` VALUES ('65', 'www', '123456', null, '设计师在我心中如一缕阳光射出，一丝清风吹过，让我觉得温暖，总能激起我对人生的兴趣！', '756489513@qq.com', '2', '2017-12-10 15:31:51', null, '0');
INSERT INTO `tb_useraccount` VALUES ('68', 'w', '123456', null, '服装设计师是一个有趣的职业，因为它富有创造性。同时它也是个非常辛苦的职业，因为设计师一定要有灵感。', '756489513@qq.com', '1', '2017-12-10 19:28:11', null, '0');
INSERT INTO `tb_useraccount` VALUES ('69', 'a', '123456', null, '我设计的不是服装，我设计的是梦想。', '756489513@qq.com', '1', '2017-12-10 19:45:24', null, '0');
INSERT INTO `tb_useraccount` VALUES ('70', 'aa', '123456', '你好', '创造力来自于不同观点的碰撞。', '756489513@qq.com', '1', '2017-12-10 19:46:11', null, '0');
INSERT INTO `tb_useraccount` VALUES ('71', 'www', '123456', null, '让灵感自由释放，创造一个心灵渴望的空间', '756489513@qq.com', '2', '2017-12-10 20:10:37', null, '0');
INSERT INTO `tb_useraccount` VALUES ('72', 'aa', '123456', null, '设计就是着重于点、线、面的灵活运用，把整个环平境营造出家的温馨。', '756489513@qq.com', '1', '2017-12-10 20:48:08', null, '0');
INSERT INTO `tb_useraccount` VALUES ('74', 'wangxiaoxiao', '123456', null, '一切设计由概念出发，围绕功能进行细节设计。', '756489513@qq.com', '2', '2017-12-11 19:11:15', null, '0');
INSERT INTO `tb_useraccount` VALUES ('75', 'wangxiaoshan', '123456', null, '让灵感自由释放，创造一个心灵渴望的空间', '756489513@qq.com', '1', '2017-12-11 19:43:18', null, '0');

-- ----------------------------
-- Table structure for tb_weave
-- ----------------------------
DROP TABLE IF EXISTS `tb_weave`;
CREATE TABLE `tb_weave` (
  `weave_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增长',
  `weave_number` int(11) NOT NULL COMMENT '编号',
  `weave_supCategory` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类',
  `weave_categoryName` varchar(50) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`weave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_weave
-- ----------------------------
INSERT INTO `tb_weave` VALUES ('1', '1', '0', '梭织布');
INSERT INTO `tb_weave` VALUES ('2', '2', '0', '针织布');
INSERT INTO `tb_weave` VALUES ('3', '3', '0', '无纺布');
INSERT INTO `tb_weave` VALUES ('4', '4', '0', '丝织布');
INSERT INTO `tb_weave` VALUES ('5', '5', '1', '平纹布');
INSERT INTO `tb_weave` VALUES ('6', '6', '1', '斜纹布');
INSERT INTO `tb_weave` VALUES ('7', '7', '1', '缎纹布');
INSERT INTO `tb_weave` VALUES ('8', '8', '1', '其他梭织');
INSERT INTO `tb_weave` VALUES ('9', '9', '2', '罗纹布');
INSERT INTO `tb_weave` VALUES ('10', '10', '2', '蕾丝／网布');
INSERT INTO `tb_weave` VALUES ('11', '11', '2', '起毛／起绒布');
INSERT INTO `tb_weave` VALUES ('12', '12', '2', '网眼布');
INSERT INTO `tb_weave` VALUES ('13', '13', '2', '汗布');
INSERT INTO `tb_weave` VALUES ('14', '14', '2', '毛巾布');
INSERT INTO `tb_weave` VALUES ('15', '15', '2', '摇粒布');
INSERT INTO `tb_weave` VALUES ('16', '16', '2', '卫衣布');
INSERT INTO `tb_weave` VALUES ('17', '17', '2', '针织缎纹');
INSERT INTO `tb_weave` VALUES ('18', '18', '2', '毛圈布');
INSERT INTO `tb_weave` VALUES ('19', '19', '2', '其他针织');
INSERT INTO `tb_weave` VALUES ('20', '20', '3', '水刺无纺');
INSERT INTO `tb_weave` VALUES ('21', '21', '3', '针刺无纺');
INSERT INTO `tb_weave` VALUES ('22', '22', '3', '熔喷无纺');
INSERT INTO `tb_weave` VALUES ('23', '23', '3', '热轧无纺');
INSERT INTO `tb_weave` VALUES ('24', '24', '3', '纺粘无纺');
INSERT INTO `tb_weave` VALUES ('25', '25', '3', '其他无纺');
INSERT INTO `tb_weave` VALUES ('26', '26', '4', '丝织布');
SET FOREIGN_KEY_CHECKS=1;

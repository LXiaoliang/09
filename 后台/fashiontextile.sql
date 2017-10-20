/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50522
Source Host           : localhost:3306
Source Database       : fashiontextile

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2017-10-09 23:48:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_buyneed
-- ----------------------------
DROP TABLE IF EXISTS `tb_buyneed`;
CREATE TABLE `tb_buyneed` (
  `buyneed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `buyneed_designerWorksId` int(11) DEFAULT NULL COMMENT '设计作品ID（关联设计作品ID）',
  `buyneed_designerID` int(11) DEFAULT NULL COMMENT '设计师ID（关联设计师ID）',
  `buyneed_buyType` int(11) DEFAULT NULL COMMENT '购买类型（关联字典数据购买类型）',
  `buyneed_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `buyneed_name` varchar(50) DEFAULT NULL COMMENT '购买者姓名',
  `buyneed_message` varchar(255) DEFAULT NULL COMMENT '留言',
  `buyneed_dateTime` varchar(255) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`buyneed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_buyNeed';

-- ----------------------------
-- Records of tb_buyneed
-- ----------------------------

-- ----------------------------
-- Table structure for tb_clotherbrandinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_clotherbrandinfo`;
CREATE TABLE `tb_clotherbrandinfo` (
  `clothesBrand_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `clothesBrand_name` varchar(50) NOT NULL COMMENT '名称',
  `clothesBrand_des` varchar(50) NOT NULL COMMENT '简介',
  `clothesBrand_companyName` varchar(50) NOT NULL COMMENT '服装企业名称',
  `clothesBrand_companyDes` varchar(255) NOT NULL COMMENT '服装企业简介',
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
  `clothesBrand_status` int(11) NOT NULL COMMENT '状态（正常:1、删除:0）',
  PRIMARY KEY (`clothesBrand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_clotherBrandInfo';

-- ----------------------------
-- Records of tb_clotherbrandinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `collection_userID` int(11) NOT NULL COMMENT '收藏人ID（对应用户账号）',
  `collection_objectId` int(11) NOT NULL COMMENT '收藏对象ID',
  `collection_type` int(11) NOT NULL COMMENT '收藏对象类别（作品0、服装1、面料2）',
  `collection_datetime` varchar(50) NOT NULL COMMENT '时间',
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_collection';

-- ----------------------------
-- Records of tb_collection
-- ----------------------------

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment` (
  `comment_Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `comment_content` longtext NOT NULL COMMENT '评论内容',
  `comment_commentatorId` int(11) NOT NULL COMMENT '评论人ID（关联用户表的ID）',
  `comment_type` varchar(50) NOT NULL COMMENT '评论对象类型（作品0、品牌服装1、布料辅料2、资讯3）',
  `comment_objectId` int(11) NOT NULL COMMENT '评论对象ID',
  `commnet_dateTime` varchar(50) NOT NULL COMMENT '时间',
  PRIMARY KEY (`comment_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_comment';

-- ----------------------------
-- Records of tb_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_designerflag
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerflag`;
CREATE TABLE `tb_designerflag` (
  `designerFlag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `designerFlag_designerId` int(11) NOT NULL COMMENT '设计师id，与设计师表的设计师id关联',
  `designerFlag` int(11) NOT NULL COMMENT '设计标签，与数据字典表中设计标签id关联',
  `designerFlag_likeCount` int(11) DEFAULT NULL COMMENT '人气指数（该类作品被喜欢时加一）',
  PRIMARY KEY (`designerFlag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerflag
-- ----------------------------

-- ----------------------------
-- Table structure for tb_designerfocus
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerfocus`;
CREATE TABLE `tb_designerfocus` (
  `designerFocus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `designerFocus_userId` int(11) NOT NULL COMMENT '用户ID(关联用户表的ID)',
  `designerFocus_designerID` int(11) NOT NULL COMMENT '设计师ID(关联设计师表的ID)',
  PRIMARY KEY (`designerFocus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_designerFocus';

-- ----------------------------
-- Records of tb_designerfocus
-- ----------------------------

-- ----------------------------
-- Table structure for tb_designerinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerinfo`;
CREATE TABLE `tb_designerinfo` (
  `designer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id 自增长',
  `designer_userId` int(11) NOT NULL COMMENT '账号id,关联用户账号表的主键',
  `designer_image` varchar(255) NOT NULL COMMENT '个人照片',
  `designer_name` varchar(255) NOT NULL COMMENT '个人姓名',
  `designer_gender` varchar(255) NOT NULL COMMENT '性别',
  `designer_birthday` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `designer_phone` varchar(255) NOT NULL COMMENT '电话号码',
  `designer_education` varchar(255) DEFAULT NULL COMMENT '学历',
  `designer_experience` varchar(255) DEFAULT NULL COMMENT '从业经验',
  `designer_changeTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `designer_label` varchar(255) NOT NULL COMMENT '设计标签',
  PRIMARY KEY (`designer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_designerworks
-- ----------------------------
DROP TABLE IF EXISTS `tb_designerworks`;
CREATE TABLE `tb_designerworks` (
  `designerWorks_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `designerWorks_designerId` int(11) NOT NULL COMMENT '设计师ID，与用户表的设计师ID关联',
  `designerWorks_specialId` int(11) NOT NULL COMMENT '专辑id,与专辑表的专辑id关联',
  `designerWorks_effectImage` varchar(255) NOT NULL COMMENT '效果图',
  `designerWorks_styeImage` varchar(255) DEFAULT NULL COMMENT '款式图',
  `designerWorks_technologyImage` varchar(255) DEFAULT NULL COMMENT '工艺图',
  `designerWorks_fabricImage` varchar(255) DEFAULT NULL COMMENT '面料图',
  `designerWorks_finishImage` varchar(255) DEFAULT NULL COMMENT '成衣图',
  `designerworks_otherImage` varchar(255) DEFAULT NULL COMMENT '其他图',
  `designerWorks_workName` varchar(255) NOT NULL COMMENT '作品名称',
  `designerWorks_type` int(11) DEFAULT NULL COMMENT '作品分类，关联字典数据中作品分类的id',
  `designerWorks_style` int(11) DEFAULT NULL COMMENT '作品风格，关联字典数据表中作品风格id',
  `designerWorks_fabric` int(11) DEFAULT NULL COMMENT '作品面料，关联字典数据表中作品面料id',
  `designerWorks_model` int(11) DEFAULT NULL COMMENT '款式，关联字典数据中款式id',
  `designerWorks_colors` varchar(255) NOT NULL COMMENT '色彩',
  `designerWorks_des` longtext COMMENT '描述',
  `designerWorks_likeCount` int(11) DEFAULT NULL COMMENT '被喜欢次数',
  `designerWorks_collectionCount` int(11) DEFAULT NULL COMMENT '被收藏次数',
  `designerWorks_publishTime` varchar(255) DEFAULT NULL COMMENT '发表时间',
  `designerWorks_changeTime` varchar(255) DEFAULT NULL COMMENT '修改时间',
  `designerWorks_status` varchar(255) CHARACTER SET armscii8 DEFAULT NULL COMMENT '状态（正常1，删除0）',
  PRIMARY KEY (`designerWorks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_designerworks
-- ----------------------------

-- ----------------------------
-- Table structure for tb_dictionarycategory
-- ----------------------------
DROP TABLE IF EXISTS `tb_dictionarycategory`;
CREATE TABLE `tb_dictionarycategory` (
  `dictionaryCategory_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增长',
  `dictionaryCategory_number` int(11) NOT NULL COMMENT '类别编号',
  `dictionaryCategory_name` varchar(50) NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`dictionaryCategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_dictionarycategory
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_dictionaryData';

-- ----------------------------
-- Records of tb_dictionarydata
-- ----------------------------

-- ----------------------------
-- Table structure for tb_enterpriseinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_enterpriseinfo`;
CREATE TABLE `tb_enterpriseinfo` (
  `enterprise_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `enterprise_name` varchar(50) NOT NULL COMMENT '企业名称',
  `enterprise_des` varchar(50) NOT NULL COMMENT '简介',
  `enterprise_address` varchar(50) NOT NULL COMMENT '地址 ',
  `enterprise_phone` varchar(50) NOT NULL COMMENT '电话',
  `enterprise_fax` varchar(50) NOT NULL COMMENT '传真',
  `enterprise_contacts` varchar(50) NOT NULL COMMENT '联系人姓名',
  `enterprise_contactsphone` varchar(50) NOT NULL COMMENT '联系人电话 ',
  `enterprise_net` varchar(50) DEFAULT NULL COMMENT '网址',
  `enterprise_updateTime` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `enterprise_logo` varchar(50) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`enterprise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_enterpriseInfo';

-- ----------------------------
-- Records of tb_enterpriseinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_fabriccomposition
-- ----------------------------
DROP TABLE IF EXISTS `tb_fabriccomposition`;
CREATE TABLE `tb_fabriccomposition` (
  `fabricComposition_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增',
  `fabricComposition_number` int(11) NOT NULL COMMENT '编号',
  `fabricComposition_supCategory` varchar(50) DEFAULT NULL COMMENT '上级分类',
  `fabricComposition_categoryName` varchar(50) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`fabricComposition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_fabricComposition';

-- ----------------------------
-- Records of tb_fabriccomposition
-- ----------------------------

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
  PRIMARY KEY (`fabric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_fabricinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_information
-- ----------------------------
DROP TABLE IF EXISTS `tb_information`;
CREATE TABLE `tb_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自增长',
  `information_title` varchar(255) DEFAULT NULL COMMENT '标题',
  `information_issueDatetime` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `information_source` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `information_content` longtext COMMENT '资讯内容',
  `infromation_readCount` int(11) DEFAULT NULL COMMENT '阅读次数',
  `information_status` int(11) DEFAULT NULL COMMENT '状态(正常0、置顶1、删除2)',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_information';

-- ----------------------------
-- Records of tb_information
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_provider
-- ----------------------------

-- ----------------------------
-- Table structure for tb_specialinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_specialinfo`;
CREATE TABLE `tb_specialinfo` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id自增长',
  `special_name` varchar(255) NOT NULL COMMENT '专辑名称',
  `special_desgnerId` varchar(255) NOT NULL COMMENT '设计师ID（关联设计师的ID）',
  `special_image` varchar(255) DEFAULT NULL COMMENT '专辑封面图片',
  `special_status` int(11) NOT NULL COMMENT '状态（正常1、删除2）',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tb_specialInfo';

-- ----------------------------
-- Records of tb_specialinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '1234556');

-- ----------------------------
-- Table structure for tb_useraccount
-- ----------------------------
DROP TABLE IF EXISTS `tb_useraccount`;
CREATE TABLE `tb_useraccount` (
  `user_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT 'id 自增长',
  `user_username` varchar(50) NOT NULL COMMENT '用户名',
  `user_password` varchar(150) NOT NULL COMMENT '密码',
  `user_petname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `user_personsign` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `user_email` varchar(50) NOT NULL COMMENT '电子邮件',
  `user_actor` varchar(50) NOT NULL DEFAULT '1' COMMENT '角色（设计师：1，普通用户：2）',
  `user_regdatetime` varchar(100) NOT NULL COMMENT '注册时间',
  `user_image` varchar(255) DEFAULT NULL COMMENT '头像',
  `user_status` int(11) NOT NULL DEFAULT '0' COMMENT '状态（启用：0，停用：1）',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_useraccount
-- ----------------------------

-- ----------------------------
-- Table structure for tb_weave
-- ----------------------------
DROP TABLE IF EXISTS `tb_weave`;
CREATE TABLE `tb_weave` (
  `weave_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID自增长',
  `weave_number` int(11) NOT NULL COMMENT '编号',
  `weave_supCategory` varchar(50) DEFAULT NULL COMMENT '上级分类',
  `weave_categoryName` varchar(50) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`weave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_weave
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;

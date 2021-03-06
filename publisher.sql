/*
Navicat MySQL Data Transfer

Source Server         : local3309
Source Server Version : 50528
Source Host           : localhost:3309
Source Database       : publisher

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-04-07 17:42:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `user_name` varchar(255) NOT NULL COMMENT '管理员用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `assets_balance`
-- ----------------------------
DROP TABLE IF EXISTS `assets_balance`;
CREATE TABLE `assets_balance` (
  `id` varchar(255) NOT NULL COMMENT '资金编号',
  `department_id` varchar(255) DEFAULT NULL COMMENT '科目编号',
  `department_title` varchar(255) DEFAULT NULL COMMENT '科目名称',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `account_scale` varchar(255) DEFAULT NULL COMMENT '核算单位',
  `original_balance` decimal(11,2) DEFAULT NULL COMMENT '初期余额',
  `debit_total` decimal(11,2) DEFAULT NULL COMMENT '借方累计',
  `credit_total` decimal(11,2) DEFAULT NULL COMMENT '贷方累计',
  `final_balance` decimal(11,2) DEFAULT NULL COMMENT '期末余额',
  `balance_total` decimal(11,2) DEFAULT NULL COMMENT '总计',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '银行',
  `record_creator` varchar(255) DEFAULT NULL COMMENT '制单人',
  `record_create_date` varchar(255) DEFAULT NULL COMMENT '表单制作日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_balance
-- ----------------------------
INSERT INTO `assets_balance` VALUES ('ZJ0001', 'KM0001', '图书销售', '测试', '人民币（元）', '16345.30', '0.00', '0.00', '74320.10', '74320.10', '中国工商银行', '王自在', '2014-08-23');
INSERT INTO `assets_balance` VALUES ('ZJ0002', 'KM0002', '图书销售', '测试2', '人民币（元）', '15673.60', '0.00', '0.00', '93031.90', '93031.90', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0003', 'KM0003', '图书销售', '测试3', '人民币（元）', '23760.60', '0.00', '0.00', '123554.30', '123554.30', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0004', 'KM0004', '图书销售', '作者', '人民币（元）', '25875.30', '896537.30', '786537.30', '135875.30', '135875.30', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0005', 'KM0005', '图书销售', '作者', '人民币（元）', '14789.50', '673245.80', '616748.90', '71286.40', '71286.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0006', 'KM0006', '图书销售', '作者', '人民币（元）', '12543.70', '589823.60', '526782.40', '75584.90', '75584.90', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0007', 'KM0007', '印刷成本', '春秋印刷厂', '人民币（元）', '15789.40', '698724.60', '657635.60', '56878.40', '56878.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0008', 'KM0008', '图书销售', '作者', '人民币（元）', '15895.80', '684563.60', '654578.10', '45881.30', '45881.30', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0009', 'KM0009', '图书销售', '作者', '人民币（元）', '18672.30', '786548.30', '709872.20', '95348.40', '95348.40', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0010', 'KM0010', '图书销售', '作者', '人民币（元）', '19876.40', '657823.40', '557345.60', '120354.20', '120354.20', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0011', 'KM0011', '图书销售', '作者', '人民币（元）', '18763.60', '827645.40', '736875.60', '109533.40', '109533.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0012', 'KM0012', '印刷成本', '春秋印刷厂', '人民币（元）', '21568.40', '797634.60', '706578.10', '112624.90', '112624.90', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0013', 'KM0013', '印刷成本', '春秋印刷厂', '人民币（元）', '22784.70', '765489.40', '698716.50', '89557.60', '89557.60', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0014', 'KM0014', '图书销售', '作者', '人民币（元）', '22875.70', '786783.30', '684563.50', '125095.50', '125095.50', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0015', 'KM0015', '印刷成本', '春秋印刷厂', '人民币（元）', '18762.20', '776589.40', '698708.40', '96643.20', '96643.20', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0016', 'KM0016', '图书销售', '作者', '人民币（元）', '16783.40', '708945.30', '663785.60', '61943.10', '61943.10', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0017', 'KM0017', '图书销售', '作者', '人民币（元）', '17608.70', '790983.40', '709844.70', '98747.40', '98747.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0018', 'KM0018', '图书销售', '作者', '人民币（元）', '20879.40', '806754.40', '712309.50', '115324.30', '115324.30', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0019', 'KM0019', '图书销售', '作者', '人民币（元）', '19870.30', '835096.20', '728906.60', '126059.90', '126059.90', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0020', 'KM0020', '图书销售', '作者', '人民币（元）', '18406.70', '796506.20', '714824.50', '100088.40', '100088.40', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0021', 'KM0021', '图书销售', '作者', '人民币（元）', '18347.30', '782309.80', '696834.90', '103822.20', '103822.20', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0022', 'KM0022', '印刷成本', '春秋印刷厂', '人民币（元）', '16409.30', '698703.30', '628097.50', '87015.10', '87015.10', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0023', 'KM0023', '图书销售', '作者', '人民币（元）', '16095.60', '795632.90', '710984.60', '100743.90', '100743.90', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0024', 'KM0024', '印刷成本', '作者', '人民币（元）', '17094.70', '806799.30', '719851.10', '104042.90', '104042.90', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0025', 'KM0025', '图书销售', '作者', '人民币（元）', '18295.40', '829756.90', '730908.20', '117144.10', '117144.10', '中国工商银行', '张洪', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0026', 'KM0026', '图书销售', '作者', '人民币（元）', '18093.40', '812094.80', '709823.60', '120364.60', '120364.60', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0027', 'KM0027', '印刷成本', '春秋印刷厂', '人民币（元）', '18672.50', '780922.80', '718471.90', '81123.40', '81123.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0028', 'KM0028', '图书销售', '作者', '人民币（元）', '17690.60', '783494.80', '710945.60', '90239.80', '90239.80', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0029', 'KM0029', '图书销售', '作者', '人民币（元）', '20985.70', '816749.40', '729870.50', '107864.60', '107864.60', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0030', 'KM0030', '图书销售', '作者', '人民币（元）', '21390.80', '813960.50', '739851.90', '95499.40', '95499.40', '中国工商银行', '李学仁', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0031', 'KM0031', '图书销售', '作者', '人民币（元）', '23975.90', '896701.80', '817045.80', '103631.90', '103631.90', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0032', 'KM0032', '图书销售', '作者', '人民币（元）', '20894.60', '784930.70', '696831.90', '108993.40', '108993.40', '中国工商银行', '王自在', '2014-10-22');
INSERT INTO `assets_balance` VALUES ('ZJ0033', 'KM0033', '图书销售', '作者', '人民币（元）', '16803.50', '816409.40', '709848.50', '123364.40', '123364.40', '中国工商银行', '张洪', '2016-01-28');

-- ----------------------------
-- Table structure for `assets_balance_export`
-- ----------------------------
DROP TABLE IF EXISTS `assets_balance_export`;
CREATE TABLE `assets_balance_export` (
  `资金编号` varchar(255) NOT NULL COMMENT '资金编号',
  `科目编号` varchar(255) DEFAULT NULL COMMENT '科目编号',
  `科目名称` varchar(255) DEFAULT NULL COMMENT '科目名称',
  `客户名称` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `核算单位` varchar(255) DEFAULT NULL COMMENT '核算单位',
  `初期余额` double DEFAULT NULL COMMENT '初期余额',
  `借方累计` double DEFAULT NULL COMMENT '借方累计',
  `贷方累计` double DEFAULT NULL COMMENT '贷方累计',
  `期末余额` double DEFAULT NULL COMMENT '期末余额',
  `总计` double DEFAULT NULL COMMENT '总计',
  `银行` varchar(255) DEFAULT NULL COMMENT '银行',
  `制单人` varchar(255) DEFAULT NULL COMMENT '制单人',
  `表单制作日期` varchar(255) DEFAULT NULL COMMENT '表单制作日期',
  PRIMARY KEY (`资金编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_balance_export
-- ----------------------------
INSERT INTO `assets_balance_export` VALUES ('ZJ0001', 'KM0001', '总管科室', '孙客户', '万', '45.67', '12.54', '34.56', '65.32', '76.23', '中国工商银行', '王制单', '2014-08-23');
INSERT INTO `assets_balance_export` VALUES ('ZJ0002', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0003', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0004', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0005', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0006', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0007', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0008', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0009', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0010', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0011', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0012', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0013', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0014', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0015', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0016', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0017', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0018', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0019', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0020', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0021', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0022', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0023', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0024', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0025', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0026', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0027', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0028', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0029', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0030', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0031', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0032', 'KM0002', '大内直属部门', '周芷若', '万', '34.65', '12.34', '76.88', '22.33', '22.22', '中国建设银行', '郑爽', '2014-10-22');
INSERT INTO `assets_balance_export` VALUES ('ZJ0033', 'aaa', 'aaa', 'aaa', 'aaa', '234', '0', '0', '3245', '345', 'aaa', 'aaa', '2016-01-28');

-- ----------------------------
-- Table structure for `bian_shen`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen`;
CREATE TABLE `bian_shen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编审编号',
  `original_author` varchar(255) DEFAULT NULL COMMENT '原著作者',
  `original_press` varchar(255) DEFAULT NULL COMMENT '原出版社',
  `primary_author` varchar(255) DEFAULT NULL COMMENT '主要作者',
  `other_author` varchar(255) DEFAULT NULL COMMENT '其他署名作者',
  `ze_ren_editor` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `wen_zi_editor` varchar(255) DEFAULT NULL COMMENT '文字编辑',
  `mei_shu_editor` varchar(255) DEFAULT NULL COMMENT '美术编辑',
  `proofreader` varchar(255) DEFAULT NULL COMMENT '校对',
  `bian_shen_status` int(11) DEFAULT NULL COMMENT '编审状态',
  `fu_yin_date` varchar(255) DEFAULT NULL COMMENT '付印日期',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen
-- ----------------------------
INSERT INTO `bian_shen` VALUES ('1', '', '', '咬嚼文字编辑部', '', '熊华', '张磊 ', '蔡大伟', '黄敏', '1', '2014-07-07', '1');
INSERT INTO `bian_shen` VALUES ('2', '', '', '', '', '熊华', '张磊 ', '蔡大伟', '黄敏', '2', '2014-08-08', '2');
INSERT INTO `bian_shen` VALUES ('3', '', '', '', '', '熊华', '张磊', '蔡大伟', '黄敏', '2', '2014-07-08', '3');
INSERT INTO `bian_shen` VALUES ('4', '', '', '', '', '熊华', '张磊', '蔡大伟', '黄敏', '4', '2014-07-08', '4');
INSERT INTO `bian_shen` VALUES ('5', '', '', '郑逸梅', '', '熊华', '熊华', '蔡大伟', '黄敏', '4', '2014-07-09', '5');
INSERT INTO `bian_shen` VALUES ('6', '', '', '郑逸梅', '', '熊华', '熊华', '蔡大伟', '黄敏', '4', '2014-07-08', '6');
INSERT INTO `bian_shen` VALUES ('7', '', '', '柳胜生', '', '熊华', '熊华', '蔡大伟', '黄敏', '2', '2014-07-08', '7');
INSERT INTO `bian_shen` VALUES ('8', '', '', '吴宗贵', '', '熊华', '熊华', '蔡大伟', '黄敏', '1', '2014-07-08', '8');
INSERT INTO `bian_shen` VALUES ('9', '', '', '', '', '金峥嵘', '唐浩武', '蔡大伟', '黄敏', '2', '2014-07-08', '9');
INSERT INTO `bian_shen` VALUES ('10', '', '', '', '', '金峥嵘', '唐浩武', '蔡大伟', '黄敏', '2', '2014-07-12', '10');
INSERT INTO `bian_shen` VALUES ('11', '', '', '倪顺生', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '1', '2014-07-08', '11');
INSERT INTO `bian_shen` VALUES ('12', '', '', '闵行区教育局', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-13', '12');
INSERT INTO `bian_shen` VALUES ('13', '', '', '杨浦区教育局', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '4', '2014-07-08', '13');
INSERT INTO `bian_shen` VALUES ('14', '', '', '沈昳丽', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '14');
INSERT INTO `bian_shen` VALUES ('15', '', '', '施瀚涛', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '3', '2014-07-08', '15');
INSERT INTO `bian_shen` VALUES ('16', '', '', '施瀚涛', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '16');
INSERT INTO `bian_shen` VALUES ('17', '', '', '施瀚涛', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '1', '2014-07-08', '17');
INSERT INTO `bian_shen` VALUES ('18', '', '', '田泽华', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '18');
INSERT INTO `bian_shen` VALUES ('19', '', '', '王文杰', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '19');
INSERT INTO `bian_shen` VALUES ('20', '', '', '徐建融', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '20');
INSERT INTO `bian_shen` VALUES ('21', '', '', '余平', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '3', '2014-07-08', '21');
INSERT INTO `bian_shen` VALUES ('22', '', '', '余平', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '22');
INSERT INTO `bian_shen` VALUES ('23', '', '', '余平', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '1', '2014-07-08', '23');
INSERT INTO `bian_shen` VALUES ('24', '', '', '余平', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '24');
INSERT INTO `bian_shen` VALUES ('25', '', '', '余平', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '3', '2014-07-08', '25');
INSERT INTO `bian_shen` VALUES ('26', '', '', '季云福', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '26');
INSERT INTO `bian_shen` VALUES ('27', '', '', '熊中富', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '27');
INSERT INTO `bian_shen` VALUES ('28', '', '', '廖军', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '28');
INSERT INTO `bian_shen` VALUES ('29', '', '', '张义深', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '29');
INSERT INTO `bian_shen` VALUES ('30', '', '', '沈纯理', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '30');
INSERT INTO `bian_shen` VALUES ('31', '', '', '陈福彬', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '31');
INSERT INTO `bian_shen` VALUES ('32', '', '', '吴林照', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '2', '2014-07-08', '32');
INSERT INTO `bian_shen` VALUES ('33', '', '', '刘小童', '', '金峥嵘', '金峥嵘', '蔡大伟', '黄敏', '4', '2014-03-10', '33');
INSERT INTO `bian_shen` VALUES ('34', '', '', '静安区文化局', '', '黄慧', '黄慧', '蔡大伟', '黄敏', '1', '2014-03-14', '34');
INSERT INTO `bian_shen` VALUES ('35', '', '', '托马斯·霍尔曼', '', '黄慧', '黄慧', '蔡大伟', '黄敏', '3', '2016-01-18', '35');
INSERT INTO `bian_shen` VALUES ('36', '', '', '顾明钟', '', '黄慧', '黄慧', '蔡大伟', '黄敏', '1', '2014-03-03', '36');
INSERT INTO `bian_shen` VALUES ('37', 'Austin Hu', '', '黄琦舫', '胡音', '黄慧', '黄慧', '蔡大伟', '黄敏', '2', '2015-01-14', '37');
INSERT INTO `bian_shen` VALUES ('38', '作者', '爱丁堡', '俄日', '是的', '分页', '访问', '费用', '发票', '1', '2016-03-28', '23');
INSERT INTO `bian_shen` VALUES ('39', '这里是作者', '爱丁堡', '俄日', '是的', '分页', '访问', '费用', '发票', '1', '2016-04-07', '23');
INSERT INTO `bian_shen` VALUES ('40', '柳若寒', '超人', '超人', '', '', '', '', '', '1', '2016-04-08', '13');

-- ----------------------------
-- Table structure for `bian_shen_export`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen_export`;
CREATE TABLE `bian_shen_export` (
  `编审编号` int(11) NOT NULL DEFAULT '0' COMMENT '编审编号',
  `书号` varchar(255) DEFAULT NULL COMMENT '书号',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `丛书名` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `原著作者` varchar(255) DEFAULT NULL COMMENT '原著作者',
  `原出版社` varchar(255) DEFAULT NULL COMMENT '原出版社',
  `主要作者` varchar(255) DEFAULT NULL COMMENT '主要作者',
  `其他署名作者` varchar(255) DEFAULT NULL COMMENT '其他署名作者',
  `责任编辑` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `文字编辑` varchar(255) DEFAULT NULL COMMENT '文字编辑',
  `美术编辑` varchar(255) DEFAULT NULL COMMENT '美术编辑',
  `校对` varchar(255) DEFAULT NULL COMMENT '校对',
  `编审状态` varchar(255) DEFAULT NULL COMMENT '编审状态',
  `付印日期` varchar(255) DEFAULT NULL COMMENT '付印日期',
  PRIMARY KEY (`编审编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen_export
-- ----------------------------
INSERT INTO `bian_shen_export` VALUES ('1', 'B0001', '第一本书', '丛书', '柳三变', '古代出版社', '柳三变', '万年青', '柳青', '常回家', '赵宏', '靳东', '未审核', '2014-07-07');
INSERT INTO `bian_shen_export` VALUES ('2', 'B0002', '第二本书', '丛书是什么', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-08-08');
INSERT INTO `bian_shen_export` VALUES ('3', 'B0003', '英雄传说', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('4', 'B0004', '四季', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('5', 'B0005', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '赵文字', '韦一笑', '殷天正', '三审通过', '2014-07-09');
INSERT INTO `bian_shen_export` VALUES ('6', 'B0006', '第二本书1', '什么叫丛书', '张翠山', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('7', 'B0007', '七武士', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('8', 'B0008', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('9', 'B0009', '文艺青年', '什么叫丛书', '张文艺', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('10', 'B0010', '十个刺客', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '黄渤', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-12');
INSERT INTO `bian_shen_export` VALUES ('11', 'B0011', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('12', 'B0012', '左小祖咒', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-13');
INSERT INTO `bian_shen_export` VALUES ('13', 'B0013', '幸运十三', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '小坏', '范瑶', '韦一笑', '殷天正', '三审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('14', 'B0014', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('15', 'B0015', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范伟', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('16', 'B0016', '超人不会飞', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('17', 'B0017', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('18', 'B0018', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('19', 'B0019', '鸡飞蛋打', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('20', 'B0020', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('21', 'B0021', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('22', 'B0022', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('23', 'B0023', '爱心社团', '什么叫丛书', '张团长', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '未审核', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('24', 'B0024', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('25', 'B0025', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '二审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('26', 'B0026', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('27', 'B0027', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('28', 'B0028', '他会爱上谁', '什么叫丛书', '张媛媛', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('29', 'B0029', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('30', 'B0030', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('31', 'B0031', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('32', 'B0032', '第二本书1', '什么叫丛书', '张无忌', '明教出版社', '张无忌', '赵敏', '杨逍', '范瑶', '韦一笑', '殷天正', '一审通过', '2014-07-08');
INSERT INTO `bian_shen_export` VALUES ('33', 'B0033', '33号书本', '还是丛书', '王丛书', '丛书出版社', '张丛书', '李丛书', '邱丛书', '刘文字', '编辑', '舰队', '三审通过', '2014-03-10');
INSERT INTO `bian_shen_export` VALUES ('34', 'B0034', '一本好书', '又是丛书', '李某某', '王某某', '刘锦荣', '王安培', '肖圣汗', '汗了', '囧了', '还有校对', '未审核', '2014-03-14');
INSERT INTO `bian_shen_export` VALUES ('35', 'B0035', '书名', '112', '213', '123', '123', '123', '123', '13', '32', '13', '二审通过', '2016-01-18');
INSERT INTO `bian_shen_export` VALUES ('36', 'B0036', '唐诗三百首', null, '圣人', '超凡出版社', '刘强', '刘敏', '刘汉', '汉字', '汉子', '刘校对', '未审核', '2014-03-03');
INSERT INTO `bian_shen_export` VALUES ('37', 'B0037', '宋词鉴赏', '无', '贷方', '凤凰出版社', '防守打法', 'sadf', 'sdf', 'da', 'fdsa', 'da', '一审通过', '2015-01-14');

-- ----------------------------
-- Table structure for `bian_shen_status`
-- ----------------------------
DROP TABLE IF EXISTS `bian_shen_status`;
CREATE TABLE `bian_shen_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '编审状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bian_shen_status
-- ----------------------------
INSERT INTO `bian_shen_status` VALUES ('1', '未审核');
INSERT INTO `bian_shen_status` VALUES ('2', '一审通过');
INSERT INTO `bian_shen_status` VALUES ('3', '二审通过');
INSERT INTO `bian_shen_status` VALUES ('4', '三审通过');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '书编号',
  `book_name` varchar(255) DEFAULT '' COMMENT '书名',
  `sub_book_name` varchar(255) DEFAULT '' COMMENT '丛书名',
  `ISBN` varchar(255) DEFAULT '' COMMENT 'ISBN',
  `price` decimal(5,2) DEFAULT NULL COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '2014年咬文嚼字合订本', '咬嚼文字合订本', 'ISBN 978-7-5433-1418-7', '30.00');
INSERT INTO `book` VALUES ('2', '食品安全就在您的手中（1）', '', 'ISBN 978-7-5573-1418-6', null);
INSERT INTO `book` VALUES ('3', '食品安全就在您的手中（2）', '', 'ISBN 978-7-5433-1458-6', null);
INSERT INTO `book` VALUES ('4', '食品安全就在您的手中（3）', '', 'ISBN 956-7-5433-1418-6', null);
INSERT INTO `book` VALUES ('5', '海上闻人那点事儿（上）', '纸账铜瓶室文丛', 'ISBN 978-7-5733-1418-5', null);
INSERT INTO `book` VALUES ('6', '海上闻人那点事儿（下）', '纸账铜瓶室文丛', 'ISBN 978-7-5433-1678-5', null);
INSERT INTO `book` VALUES ('7', '健康大讲堂——上海市松江区分册', '', 'ISBN 938-7-5443-1418-6', null);
INSERT INTO `book` VALUES ('8', '揭开动脉血管的奥秘', '', 'ISBN 978-7-8933-1416-6', null);
INSERT INTO `book` VALUES ('9', '私摄影系列（二）', '', 'ISBN 938-7-5333-1248-3', null);
INSERT INTO `book` VALUES ('10', '私摄影系列（三）', '', 'ISBN 978-7-5373-1454-3', null);
INSERT INTO `book` VALUES ('11', '倪顺生紫砂作品集', '', 'ISBN 975-7-5533-1418-6', '28.00');
INSERT INTO `book` VALUES ('12', '不一样的课程-闵行', '教育理论与教学研究', 'ISBN 978-7-5445-1418-7', null);
INSERT INTO `book` VALUES ('13', '不一样的课程-杨浦', '教育理论与教学研究', 'ISBN 978-7-5633-1418-3', null);
INSERT INTO `book` VALUES ('14', '天然昳丽', '', 'ISBN 978-7-5483-1458-6', null);
INSERT INTO `book` VALUES ('15', '校园讲座文集', '', 'ISBN 978-8-5533-1418-6', null);
INSERT INTO `book` VALUES ('16', '情感·符号·摄影', '', 'ISBN 978-7-2345-1418-6', null);
INSERT INTO `book` VALUES ('17', '城市·影像·思考', '', 'ISBN 978-7-5433-1458-6', null);
INSERT INTO `book` VALUES ('18', '田泽华诗选', '', 'ISBN 978-7-5632-1418-6', '28.00');
INSERT INTO `book` VALUES ('19', '毯说', '', 'ISBN 978-7-5433-1588-6', null);
INSERT INTO `book` VALUES ('20', '谢稚柳研究', '', 'ISBN 988-7-5433-1418-6', '28.00');
INSERT INTO `book` VALUES ('21', '中国古民居观察系列·土', '中国古民居观察系列', 'ISBN 978-7-5853-1418-5', '25.00');
INSERT INTO `book` VALUES ('22', '中国古民居观察系列·木', '中国古民居观察系列', 'ISBN 978-7-4566-1418-5', '25.00');
INSERT INTO `book` VALUES ('23', '中国古民居观察系列·砖', '中国古民居观察系列', 'ISBN 978-7-5433-4562-5', '25.00');
INSERT INTO `book` VALUES ('24', '中国古民居观察系列·瓦', '中国古民居观察系列', 'ISBN 978-7-4453-1418-5', '25.00');
INSERT INTO `book` VALUES ('25', '中国古民居观察系列·石', '中国古民居观察系列', 'ISBN 978-7-5433-1418-5', '25.00');
INSERT INTO `book` VALUES ('26', '龙泉青瓷', '', 'ISBN 978-7-5423-1418-6', null);
INSERT INTO `book` VALUES ('27', '珠山瓷画', '', 'ISBN 978-7-5433-1458-6', null);
INSERT INTO `book` VALUES ('28', '中国历代服饰图考（上、下卷）', '', 'ISBN 978-7-5455-1418-6', null);
INSERT INTO `book` VALUES ('29', '人与狗的故事', '', 'ISBN 978-7-5433-1788-6', null);
INSERT INTO `book` VALUES ('30', '中国传统书法教学指要', '', 'ISBN 978-7-3353-1418-8', null);
INSERT INTO `book` VALUES ('31', '陈福彬绘画作品集', '', 'ISBN 978-7-5433-1558-6', null);
INSERT INTO `book` VALUES ('32', '我的百年飞行联队', '', 'ISBN 978-7-5854-1858-8', '35.00');
INSERT INTO `book` VALUES ('33', '永远都飞最后航班的人－陈文宽传', '', 'ISBN 978-7-7853-1418-6', null);
INSERT INTO `book` VALUES ('34', '静安文脉', '', 'ISBN 978-7-5433-8527-6', null);
INSERT INTO `book` VALUES ('35', '华夏', '', 'ISBN 978-7-8853-1418-6', null);
INSERT INTO `book` VALUES ('36', '江南民间菜', '', 'ISBN 978-7-5433-1487-5', null);
INSERT INTO `book` VALUES ('37', '时间的滋味', '', 'ISBN 978-7-5433-1588-6', null);
INSERT INTO `book` VALUES ('38', '诗歌三百首', '', 'ISBN 978-7-8555-1418-5', null);
INSERT INTO `book` VALUES ('39', '谁是英雄', '', 'ISBN 978-7-5433-1487-5', null);
INSERT INTO `book` VALUES ('40', '走向成功2014', '', 'ISBN 988-3-4562-1094-4', '15.00');
INSERT INTO `book` VALUES ('41', '灿烂在六月2014', '', 'ISBN 976-4-5641-3498-3', '22.00');
INSERT INTO `book` VALUES ('42', '2013年咬文嚼字合订本', '', 'ISBN 923-5-6373-2390-5', '30.00');
INSERT INTO `book` VALUES ('43', '2012年咬文嚼字合订本', '', 'ISBN 953-3-3487-3458-1', '30.00');
INSERT INTO `book` VALUES ('44', '2011年咬文嚼字合订本', '', 'ISBN 978-4-5487-3459-1', '30.00');
INSERT INTO `book` VALUES ('45', '2010年咬文嚼字合订本', '', 'ISBN 978-4-2389-0574-2', '30.00');
INSERT INTO `book` VALUES ('46', '2009年咬文嚼字合订本', '', 'ISBN 978-5-3465-2465-5', '50.00');
INSERT INTO `book` VALUES ('47', '2008年咬文嚼字合订本', '', 'ISBN 978-9-3459-2398-6', '50.00');
INSERT INTO `book` VALUES ('48', '测试书名', '测试丛书名', 'ISBN', null);
INSERT INTO `book` VALUES ('49', '测试书名', '测试丛书名', 'ISBN', '30.50');

-- ----------------------------
-- Table structure for `book_specs`
-- ----------------------------
DROP TABLE IF EXISTS `book_specs`;
CREATE TABLE `book_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '图书规格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_specs
-- ----------------------------
INSERT INTO `book_specs` VALUES ('1', '32开');
INSERT INTO `book_specs` VALUES ('2', '大32开');
INSERT INTO `book_specs` VALUES ('3', '16开');
INSERT INTO `book_specs` VALUES ('4', '大16开');
INSERT INTO `book_specs` VALUES ('5', '8开');
INSERT INTO `book_specs` VALUES ('6', '其他');

-- ----------------------------
-- Table structure for `chu_ku`
-- ----------------------------
DROP TABLE IF EXISTS `chu_ku`;
CREATE TABLE `chu_ku` (
  `id` varchar(255) NOT NULL COMMENT '发书编号',
  `deliver_date` varchar(255) DEFAULT NULL COMMENT '发书日期',
  `customer_id` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `book_owner_id` varchar(255) DEFAULT NULL COMMENT '货主编号',
  `book_owner_name` varchar(255) DEFAULT NULL COMMENT '货主名称',
  `deliver_man` varchar(255) DEFAULT NULL COMMENT '发货人',
  `deliver_contact_phone` varchar(255) DEFAULT NULL COMMENT '发货人电话',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `fixed_price` int(11) DEFAULT NULL COMMENT '码洋',
  `discount` decimal(3,2) DEFAULT NULL COMMENT '折扣',
  `discounted_price` varchar(255) DEFAULT NULL COMMENT '实样',
  `crate_id` varchar(255) DEFAULT NULL COMMENT '所在箱序号',
  `deliver_address` varchar(255) DEFAULT NULL COMMENT '送货地址',
  `postcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `transportation` int(11) DEFAULT NULL COMMENT '运输方式',
  `site_arrived` varchar(255) DEFAULT NULL COMMENT '到站',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_ku
-- ----------------------------
INSERT INTO `chu_ku` VALUES ('CK0001', '2014-09-13', 'KH0001', '咬嚼文字文化公司', 'HZ0001', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '600', '1.00', '600', 'ZX0001', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '1');
INSERT INTO `chu_ku` VALUES ('CK0002', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '89400', '1.00', '89400', 'ZX0002', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '42');
INSERT INTO `chu_ku` VALUES ('CK0003', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '3', '500', '15000', '1.00', '15000', 'ZX0003', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '43');
INSERT INTO `chu_ku` VALUES ('CK0004', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '3', '500', '15000', '1.00', '15000', 'ZX0004', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '44');
INSERT INTO `chu_ku` VALUES ('CK0005', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '4', '200', '6000', '1.00', '6000', 'ZX0005', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '45');
INSERT INTO `chu_ku` VALUES ('CK0006', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '560', '1.00', '560', 'ZX0006', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '11');
INSERT INTO `chu_ku` VALUES ('CK0007', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '1980', '55440', '1.00', '55440', 'ZX0007', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '11');
INSERT INTO `chu_ku` VALUES ('CK0008', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '400', '1.00', '400', 'ZX0008', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '18');
INSERT INTO `chu_ku` VALUES ('CK0009', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '1980', '39600', '1.00', '39600', 'ZX0009', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '18');
INSERT INTO `chu_ku` VALUES ('CK0010', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '5', '50', '1500', '0.50', '750', 'ZX0010', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '46');
INSERT INTO `chu_ku` VALUES ('CK0011', '2014-09-15', 'KH0001', '咬嚼文字文化公司', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '5', '50', '1500', '0.50', '750', 'ZX0011', '黄浦区', '200023', '1', '上海站', '张伟', '139XXXXXX21', '47');
INSERT INTO `chu_ku` VALUES ('CK0012', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '560', '1.00', '560', 'ZX0012', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '20');
INSERT INTO `chu_ku` VALUES ('CK0013', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '83440', '1.00', '83440', 'ZX0013', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '20');
INSERT INTO `chu_ku` VALUES ('CK0014', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '700', '1.00', '700', 'ZX0014', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '32');
INSERT INTO `chu_ku` VALUES ('CK0015', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '980', '34300', '1.00', '34300', 'ZX0015', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '32');
INSERT INTO `chu_ku` VALUES ('CK0016', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '50', '750', '1.00', '750', 'ZX0016', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '40');
INSERT INTO `chu_ku` VALUES ('CK0017', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '4950', '74250', '1.00', '74250', 'ZX0017', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '40');
INSERT INTO `chu_ku` VALUES ('CK0018', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '3000', '45000', '1.00', '45000', 'ZX0018', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '40');
INSERT INTO `chu_ku` VALUES ('CK0019', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '3000', '45000', '1.00', '45000', 'ZX0019', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '40');
INSERT INTO `chu_ku` VALUES ('CK0020', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '50', '1100', '1.00', '1100', 'ZX0020', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '41');
INSERT INTO `chu_ku` VALUES ('CK0021', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '4950', '108900', '1.00', '108900', 'ZX0021', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '41');
INSERT INTO `chu_ku` VALUES ('CK0022', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '3000', '66000', '1.00', '66000', 'ZX0022', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '41');
INSERT INTO `chu_ku` VALUES ('CK0023', '2014-09-15', 'KH0003', '远东出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '3000', '66000', '1.00', '66000', 'ZX0023', '静安区', '200012', '1', '上海站', '赵天利', '137XXXXXX25', '41');
INSERT INTO `chu_ku` VALUES ('CK0024', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '500', '1.00', '500', 'ZX0024', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '21');
INSERT INTO `chu_ku` VALUES ('CK0025', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '500', '1.00', '500', 'ZX0025', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '22');
INSERT INTO `chu_ku` VALUES ('CK0026', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '500', '1.00', '500', 'ZX0026', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '23');
INSERT INTO `chu_ku` VALUES ('CK0027', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '500', '1.00', '500', 'ZX0027', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '24');
INSERT INTO `chu_ku` VALUES ('CK0028', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '20', '500', '1.00', '500', 'ZX0028', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '25');
INSERT INTO `chu_ku` VALUES ('CK0029', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '74500', '1.00', '74500', 'ZX0029', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '21');
INSERT INTO `chu_ku` VALUES ('CK0030', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '74500', '1.00', '74500', 'ZX0030', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '22');
INSERT INTO `chu_ku` VALUES ('CK0031', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '74500', '1.00', '74500', 'ZX0031', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '23');
INSERT INTO `chu_ku` VALUES ('CK0032', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '74500', '1.00', '74500', 'ZX0032', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '24');
INSERT INTO `chu_ku` VALUES ('CK0033', '2014-09-15', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '2980', '74500', '1.00', '74500', 'ZX0033', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '25');
INSERT INTO `chu_ku` VALUES ('CK0034', '2016-01-26', 'KH0002', '文化出版社', 'HZ0002', '世纪出版发行平台', '卫东', '136XXXXX655', '1', '50', '3000', '1.00', '3000', 'ZX0034', '黄浦区', '200021', '1', '上海站', '蔡晋', '137XXXXXX32', '37');

-- ----------------------------
-- Table structure for `chu_ku_export`
-- ----------------------------
DROP TABLE IF EXISTS `chu_ku_export`;
CREATE TABLE `chu_ku_export` (
  `发书编号` varchar(255) NOT NULL COMMENT '发书编号',
  `发书日期` varchar(255) DEFAULT NULL COMMENT '发书日期',
  `客户编号` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `客户名称` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `货主编号` varchar(255) DEFAULT NULL COMMENT '货主编号',
  `货主名称` varchar(255) DEFAULT NULL COMMENT '货主名称',
  `发货人` varchar(255) DEFAULT NULL COMMENT '发货人',
  `发货人电话` varchar(255) DEFAULT NULL COMMENT '发货人电话',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `单价` float DEFAULT NULL COMMENT '单价',
  `码洋` varchar(255) DEFAULT NULL COMMENT '码洋',
  `折扣` float DEFAULT NULL COMMENT '折扣',
  `实样` varchar(255) DEFAULT NULL COMMENT '实样',
  `所在箱序号` varchar(255) DEFAULT NULL COMMENT '所在箱序号',
  `送货地址` varchar(255) DEFAULT NULL COMMENT '送货地址',
  `邮编` varchar(255) DEFAULT NULL COMMENT '邮编',
  `运输方式` varchar(255) DEFAULT NULL COMMENT '运输方式',
  `到站` varchar(255) DEFAULT NULL COMMENT '到站',
  `联系人` varchar(255) DEFAULT NULL COMMENT '联系人',
  `联系方式` varchar(255) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`发书编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_ku_export
-- ----------------------------
INSERT INTO `chu_ku_export` VALUES ('CK0001', '2014-09-13', 'KH0001', '金三顺', 'HZ0001', '佟大为', '老枪', '13788776655', '第一本书', '3', '200', '23.6', '4000', '0.9', '3600', '8', '青浦区', '200098', '公路运输', '欣欣小区', '李欣雨', '13987654321');
INSERT INTO `chu_ku_export` VALUES ('CK0002', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0003', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0004', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0005', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0006', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0007', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0008', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0009', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0010', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0011', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0012', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0013', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0014', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0015', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0016', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0017', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0018', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0019', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0020', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0021', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0022', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0023', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0024', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0025', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0026', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0027', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0028', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0029', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0030', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0031', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0032', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0033', '2014-09-15', 'KH0002', '毛伟岸', 'HZ0002', '毛毛', '李发货', '13656781234', '第二本书', '1', '200', '23.9', '3000', '0.8', '2400', '8', '黄浦区', '200097', '航空运输', '洋房区', '赵洋房', '13798765432');
INSERT INTO `chu_ku_export` VALUES ('CK0034', '2016-01-26', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '4', '400', '34.5', '3000', '0.7', '2100', 'aaa', 'aaaaa', 'aaa', '公路运输', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `chu_shen_comments`
-- ----------------------------
DROP TABLE IF EXISTS `chu_shen_comments`;
CREATE TABLE `chu_shen_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '初审意见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chu_shen_comments
-- ----------------------------
INSERT INTO `chu_shen_comments` VALUES ('1', '优良');
INSERT INTO `chu_shen_comments` VALUES ('2', '一般');
INSERT INTO `chu_shen_comments` VALUES ('3', '须修改');

-- ----------------------------
-- Table structure for `fa_xing`
-- ----------------------------
DROP TABLE IF EXISTS `fa_xing`;
CREATE TABLE `fa_xing` (
  `id` varchar(255) NOT NULL COMMENT '发行编号',
  `invoice_title` varchar(255) DEFAULT NULL COMMENT '发票名称',
  `customer_title` varchar(255) DEFAULT NULL COMMENT '客户代号',
  `invoice_address` varchar(255) DEFAULT NULL COMMENT '发票地址',
  `create_date` varchar(255) DEFAULT NULL COMMENT '开单日期',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `fixed_price` int(11) DEFAULT NULL COMMENT '码洋',
  `discount` decimal(3,2) DEFAULT NULL COMMENT '折扣',
  `warehouse_location` varchar(255) DEFAULT NULL COMMENT '库位',
  `shi_pei` varchar(255) DEFAULT NULL COMMENT '实配',
  `order_receipt` varchar(255) DEFAULT NULL COMMENT '订书依据',
  `site` varchar(255) DEFAULT NULL COMMENT '站点',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `deliver_account` varchar(255) DEFAULT NULL COMMENT '发货户名',
  `postcode` varchar(255) DEFAULT NULL COMMENT '邮编',
  `deliver_address` varchar(255) DEFAULT NULL COMMENT '发货地址',
  `bank_name` varchar(255) DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(255) DEFAULT NULL COMMENT '账号',
  `pei_shu_person` varchar(255) DEFAULT NULL COMMENT '配书',
  `fu_he_person` varchar(255) DEFAULT NULL COMMENT '复核',
  `da_bao_person` varchar(255) DEFAULT NULL COMMENT '打包',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_xing
-- ----------------------------
INSERT INTO `fa_xing` VALUES ('FX0001', '普通销售', 'KU0001', '杨浦区', '2014-03-04', '200', '6000', '0.50', 'B01042', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '接收人', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX000', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0002', '普通销售', 'KU0002', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'B01565', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX001', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0003', '普通销售', 'KU0003', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'B01744', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '陈永利', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX002', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0004', '普通销售', 'KU0004', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'A01411', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX003', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0005', '普通销售', 'KU0005', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'B01851', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX004', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0006', '普通销售', 'KU0006', '浙江金华', '2014-09-08', '300', '9000', '0.50', 'B01477', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX005', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0007', '普通销售', 'KU0007', '浙江金华', '2014-09-08', '300', '9000', '0.50', 'A01148', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX006', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0008', '普通销售', 'KU0008', '浙江金华', '2014-09-08', '300', '9000', '0.50', 'A04249', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX007', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0009', '普通销售', 'KU0009', '浙江金华', '2014-09-08', '300', '9000', '0.50', 'B45050', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX008', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0010', '普通销售', 'KU0010', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'B56051', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX009', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0011', '普通销售', 'KU0011', '浙江金华', '2014-09-08', '200', '6000', '0.50', 'B57752', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX010', '张栋梁', '卫东', '顺丰', '', '1');
INSERT INTO `fa_xing` VALUES ('FX0012', '普通销售', 'KU0012', '浙江金华', '2014-09-08', '150', '2250', '0.30', 'B57853', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX011', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0013', '普通销售', 'KU0013', '浙江金华', '2014-09-08', '200', '3000', '0.30', 'A01687', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX012', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0014', '普通销售', 'KU0014', '浙江金华', '2014-09-08', '150', '2250', '0.30', 'B01046', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX013', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0015', '普通销售', 'KU0015', '浙江金华', '2014-09-08', '150', '2250', '0.30', 'D01056', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX014', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0016', '普通销售', 'KU0016', '浙江金华', '2014-09-08', '200', '3000', '0.30', 'B45057', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX015', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0017', '普通销售', 'KU0017', '浙江金华', '2014-09-08', '300', '4500', '0.30', 'B01058', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX016', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0018', '普通销售', 'KU0018', '浙江金华', '2014-09-08', '300', '4500', '0.30', 'B01059', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX017', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0019', '普通销售', 'KU0019', '浙江金华', '2014-09-08', '300', '4500', '0.30', 'B01060', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX018', '张栋梁', '卫东', '顺丰', '', '40');
INSERT INTO `fa_xing` VALUES ('FX0020', '普通销售', 'KU0020', '浙江金华', '2014-09-08', '200', '4400', '0.45', 'D01061', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX019', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0021', '普通销售', 'KU0021', '浙江金华', '2014-09-08', '200', '4400', '0.45', 'B01062', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX020', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0022', '普通销售', 'KU0022', '浙江金华', '2014-09-08', '300', '6600', '0.45', 'B01063', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX021', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0023', '普通销售', 'KU0023', '浙江金华', '2014-09-08', '300', '6600', '0.45', 'B01564', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX022', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0024', '普通销售', 'KU0024', '浙江金华', '2014-09-08', '300', '6600', '0.45', 'D01065', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX023', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0025', '普通销售', 'KU0025', '浙江金华', '2014-09-08', '300', '6600', '0.45', 'D01066', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX024', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0026', '普通销售', 'KU0026', '浙江金华', '2014-09-08', '200', '4400', '0.45', 'B01067', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX025', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0027', '普通销售', 'KU0027', '浙江金华', '2014-09-08', '150', '3300', '0.45', 'B04558', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX026', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0028', '普通销售', 'KU0028', '浙江金华', '2014-09-08', '150', '3300', '0.45', 'B01069', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX027', '张栋梁', '卫东', '顺丰', '', '41');
INSERT INTO `fa_xing` VALUES ('FX0029', '普通销售', 'KU0029', '浙江金华', '2014-09-08', '200', '4000', '0.45', 'B01070', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX028', '张栋梁', '卫东', '顺丰', '', '18');
INSERT INTO `fa_xing` VALUES ('FX0030', '普通销售', 'KU0030', '浙江金华', '2014-09-08', '200', '4000', '0.45', 'B55871', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX029', '张栋梁', '卫东', '顺丰', '', '18');
INSERT INTO `fa_xing` VALUES ('FX0031', '普通销售', 'KU0031', '浙江金华', '2014-09-08', '150', '3000', '0.45', 'B01072', '150', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX030', '张栋梁', '卫东', '顺丰', '', '18');
INSERT INTO `fa_xing` VALUES ('FX0032', '普通销售', 'KU0032', '浙江金华', '2014-09-08', '200', '4000', '0.45', 'B01073', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX031', '张栋梁', '卫东', '顺丰', '', '18');
INSERT INTO `fa_xing` VALUES ('FX0033', '普通销售', 'KU0033', '浙江金华', '2014-09-08', '300', '8400', '0.45', 'B01074', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX032', '张栋梁', '卫东', '顺丰', '', '11');
INSERT INTO `fa_xing` VALUES ('FX0034', '普通销售', 'KU0034', '浙江金华', '2014-09-08', '300', '8400', '0.45', 'B01075', '300', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX033', '张栋梁', '卫东', '顺丰', '', '11');
INSERT INTO `fa_xing` VALUES ('FX0035', '普通销售', 'KU0035', '江西南昌', '2014-09-09', '200', '5600', '0.45', 'B01076', '200', '订书单', '上海站', '金礼仪', '134XXXXXX56', '张金华', '200345', '上海', '中国招商银行', '982XXXXXXXXXXX034', '张栋梁', '卫东', '顺丰', '', '11');

-- ----------------------------
-- Table structure for `fa_xing_export`
-- ----------------------------
DROP TABLE IF EXISTS `fa_xing_export`;
CREATE TABLE `fa_xing_export` (
  `发行编号` varchar(255) NOT NULL COMMENT '发行编号',
  `发票名称` varchar(255) DEFAULT NULL COMMENT '发票名称',
  `客户代号` varchar(255) DEFAULT NULL COMMENT '客户代号',
  `发票地址` varchar(255) DEFAULT NULL COMMENT '发票地址',
  `开单日期` varchar(255) DEFAULT NULL COMMENT '开单日期',
  `书号` varchar(255) DEFAULT NULL COMMENT '书号',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `单价` float DEFAULT NULL COMMENT '单价',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `码洋` int(11) DEFAULT NULL COMMENT '码洋',
  `折扣` float DEFAULT NULL COMMENT '折扣',
  `库位` varchar(255) DEFAULT NULL COMMENT '库位',
  `实配` varchar(255) DEFAULT NULL COMMENT '实配',
  `订书依据` varchar(255) DEFAULT NULL COMMENT '订书依据',
  `站点` varchar(255) DEFAULT NULL COMMENT '站点',
  `联系人` varchar(255) DEFAULT NULL COMMENT '联系人',
  `联系电话` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `发货户名` varchar(255) DEFAULT NULL COMMENT '发货户名',
  `邮编` varchar(255) DEFAULT NULL COMMENT '邮编',
  `发货地址` varchar(255) DEFAULT NULL COMMENT '发货地址',
  `开户行` varchar(255) DEFAULT NULL COMMENT '开户行',
  `账号` varchar(255) DEFAULT NULL COMMENT '账号',
  `配书` varchar(255) DEFAULT NULL COMMENT '配书',
  `复核` varchar(255) DEFAULT NULL COMMENT '复核',
  `打包` varchar(255) DEFAULT NULL COMMENT '打包',
  `备注` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`发行编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_xing_export
-- ----------------------------
INSERT INTO `fa_xing_export` VALUES ('FX0001', '发票1', '客户代号', '杨浦区', '2014-03-04', 'B0001', '第一本书', '23.5', '300', '3400', '0.9', '第一库9号位', '实配', '详细的订书依据', '农村站', '皇太极', '13459876456', '接收人', '200345', '虹口区', '中国建设银行', '1234345', '配书信息', '复核信息', '打包信息', '这里是备注。');
INSERT INTO `fa_xing_export` VALUES ('FX0002', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0003', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0004', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0005', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0006', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0007', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0008', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0009', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0010', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0011', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0012', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0013', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0014', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0015', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0016', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0017', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0018', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0019', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0020', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0021', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0022', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0023', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0024', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0025', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0026', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0027', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0028', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0029', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0030', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0031', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0032', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0033', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0034', '发票2', '代号是什么鬼', '浙江金华', '2014-09-08', 'B0002', '第二本书', '25.2', '300', '3500', '0.8', '第二库位4号位', '实配信息', '订书依据又是什么鬼', '金华站', '张金华', '13998765678', '张金华下家', '233454', '浙江宁波', '招商银行', '853928764', '配书什么鬼', '复核什么鬼', '打包什么鬼', '备注什么鬼');
INSERT INTO `fa_xing_export` VALUES ('FX0035', 'aaa', 'aaa', 'aaa', '2014-09-09', 'aaa', 'aaa', '45.7', '300', '4567', '8.8', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaaaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `gao_jian_source`
-- ----------------------------
DROP TABLE IF EXISTS `gao_jian_source`;
CREATE TABLE `gao_jian_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '稿件来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gao_jian_source
-- ----------------------------
INSERT INTO `gao_jian_source` VALUES ('1', '自发投稿');
INSERT INTO `gao_jian_source` VALUES ('2', '编辑组稿');
INSERT INTO `gao_jian_source` VALUES ('3', '公司项目');
INSERT INTO `gao_jian_source` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `createDate` datetime DEFAULT NULL COMMENT '创建日期',
  `content` varchar(8000) DEFAULT NULL COMMENT '日志内容',
  `operation` varchar(250) DEFAULT NULL COMMENT '用户所做的操作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '89757', '2016-04-07 17:29:51', '更新操作被执行 - update[参数1，类型:XuanTi，值:(getId:XT0047)(getType:文化读物)(getYear:2000)(getSource:1)(getStatus:1)(getFirst_comments:1)(getChuShenComments:null)(getThe_book_id:11)(getBook_name:倪顺生紫砂作品集)(getSub_book_name:)(getISBN:ISBN 975-7-5533-1418-6)(getSeason:1)(getDepartment:tt)(getOriginator:t)(getGaoJianSource:null)(getXuanTiStatus:null)]', '更新');

-- ----------------------------
-- Table structure for `print_quality`
-- ----------------------------
DROP TABLE IF EXISTS `print_quality`;
CREATE TABLE `print_quality` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '印刷质量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of print_quality
-- ----------------------------
INSERT INTO `print_quality` VALUES ('1', '优良');
INSERT INTO `print_quality` VALUES ('2', '一般');
INSERT INTO `print_quality` VALUES ('3', '较差');
INSERT INTO `print_quality` VALUES ('4', '需返工');

-- ----------------------------
-- Table structure for `print_status`
-- ----------------------------
DROP TABLE IF EXISTS `print_status`;
CREATE TABLE `print_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '印刷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of print_status
-- ----------------------------
INSERT INTO `print_status` VALUES ('1', '已下单');
INSERT INTO `print_status` VALUES ('2', '印刷中');
INSERT INTO `print_status` VALUES ('3', '装订中');
INSERT INTO `print_status` VALUES ('4', '施工完毕');

-- ----------------------------
-- Table structure for `ru_ku`
-- ----------------------------
DROP TABLE IF EXISTS `ru_ku`;
CREATE TABLE `ru_ku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `ru_ku_date` varchar(255) DEFAULT NULL COMMENT '入库时间',
  `order_id` varchar(255) DEFAULT NULL COMMENT '单号',
  `order_create_date` varchar(255) DEFAULT NULL COMMENT '开单时间',
  `publish_company` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `deliver_company` varchar(255) DEFAULT NULL COMMENT '送书单位',
  `receive_company` varchar(255) DEFAULT NULL COMMENT '收书单位',
  `store_center` varchar(255) DEFAULT NULL COMMENT '储运中心',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `quantity` int(11) DEFAULT NULL COMMENT '数量',
  `fixed_price` int(11) DEFAULT NULL COMMENT '码洋',
  `check_man` varchar(255) DEFAULT NULL COMMENT '验书人',
  `receive_man` varchar(255) DEFAULT NULL COMMENT '收书人',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ru_ku
-- ----------------------------
INSERT INTO `ru_ku` VALUES ('1', '2014-06-06', 'AD0001', '2014-06-13', '咬嚼文字文化公司', '春秋印刷厂', '咬嚼文字文化公司', '世纪物流', '1', '20', '600', '张伟', '张伟', '', '1');
INSERT INTO `ru_ku` VALUES ('2', '2014-07-07', 'AD0002', '2014-07-13', '咬嚼文字文化公司', '春秋印刷厂', '咬嚼文字文化公司', '世纪物流', '1', '2980', '89400', '张伟', '张伟', '', '42');
INSERT INTO `ru_ku` VALUES ('3', '2014-07-07', 'AD0003', '2014-07-13', '咬嚼文字文化公司', '春秋印刷厂', '咬嚼文字文化公司', '世纪物流', '3', '500', '15000', '张伟', '张伟', '', '43');
INSERT INTO `ru_ku` VALUES ('4', '2014-07-07', 'AD0004', '2014-07-13', '咬嚼文字文化公司', '春秋印刷厂', '咬嚼文字文化公司', '世纪物流', '3', '500', '15000', '张伟', '张伟', '', '44');
INSERT INTO `ru_ku` VALUES ('5', '2014-07-07', 'AD0005', '2014-07-13', '咬嚼文字文化公司', '春秋印刷厂', '咬嚼文字文化公司', '世纪物流', '4', '200', '6000', '张伟', '张伟', '', '45');
INSERT INTO `ru_ku` VALUES ('6', '2014-07-07', 'AD0006', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '560', '蔡晋', '蔡晋', '', '11');
INSERT INTO `ru_ku` VALUES ('7', '2014-07-07', 'AD0007', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '1980', '55440', '蔡晋', '蔡晋', '', '11');
INSERT INTO `ru_ku` VALUES ('8', '2014-07-07', 'AD0008', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '400', '蔡晋', '蔡晋', '', '18');
INSERT INTO `ru_ku` VALUES ('9', '2014-07-07', 'AD0009', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '1980', '39600', '蔡晋', '蔡晋', '', '18');
INSERT INTO `ru_ku` VALUES ('10', '2014-07-07', 'AD0010', '2014-07-13', '咬嚼文字文化公司', '大一印刷厂', '咬嚼文字文化公司', '世纪物流', '5', '50', '1500', '张伟', '张伟', '', '46');
INSERT INTO `ru_ku` VALUES ('11', '2014-07-07', 'AD0011', '2014-07-13', '咬嚼文字文化公司', '大一印刷厂', '咬嚼文字文化公司', '世纪物流', '5', '50', '1500', '张伟', '张伟', '', '47');
INSERT INTO `ru_ku` VALUES ('12', '2014-07-07', 'AD0012', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '560', '蔡晋', '蔡晋', '', '20');
INSERT INTO `ru_ku` VALUES ('13', '2014-07-07', 'AD0013', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '2980', '83440', '蔡晋', '蔡晋', '', '20');
INSERT INTO `ru_ku` VALUES ('14', '2014-07-07', 'AD0014', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '700', '蔡晋', '蔡晋', '', '32');
INSERT INTO `ru_ku` VALUES ('15', '2014-07-07', 'AD0015', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '980', '34300', '蔡晋', '蔡晋', '', '32');
INSERT INTO `ru_ku` VALUES ('16', '2014-07-07', 'AD0016', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '50', '750', '赵天利', '赵天利', '', '40');
INSERT INTO `ru_ku` VALUES ('17', '2014-07-07', 'AD0017', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '4950', '74250', '赵天利', '赵天利', '', '40');
INSERT INTO `ru_ku` VALUES ('18', '2014-07-07', 'AD0018', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '3000', '45000', '赵天利', '赵天利', '', '40');
INSERT INTO `ru_ku` VALUES ('19', '2014-07-07', 'AD0019', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '3000', '45000', '赵天利', '赵天利', '', '40');
INSERT INTO `ru_ku` VALUES ('20', '2014-07-07', 'AD0020', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '50', '1100', '赵天利', '赵天利', '', '41');
INSERT INTO `ru_ku` VALUES ('21', '2014-07-07', 'AD0021', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '4950', '108900', '赵天利', '赵天利', '', '41');
INSERT INTO `ru_ku` VALUES ('22', '2014-07-07', 'AD0022', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '3000', '66000', '赵天利', '赵天利', '', '41');
INSERT INTO `ru_ku` VALUES ('23', '2014-07-07', 'AD0023', '2014-07-13', '远东出版社', '大一印刷厂', '远东出版社', '世纪物流', '1', '3000', '66000', '赵天利', '赵天利', '', '41');
INSERT INTO `ru_ku` VALUES ('24', '2014-07-07', 'AD0024', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '500', '蔡晋', '蔡晋', '', '21');
INSERT INTO `ru_ku` VALUES ('25', '2014-07-07', 'AD0025', '2014-07-13', '文化出版社', '大一印刷厂', '文化出版社', '世纪物流', '1', '20', '500', '蔡晋', '蔡晋', '', '22');
INSERT INTO `ru_ku` VALUES ('26', '2014-07-07', 'AD0026', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '20', '500', '蔡晋', '蔡晋', '', '23');
INSERT INTO `ru_ku` VALUES ('27', '2014-07-07', 'AD0027', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '20', '500', '蔡晋', '蔡晋', '', '24');
INSERT INTO `ru_ku` VALUES ('28', '2014-07-07', 'AD0028', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '20', '500', '蔡晋', '蔡晋', '', '25');
INSERT INTO `ru_ku` VALUES ('29', '2014-07-07', 'AD0029', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '2980', '74500', '蔡晋', '蔡晋', '', '21');
INSERT INTO `ru_ku` VALUES ('30', '2014-07-07', 'AD0030', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '2980', '74500', '蔡晋', '蔡晋', '', '22');
INSERT INTO `ru_ku` VALUES ('31', '2014-07-07', 'AD0031', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '2980', '74500', '蔡晋', '蔡晋', '', '23');
INSERT INTO `ru_ku` VALUES ('32', '2014-07-07', 'AD0032', '2014-07-13', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '2980', '74500', '蔡晋', '蔡晋', '', '24');
INSERT INTO `ru_ku` VALUES ('33', '2016-01-25', 'AD0033', '2016-01-25', '文化出版社', '实际印刷厂', '文化出版社', '世纪物流', '1', '2980', '74500', '蔡晋', '蔡晋', '', '25');

-- ----------------------------
-- Table structure for `ru_ku_export`
-- ----------------------------
DROP TABLE IF EXISTS `ru_ku_export`;
CREATE TABLE `ru_ku_export` (
  `序号` int(11) NOT NULL DEFAULT '0' COMMENT '序号',
  `入库时间` varchar(255) DEFAULT NULL COMMENT '入库时间',
  `单号` varchar(255) DEFAULT NULL COMMENT '单号',
  `开单时间` varchar(255) DEFAULT NULL COMMENT '开单时间',
  `出版单位` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `送书单位` varchar(255) DEFAULT NULL COMMENT '送书单位',
  `收书单位` varchar(255) DEFAULT NULL COMMENT '收书单位',
  `储运中心` varchar(255) DEFAULT NULL COMMENT '储运中心',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `数量` int(11) DEFAULT NULL COMMENT '数量',
  `单价` float DEFAULT NULL COMMENT '单价',
  `码洋` int(11) DEFAULT NULL COMMENT '码洋',
  `验书人` varchar(255) DEFAULT NULL COMMENT '验书人',
  `收书人` varchar(255) DEFAULT NULL COMMENT '收书人',
  `备注` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`序号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ru_ku_export
-- ----------------------------
INSERT INTO `ru_ku_export` VALUES ('1', '2014-06-06', 'od0001', '2014-06-13', '出版单位', '松鼠单位', '大收书单位', '很大的储运中心', '第一本书', '2', '100', '45.7', '30000', '石破天', '破天石', '这里是备注。');
INSERT INTO `ru_ku_export` VALUES ('2', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('3', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('4', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('5', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('6', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('7', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('8', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('9', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('10', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('11', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('12', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('13', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('14', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('15', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('16', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('17', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('18', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('19', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('20', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('21', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('22', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('23', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('24', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('25', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('26', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('27', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('28', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('29', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('30', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('31', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('32', '2014-07-07', 'od8765', '2014-07-13', '红星出版社', '明月送书单位', '至尊收书单位', '大型储运中心', '第二本书', '4', '100', '76.2', '50000', '柳如是', '百晓生', '备注是没有的。');
INSERT INTO `ru_ku_export` VALUES ('33', '2016-01-25', 'aaa', '2016-01-25', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '2', '300', '34.5', '20000', 'aaa', 'aaa', 'aaa');

-- ----------------------------
-- Table structure for `transportation`
-- ----------------------------
DROP TABLE IF EXISTS `transportation`;
CREATE TABLE `transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '运输方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transportation
-- ----------------------------
INSERT INTO `transportation` VALUES ('1', '公路运输');
INSERT INTO `transportation` VALUES ('2', '航空运输');
INSERT INTO `transportation` VALUES ('3', '其他');

-- ----------------------------
-- Table structure for `xuan_ti`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti`;
CREATE TABLE `xuan_ti` (
  `id` varchar(255) NOT NULL COMMENT '选题编号',
  `type` varchar(255) DEFAULT '' COMMENT '选题类型',
  `year` varchar(255) DEFAULT '' COMMENT '选题年度',
  `season` int(11) DEFAULT NULL COMMENT '选题季度',
  `department` varchar(255) DEFAULT '' COMMENT '部门',
  `originator` varchar(255) DEFAULT '' COMMENT '申报人',
  `source` int(11) DEFAULT NULL COMMENT '稿件来源',
  `first_comments` int(11) DEFAULT NULL COMMENT '初审意见',
  `status` int(11) DEFAULT NULL COMMENT '选题状态',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti
-- ----------------------------
INSERT INTO `xuan_ti` VALUES ('XT0001', '语言文字', '2001', '2', '图书编辑部', '熊华', '1', '1', '1', '1');
INSERT INTO `xuan_ti` VALUES ('XT0002', '职成教教材', '2013', '1', '图书编辑部', '熊华', '1', '1', '1', '2');
INSERT INTO `xuan_ti` VALUES ('XT0003', '职成教教材', '2000', '1', '图书编辑部', '熊华', '1', '1', '1', '3');
INSERT INTO `xuan_ti` VALUES ('XT0004', '职成教教材', '2013', '1', '图书编辑部', '熊华', '3', '3', '3', '4');
INSERT INTO `xuan_ti` VALUES ('XT0005', '文化读物', '2013', '1', '图书编辑部', '熊华', '3', '3', '3', '5');
INSERT INTO `xuan_ti` VALUES ('XT0006', '文化读物', '2013', '1', '图书编辑部', '熊华', '3', '3', '3', '6');
INSERT INTO `xuan_ti` VALUES ('XT0007', '科普读物', '2013', '1', '图书编辑部', '熊华', '1', '1', '1', '7');
INSERT INTO `xuan_ti` VALUES ('XT0008', '科普读物', '2013', '1', '图书编辑部', '熊华', '1', '1', '1', '8');
INSERT INTO `xuan_ti` VALUES ('XT0009', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '3', '9');
INSERT INTO `xuan_ti` VALUES ('XT0010', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '3', '10');
INSERT INTO `xuan_ti` VALUES ('XT0011', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '3', '11');
INSERT INTO `xuan_ti` VALUES ('XT0012', '教育理论与教学研究', '2013', '2', '图书编辑部', '金峥嵘', '3', '2', '3', '12');
INSERT INTO `xuan_ti` VALUES ('XT0013', '教育理论与教学研究', '2013', '2', '图书编辑部', '金峥嵘', '3', '2', '3', '13');
INSERT INTO `xuan_ti` VALUES ('XT0014', '文化艺术研究', '2013', '2', '图书编辑部', '金峥嵘', '3', '2', '2', '14');
INSERT INTO `xuan_ti` VALUES ('XT0015', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '2', '2', '15');
INSERT INTO `xuan_ti` VALUES ('XT0016', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '2', '16');
INSERT INTO `xuan_ti` VALUES ('XT0017', '文化读物', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '2', '17');
INSERT INTO `xuan_ti` VALUES ('XT0018', '中国文学作品', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '3', '18');
INSERT INTO `xuan_ti` VALUES ('XT0019', '美术研究', '2013', '2', '图书编辑部', '金峥嵘', '3', '3', '3', '19');
INSERT INTO `xuan_ti` VALUES ('XT0020', '文化艺术研究', '2013', '3', '图书编辑部', '金峥嵘', '3', '3', '3', '20');
INSERT INTO `xuan_ti` VALUES ('XT0021', '建筑', '2013', '3', '图书编辑部', '金峥嵘', '3', '1', '3', '21');
INSERT INTO `xuan_ti` VALUES ('XT0022', '建筑', '2013', '3', '图书编辑部', '金峥嵘', '3', '1', '3', '22');
INSERT INTO `xuan_ti` VALUES ('XT0023', '建筑', '2013', '3', '图书编辑部', '金峥嵘', '3', '3', '2', '23');
INSERT INTO `xuan_ti` VALUES ('XT0024', '建筑', '2013', '3', '图书编辑部', '金峥嵘', '4', '3', '3', '24');
INSERT INTO `xuan_ti` VALUES ('XT0025', '建筑', '2013', '3', '图书编辑部', '金峥嵘', '3', '3', '2', '25');
INSERT INTO `xuan_ti` VALUES ('XT0026', '文化艺术研究', '2013', '3', '图书编辑部', '金峥嵘', '1', '3', '3', '26');
INSERT INTO `xuan_ti` VALUES ('XT0027', '文化艺术研究', '2013', '3', '图书编辑部', '金峥嵘', '3', '3', '3', '27');
INSERT INTO `xuan_ti` VALUES ('XT0028', '文化艺术研究', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '28');
INSERT INTO `xuan_ti` VALUES ('XT0029', '中国文学作品', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '29');
INSERT INTO `xuan_ti` VALUES ('XT0030', '生活休闲', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '30');
INSERT INTO `xuan_ti` VALUES ('XT0031', '文化读物', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '31');
INSERT INTO `xuan_ti` VALUES ('XT0032', '科普读物', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '32');
INSERT INTO `xuan_ti` VALUES ('XT0033', '人物传记', '2013', '4', '图书编辑部', '金峥嵘', '3', '3', '3', '33');
INSERT INTO `xuan_ti` VALUES ('XT0034', '历史人文普及读物', '2013', '4', '图书编辑部', '黄慧', '3', '3', '3', '34');
INSERT INTO `xuan_ti` VALUES ('XT0035', '历史人文普及读物', '2013', '4', '图书编辑部', '黄慧', '2', '1', '3', '35');
INSERT INTO `xuan_ti` VALUES ('XT0036', '生活休闲', '2013', '4', '图书编辑部', '黄慧', '1', '1', '1', '36');
INSERT INTO `xuan_ti` VALUES ('XT0037', '生活休闲', '2013', '4', '图书编辑部', '黄慧', '4', '1', '1', '37');
INSERT INTO `xuan_ti` VALUES ('XT0038', '历史人文普及读物', '2013', '4', '图书编辑部', '黄慧', '1', '1', '1', '38');
INSERT INTO `xuan_ti` VALUES ('XT0039', '语言文字', '2013', '2', '图书编辑部', '刘开', '1', '1', '1', '2');
INSERT INTO `xuan_ti` VALUES ('XT0040', '语言文字', '2013', '2', '图书编辑部', '刘开', '1', '1', '1', '2');
INSERT INTO `xuan_ti` VALUES ('XT0041', '语言文字', '2013', '2', '图书编辑部', '刘开', '1', '1', '1', '2');
INSERT INTO `xuan_ti` VALUES ('XT0042', '1', '2000', '1', '1', '1', '1', '1', '1', '20');
INSERT INTO `xuan_ti` VALUES ('XT0043', '1', '2000', '1', '2', '2', '1', '1', '1', '19');
INSERT INTO `xuan_ti` VALUES ('XT0044', '2', '2000', '1', '3', '4', '1', '1', '1', '23');
INSERT INTO `xuan_ti` VALUES ('XT0045', '4', '2000', '1', '5', '6', '1', '1', '1', '24');
INSERT INTO `xuan_ti` VALUES ('XT0046', '语言文字', '2013', '2', '图书编辑部', '刘开', '1', '1', '1', '2');
INSERT INTO `xuan_ti` VALUES ('XT0047', '文化读物', '2000', '1', 'tt', 't', '1', '1', '1', '11');
INSERT INTO `xuan_ti` VALUES ('XT0048', '语言文字', '2000', '1', '图书编辑部', '熊华', '1', '1', '1', '23');
INSERT INTO `xuan_ti` VALUES ('XT0049', '语言文字', '2000', '1', '图书编辑部', '熊华', '1', '1', '1', '21');
INSERT INTO `xuan_ti` VALUES ('XT0050', '语言文字', '2000', '1', '图书编辑部', '熊华', '1', '1', '1', '6');
INSERT INTO `xuan_ti` VALUES ('XT0051', '语言文字51', '2000', '1', '图书编辑部51', '熊华', '1', '1', '1', '23');
INSERT INTO `xuan_ti` VALUES ('XT0052', '语言文字52', '2000', '1', '图书编辑部52', '熊华', '1', '1', '1', '20');

-- ----------------------------
-- Table structure for `xuan_ti_export`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti_export`;
CREATE TABLE `xuan_ti_export` (
  `选题编号` varchar(255) NOT NULL COMMENT '选题编号',
  `选题类型` varchar(255) DEFAULT NULL COMMENT '选题类型',
  `选题年度` varchar(255) DEFAULT NULL COMMENT '选题年度',
  `选题季度` int(11) DEFAULT NULL COMMENT '选题季度',
  `书名` varchar(255) DEFAULT NULL COMMENT '书名',
  `丛书名` varchar(255) DEFAULT NULL COMMENT '丛书名',
  `部门` varchar(255) DEFAULT NULL COMMENT '部门',
  `申报人` varchar(255) DEFAULT NULL COMMENT '申报人',
  `稿件来源` varchar(255) DEFAULT NULL COMMENT '稿件来源',
  `初审意见` varchar(255) DEFAULT NULL COMMENT '初审意见',
  `选题状态` varchar(255) DEFAULT NULL COMMENT '选题状态',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  PRIMARY KEY (`选题编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti_export
-- ----------------------------
INSERT INTO `xuan_ti_export` VALUES ('XT0001', '论文', '2000', '2', '生死疲劳', '无', '疲劳部门', '李逍遥', '自发投稿', '优良', '待审核', 'isbn9876');
INSERT INTO `xuan_ti_export` VALUES ('XT0002', '杂文', '2014', '3', '人生苦短', '', '人生组', '赵钱孙', '自发投稿', '优良', '待审核', 'isbn12345');
INSERT INTO `xuan_ti_export` VALUES ('XT0003', '美术', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0004', '散文', '2013', '3', '倚天屠龙记', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0005', '论文', '2013', '3', '一生所爱', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0006', '论文', '2014', '3', '神雕侠侣', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0007', '论文', '2013', '3', '青苹果乐园', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0008', '论文', '2013', '1', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '优良', '待审核', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0009', '理论教学', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', '');
INSERT INTO `xuan_ti_export` VALUES ('XT0010', '论文', '2013', '3', '左手右手', '丛书', '高能部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0011', '论文', '2013', '3', '射雕英雄传', '丛书', '高端部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0012', '论文', '2013', '3', '射雕英雄传', '丛书', '并没有部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn45245');
INSERT INTO `xuan_ti_export` VALUES ('XT0013', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0014', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0015', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0016', '论文', '2002', '3', '张飞吃血', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn9945');
INSERT INTO `xuan_ti_export` VALUES ('XT0017', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0018', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0019', '论文', '2003', '3', '英雄联盟', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0020', '论文', '2005', '3', '生死狙击', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0021', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '优良', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0022', '论文', '2012', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '优良', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0023', '论文', '2002', '3', '暴力摩托', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0024', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '其他', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0025', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0026', '论文', '2010', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '自发投稿', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0027', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0028', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0029', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0030', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0031', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0032', '论文', '2013', '3', '射雕英雄传', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0033', '论文', '2013', '3', '射雕英雄传1', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0034', '论文', '2013', '3', '射雕英雄传4', '丛书', '高效部门', '王重阳', '公司项目', '须修改', '未通过', 'isbn1245');
INSERT INTO `xuan_ti_export` VALUES ('XT0035', '论文', '2001', '1', '小李飞刀', '李寻欢的故事', '李园', '刘某某', '编辑组稿', '优良', '未通过', 'isbn1222');
INSERT INTO `xuan_ti_export` VALUES ('XT0036', '论文', '2001', '2', '红尘旧梦', '旧梦', '虚空部门', '14K虚空', '自发投稿', '优良', '待审核', 'isbn11');
INSERT INTO `xuan_ti_export` VALUES ('XT0037', '论文', '2001', '2', '不想玩了', '其实想玩', '三国之刃', '灰太狼', '其他', '优良', '待审核', 'isbn111');
INSERT INTO `xuan_ti_export` VALUES ('XT0038', '论文', '2016', '3', '诗歌三百首', '无', '图书', '哇哈哈', '自发投稿', '优良', '待审核', '');

-- ----------------------------
-- Table structure for `xuan_ti_status`
-- ----------------------------
DROP TABLE IF EXISTS `xuan_ti_status`;
CREATE TABLE `xuan_ti_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` varchar(255) DEFAULT NULL COMMENT '选题状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuan_ti_status
-- ----------------------------
INSERT INTO `xuan_ti_status` VALUES ('1', '待审核');
INSERT INTO `xuan_ti_status` VALUES ('2', '已通过');
INSERT INTO `xuan_ti_status` VALUES ('3', '未通过');

-- ----------------------------
-- Table structure for `yin_wu`
-- ----------------------------
DROP TABLE IF EXISTS `yin_wu`;
CREATE TABLE `yin_wu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '印务编号',
  `start_date` varchar(255) DEFAULT NULL COMMENT '起始日期',
  `end_date` varchar(255) DEFAULT NULL COMMENT '终止日期',
  `publish_company` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `print_company` varchar(255) DEFAULT NULL COMMENT '印刷单位',
  `book_specs` int(11) DEFAULT NULL COMMENT '图书规格',
  `yin_zhang` int(11) DEFAULT NULL COMMENT '印章',
  `revision` int(11) DEFAULT NULL COMMENT '版次',
  `print_quantity` int(11) DEFAULT NULL COMMENT '印刷数',
  `ze_ren_editor` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `ze_ren_department` varchar(255) DEFAULT NULL COMMENT '责任部门',
  `print_status` int(11) DEFAULT NULL COMMENT '印刷状态',
  `print_quality` int(11) DEFAULT NULL COMMENT '印刷质量',
  `the_book_id` int(11) NOT NULL COMMENT '书编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yin_wu
-- ----------------------------
INSERT INTO `yin_wu` VALUES ('1', '2014-03-14', '2014-04-14', '咬嚼文字文化公司', '上海印刷有限公司', '1', '12', '1', '5000', '张晋', '图书印制部门', '1', '1', '1');
INSERT INTO `yin_wu` VALUES ('2', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '3', '7', '1', '2000', '张晋', '图书印制部门', '2', '2', '2');
INSERT INTO `yin_wu` VALUES ('3', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '3', '7', '1', '2000', '张晋', '图书印制部门', '1', '2', '3');
INSERT INTO `yin_wu` VALUES ('4', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '3', '7', '3', '2000', '张晋', '图书印制部门', '2', '4', '4');
INSERT INTO `yin_wu` VALUES ('5', '2014-05-14', '2014-05-30', '文化出版社', '上海印刷有限公司', '2', '9', '3', '2000', '李晨', '李晨', '2', '2', '5');
INSERT INTO `yin_wu` VALUES ('6', '2014-05-23', '2014-06-23', '文化出版社', '上海大诚印刷有限公司', '4', '9', '4', '2000', '张晋', '图书印制部门', '2', '4', '6');
INSERT INTO `yin_wu` VALUES ('7', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '4', '7', '1', '2000', '张晋', '图书印制部门', '2', '2', '7');
INSERT INTO `yin_wu` VALUES ('8', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '2', '5', '1', '2000', '张晋', '图书印制部门', '2', '2', '8');
INSERT INTO `yin_wu` VALUES ('9', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '1', '6', '1', '3000', '张晋', '图书印制部门', '1', '2', '9');
INSERT INTO `yin_wu` VALUES ('10', '2014-05-23', '2014-06-23', '咬嚼文字文化公司', '上海必好印刷有限公司', '1', '6', '1', '3000', '李晨', '图书印制部门', '2', '2', '10');
INSERT INTO `yin_wu` VALUES ('11', '2014-05-23', '2014-06-23', '咬嚼文字文化公司', '上海中正印刷有限公司', '2', '8', '5', '2000', '李晨', '图书印制部门', '2', '2', '11');
INSERT INTO `yin_wu` VALUES ('12', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '2', '8', '5', '2000', '李晨', '图书印制部门', '2', '2', '12');
INSERT INTO `yin_wu` VALUES ('13', '2014-05-23', '2014-06-23', '文化出版社', '上海大诚印刷有限公司', '2', '8', '1', '2000', '张晋', '图书印制部门', '4', '3', '13');
INSERT INTO `yin_wu` VALUES ('14', '2014-05-23', '2014-06-23', '文化出版社', '上海大诚印刷有限公司', '2', '9', '1', '2000', '李晨', '图书印制部门', '2', '3', '14');
INSERT INTO `yin_wu` VALUES ('15', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '2', '5', '1', '2000', '李晨', '图书印制部门', '4', '3', '15');
INSERT INTO `yin_wu` VALUES ('16', '2014-05-23', '2014-06-23', '远东出版社', '上海必好印刷有限公司', '2', '5', '1', '2000', '李晨', '图书印制部门', '2', '2', '16');
INSERT INTO `yin_wu` VALUES ('17', '2014-05-23', '2014-06-23', '远东出版社', '上海中正印刷有限公司', '2', '5', '1', '2000', '李晨', '图书印制部门', '4', '3', '17');
INSERT INTO `yin_wu` VALUES ('18', '2014-05-23', '2014-06-23', '远东出版社', '上海必好印刷有限公司', '2', '9', '1', '2000', '李晨', '图书印制部门', '2', '2', '18');
INSERT INTO `yin_wu` VALUES ('19', '2014-05-23', '2014-06-23', '远东出版社', '上海印刷有限公司', '2', '9', '1', '2000', '李晨', '图书印制部门', '3', '3', '19');
INSERT INTO `yin_wu` VALUES ('20', '2014-05-23', '2014-06-23', '远东出版社', '上海大诚印刷有限公司', '2', '7', '1', '2000', '李晨', '图书印制部门', '2', '2', '20');
INSERT INTO `yin_wu` VALUES ('21', '2014-05-23', '2014-06-23', '远东出版社', '上海中正印刷有限公司', '3', '10', '1', '3000', '李晨', '图书印制部门', '3', '3', '21');
INSERT INTO `yin_wu` VALUES ('22', '2014-05-23', '2014-06-23', '远东出版社', '上海大诚印刷有限公司', '3', '9', '1', '3000', '张晋', '图书印制部门', '3', '2', '22');
INSERT INTO `yin_wu` VALUES ('23', '2014-05-23', '2014-06-23', '远东出版社', '上海中正印刷有限公司', '3', '9', '1', '3000', '张晋', '图书印制部门', '2', '2', '23');
INSERT INTO `yin_wu` VALUES ('24', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '3', '10', '1', '3000', '张晋', '图书印制部门', '2', '2', '24');
INSERT INTO `yin_wu` VALUES ('25', '2014-05-23', '2014-06-23', '文化出版社', '上海必好印刷有限公司', '3', '8', '1', '3000', '张晋', '图书印制部门', '2', '1', '25');
INSERT INTO `yin_wu` VALUES ('26', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '2', '12', '1', '2000', '张晋', '图书印制部门', '2', '2', '26');
INSERT INTO `yin_wu` VALUES ('27', '2014-05-23', '2014-06-23', '文化出版社', '上海大诚印刷有限公司', '2', '11', '1', '2000', '张晋', '图书印制部门', '2', '2', '27');
INSERT INTO `yin_wu` VALUES ('28', '2014-05-23', '2014-06-23', '文化出版社', '上海大诚印刷有限公司', '2', '15', '1', '3000', '张晋', '图书印制部门', '2', '1', '28');
INSERT INTO `yin_wu` VALUES ('29', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '2', '7', '1', '2000', '张晋', '图书印制部门', '3', '1', '29');
INSERT INTO `yin_wu` VALUES ('30', '2014-05-23', '2014-06-23', '文化出版社', '上海必好印刷有限公司', '2', '8', '1', '2000', '张晋', '图书印制部门', '3', '1', '30');
INSERT INTO `yin_wu` VALUES ('31', '2014-05-23', '2014-06-23', '文化出版社', '上海中正印刷有限公司', '2', '8', '1', '2000', '李晨', '图书印制部门', '3', '2', '31');
INSERT INTO `yin_wu` VALUES ('32', '2014-05-23', '2014-06-23', '文化出版社', '上海必好印刷有限公司', '2', '7', '1', '2000', '李晨', '图书印制部门', '3', '1', '32');
INSERT INTO `yin_wu` VALUES ('33', '2014-05-23', '2014-06-23', '文化出版社', '上海印刷有限公司', '2', '10', '1', '3000', '李晨', '图书印制部门', '2', '2', '33');
INSERT INTO `yin_wu` VALUES ('34', '2014-05-23', '2014-06-23', '文化出版社', '上海必好印刷有限公司', '1', '8', '1', '2000', '李晨', '图书印制部门', '3', '1', '34');
INSERT INTO `yin_wu` VALUES ('35', '2014-05-23', '2014-06-23', '文化出版社', '上海必好印刷有限公司', '1', '10', '1', '2000', '李晨', '图书印制部门', '2', '2', '35');
INSERT INTO `yin_wu` VALUES ('36', '2016-01-24', '2016-01-30', '文化出版社', '上海印刷有限公司', '1', '7', '1', '2000', '李晨', '图书印制部门', '3', '1', '39');

-- ----------------------------
-- Table structure for `yin_wu_export`
-- ----------------------------
DROP TABLE IF EXISTS `yin_wu_export`;
CREATE TABLE `yin_wu_export` (
  `印务编号` int(11) NOT NULL DEFAULT '0' COMMENT '印务编号',
  `起始日期` varchar(255) DEFAULT NULL COMMENT '起始日期',
  `终止日期` varchar(255) DEFAULT NULL COMMENT '终止日期',
  `出版单位` varchar(255) DEFAULT NULL COMMENT '出版单位',
  `印刷单位` varchar(255) DEFAULT NULL COMMENT '印刷单位',
  `图书名称` varchar(255) DEFAULT NULL COMMENT '图书名称',
  `图书规格` varchar(255) DEFAULT NULL COMMENT '图书规格',
  `印章` int(11) DEFAULT NULL COMMENT '印章',
  `版次` int(11) DEFAULT NULL COMMENT '版次',
  `印刷数` int(11) DEFAULT NULL COMMENT '印刷数',
  `ISBN` varchar(255) DEFAULT NULL COMMENT 'ISBN',
  `责任编辑` varchar(255) DEFAULT NULL COMMENT '责任编辑',
  `责任部门` varchar(255) DEFAULT NULL COMMENT '责任部门',
  `印刷状态` varchar(255) DEFAULT NULL COMMENT '印刷状态',
  `印刷质量` varchar(255) DEFAULT NULL COMMENT '印刷质量',
  PRIMARY KEY (`印务编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yin_wu_export
-- ----------------------------
INSERT INTO `yin_wu_export` VALUES ('1', '2014-03-14', '2014-04-14', '我是出版单位', '我是印刷单位', '逍遥叹', '32开', '1', '1', '100', 'isbnjhoen', '李寻欢', '李园', '已下单', '优良');
INSERT INTO `yin_wu_export` VALUES ('2', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '人生的过客', '大32开', '2', '2', '200', 'isbn879', '张三丰', '张三丰', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('3', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '已下单', '一般');
INSERT INTO `yin_wu_export` VALUES ('4', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '需返工');
INSERT INTO `yin_wu_export` VALUES ('5', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('6', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '需返工');
INSERT INTO `yin_wu_export` VALUES ('7', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('8', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('9', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('10', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('11', '2014-05-23', '2014-06-23', '超人出版社', '沙漏印刷社', '刘涛的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('12', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('13', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('14', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('15', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('16', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('17', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '4', '2', '200', 'isbn879', '张三丰', '武当', '施工完毕', '一般');
INSERT INTO `yin_wu_export` VALUES ('18', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('19', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '2', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('20', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '1', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('21', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('22', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '16开', '3', '2', '200', 'isbn879', '张三丰', '武当', '装订中', '一般');
INSERT INTO `yin_wu_export` VALUES ('23', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('24', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('25', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '优良');
INSERT INTO `yin_wu_export` VALUES ('26', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('27', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('28', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '优良');
INSERT INTO `yin_wu_export` VALUES ('29', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('30', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('31', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('32', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('33', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('34', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('35', '2014-05-23', '2014-06-23', '牛轧糖出版社', '相框印刷社', '伟人的一生', '大32开', '2', '2', '200', 'isbn879', '张三丰', '武当', '印刷中', '一般');
INSERT INTO `yin_wu_export` VALUES ('36', '2016-01-24', '2016-01-30', '凤凰出版社', '至尊印刷厂', '谁是英雄', '32开', '45', '4', '200', 'tgdhjk', '李逍遥', '逍遥部门', '装订中', '优良');

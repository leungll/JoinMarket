/*
Navicat MySQL Data Transfer

Source Server         : client
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : db_nenu_market

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2019-05-09 14:01:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_city
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` int(255) NOT NULL,
  `city_code` int(255) DEFAULT NULL COMMENT '城市编号（外键）',
  `city_name` varchar(255) DEFAULT NULL COMMENT '城市名',
  `year` int(255) DEFAULT NULL COMMENT '年份',
  `city_exceptation` varchar(255) DEFAULT NULL COMMENT '毕业期望',
  `city_sign` varchar(255) DEFAULT NULL COMMENT '本届签约',
  `city_studentFrom` varchar(255) DEFAULT NULL COMMENT '毕业生源',
  `city_visit` varchar(255) DEFAULT NULL COMMENT '往届走访（我们走访城市的次数）',
  `city_recency` varchar(255) DEFAULT NULL COMMENT '回访率',
  `city_grading` varchar(255) DEFAULT NULL COMMENT '城市分级',
  `city_score` double(255,0) DEFAULT NULL COMMENT '综合评分',
  `city_unit` int(255) DEFAULT NULL COMMENT '签约单位',
  `city_people` int(255) DEFAULT NULL COMMENT '签约人数',
  `education_yon` int(255) DEFAULT NULL COMMENT '是否为教育行业',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('1', '101', '西安市', '2019', 'A', 'B', 'C', 'D', 'E', 'A', '10', '12', '12', '1');
INSERT INTO `t_city` VALUES ('2', '101', '西安市', '2019', 'A', 'A', 'A', 'A', 'A', 'A', '11', '11', '11', '0');
INSERT INTO `t_city` VALUES ('3', '102', '咸阳市', '2019', 'B', 'B', 'B', 'B', 'B', 'B', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for t_citylevel
-- ----------------------------
DROP TABLE IF EXISTS `t_citylevel`;
CREATE TABLE `t_citylevel` (
  `id` int(255) NOT NULL,
  `city_code` int(255) DEFAULT NULL COMMENT '城市编号（外键）',
  `city_rank` varchar(255) DEFAULT NULL COMMENT '城市分级',
  `city_grading` varchar(255) DEFAULT NULL COMMENT '权重分析',
  `road` varchar(255) DEFAULT NULL COMMENT '一带一路政策',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_citylevel
-- ----------------------------

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('1', '北京市', '直辖市');
INSERT INTO `t_province` VALUES ('2', '天津市', '直辖市');
INSERT INTO `t_province` VALUES ('3', '上海市', '直辖市');
INSERT INTO `t_province` VALUES ('4', '重庆市', '直辖市');
INSERT INTO `t_province` VALUES ('5', '石家庄市', '河北');
INSERT INTO `t_province` VALUES ('6', '唐山市', '河北');
INSERT INTO `t_province` VALUES ('7', '秦皇岛市', '河北');
INSERT INTO `t_province` VALUES ('8', '邯郸市', '河北');
INSERT INTO `t_province` VALUES ('9', '邢台市', '河北');
INSERT INTO `t_province` VALUES ('10', '保定市', '河北');
INSERT INTO `t_province` VALUES ('11', '张家口市', '河北');
INSERT INTO `t_province` VALUES ('12', '承德市', '河北');
INSERT INTO `t_province` VALUES ('13', '沧州市', '河北');
INSERT INTO `t_province` VALUES ('14', '廊坊市', '河北');
INSERT INTO `t_province` VALUES ('15', '衡水市', '河北');
INSERT INTO `t_province` VALUES ('16', '太原市', '山西');
INSERT INTO `t_province` VALUES ('17', '大同市', '山西');
INSERT INTO `t_province` VALUES ('18', '阳泉市', '山西');
INSERT INTO `t_province` VALUES ('19', '长治市', '山西');
INSERT INTO `t_province` VALUES ('20', '晋城市', '山西');
INSERT INTO `t_province` VALUES ('21', '朔州市', '山西');
INSERT INTO `t_province` VALUES ('22', '晋中市', '山西');
INSERT INTO `t_province` VALUES ('23', '运城市', '山西');
INSERT INTO `t_province` VALUES ('24', '忻州市', '山西');
INSERT INTO `t_province` VALUES ('25', '临汾市', '山西');
INSERT INTO `t_province` VALUES ('26', '吕梁市', '山西');
INSERT INTO `t_province` VALUES ('27', '台北市', '台湾');
INSERT INTO `t_province` VALUES ('28', '高雄市', '台湾');
INSERT INTO `t_province` VALUES ('29', '基隆市', '台湾');
INSERT INTO `t_province` VALUES ('30', '台中市', '台湾');
INSERT INTO `t_province` VALUES ('31', '台南市', '台湾');
INSERT INTO `t_province` VALUES ('32', '新竹市', '台湾');
INSERT INTO `t_province` VALUES ('33', '嘉义市', '台湾');
INSERT INTO `t_province` VALUES ('34', '台北县', '台湾');
INSERT INTO `t_province` VALUES ('35', '宜兰县', '台湾');
INSERT INTO `t_province` VALUES ('36', '桃园县', '台湾');
INSERT INTO `t_province` VALUES ('37', '新竹县', '台湾');
INSERT INTO `t_province` VALUES ('38', '苗栗县', '台湾');
INSERT INTO `t_province` VALUES ('39', '台中县', '台湾');
INSERT INTO `t_province` VALUES ('40', '彰化县', '台湾');
INSERT INTO `t_province` VALUES ('41', '南投县', '台湾');
INSERT INTO `t_province` VALUES ('42', '云林县', '台湾');
INSERT INTO `t_province` VALUES ('43', '嘉义县', '台湾');
INSERT INTO `t_province` VALUES ('44', '台南县', '台湾');
INSERT INTO `t_province` VALUES ('45', '高雄县', '台湾');
INSERT INTO `t_province` VALUES ('46', '屏东县', '台湾');
INSERT INTO `t_province` VALUES ('47', '澎湖县', '台湾');
INSERT INTO `t_province` VALUES ('48', '台东县', '台湾');
INSERT INTO `t_province` VALUES ('49', '花莲县', '台湾');
INSERT INTO `t_province` VALUES ('50', '沈阳市', '辽宁');
INSERT INTO `t_province` VALUES ('51', '大连市', '辽宁');
INSERT INTO `t_province` VALUES ('52', '鞍山市', '辽宁');
INSERT INTO `t_province` VALUES ('53', '抚顺市', '辽宁');
INSERT INTO `t_province` VALUES ('54', '本溪市', '辽宁');
INSERT INTO `t_province` VALUES ('55', '丹东市', '辽宁');
INSERT INTO `t_province` VALUES ('56', '锦州市', '辽宁');
INSERT INTO `t_province` VALUES ('57', '营口市', '辽宁');
INSERT INTO `t_province` VALUES ('58', '阜新市', '辽宁');
INSERT INTO `t_province` VALUES ('59', '辽阳市', '辽宁');
INSERT INTO `t_province` VALUES ('60', '盘锦市', '辽宁');
INSERT INTO `t_province` VALUES ('61', '铁岭市', '辽宁');
INSERT INTO `t_province` VALUES ('62', '朝阳市', '辽宁');
INSERT INTO `t_province` VALUES ('63', '葫芦岛市', '辽宁');
INSERT INTO `t_province` VALUES ('64', '长春市', '吉林');
INSERT INTO `t_province` VALUES ('65', '吉林市', '吉林');
INSERT INTO `t_province` VALUES ('66', '四平市', '吉林');
INSERT INTO `t_province` VALUES ('67', '辽源市', '吉林');
INSERT INTO `t_province` VALUES ('68', '通化市', '吉林');
INSERT INTO `t_province` VALUES ('69', '白山市', '吉林');
INSERT INTO `t_province` VALUES ('70', '松原市', '吉林');
INSERT INTO `t_province` VALUES ('71', '白城市', '吉林');
INSERT INTO `t_province` VALUES ('72', '延边朝鲜族自治州', '吉林');
INSERT INTO `t_province` VALUES ('73', '哈尔滨市', '黑龙江');
INSERT INTO `t_province` VALUES ('74', '齐齐哈尔市', '黑龙江');
INSERT INTO `t_province` VALUES ('75', '鹤 岗 市', '黑龙江');
INSERT INTO `t_province` VALUES ('76', '双鸭山市', '黑龙江');
INSERT INTO `t_province` VALUES ('77', '鸡 西 市', '黑龙江');
INSERT INTO `t_province` VALUES ('78', '大 庆 市', '黑龙江');
INSERT INTO `t_province` VALUES ('79', '伊 春 市', '黑龙江');
INSERT INTO `t_province` VALUES ('80', '牡丹江市', '黑龙江');
INSERT INTO `t_province` VALUES ('81', '佳木斯市', '黑龙江');
INSERT INTO `t_province` VALUES ('82', '七台河市', '黑龙江');
INSERT INTO `t_province` VALUES ('83', '黑 河 市', '黑龙江');
INSERT INTO `t_province` VALUES ('84', '绥 化 市', '黑龙江');
INSERT INTO `t_province` VALUES ('85', '大兴安岭地区', '黑龙江');
INSERT INTO `t_province` VALUES ('86', '南京市', '江苏');
INSERT INTO `t_province` VALUES ('87', '无锡市', '江苏');
INSERT INTO `t_province` VALUES ('88', '徐州市', '江苏');
INSERT INTO `t_province` VALUES ('89', '常州市', '江苏');
INSERT INTO `t_province` VALUES ('90', '苏州市', '江苏');
INSERT INTO `t_province` VALUES ('91', '南通市', '江苏');
INSERT INTO `t_province` VALUES ('92', '连云港市', '江苏');
INSERT INTO `t_province` VALUES ('93', '淮安市', '江苏');
INSERT INTO `t_province` VALUES ('94', '盐城市', '江苏');
INSERT INTO `t_province` VALUES ('95', '扬州市', '江苏');
INSERT INTO `t_province` VALUES ('96', '镇江市', '江苏');
INSERT INTO `t_province` VALUES ('97', '泰州市', '江苏');
INSERT INTO `t_province` VALUES ('98', '宿迁市', '江苏');
INSERT INTO `t_province` VALUES ('99', '杭州市', '浙江');
INSERT INTO `t_province` VALUES ('100', '宁波市', '浙江');
INSERT INTO `t_province` VALUES ('101', '温州市', '浙江');
INSERT INTO `t_province` VALUES ('102', '嘉兴市', '浙江');
INSERT INTO `t_province` VALUES ('103', '湖州市', '浙江');
INSERT INTO `t_province` VALUES ('104', '绍兴市', '浙江');
INSERT INTO `t_province` VALUES ('105', '金华市', '浙江');
INSERT INTO `t_province` VALUES ('106', '衢州市', '浙江');
INSERT INTO `t_province` VALUES ('107', '舟山市', '浙江');
INSERT INTO `t_province` VALUES ('108', '台州市', '浙江');
INSERT INTO `t_province` VALUES ('109', '丽水市', '浙江');
INSERT INTO `t_province` VALUES ('110', '合肥市', '安徽');
INSERT INTO `t_province` VALUES ('111', '芜湖市', '安徽');
INSERT INTO `t_province` VALUES ('112', '蚌埠市', '安徽');
INSERT INTO `t_province` VALUES ('113', '淮南市', '安徽');
INSERT INTO `t_province` VALUES ('114', '马鞍山市', '安徽');
INSERT INTO `t_province` VALUES ('115', '淮北市', '安徽');
INSERT INTO `t_province` VALUES ('116', '铜陵市', '安徽');
INSERT INTO `t_province` VALUES ('117', '安庆市', '安徽');
INSERT INTO `t_province` VALUES ('118', '黄山市', '安徽');
INSERT INTO `t_province` VALUES ('119', '滁州市', '安徽');
INSERT INTO `t_province` VALUES ('120', '阜阳市', '安徽');
INSERT INTO `t_province` VALUES ('121', '宿州市', '安徽');
INSERT INTO `t_province` VALUES ('122', '巢湖市', '安徽');
INSERT INTO `t_province` VALUES ('123', '六安市', '安徽');
INSERT INTO `t_province` VALUES ('124', '亳州市', '安徽');
INSERT INTO `t_province` VALUES ('125', '池州市', '安徽');
INSERT INTO `t_province` VALUES ('126', '宣城市', '安徽');
INSERT INTO `t_province` VALUES ('127', '福州市', '福建');
INSERT INTO `t_province` VALUES ('128', '厦门市', '福建');
INSERT INTO `t_province` VALUES ('129', '莆田市', '福建');
INSERT INTO `t_province` VALUES ('130', '三明市', '福建');
INSERT INTO `t_province` VALUES ('131', '泉州市', '福建');
INSERT INTO `t_province` VALUES ('132', '漳州市', '福建');
INSERT INTO `t_province` VALUES ('133', '南平市', '福建');
INSERT INTO `t_province` VALUES ('134', '龙岩市', '福建');
INSERT INTO `t_province` VALUES ('135', '宁德市', '福建');
INSERT INTO `t_province` VALUES ('136', '南昌市', '江西');
INSERT INTO `t_province` VALUES ('137', '景德镇市', '江西');
INSERT INTO `t_province` VALUES ('138', '萍乡市', '江西');
INSERT INTO `t_province` VALUES ('139', '九江市', '江西');
INSERT INTO `t_province` VALUES ('140', '新余市', '江西');
INSERT INTO `t_province` VALUES ('141', '鹰潭市', '江西');
INSERT INTO `t_province` VALUES ('142', '赣州市', '江西');
INSERT INTO `t_province` VALUES ('143', '吉安市', '江西');
INSERT INTO `t_province` VALUES ('144', '宜春市', '江西');
INSERT INTO `t_province` VALUES ('145', '抚州市', '江西');
INSERT INTO `t_province` VALUES ('146', '上饶市', '江西');
INSERT INTO `t_province` VALUES ('147', '济南市', '山东');
INSERT INTO `t_province` VALUES ('148', '青岛市', '山东');
INSERT INTO `t_province` VALUES ('149', '淄博市', '山东');
INSERT INTO `t_province` VALUES ('150', '枣庄市', '山东');
INSERT INTO `t_province` VALUES ('151', '东营市', '山东');
INSERT INTO `t_province` VALUES ('152', '烟台市', '山东');
INSERT INTO `t_province` VALUES ('153', '潍坊市', '山东');
INSERT INTO `t_province` VALUES ('154', '济宁市', '山东');
INSERT INTO `t_province` VALUES ('155', '泰安市', '山东');
INSERT INTO `t_province` VALUES ('156', '威海市', '山东');
INSERT INTO `t_province` VALUES ('157', '日照市', '山东');
INSERT INTO `t_province` VALUES ('158', '莱芜市', '山东');
INSERT INTO `t_province` VALUES ('159', '临沂市', '山东');
INSERT INTO `t_province` VALUES ('160', '德州市', '山东');
INSERT INTO `t_province` VALUES ('161', '聊城市', '山东');
INSERT INTO `t_province` VALUES ('162', '滨州市', '山东');
INSERT INTO `t_province` VALUES ('163', '菏泽市', '山东');
INSERT INTO `t_province` VALUES ('164', '郑州市', '河南');
INSERT INTO `t_province` VALUES ('165', '开封市', '河南');
INSERT INTO `t_province` VALUES ('166', '洛阳市', '河南');
INSERT INTO `t_province` VALUES ('167', '平顶山市', '河南');
INSERT INTO `t_province` VALUES ('168', '安阳市', '河南');
INSERT INTO `t_province` VALUES ('169', '鹤壁市', '河南');
INSERT INTO `t_province` VALUES ('170', '新乡市', '河南');
INSERT INTO `t_province` VALUES ('171', '焦作市', '河南');
INSERT INTO `t_province` VALUES ('172', '濮阳市', '河南');
INSERT INTO `t_province` VALUES ('173', '许昌市', '河南');
INSERT INTO `t_province` VALUES ('174', '漯河市', '河南');
INSERT INTO `t_province` VALUES ('175', '三门峡市', '河南');
INSERT INTO `t_province` VALUES ('176', '南阳市', '河南');
INSERT INTO `t_province` VALUES ('177', '商丘市', '河南');
INSERT INTO `t_province` VALUES ('178', '信阳市', '河南');
INSERT INTO `t_province` VALUES ('179', '周口市', '河南');
INSERT INTO `t_province` VALUES ('180', '驻马店市', '河南');
INSERT INTO `t_province` VALUES ('181', '济源市', '河南');
INSERT INTO `t_province` VALUES ('182', '武汉市', '湖北');
INSERT INTO `t_province` VALUES ('183', '黄石市', '湖北');
INSERT INTO `t_province` VALUES ('184', '十堰市', '湖北');
INSERT INTO `t_province` VALUES ('185', '荆州市', '湖北');
INSERT INTO `t_province` VALUES ('186', '宜昌市', '湖北');
INSERT INTO `t_province` VALUES ('187', '襄樊市', '湖北');
INSERT INTO `t_province` VALUES ('188', '鄂州市', '湖北');
INSERT INTO `t_province` VALUES ('189', '荆门市', '湖北');
INSERT INTO `t_province` VALUES ('190', '孝感市', '湖北');
INSERT INTO `t_province` VALUES ('191', '黄冈市', '湖北');
INSERT INTO `t_province` VALUES ('192', '咸宁市', '湖北');
INSERT INTO `t_province` VALUES ('193', '随州市', '湖北');
INSERT INTO `t_province` VALUES ('194', '仙桃市', '湖北');
INSERT INTO `t_province` VALUES ('195', '天门市', '湖北');
INSERT INTO `t_province` VALUES ('196', '潜江市', '湖北');
INSERT INTO `t_province` VALUES ('197', '神农架林区', '湖北');
INSERT INTO `t_province` VALUES ('198', '恩施土家族苗族自治州', '湖北');
INSERT INTO `t_province` VALUES ('199', '长沙市', '湖南');
INSERT INTO `t_province` VALUES ('200', '株洲市', '湖南');
INSERT INTO `t_province` VALUES ('201', '湘潭市', '湖南');
INSERT INTO `t_province` VALUES ('202', '衡阳市', '湖南');
INSERT INTO `t_province` VALUES ('203', '邵阳市', '湖南');
INSERT INTO `t_province` VALUES ('204', '岳阳市', '湖南');
INSERT INTO `t_province` VALUES ('205', '常德市', '湖南');
INSERT INTO `t_province` VALUES ('206', '张家界市', '湖南');
INSERT INTO `t_province` VALUES ('207', '益阳市', '湖南');
INSERT INTO `t_province` VALUES ('208', '郴州市', '湖南');
INSERT INTO `t_province` VALUES ('209', '永州市', '湖南');
INSERT INTO `t_province` VALUES ('210', '怀化市', '湖南');
INSERT INTO `t_province` VALUES ('211', '娄底市', '湖南');
INSERT INTO `t_province` VALUES ('212', '湘西土家族苗族自治州', '湖南');
INSERT INTO `t_province` VALUES ('213', '广州市', '广东');
INSERT INTO `t_province` VALUES ('214', '深圳市', '广东');
INSERT INTO `t_province` VALUES ('215', '珠海市', '广东');
INSERT INTO `t_province` VALUES ('216', '汕头市', '广东');
INSERT INTO `t_province` VALUES ('217', '韶关市', '广东');
INSERT INTO `t_province` VALUES ('218', '佛山市', '广东');
INSERT INTO `t_province` VALUES ('219', '江门市', '广东');
INSERT INTO `t_province` VALUES ('220', '湛江市', '广东');
INSERT INTO `t_province` VALUES ('221', '茂名市', '广东');
INSERT INTO `t_province` VALUES ('222', '肇庆市', '广东');
INSERT INTO `t_province` VALUES ('223', '惠州市', '广东');
INSERT INTO `t_province` VALUES ('224', '梅州市', '广东');
INSERT INTO `t_province` VALUES ('225', '汕尾市', '广东');
INSERT INTO `t_province` VALUES ('226', '河源市', '广东');
INSERT INTO `t_province` VALUES ('227', '阳江市', '广东');
INSERT INTO `t_province` VALUES ('228', '清远市', '广东');
INSERT INTO `t_province` VALUES ('229', '东莞市', '广东');
INSERT INTO `t_province` VALUES ('230', '中山市', '广东');
INSERT INTO `t_province` VALUES ('231', '潮州市', '广东');
INSERT INTO `t_province` VALUES ('232', '揭阳市', '广东');
INSERT INTO `t_province` VALUES ('233', '云浮市', '广东');
INSERT INTO `t_province` VALUES ('234', '兰州市', '甘肃');
INSERT INTO `t_province` VALUES ('235', '金昌市', '甘肃');
INSERT INTO `t_province` VALUES ('236', '白银市', '甘肃');
INSERT INTO `t_province` VALUES ('237', '天水市', '甘肃');
INSERT INTO `t_province` VALUES ('238', '嘉峪关市', '甘肃');
INSERT INTO `t_province` VALUES ('239', '武威市', '甘肃');
INSERT INTO `t_province` VALUES ('240', '张掖市', '甘肃');
INSERT INTO `t_province` VALUES ('241', '平凉市', '甘肃');
INSERT INTO `t_province` VALUES ('242', '酒泉市', '甘肃');
INSERT INTO `t_province` VALUES ('243', '庆阳市', '甘肃');
INSERT INTO `t_province` VALUES ('244', '定西市', '甘肃');
INSERT INTO `t_province` VALUES ('245', '陇南市', '甘肃');
INSERT INTO `t_province` VALUES ('246', '临夏回族自治州', '甘肃');
INSERT INTO `t_province` VALUES ('247', '甘南藏族自治州', '甘肃');
INSERT INTO `t_province` VALUES ('248', '成都市', '四川');
INSERT INTO `t_province` VALUES ('249', '自贡市', '四川');
INSERT INTO `t_province` VALUES ('250', '攀枝花市', '四川');
INSERT INTO `t_province` VALUES ('251', '泸州市', '四川');
INSERT INTO `t_province` VALUES ('252', '德阳市', '四川');
INSERT INTO `t_province` VALUES ('253', '绵阳市', '四川');
INSERT INTO `t_province` VALUES ('254', '广元市', '四川');
INSERT INTO `t_province` VALUES ('255', '遂宁市', '四川');
INSERT INTO `t_province` VALUES ('256', '内江市', '四川');
INSERT INTO `t_province` VALUES ('257', '乐山市', '四川');
INSERT INTO `t_province` VALUES ('258', '南充市', '四川');
INSERT INTO `t_province` VALUES ('259', '眉山市', '四川');
INSERT INTO `t_province` VALUES ('260', '宜宾市', '四川');
INSERT INTO `t_province` VALUES ('261', '广安市', '四川');
INSERT INTO `t_province` VALUES ('262', '达州市', '四川');
INSERT INTO `t_province` VALUES ('263', '雅安市', '四川');
INSERT INTO `t_province` VALUES ('264', '巴中市', '四川');
INSERT INTO `t_province` VALUES ('265', '资阳市', '四川');
INSERT INTO `t_province` VALUES ('266', '阿坝藏族羌族自治州', '四川');
INSERT INTO `t_province` VALUES ('267', '甘孜藏族自治州', '四川');
INSERT INTO `t_province` VALUES ('268', '凉山彝族自治州', '四川');
INSERT INTO `t_province` VALUES ('269', '贵阳市', '贵州');
INSERT INTO `t_province` VALUES ('270', '六盘水市', '贵州');
INSERT INTO `t_province` VALUES ('271', '遵义市', '贵州');
INSERT INTO `t_province` VALUES ('272', '安顺市', '贵州');
INSERT INTO `t_province` VALUES ('273', '铜仁地区', '贵州');
INSERT INTO `t_province` VALUES ('274', '毕节地区', '贵州');
INSERT INTO `t_province` VALUES ('275', '黔西南布依族苗族自治州', '贵州');
INSERT INTO `t_province` VALUES ('276', '黔东南苗族侗族自治州', '贵州');
INSERT INTO `t_province` VALUES ('277', '黔南布依族苗族自治州', '贵州');
INSERT INTO `t_province` VALUES ('278', '海口市', '海南');
INSERT INTO `t_province` VALUES ('279', '三亚市', '海南');
INSERT INTO `t_province` VALUES ('280', '五指山市', '海南');
INSERT INTO `t_province` VALUES ('281', '琼海市', '海南');
INSERT INTO `t_province` VALUES ('282', '儋州市', '海南');
INSERT INTO `t_province` VALUES ('283', '文昌市', '海南');
INSERT INTO `t_province` VALUES ('284', '万宁市', '海南');
INSERT INTO `t_province` VALUES ('285', '东方市', '海南');
INSERT INTO `t_province` VALUES ('286', '澄迈县', '海南');
INSERT INTO `t_province` VALUES ('287', '定安县', '海南');
INSERT INTO `t_province` VALUES ('288', '屯昌县', '海南');
INSERT INTO `t_province` VALUES ('289', '临高县', '海南');
INSERT INTO `t_province` VALUES ('290', '白沙黎族自治县', '海南');
INSERT INTO `t_province` VALUES ('291', '昌江黎族自治县', '海南');
INSERT INTO `t_province` VALUES ('292', '乐东黎族自治县', '海南');
INSERT INTO `t_province` VALUES ('293', '陵水黎族自治县', '海南');
INSERT INTO `t_province` VALUES ('294', '保亭黎族苗族自治县', '海南');
INSERT INTO `t_province` VALUES ('295', '琼中黎族苗族自治县', '海南');
INSERT INTO `t_province` VALUES ('296', '昆明市', '云南');
INSERT INTO `t_province` VALUES ('297', '曲靖市', '云南');
INSERT INTO `t_province` VALUES ('298', '玉溪市', '云南');
INSERT INTO `t_province` VALUES ('299', '保山市', '云南');
INSERT INTO `t_province` VALUES ('300', '昭通市', '云南');
INSERT INTO `t_province` VALUES ('301', '丽江市', '云南');
INSERT INTO `t_province` VALUES ('302', '思茅市', '云南');
INSERT INTO `t_province` VALUES ('303', '临沧市', '云南');
INSERT INTO `t_province` VALUES ('304', '文山壮族苗族自治州', '云南');
INSERT INTO `t_province` VALUES ('305', '红河哈尼族彝族自治州', '云南');
INSERT INTO `t_province` VALUES ('306', '西双版纳傣族自治州', '云南');
INSERT INTO `t_province` VALUES ('307', '楚雄彝族自治州', '云南');
INSERT INTO `t_province` VALUES ('308', '大理白族自治州', '云南');
INSERT INTO `t_province` VALUES ('309', '德宏傣族景颇族自治州', '云南');
INSERT INTO `t_province` VALUES ('310', '怒江傈傈族自治州', '云南');
INSERT INTO `t_province` VALUES ('311', '迪庆藏族自治州', '云南');
INSERT INTO `t_province` VALUES ('312', '西宁市', '青海');
INSERT INTO `t_province` VALUES ('313', '海东地区', '青海');
INSERT INTO `t_province` VALUES ('314', '海北藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('315', '黄南藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('316', '海南藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('317', '果洛藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('318', '玉树藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('319', '海西蒙古族藏族自治州', '青海');
INSERT INTO `t_province` VALUES ('320', '西安市', '陕西');
INSERT INTO `t_province` VALUES ('321', '铜川市', '陕西');
INSERT INTO `t_province` VALUES ('322', '宝鸡市', '陕西');
INSERT INTO `t_province` VALUES ('323', '咸阳市', '陕西');
INSERT INTO `t_province` VALUES ('324', '渭南市', '陕西');
INSERT INTO `t_province` VALUES ('325', '延安市', '陕西');
INSERT INTO `t_province` VALUES ('326', '汉中市', '陕西');
INSERT INTO `t_province` VALUES ('327', '榆林市', '陕西');
INSERT INTO `t_province` VALUES ('328', '安康市', '陕西');
INSERT INTO `t_province` VALUES ('329', '商洛市', '陕西');
INSERT INTO `t_province` VALUES ('330', '南宁市', '广西');
INSERT INTO `t_province` VALUES ('331', '柳州市', '广西');
INSERT INTO `t_province` VALUES ('332', '桂林市', '广西');
INSERT INTO `t_province` VALUES ('333', '梧州市', '广西');
INSERT INTO `t_province` VALUES ('334', '北海市', '广西');
INSERT INTO `t_province` VALUES ('335', '防城港市', '广西');
INSERT INTO `t_province` VALUES ('336', '钦州市', '广西');
INSERT INTO `t_province` VALUES ('337', '贵港市', '广西');
INSERT INTO `t_province` VALUES ('338', '玉林市', '广西');
INSERT INTO `t_province` VALUES ('339', '百色市', '广西');
INSERT INTO `t_province` VALUES ('340', '贺州市', '广西');
INSERT INTO `t_province` VALUES ('341', '河池市', '广西');
INSERT INTO `t_province` VALUES ('342', '来宾市', '广西');
INSERT INTO `t_province` VALUES ('343', '崇左市', '广西');
INSERT INTO `t_province` VALUES ('344', '拉萨市', '西藏');
INSERT INTO `t_province` VALUES ('345', '那曲地区', '西藏');
INSERT INTO `t_province` VALUES ('346', '昌都地区', '西藏');
INSERT INTO `t_province` VALUES ('347', '山南地区', '西藏');
INSERT INTO `t_province` VALUES ('348', '日喀则地区', '西藏');
INSERT INTO `t_province` VALUES ('349', '阿里地区', '西藏');
INSERT INTO `t_province` VALUES ('350', '林芝地区', '西藏');
INSERT INTO `t_province` VALUES ('351', '银川市', '宁夏');
INSERT INTO `t_province` VALUES ('352', '石嘴山市', '宁夏');
INSERT INTO `t_province` VALUES ('353', '吴忠市', '宁夏');
INSERT INTO `t_province` VALUES ('354', '固原市', '宁夏');
INSERT INTO `t_province` VALUES ('355', '中卫市', '宁夏');
INSERT INTO `t_province` VALUES ('356', '乌鲁木齐市', '新疆');
INSERT INTO `t_province` VALUES ('357', '克拉玛依市', '新疆');
INSERT INTO `t_province` VALUES ('358', '石河子市　', '新疆');
INSERT INTO `t_province` VALUES ('359', '阿拉尔市', '新疆');
INSERT INTO `t_province` VALUES ('360', '图木舒克市', '新疆');
INSERT INTO `t_province` VALUES ('361', '五家渠市', '新疆');
INSERT INTO `t_province` VALUES ('362', '吐鲁番市', '新疆');
INSERT INTO `t_province` VALUES ('363', '阿克苏市', '新疆');
INSERT INTO `t_province` VALUES ('364', '喀什市', '新疆');
INSERT INTO `t_province` VALUES ('365', '哈密市', '新疆');
INSERT INTO `t_province` VALUES ('366', '和田市', '新疆');
INSERT INTO `t_province` VALUES ('367', '阿图什市', '新疆');
INSERT INTO `t_province` VALUES ('368', '库尔勒市', '新疆');
INSERT INTO `t_province` VALUES ('369', '昌吉市　', '新疆');
INSERT INTO `t_province` VALUES ('370', '阜康市', '新疆');
INSERT INTO `t_province` VALUES ('371', '米泉市', '新疆');
INSERT INTO `t_province` VALUES ('372', '博乐市', '新疆');
INSERT INTO `t_province` VALUES ('373', '伊宁市', '新疆');
INSERT INTO `t_province` VALUES ('374', '奎屯市', '新疆');
INSERT INTO `t_province` VALUES ('375', '塔城市', '新疆');
INSERT INTO `t_province` VALUES ('376', '乌苏市', '新疆');
INSERT INTO `t_province` VALUES ('377', '阿勒泰市', '新疆');
INSERT INTO `t_province` VALUES ('378', '呼和浩特市', '内蒙古');
INSERT INTO `t_province` VALUES ('379', '包头市', '内蒙古');
INSERT INTO `t_province` VALUES ('380', '乌海市', '内蒙古');
INSERT INTO `t_province` VALUES ('381', '赤峰市', '内蒙古');
INSERT INTO `t_province` VALUES ('382', '通辽市', '内蒙古');
INSERT INTO `t_province` VALUES ('383', '鄂尔多斯市', '内蒙古');
INSERT INTO `t_province` VALUES ('384', '呼伦贝尔市', '内蒙古');
INSERT INTO `t_province` VALUES ('385', '巴彦淖尔市', '内蒙古');
INSERT INTO `t_province` VALUES ('386', '乌兰察布市', '内蒙古');
INSERT INTO `t_province` VALUES ('387', '锡林郭勒盟', '内蒙古');
INSERT INTO `t_province` VALUES ('388', '兴安盟', '内蒙古');
INSERT INTO `t_province` VALUES ('389', '阿拉善盟', '内蒙古');
INSERT INTO `t_province` VALUES ('390', '澳门特别行政区', '特别行政区');
INSERT INTO `t_province` VALUES ('391', '香港特别行政区', '特别行政区');

-- ----------------------------
-- Table structure for t_totalvisit
-- ----------------------------
DROP TABLE IF EXISTS `t_totalvisit`;
CREATE TABLE `t_totalvisit` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL COMMENT '城市名',
  `year` int(255) DEFAULT NULL COMMENT '年份',
  `visitCount` int(255) DEFAULT NULL COMMENT '走访单位数',
  `returnCount` int(255) DEFAULT NULL COMMENT '回访单位数',
  `signNumber(b)` int(255) DEFAULT NULL COMMENT '五年签约数（本）',
  `signNumber(y)` int(255) DEFAULT NULL COMMENT '五年签约数（研）',
  `education_yon` int(255) DEFAULT NULL COMMENT '是否为教育行业',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_totalvisit
-- ----------------------------
INSERT INTO `t_totalvisit` VALUES ('1', '广州', null, '4', null, null, null, null);
INSERT INTO `t_totalvisit` VALUES ('2', '深圳', null, '3', null, null, null, null);
INSERT INTO `t_totalvisit` VALUES ('3', '长春', null, '2', null, null, null, null);

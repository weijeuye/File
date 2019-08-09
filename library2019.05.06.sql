/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 39.107.253.236:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 06/05/2019 08:41:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_book
-- ----------------------------
DROP TABLE IF EXISTS `book_book`;
CREATE TABLE `book_book`  (
  `book_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `book_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `book_type_id` bigint(11) NULL DEFAULT NULL COMMENT '分类id',
  `book_author` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `book_pub` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `book_pub_time` datetime(0) NULL DEFAULT NULL COMMENT '出版时间',
  `book_record` datetime(0) NULL DEFAULT NULL COMMENT '登记日期',
  `book_num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `book_left_num` int(11) NULL DEFAULT NULL COMMENT '在馆数量',
  `book_state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书状态',
  `book_language` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书语言',
  `book_introduction` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书d简介',
  `book_price` decimal(10, 0) NULL DEFAULT NULL COMMENT '图书价格',
  `ISBN` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ISBN',
  `book_img` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_date_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_book
-- ----------------------------
INSERT INTO `book_book` VALUES (1, '测试', 1, '测试', '电子工业出版社', '2019-04-29 00:00:00', NULL, 4, 4, 'Y', NULL, '', 33, '9787550208094', '', '2019-05-04 10:42:29', '2019-05-05 12:00:16', 'Y');
INSERT INTO `book_book` VALUES (2, '《不学写字有坏处》', 2, '方素珍', '电子工业出版社', '2011-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 28, '9787121168093', '', '2019-05-04 10:52:57', NULL, 'Y');
INSERT INTO `book_book` VALUES (3, '《我喜欢书》', 2, '安东尼.布朗', '河北教育出版社', '2012-11-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787543464599', '', '2019-05-04 11:02:13', NULL, 'Y');
INSERT INTO `book_book` VALUES (4, '《大卫，不可以》', 2, '大卫.香农', '河北教育出版社', '2007-04-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543464636', '', '2019-05-04 16:01:30', NULL, 'Y');
INSERT INTO `book_book` VALUES (5, '《大卫上学去》', 2, '大卫。香农', '河北出版社', '2008-10-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543470927', '', '2019-05-04 16:03:13', NULL, 'Y');
INSERT INTO `book_book` VALUES (6, '太阳是个大火球', 2, '朴进英', '南海出版公司', '2013-10-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787543798861', '', '2019-05-04 16:14:00', NULL, 'Y');
INSERT INTO `book_book` VALUES (7, '《袋鼠也有妈妈吗》', 2, '艾瑞.卡尔', '明天出版社', '2019-05-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 29, '9787533269463', '', '2019-05-04 16:19:10', NULL, 'Y');
INSERT INTO `book_book` VALUES (8, '《窗外的奥利弗》', 2, '伊丽莎白.施里弗', '南京师范大学出版社', '2019-05-01 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787565105470', '', '2019-05-04 16:21:50', NULL, 'Y');
INSERT INTO `book_book` VALUES (9, '春神跳舞的森林', 2, '严淑女', '河北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 33, '9787543475977', '', '2019-05-04 16:30:56', NULL, 'Y');
INSERT INTO `book_book` VALUES (10, '真正的男子汉', 2, '玛努拉.奥尔特', '广西师范大学出版社', '2019-05-04 00:00:00', NULL, 2, 2, 'Y', NULL, '', 35, '9787549575411', '', '2019-05-04 16:34:08', NULL, 'Y');
INSERT INTO `book_book` VALUES (11, '大家晚安', 2, '克里斯.霍顿', '北京联合出版公司', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 46, '9787550276543', '', '2019-05-04 16:35:53', NULL, 'Y');
INSERT INTO `book_book` VALUES (12, '小贝弟的大梦想', 2, '彼得.霍恩', '湖南少年儿童出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787535841865', '', '2019-05-04 16:38:49', NULL, 'Y');
INSERT INTO `book_book` VALUES (13, '没有记性的玛明', 2, '加布里埃尔.克莱玛', '南京师范大学出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787565105265', '', '2019-05-04 16:41:17', NULL, 'Y');
INSERT INTO `book_book` VALUES (14, '糟糕，身上长条纹了', 2, '大卫.香农', '河北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 32, '9787543479470', '', '2019-05-04 16:44:31', NULL, 'Y');
INSERT INTO `book_book` VALUES (15, '你好，谢谢', 2, '刘敬余', '北京教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 84, '9787552294958', '', '2019-05-04 16:47:45', NULL, 'Y');
INSERT INTO `book_book` VALUES (16, '不会写字的狮子', 2, '马丁.巴兹塞特', '河北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 32, '9787543479654', '', '2019-05-04 16:51:22', NULL, 'Y');
INSERT INTO `book_book` VALUES (17, '夏天来了', 2, '拜格如恩.伊瑞丝', '吉林美术出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 33, '9787557526238', '', '2019-05-04 16:54:22', NULL, 'Y');
INSERT INTO `book_book` VALUES (18, '为什么会刮风？', 1, '朴进英', '南海出版公司', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787543798779', '', '2019-05-04 16:56:22', NULL, 'Y');
INSERT INTO `book_book` VALUES (19, '还能挤下一个人', 2, '索尔奇.尼克.利奥德哈斯', '北京联合出版公司', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787550283398', '', '2019-05-04 16:59:08', NULL, 'Y');
INSERT INTO `book_book` VALUES (20, '不要随便跟陌生人走', 2, '佩特拉.敏特尔', '青岛出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 12, '9787543668485', '', '2019-05-04 17:02:45', NULL, 'Y');
INSERT INTO `book_book` VALUES (21, '洗个不停的妈妈', 2, '佐藤和贵子', '河北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787554500347', '', '2019-05-04 17:06:30', NULL, 'Y');
INSERT INTO `book_book` VALUES (22, '我爱便便', 2, '锦平', '人民邮电出版社出版', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 37, '9787115462572', '', '2019-05-04 17:08:59', NULL, 'Y');
INSERT INTO `book_book` VALUES (23, '让孩子学会说“不”', 2, '凯瑟琳.加特纳', '化学工业出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 13, '9787122129451', '', '2019-05-04 17:16:52', NULL, 'Y');
INSERT INTO `book_book` VALUES (24, '大脚丫游巴黎', 2, '埃米.扬', '大脚丫游巴黎', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543489950', '', '2019-05-04 17:19:47', NULL, 'Y');
INSERT INTO `book_book` VALUES (25, '我的老师是怪兽', 2, '彼得.布朗', '长江少年儿童出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 40, '9787556036202', '', '2019-05-04 17:23:08', NULL, 'Y');
INSERT INTO `book_book` VALUES (26, '打瞌睡的房子', 2, '奥黛莉.伍德', '明天出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 33, '9787533257811', '', '2019-05-04 17:26:21', NULL, 'Y');
INSERT INTO `book_book` VALUES (27, '我也行呀', 2, '崔琡僖', '天津人民美术出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 26, '9787530549292', '', '2019-05-04 17:28:55', NULL, 'Y');
INSERT INTO `book_book` VALUES (28, '我要更自信', 2, '玛塞拉.巴克.维纳', '化学工业出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 13, '9787122079909', '', '2019-05-04 17:31:44', NULL, 'Y');
INSERT INTO `book_book` VALUES (29, '鸭子骑车记', 2, '大卫.夏农', '南海出版公司', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787544248112', '', '2019-05-04 17:32:59', NULL, 'Y');
INSERT INTO `book_book` VALUES (30, '先有蛋', 2, '劳拉.瓦卡罗.希格', '河北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543479586', '', '2019-05-04 17:36:29', NULL, 'Y');
INSERT INTO `book_book` VALUES (31, '英文字母猜猜猜', 2, '喜多村惠', '二十一世纪出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787539162164', '', '2019-05-04 17:39:54', NULL, 'Y');
INSERT INTO `book_book` VALUES (32, '抱抱', 2, '杰兹.阿波罗', '明天出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 31, '9787533258795', '', '2019-05-04 17:42:09', NULL, 'Y');
INSERT INTO `book_book` VALUES (33, '夏天青蛙叫啦', 2, '童心', '化学工业出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787122300317', '', '2019-05-04 17:44:41', NULL, 'Y');
INSERT INTO `book_book` VALUES (34, '我怕被骂', 2, '皮姆.范.赫斯特', '北京联合出版公司', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 35, '9787550284883', '', '2019-05-04 17:46:56', NULL, 'Y');
INSERT INTO `book_book` VALUES (35, '木木熊，快来', 2, '吉娜.卢克-帕奎特', '湖南少年儿童出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 12, '9787556201464', '', '2019-05-04 17:48:52', NULL, 'Y');
INSERT INTO `book_book` VALUES (36, '在哪儿睡午觉呢？', 2, '案田衿子', '湖北教育出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 24, '9787535188212', '', '2019-05-04 17:56:01', NULL, 'Y');
INSERT INTO `book_book` VALUES (37, '快看植物在动呢', 2, '豫宗花', '上海人民美术出版社', '2019-05-04 00:00:00', NULL, 2, 2, 'Y', NULL, '', 8, '9787532286911', '', '2019-05-04 17:58:06', '2019-05-05 11:19:56', 'Y');
INSERT INTO `book_book` VALUES (38, '《山米的巧克力大礼盒》', 2, '安妮卡.麦森', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787535841872', '', '2019-05-05 10:30:46', NULL, 'Y');
INSERT INTO `book_book` VALUES (39, '《鲑鱼向前冲》', 2, '安度眩', '北京科学技术出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 29, '9787530465936', '', '2019-05-05 10:51:14', NULL, 'Y');
INSERT INTO `book_book` VALUES (40, '《下雨天》', 2, '李惠利', '广西师范大学出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 33, '9787549560349', '', '2019-05-05 10:54:12', NULL, 'Y');
INSERT INTO `book_book` VALUES (41, '开往远方的列车', 2, '（美）伊夫·邦廷', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543474932', '', '2019-05-05 11:01:18', NULL, 'Y');
INSERT INTO `book_book` VALUES (42, '《小小迷路了》', 2, '克里斯.霍顿', '北京联合出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 36, '9787550236264', '', '2019-05-05 11:06:50', NULL, 'Y');
INSERT INTO `book_book` VALUES (43, '不要随便摸我', 2, '珊蒂.克雷文', '青岛出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 12, '9787543668492', '', '2019-05-05 11:10:15', NULL, 'Y');
INSERT INTO `book_book` VALUES (44, '狼婆婆', 2, '杨志成', '河北出版传媒集团', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543468863', '', '2019-05-05 11:11:55', NULL, 'Y');
INSERT INTO `book_book` VALUES (45, '别想欺负我', 2, '伊丽莎白.崔勒', '新世界出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 50, '9787510419393', '', '2019-05-05 11:13:54', NULL, 'Y');
INSERT INTO `book_book` VALUES (46, '一片叶子落下来', 2, '利奥.巴斯卡利亚', '南海出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 20, '9787544244510', '', '2019-05-05 11:16:16', NULL, 'Y');
INSERT INTO `book_book` VALUES (47, '最好的朋友', 2, '吉尔.内马克', '化学工业出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 13, '9787122195234', '', '2019-05-05 11:17:53', NULL, 'Y');
INSERT INTO `book_book` VALUES (48, '小凯的家不一样了', 2, '【英】安东尼·布朗', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 36, '9787543470798', '', '2019-05-05 11:22:59', NULL, 'Y');
INSERT INTO `book_book` VALUES (49, '河马波波屁股大', 2, '迪迪耶.莱维', '作家出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 39, '9787506394437', '', '2019-05-05 11:25:56', NULL, 'Y');
INSERT INTO `book_book` VALUES (50, '你别想让河马走开 ', 2, '卡奇普尔', '湖南少儿出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787535844644', '', '2019-05-05 11:28:44', NULL, 'Y');
INSERT INTO `book_book` VALUES (51, '乌鸦面包店', 2, '加古里子', '南海出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787513313193', '', '2019-05-05 11:31:34', NULL, 'Y');
INSERT INTO `book_book` VALUES (52, '月亮是个魔法师', 2, '朴进英', '南海出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787543798793', '', '2019-05-05 11:33:48', NULL, 'Y');
INSERT INTO `book_book` VALUES (53, '老鼠娶新娘', 2, '张玲玲', '二十一世纪出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 32, '9787539140629', '', '2019-05-05 11:35:46', NULL, 'Y');
INSERT INTO `book_book` VALUES (54, '妈妈，我真的很生气', 2, '吉娜.迪塔', '化工工业出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 13, '9787122195104', '', '2019-05-05 11:37:46', NULL, 'Y');
INSERT INTO `book_book` VALUES (55, '官巴克尔和警犬葛芮雅', 2, '佩吉·拉特曼', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543468825', '', '2019-05-05 11:41:00', NULL, 'Y');
INSERT INTO `book_book` VALUES (56, '浓雾之后', 2, '雷蒙娜.巴蒂斯库', '新星出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 42, '9787513325486', '', '2019-05-05 11:43:31', NULL, 'Y');
INSERT INTO `book_book` VALUES (57, ' 《 这样的尾巴可以做什么？》', 2, '(美)史蒂夫·詹金斯', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543471399', '', '2019-05-05 11:46:18', NULL, 'Y');
INSERT INTO `book_book` VALUES (58, '请不要生气', 2, '楠茂宣', '北京科学技术出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 28, '9787530470800', '', '2019-05-05 11:48:05', NULL, 'Y');
INSERT INTO `book_book` VALUES (59, '屎壳郎的日记', 2, '金波', '中国少年儿童新闻出版总社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 25, '9787514825602', '', '2019-05-05 11:51:55', NULL, 'Y');
INSERT INTO `book_book` VALUES (60, '淘气包淘淘', 2, '金成恩', '二十一世纪出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 28, '9787539169057', '', '2019-05-05 11:53:16', NULL, 'Y');
INSERT INTO `book_book` VALUES (61, '鸭子当总统', 2, '朵琳.克罗宁', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 2, 2, 'Y', NULL, '', 15, '9787535836908', '', '2019-05-05 11:55:15', NULL, 'Y');
INSERT INTO `book_book` VALUES (62, '大卫惹麻烦', 2, '大卫.香农', '河北出版传媒集团', '2019-05-05 00:00:00', NULL, 2, 2, 'Y', NULL, '', 34, '9787543472259', '', '2019-05-05 11:57:02', NULL, 'Y');
INSERT INTO `book_book` VALUES (63, '安娜的新大衣', 2, '哈丽雅特.齐费尔特', '河北出版传媒集团', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543470934', '', '2019-05-05 11:59:05', NULL, 'Y');
INSERT INTO `book_book` VALUES (64, '逃家小兔', 2, '玛格丽特.怀兹.布朗', '明天出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787533274245', '', '2019-05-05 12:02:33', NULL, 'Y');
INSERT INTO `book_book` VALUES (65, '胆小鬼.威利', 2, '安东尼.布朗', '二十一世纪出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 23, '9787539150376', '', '2019-05-05 12:04:19', NULL, 'Y');
INSERT INTO `book_book` VALUES (66, '棕色的熊，棕色的熊，你在看什么？', 2, '比尔.马丁', '明天出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787533258764', '', '2019-05-05 14:57:34', NULL, 'Y');
INSERT INTO `book_book` VALUES (67, '瓷器', 2, '郝广才', '新星出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 42, '9787513327169', '', '2019-05-05 14:59:39', NULL, 'Y');
INSERT INTO `book_book` VALUES (68, '晴朗的一天', 2, '诺尼.霍格罗金', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543473638', '', '2019-05-05 15:01:16', NULL, 'Y');
INSERT INTO `book_book` VALUES (69, '狼和七只小羊', 2, '格林兄弟', '新星出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 32, '9787513314053', '', '2019-05-05 15:03:23', NULL, 'Y');
INSERT INTO `book_book` VALUES (70, '火车出发了', 2, '横沟英一', '北京科学技术出版社出版', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 28, '9787530459331', '', '2019-05-05 15:07:21', NULL, 'Y');
INSERT INTO `book_book` VALUES (71, '大团团和小圆圆', 2, '安吉拉·麦克阿丽斯特 ', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787535851086', '', '2019-05-05 15:09:06', NULL, 'Y');
INSERT INTO `book_book` VALUES (72, '小小背包客游上海', 2, '澜星文化', '金盾出版社', '2019-05-04 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787518606634', '', '2019-05-05 15:11:08', NULL, 'Y');
INSERT INTO `book_book` VALUES (73, '獾的礼物', 2, '苏珊.华莱', '明天出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 32, '9787533257798', '', '2019-05-05 15:13:50', NULL, 'Y');
INSERT INTO `book_book` VALUES (74, '追寻幸福的蜗牛', 2, '塞巴斯蒂安 劳斯 ', '未来出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 24, '9787541749988', '', '2019-05-05 15:16:07', NULL, 'Y');
INSERT INTO `book_book` VALUES (75, '吱咕，吱咕，嘎', 2, '朵琳.克罗宁', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 15, '9787535836885', '', '2019-05-05 15:18:39', NULL, 'Y');
INSERT INTO `book_book` VALUES (76, '爱心树', 2, '谢尔.希尔弗斯坦', '南海出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 20, '9787544237499', '', '2019-05-05 15:20:19', NULL, 'Y');
INSERT INTO `book_book` VALUES (77, '风到哪里去了', 2, '夏洛特.左罗托夫', '明天出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787533258122', '', '2019-05-05 15:22:04', NULL, 'Y');
INSERT INTO `book_book` VALUES (78, '象老爹', 2, '罗伦丝.布赫基农', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 10, '9787535841858', '', '2019-05-05 15:24:26', NULL, 'Y');
INSERT INTO `book_book` VALUES (79, '猴子的屁股为什么是红的', 2, '金荣伊', '南海出版公司', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787543798939', '', '2019-05-05 15:26:34', NULL, 'Y');
INSERT INTO `book_book` VALUES (80, '鳄鱼爱上长颈鹿', 2, '达妮拉.库洛特', '少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 27, '9787532473229', '', '2019-05-05 15:28:19', NULL, 'Y');
INSERT INTO `book_book` VALUES (81, '拉紧我的手', 2, '萨拉.阿克顿', '湖南少年儿童出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 12, '9787556201440', '', '2019-05-05 15:30:01', NULL, 'Y');
INSERT INTO `book_book` VALUES (82, '迷路的母鸡', 2, '曹文轩', '二十一世纪出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 12, '9787556802142', '', '2019-05-05 15:34:12', NULL, 'Y');
INSERT INTO `book_book` VALUES (83, '和甘伯伯去游河', 2, '约翰.伯宁罕', '河北教育出版社', '2019-05-05 00:00:00', NULL, 1, 1, 'Y', NULL, '', 30, '9787543468849', '', '2019-05-05 15:36:58', NULL, 'Y');

-- ----------------------------
-- Table structure for book_borrow
-- ----------------------------
DROP TABLE IF EXISTS `book_borrow`;
CREATE TABLE `book_borrow`  (
  `borrow_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(11) NULL DEFAULT NULL COMMENT '用户id',
  `book_id` bigint(11) NULL DEFAULT NULL COMMENT '图书id',
  `borrow_time` datetime(0) NULL DEFAULT NULL COMMENT '借书时间',
  `return_time` datetime(0) NULL DEFAULT NULL COMMENT '还书时间',
  `act_return_time` datetime(0) NULL DEFAULT NULL COMMENT '实际还书时间',
  `is_return` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否归还',
  `create_date_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `operator_id` bigint(11) NULL DEFAULT NULL COMMENT '操作者',
  PRIMARY KEY (`borrow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_borrow
-- ----------------------------
INSERT INTO `book_borrow` VALUES (2, 11, 2, '2019-04-10 00:00:00', '2019-04-20 00:00:00', NULL, 'N', '2019-04-10 09:48:42', NULL, NULL);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publish` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ISBN` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `language` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `pubdate` date NULL DEFAULT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `pressmark` int(11) NULL DEFAULT NULL,
  `state` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `book_type_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `book_type_parent_id` bigint(11) NULL DEFAULT NULL COMMENT '父级id',
  `book_type_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `create_date_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `level_code` bigint(2) NULL DEFAULT NULL COMMENT '分类等级',
  PRIMARY KEY (`book_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_type
-- ----------------------------
INSERT INTO `book_type` VALUES (1, NULL, '少儿', '2019-05-04 10:41:54', NULL, 0);
INSERT INTO `book_type` VALUES (2, NULL, '儿童绘本', '2019-05-04 10:46:58', NULL, 0);

-- ----------------------------
-- Table structure for book_user
-- ----------------------------
DROP TABLE IF EXISTS `book_user`;
CREATE TABLE `book_user`  (
  `userId` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `telephone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `recommendDateTime` datetime(0) NULL DEFAULT NULL COMMENT '被推荐时间',
  `recommendUserId` bigint(11) NULL DEFAULT NULL COMMENT '推荐人Id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `qq_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'qq号',
  `webchat_account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  `memo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `user_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `point` bigint(38) NULL DEFAULT NULL COMMENT '积分',
  `is_valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有效',
  `mother_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母亲姓名',
  `father_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父亲姓名',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校',
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `mother_telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '母亲电话',
  `father_telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父亲电话',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_user
-- ----------------------------
INSERT INTO `book_user` VALUES (1, 'admin', '管理员', 'F', NULL, NULL, NULL, NULL, NULL, NULL, '111111', NULL, '2019-04-10 13:05:58', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'Y', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `book_user` VALUES (19, '18056073412', '张芊伊（旧）', 'f', NULL, '', '2014-12-11', NULL, NULL, '2019-04-10 15:27:27', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '碧水兰庭', '小班', '', '');
INSERT INTO `book_user` VALUES (20, '18655116115', '胡希妍（旧）', 'f', NULL, '', '2012-09-27', NULL, NULL, '2019-04-10 16:41:23', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '小森林', '大班', '', '');
INSERT INTO `book_user` VALUES (21, '13721117556', '轩辕鸿宇（旧）', 'm', NULL, '', '2014-02-05', NULL, NULL, '2019-04-10 17:58:30', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣城幼儿园', '中班', '', '');
INSERT INTO `book_user` VALUES (22, '15256971862', '朱子瑶（旧）', 'f', NULL, '', '2015-07-10', NULL, NULL, '2019-04-10 17:59:30', NULL, NULL, '2019-04-10 17:59:46', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '丽水分园', '小班', '', '');
INSERT INTO `book_user` VALUES (23, '15155166768', '葛俊枫（旧）', 'm', NULL, '', '2013-12-30', NULL, NULL, '2019-04-10 18:01:12', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣城幼儿园', '中班', '', '');
INSERT INTO `book_user` VALUES (24, '13390779725', '方欢喜（旧）', 'f', NULL, '', '2012-09-23', NULL, NULL, '2019-04-10 18:02:38', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '小森林', '大班', '', '');
INSERT INTO `book_user` VALUES (25, '13739241378', '刘溪桐（旧）', 'f', NULL, '', '2014-12-10', NULL, NULL, '2019-04-10 18:03:51', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '皇家花园', '小班', '', '');
INSERT INTO `book_user` VALUES (26, '15255121969', '梁景承（旧）', 'm', NULL, '', '2014-04-04', NULL, NULL, '2019-04-11 10:12:24', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣城幼儿园', '中班', '', '');
INSERT INTO `book_user` VALUES (27, '18715128696', '王瑞恬（旧）', 'f', NULL, '', '2014-03-10', NULL, NULL, '2019-04-11 10:14:13', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣成北苑', '中班', '', '');
INSERT INTO `book_user` VALUES (28, '17730212719', '付欣蕊（旧）', 'f', NULL, '', '2014-10-27', NULL, NULL, '2019-04-11 10:15:17', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '星星幼儿园', '中班', '', '');
INSERT INTO `book_user` VALUES (29, '13966651219', '束茂林(旧）', 'm', NULL, '', '2014-10-06', NULL, NULL, '2019-04-20 08:59:19', NULL, NULL, '2019-04-20 09:18:49', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣成南苑', '小班', '', '');
INSERT INTO `book_user` VALUES (30, '18156088046', '阮婉馨（旧）', 'f', NULL, '', '2012-12-04', NULL, NULL, '2019-04-20 09:09:32', NULL, NULL, '2019-04-20 09:18:58', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣城花园', '', '', '');
INSERT INTO `book_user` VALUES (31, '18019902661', '薛嘉睿（旧）', 'm', NULL, '', '2012-11-13', NULL, NULL, '2019-04-20 09:12:01', NULL, NULL, '2019-04-20 09:19:07', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '荣城花园', '', '', '');
INSERT INTO `book_user` VALUES (32, '18221497288', '沈泽楷（旧）', 'm', NULL, '', '2014-11-20', NULL, NULL, '2019-04-20 09:13:04', NULL, NULL, '2019-04-20 09:19:20', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '皇家花园', '', '', '');
INSERT INTO `book_user` VALUES (33, '15715690643', '姚睿禾（旧）', 'm', NULL, '', '2015-07-26', NULL, NULL, '2019-04-20 09:14:52', NULL, NULL, '2019-04-20 09:19:29', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '小森林', '', '', '');
INSERT INTO `book_user` VALUES (34, '18655456558', '方羽墨（旧）', 'f', NULL, '', '2013-09-17', NULL, NULL, '2019-04-20 09:16:58', NULL, NULL, '2019-04-20 09:19:40', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '皇家花园', '', '', '');
INSERT INTO `book_user` VALUES (35, '19965477074', '谭子讯（旧)', 'm', NULL, '', '2014-10-18', NULL, NULL, '2019-04-20 09:18:12', NULL, NULL, '2019-04-20 09:19:52', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '小森林', '', '', '');
INSERT INTO `book_user` VALUES (36, '15856921312', '江辰阳（旧）', 'm', NULL, '', '2014-10-03', NULL, NULL, '2019-04-20 12:11:16', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '碧水兰庭', '', '', '');
INSERT INTO `book_user` VALUES (37, '13349010216', '刘思蕊（旧）', 'f', NULL, '', '2015-12-26', NULL, NULL, '2019-04-20 14:22:26', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '', '', '', '');
INSERT INTO `book_user` VALUES (38, '13966696351', '孙奕萱（旧）', 'm', NULL, '', '2014-08-20', NULL, NULL, '2019-04-20 14:24:06', NULL, NULL, '2019-04-20 14:24:15', NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '美景幼儿园', '', '', '');
INSERT INTO `book_user` VALUES (39, '15855101768', '赵宥辰（旧）', 'm', NULL, '', '2014-05-31', NULL, NULL, '2019-04-20 14:25:55', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '和昌幼儿园', '', '', '');
INSERT INTO `book_user` VALUES (40, '17354198372', '孟雪（旧）', 'f', NULL, '', '2013-11-28', NULL, NULL, '2019-04-20 14:27:04', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '小森林', '', '', '');
INSERT INTO `book_user` VALUES (41, '15505516960', '陈思锦（新）', 'f', NULL, '', '2015-06-17', NULL, NULL, '2019-04-20 14:28:52', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '皇家花园', '小班', '', '');
INSERT INTO `book_user` VALUES (42, '15256499617', '王凡（新）', 'm', NULL, '', '2013-12-06', NULL, NULL, '2019-04-20 14:38:20', NULL, NULL, NULL, NULL, NULL, NULL, '', 'u', NULL, 0, 'Y', '', '', '宝宸时代幼儿园', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;

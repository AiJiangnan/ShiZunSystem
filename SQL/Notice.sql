/*
Navicat MySQL Data Transfer

Source Server         : localhost-3306
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : shizunsystem

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-08-27 20:11:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom
-- ----------------------------

-- ----------------------------
-- Records of custom
-- ----------------------------

-- ----------------------------
-- Table structure for dept
-- ----------------------------

-- ----------------------------
-- Records of dept

-- ----------------------------
-- Table structure for dept_notice
-- ----------------------------
DROP TABLE IF EXISTS dept_notice;
CREATE TABLE dept_notice (
  id int(11) NOT NULL,
  nid int(11) NOT NULL,
  did int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_notice
-- ----------------------------
INSERT INTO dept_notice VALUES ('1001', '1001', '1001');

-- ----------------------------
-- Table structure for emp
-- ----------------------------

-- ----------------------------
-- Records of emp
-- ----------------------------

-- ----------------------------
-- Table structure for emp_notice
-- ----------------------------
DROP TABLE IF EXISTS emp_notice;
CREATE TABLE emp_notice (
  id int(11) NOT NULL AUTO_INCREMENT,
  nid int(11) DEFAULT NULL,
  eid int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_notice
-- ----------------------------
INSERT INTO emp_notice VALUES ('1001', '1001', '1001');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS notice;
CREATE TABLE notice (
  id int(11) NOT NULL AUTO_INCREMENT,
  img varchar(255) DEFAULT NULL,
  name varchar(255) NOT NULL,
  datefrom date NOT NULL,
  dateto date NOT NULL,
  content varchar(255) NOT NULL,
  date date DEFAULT NULL,
  count int(11) unsigned zerofill DEFAULT NULL,
  lookName varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO notice VALUES ('1004', '44ccbb1c-8f2f-449d-b24b-afc972f08c5a.jpg', '放火', '1995-01-21', '1998-02-23', '挺暖和', null, '00000000000', '张三');
INSERT INTO notice VALUES ('1005', '874b07cd-2b9f-4949-9ada-9094531c6977.jpg', '清洁', '1995-01-21', '1998-02-23', '很干净', null, '00000000000', '李四');
INSERT INTO notice VALUES ('1006', '66396480-cc71-4180-a5cb-88130a0049ee.jpg', '阿姨', '1995-01-21', '1998-02-23', '很请老', null, '00000000000', '王五');
INSERT INTO notice VALUES ('1007', 'ce3ec2f1-03dd-43cf-8831-ea5b4d0ce4f2.jpg', '清扫', '1995-01-21', '1998-02-23', '很干净', null, '00000000000', '吴菲菲');
INSERT INTO notice VALUES ('1009', '2696a2a4-fac0-4a47-acbd-f4b549d9d5f8.jpg', '清理', '3300-01-21', '1998-02-23', '很干净', null, '00000000000', '王大撒');

-- ----------------------------
-- Table structure for noticeclass
-- ----------------------------
DROP TABLE IF EXISTS noticeclass;
CREATE TABLE noticeclass (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  remark varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticeclass
-- ----------------------------
INSERT INTO noticeclass VALUES ('1084', '王企鹅', '萨达');
INSERT INTO noticeclass VALUES ('1093', 'sdf', '2345');
INSERT INTO noticeclass VALUES ('1095', '士大夫', '啥第三方');
INSERT INTO noticeclass VALUES ('1102', '萨达', '啥饭');
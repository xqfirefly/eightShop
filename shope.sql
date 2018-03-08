/*
Navicat MySQL Data Transfer

Source Server         : zxy
Source Server Version : 50549
Source Host           : 127.0.0.1:3306
Source Database       : shope

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2017-09-21 16:18:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(35) DEFAULT NULL,
  `provience` varchar(10) NOT NULL,
  `city` varchar(12) NOT NULL,
  `detail` varchar(40) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '河北', '唐山', '高新区大学生公寓村', '15100577017');

-- ----------------------------
-- Table structure for administrators
-- ----------------------------
DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `jursdiction` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrators
-- ----------------------------
INSERT INTO `administrators` VALUES ('1', 'tom', '123456', '1');
INSERT INTO `administrators` VALUES ('2', 'root', '2333', '3');

-- ----------------------------
-- Table structure for main_class
-- ----------------------------
DROP TABLE IF EXISTS `main_class`;
CREATE TABLE `main_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main_class
-- ----------------------------
INSERT INTO `main_class` VALUES ('1', '数码');
INSERT INTO `main_class` VALUES ('2', '书籍');
INSERT INTO `main_class` VALUES ('3', '生活用品');

-- ----------------------------
-- Table structure for next_class
-- ----------------------------
DROP TABLE IF EXISTS `next_class`;
CREATE TABLE `next_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_id` int(11) DEFAULT NULL,
  `name` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_id` (`main_id`),
  CONSTRAINT `next_class_ibfk_1` FOREIGN KEY (`main_id`) REFERENCES `main_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of next_class
-- ----------------------------
INSERT INTO `next_class` VALUES ('1', '1', '手机');
INSERT INTO `next_class` VALUES ('2', '2', '哲学');
INSERT INTO `next_class` VALUES ('3', '3', '厨房用品');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(35) DEFAULT NULL,
  `pro_id` varchar(35) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `address` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '1', '2891B21E9C514DA9861D9D320F0C65D4', '1', null);

-- ----------------------------
-- Table structure for product_list
-- ----------------------------
DROP TABLE IF EXISTS `product_list`;
CREATE TABLE `product_list` (
  `id` varchar(35) NOT NULL,
  `name` varchar(20) NOT NULL,
  `class_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `surplus_count` int(11) DEFAULT NULL,
  `saled_count` int(11) DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  `cdate` mediumtext,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `next_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_list
-- ----------------------------
INSERT INTO `product_list` VALUES ('1DD2FD2B6CC24B5B97B9F1CA406B5721', '锤子', '1', '1500', '50', '0', '都是情怀', '1505979942865');
INSERT INTO `product_list` VALUES ('8B3AB64CCE4D48A283EEC63208BDB5A6', '华为', '1', '2', '100', '0', '华为国产大品牌', '1505351773558');
INSERT INTO `product_list` VALUES ('DE65FBCD2BDD445199A257DB96695E75', '《中国哲学史》', '2', '90', '300', '0', '中国哲学的发展历程', '1505310592840');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `pasword` varchar(25) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'mike', '12345', '15100577017', '10266@qq.com');

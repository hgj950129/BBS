CREATE DATABASE BBS;

USE BBS;

# 用户表
CREATE TABLE `user` (
  `UID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `UName` varchar(20) NOT NULL COMMENT '用户昵称',
  `UPassword` varchar(20) NOT NULL COMMENT '密码',
  `UEmail` varchar(20) NOT NULL COMMENT '邮箱',
  `UBirthday` datetime DEFAULT NULL COMMENT '生日',
  `USex` int(1) NOT NULL DEFAULT '1' COMMENT '性别默认男',
  `UHead` blob COMMENT '头像',
  `URegDate` datetime NOT NULL COMMENT '注册日期',
  `UIsSectioner` int(1) DEFAULT '1' COMMENT '是否版主默认否',
  PRIMARY KEY (`UID`),
  UNIQUE KEY `UName` (`UName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#版块表
CREATE TABLE `forum` (
  `SID` int(11) NOT NULL AUTO_INCREMENT COMMENT '版块ID',
  `SName` varchar(30) NOT NULL COMMENT '版块名称',
  `SMasterID` int(11) NOT NULL COMMENT '版主ID',
  `SProfile` varchar(20) DEFAULT NULL COMMENT '版块主题',
  `SStatement` varchar(50) DEFAULT NULL COMMENT '本版留言',
  `STopicCount` int(11) DEFAULT NULL COMMENT '发贴数',
  `SClickCoount` int(11) DEFAULT NULL COMMENT '点击率',
  PRIMARY KEY (`SID`),
  UNIQUE KEY `SName` (`SName`),
  KEY `SMasterID` (`SMasterID`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`SMasterID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#发贴表
CREATE TABLE `topic` (
  `TID` int(11) NOT NULL AUTO_INCREMENT COMMENT '发贴表ID',
  `TSID` int(11) NOT NULL COMMENT '所在版块',
  `TUID` int(11) NOT NULL COMMENT '发贴人',
  `TReplyCount` int(11) DEFAULT NULL COMMENT '回复数',
  `TTopic` varchar(30) NOT NULL COMMENT '标题',
  `TContents` text NOT NULL COMMENT '正文',
  `TTime` datetime NOT NULL COMMENT '发贴时间',
  `TClickCoount` int(11) DEFAULT NULL COMMENT '点击率',
  `TFlag` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`TID`),
  KEY `TSID` (`TSID`),
  KEY `TUID` (`TUID`),
  CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`TSID`) REFERENCES `forum` (`SID`),
  CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`TUID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#跟贴表
CREATE TABLE `reply` (
  `RID` int(11) NOT NULL AUTO_INCREMENT COMMENT '跟贴表ID',
  `RTID` int(11) NOT NULL COMMENT '回复主贴ID',
  `RSID` int(11) NOT NULL COMMENT '所在版块ID',
  `RUID` int(11) NOT NULL COMMENT '发贴人ID',
  `RContent` text NOT NULL COMMENT '回帖内容',
  `Rtime` datetime NOT NULL COMMENT '回贴时间',
  PRIMARY KEY (`RID`),
  KEY `RTID` (`RTID`),
  KEY `RSID` (`RSID`),
  KEY `RUID` (`RUID`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`RTID`) REFERENCES `topic` (`TID`),
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`RSID`) REFERENCES `forum` (`SID`),
  CONSTRAINT `reply_ibfk_3` FOREIGN KEY (`RUID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
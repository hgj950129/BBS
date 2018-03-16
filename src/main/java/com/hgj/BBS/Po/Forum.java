package com.hgj.BBS.Po;

public class Forum {
    /*
        版块表
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
     */
    private int SID;
    private String SName;
    private int SMasterID;
    private String SProfile;
    private String SStatement;
    private int STopicCount;
    private int SClickCoount;

    public int getSID() {
        return SID;
    }

    public String getSName() {
        return SName;
    }

    public int getSMasterID() {
        return SMasterID;
    }

    public String getSProfile() {
        return SProfile;
    }

    public String getSStatement() {
        return SStatement;
    }

    public int getSTopicCount() {
        return STopicCount;
    }

    public int getSClickCoount() {
        return SClickCoount;
    }

    public void setSID(int SID) {
        this.SID = SID;
    }

    public void setSName(String SName) {
        this.SName = SName;
    }

    public void setSMasterID(int SMasterID) {
        this.SMasterID = SMasterID;
    }

    public void setSProfile(String SProfile) {
        this.SProfile = SProfile;
    }

    public void setSStatement(String SStatement) {
        this.SStatement = SStatement;
    }

    public void setSTopicCount(int STopicCount) {
        this.STopicCount = STopicCount;
    }

    public void setSClickCoount(int SClickCoount) {
        this.SClickCoount = SClickCoount;
    }
}

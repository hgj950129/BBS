package com.hgj.BBS.Po;

import java.util.Date;

public class Topic {
    /*
        #发贴表
            CREATE TABLE `topic` (
              `TID` int(11) NOT NULL AUTO_INCREME   NT COMMENT '发贴表ID',
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
    */
    private int TID;
    private int TSID;
    private int TUID;
    private int TReplyCount;
    private String TTopic;
    private String TContents;
    private String TTime;
    private int TClickCoount;
    private int TFlag;

    public void setTID(int TID) {
        this.TID = TID;
    }

    public void setTSID(int TSID) {
        this.TSID = TSID;
    }

    public void setTUID(int TUID) {
        this.TUID = TUID;
    }

    public void setTReplyCount(int TReplyCount) {
        this.TReplyCount = TReplyCount;
    }

    public void setTTopic(String TTopic) {
        this.TTopic = TTopic;
    }

    public void setTContents(String TContents) {
        this.TContents = TContents;
    }

    public String getTContents() {
        return TContents;
    }

    public void setTClickCoount(int TClickCoount) {
        this.TClickCoount = TClickCoount;
    }

    public void setTFlag(int TFlag) {
        this.TFlag = TFlag;
    }

    public int getTID() {
        return TID;
    }

    public int getTSID() {
        return TSID;
    }

    public int getTUID() {
        return TUID;
    }

    public int getTReplyCount() {
        return TReplyCount;
    }

    public String getTTopic() {
        return TTopic;
    }

    public int getTClickCoount() {
        return TClickCoount;
    }

    public int getTFlag() {
        return TFlag;
    }

    public String getTTime() {
        return TTime;
    }

    public void setTTime(String TTime) {
        this.TTime = TTime;
    }

}

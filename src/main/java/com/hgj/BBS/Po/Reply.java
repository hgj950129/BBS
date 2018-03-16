package com.hgj.BBS.Po;

import java.util.Date;

public class Reply {
    /*
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
     */
    private int RID;
    private int RTID;
    private int RSID;
    private int RUID;
    private String RContent;
    private String Rtime;

    public void setRID(int RID) {
        this.RID = RID;
    }

    public void setRTID(int RTID) {
        this.RTID = RTID;
    }

    public void setRSID(int RSID) {
        this.RSID = RSID;
    }

    public void setRUID(int RUID) {
        this.RUID = RUID;
    }

    public void setRContent(String RContent) {
        this.RContent = RContent;
    }

    public int getRID() {
        return RID;
    }

    public int getRTID() {
        return RTID;
    }

    public int getRSID() {
        return RSID;
    }

    public int getRUID() {
        return RUID;
    }

    public String getRContent() {
        return RContent;
    }

    public String getRtime() {
        return Rtime;
    }

    public void setRtime(String rtime) {
        Rtime = rtime;
    }

    @Override
    public String toString() {
        return "Reply{" +
                "RID=" + RID +
                ", RTID=" + RTID +
                ", RSID=" + RSID +
                ", RUID=" + RUID +
                ", RContent='" + RContent + '\'' +
                ", Rtime='" + Rtime + '\'' +
                '}';
    }
}

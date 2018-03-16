package com.hgj.BBS.Po;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.Date;

public class User {
    /*
     用户表
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
            */
    private int UID;
    private String UName;
    private String UPassword;
    private String UEmail;
    private String UBirthday;
    private int USex;
    private String UHead;
    private String URegDate;
    private int UIsSectioner;

    public void setUBirthday(String UBirthday) {
        this.UBirthday = UBirthday;
    }

    public void setURegDate(String URegDate) {
        this.URegDate = URegDate;
    }

    public void setUID(int UID) {
        this.UID = UID;
    }

    public void setUName(String UName) {
        String pattern="[A-Za-z0-9_\\-\\u4e00-\\u9fa5]+$";
        Pattern r=Pattern.compile(pattern);
        Matcher matcher=r.matcher(UName);
        if (matcher.matches()){
            if (UName.length()<3||UName.length()>12){
                return;
            } else this.UName = UName;
        }else return;
    }

    public void setUPassword(String UPassword) {
        String regex="^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){7,15}$";
        Pattern pattern=Pattern.compile(regex);
        Matcher matcher=pattern.matcher(UPassword);
        if (matcher.matches()){
            if (UPassword.length()<8||UPassword.length()>15){
                return;
            } else this.UPassword = UPassword;
        }else return;
    }

    public void setUEmail(String UEmail) {
        String patten="\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
        Pattern p=Pattern.compile(patten);
        Matcher matcher=p.matcher(UEmail);
        if (matcher.matches()){
//            System.out.println(UEmail);
            if (UEmail.length()<8||UEmail.length()>30){
                return;
            } else this.UEmail = UEmail;
        }else return;
    }

    public void setUSex(int USex) {
        if (USex==1||USex==2){
            this.USex = USex;
        }else return;
    }

    public void setUHead(String UHead) {
        this.UHead = UHead;
    }

    public void setUIsSectioner(int UIsSectioner) {
        this.UIsSectioner = UIsSectioner;
    }

    public int getUID() {
        return UID;
    }

    public String getUName() {
        return UName;
    }

    public String getUPassword() {
        return UPassword;
    }

    public String getUEmail() {
        return UEmail;
    }

    public int getUSex() {
        return USex;
    }

    public String getUHead() {
        return UHead;
    }

    public int getUIsSectioner() {
        return UIsSectioner;
    }

    public String getUBirthday() {
        return UBirthday;
    }

    public String getURegDate() {
        return URegDate;
    }

    @Override
    public String toString() {
        return "User{" +
                "UID=" + UID +
                ", UName='" + UName + '\'' +
                ", UPassword='" + UPassword + '\'' +
                ", UEmail='" + UEmail + '\'' +
                ", UBirthday='" + UBirthday + '\'' +
                ", USex=" + USex +
                ", UHead='" + UHead + '\'' +
                ", URegDate='" + URegDate + '\'' +
                ", UIsSectioner=" + UIsSectioner +
                '}';
    }
}

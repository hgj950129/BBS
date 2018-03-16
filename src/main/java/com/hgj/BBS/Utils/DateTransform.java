package com.hgj.BBS.Utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTransform {
    //日期转换为对应格式
    public static SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm");
    //处理注册请求的生日字段格式
    public static String transformStr(String date)  {
        String replace=date.replace("T", " ");
        return replace;
    }
}

package com.hgj.BBS.Service.Impl;

import com.hgj.BBS.Dao.UserMapper;
import com.hgj.BBS.Po.User;
import com.hgj.BBS.Service.UserService;
import com.hgj.BBS.Utils.DateTransform;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public List<User> finAll() {
        return userMapper.findAll();
    }

    @Override
    public boolean register(String uname, String uemail, String upassword, String ubirthday, int usex) {
        Date date=new Date();
        String RegDate= DateTransform.simpleDateFormat.format(date);
        String UbirDate=DateTransform.transformStr(ubirthday);
        User user=new User();
        user.setUName(uname);
        user.setUEmail(uemail);
        user.setUPassword(upassword);
        user.setUSex(usex);
        user.setURegDate(RegDate);
        user.setUBirthday(UbirDate);
        try {
            userMapper.addUser(user);
        }catch (Exception e){
            return false;
        }
        return true;
    }

    @Override
    public User login(String uemail,String upassword) {
        User user=new User();
        user.setUEmail(uemail);
        user.setUPassword(upassword);
        return userMapper.findUserByName(user);
    }
}

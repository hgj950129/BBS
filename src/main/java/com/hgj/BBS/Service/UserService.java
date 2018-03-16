package com.hgj.BBS.Service;

import com.hgj.BBS.Po.User;
import java.util.List;

public interface UserService {
    List<User> finAll();
    boolean register(String uname,String uemail,String upassword,String ubirthday,int usex);
    User login(String uemail,String upassword);
}

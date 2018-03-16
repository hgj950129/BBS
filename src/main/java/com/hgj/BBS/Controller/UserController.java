package com.hgj.BBS.Controller;

import com.hgj.BBS.Po.User;
import com.hgj.BBS.Service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping("findAll")
    public String findAll(Model model){
        List<User> users=userService.finAll();
        model.addAttribute("userList",users);
        return "userList";
    }
    @RequestMapping("register")
    public String register(String uname,String uemail,String upassword,String ubirthday,int usex){
        boolean b= userService.register(uname,uemail,upassword,ubirthday,usex);
        if (b){
            return "success";
        }else {
            return "failToRegister";
        }
    }
    @RequestMapping("login")
    public String login(HttpServletRequest request, String uemail, String password,Model model){
        User user=userService.login(uemail,password);
        String Uname=null;
        try {
            Uname=user.getUName();
        }catch (NullPointerException e){
            model.addAttribute("error","密码错误");
            return "failTologin";
        }
        HttpSession session=request.getSession();
        session.setAttribute("username",Uname);
        session.setAttribute("userid",user.getUID());
        session.setMaxInactiveInterval(30*60);
        //30分钟内session无活动，将失效
        return "redirect:/";
    }
}

package com.hgj.BBS.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class ManageController {

    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("register")
    public String register(){
        return "register";
    }

    @RequestMapping("addTopic")
    public String addTopic(){
            return "addTopic";
    }

    @RequestMapping("failTologin")
    public String failTologin(Model model){
        model.addAttribute("error","系统检测到未登录，请登录");
        return "failTologin";
    }

}

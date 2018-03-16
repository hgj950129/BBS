package com.hgj.BBS.Controller;


import com.hgj.BBS.Service.TopicService;
import com.hgj.BBS.Service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/ajax")
public class AJAXController {
    @Resource
    private UserService userService;

    @Resource
    private TopicService topicService;

    @RequestMapping("findUserById")
    public void findUserById(){

    }

    @RequestMapping("findTopicById")
    public void findTopicById(){

    }

    @RequestMapping("ajaxtest")
    public void AJAXTest(String id, HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        System.out.println(id);
//        request.setAttribute("msg","success!");
        System.out.println(request.getRequestURI());
        PrintWriter printWriter=response.getWriter();
        printWriter.print("replyOk");
        model.addAttribute("result","replyOK");
    }
}
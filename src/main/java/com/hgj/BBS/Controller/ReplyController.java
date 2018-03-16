package com.hgj.BBS.Controller;

import com.hgj.BBS.Service.ReplyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/reply")
public class ReplyController {
    @Resource
    private ReplyService replyService;

    @RequestMapping("addreply")
    public String addReply(HttpServletRequest request,String RContent,int RTID){
        HttpSession session=request.getSession();
        int RUID=Integer.parseInt(String.valueOf(session.getAttribute("userid")));
        replyService.replyTopic(RContent,RTID,RUID);
        return "redirect:/";
    }
}

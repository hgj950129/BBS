package com.hgj.BBS.Controller;

import com.hgj.BBS.Po.Reply;
import com.hgj.BBS.Po.Topic;
import com.hgj.BBS.Service.ReplyService;
import com.hgj.BBS.Service.TopicService;
import com.hgj.BBS.Utils.DateTransform;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/topic")
public class TopicController {

    @Resource
    private TopicService topicService;

    @Resource
    private ReplyService replyService;

    @RequestMapping("findtop5")
    public String findtop5(Model model){
        List<Topic> topics=topicService.findtop5();
        model.addAttribute("topfive",topics);
        return "index";
    }

    @RequestMapping("findTopicById")
    public String findTopicById(Integer id,Model model){
        Topic topic=topicService.findTopicById(id);
        List<Reply> replyList=replyService.findByTopicId(id);
        model.addAttribute("topic",topic);
        model.addAttribute("replyList",replyList);
        return "content";
    }

    @RequestMapping("groupByForum")
    public String groupByForum(int tuid,Model model){
        List<Topic> topics=topicService.groupByForum(tuid);
        model.addAttribute("topics",topics);
        return "forum";
    }

    @RequestMapping("addTopic")
    public String addTopic(HttpServletRequest request,String topicname,int forum,String topicContents,Model model){
        HttpSession session=request.getSession();
        int userid= Integer.parseInt(String.valueOf(session.getAttribute("userid")));
        boolean b=topicService.newarticle(topicname,forum,topicContents,userid);
        if (b){
            return "forward:/";
        }
        return "";
    }
}

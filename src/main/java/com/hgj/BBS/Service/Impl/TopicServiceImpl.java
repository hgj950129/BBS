package com.hgj.BBS.Service.Impl;

import com.hgj.BBS.Dao.TopicMapper;
import com.hgj.BBS.Po.Topic;
import com.hgj.BBS.Service.TopicService;
import com.hgj.BBS.Utils.DateTransform;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class TopicServiceImpl implements TopicService{

    @Resource
    private TopicMapper topicMapper;

    @Override
    public List<Topic> findtop5() {
        return topicMapper.findTop5();
    }

    @Override
    public Topic findTopicById(int id) {
        return topicMapper.findTopicById(id);
    }

    @Override
    public List<Topic> groupByForum(int tuid) {
        return topicMapper.groupByForum(tuid);
    }

    @Override
    public boolean newarticle(String topicname, int forum, String topicContents,int userid) {
        Date date=new Date();
        String now=DateTransform.simpleDateFormat.format(date);
        Topic topic=new Topic();
        topic.setTTopic(topicname);
        topic.setTContents(topicContents);
        topic.setTUID(userid);
        topic.setTTime(now);
        topic.setTSID(forum);
        try {
            topicMapper.addTopic(topic);
        }catch (Exception e){
            return false;
        }
        return true;
    }

}

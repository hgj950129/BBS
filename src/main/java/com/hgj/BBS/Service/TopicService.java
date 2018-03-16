package com.hgj.BBS.Service;

import com.hgj.BBS.Po.Topic;

import java.util.List;

public interface TopicService {
    List<Topic> findtop5();
    Topic findTopicById(int id);
    List<Topic> groupByForum(int tuid);
    boolean newarticle(String topicname, int forum, String topicContents,int userid);
}

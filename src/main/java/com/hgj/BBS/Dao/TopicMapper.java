package com.hgj.BBS.Dao;

import com.hgj.BBS.Po.Topic;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TopicMapper {
    List<Topic> findTop5();
    Topic findTopicById(int id);
    List<Topic> groupByForum(int tuid);
    int addTopic(Topic topic);
}

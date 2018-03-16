package com.hgj.BBS.Service;

import com.hgj.BBS.Po.Reply;

import java.util.List;

public interface ReplyService {
    List<Reply> findByTopicId(int id);
    boolean replyTopic(String RContent,int RTID,int RUID);
}

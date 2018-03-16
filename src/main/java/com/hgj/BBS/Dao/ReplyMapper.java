package com.hgj.BBS.Dao;

import com.hgj.BBS.Po.Reply;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyMapper {
    List<Reply> findByTopicId(int id);
    int addReply(Reply reply);
}

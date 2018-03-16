package com.hgj.BBS.Service.Impl;

import com.hgj.BBS.Dao.ReplyMapper;
import com.hgj.BBS.Po.Reply;
import com.hgj.BBS.Service.ReplyService;
import com.hgj.BBS.Utils.DateTransform;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class ReplyServiceImpl implements ReplyService{
    @Resource
    private ReplyMapper replyMapper;

    @Override
    public List<Reply> findByTopicId(int id) {
        return replyMapper.findByTopicId(id);
    }

    @Override
    public boolean replyTopic(String RContent, int RTID, int RUID) {
        Date now=new Date();
        String date= DateTransform.simpleDateFormat.format(now);
        Reply reply=new Reply();
        reply.setRContent(RContent);
        reply.setRTID(RTID);
        reply.setRUID(RUID);
        reply.setRtime(date);
        try {
            replyMapper.addReply(reply);
        }catch (Exception e){
            return false;
        }
        return true;
    }
}

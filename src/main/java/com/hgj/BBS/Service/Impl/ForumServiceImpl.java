package com.hgj.BBS.Service.Impl;

import com.hgj.BBS.Dao.ForumMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(rollbackFor = Exception.class)
public class ForumServiceImpl {
    @Resource
    private ForumMapper forumMapper;
}

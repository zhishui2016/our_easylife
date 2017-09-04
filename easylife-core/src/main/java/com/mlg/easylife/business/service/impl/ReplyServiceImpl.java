package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.utils.UserContext;
import com.mlg.easylife.business.domain.Community;
import com.mlg.easylife.business.domain.Reply;
import com.mlg.easylife.business.mapper.CommunityMapper;
import com.mlg.easylife.business.mapper.ReplyMapper;
import com.mlg.easylife.business.query.ReplyQueryObject;
import com.mlg.easylife.business.service.IReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 黄振强 on 2017/6/4.
 */
@Service
public class ReplyServiceImpl implements IReplyService {
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private CommunityMapper communityMapper;
    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int insert(Reply reply) {
        //先查询有没有回复
        ReplyQueryObject qo = new ReplyQueryObject();
        int count = replyMapper.queryByCount(qo);
        Reply re = new Reply();
        re.setReply(reply.getReply());
        re.setReplyTime(new Date());
        re.setReplier(UserContext.getCurrent());

        //查询回复数
        Community community = communityMapper.selectByPrimaryKey(reply.getId());
        //获取回复数
        int replyTimes = community.getReplyTimes();
        Community com = new Community();
        Long community_id = reply.getId();
        replyTimes =  replyTimes + 1;
        //改变数据
        communityMapper.updateReplyTimesByPrimaryKey(replyTimes,community_id);
        com.setId(community_id);
        re.setCommunity(community);
        return replyMapper.insert(re);
    }

    @Override
    public Reply selectByPrimaryKey(Long id) {
        return null;
    }

    @Override
    public int updateByPrimaryKey(Reply record) {
        return 0;
    }

    @Override
    public PageResult query(ReplyQueryObject qo) {
        // 总条数
        int count = replyMapper.queryByCount(qo);
        if (count > 0) {
            List<RealAuth> query = replyMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }
}

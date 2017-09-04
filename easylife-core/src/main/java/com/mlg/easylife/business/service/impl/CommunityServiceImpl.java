package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.domain.Userinfo;
import com.mlg.easylife.base.mapper.UserinfoMapper;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.BitStatesUtils;
import com.mlg.easylife.base.utils.UserContext;
import com.mlg.easylife.business.domain.Community;
import com.mlg.easylife.business.domain.Glyphicon;
import com.mlg.easylife.business.mapper.CommunityMapper;
import com.mlg.easylife.business.mapper.GlyphiconMapper;
import com.mlg.easylife.business.mapper.ReplyMapper;
import com.mlg.easylife.business.query.CommunityQueryObject;
import com.mlg.easylife.business.service.ICommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 社区服务
 * Created by 黄振强 on 2017/5/25.
 */
@Service
public class CommunityServiceImpl implements ICommunityService {
    @Autowired
    private CommunityMapper communityMapper;
    @Autowired
    private IUserinfoService iUserinfoService;
    @Autowired
    private UserinfoMapper userinfoMapper;
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private GlyphiconMapper glyphiconMapper;
    @Override
    public int deleteByPrimaryKey(Long id) {
        return 0;
    }

    @Override
    public int insert(Community community) {
        //获取发表人
        Userinfo current = iUserinfoService.getCurrent();
        //创建一个消息对象
        Community com= new Community();
        com.setApplier(UserContext.getCurrent());
        com.setContent(community.getContent());
        com.setImagePath(community.getImagePath());
        Date date = new Date();
        com.setPublishTime(date);
        //保存
        return communityMapper.insert(com);
    }

    @Override
    public Community selectByPrimaryKey(Long id) {
        return null;
    }


    public PageResult query(CommunityQueryObject qo) {
        // 总条数
        int count = communityMapper.queryByCount(qo);
        if (count > 0) {
            List<Community> query = communityMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    /**
     * 好点赞
     * @param id
     */
    @Override
    public int addGoodGlyphicon(Long id) {
        //查询用户
        Userinfo userinfo = userinfoMapper.selectByPrimaryKey(UserContext.getCurrent()
                .getId());
        //获取用户的状态
        userinfo.addState(BitStatesUtils.OP_HAS_ADD_GOODGLYPHICON);
        userinfoMapper.updateByPrimaryKey(userinfo);
        //先查询当前用户有没有点过赞
        Community oldcommunity = communityMapper.selectByUserinfoAndGlyphicon(UserContext.getCurrent().getId(),id);
        if(oldcommunity==null){
            //查询本条说说
            Community thisCommunity = communityMapper.selectByPrimaryKey(id);
            //获取点赞状态
            int state = thisCommunity.getState();
            int goodTimes = thisCommunity.getGoodTimes();
            goodTimes = goodTimes + 1;
            state = state +1;
            communityMapper.updateByPrimaryKeyToGood(goodTimes,state,id);
            //创建点赞对象
            Glyphicon glyphicon = new Glyphicon();
            glyphicon.setGoodTimes(1);
            glyphicon.setCommunity_id(id);
            glyphicon.setUserinfo_id(UserContext.getCurrent().getId());
            return glyphiconMapper.insert(glyphicon);
        }
        return 0;
    }
    /**
     * 一般点赞
     * @param id
     */
    @Override
    public int addCommonGlyphicon(Long id) {
        //查询用户
        Userinfo userinfo = userinfoMapper.selectByPrimaryKey(UserContext.getCurrent()
                .getId());
        //获取用户的状态
        userinfo.addState(BitStatesUtils.OP_HAS_ADD_COMMONGLYPHICON);
        userinfoMapper.updateByPrimaryKey(userinfo);
        //先查询当前用户有没有点过赞
        Community oldcommunity = communityMapper.selectByUserinfoAndGlyphicon(UserContext.getCurrent().getId(),id);
        if(oldcommunity==null){
            //查询本条说说
            Community thisCommunity = communityMapper.selectByPrimaryKey(id);
            //获取点赞状态
            int state = thisCommunity.getState();
            int commonTimes = thisCommunity.getCommonTimes();
            commonTimes = commonTimes + 1;
            state = state +1;
            communityMapper.updateByPrimaryKeyToCommon(commonTimes,state,id);
            //创建点赞对象
            Glyphicon glyphicon = new Glyphicon();
            glyphicon.setGoodTimes(1);
            glyphicon.setCommunity_id(id);
            glyphicon.setUserinfo_id(UserContext.getCurrent().getId());
            return glyphiconMapper.insert(glyphicon);
        }
        return 0;
    }
    /**
     * 差点赞
     * @param id
     */
    @Override
    public int addBadGlyphicon(Long id) {
        //查询用户
        Userinfo userinfo = userinfoMapper.selectByPrimaryKey(UserContext.getCurrent()
                .getId());
        //获取用户的状态
        userinfo.addState(BitStatesUtils.OP_HAS_ADD_BADGLYPHICON);
        userinfoMapper.updateByPrimaryKey(userinfo);
        //先查询当前用户有没有点过赞
        Community oldcommunity = communityMapper.selectByUserinfoAndGlyphicon(UserContext.getCurrent().getId(),id);
        if(oldcommunity==null){
            //查询本条说说
            Community thisCommunity = communityMapper.selectByPrimaryKey(id);
            //获取点赞状态
            int state = thisCommunity.getState();
            int badTimes = thisCommunity.getBadTimes();
            badTimes = badTimes + 1;
            state = state +1;
            communityMapper.updateByPrimaryKeyToBad(badTimes,state,id);
            //创建点赞对象
            Glyphicon glyphicon = new Glyphicon();
            glyphicon.setGoodTimes(1);
            glyphicon.setCommunity_id(id);
            glyphicon.setUserinfo_id(UserContext.getCurrent().getId());
            return glyphiconMapper.insert(glyphicon);
        }
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Community record) {
        return 0;
    }
}

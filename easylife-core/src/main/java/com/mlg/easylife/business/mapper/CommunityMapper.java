package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Community;
import com.mlg.easylife.business.query.CommunityQueryObject;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommunityMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Community community);

    Community selectByPrimaryKey(Long id);

    //分页相关的查询
    int queryByCount(CommunityQueryObject qo);

    List<Community>query(CommunityQueryObject qo);

    int updateByPrimaryKey(Community record);

    int updateReplyTimesByPrimaryKey(@Param("replyTimes")int goodTimes , @Param("id")Long id);

    int updateByPrimaryKeyToGood(@Param("goodTimes")int goodTimes ,@Param("state")int state,@Param("id")Long id);

    int updateByPrimaryKeyToCommon(@Param("commonTimes")int goodTimes , @Param("state")int state, @Param("id")Long id);

    int updateByPrimaryKeyToBad(@Param("badTimes")int goodTimes , @Param("state")int state, @Param("id")Long id);

    Community selectByUserinfoAndGlyphicon(@Param("userinfo_id")Long userinfo_id, @Param("community_id")Long glyphicon_id);
}
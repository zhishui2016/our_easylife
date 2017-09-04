package com.mlg.easylife.business.mapper;

import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.business.domain.Reply;
import com.mlg.easylife.business.query.ReplyQueryObject;

import java.util.List;

public interface ReplyMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Reply record);

    Reply selectByPrimaryKey(Long id);

    int updateByPrimaryKey(Reply record);


    //分页相关的查询
    int queryByCount(ReplyQueryObject qo);

    List<RealAuth>query(ReplyQueryObject qo);


}
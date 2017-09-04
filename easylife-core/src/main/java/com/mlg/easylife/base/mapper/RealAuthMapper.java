package com.mlg.easylife.base.mapper;


import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.base.query.RealAuthQueryObject;

import java.util.List;

public interface RealAuthMapper {

    int insert(RealAuth record);

    RealAuth selectByPrimaryKey(Long id);

    int updateByPrimaryKey(RealAuth record);
    
    
    //分页相关的查询
    int queryByCount(RealAuthQueryObject qo);
    
    List<RealAuth>query(RealAuthQueryObject qo);
}
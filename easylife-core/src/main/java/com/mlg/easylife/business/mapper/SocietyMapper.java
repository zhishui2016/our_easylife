package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Society;
import com.mlg.easylife.business.query.SocietyQueryObject;

import java.util.List;

public interface SocietyMapper {
    int deleteAll();

    int insert(Society record);

    Society selectByPrimaryKey(Long id);

    List<Society> selectAll();

    int updateByPrimaryKey(Society record);

    //分页相关的查询
    int queryByCount(SocietyQueryObject qo);

    List<Society>query(SocietyQueryObject qo);


    List<String> selectForSourceUrl();
}
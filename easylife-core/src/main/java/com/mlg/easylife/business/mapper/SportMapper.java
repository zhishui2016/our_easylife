package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Sport;
import com.mlg.easylife.business.query.SportQueryObject;

import java.util.List;

public interface SportMapper {
    int deleteAll();

    int insert(Sport record);

    Sport selectByPrimaryKey(Long id);

    List<Sport> selectAll();

    int updateByPrimaryKey(Sport record);

    //分页相关的查询
    int queryByCount(SportQueryObject qo);

    List<Sport>query(SportQueryObject qo);


    List<String> selectForSourceUrl();
}
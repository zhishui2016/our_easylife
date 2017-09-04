package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Science;
import com.mlg.easylife.business.query.ScienceQueryObject;

import java.util.List;

public interface ScienceMapper {
    int deleteAll();

    int insert(Science record);

    Science selectByPrimaryKey(Long id);

    List<Science> selectAll();

    int updateByPrimaryKey(Science record);

    //分页相关的查询
    int queryByCount(ScienceQueryObject qo);

    List<Science>query(ScienceQueryObject qo);


    List<String> selectForSourceUrl();
}
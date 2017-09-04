package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Popular;
import com.mlg.easylife.business.query.PopularQueryObject;

import java.util.List;

public interface PopularMapper {
    int deleteAll();

    int insert(Popular record);

    Popular selectByPrimaryKey(Long id);

    List<String> selectForSourceUrl();

    List<Popular> selectAll();

    int updateByPrimaryKey(Popular record);

    //分页相关的查询
    int queryByCount(PopularQueryObject qo);

    List<Popular>query(PopularQueryObject qo);


}
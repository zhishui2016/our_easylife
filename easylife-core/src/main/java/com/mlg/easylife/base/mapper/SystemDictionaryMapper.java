package com.mlg.easylife.base.mapper;

import com.mlg.easylife.base.domain.SystemDictionary;
import com.mlg.easylife.base.query.SystemDictionaryQueryObject;

import java.util.List;


public interface SystemDictionaryMapper {

    int insert(SystemDictionary record);

    SystemDictionaryMapper selectByPrimaryKey(Long id);

    List<SystemDictionary> selectAll();

    int updateByPrimaryKey(SystemDictionary record);
    
    int queryForCount(SystemDictionaryQueryObject qo);
    
    List<SystemDictionary>query(SystemDictionaryQueryObject qo);
}
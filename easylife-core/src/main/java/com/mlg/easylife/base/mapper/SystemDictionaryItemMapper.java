package com.mlg.easylife.base.mapper;

import com.mlg.easylife.base.domain.SystemDictionaryItem;
import com.mlg.easylife.base.query.SystemDictionaryQueryObject;

import java.util.List;


public interface SystemDictionaryItemMapper {

    int insert(SystemDictionaryItem record);

    SystemDictionaryItem selectByPrimaryKey(Long id);

    List<SystemDictionaryItem> selectByParentSn(String sn);

    int updateByPrimaryKey(SystemDictionaryItem record);
    
    int queryForCount(SystemDictionaryQueryObject qo);
    
    List<SystemDictionaryItem>query(SystemDictionaryQueryObject qo);
    
}
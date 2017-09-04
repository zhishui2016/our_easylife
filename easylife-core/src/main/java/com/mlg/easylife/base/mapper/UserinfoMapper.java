package com.mlg.easylife.base.mapper;

import com.mlg.easylife.base.domain.Userinfo;

import java.util.List;
import java.util.Map;

public interface UserinfoMapper {

    int insert(Userinfo record);

    Userinfo selectByPrimaryKey(Long id);

    int updateByPrimaryKey(Userinfo userinfo);

	List<Map<String, Object>> complement(String keyword);

    Userinfo selectByRealName(String realName);
}
package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Glyphicon;

import java.util.List;

public interface GlyphiconMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Glyphicon glyphicon);

    Glyphicon selectByPrimaryKey(Long id);

    List<Glyphicon> selectAll();

    int updateByPrimaryKey(Glyphicon record);
}
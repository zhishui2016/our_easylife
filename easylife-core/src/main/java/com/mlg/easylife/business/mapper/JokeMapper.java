package com.mlg.easylife.business.mapper;

import com.mlg.easylife.business.domain.Joke;
import com.mlg.easylife.business.query.JokeQueryObject;

import java.util.List;

public interface JokeMapper {
    int deleteAll();

    int insert(Joke record);

    Joke selectByPrimaryKey(Long id);

    List<Joke> selectAll();

    int updateByPrimaryKey(Joke record);

    //分页相关的查询
    int queryByCount(JokeQueryObject qo);

    List<Joke>query(JokeQueryObject qo);

    List<String> selectForPublish_time();
}
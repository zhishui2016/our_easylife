package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Joke;
import com.mlg.easylife.business.query.JokeQueryObject;

/**
 * Created by 黄振强 on 2017/6/12.
 */
public interface IJokeService {
    /**
     * 插入数据
     * @param joke
     * @return
     */
    int insert(Joke joke);

    /**
     * 清空数据
     * @return
     */
    int deletct();
    /**
     * 高级查询
     */

    PageResult query(JokeQueryObject qo);

    /**
     * 刷新
     * @return
     */
    int refresh();
}

package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Sport;
import com.mlg.easylife.business.query.SportQueryObject;

/**
 * Created by 黄振强 on 2017/6/12.
 */
public interface ISportService {
    /**
     * 插入数据
     * @param sport
     * @return
     */
    int insert(Sport sport);

    /**
     * 清空数据
     * @return
     */
    int deletct();
    /**
     * 高级查询
     */

    PageResult query(SportQueryObject qo);

    /**
     * 刷新
     * @return
     */
    int refresh();
}

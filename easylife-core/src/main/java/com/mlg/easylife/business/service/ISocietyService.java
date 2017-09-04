package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Society;
import com.mlg.easylife.business.query.SocietyQueryObject;

/**
 * Created by 黄振强 on 2017/6/12.
 */
public interface ISocietyService {
    /**
     * 插入数据
     * @param society
     * @return
     */
    int insert(Society society);

    /**
     * 清空数据
     * @return
     */
    int deletct();
    /**
     * 高级查询
     */

    PageResult query(SocietyQueryObject qo);

    /**
     * 刷新
     * @return
     */
    int refresh();
}

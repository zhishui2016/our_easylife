package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Popular;
import com.mlg.easylife.business.query.PopularQueryObject;

/**
 * Created by 黄振强 on 2017/6/12.
 */
public interface IPopularService {
    /**
     * 插入数据
     * @param popular
     * @return
     */
    int insert(Popular popular);

    /**
     * 清空数据
     * @return
     */
    int deletct();
    /**
     * 高级查询
     */

    PageResult query(PopularQueryObject qo);

    /**
     * 刷新
     * @return
     */
    int refresh();
}

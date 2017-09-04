package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Science;
import com.mlg.easylife.business.query.ScienceQueryObject;

/**
 * Created by 黄振强 on 2017/6/12.
 */
public interface IScienceService {
    /**
     * 插入数据
     * @param science
     * @return
     */
    int insert(Science science);

    /**
     * 清空数据
     * @return
     */
    int deletct();
    /**
     * 高级查询
     */

    PageResult query(ScienceQueryObject qo);

    /**
     * 刷新
     * @return
     */
    int refresh();
}

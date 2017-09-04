package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Community;
import com.mlg.easylife.business.query.CommunityQueryObject;

/**
 * Created by 黄振强 on 2017/5/25.
 */
public interface ICommunityService {
    int deleteByPrimaryKey(Long id);

    int insert(Community community);

    Community selectByPrimaryKey(Long id);


    int updateByPrimaryKey(Community record);

    /**
     * 高级查询
     */

    PageResult query(CommunityQueryObject qo);

    /**
     * 增加好评
     * @param id
     */
    int addGoodGlyphicon(Long id);

    /**
     * 增加一般好评
     * @param id
     */
    int addCommonGlyphicon(Long id);

    /**
     * 增加差好评
     * @param id
     */
    int addBadGlyphicon(Long id);
}

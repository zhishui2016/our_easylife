package com.mlg.easylife.business.service;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Reply;
import com.mlg.easylife.business.query.ReplyQueryObject;

/**
 * Created by 黄振强 on 2017/6/4.
 */
public interface IReplyService {

    int deleteByPrimaryKey(Long id);

    int insert(Reply reply);

    Reply selectByPrimaryKey(Long id);

    int updateByPrimaryKey(Reply record);
    /**
     * 高级查询
     */

    PageResult query(ReplyQueryObject qo);

}

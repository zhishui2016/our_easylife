package com.mlg.easylife.business.domain;

import com.mlg.easylife.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

/**
 * 点赞
 * Created by 黄振强 on 2017/6/6.
 */
@Setter
@Getter
public class Glyphicon extends BaseDomain{
    private int goodTimes;//好赞
    private int commonTimes;//中赞
    private int badTimes;//差赞
    private long community_id;//说说的id
    private long userinfo_id;//用户的id

}

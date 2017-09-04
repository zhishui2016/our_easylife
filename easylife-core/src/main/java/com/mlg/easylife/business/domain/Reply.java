package com.mlg.easylife.business.domain;

import com.mlg.easylife.base.domain.BaseDomain;
import com.mlg.easylife.base.domain.Logininfo;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 回复模型
 * Created by 黄振强 on 2017/6/4.
 */
@Setter
@Getter
public class Reply extends BaseDomain{
    private String reply;//回复
    private Date replyTime;//回复时间

    private Logininfo replier;// 回复人
    private Community community;//微博
}

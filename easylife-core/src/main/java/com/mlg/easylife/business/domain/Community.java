package com.mlg.easylife.business.domain;

import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.base.domain.BaseDomain;
import com.mlg.easylife.base.domain.Logininfo;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 社区对象
 * Created by 黄振强 on 2017/5/25.
 */
@Setter@Getter
public class Community extends BaseDomain {
    private static final int NORMAL_STATE = 0;

    private String content;//发表的内容
    private String imagePath;//图片路径
    private Date publishTime;//发表时间
    private int goodTimes;//好点赞次数
    private int commonTimes;//一般点赞次数
    private int badTimes;//差点赞次数
    private int replyTimes;//回复
    private int state=NORMAL_STATE;//状态,初始为没有点赞

    private Logininfo applier;// 申请人
    private Glyphicon glyphicon;// 点赞对象


    public String getJsonString() {
        Map<String, Object> json = new HashMap<>();
        json.put("id", id);
        json.put("username", applier.getUsername());
        json.put("publishTime", publishTime);
        json.put("goodTimes", goodTimes);
        json.put("commonTimes", commonTimes);
        json.put("badTimes", badTimes);
        json.put("imagepath", imagePath);

        return JSONObject.toJSONString(json);
    }
}

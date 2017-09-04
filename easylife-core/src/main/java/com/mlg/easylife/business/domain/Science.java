package com.mlg.easylife.business.domain;

import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * 科技
 * Created by 黄振强 on 2017/6/12.
 */
@Setter
@Getter
public class Science extends BaseDomain{
    private String title;//标题
    private String content;//内容
    private String images;//图片
    private String publishTime;//发布时间
    private String source;//来源
    private String sourceUrl;//URl

    public String getJsonString() {
        Map<String, Object> json = new HashMap<>();
        json.put("id", id);
        json.put("title", title);
        json.put("content", content);
        json.put("images", images);
        json.put("publishTime", publishTime);
        json.put("source", source);
        json.put("sourceUrl", sourceUrl);

        return JSONObject.toJSONString(json);
    }
}

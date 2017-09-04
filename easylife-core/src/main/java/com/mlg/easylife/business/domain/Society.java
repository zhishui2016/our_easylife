package com.mlg.easylife.business.domain;

import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.base.domain.BaseDomain;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * 社会
 * Created by 黄振强 on 2017/6/12.
 */
@Setter
@Getter
public class Society extends BaseDomain{
    private String title;//标题
    private String content;//内容
    private String sourceUrl;//图片
    private String publishTime;//发布时间
    private String source;//来源
    private String images;//来源

    public String getJsonString() {
        Map<String, Object> json = new HashMap<>();
        json.put("id", id);
        json.put("title", title);
        json.put("content", content);
        json.put("sourceUrl", sourceUrl);
        json.put("publishTime", publishTime);
        json.put("source", source);
        json.put("images", images);

        return JSONObject.toJSONString(json);
    }
}

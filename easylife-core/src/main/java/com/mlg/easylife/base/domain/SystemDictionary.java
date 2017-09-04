package com.mlg.easylife.base.domain;

import com.alibaba.fastjson.JSONObject;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * 系统字典目录
 * @author 黄振强
 *
 */
@Setter@Getter
public class SystemDictionary extends BaseDomain {
	private String sn;//分类密码
	private String title;//分类标题
	
	public String getJsonString(){
		Map<String , Object>json = new HashMap<>();
		json.put("id", id);
		json.put("sn", sn);
		json.put("title", title);
		return JSONObject.toJSONString(json);
	}
}

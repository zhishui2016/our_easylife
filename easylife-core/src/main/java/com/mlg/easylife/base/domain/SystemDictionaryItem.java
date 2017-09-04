package com.mlg.easylife.base.domain;

import com.alibaba.fastjson.JSONObject;
import lombok.Getter;
import lombok.Setter;

import java.util.HashMap;
import java.util.Map;

/**
 * 系统字典明细
 * 
 * @author 黄振强
 * 
 */
@Setter
@Getter
public class SystemDictionaryItem extends BaseDomain {
	private long parentId;// 字典明细对应的分类id
	private String title;// 字典明细显示的名称
	private String sequence;// 字典明细在该分类中的排序

	public String getJsonString() {
		Map<String, Object> json = new HashMap<String, Object>();
		json.put("id", id);
		json.put("parentId", parentId);
		json.put("title", title);
		json.put("sequence", sequence);
		return JSONObject.toJSONString(json);
	}
}

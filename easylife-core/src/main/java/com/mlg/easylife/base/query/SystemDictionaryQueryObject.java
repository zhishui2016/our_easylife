package com.mlg.easylife.base.query;

import org.springframework.util.StringUtils;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class SystemDictionaryQueryObject extends QueryObject {
	private String keyword;
	private Long parentId;

	public String getKeyword() {
		return StringUtils.hasLength(keyword) ? keyword : null;
	}
}

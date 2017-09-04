package com.mlg.easylife.base.query;

import lombok.Getter;
import lombok.Setter;

/**
 * Created by 黄振强 on 2016/9/13.
 */
@Setter
@Getter
public class QueryObject {
	private Integer currentPage = 1;// 当前页
	private Integer pageSize = 20;// 每页大小

	public Integer getStart() {
		return (this.currentPage - 1) * this.pageSize;
	}
}
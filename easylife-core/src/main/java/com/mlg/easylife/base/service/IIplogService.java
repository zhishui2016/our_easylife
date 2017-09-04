package com.mlg.easylife.base.service;

import com.mlg.easylife.base.query.IplogQueryObject;
import com.mlg.easylife.base.query.PageResult;

import java.util.Date;

public interface IIplogService {
	/**
	 * 高级分页与查询
	 * @param qo
	 * @return
	 */
	PageResult query(IplogQueryObject qo);
	
	/**
	 * 查询所有的登录时间
	 * @return
	 */
	Date getLastLogintime(String username);
}

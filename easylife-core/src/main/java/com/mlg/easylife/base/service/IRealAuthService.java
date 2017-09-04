package com.mlg.easylife.base.service;


import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.query.RealAuthQueryObject;

public interface IRealAuthService {

	RealAuth get(Long id);

	/**
	 * 提交实名认证审核
	 * 
	 * @param realAuth
	 */
	void apply(RealAuth realAuth);
	
	/**
	 * 高级查询
	 */

	PageResult query(RealAuthQueryObject qo);

	/**
	 * 审核
	 * @param id
	 * @param remark
	 * @param state
	 */
	void audit(Long id, String remark, int state);
}

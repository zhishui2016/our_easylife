package com.mlg.easylife.base.service;

import com.mlg.easylife.base.domain.Userinfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;


public interface IUserinfoService {
	
	/**
	 * 修改操作(处理乐观锁问题)
	 * @param userinfo
	 */
	void update(Userinfo userinfo);
	/**
	 * 添加用户
	 * @param userinfo
	 */
	void add(Userinfo userinfo);
	
	Userinfo getCurrent();
	/**
	 * 绑定手机号
	 * @param phoneNumber
	 * @param verifyCode
	 *//*
	void bindPhone(String phoneNumber, String verifyCode);
	*//**
	 * 绑定邮箱
	 * @param uuid
	 *//*
	void bindEmail(String uuid);*/
	/**
	 * 个人资料保存
	 * @param userinfo
	 */
	void updateBasicUserInfo(Userinfo userinfo);
	/**
	 * 查询
	 * @param id
	 * @return
	 */
	Userinfo get(Long id);
	
	/**
	 * 自动补全功能
	 * @param keyword
	 * @return
	 */
	List<Map<String, Object>> complement(String keyword);

	/**
	 * 修改个人设置
	 * @param userinfo
	 * @return
     */
	Map<String,Integer> updateInfoSetting(HttpServletResponse resp, HttpServletRequest request);

}

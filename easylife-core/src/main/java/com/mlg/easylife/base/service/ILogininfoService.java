package com.mlg.easylife.base.service;


import com.mlg.easylife.base.domain.Logininfo;

/**
 * 登录相关服务
 * @author 黄振强
 *
 */
public interface ILogininfoService {
	/**
	 * 注册保存
	 * @param username
	 * @param password
	 */
	void register(String username, String password);
	
	/**
	 * 验证用户名是否存在
	 * @param username
	 * @return
	 */
	boolean checkUsernameExist(String username);
	
	/**
	 * 登录操作
	 * @param username
	 * @param password
	 * @return
	 */
	Logininfo login(String username,String password,String ip,int userType);

	/**
	 * 初始化第一个超级管理员
     */
	void initAdmin();

	Logininfo getCurrent();

	int saveImages(String headImages,Long id);

    String makeQRCode(long id);

	/**
	 * 修改密码
	 * @param logininfo
	 * @return
     */
	int updatePassword(Logininfo logininfo);

}

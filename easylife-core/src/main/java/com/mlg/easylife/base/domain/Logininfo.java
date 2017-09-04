package com.mlg.easylife.base.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Logininfo extends BaseDomain {
	
	//用户正常登录状态
	public static final int STATE_NORMAL = 0;
	public static final int USER_NORMAL=0; //前台用户
	public static final int USER_MANAGER=1;//后台用户
	public static final String USER_HEADIMAGES="/upload/fdd92f7a-8c1b-4498-a396-c27e9c16253d.jpg";//后台用户

	private String username;

	private String password;

	private int state;

	private String headImages;//用户头像

	private int userType=USER_NORMAL;

}

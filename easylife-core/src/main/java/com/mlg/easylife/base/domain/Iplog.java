package com.mlg.easylife.base.domain;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 登录日志
 * 
 * @author 黄振强
 * 
 */

@Setter
@Getter
public class Iplog extends BaseDomain {
	public static final int STATE_SUCCESS = 0;// 登录成功
	public static final int STATE_FAILED = 1;// //登录失败

	private String ip;// ip地址
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date loginTime;// 登录时间
	private int state = STATE_SUCCESS;// 登录的状态
	private String username;// 登录人
	private int userType;
	private String type;// ip地址
	private String detail;// ip地址

	public String getStateDisplay() {
		return state == STATE_SUCCESS ? "登录成功!!" : "登录失败!!";
	}

	public String getUserTypeDisplay() {
		return userType == Logininfo.USER_MANAGER ? "管理员" : "普通用户";
	}
	
}

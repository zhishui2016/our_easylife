package com.mlg.easylife.base.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 包装:包装手机验证码,手机号码,发送时间
 * @author 黄振强
 *
 */
@Setter@Getter
public class VerifyCodeVO {
	private String code;
	private String phoneNumber;
	private Date sendTime;
	
	public VerifyCodeVO() {
		super();
	}
	public VerifyCodeVO(String code, String phoneNumber, Date sendTime) {
		super();
		this.code = code;
		this.phoneNumber = phoneNumber;
		this.sendTime = sendTime;
	}
	
}

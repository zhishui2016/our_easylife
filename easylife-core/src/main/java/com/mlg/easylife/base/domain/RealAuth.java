package com.mlg.easylife.base.domain;

import com.alibaba.fastjson.JSONObject;
import lombok.Getter;
import lombok.Setter;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 实名认证domain
 * 
 * @author 黄振强
 * 
 */
@Setter
@Getter
public class RealAuth extends BaseDomain {
	public static final int SEX_MALE = 0;
	public static final int SEX_FEMALE = 1;

	public static final int STATE_NORMAL = 0;// 正常
	public static final int STATE_AUDIT = 1;// 审核通过
	public static final int STATE_REJECT = 2;// 审核拒绝

	private String realName;// 真实姓名
	private String idNumber;// 身份证号码
	private int sex;// 性别
	private String bornDate;// 出生年月
	private String address;// 地址
	private String image1;// 正面照
	private String image2;// 反面照
	private int state;// 状态
	private Logininfo applier;// 申请人
	private Logininfo auditor;// 审核人
	private Date applyTime;// 申请时间
	private Date auditTime;// 审核时间
	private String remark;

	public String getSexDisplay() {
		return sex == SEX_MALE ? "男" : "女";
	}

	public String getStateDisplay() {
		switch (state) {
		case STATE_NORMAL:
			return "待审核";
		case STATE_AUDIT:
			return "已审核";
		case STATE_REJECT:
			return "审核拒绝";
		default:
			return "";
		}
	}

	public String getJsonString() {
		Map<String, Object> json = new HashMap<>();
		json.put("id", id);
		json.put("username", applier.getUsername());
		json.put("realName", realName);
		json.put("idNumber", idNumber);
		json.put("bornDate", bornDate);
		json.put("address", address);
		json.put("sex", getSexDisplay());
		json.put("image1", image1);
		json.put("image2", image2);

		return JSONObject.toJSONString(json);
	}

	/**
	 * 获取用户真实名字的隐藏字符串，只显示姓氏
	 * 
	 *            真实名字
	 * @return
	 */
	public String getAnonymousRealName() {
		if (StringUtils.hasLength(this.realName)) {
			int len = realName.length();
			String replace = "";
			replace += realName.charAt(0);
			for (int i = 1; i < len; i++) {
				replace += "*";
			}
			return replace;
		}
		return realName;
	}

	/**
	 * 获取用户身份号码的隐藏字符串
	 * 
	 * @return
	 */
	public String getAnonymousIdNumber() {
		if (StringUtils.hasLength(idNumber)) {
			int len = idNumber.length();
			String replace = "";
			for (int i = 0; i < len; i++) {
				if ((i > 5 && i < 10) || (i > len - 5)) {
					replace += "*";
				} else {
					replace += idNumber.charAt(i);
				}
			}
			return replace;
		}
		return idNumber;
	}

	/**
	 * 获取用户住址的隐藏字符串
	 * 
	 *            用户住址
	 * @return
	 */
	public String getAnonymousAddress() {
		if (StringUtils.hasLength(address) && address.length() > 4) {
			String last = address.substring(address.length() - 4,
					address.length());
			String stars = "";
			for (int i = 0; i < address.length() - 4; i++) {
				stars += "*";
			}
			return stars + last;
		}
		return address;
	}
}

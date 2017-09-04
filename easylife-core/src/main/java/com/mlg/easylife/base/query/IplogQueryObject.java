package com.mlg.easylife.base.query;

import com.mlg.easylife.base.utils.DateUtil;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * 登录日志高级查询
 * 
 * @author 黄振强
 * 
 */
@Setter
@Getter
public class IplogQueryObject extends QueryObject {
	private Date beginDate;// 开始时间
	private Date endDate;// 结束时间
	private String username;// 用户名
	private int state = -1;// 状态
	private int userType=-1;//登录用户的类型

	@DateTimeFormat(pattern="yyyy-MM-dd")
	public void setBeginDate(Date beginDate){
		this.beginDate=beginDate;
	}
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	public void setEndDate(Date endDate){
		this.endDate=endDate;
	}
	
	public Date getEndDate() {
		return endDate != null ? DateUtil.getEndTime(endDate) : null;
	}

	public String getUsername() {
		return StringUtils.hasLength(username) ? username : null;
	}
}

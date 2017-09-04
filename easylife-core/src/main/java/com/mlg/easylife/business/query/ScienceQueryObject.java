package com.mlg.easylife.business.query;

import com.mlg.easylife.base.query.QueryObject;
import com.mlg.easylife.base.utils.DateUtil;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Setter@Getter
public class ScienceQueryObject extends QueryObject {
	private Date beginDate;// 开始时间
	private Date endDate;// 结束时间
	private int state = -1;// 状态

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

}

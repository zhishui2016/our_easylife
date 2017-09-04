package com.mlg.easylife.base.service.impl;

import com.mlg.easylife.base.domain.Iplog;
import com.mlg.easylife.base.mapper.IplogMapper;
import com.mlg.easylife.base.query.IplogQueryObject;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.service.IIplogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class IplogServiceImpl implements IIplogService {

	@Autowired
	private IplogMapper iplogMapper;
	
	@Override
	public PageResult query(IplogQueryObject qo) {
		//总条数
		int count = iplogMapper.queryForCount(qo);
		if(count>0){
			List<Iplog> query = iplogMapper.query(qo);
			return new PageResult(count ,query , qo.getCurrentPage(),qo.getPageSize());
		}
		return PageResult.empty(qo.getPageSize());
	}

	@Override
	public Date getLastLogintime(String username) {
		Date loginTime = iplogMapper.getLastLogintime(username);
		return loginTime;
	}

}

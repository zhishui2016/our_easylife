package com.mlg.easylife.base.service.impl;

import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.base.domain.Userinfo;
import com.mlg.easylife.base.mapper.RealAuthMapper;
import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.base.query.RealAuthQueryObject;
import com.mlg.easylife.base.service.IRealAuthService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.BitStatesUtils;
import com.mlg.easylife.base.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service
public class RealAuthServiceImpl implements IRealAuthService {

	@Autowired
	private RealAuthMapper realAuthMapper;
	@Autowired
	private IUserinfoService userinfoService;

	@Override
	public RealAuth get(Long id) {
		return realAuthMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public void apply(RealAuth realAuth) {
		// 得到当前用户
		Userinfo current = userinfoService.getCurrent();
		// 判断当前的用户是否能够提交
		if (!current.getIsRealAuth() && current.getRealAuthId() == null) {// 当前的用户没有实名认证,而且realAuthId为空
			// 创建一个RealAuth对象
			RealAuth ra = new RealAuth();
			// 设置属性值
			ra.setAddress(realAuth.getAddress());
			ra.setApplier(UserContext.getCurrent());
			ra.setApplyTime(new Date());
			ra.setBornDate(realAuth.getBornDate());
			ra.setIdNumber(realAuth.getIdNumber());
			ra.setRealName(realAuth.getRealName());
			ra.setImage1(realAuth.getImage1());
			ra.setImage2(realAuth.getImage2());
			ra.setSex(realAuth.getSex());
			// 设置状态是处于待审核状态
			ra.setState(RealAuth.STATE_NORMAL);
			// 保存
			realAuthMapper.insert(ra);
			// 设置userinfo中的realAuthId的id
			current.setRealAuthId(ra.getId());
			userinfoService.update(current);
		}
	}

	@Override
	public PageResult query(RealAuthQueryObject qo) {
		// 总条数
		int count = realAuthMapper.queryByCount(qo);
		if (count > 0) {
			List<RealAuth> query = realAuthMapper.query(qo);
			return new PageResult(count, query, qo.getCurrentPage(),
					qo.getPageSize());
		}
		return PageResult.empty(qo.getPageSize());
	}

	@Override
	public void audit(Long id, String remark, int state) {
		//查询RealAuth
		RealAuth ra = realAuthMapper.selectByPrimaryKey(id);
		//如果ra不为空而且实名认证没有审核,处于审核时
		if(ra!=null&&ra.getState()==RealAuth.STATE_NORMAL){
			//获取申请人
			Userinfo applier = userinfoService.get(ra.getApplier().getId());
			//设置相关的属性
			ra.setAuditor(UserContext.getCurrent());
			ra.setAuditTime(new Date());
			ra.setState(state);
			ra.setRemark(remark);
			if(!applier.getIsRealAuth()){
				//如果审核失败
				if(state==RealAuth.STATE_REJECT){
					//把申请人的applierId设置成null
					applier.setRealAuthId(null);
				}else{//审核通过
					//设置申请 的状态码
					applier.addState(BitStatesUtils.OP_REAL_AUTH);
					//设置实名认证相关的属性
					applier.setIdNumber(ra.getIdNumber());
					applier.setRealName(ra.getRealName());
				}
				userinfoService.update(applier);
			}
		}
		realAuthMapper.updateByPrimaryKey(ra);
	}

}

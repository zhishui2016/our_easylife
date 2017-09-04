package com.mlg.easylife.base.service.impl;

import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.domain.Userinfo;
import com.mlg.easylife.base.mapper.LogininfoMapper;
import com.mlg.easylife.base.mapper.UserinfoMapper;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.BitStatesUtils;
import com.mlg.easylife.base.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserinfoServiceImpl implements IUserinfoService {
	@Autowired
	private UserinfoMapper userinfoMapper;
	@Autowired
	private LogininfoMapper logininfoMapper;

	public void update(Userinfo userinfo) {
		int ret = userinfoMapper.updateByPrimaryKey(userinfo);
		if (ret <= 0) {
			throw new RuntimeException("乐观锁失败:Userinfo: " + userinfo.getId());
		}
	}

	public void add(Userinfo userinfo) {
		userinfoMapper.insert(userinfo);
	}

	public Userinfo getCurrent() {
		return userinfoMapper.selectByPrimaryKey(UserContext.getCurrent().getId());
	}

	/*public void bindPhone(String phoneNumber, String verifyCode) {
		//1.做验证码验证
		if(verifyCodeService.validate(phoneNumber,verifyCode)){
			//验证成功绑定手机和验证码
			Userinfo current = this.getCurrent();
			if(!current.getIsBindPhone()){
				current.addState(BitStatesUtils.OP_BIND_PHONE);
				current.setPhoneNumber(phoneNumber);
				this.update(current);
			}
		}else{
			throw new RuntimeException("验证码校验失败");
		}
		
	}

	public void bindEmail(String uuid) {
		//根据uuid查询MailVerify对象
		MailVerify mv = mailVerifyMapper.selectByUUID(uuid);
		if(mv !=null && DateUtil.getBetweenSecond(mv.getSendTime(), new Date())< BidConst.VERIFYMAIL_VALID_DAY*24*3600){
			//得到用户,而用户没有绑定邮箱
			Userinfo userinfo = userinfoMapper.selectByPrimaryKey(mv.getLogininfoId());
			if(!userinfo.getIsBindMail()){
				//添加邮箱状态码,设置邮箱属性
				userinfo.addState(BitStatesUtils.OP_BIND_EMAIL);
				userinfo.setEmail(mv.getEmail());
				this.update(userinfo);
				return;
			}
			
		}
		throw new RuntimeException("验证邮箱地址失败!");
	}*/

	public void updateBasicUserInfo(Userinfo userinfo) {
		Userinfo oldUserInfo = this.getCurrent();
		oldUserInfo.setEducationBackground(userinfo.getEducationBackground());
		oldUserInfo.setHouseCondition(userinfo.getHouseCondition());
		oldUserInfo.setIncomeGrade(userinfo.getIncomeGrade());
		oldUserInfo.setKidCount(userinfo.getKidCount());
		oldUserInfo.setMarriage(userinfo.getMarriage());	
		//判断此时用户的状态码
		if(!oldUserInfo.getIsBasicInfo()){
			//改变状态码
			oldUserInfo.addState(BitStatesUtils.OP_BASIC_INFO);
		}
		this.update(oldUserInfo);
	}

	public Userinfo get(Long id) {
		return userinfoMapper.selectByPrimaryKey(id);
	}

	public List<Map<String, Object>> complement(String keyword) {
		return userinfoMapper.complement(keyword);
	}

	@Override
	public Map<String,Integer> updateInfoSetting(HttpServletResponse resp, HttpServletRequest request) {
		String profile = request.getParameter("profile");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String nickname = request.getParameter("nickname");
		String id = request.getParameter("id");
		Userinfo userinfo= userinfoMapper.selectByPrimaryKey(Long.parseLong(id));
		userinfo.setProfile(profile);
		userinfo.setAge(Integer.parseInt(age));
		userinfo.setSex(Integer.parseInt(sex));
		Logininfo logininfo = logininfoMapper.selectByPrimaryKey(Long.parseLong(id));
		String usrname = logininfo.getUsername();
		logininfo.setUsername(nickname);
		//id的原因===================>错误
		int i = userinfoMapper.updateByPrimaryKey(userinfo);
		int j = 0 ;
		if(!usrname.equals(nickname)){
			j = logininfoMapper.updateByPrimaryKey(logininfo);
		}
		Map<String,Integer> resultMap = new HashMap<>();
		resultMap.put("userinfoResult",i);
		resultMap.put("logininfoResult",j);
		return resultMap;
	}

}

package com.mlg.easylife.base.service.impl;

import com.mlg.easylife.base.domain.Iplog;
import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.domain.Userinfo;
import com.mlg.easylife.base.mapper.IplogMapper;
import com.mlg.easylife.base.mapper.LogininfoMapper;
import com.mlg.easylife.base.mapper.UserinfoMapper;
import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.BidConst;
import com.mlg.easylife.base.utils.MD5;
import com.mlg.easylife.base.utils.UserContext;
import com.mlg.easylife.business.utils.QRCodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class LogininfoServiceImpl implements ILogininfoService {

	@Autowired
	private LogininfoMapper logininfoMapper;
	@Autowired
	private IplogMapper iplogMapper;
	@Autowired
	private IUserinfoService iUserinfoService;
	@Autowired
	private UserinfoMapper userinfoMapper;

	/**
	 * 判断用户名是否存在
	 */
	public void register(String username, String password) {

		int count = logininfoMapper.countUserByName(username);
		// 如果存在,抛出异常
		if (count > 0) {
			throw new RuntimeException("该用户名已经存在!");
		} else {
			// 如果不存在,就保存
			Logininfo logininfo = new Logininfo();
			logininfo.setUsername(username);
			logininfo.setPassword(MD5.encode(password));
			logininfo.setState(Logininfo.STATE_NORMAL);
			logininfo.setUserType(Logininfo.USER_NORMAL);// 设置该用户为前台用户
			logininfo.setHeadImages(Logininfo.USER_HEADIMAGES);//默认头像
			logininfoMapper.insert(logininfo);

			Userinfo userinfo = new Userinfo();
			userinfo.setId(logininfo.getId());
			userinfo.setFirsttime(new Date());
			iUserinfoService.add(userinfo);
		}
	}
	public Logininfo getCurrent() {
		return logininfoMapper.selectByPrimaryKey(UserContext.getCurrent().getId());
	}

	/**
	 * 保存头像
	 * @param headImages
     */
	@Override
	public int saveImages(String headImages ,Long id) {
		return logininfoMapper.updateImagesByPrimaryKey(headImages,id);
	}

	/**
	 * 生成二维码
	 * @param id
	 * @return
     */
	@Override
	public String makeQRCode(long id) {
		//查询个人信息
		Logininfo logininfo = logininfoMapper.selectByPrimaryKey(id);
		//获取头像
		String headerImages = "D:/easylife/easylife-website/target/easylife-website" + logininfo.getHeadImages();
		String username = logininfo.getUsername();
		Userinfo userinfo = userinfoMapper.selectByPrimaryKey(id);
		String email = userinfo.getEmail();
		String phoneNumber = userinfo.getPhoneNumber();
		String realName = userinfo.getRealName();
		String idNumber = userinfo.getIdNumber();

		String text = "用户名:" +username +"\n邮箱:" +email +"\n电话号码:" +phoneNumber +"\n姓名:" + realName + "\n身份证号码:" + idNumber;
		try {
			QRCodeUtil.encode(text, headerImages, "D:/easylife/easylife-website/target/easylife-website/upload", true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String file = QRCodeUtil.FILE;
		return file;
	}

	@Override
	public int updatePassword(Logininfo logininfo) {
		return logininfoMapper.updateByPrimaryKey(logininfo);
	}

	/**
	 * 验证用户名是否存在
	 */
	public boolean checkUsernameExist(String username) {

		return logininfoMapper.countUserByName(username) > 0;
	}

	/**
	 * 登录操作
	 */
	public Logininfo login(String username, String password, String ip,
			int userType) {
		// 创建登录日志对象
		Iplog iplog = new Iplog();
		iplog.setIp(ip);
		iplog.setLoginTime(new Date());
		iplog.setUserType(userType);
		iplog.setUsername(username);

		Logininfo logininfo = logininfoMapper.login(username,
				MD5.encode(password), userType);
		if (logininfo != null) {
			// 如果能在数据库中查询的到用户名以及密码,就说明登录成功,把logininfo放入到session中
			UserContext.putCurrent(logininfo);
			// 若果登录成功,则把状态设置成功
			iplog.setState(Iplog.STATE_SUCCESS);
			//登录成功,修改用户最近一次登录的时间
			if(logininfo.getUserType()==Logininfo.USER_NORMAL){
				Userinfo userinfo = userinfoMapper.selectByPrimaryKey(logininfo.getId());
				userinfo.setLasttime(new Date());
				userinfoMapper.updateByPrimaryKey(userinfo);
			}
		} else {
			// 反之,登录失败设置成失败
			iplog.setState(Iplog.STATE_FAILED);
		}
		// 在登录之前保存登录日志
		iplogMapper.insert(iplog);
		return logininfo;
	}

	/**
	 * 初始化第一个管理员
	 */
	public void initAdmin() {
		// 查询数据库中是否存在管理员
		int count = logininfoMapper.countByUserType(Logininfo.USER_MANAGER);
		//如果数据库中没有管理员,则创建一个
		if(count<=0){
			Logininfo admin = new Logininfo();
			admin.setUsername(BidConst.DEFAULT_ADMIN_NAME);
			admin.setPassword(MD5.encode(BidConst.DEFAULT_ADMIN_PASSWORD));
			admin.setState(Logininfo.STATE_NORMAL);
			admin.setUserType(Logininfo.USER_MANAGER);
			logininfoMapper.insert(admin);
		}
	}
}

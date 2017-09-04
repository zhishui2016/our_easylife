package com.mlg.easylife.mgrsite.controller;


import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 后台登录控制
 * @author 黄振强
 *
 */
@Controller
public class LogininfoController {
	@Autowired
	private ILogininfoService logininfoService;
	
	@RequestMapping("login")
	@ResponseBody
	public JSONResult login(String username , String password, HttpServletRequest request){
		JSONResult json = new JSONResult();
		Logininfo logininfo = logininfoService.login(username, password, request.getRemoteAddr(), Logininfo.USER_MANAGER);
		if(logininfo==null){
			json.setSuccess(false);
			json.setMsg("用户名或者密码不正确!请重新输入!");
		}
		return json;
	}
}

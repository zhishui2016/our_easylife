package com.mlg.easylife.controller;


import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.MD5;
import com.mlg.easylife.base.utils.RequireLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class RegisterController {

	@Autowired
	private ILogininfoService logininfoService;

	/**
	 * 注册
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("register")
	@ResponseBody
	public JSONResult register(String username, String password) {
		JSONResult json = new JSONResult();
		try {
			logininfoService.register(username, password);
		} catch (Exception e) {
			json.setMsg(e.getMessage());
			json.setSuccess(false);
		}
		return json;
	}

	/**
	 * 检查用户名是否存在
	 * 
	 * @param username
	 * @return
	 */
	@RequestMapping("checkUserName")
	@ResponseBody
	public boolean checkUserName(String username) {
		return !logininfoService.checkUsernameExist(username);
	}
	/**
	 * 检查该用户密码
	 *
	 * @return
	 */
	@RequestMapping("checkPassword")
	@ResponseBody
	public JSONResult checkPassword(HttpServletRequest request) {
		JSONResult json = new JSONResult();
		String password = request.getParameter("password");
		//获取ession中的密码
		HttpSession session = request.getSession();
		Logininfo logininfo = (Logininfo)session.getAttribute("logininfo");
		if(!MD5.encode(password).equals(logininfo.getPassword())){
			json.setSuccess(false);
			json.setMsg("原密码错误!");
		}
		return json;
	}

	/**
	 * 登录操作
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("login")
	@ResponseBody
	public JSONResult login(String username, String password,HttpServletRequest request) {
		Logininfo login = logininfoService.login(username, password,request.getRemoteAddr(),Logininfo.USER_NORMAL);
		JSONResult json = new JSONResult();
		if (login == null) {
			json.setSuccess(false);
			json.setMsg("用户名或者密码错误!");
		}
		return json;
	}
	/**
	 * 注销操作
	 *
	 * @return
	 */
	@RequestMapping("logout")
	@RequireLogin
	@ResponseBody
	public void logout(HttpServletResponse resp) {
		try {
			//重定向到当前页面
			resp.sendRedirect("http://localhost/login.html");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

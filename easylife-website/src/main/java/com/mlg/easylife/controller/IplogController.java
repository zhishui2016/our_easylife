package com.mlg.easylife.controller;

import com.mlg.easylife.base.query.IplogQueryObject;
import com.mlg.easylife.base.service.IIplogService;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.base.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登录日志
 * @author 黄振强
 *
 */
@Controller
public class IplogController {
	@Autowired
	private IIplogService iplogService;
	
	@RequireLogin
	@RequestMapping("ipLog")
	public String iplogList(@ModelAttribute("qo")IplogQueryObject qo , Model model){
		qo.setUsername(UserContext.getCurrent().getUsername());
		model.addAttribute("pageResult", iplogService.query(qo));
		return "iplog_list";
	}
}

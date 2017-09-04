package com.mlg.easylife.mgrsite.controller;

import com.mlg.easylife.base.utils.RequireLogin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *后台的首页
 * @author 黄振强
 *
 */
@Controller
public class MainController {
	
	@RequireLogin
	@RequestMapping("index")
	public String index(){
		return "main";
	}
}

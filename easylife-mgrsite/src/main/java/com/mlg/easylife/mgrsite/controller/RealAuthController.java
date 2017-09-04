package com.mlg.easylife.mgrsite.controller;

import com.mlg.easylife.base.query.RealAuthQueryObject;
import com.mlg.easylife.base.service.IRealAuthService;
import com.mlg.easylife.base.utils.JSONResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 后台实名认证审核
 * 
 * @author 黄振强
 * 
 */
@Controller
public class RealAuthController {

	@Autowired
	private IRealAuthService realAuthService;

	@RequestMapping("realAuth")
	public String realAuth(@ModelAttribute("qo") RealAuthQueryObject qo,
			Model model) {
		model.addAttribute("pageResult", realAuthService.query(qo));
		return "realAuth/list";

	}
	
	/**
	 * 审核
	 */
	@RequestMapping("realAuth_audit")
	@ResponseBody
	public JSONResult audit(Long id , String remark , int state){
		JSONResult json = new JSONResult();
		try{
			realAuthService.audit(id,remark,state);
		}catch(Exception e){
			e.printStackTrace();
			json.setSuccess(false);
			json.setMsg(e.getMessage());
		}
		return json;
	}
}

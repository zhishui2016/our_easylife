package com.mlg.easylife.controller;

import com.mlg.easylife.base.domain.RealAuth;
import com.mlg.easylife.base.domain.Userinfo;
import com.mlg.easylife.base.service.IRealAuthService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.base.utils.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;


/**
 * 实名认证
 * 
 * @author 黄振强
 * 
 */
@Controller
public class RealAuthController {
	@Autowired
	private IUserinfoService userinfoService;
	@Autowired
	private IRealAuthService realAuthService;
	@Autowired
	private ServletContext servletContext;

	@RequestMapping("realAuth")
	@RequireLogin
	public String realAuth(Model model) {
		// 得到当前的用户
		Userinfo current = userinfoService.getCurrent();
		// 如果该用户没有实名认证并且realAuthId为空,页面跳到realAuth页面
		if (!current.getIsRealAuth() && current.getRealAuthId() == null) {
			return "realAuth";
		} else {
			if (!current.getIsRealAuth()) {
				model.addAttribute("auditing", true);
			} else {
				model.addAttribute("realAuth",
						realAuthService.get(current.getRealAuthId()));
			}
			return "realAuth_result";
		}
	}

	/**
	 * 提交认证
	 * 
	 * @param realAuth
	 * @return
	 */
	@RequestMapping("realAuth_save")
	@ResponseBody
	public JSONResult realAuthApply(RealAuth realAuth) {
		realAuthService.apply(realAuth);
		return new JSONResult();
	}

	/**
	 * 身份证上传
	 * 
	 * @param file
	 * @return
	 */
	@RequestMapping("realAuth_upload")
	@ResponseBody
	public String upload(MultipartFile file) {
		String dic = "/upload";
		String fileName = UploadUtil.upload(file,
				servletContext.getRealPath(dic));
		return dic + "/" + fileName;
	}
}

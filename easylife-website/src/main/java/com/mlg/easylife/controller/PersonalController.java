package com.mlg.easylife.controller;

import com.mlg.easylife.base.service.IIplogService;
import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.base.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class PersonalController {
	@Autowired
	private IUserinfoService userinfoService;
	@Autowired
	IIplogService iplogService;
	@Autowired
	private ILogininfoService iLogininfoService;
	
	
	/**
	 * 个人中心首页
	 * @param model
	 * @return
	 */
	@RequireLogin
	@RequestMapping("personal")
	public String personal(Model model){
		model.addAttribute("userinfo", userinfoService.getCurrent());
		model.addAttribute("loginTime",iplogService.getLastLogintime(UserContext.getCurrent().getUsername()));
		return "personal";
	}
	/**
	 * 保存头像
	 *//*
	@RequestMapping("saveImages")
	@ResponseBody
	public JSONResult saveImages(HttpServletRequest request, Model model){
        String headImages = UploadUtil.upload(request);
        Long id = userinfoService.getCurrent().getId();
        JSONResult json = new JSONResult();
		int result = iLogininfoService.saveImages(headImages,id);
		if(result>0){
			model.addAttribute("userinfo", userinfoService.getCurrent());
			model.addAttribute("loginTime",iplogService.getLastLogintime(UserContext.getCurrent().getUsername()));
			json.setMsg("上传头像成功!");
			json.setSuccess(true);
		}else {
			json.setSuccess(false);
			json.setMsg("上传失败!");
		}
		return json;
	}*/

	/**
	 * 生成二维码
	 */
	@RequestMapping("makeQRCode")
	@ResponseBody
	public JSONResult makeQRCode( HttpServletRequest request,HttpServletResponse response){
		JSONResult json =  new JSONResult();
		String id = request.getParameter("param");
		//处理格式
		try {
			String QRCodeImages = iLogininfoService.makeQRCode(Long.parseLong(id));
			if(QRCodeImages!=null){
				QRCodeImages = "/upload/" + QRCodeImages;
				json.setMsg(QRCodeImages);
				json.setSuccess(true);
			}else if (QRCodeImages==null){
				json.setSuccess(true);
				json.setMsg("生成失败!");
			}
		}catch (Exception e){
			json.setMsg("系统出问题了,马上报告班主任!");
		}
		return json;
	}
	@RequestMapping("integral_help")
	@RequireLogin
	public String integralHelp(Model model) {
		return "integral_help";
	}
	/**
	 * 绑定手机号
	 *//*
	@RequestMapping("bindPhone")
	@RequireLogin
	@ResponseBody
	public JSONResult bindPhone(String phoneNumber , String verifyCode){
		JSONResult json = new JSONResult();
		try{
			userinfoService.bindPhone(phoneNumber,verifyCode);
		}catch(Exception e){
			json.setSuccess(false);
			json.setMsg(e.getMessage());
		}
		return json;
	}
	
	*//**
	 * 验证邮件
	 *//*
	@RequestMapping("bindEmail")
	public String bindEmail(String uuid,Model model){
		try{
			userinfoService.bindEmail(uuid);
			model.addAttribute("success", true);
		}catch (Exception e) {
			model.addAttribute("success", false);
			model.addAttribute("msg", e.getMessage());
		}
		return "checkmail_result";
	}*/
}

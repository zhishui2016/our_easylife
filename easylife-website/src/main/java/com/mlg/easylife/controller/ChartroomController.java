package com.mlg.easylife.controller;

import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.service.IIplogService;
import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.MD5;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.base.utils.UserContext;
import com.mlg.easylife.base.utils.chatroom.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import static com.mlg.easylife.base.utils.chatroom.ReadData.findFile;

/**
 * 聊一聊
 * Created by 黄振强 on 2017/5/25.
 */
@Controller
public class ChartroomController {
    @Autowired
    private IUserinfoService iUserinfoService;
    @Autowired
    IIplogService iplogService;
    @Autowired
    private ILogininfoService iLogininfoService;



    /**
     * 聊天主页
     */
    @RequestMapping("chat")
    @ResponseBody
    @RequireLogin
    public ModelAndView getIndex(Model model,HttpServletRequest request){
        model.addAttribute("userinfo", iUserinfoService.getCurrent());
        ModelAndView view = new ModelAndView("chatroom/chat");
        try {
            //跟新session中的聊天记录
            String basePath = "D:\\easylife\\easylife-website\\target\\easylife-website\\chat_record";
            List<String> reaordList = findFile(new File(basePath));
            HttpSession session = request.getSession();
            session.setAttribute("reaordList",reaordList.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return view;
    }
    /**
     * 个人信息
     */
    @RequestMapping("information")
    @ResponseBody
    @RequireLogin
    public ModelAndView turnIntoInformation(Model model, HttpServletResponse resp){
        model.addAttribute("userinfo", iUserinfoService.getCurrent());
        ModelAndView view = new ModelAndView("chatroom/information");
        return view;
    }
    /**
     * 个人设置
     */
    @RequestMapping("config")
    @ResponseBody
    @RequireLogin
    public ModelAndView config(Model model){
        model.addAttribute("userinfo", iUserinfoService.getCurrent());
        ModelAndView view = new ModelAndView("chatroom/info-setting");
        return view;
    }
    /**
     * 修改个人设置
     */
    @RequestMapping("reviseInfoSetting")
    @ResponseBody
    @RequireLogin
    public JSONResult reviseInfoSetting(HttpServletResponse resp,HttpServletRequest request){
        JSONResult json = new JSONResult();
        Map<String,Integer> resultMap = iUserinfoService.updateInfoSetting(resp,request);
        if(resultMap.get("userinfoResult")>0) {
            json.setSuccess(true);
            json.setMsg("修改成功!");
        }else {
            json.setMsg("修改失败!");
            json.setSuccess(false);
        }
        return json;
    }
    /**
     * 修改个人设置
     */
    @RequestMapping("showHistory")
    @ResponseBody
    @RequireLogin
    public JSONResult showHistory(Model model){
        String basePath = "D:\\easylife\\easylife-website\\target\\easylife-website\\chat_record";
        JSONResult json = new JSONResult();
        try {
            List<String> reaordList = findFile(new File(basePath));
            json.setMsg(reaordList.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return json;
    }

    /**
     * 保存头像
     */
    @RequestMapping("saveImages")
    @ResponseBody
    public JSONResult saveImages(HttpServletRequest request, Model model){
        String headImages = UploadUtil.upload(request);
        Long id = iUserinfoService.getCurrent().getId();
        JSONResult json = new JSONResult();
        int result = iLogininfoService.saveImages(headImages,id);
        //更新session
        HttpSession session = request.getSession();
        Logininfo logininfo = (Logininfo)session.getAttribute("logininfo");
        logininfo.setHeadImages(headImages);
        if(result>0){
            session.setAttribute("logininfo",logininfo);
            model.addAttribute("userinfo", iUserinfoService.getCurrent());
            model.addAttribute("logininfo", iLogininfoService.getCurrent());
            model.addAttribute("loginTime",iplogService.getLastLogintime(UserContext.getCurrent().getUsername()));
            json.setMsg("上传头像成功!");
            json.setSuccess(true);
        }else {
            json.setSuccess(false);
            json.setMsg("上传失败!");
        }
        return json;
    }
    /**
     * 修改密码
     */
    @RequestMapping("changePassword")
    @ResponseBody
    public JSONResult changePassword(HttpServletRequest request, Model model){
        JSONResult json = new JSONResult();
        String newPassword = request.getParameter("newpass");
        //更新session
        HttpSession session = request.getSession();
        Logininfo logininfo = (Logininfo)session.getAttribute("logininfo");
        logininfo.setPassword(MD5.encode(newPassword));
        int result = iLogininfoService.updatePassword(logininfo);
        if(result>0){
            session.setAttribute("logininfo",logininfo);
            model.addAttribute("userinfo", iUserinfoService.getCurrent());
            model.addAttribute("logininfo", iLogininfoService.getCurrent());
            model.addAttribute("loginTime",iplogService.getLastLogintime(UserContext.getCurrent().getUsername()));
            json.setMsg("修改成功!");
            json.setSuccess(true);
        }else {
            json.setSuccess(false);
            json.setMsg("修改失败!");
        }
        return json;
    }
    /**
     *  帮助
     * @param model
     * @return
     */
    @RequireLogin
    @RequestMapping("help")
    public String help(Model model){
        return "chatroom/help";
    }
    /**
     *  关于
     * @param model
     * @return
     */
    @RequireLogin
    @RequestMapping("about")
    public String about(Model model){
        return "chatroom/about";
    }
}

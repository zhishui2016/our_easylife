package com.mlg.easylife.controller;

import com.mlg.easylife.base.service.ILogininfoService;
import com.mlg.easylife.base.service.IUserinfoService;
import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.business.domain.Community;
import com.mlg.easylife.business.domain.Reply;
import com.mlg.easylife.business.query.CommunityQueryObject;
import com.mlg.easylife.business.query.ReplyQueryObject;
import com.mlg.easylife.business.service.ICommunityService;
import com.mlg.easylife.business.service.IReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 看一看
 * Created by 黄振强 on 2017/5/25.
 */
@Controller
public class CommunityController {

    @Autowired
    private ICommunityService iCommunityService;
    @Autowired
    private ILogininfoService iLogininfoService;
    @Autowired
    private IReplyService iReplyService;
    @Autowired
    private IUserinfoService iUserinfoService;

    @RequireLogin
    @RequestMapping("community")
    public String community(@ModelAttribute("qo") CommunityQueryObject qo,@ModelAttribute("reqo") ReplyQueryObject reqo,
                            Model model){
        model.addAttribute("pageResult", iCommunityService.query(qo));
        model.addAttribute("replyPageResult", iReplyService.query(reqo));
        model.addAttribute("userinfo", iUserinfoService.getCurrent());
        return "community/community";
    }
    /**
     * 发表
     */
    @RequestMapping("uploadImages")
    @ResponseBody
    public JSONResult uploadImages(Community community){
       JSONResult json = new JSONResult();
        try {
            int result = iCommunityService.insert(community);
            if(result==0){
                json.setMsg("发表失败!");
                json.setSuccess(false);
            }else {
                json.setSuccess(true);
                json.setMsg("发表成功!");
            }
        }catch (Exception e){
            json.setMsg("系统出问题了,马上报告班主任!");
            json.setSuccess(false);
        }
        return json;
    }
    /**
     * 好评
     */
    @RequestMapping("goodGlyphicon")
    @ResponseBody
    public JSONResult goodGlyphicon( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        String id = request.getParameter("param");
        //处理格式
       try {
           int result = iCommunityService.addGoodGlyphicon(Long.parseLong(id));
           if(result==0){
               json.setMsg("您已经点过赞了!");
               json.setSuccess(false);
           }else if (result==1){
               json.setSuccess(true);
               json.setMsg("点赞成功!");
           }
       }catch (Exception e){
           json.setMsg("系统出问题了,马上报告班主任!");
       }
        return json;
    }
    /**
     * 一般评价
     */
    @RequestMapping("commonGlyphicon")
    @ResponseBody
    public JSONResult commonGlyphicon( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        String id = request.getParameter("param");
       try {
           int result =iCommunityService.addCommonGlyphicon(Long.parseLong(id));
           if(result==0){
               json.setMsg("您已经点过赞了!");
               json.setSuccess(false);
           }else if (result==1){
               json.setSuccess(true);
               json.setMsg("点赞成功!");
           }
       }catch (Exception e){
           json.setSuccess(true);
           json.setMsg("系统出问题了,马上报告班主任!");
       }
        return json;
    }
    /**
     * 差评价
     */
    @RequestMapping("badGlyphicon")
    @ResponseBody
    public JSONResult badGlyphicon( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        String id = request.getParameter("param");
        try {
            int result = iCommunityService.addBadGlyphicon(Long.parseLong(id));
            if(result==0){
                json.setMsg("您已经点过赞了!");
                json.setSuccess(false);
            }else if (result==1){
                json.setSuccess(true);
                json.setMsg("点赞成功!");
            }
        }catch (Exception e){
            json.setSuccess(false);
            json.setMsg("系统出问题了,马上报告班主任!");
        }
        return json;
    }
    /**
     * 回复
     */
    @RequestMapping("reply")
    @RequireLogin
    @ResponseBody
    public JSONResult reply(Reply reply,HttpServletResponse resp) throws IOException {
        JSONResult json = new JSONResult();
        int insert = iReplyService.insert(reply);
        if(insert==0){
            json.setSuccess(false);
            json.setMsg("点赞失败啊");
        }else {
            json.setMsg("点赞成功!");
            json.setSuccess(true);
        }
        //重定向到当前页面
        resp.sendRedirect("/community.do");
        return json;
    }
}

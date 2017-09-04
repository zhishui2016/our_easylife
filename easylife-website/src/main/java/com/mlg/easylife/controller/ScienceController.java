package com.mlg.easylife.controller;

import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.business.query.ScienceQueryObject;
import com.mlg.easylife.business.service.IScienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 科技
 * Created by 黄振强 on 2017/6/11.
 */
@Controller
public class ScienceController {
    @Autowired
    private IScienceService iScienceService;
    /**
     * 新闻列表
     */
    @RequestMapping("science_news")
    @RequireLogin
    public String sport(@ModelAttribute("qo") ScienceQueryObject qo, Model model){
        model.addAttribute("pageResult", iScienceService.query(qo));
        return "news/science_news";
    }
    /**
     * 刷新
     */
    @RequestMapping("refreshOfScience")
    @ResponseBody
    public JSONResult refresh( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        //处理格式
        try {
            int result = iScienceService.refresh();
            if(result==0){
                json.setMsg("没有新的新闻了!请稍后重试!");
                json.setSuccess(false);
            }else if (result==1){
                json.setSuccess(true);
                json.setMsg("刷新成功!");
            }
        }catch (Exception e){
            json.setMsg(e.getMessage());
        }
        return json;
    }
}

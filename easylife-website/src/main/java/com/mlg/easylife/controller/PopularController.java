package com.mlg.easylife.controller;

import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.business.query.PopularQueryObject;
import com.mlg.easylife.business.service.IPopularService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * 热门
 * Created by 黄振强 on 2017/6/11.
 */
@Controller
public class PopularController {
    @Autowired
    private IPopularService iPopularService;
    /**
     * 新闻列表
     */
    @RequestMapping("popular_news")
    @RequireLogin
    public String sport(@ModelAttribute("qo") PopularQueryObject qo, Model model){
        model.addAttribute("pageResult", iPopularService.query(qo));
        return "news/popular_news";
    }
    /**
     * 刷新
     */
    @RequestMapping("refreshOfPopular")
    @ResponseBody
    public JSONResult refresh( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        //处理格式
        try {
            int result = iPopularService.refresh();
            System.out.println("================="+result);
            if(result==0){
                json.setMsg("没有新的新闻了!请稍后重试!");
                json.setSuccess(false);
            }else if (result>=1){
                json.setSuccess(true);
                json.setMsg("刷新成功!为您推荐了" + result + "文章");
            }
        }catch (Exception e){
            json.setMsg(e.getMessage());
        }
        return json;
    }
}

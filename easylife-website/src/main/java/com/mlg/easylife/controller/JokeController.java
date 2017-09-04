package com.mlg.easylife.controller;

import com.mlg.easylife.base.utils.JSONResult;
import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.business.query.JokeQueryObject;
import com.mlg.easylife.business.service.IJokeService;
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
public class JokeController {
    @Autowired
    private IJokeService iJokeService;
    /**
     * 新闻列表
     */
    @RequestMapping("joke_news")
    @RequireLogin
    public String sport(@ModelAttribute("qo") JokeQueryObject qo, Model model){
        model.addAttribute("pageResult", iJokeService.query(qo));
        return "news/joke_news";
    }
    /**
     * 刷新
     */
    @RequestMapping("refreshOfJoke")
    @ResponseBody
    public JSONResult refresh( HttpServletRequest request){
        JSONResult json =  new JSONResult();
        //处理格式
        try {
            int result = iJokeService.refresh();
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

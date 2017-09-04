package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Joke;
import com.mlg.easylife.business.mapper.JokeMapper;
import com.mlg.easylife.business.query.JokeQueryObject;
import com.mlg.easylife.business.service.IJokeService;
import com.mlg.easylife.business.utils.InternetWorm.JokeReptiles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;

import java.util.Date;
import java.util.List;

/**
 * Created by 黄振强 on 2017/6/12.
 */
@Service
public class JokeServiceImpl extends JokeReptiles implements IJokeService {
    private static final String indexUrl = "http://napi.uc.cn/3/classes/topic/lists/%E9%A6%96%E9%A1%B5%E7%B2%BE%E9%80%89%E5%88%97%E8%A1%A8?_app_id=hottopic&_size=10&_fetch=1&_fetch_incrs=1&_max_pos=";
    private static final String secondUrl = "&_fetch_total=1&_select=like_start%2Cdislike_start%2Ctitle%2Ctag%2Cmedia_data%2Clist_info%2Ccontent%2Cavatar%2Cuser_name%2Cis_hot%2Chot_comment%2Ccomment_total%2Coriginal%2Ctv_duration";
    private static int count = 0;
    private static int count2 = 0;
    @Autowired
    private JokeMapper jokeMapper;
    @Override
    public int insert(Joke joke) {
        return 0;
    }

    @Override
    public int deletct() {
        return jokeMapper.deleteAll();
    }

    @Override
    public PageResult query(JokeQueryObject qo) {
        // 总条数
        int count = jokeMapper.queryByCount(qo);
        if (count > 0) {
            List<Joke> query = jokeMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    @Override
    public int refresh() {
        count = 0;
        count2 = 0;
        //,每次刷新前,查询数据库总数据量,若超过1000,都需要清除之前的数据
        List<String> jokes = jokeMapper.selectForPublish_time();
        if(jokes.size()>1000){
            jokeMapper.deleteAll();
        }
        //然后再存入数据
        //使用网络爬虫,爬取数据
       try{
           Date date = new Date();
           long time = date.getTime();
           String url = indexUrl + time + secondUrl;
           Spider.create(new JokeReptiles()).addUrl(url)
                   .addPipeline(new ConsolePipeline()).thread(20).run();
       }catch (Exception e){
           e.printStackTrace();
       }
        List<Joke> data = JokeReptiles.getData();
        if(data.size()==0){
           return 0;
        }
        ////持久化
       if(jokes.size()>0){
           int i = 0;
           for (Joke joke : data) {
               //如果数据库中没有存在的数据就保存
               if(!jokes.toString().contains(joke.getPublishTime())){
                   count2++;
                   i++;
                   int insert = jokeMapper.insert(joke);
                   System.out.println("==============1===============");

                   if(i==data.size()){
                       System.out.println("==============2===============");
                       return count2;
                   }
               }
           }
       }else {
           for (Joke joke : data) {
               count2++;
               int insert = jokeMapper.insert(joke);
           }
           return count2;
       }
       return count;
    }
}

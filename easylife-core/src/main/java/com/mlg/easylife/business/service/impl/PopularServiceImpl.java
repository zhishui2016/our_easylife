package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Popular;
import com.mlg.easylife.business.mapper.PopularMapper;
import com.mlg.easylife.business.query.PopularQueryObject;
import com.mlg.easylife.business.service.IPopularService;
import com.mlg.easylife.business.utils.InternetWorm.PopularReptiles;
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
public class PopularServiceImpl extends PopularReptiles implements IPopularService {
    private static final String indexUrl = "https://www.toutiao.com/api/pc/feed/?category=news_tech&utm_source=toutiao&widen=1&max_behot_time=0&max_behot_time_tmp=0&tadrequire=true&as=A1852996CB537EE&cp=596BC3A7EEBE7E1";
    private static final String secondUrl = "&max_behot_time_tmp=";
    private static final String thirdUrl = "&tadrequire=true";
    private static int count = 0;
    private static int count2 = 0;
    @Autowired
    private PopularMapper popularMapper;
    @Override
    public int insert(Popular popular) {
        return 0;
    }

    @Override
    public int deletct() {
        return popularMapper.deleteAll();
    }

    @Override
    public PageResult query(PopularQueryObject qo) {
        // 总条数
        int count = popularMapper.queryByCount(qo);
        if (count > 0) {
            List<Popular> query = popularMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    @Override
    public int refresh() {
        //,每次刷新前,查询数据库总数据量,若超过1000,都需要清除之前的数据
        List<String> populars = popularMapper.selectForSourceUrl();
        if(populars.size()>1000){
            popularMapper.deleteAll();
        }
        //然后再存入数据
        //使用网络爬虫,爬取数据
       try{
           Date date = new Date();
           long time = date.getTime()/1000;
           String url = indexUrl + time + secondUrl + time + thirdUrl;
           Spider.create(new PopularReptiles()).addUrl(indexUrl)
                   .addPipeline(new ConsolePipeline()).thread(20).run();
       }catch (Exception e){
           e.printStackTrace();
       }
        List<Popular> data = PopularReptiles.getData();
        if(data.size()==0){
           return 0;
        }
        ////持久化
       if(populars.size()>0){
           int i = 0;
           for (Popular popular : data) {
               //如果数据库中没有存在的数据就保存
               String s = populars.toString();
               String sourceUrl = popular.getSourceUrl();
               if(!populars.toString().contains(popular.getSourceUrl())){
                   count2++;
                   i++;
                   int insert = popularMapper.insert(popular);
                   if(i==data.size()){
                       return count2;
                   }
               }
           }
       }else {
           for (Popular popular : data) {
               count++;
               int insert = popularMapper.insert(popular);
           }
           return count2;
       }
       return count;
    }
}

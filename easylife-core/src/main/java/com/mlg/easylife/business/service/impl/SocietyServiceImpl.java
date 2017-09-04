package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Society;
import com.mlg.easylife.business.mapper.SocietyMapper;
import com.mlg.easylife.business.query.SocietyQueryObject;
import com.mlg.easylife.business.service.ISocietyService;
import com.mlg.easylife.business.utils.InternetWorm.SocietyReptiles;
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
public class SocietyServiceImpl extends SocietyReptiles implements ISocietyService {
    private static final String indexUrl = "https://www.toutiao.com/api/pc/feed/?category=news_society&utm_source=toutiao&widen=1&max_behot_time=";
    private static final String secondUrl = "&max_behot_time_tmp=";
    private static final String thirdUrl = "&tadrequire=true";

    @Autowired
    private SocietyMapper societyMapper;
    @Override
    public int insert(Society society) {
        return 0;
    }

    @Override
    public int deletct() {
        return societyMapper.deleteAll();
    }

    @Override
    public PageResult query(SocietyQueryObject qo) {
        // 总条数
        int count = societyMapper.queryByCount(qo);
        if (count > 0) {
            List<Society> query = societyMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    @Override
    public int refresh() {
        //,每次刷新前,查询数据库总数据量,若超过1000,都需要清除之前的数据
        List<String> societys = societyMapper.selectForSourceUrl();
        if(societys.size()>1000){
            societyMapper.deleteAll();
        }
        //然后再存入数据
        //使用网络爬虫,爬取数据
       try{
           Date date = new Date();
           long time = date.getTime()/1000;
           String url = indexUrl + time + secondUrl + time + thirdUrl;
           Spider.create(new SocietyReptiles()).addUrl(url)
                   .addPipeline(new ConsolePipeline()).thread(20).run();
       }catch (Exception e){
           e.printStackTrace();
       }
        List<Society> data = SocietyReptiles.getData();
        if(data.size()==0){
           return 0;
        }
        //持久化
        for (Society society : data) {
            int insert = societyMapper.insert(society);
        }
        return 1;
    }
}

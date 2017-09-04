package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Sport;
import com.mlg.easylife.business.mapper.SportMapper;
import com.mlg.easylife.business.query.SportQueryObject;
import com.mlg.easylife.business.service.ISportService;
import com.mlg.easylife.business.utils.InternetWorm.SportReptiles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;

import java.util.List;

/**
 * Created by 黄振强 on 2017/6/12.
 */
@Service
public class SportServiceImpl extends SportReptiles implements ISportService {
    private static final String indexUrl = "http://feed.mix.sina.com.cn/api/roll/get?pageid=13&lid=2503&k=&num=50&page=1&r=0.7652763395067854&callback=jQuery311029215208699154827_1499958144312&_=1499958144313";
    @Autowired
    private SportMapper sportMapper;
    @Override
    public int insert(Sport sport) {
        return 0;
    }

    @Override
    public int deletct() {
        return sportMapper.deleteAll();
    }

    @Override
    public PageResult query(SportQueryObject qo) {
        // 总条数
        int count = sportMapper.queryByCount(qo);
        if (count > 0) {
            List<Sport> query = sportMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    @Override
    public int refresh() {
        //,每次刷新前,查询数据库总数据量,若超过1000,都需要清除之前的数据
        List<String> sports = sportMapper.selectForSourceUrl();
        if(sports.size()>1000){
            sportMapper.deleteAll();
        }
        //然后再存入数据
        //使用网络爬虫,爬取数据
       try{
           Spider.create(new SportReptiles()).addUrl(indexUrl)
                   .addPipeline(new ConsolePipeline()).thread(20).run();
       }catch (Exception e){
           e.printStackTrace();
       }
        List<Sport> data = SportReptiles.getData();
        if(data.size()==0){
           return 0;
        }
        //持久化
        for (Sport sport : data) {
            int insert = sportMapper.insert(sport);
        }
        return 1;
    }
}

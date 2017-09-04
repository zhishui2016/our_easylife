package com.mlg.easylife.business.service.impl;

import com.mlg.easylife.base.query.PageResult;
import com.mlg.easylife.business.domain.Science;
import com.mlg.easylife.business.mapper.ScienceMapper;
import com.mlg.easylife.business.query.ScienceQueryObject;
import com.mlg.easylife.business.service.IScienceService;
import com.mlg.easylife.business.utils.InternetWorm.ScienceReptiles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;

import java.util.List;

/**
 * Created by 黄振强 on 2017/6/12.
 */
@Service
public class ScienceServiceImpl extends ScienceReptiles implements IScienceService {
    private static final String indexUrl = "http://feed.mix.sina.com.cn/api/roll/get?pageid=372&lid=2431&k=&num=50&page=1&r=0.1067230551615056&callback=jQuery31109991534098773693_1500182243455&_=1500182243457";
    @Autowired
    private ScienceMapper scienceMapper;
    @Override
    public int insert(Science science) {
        return 0;
    }

    @Override
    public int deletct() {
        return scienceMapper.deleteAll();
    }

    @Override
    public PageResult query(ScienceQueryObject qo) {
        // 总条数
        int count = scienceMapper.queryByCount(qo);
        if (count > 0) {
            List<Science> query = scienceMapper.query(qo);
            return new PageResult(count, query, qo.getCurrentPage(),
                    qo.getPageSize());
        }
        return PageResult.empty(qo.getPageSize());
    }

    @Override
    public int refresh() {
        //,每次刷新前,查询数据库总数据量,若超过1000,都需要清除之前的数据
        List<String> populars = scienceMapper.selectForSourceUrl();
        if(populars.size()>1000){
            scienceMapper.deleteAll();
        }
        //然后再存入数据
        //使用网络爬虫,爬取数据
       try{
           Spider.create(new ScienceReptiles()).addUrl(indexUrl)
                   .addPipeline(new ConsolePipeline()).thread(20).run();
       }catch (Exception e){
           e.printStackTrace();
       }
        List<Science> data = ScienceReptiles.getData();
        if(data.size()==0){
           return 0;
        }
        //持久化
        for (Science science : data) {
            int insert = scienceMapper.insert(science);
        }
        return 1;
    }
}

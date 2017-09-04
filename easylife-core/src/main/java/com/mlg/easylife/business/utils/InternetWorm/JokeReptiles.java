package com.mlg.easylife.business.utils.InternetWorm;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.business.domain.Joke;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;
import us.codecraft.webmagic.processor.PageProcessor;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 黄振强 on 2017/7/13.
 */
public class JokeReptiles implements PageProcessor{
    private static final List<Joke> list = new ArrayList<>();
    private static int count = 0;
    private static final String indexUrl = "http://napi.uc.cn/3/classes/topic/lists/%E9%A6%96%E9%A1%B5%E7%B2%BE%E9%80%89%E5%88%97%E8%A1%A8?_app_id=hottopic&_size=10&_fetch=1&_fetch_incrs=1&_max_pos=";
    private Site site = Site.me().setDomain("my.oschina.net");

    public void process(Page page) {
        //每执行一次,清空list
        list.removeAll(list);
        String myUrl = page.getUrl().get();
        if (myUrl.contains(indexUrl)) {
            //获取所有的详情页
            String str = page.getJson().toString();
            //处理json格式
            JSONObject jsons = JSONObject.parseObject(str);

            JSONArray data = jsons.getJSONArray("data");
            //获取下次时间戳
            String max_behot_timeArr = jsons.get("metadata").toString();
            JSONObject timeTson = JSONObject.parseObject(max_behot_timeArr);
            String max_behot_time= timeTson.get("max_pos").toString();
            for (Object o : data) {
                JSONObject json = JSONObject.parseObject(o.toString());
                //获取标题
                String title = json.get("title").toString().replace("〃","\"").replace("#","").replaceAll("[^\u4E00-\u9FA5]", "");
                //获取发布时间
                String publish_time = json.get("_created_at").toString();
                //获取来源
                String source = json.get("user_name").toString();
                //获取图片url
                String images = "";
                if(o.toString().contains("media_data")){
                    String media_dataStr = json.get("media_data").toString();
                    JSONArray imsgesArr = JSONArray.parseArray(media_dataStr);
                    String imagesStr = imsgesArr.get(0).toString();
                    JSONObject imsgesJson = JSONObject.parseObject(imagesStr);
                    String origin_img_urlStr = imsgesJson.get("origin_img_url").toString();
                    JSONObject origin_imgJson= JSONObject.parseObject(origin_img_urlStr);
                    String origin_pic_url = origin_imgJson.get("origin_pic_url").toString();
                    if(origin_pic_url!=null&&!origin_pic_url.trim().equals("")){
                        images = origin_pic_url;
                    }
                }
                //持久化到数据库
                Joke joke = new Joke();
                joke.setPublishTime(publish_time);
                joke.setSource(source);
                joke.setTitle(title);
                joke.setImages(images);
                //存储数据
                list.add(joke);
            }
        }
    }

    public Site getSite() {
        return site;
    }

    public static List<Joke> getData() {
        return list;
    }

    public static void main(String[] args) {
        Spider.create(new JokeReptiles()).addUrl(indexUrl)
                .addPipeline(new ConsolePipeline()).thread(50).run();
    }
}

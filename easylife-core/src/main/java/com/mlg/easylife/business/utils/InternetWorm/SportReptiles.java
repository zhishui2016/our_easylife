package com.mlg.easylife.business.utils.InternetWorm;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.business.domain.Sport;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.Request;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.Spider;
import us.codecraft.webmagic.pipeline.ConsolePipeline;
import us.codecraft.webmagic.processor.PageProcessor;
import us.codecraft.webmagic.selector.Selectable;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 黄振强 on 2017/7/13.
 */
public class SportReptiles implements PageProcessor{
    private static final List<Sport> list = new ArrayList<>();
    private static int count = 0;
    private static final String indexUrl = "http://feed.mix.sina.com.cn/api/roll/get?pageid=13&lid=2503&k=&num=50&page=1&r=0.7652763395067854&callback=jQuery311029215208699154827_1499958144312&_=1499958144313";
    private Site site = Site.me().setDomain("my.oschina.net");

    public void process(Page page) {
        String myUrl = page.getUrl().get();
        if (myUrl.equals(indexUrl)) {
            //获取所有的详情页
            String str = page.getJson().toString();
            //处理json格式
            String[] arr1 = str.split("result");
            str = "{\"result" + arr1[1].replace(");}catch(e){};","");
            JSONObject jsons = JSONObject.parseObject(str);

            JSONObject result = jsons.getJSONObject("result");
            JSONArray data = result.getJSONArray("data");
            for (Object o : data) {
                count++;
               if(count<=10){
                   JSONObject json = JSONObject.parseObject(o.toString());
                   //获取标题
                   String title = json.get("title").toString();
                   //获取url
                   String detailUrl = json.get("url").toString();
                   //获取发布时间
                   String publish_time = json.get("intime").toString()  + "000";
                   //处理格式
                   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm");
                   publish_time =  String.valueOf(sdf.format(Long.parseLong(publish_time)));
                   //获取图片url
                   String imagesStr = json.get("img").toString();
                   String images="";
                  if(!imagesStr.equals("[]")){
                      JSONObject imagesJson = JSONObject.parseObject(imagesStr);
                      images = imagesJson.get("u").toString();
                   }
                   //获取来源
                   String source = json.get("media_name").toString();
                   Request request = new Request(detailUrl);
                   request.putExtra("title",title);
                   request.putExtra("publish_time",publish_time);
                   request.putExtra("source",source);
                   request.putExtra("title",title);
                   request.putExtra("detailUrl",detailUrl);
                   request.putExtra("images",images);
                   request.setMethod("get");
                   //把详情页连接加入到队列中去
                   page.addTargetRequest(request);
               }
            }
        }else {
            Map<String, Object> extras = page.getRequest().getExtras();
            //获取标题
            String title = extras.get("title").toString();
            //获取发布时间
            String publish_time = extras.get("publish_time").toString();
            //获取来源
            String source = extras.get("source").toString();
            //url
            String detailUrl = extras.get("detailUrl").toString();
            //images
            String images = extras.get("images").toString();
            //获取正文内容
            String content = "";
            List<Selectable> contentList = page.getHtml().xpath("//*[@class='article-a__content']").nodes();
            if(contentList.size()>0){
                content = contentList.get(0).xpath("///allText()").get();
            }
            //持久化到数据库
            Sport sport = new Sport();
            sport.setContent(content);
            sport.setPublishTime(publish_time);
            sport.setSource(source);
            sport.setTitle(title);
            sport.setImages(images);
            sport.setSourceUrl(detailUrl);
            //存储数据
            list.add(sport);
        }
    }

    public Site getSite() {
        return site;
    }

    public static List<Sport> getData() {
        return list;
    }

    public static void main(String[] args) {
        Spider.create(new SportReptiles()).addUrl(indexUrl)
                .addPipeline(new ConsolePipeline()).thread(50).run();
    }
}

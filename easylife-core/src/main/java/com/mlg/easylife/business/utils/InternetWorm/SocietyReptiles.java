package com.mlg.easylife.business.utils.InternetWorm;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.mlg.easylife.business.domain.Society;
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
public class SocietyReptiles implements PageProcessor{
    private static final List<Society> list = new ArrayList<>();
    private static int count = 0;
    private static final String indexUrl = "https://www.toutiao.com/api/pc/feed/?category=news_society&utm_source=toutiao&widen=1";
   // private static final String indexUrl = "https://www.toutiao.com/api/pc/feed/?category=news_society&utm_source=toutiao&widen=1&max_behot_time=1500122920&max_behot_time_tmp=1500122920&tadrequire=true&as=A125A9A6BA337C2&cp=596A73470CE2BE1";
    private Site site = Site.me().setDomain("my.oschina.net");

    public void process(Page page) {
        String myUrl = page.getUrl().get();
        if (myUrl.contains(indexUrl)) {
            //获取所有的详情页
            String str = page.getJson().toString();
            //处理json格式
            JSONObject jsons = JSONObject.parseObject(str);

            JSONArray data = jsons.getJSONArray("data");
            //获取下次时间戳
            String max_behot_timeArr = jsons.get("next").toString();
            JSONObject timeTson = JSONObject.parseObject(max_behot_timeArr);
            String max_behot_time= timeTson.get("max_behot_time").toString();
            for (Object o : data) {
                count++;
               if(count<=10){
                   JSONObject json = JSONObject.parseObject(o.toString());
                   //获取标题
                   String title = json.get("title").toString();
                   //获取url
                   String detailUrl = "http://www.toutiao.com" + json.get("source_url").toString();
                   //获取发布时间
                   String publish_time = json.get("behot_time").toString()  + "000";
                   //处理格式
                   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:ss:mm");
                   publish_time =  String.valueOf(sdf.format(Long.parseLong(publish_time)));
                   //获取来源
                   String source = json.get("source").toString();
                   //获取标签
                   String label = json.get("label").toString();
                   if(label.contains("广告")||label.contains("理财")||label.contains("基金")){
                        continue;
                   }
                   //获取图片url
                   String images = "";
                   if(o.toString().contains("image_url")){
                       images = json.get("image_url").toString();
                   }
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
            if(count<=10){
                //拼凑
                String nextUrl = indexUrl + "1&max_behot_time=" + max_behot_time + "&max_behot_time_tmp=" + max_behot_time + "&tadrequire=true";
                Request request = new Request(nextUrl);
                page.addTargetRequest(request);
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
            //获取正文内容
            String content = "";
            List<Selectable> contentList = page.getHtml().xpath("//*[@class='article-a__content']").nodes();
            if(contentList.size()>0){
                content = contentList.get(0).xpath("///allText()").get();
            }
            if(content==null||content.trim().equals("")){
                List<Selectable> contentList2 = page.getHtml().xpath("body").$("p").nodes();
                if(contentList2.size()>0){
                    for (Selectable selectable : contentList2) {
                        content += selectable.xpath("///allText()").get();
                    }
                }
            }
            if(content==null||content.trim().equals("")){
                List<Selectable> contentList3 = page.getHtml().xpath("//*[@class='article-content']").nodes();
                if(contentList3.size()>0){
                    content += contentList3.get(0).xpath("///allText()").get();
                }
            }
            //获取images
            String images = extras.get("images").toString();
            //持久化到数据库
            Society society = new Society();
            society.setContent(content);
            society.setPublishTime(publish_time);
            society.setSource(source);
            society.setTitle(title);
            society.setSourceUrl(detailUrl);
            society.setImages(images);
            //存储数据
            list.add(society);
        }
    }

    public Site getSite() {
        return site;
    }

    public static List<Society> getData() {
        return list;
    }

    public static void main(String[] args) {
        Spider.create(new SocietyReptiles()).addUrl(indexUrl)
                .addPipeline(new ConsolePipeline()).thread(50).run();
    }
}

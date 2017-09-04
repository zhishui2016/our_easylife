package com.mlg.easylife.base.utils.chatroom;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 读取数据
 * Created by 黄振强 on 2017/8/13.
 */
public class ReadData {
    private static String basePath="/home/csvDir";
    private static final List<String> historyList = new ArrayList<String>();
    /**
     * 查找文件夹下所有符合csv的文件
     *
     * @param dir 要查找的文件夹对象
     * */
     public static List<String> findFile(File dir) throws IOException {
        List<String> pathList = new ArrayList<String>();
        File[] dirFiles = dir.listFiles();
        for(File temp : dirFiles){
            if(!temp.isFile()){
                findFile(temp);
            }
            //查找指定的文件
            if(temp.isFile() && temp.getAbsolutePath().endsWith(".txt") ){
                //处理格式
                String wholePath = temp.getAbsolutePath();
                String partPath = keepNumber(wholePath.split("chat_record")[1]);
                pathList.add(partPath);
            }
        }
        return pathList;
    }
    private static String keepNumber(String string){
        Pattern p = Pattern.compile("[^0-9]");
        Matcher m = p.matcher(string);
        return m.replaceAll("").trim();
    }
    /**
     * @param file　要读取的文件对象
     * @return 返回文件的内容
     * */
     public static void readFileContent(File file) throws IOException{
        FileReader fr = new FileReader(file);
        BufferedReader br = new BufferedReader(fr);
        StringBuffer sb = new StringBuffer();
        while(br.ready()){
            sb.append(br.readLine());
            historyList.add(sb.toString());
        }
    }

    /**
     * @param file 要写入的文件对象
     * @param content 要写入的文件内容
     * */
     public static void  writeFileContent(File file,String content) throws IOException{
        FileWriter fw = new FileWriter(file);
        fw.write(content);
        fw.flush();
        fw.close();
     }

     public static void main(String[] args) {
        try {
            findFile(new File(basePath));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

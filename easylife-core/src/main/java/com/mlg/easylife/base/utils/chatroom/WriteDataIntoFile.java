package com.mlg.easylife.base.utils.chatroom;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 写出数据
 * Created by 黄振强 on 2017/8/13.
 */
public class WriteDataIntoFile {
    public static void writeData(String dirName, String content) {
        try {
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String path = dirName + "\\" + sdf.format(date) + ".txt";
            File f = new File(path);
            if (!f.exists())
            {
                f.createNewFile();
            }
            OutputStreamWriter write = new OutputStreamWriter(new FileOutputStream(f,true),"UTF-8");
            BufferedWriter writer=new BufferedWriter(write);
            writer.write(content);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

package com.mlg.easylife.base.utils;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by 黄振强 on 2016/8/28.
 */
public class DateUtil {
	
	
	public static long getBetweenSecond(Date d1 , Date d2){
		return Math.abs((d1.getTime()-d2.getTime())/1000);
	}

    /**
     * 把写入的时间作为开始时间,并把时分秒设置为0
     * @param current
     * @return
     */
    public static Date getBeginTime(Date current){
        Calendar c = Calendar.getInstance();
        c.setTime(current);
        c.set(c.get(Calendar.YEAR),c.get(Calendar.MONDAY) , c.get(Calendar.DATE),0,0,0);
        return c.getTime();
    }

    /**
     * 把传如的时间作为结束时间,并把时分秒设置为0
     * @param current
     * @return
     */
    public static Date getEndTime(Date current){
        Calendar c = Calendar.getInstance();
        c.setTime(current);
        c.set(c.get(Calendar.YEAR),c.get(Calendar.MONDAY) , c.get(Calendar.DATE),0,0,0);
        c.add(Calendar.DATE,1);
        c.add(Calendar.SECOND,-1);
        return c.getTime();
    }
    /**
     * 测试
     */
    public static void main(String[] args) {
        System.out.println(getBeginTime(new Date()).toLocaleString());
        System.out.println(getEndTime(new Date()).toLocaleString());
    }

}

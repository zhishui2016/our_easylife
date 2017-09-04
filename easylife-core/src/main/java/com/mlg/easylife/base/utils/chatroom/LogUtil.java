package com.mlg.easylife.base.utils.chatroom;


import com.mlg.easylife.base.domain.Iplog;

import java.util.Date;

/**
 * NAME   :  LeaveSystem/com.amayadream.leave.util
 * Author :  Amayadream
 * Date   :  2015.12.29 15:07
 * TODO   :
 */
public class LogUtil {

    public Iplog setLog(String userid, Date time, String type, String detail, String ip){
        Iplog log = new Iplog();
        log.setUsername(userid);
        log.setLoginTime(time);
        log.setType(type);
        log.setDetail(detail);
        log.setIp(ip);
        return log;
    }

}

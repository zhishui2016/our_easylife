package com.mlg.easylife.base.utils.chatroom;

import java.util.UUID;

/**
 * @author :  Amayadream
 * @date :  2017.01.11 19:03
 */
public class StringUtil {

    public static String getGuid(){
        return UUID.randomUUID().toString().trim().replaceAll("-", "").toLowerCase();
    }

}

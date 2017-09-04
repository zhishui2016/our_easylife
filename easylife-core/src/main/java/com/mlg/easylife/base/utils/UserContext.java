package com.mlg.easylife.base.utils;

import com.mlg.easylife.base.domain.Logininfo;
import com.mlg.easylife.base.vo.VerifyCodeVO;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;


/**
 * 用户上下文
 */
public class UserContext {
    public static final String LOGININFO_IN_SESSION = "logininfo";
    public static final String VERIFYCODEVO_IN_SESSION = "verifycodevo_in_session";

    //得到session
    private static HttpSession getSession(){
    	return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest().getSession();
    }
    //把current放进session中
    public static void putCurrent(Logininfo current){
    	getSession().setAttribute(LOGININFO_IN_SESSION, current);
    	
    }
    //获取session中的current
    public static Logininfo getCurrent(){
    	return (Logininfo) getSession().getAttribute(LOGININFO_IN_SESSION);
    }
    
    /**
     * 存放VerifyCodeVo
     */
    public static void putVerifyCode(VerifyCodeVO vo){
    	getSession().setAttribute(VERIFYCODEVO_IN_SESSION, vo);
    }
    public static VerifyCodeVO getVerifyCode(){
    	return (VerifyCodeVO) getSession().getAttribute(VERIFYCODEVO_IN_SESSION);
    }
    
    
}

package com.mlg.easylife.interceptor;

import com.mlg.easylife.base.utils.RequireLogin;
import com.mlg.easylife.base.utils.UserContext;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 登录检查监听器
 * @author 黄振强
 *
 */
public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		if(handler instanceof HandlerMethod){
			HandlerMethod hm = (HandlerMethod)handler;
			//如果方法上有标签,且当前的UserContext为空,跳转到登录页面
			if(hm.getMethodAnnotation(RequireLogin.class)!=null && UserContext.getCurrent()==null){
				response.sendRedirect("/login.html");
				return false;
			}
			
		}
		return super.preHandle(request, response, handler);
	}
	
}

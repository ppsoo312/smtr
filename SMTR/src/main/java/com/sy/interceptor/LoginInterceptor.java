package com.sy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;



//public class LoginInterceptor implements HandlerInterceptor{
//	
//	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		
//		boolean result = false;
//		String url = request.getRequestURI();
//		
//		if(request.getSession().getAttribute("login") == null) {
//			
//			if(url.equals("/smtr/addRecipe")) {
//				return false;
//			}
//		}
//		return true;
//	}
//	
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		// TODO Auto-generated method stub
//		
//	}
//	
//	@Override
//	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
//			throws Exception {
//		// TODO Auto-generated method stub
//		
//	}
//
//}

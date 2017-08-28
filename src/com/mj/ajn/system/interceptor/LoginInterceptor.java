package com.mj.ajn.system.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg) throws Exception {
		String uri = req.getRequestURI();
		if (uri.equals("/ShiZunSystem/login")) {
			return true;
		} else {
			Object obj = req.getSession().getAttribute("emp");
			if (obj != null) {
				return true;
			}
			resp.sendRedirect("/ShiZunSystem/login.jsp");
			return false;
		}
	}

}

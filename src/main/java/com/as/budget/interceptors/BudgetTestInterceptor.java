package com.as.budget.interceptors;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class BudgetTestInterceptor implements HandlerInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(BudgetTestInterceptor.class);
	
	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object handler, Exception exp)
			throws Exception {
		
		long endTime = System.currentTimeMillis();
		logger.info("Request URL "+req.getRequestURL().toString()+ " End time "+endTime);
		long startTime = (Long)req.getAttribute("startTime");
		logger.info("Time taken = "+(endTime - startTime));

	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView view)
			throws Exception {
		System.out.println("Request URL "+req.getRequestURL().toString()+" Sent to Handler Current Time"+ System.currentTimeMillis());
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {
		
		long startTime = System.currentTimeMillis();
		logger.info("Request URL "+req.getRequestURL().toString()+ "::::: Start Time " +startTime);
		req.setAttribute("startTime", startTime);
		return true;
	}

}

package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter("/SearchServlet")
public class SearchFilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		boolean is_check=false;
		
		String question=request.getParameter("show_question");
		String dev=request.getParameter("id");
		System.out.println("dev "+dev);
		
		if((question==null||question.trim().length()==0)&&(dev==null)) {
			request.setAttribute("show_questionE", "yes");
			is_check=true;
		}if(is_check) {
			
			request.getRequestDispatcher("ShowQuestion.jsp").forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}

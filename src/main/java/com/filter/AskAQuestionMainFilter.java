package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter("/AskAQuestionMainServlet")
public class AskAQuestionMainFilter implements Filter{

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("filter ask a question");
		String title=request.getParameter("title_askH");
		String body=request.getParameter("body_askH");
		
	
		boolean is_error=false;
		
		if(title.trim().length()==0||title.trim().length()>50||title==null) {
			is_error=true;	
			request.setAttribute("title_askHE", "Please Enter Title or Title is so big");
		}
		if(body.trim().length()==0||body.trim().length()>200||body==null) {
			is_error=true;
			request.setAttribute("body_askHE", "Please Enter Description or Body is so big");
		}
		
		
		if(is_error) {
			request.getRequestDispatcher("AskAQuestion.jsp").forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}

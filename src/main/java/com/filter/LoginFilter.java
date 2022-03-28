package com.filter;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
@WebFilter("/LoginM")
public class LoginFilter implements Filter{
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String email=request.getParameter("email_l");
		String password=request.getParameter("password_l");
		
		System.out.println("filter in login");
		boolean is_error=false;
		String regex = "^(?=.*[0-9])"
                + "(?=.*[a-zA-Z]).{8,16}$";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(password);
		
		String regexg="^[a-z0-9._%+-]+@[a-z]+\\.[a-z]{2,6}$";
		Pattern p1 = Pattern.compile(regexg);
		Matcher m1 = p1.matcher(email);
		
		
		
		if(email.trim().length()==0||m1.find()==false) {
			is_error=true;
			request.setAttribute("emailEL", "Email must Contain *@*.* pattern ");
		}
		if(password.trim().length()==0||m.matches()==false) {
			is_error=true;
			request.setAttribute("passwordEL", "Passwords must contain at least eight characters, including at least 1 letter and 1 number");
		}
		if(is_error) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}

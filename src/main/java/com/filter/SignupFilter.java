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
@WebFilter("/SignupM")
public class SignupFilter implements Filter{

public void destroy() {
		
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("filter");
		String firstname=request.getParameter("firstname_s");		
		String lastname=request.getParameter("lastname_s");
		String email=request.getParameter("email_s");
		String password=request.getParameter("password_s");
		String gender=request.getParameter("gender_s");
		System.out.println(gender);
		
		boolean is_error=false;

		String regex = "^(?=.*[0-9])"
                 + "(?=.*[a-zA-Z]).{8,16}$";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(password);

		
		
		
		if(firstname==null||firstname.trim().length()==0) {
			is_error=true;
			request.setAttribute("firstnameES", "Please Enter the FirstName");
		} if(lastname==null||lastname.trim().length()==0) {
			is_error=true;
			request.setAttribute("lastnameES", "Please Enter the LastName");
		}if(email==null||email.trim().length()==0) {
			is_error=true;
			request.setAttribute("emailES", "Please Enter the email");
		} if(password==null||password.trim().length()==0||password.trim().length()<8||m.matches()==false) {
			is_error=true;
			request.setAttribute("passwordES", "Please Enter the ValidPassword");
		}
		if(is_error==false) {
			//send to servlet
			chain.doFilter(request, response);
		}else {
			//redirect
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}
		

	}

	public void init(FilterConfig arg0) throws ServletException {

		
	}
	
}

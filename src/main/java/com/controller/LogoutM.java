package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutM extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.invalidate(); //destroy session from server's memory 
		Cookie c[]=request.getCookies();
		for(Cookie x:c) {
			if(x.getName().equals("userid")) {
				x.setValue(null);
				x.setMaxAge(0);
				response.addCookie(x);
			}
		}
		response.sendRedirect("HomeLogin.jsp");
	}
	
    
}

package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OtpVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in verify");
		String str = "";
		str = str + request.getParameter("first") + request.getParameter("second") + request.getParameter("third")
				+ request.getParameter("fourth") + request.getParameter("fifth") + request.getParameter("sixth");
		System.out.println(str);

		Cookie c[] = request.getCookies();
		Boolean b = false;
		for (Cookie x : c) {
			if (x.getName().equals("otpset")) {
				
				if (x.getValue().equals(str)) {
					System.out.println("success");
					// you can change your password
					b = true;
					
				}
			}
		}
		
		if (b == false) {
			response.sendRedirect("LoadingNotDone.jsp");
		}else {
			response.sendRedirect("ChangePassword.jsp");
		}
	}

}

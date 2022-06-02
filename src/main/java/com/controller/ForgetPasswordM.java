package com.controller;

import java.io.IOException;
import java.util.Random;
import javax.mail.Authenticator;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.EmailService;

public class ForgetPasswordM extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Forget Password");
		String forget_email = request.getParameter("email_f");
		Cookie c1=new Cookie("changepassemail",forget_email);
		response.addCookie(c1);
		
		// logic of otp
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		
		// this will convert any number sequence into 6 character.
		String otp = String.format("%06d", number);
		System.out.println(otp);
	
		try {
			EmailService email_service = new EmailService();
			email_service.welcomeEmail(forget_email, otp);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		Cookie c=new Cookie("otpset",otp);
		c.setMaxAge(60);
		response.addCookie(c);
		
		response.sendRedirect("OtpPage.jsp");
		
	}

}

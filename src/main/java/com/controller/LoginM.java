package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.bean.UserBean;
import com.bean.UseridCookie;
import com.dao.QuesBuddyDao;



public class LoginM extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("sucessfully login");
		String email=request.getParameter("email_l");
		String password=request.getParameter("password_l");
		System.out.println(email+" fds "+password);
		UserBean lbean=new UserBean();
		lbean.setEmail(email);
		lbean.setPassword(password);
		QuesBuddyDao dao=new QuesBuddyDao();
		boolean is_check=false;
		try {
			is_check=dao.checkAlldata(lbean);
			System.out.println(is_check);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(is_check) {
			System.out.println("user exists");
//			UseridCookie uc=new UseridCookie();//for accessing the value userid
			
			UserBean user=new UserBean();
			try {
				user=dao.fetchAllData(UseridCookie.userid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("user "+user);
			System.out.println(user.getFirstName()+" "+user.getLastName());
			request.setAttribute("UserALLInfo", user);
			
			HttpSession session =   request.getSession();
			session.setAttribute("userid", UseridCookie.userid); 
			session.setAttribute("name", user.getFirstName());

			session.setMaxInactiveInterval(60*10);//seconds 
			
			Cookie c=new Cookie("userid", Integer.toString(UseridCookie.userid));
			c.setMaxAge(60*10);
			response.addCookie(c);
//			response.sendRedirect("HomeLogin.jsp");
			
			
			
			
			request.getRequestDispatcher("HomeLogin.jsp").forward(request, response);;
		}else {
			request.setAttribute("direct_EL", "Email and Password doesn't exists");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
	}

}

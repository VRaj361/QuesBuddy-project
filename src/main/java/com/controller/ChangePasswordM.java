package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.QuesBuddyDao;

public class ChangePasswordM extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String new_password=request.getParameter("new_password_f");
		System.out.println(new_password);
		
		Cookie c[]=request.getCookies();
		String str="";
		for(Cookie x:c) {
			if(x.getName().equals("changepassemail")) {
				str=x.getValue();
			}
		}
		QuesBuddyDao dao=new QuesBuddyDao();
		int ans=-1;
		try {
			ans=dao.changePassword(str,new_password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ans==0) {
			response.sendRedirect("LoadingNotDone.jsp");
		}else {
			response.sendRedirect("PasswordChange.jsp");
		}
		
		
	}

}

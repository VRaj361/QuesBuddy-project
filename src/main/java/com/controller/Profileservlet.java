package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UserBean;
import com.dao.QuesBuddyDao;


public class Profileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in profile1");
		
		HttpSession session=request.getSession();
		int str=(Integer)session.getAttribute("userid");
		System.out.println(str);
		QuesBuddyDao dao=new QuesBuddyDao();
		UserBean user=new UserBean();
		try {
			user=dao.fetchAllData(str);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("userget", user);
		request.getRequestDispatcher("Profile.jsp").forward(request, response);
		
		
		
	}

}

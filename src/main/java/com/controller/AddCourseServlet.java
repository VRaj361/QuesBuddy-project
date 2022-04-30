package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Course;
import com.dao.QuesBuddyDao;


public class AddCourseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	System.out.println("in servlet add course");
    	String coursetitle=request.getParameter("coursetitle");
    	String coursebody=request.getParameter("coursebody");
    	String courseprice=request.getParameter("courseprice");
    	String courseurl=request.getParameter("courseurl");
    	String coursetype=request.getParameter("coursetype");
    	
    	HttpSession session=request.getSession();
    	int userid=(Integer)session.getAttribute("userid");
    	Course c=new Course();
    	c.setCoursebody(coursebody);
    	c.setCoursetitle(coursetitle);
    	c.setEnrollstu(0);
    	c.setPrice(Integer.parseInt(courseprice));
    	c.setUserid(userid);
    	c.setImageurl(courseurl);
    	c.setType(coursetype);
    	QuesBuddyDao dao=new QuesBuddyDao();
    	try {
			dao.setAllDetailCourse(c);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	response.sendRedirect("LoadinPage.jsp");
    	

    }
	
}

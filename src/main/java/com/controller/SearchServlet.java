package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Questionget;
import com.dao.QuesBuddyDao;


public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in search servlet");
		String str=request.getParameter("show_question");
		if(str==null) {
			str=request.getParameter("id");
		}
		String[] arrs=str.split(" ");
		QuesBuddyDao dao=new QuesBuddyDao();
		ArrayList<Questionget> arr1=new ArrayList<Questionget>();
		for(int i=0;i<arrs.length;i++) {
			ArrayList<Questionget> arr=new ArrayList<Questionget>();
			try {
				arr=dao.getAllDataQuestionTitle(arrs[i]);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("arr res "+arr +"length" +arr.size() );
			for(Questionget x:arr) {
				if(arr1.isEmpty()) {
					arr1.add(x);
				}else {
					for(Questionget y:arr1) {
						if(!x.getTitle().equals(y.getTitle())) {
							arr1.add(x);
						}
					}
				}
			}
		}
		System.out.println("arr res "+arr1 +"length" +arr1.size() );
		request.setAttribute("ShowQuestionArr", arr1);
		request.getRequestDispatcher("ShowQuestionAll.jsp").forward(request, response);
		//request can send on show question all page
	}
	//call the method of get all data using title
	

}

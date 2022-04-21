package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Question;
import com.dao.QuesBuddyDao;

public class AskAQuestionMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in servlet valid");
		String title=request.getParameter("title_askH");
		String body=request.getParameter("body_askH");
		String tags=request.getParameter("tags_askH");
		
		System.out.println("ask a question servlet");
		Question q=new Question();
		q.setTitle(title);
		q.setBody(body);
		q.setTags(tags);
		HttpSession session=request.getSession();
		int userid=(Integer)session.getAttribute("userid");
		System.out.println("userid is "+userid);
		q.setUserid(userid);
		
		QuesBuddyDao dao=new QuesBuddyDao();
		try {
			dao.insertDataQuestion(q);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("isToast","yes");
		request.getRequestDispatcher("AskAQuestion.jsp").forward(request, response);
		
		
		
		
		
		
	}
}

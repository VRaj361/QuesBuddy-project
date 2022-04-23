package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.QuesBuddyDao;

public class ParticularUserAnsAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in servlet particular user text");
		String text=request.getParameter("text_user");
		String questionid=(String)request.getParameter("question");
		System.out.println("questionid "+questionid);
		if(text.trim().length()>0) {
			QuesBuddyDao dao=new QuesBuddyDao();
			HttpSession session=request.getSession();
			if(session.getAttribute("userid")==null) {
				System.out.println("enter in userid");
				request.setAttribute("error_login", "yes");
				request.getRequestDispatcher("ShowParticularQuestion.jsp").forward(request, response);
			}else {
			int userid=(Integer)session.getAttribute("userid");
			
			System.out.println(userid+" "+questionid+" "+text);
			try {
				dao.sendDataofAskQuestion(userid, text, Integer.parseInt(questionid));
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("successfully done user enter");
			request.getRequestDispatcher("ShowParticularQuestionServlet?question_id="+questionid).forward(request, response);
			}
		}else {
			request.setAttribute("text_usere", "yes");
//			HttpSession session=request.getSession();
//			int questionid=(Integer)session.getAttribute("questionid");
//			request.getRequestDispatcher("ShowParticularQuestionServlet?")
		}
	}

}

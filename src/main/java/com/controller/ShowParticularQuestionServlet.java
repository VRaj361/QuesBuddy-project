package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Questionget;
import com.bean.UserBean;
import com.dao.QuesBuddyDao;


public class ShowParticularQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
		String questionid=request.getParameter("question_id");
		System.out.println(questionid);
		
		//HttpSession session=request.getSession();
		//int userid=(Integer)session.getAttribute("userid");
//		session.setAttribute("questionid", questionid);
//		int questionid1=(Integer)session.getAttribute("questionid");
		QuesBuddyDao dao=new QuesBuddyDao();
		Questionget bean=new Questionget();
		try {
			bean=dao.fetchParticularDataWithQuestion(Integer.parseInt(questionid));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//
		
		System.out.println(bean.getFirstname()+" "+bean.getTitle());
		
		
		ArrayList<Questionget> arr=new ArrayList<Questionget>();
		try {
			arr=dao.fetchAllDataWithQuestion(Integer.parseInt(questionid));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(arr);
		for(Questionget x:arr) {
			System.out.println(x.getAnswer()+" "+x.getFirstname());
		}
		
		request.setAttribute("answers", arr);
		request.setAttribute("partiuser", bean);
		request.getRequestDispatcher("ShowParticularQuestion.jsp").forward(request, response);
		
		
		
		
		
		//response can increase the number of answers and also number of views in particular question
		
		//profile section where same think is show below and particular user which ask the question can select the best answer and correct answer 
		
		
	}

}

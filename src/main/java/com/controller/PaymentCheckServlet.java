package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Course;
import com.bean.Customer;
import com.bean.UserBean;
import com.dao.QuesBuddyDao;
import com.service.EmailService;


public class PaymentCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in serv");
		String cardnumber=request.getParameter("cardnumber");
		String cardname=request.getParameter("cardname");
		String cardcvv=request.getParameter("cardcvv");
		String billinvoice=request.getParameter("billinvoice");
		String courseid=request.getParameter("courseid");
		System.out.println(cardname+" "+cardnumber+" "+cardcvv+" "+billinvoice);
		Customer c=new Customer();
		c.setCardcvv(cardcvv);
		c.setCardname(cardname);
		c.setCardnumber(cardnumber);
		c.setCourseid(Integer.parseInt(courseid));
		c.setInvoicenum(billinvoice);
		HttpSession session=request.getSession();
		int userid=(Integer)session.getAttribute("userid");
		c.setUserid(userid);
		boolean is_check=false;
		System.out.println(cardnumber.length());
		if(cardnumber.length()!=16) {
			
			is_check=true;
		}else if(cardname.split(" ").length!=3) {
			
			is_check=true;
		}else if(cardcvv.length()!=3) {
			
			is_check=true;
		}
		
		if(is_check==true) {
			System.out.println("in");
			response.sendRedirect("LoadingNotDone.jsp");
			//page create
		}else {
			QuesBuddyDao dao=new QuesBuddyDao();
			try {
				dao.setBuyerInfo(c);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			UserBean user=null;
			try {
				user=dao.fetchAllData(userid);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			EmailService mail=new EmailService();
			mail.buyCourseEmail(c,user);
			response.sendRedirect("LoadinPage.jsp");
		}
		
		
	}

}

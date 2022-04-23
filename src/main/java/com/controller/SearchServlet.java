package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;

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

		HashMap<Integer, Questionget> arr1=new HashMap<Integer, Questionget>();
		int count=0;
		for(int i=0;i<arrs.length;i++) {
			ArrayList<Questionget> arr=new ArrayList<Questionget>();
			try {
				arr=dao.getAllDataQuestionTitle(arrs[i]);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println("arr res "+arr +"length" +arr.size() );
			//System.out.println("arr1 res "+arr1 +"length" +arr1.size() );
			
			
			for(Questionget x:arr) {
				if(arr1.isEmpty()) {
					arr1.put(++count,x);
				}else {

					Iterator<Integer> it=arr1.keySet().iterator();
					//System.out.println("hello iterator");
					//System.out.println("it "+it+" arr length "+arr1.size());
					boolean is_check=false;
					while(it.hasNext()) {
						Integer key=it.next();
						//System.out.println(key);
						//System.out.println(arr1.get(key).getTitle()+"   "+x.getTitle());
						
						if(arr1.get(key).getTitle().equals(x.getTitle())) {
							//System.out.println("in ");
							is_check=true;
						}

						
					}//end of while
					if(is_check==false) {
						arr1.put(++count, x);
					}
				}
			}
		}
		//System.out.println("arr res1 "+arr1 +"length " +arr1.size() );
		request.setAttribute("ShowQuestionArr", arr1);
		
		request.getRequestDispatcher("ShowQuestionAll.jsp").forward(request, response);
		
	}
	
	

}

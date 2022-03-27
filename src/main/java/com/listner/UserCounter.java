package com.listner;


import java.sql.Connection;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.util.UserCounterStatic;

public class UserCounter implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent arg0) {
		UserCounterStatic.count++;
		System.out.println("db connect "+UserCounterStatic.count);
//		Connection con=UserCounterStatic.getConnection();
		
		
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		UserCounterStatic.count--;
		System.out.println("db destroyed "+UserCounterStatic.count);

	}
	
}

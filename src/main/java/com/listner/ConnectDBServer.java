package com.listner;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.util.DBConnectiongetCon;
import com.util.DbConnectionConn;

public class ConnectDBServer  implements ServletContextListener{

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		DbConnectionConn.con=DBConnectiongetCon.getConnectionDB();
		System.out.println("db connection done using listner");
		
	}
	
}

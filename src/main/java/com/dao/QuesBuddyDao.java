package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.UseridCookie;
import com.util.DbConnectionConn;

import com.bean.UserBean;

public class QuesBuddyDao {
	public void insertData(UserBean bean) throws SQLException {
//		Connection con=DbConnectionConn.con.getConnection();
		System.out.println("insert in");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into users (firstname,lastname,gender,email,password,createdat,roleid) values (?,?,?,?,?,CURRENT_DATE,2)");
		pre.setString(1, bean.getFirstName());
		pre.setString(2, bean.getLastName());
		pre.setString(3, bean.getGender());
		pre.setString(4, bean.getEmail());
		pre.setString(5, bean.getPassword());
		int record=pre.executeUpdate();//because of insert query
		
		
		PreparedStatement pre1=DbConnectionConn.con.prepareStatement("select userid from users where firstname=? and lastname=? and email=?");
		pre1.setString(1, bean.getFirstName());
		pre1.setString(2, bean.getLastName());
		pre1.setString(3,bean.getEmail());
		ResultSet r= pre1.executeQuery();
		while(r.next()) {
//			System.out.println(r.getInt("userid"));
			UseridCookie.userid=r.getInt("userid");
			System.out.println(UseridCookie.userid+ "  "+ r.getInt("userid"));
		
		}
		
		System.out.println(record+"row insert new user");//show the record
	}//insert data in sign up time
	
	public boolean checkAlldata(UserBean bean) throws SQLException{
//		Connection con=DBConnectiongetCon.getConnection();
		System.out.println("select in checking");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select email,password,userid from users");
		ResultSet rs=pre.executeQuery();
		System.out.println(rs);
		while(rs.next()) {
			String email=rs.getString("email");
			String password=rs.getString("password");
			System.out.println(email+" "+password);
			if(email.equals(bean.getEmail())&&password.equals(bean.getPassword())) {
				System.out.println("correct user check");
				UseridCookie.userid=rs.getInt("userid");
				System.out.println(UseridCookie.userid+ "  "+ rs.getInt("userid"));
				return true;
			}
		}
		
		return false;
	}//check all data for return true or false to get connection on login page
	
}

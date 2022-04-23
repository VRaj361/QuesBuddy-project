package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bean.UseridCookie;
import com.util.DbConnectionConn;

import com.bean.Question;
import com.bean.Questionget;
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
	
	public UserBean fetchAllData(int userid) throws SQLException{
		UserBean userBean=new UserBean();
		System.out.println("Fetching the data of user");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select * from users where userid=?");
		pre.setInt(1, userid);
		ResultSet rs=pre.executeQuery();
		System.out.println(rs);
		while(rs.next()) {
			userBean.setEmail(rs.getString("email"));
			userBean.setFirstName(rs.getString("firstname"));
			userBean.setLastName(rs.getString("lastname"));
			userBean.setGender(rs.getString("gender"));
			userBean.setPassword(rs.getString("password"));
		}
		return userBean;
	}//fetch all data using userid for future purpose
	
	
	
	public void insertDataQuestion(Question bean) throws SQLException{
		System.out.println("insert question in data base");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into questions (title,body,issolved,userid,tags) values (?,?,false,?,?)");
		pre.setString(1, bean.getTitle());
		pre.setString(2, bean.getBody());
		pre.setInt(3, bean.getUserid());
		pre.setString(4, bean.getTags());
		System.out.println(bean.getTags()+" inserdata question");
		int row=pre.executeUpdate();
		System.out.println("1 row inserted");
		
	}//insert ask question title,body,tags,userid
	
	
	public ArrayList<Questionget> getAllDataQuestionTitle(String str) throws SQLException{
		System.out.println("getAllDataQuestion in");
		//PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,lastname,email,createdat,questionid,title,body,tags,userid,issolved from questions natural join users where title=?;");
		System.out.println(str);
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,lastname,email,createdat,questionid,title,body,tags,userid,issolved from questions natural join users where body like CONCAT( '%',' ',?,' ','%') or title like CONCAT( '%',' ',?,' ','%') ;");
		ArrayList<Questionget> arr=new ArrayList<Questionget>();
		pre.setString(1,str);
		pre.setString(2, str);
	
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			Questionget bean=new Questionget();
			bean.setLastname(r.getString("lastname"));
			bean.setDate(r.getString("createdat"));
			bean.setEmail(r.getString("email"));
			bean.setIs_solved(r.getString("issolved"));
			bean.setBody(r.getString("body"));
			bean.setQuestionid(r.getInt("questionid"));
			bean.setTags(r.getString("tags"));
			bean.setTitle(r.getString("title"));
			bean.setFirstname(r.getString("firstname"));
			bean.setUserid(r.getInt("userid"));
			arr.add(bean);
		}
		System.out.println("arr dao"+arr);
		return arr;
		
	}//get back to array on listparticularquestion 
	
	public Questionget fetchParticularDataWithQuestion(int questionid) throws SQLException{
		System.out.println("fetchalldatawithQuestion in");
		//PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,lastname,email,createdat,questionid,title,body,tags,userid,issolved from questions natural join users where title=?;");
		
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,lastname,email,createdat,questionid,title,body,tags,userid,issolved from questions natural join users where questionid=? ;");
		pre.setInt(1, questionid);
		ResultSet r=pre.executeQuery();
		Questionget bean=new Questionget();
		while(r.next()) {
			bean.setLastname(r.getString("lastname"));
			bean.setDate(r.getString("createdat"));
			bean.setEmail(r.getString("email"));
			bean.setIs_solved(r.getString("issolved"));
			bean.setBody(r.getString("body"));
			bean.setQuestionid(r.getInt("questionid"));
			bean.setTags(r.getString("tags"));
			bean.setTitle(r.getString("title"));
			bean.setFirstname(r.getString("firstname"));
			bean.setUserid(r.getInt("userid"));
			
		}
		return bean;
	
	}//data of particular question 
	
	public ArrayList<Questionget> fetchAllDataWithQuestion(int questionid) throws SQLException{
		System.out.println("fetchAllDataWithQuestion in");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,lastname,userid,isaccepted,answer,answerid from answers natural join users where questionid=? ;");
		pre.setInt(1, questionid);
		ResultSet r=pre.executeQuery();
		ArrayList<Questionget> arr=new ArrayList<Questionget>();
		while(r.next()) {
			Questionget bean=new Questionget();
			bean.setFirstname(r.getString("firstname"));
			bean.setLastname(r.getString("lastname"));
			//isaccepted
			bean.setUserid(r.getInt("userid"));
			bean.setAnswer(r.getString("answer"));
			bean.setAnswerid(r.getInt("answerid"));
			arr.add(bean);
		}
		return arr;
		
	}//all answer of particular question
	
	public void sendDataofAskQuestion(int userid,String text,int questionid) throws SQLException{
		System.out.println("send data of ask question to database");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into answers (questionid,userid,isaccepted,answer) values (?,?,false,?)");
		pre.setInt(1, questionid);
		pre.setInt(2, userid);
		pre.setString(3, text);
		
		int record=pre.executeUpdate();
	}//add the data in answer table using userid and text 
	
	
	
	
	
}

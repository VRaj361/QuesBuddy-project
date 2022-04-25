<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header section -->
<%//UserBean user=(UserBean)request.getAttribute("UserALLInfo"); 
String name=(String)session.getAttribute("name");
%>

<header class="header-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="site-logo">
					<img src="img/Logomain_4.png" alt="">
				</div>
				<div class="nav-switch">
					<i class="fa fa-bars"></i>
				</div>
			</div>
			<div class="col-lg-9 col-md-9">
					<% if(session.getAttribute("userid")==null||name==null){ %>  
						<a href="login.jsp" class="site-btn header-btn text-capitalize fs-1  ">Login</a>
					<%}else{ %>
						<a href="Profileservlet" class="site-btn header-btn text-capitalize fs-1 "><%=name %></a>
					<%} %>
				
					<!-- servlet and destroy session and cookie after redirect on homelayout.jsp  -->
				<nav class="main-menu">
					<ul>
						<li><a href="HomeLogin.jsp">Home</a></li>
						<li><a href="AboutUs.jsp">About us</a></li>
						<li><a href="ShowQuestion.jsp">Show Question</a></li>
						<li><a href="AskAQuestion.jsp">Ask Question</a></li>
						<li><a href="Contact.jsp">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- Header section end -->
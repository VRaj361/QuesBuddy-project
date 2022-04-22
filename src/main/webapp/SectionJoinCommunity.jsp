<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- join community section -->
<%
String name = (String) session.getAttribute("name");
%>

<section class="banner-section spad" style="border-top: 3px solid #d82a4e;">
	<div class="container">
		<div class="section-title mb-0 pb-2">
			<h2>Join Our Community Now!</h2>
			<p>Connect instantly with Developers through conversational Ask
				Question Forum at WebUni.</p>
		</div>
		<div class="text-center pt-5">

			<%
			if (session.getAttribute("userid") == null || name == null) {
			%>
<!--  		<a href="login.jsp" class="site-btn header-btn text-capitalize fs-1 ">Login</a>-->
			<a href="signup.jsp" class="site-btn">Register Now</a>
			<%
			} else {
			%>
			<a href="LogoutM" class="site-btn text-capitalize fs-1 "><%=name %></a>
			<%
			}
			%>




		</div>
	</div>
</section>
<!-- join community section end -->
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<jsp:include page="TagHead.jsp"></jsp:include>
</head>
<body style="background-color: pink; height: 100vh;">
	<jsp:include page="PageLoader.jsp"></jsp:include>
	<%UserBean user=(UserBean)request.getAttribute("userget"); %>
	
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col col-lg-6 mb-4 mb-lg-0">
				<div class="card mb-3" style="border-radius: .5rem;">
					<div class="row g-0">
						<div class="col-md-4 gradient-custom text-center text-white"
							style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
								alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
							<h5><%=user.getFirstName()+" "+user.getLastName() %></h5>
							<p>Student</p>
							<a href="#!"><i class="fa fa-edit mb-5"></i></a>
						</div>
						<div class="col-md-8">
							<div class="card-body p-4">
								<h6>Information</h6>
								<hr class="mt-0 mb-4">
								<div class="row pt-1">
									<div class="col-6 mb-3">
										<h6>Email</h6>
										<p class="text-muted"><%=user.getEmail() %></p>
									</div>
									<div class="col-6 mb-3">
										<h6>Password</h6>
										<p class="text-muted"><%=user.getPassword() %></p>
									</div>
								</div>
								<h6>Projects</h6>
								<hr class="mt-0 mb-4">
								<div class="row pt-1">
									<div class="col-6 mb-3">
										<h6>Recent</h6>
										<p class="text-muted">Lorem ipsum</p>
									</div>
									<div class="col-6 mb-3">
										<h6>Most Viewed</h6>
										<p class="text-muted">Dolor sit amet</p>
									</div>
								</div>
								<div class="row pt-1">
									<% if(user.getRoleid()==1){%>
									<div class="col-6 mb-3 ">
										<a class="btn  submit px-3"
											style="background-color: #f6586d; color: white;" href="AddCourse.jsp">Add
											course</a>
									</div>
									<% }%>
									
									<div class="col-6 mb-3">
										
											<a class="btn  submit px-3"
											style="background-color: #f6586d; color: white;" href="ProfileCourse.jsp">Show Course</a>
									</div>
									<div class="col-6 mb-3">
										
											<a class="btn  submit px-3"
											style="background-color: #f6586d; color: white;" href="LogoutM">Logout</a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>
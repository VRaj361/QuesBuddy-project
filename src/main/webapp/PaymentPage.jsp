<%@page import="java.sql.Date"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="com.bean.Course"%>
<%@page import="com.dao.QuesBuddyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"></link>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="img/bg.jpg" type="image/x-icon">
<link rel="icon" type="image/x-icon" href="img/favicon.png">
<jsp:include page="TagHead.jsp"></jsp:include>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	crossorigin="anonymous"></script>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif
}

body {
	background-color: #ffc0cb
}

.container {
	margin: 20px auto;
	width: 800px;
	padding: 30px
}

.card.box1 {
	width: 350px;
	height: 500px;
	background-color: #f55775;
	color: white;
	border-radius: 0
}

.card.box2 {
	width: 450px;
	height: 580px;
	background-color: #ffffff;
	border-radius: 0
}

.text {
	font-size: 13px
}

.box2 .btn.btn-primary.bar {
	width: 20px;
	background-color: transparent;
	border: none;
	color: #f65869
}

.box2 .btn.btn-primary.bar:hover {
	color: white
}

.box1 .btn.btn-primary {
	background-color: #f55775;
	width: 45px;
	height: 45px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid #ddd
}

.box1 .btn.btn-primary:hover {
	background-color: gainsboro;
	color: white
}

.btn.btn-success {
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #ddd;
	color: black;
	display: flex;
	justify-content: center;
	align-items: center;
	border: none
}

.nav.nav-tabs {
	border: none;
	border-bottom: 2px solid #ddd
}

.nav.nav-tabs .nav-item .nav-link {
	border: none;
	color: black;
	border-bottom: 2px solid transparent;
	font-size: 14px
}

.nav.nav-tabs .nav-item .nav-link:hover {
	border-bottom: 2px solid #f65869;
	color: #f65869
}

.nav.nav-tabs .nav-item .nav-link.active {
	border: none;
	border-bottom: 2px solid #f65869
}

.form-control {
	border: none;
	border-bottom: 1px solid #ddd;
	box-shadow: none;
	height: 20px;
	font-weight: 600;
	font-size: 14px;
	padding: 15px 0px;
	letter-spacing: 1.5px;
	border-radius: 0
}

.inputWithIcon {
	position: relative
}

img {
	width: 50px;
	height: 20px;
	object-fit: cover
}

.inputWithIcon span {
	position: absolute;
	right: 0px;
	bottom: 9px;
	color: #f65869;
	cursor: pointer;
	transition: 0.3s;
	font-size: 14px
}

.form-control:focus {
	box-shadow: none;
	border-bottom: 1px solid #ddd
}

.btn-outline-primary {
	color: black;
	background-color: #ddd;
	border: 1px solid #ddd
}

.btn-outline-primary:hover {
	background-color: #f65869;
	border: 1px solid #ddd
}

.btn-check:active+.btn-outline-primary, .btn-check:checked+.btn-outline-primary,
	.btn-outline-primary.active, .btn-outline-primary.dropdown-toggle.show,
	.btn-outline-primary:active {
	color: white;
	background-color: #f65869;
	box-shadow: none;
	border: 1px solid #ddd
}

.btn-group>.btn-group:not(:last-child)>.btn, .btn-group>.btn:not(:last-child):not(.dropdown-toggle),
	.btn-group>.btn-group:not(:first-child)>.btn, .btn-group>.btn:nth-child(n+3),
	.btn-group>:not(.btn-check)+.btn {
	border-radius: 50px;
	margin-right: 20px
}

form {
	font-size: 14px
}

form .btn.btn-primary {
	width: 100%;
	height: 45px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	background-color: #f55775;
	border: 1px solid #ddd
}

form .btn.btn-primary:hover {
	background-color: #f65869
}

@media ( max-width :750px) {
	.container {
		padding: 10px;
		width: 100%
	}
	.text-green {
		font-size: 14px
	}
	.card.box1, .card.box2 {
		width: 100%
	}
	.nav.nav-tabs .nav-item .nav-link {
		font-size: 12px
	}
}
</style>
</head>
<body>


	<jsp:include page="PageLoader.jsp"></jsp:include>
	<%QuesBuddyDao dao=new QuesBuddyDao();
		String str=request.getParameter("course");
		Course c=new Course();
		try{
		c=dao.getParicularCourse(Integer.parseInt(str));
		}catch(Exception e){
			e.printStackTrace();
		}
		Random random = new Random();
		long innum=Math.round(random.nextFloat() * Math.pow(10,12));
		       
		
		
	%>
	<div class="container  d-md-flex align-items-center">
		<div class="card box1 shadow-sm p-md-5 p-md-5 p-4">
			<div class="fw-bolder mb-4">
				<span class="fas fa-dollar-sign"></span><span class="ps-1"><%=c.getPrice() %>.00</span>
			</div>
			<div class="d-flex flex-column">
				
				<div
					class="d-flex align-items-center justify-content-between text mb-4">
					<span>Total</span> <span class="fas fa-dollar-sign"><span
						class="ps-1"><%=c.getPrice() %>.00</span></span>
				</div>
				<div class="border-bottom mb-4"></div>
				<div class="d-flex flex-column mb-4">
					<span class="far fa-file-alt text"><span class="ps-2">Invoice
							ID:</span></span> <span class="ps-3"><%= innum %></span>
				</div>
				
				<div
					class="d-flex align-items-center justify-content-between text mt-5">
					<div class="d-flex flex-column text">
						<span>Customer Support:</span> <span>online chat 24/7</span>
					</div>
					<!-- <div class="btn btn-primary rounded-circle"><i class="fa-solid fa-message-question"></i></div> -->
					<div class="btn btn-primary rounded-circle">
						<span class="fa fa-comments-o text-white"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="card box2 shadow-sm">
			<div
				class="d-flex align-items-center justify-content-between p-md-5 p-4">
				<span class="h5 fw-bold m-0">Payment methods</span>
				
			</div>
			<ul class="nav nav-tabs mb-3 px-md-4 px-2">
				<li class="nav-item"><a class="nav-link px-2 active"
					aria-current="page" href="#">Credit Card</a></li>
				<li class="nav-item"><a class="nav-link px-2" href="#">Mobile
						Payment</a></li>
				<li class="nav-item ms-auto"><a class="nav-link px-2" href="#">+
						More</a></li>
			</ul>
			
			<form action="PaymentCheckServlet" method="post">
				<div class="row">
					<div class="col-12">
						<div class="d-flex flex-column px-md-5 px-4 mb-4">
							<span>Credit Card</span>
							<div class="inputWithIcon">
								<input class="form-control" type="text"
									placeholder="1111 1111 1111 1111" name="cardnumber"> <span class=""> <img
									src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-logok-15.png"
									alt=""></span>
									<input  type="hidden" value=<%=innum %> name="billinvoice" /> 
									<input  type="hidden" value=<%=str%> name="courseid" /> 
							</div>
						</div>
					</div>
				
					<div class="col-md-6">
						<div class="d-flex flex-column ps-md-5  px-4 mb-4">
							<span>Expiration<span class="ps-1">Date</span></span>
							<div class="inputWithIcon">
								<input type="month" class="form-control" placeholder="05/20" name="cardmonth"> <span
									class="fas fa-calendar-alt"></span>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="d-flex flex-column pe-md-5  px-4 mb-4">
							<span>Code CVV</span>
							<div class="inputWithIcon">
								<input type="password" class="form-control" placeholder="123" name="cardcvv">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					
					<div class="col-12">
						<div class="d-flex flex-column px-md-5 px-4 mb-4">
							<span>Name</span>
							<div class="inputWithIcon">
								<input class="form-control text-uppercase" type="text"
									placeholder="Narendra Modi" name="cardname"> <span class="far fa-user"></span>
							</div>
						</div>
					</div>
					<div class="col-12 px-md-5 px-4 mt-3">
						<button class="btn btn-primary w-100">Pay Rs. <%=c.getPrice() %></button>
					</div>
				</div>
			</form>
		</div>
	</div>
		<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>
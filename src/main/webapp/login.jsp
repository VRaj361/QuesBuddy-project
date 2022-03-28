<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/stylelogin.css">

</head>
<body>
	<!-- loading page -->
	<jsp:include page="PageLoader.jsp"/>
	
	<section class="ftco-section hero-section set-bg" style="background-color: pink; height: 100vh;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							<div class="text w-100">
								<h2>Welcome to login</h2>
								<p>Don't have an account?</p>
								<a href="signup.html" class="btn btn-white btn-outline-white">Sign Up</a>
							</div>
						</div>
						<div class="login-wrap p-4 p-lg-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Sign In</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-facebook"></span></a>
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-twitter"></span></a>
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-github"></span></a>
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-google"></span></a>
									</p>
								</div>
							</div>
							<form action="LoginM" class="signin-form">
								<div class="form-group mb-3">
									<label class="label" for="name">Email</label>
									<input type="text" class="form-control" placeholder="Username" name="email_l">
									<p class="text-danger">${emailEL}</p>
									
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Password</label>
									<input type="password" class="form-control" placeholder="Password" name="password_l">
									<p class="text-danger">${passwordEL}</p>
									
								</div>
								<div class="form-group">
								<p class="text-danger">${direct_EL }</p>
									<button type="submit" class="form-control btn btn-primary submit px-3">SignIn</button>
								</div>
								<div class="form-group d-md-flex">
									<div class="w-50 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
											<input type="checkbox" checked>
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!--script tag add  -->
	<jsp:include page="TagScript.jsp"/>
</body>
</html>
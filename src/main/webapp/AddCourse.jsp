<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/stylelogin.css">
	
	<link rel="icon" type="image/x-icon" href="img/favicon.png">

</head>
<body style="background-color: pink; height: 100vh;">
	<!-- loading page -->
	<jsp:include page="PageLoader.jsp"/>
	
	<section class="ftco-section hero-section set-bg"  >
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							<div class="text w-100">
								<h2>Add a Course here</h2>
								<p>Important Points to be noted below</p>
                                <ul class="text-left">
                                    <li>Add Title Carefully .</li>
                                    <li>Make sure URL is correct .</li>
                                    <li>URL can set the image to main page .</li>
                                </ul>
								
							</div>
						</div>
						<div class="login-wrap p-4 p-lg-5">
							
							<form action="AddCourseServlet" class="signin-form" method="post">
								<div class="form-group mb-3">
									<label class="label" for="name">Course Title</label>
									<input type="text" class="form-control" placeholder="Course Title" name="coursetitle" required>
								</div>
                                <div class="form-group mb-3">
									<label class="label" for="name">Course Type</label>
									<input type="text" class="form-control" placeholder="Course Type" name="coursetype" required>
								</div>
                                <div class="form-group mb-3">
									<label class="label" for="name">Price</label>
									<input type="text" class="form-control" placeholder="Course Price" name="courseprice" required>
								</div>
                                <div class="form-group mb-3">
									<label class="label" for="name">Url</label>
									<input type="text" class="form-control" placeholder="Course Image Url" name="courseurl" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Course Body</label>
									<input type="text" class="form-control" placeholder="Course Body" name="coursebody" required>
								</div>
								<div class="form-group">
									<button type="submit" class="form-control btn btn-primary submit px-3">Add Course</button>
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
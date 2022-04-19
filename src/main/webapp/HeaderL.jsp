<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Header section -->

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
				<%--<%if(session.getAttribute("userid")==null){ %>  --%>
				<a href="login.html" class="site-btn header-btn">Login</a>
				
				
				<nav class="main-menu">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="courses.html">Show Question</a></li>
						<li><a href="blog.html">Ask Question</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- Header section end -->
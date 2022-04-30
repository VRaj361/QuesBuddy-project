<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- section for ask question-->

<%
//UserBean user=(UserBean)request.getAttribute("UserALLInfo"); 
String name = (String) session.getAttribute("name");
String toast = (String) request.getAttribute("isToast");
%>

<section class="contact-page spad pb-0">
	<div class="container">
	<%if(toast!=null&&toast.equals("yes")){ %>
	
	<div class="alert alert-success alert-dismissible">
    	<button type="button" class="close" data-dismiss="alert">&times;</button>
    	<strong>Success!</strong> Your Question is sent successfully.
  </div>
	<%} %>
		<div class="row">
			<div class="col-lg-8">
				<div class="contact-form-warp">
					<div class="section-title text-white text-left">
						<h2>Ask a Question</h2>
						<p>Question can answer by community, Experts in their field
							and Industrail Professionals.</p>
					</div>
					<form class="contact-form" action="AskAQuestionMainServlet" method="post" >
						
		
						
						<%
						if (session.getAttribute("userid") == null || name == null) {
						%>
							<input type="text" placeholder="Your title" disabled>
							<textarea placeholder="Message"  disabled></textarea>
							<input type="text" placeholder="Your tags"  disabled>
							<a href="login.jsp" class="site-btn">Login</a>
						<%
						} else {
						%>
							<input type="text" placeholder="Your title" name="title_askH">
							<p class="text-danger">${title_askHE }</p>
							<textarea placeholder="Message" name="body_askH" ></textarea>
							<p class="text-danger">${body_askHE }</p>
							<input type="text" placeholder="Your tags" name="tags_askH" >
							<button class="site-btn" >Submit</button>
						<%
						}
						%>
					</form>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="contact-info-area">
					<div class="section-title text-left p-0">
						<h2>Ask a Question Info</h2>
						<p>The community is here to help you with specific coding,
							algorithm, or language problems.Avoid asking opinion-based
							questions.</p>
					</div>
					<div class="phone-number">
						<span>Help by</span>
						<h2>Bigger community</h2>
					</div>
					<ul class="contact-list">
						<li>Summarise the problem</li>
						<li>Describe what you've tried</li>
						<li>Show some code</li>
						<li>Have a non-programming question</li>
						<li>Show some code</li>
					</ul>
					<div class="social-links">
						<a href="#"><i class="fa fa-pinterest"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-dribbble"></i></a> <a href="#"><i
							class="fa fa-behance"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a>
					</div>
				</div>
			</div>
		</div>

	</div>
</section>
<!-- Page end -->

<%@page import="com.dao.QuesBuddyDao"%>
<%@page import="com.bean.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String courseid = request.getParameter("courses");
Course c = new Course();
QuesBuddyDao dao = new QuesBuddyDao();
c = dao.getParicularCourse(Integer.parseInt(courseid));
%>

<section class="single-course spad pb-0">
	<div class="container">
		<div class="course-meta-area">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="course-note">Featured Course</div>
					<h3><%=c.getCoursetitle()%></h3>
					<div class="course-metas">
						<div class="course-meta">
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
								<h6>Instructor</h6>
								<p>
									<%=c.getFirstname() + " " + c.getLastname()%>, <span><%=c.getTypeu()%></span>
								</p>
							</div>
						</div>
						<div class="course-meta">
							<div class="cm-info">
								<h6>Category</h6>
								<p><%=c.getType()%></p>
							</div>
						</div>
						<div class="course-meta">
							<div class="cm-info">
								<h6>Students</h6>
								<p><%=c.getEnrollstu()%>
									Registered Students
								</p>
							</div>
						</div>
						
					</div>
					<button  class="site-btn price-btn" disabled>Price: Rs. <%=c.getPrice()%></button>
					<a href="PaymentPage.jsp?course=<%=c.getCourseid() %>" class="site-btn buy-btn">Buy This Course</a>
				</div>
			</div>
		</div>
		<img src="<%=c.getImageurl() %>" alt="" class="course-preview">
		<div class="row">
			<div class="col-lg-10 offset-lg-1 course-list">
				<div class="cl-item">
					<h4>Course Description</h4>
					<p><%=c.getCoursebody()%></p>
				</div>
				<div class="cl-item">
					<h4>Certification</h4>
					<p>Certificate course in Computer Applications is a skill-based
						certification which provides operational knowledge and skills to
						the students in a manner such that they are able to execute their
						learning in a practical sense. Students are equipped with hands-on
						knowledge of the subject during the tenure.</p>
				</div>
				<div class="cl-item">
					<h4>The Instructor</h4>
					<p>Computer Science teaches courses in the discipline area of
						computer and information sciences. Develops and designs curriculum
						plans to foster student learning, stimulate class discussions, and
						ensures student engagement.</p>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- single course section end -->
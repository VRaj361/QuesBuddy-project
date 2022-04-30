<%@page import="com.bean.Course"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.QuesBuddyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- course section -->

<section class="course-section spad pb-0">
	<div class="course-warp">
		<ul class="course-filter controls">
			<li class="control active" data-filter="all">All</li>
			<li class="control" data-filter=".interviewpre">Interview
				Preparation</li>
			<li class="control" data-filter=".development">Web Development</li>
			<li class="control" data-filter=".mobiledev">App Development</li>
			<li class="control" data-filter=".dsalgo">DS & Algo</li>
			<li class="control" data-filter=".datascience">Analytics and
				Data Scince</li>
		</ul>
		<div class="row course-items-area" id="grid">

			<%
			QuesBuddyDao dao = new QuesBuddyDao();
			ArrayList<Course> arr = new ArrayList<Course>();
			arr = dao.getAllCourse();
			
			if(session.getAttribute("userid")==null){
			%>
			
			<%
			for (Course c : arr) {
			%>



			<div class="mix col-lg-3 col-md-4 col-sm-6 <%=c.getType()%>">
				<div class="course-item">
					
					
					<div class="course-thumb set-bg" data-setbg="<%=c.getImageurl()%>">
						<div class="price">
							Price: Rs.
							<%=c.getPrice()%></div>
					</div>
					<div class="course-info">
						<div class="course-text">
							<h5><%=c.getCoursetitle()%></h5>

							<p><%=c.getCoursebody().substring(0, 50)%></p>
							<div class="students"><%=c.getEnrollstu()%>
								Students
							</div>
						</div>
						<div class="course-author">
							<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
							<p>
								<%=c.getFirstname() + " " + c.getLastname()%>, <span><%=c.getTypeu()%></span>
							</p>
						</div>
					</div>
					
				</div>
			</div>

			<%
			}
			%>
			
			
		<%}else{ %>
			
			<%
			for (Course c : arr) {
			%>



			<div class="mix col-lg-3 col-md-4 col-sm-6 <%=c.getType()%>">
				<div class="course-item">
					<a href="SingleCourse.jsp?courses=<%=c.getCourseid() %> ">
					
					<div class="course-thumb set-bg" data-setbg="<%=c.getImageurl()%>">
						<div class="price">
							Price: Rs.
							<%=c.getPrice()%></div>
					</div>
					<div class="course-info">
						<div class="course-text">
							<h5><%=c.getCoursetitle()%></h5>

							<p><%=c.getCoursebody().substring(0, 50)%></p>
							<div class="students"><%=c.getEnrollstu()%>
								Students
							</div>
						</div>
						<div class="course-author">
							<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
							<p>
								<%=c.getFirstname() + " " + c.getLastname()%>, <span><%=c.getTypeu()%></span>
							</p>
						</div>
					</div>
					</a>
				</div>
			</div>

			<%
			}
			%>
		
		<%} %>
			<div class="featured-courses">
				<%
				for (int i = 0; i < arr.size(); i += 2) {
				%>
				<div class="featured-course course-item">

					<div class="course-thumb set-bg" data-setbg="<%=arr.get(i).getImageurl()%>">
						<div class="price">
							Price:
							<%=arr.get(i).getPrice()%></div>
					</div>
					<div class="row">
						<div class="col-lg-6 offset-lg-6 pl-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5><%=arr.get(i).getCoursetitle()%></h5>
									<p><%=arr.get(i).getCoursebody()%></p>
									<div class="students"><%=arr.get(i).getEnrollstu()%>
										Students
									</div>

								</div>
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
									<p>
										<%=arr.get(i).getFirstname() + " " + arr.get(i).getLastname()%>,
										<span><%=arr.get(i).getTypeu()%></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<%
				if (i < arr.size() - 1) {
				%>
				<div class="featured-course course-item">
					<div class="course-thumb set-bg" data-setbg="<%=arr.get(i+1).getImageurl()%>">
						<div class="price">
							Price:
							<%=arr.get(i+1).getPrice()%></div>
					</div>
					<div class="row">
						<div class="col-lg-6 pr-0">
							<div class="course-info">
								<div class="course-text">
									<div class="fet-note">Featured Course</div>
									<h5><%=arr.get(i+1).getCoursetitle()%></h5>
									<p><%=arr.get(i+1).getCoursebody()%>a
									</p>
									<div class="students"><%=arr.get(i+1).getEnrollstu()%>
										Students
									</div>
								</div>
								<div class="course-author">
									<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
									<p>
										<%=arr.get(i+1).getFirstname() + " " + arr.get(i+1).getLastname()%>,
										<span><%=arr.get(i+1).getTypeu()%></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
					
				<%
				} 
				}
				%>
			</div>
		</div>
	</div>
</section>
<!-- course section end -->

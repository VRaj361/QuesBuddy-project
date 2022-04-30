<!-- course section -->
<%@page import="com.bean.Course"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.QuesBuddyDao"%>
<section class="course-section spad">
	<div class="container">
		<div class="section-title mb-0">
			<h2>Featured Courses</h2>
			<p>Featured Courses top the list of training items displayed on the page, allowing users to easily see and access important courses.</p>
		</div>
	</div>
	<div class="course-warp">
		<ul class="course-filter controls">
			<li class="control active" data-filter="all">All</li>
			<li class="control" data-filter=".interviewpre">Interview Preparation </li>
			<li class="control" data-filter=".development">Web Development</li>
			<li class="control" data-filter=".mobiledev">App Development</li>
			<li class="control" data-filter=".dsalgo">DS & Algo</li>
			<li class="control" data-filter=".datascience">Analytics and Data Scince</li>
		</ul>
		<div class="row course-items-area" id="grid">
			
			<%	QuesBuddyDao dao=new QuesBuddyDao();
				ArrayList<Course> arr=new ArrayList<Course>();
				arr=dao.getAllCourse();
				
				for(Course c:arr){
			%>
			
			
		
			<div class="mix col-lg-3 col-md-4 col-sm-6 <%=c.getType() %>">
				<div class="course-item">
					<div class="course-thumb set-bg" data-setbg="<%=c.getImageurl()%>">
						<div class="price">Price: Rs. <%=c.getPrice() %></div>
					</div>
					<div class="course-info">
						<div class="course-text">
							<h5><%=c.getCoursetitle() %></h5>
						
							<p><%=c.getCoursebody().substring(0, 50) %></p>
							<div class="students"><%=c.getEnrollstu() %> Students</div>
						</div>
						<div class="course-author">
							<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
							<p>
								<%=c.getFirstname()+" "+c.getLastname() %>, <span><%=c.getTypeu() %></span>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<%} %>
		</div>
		<!-- <button id="showmore" class="site-btn">
				Show more
			</button> -->
		<div class="text-center pt-5">
			<a href="Courses.jsp" class="site-btn">Details of Courses</a>
		</div>
	</div>

</section>
<!-- course section end -->
<%@page import="com.bean.Course"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.QuesBuddyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Page  -->

<section class="blog-page spad pb-0">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<!-- blog post -->
				<div class="blog-post">
					<img src="img/blog/1.jpg" alt="">
					<h3>How to create the perfect resume</h3>
					<div class="blog-metas">
						<div class="blog-meta author">
							<div class="post-author set-bg" data-setbg="img/authors/1.jpg"></div>
							<a href="#">Aman Parekh</a>
						</div>
						<div class="blog-meta">
							<a href="#">Development</a>
						</div>
						<div class="blog-meta">
							<a href="#">June 12, 2018</a>
						</div>
						<div class="blog-meta">
							<a href="#">2 Comments</a>
						</div>
					</div>
					<p>Use real estate wisely. Cut the clutter in both appearance
						and content. ... Focus on relevant experience. ... Ditch the
						objective statement. ... Highlight accomplishments instead of job
						duties. ... Don't ignore the basics.</p>
					<a href="#" class="site-btn readmore">Read More</a>
				</div>
				<!-- blog post -->
				<div class="blog-post">
					<img src="img/blog/2.jpg" alt="">
					<h3>5 Tips to make money from home</h3>
					<div class="blog-metas">
						<div class="blog-meta author">
							<div class="post-author set-bg" data-setbg="img/authors/2.jpg"></div>
							<a href="#">James Smith</a>
						</div>
						<div class="blog-meta">
							<a href="#">Development</a>
						</div>
						<div class="blog-meta">
							<a href="#">June 12, 2018</a>
						</div>
						<div class="blog-meta">
							<a href="#">2 Comments</a>
						</div>
					</div>
					<p>Reduce Spending by Refinancing Debts. Earn Quick Cash With
						Online Surveys. Get Paid to Shop. Collect Cash from Microinvesting
						Apps. Get paid to drive people in your car.F</p>
					<a href="#" class="site-btn readmore">Read More</a>
				</div>
				<!-- blog post -->
				<div class="blog-post">
					<img src="img/blog/3.jpg" alt="">
					<h3>Why choose an online course?</h3>
					<div class="blog-metas">
						<div class="blog-meta author">
							<div class="post-author set-bg" data-setbg="img/authors/3.jpg"></div>
							<a href="#">James Smith</a>
						</div>
						<div class="blog-meta">
							<a href="#">Development</a>
						</div>
						<div class="blog-meta">
							<a href="#">June 12, 2018</a>
						</div>
						<div class="blog-meta">
							<a href="#">2 Comments</a>
						</div>
					</div>
					<p>Online education enables the teacher and the student to set
						their own learning pace, and there's the added flexibility of
						setting a schedule that fits everyone's agenda. As a result, using
						an online educational platform allows for a better balance of work
						and studies, so there's no need to give anything up.</p>
					<a href="#" class="site-btn readmore">Read More</a>
				</div>
				<!-- <div class="site-pagination">
					<span class="active">01.</span> <a href="#" >02.</a> <a href="#">03</a>
				</div> -->
			</div>
			<div class="col-lg-3 col-md-5 col-sm-9 sidebar">
				<div class="sb-widget-item">
					<form class="search-widget" action="SearchServlet">
						<input type="text" placeholder="Search" name="show_question">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
				<div class="sb-widget-item">
					<h4 class="sb-w-title">Categories</h4>
					<ul>
						<li><a href="SearchServlet?id=development">Development</a></li>
						<li><a href="SearchServlet?id=social">Social Media</a></li>
						<li><a href="SearchServlet?id=press">Press</a></li>
						<li><a href="SearchServlet?id=event">Events & Lifestyle</a></li>
						<li><a href="SearchServlet?id=uncategorizes">Uncategorizes</a></li>
					</ul>
				</div>

				<div class="sb-widget-item">
					<h4 class="sb-w-title">Archives</h4>
					<div class="tags">
						<a href="">education</a> <a href="#">courses</a> <a href="#">development</a>
						<a href="#">design</a> <a href="#">on line courses</a> <a href="#">wp</a>
						<a href="#">html5</a> <a href="#">music</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>
<!-- Page -->
<section class="realated-courses spad">
	<div class="course-warp">
		<h2 class="rc-title">Realated Courses</h2>
		<div class="rc-slider owl-carousel">
			<%
			QuesBuddyDao dao = new QuesBuddyDao();
			ArrayList<Course> arr = new ArrayList<Course>();
			arr = dao.getAllCourse();

			for (Course c : arr) {
			%>
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="<%=c.getImageurl()%>">
					<div class="price">Price: <%=c.getPrice() %></div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5><%=c.getCoursetitle() %></h5>
						<p><%=c.getCoursebody().substring(0, 75) %></p>
						<div class="students"><%=c.getEnrollstu() %> Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
						<p>
							<%=c.getFirstname() + " " + c.getLastname()%>, <span><%=c.getTypeu()%></span>
						</p>
					</div>
				</div>
			</div>
			<%} %>
			
		</div>
	</div>
</section>
<!-- Page end -->

<!-- Page end -->
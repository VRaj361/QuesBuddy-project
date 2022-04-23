<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bean.Questionget"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
//ArrayList<Questionget> arr = (ArrayList<Questionget>) request.getAttribute("ShowQuestionArr");
HashMap<Integer, Questionget> arr = (HashMap<Integer, Questionget>) request.getAttribute("ShowQuestionArr");
%>

<%
if (arr == null || arr.size() == 0) {
%>

<div class=" container">
	<p class="text-center " style="letter-spacing: 2px; font-size: 4rem;">We
		don't have any data related your search.</p>


</div>


<%
} else {
%>
<section class="blog-page spad pb-0">
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<!-- blog post -->
				<%
				Iterator<Integer> it = arr.keySet().iterator();
				%>
				<%
				while (it.hasNext()) {
				%>
				<%
				Integer key = it.next();
				%>
				<%
				//for(Questionget x:arr){
				%>
				<div class="blog-post">

					<h3><%=arr.get(key).getTitle()%></h3>
					<div class="blog-metas">
						<div class="blog-meta author">
							<div class="post-author set-bg"
								style="border-radius: 50%; background-color: #d82a4e; text-align: center; color: white; font-size: x-large; font-weight: bolder;"><%=arr.get(key).getFirstname().toUpperCase().charAt(0)%></div>
							<a href="#"><%=arr.get(key).getFirstname() + " " + arr.get(key).getLastname()%></a>
						</div>

						<div class="blog-meta">
							<a href="#"><%=arr.get(key).getDate()%></a>
						</div>
						<div class="blog-meta">
							<a href="#"></a>
						</div>
					</div>
					<div class="blog-meta ">
						<%
						String stag[] = arr.get(key).getTags().split(" ");
						%>
						<%
						if (stag.length != 1) {
						%>
						<%
						for (String s : stag) {
						%>

						<a class="btn categorie-item .ci-text "
							style="color: white; background: #d82a4e"
							href="SearchServlet?id=<%=s%>"><%=s%></a>
						<%
						}
						}
						%>
					</div>
					<p><%=arr.get(key).getBody()%></p>
					
					
					<%-- <div id="toggletext">
					<div style="border-top: 3px solid #d82a4e;"></div>
					<div id="">
						<form class="contact-form" action="">
							<h3>Your answer</h3>
							<textarea placeholder="Message"></textarea>
							<button class="site-btn">Submit</button>
						</form>

					</div>
					
					<div class="blog-metas container">
					
					<h3>Answer</h3><br><br>
					
					<h5>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ducimus totam, repellat recusandae provident nam modi maxime obcaecati aliquam fugiat! Architecto illum enim eveniet? Quae incidunt quibusdam dolorum autem nihil, quas cupiditate accusantium optio!</h5>
						<div class="blog-meta author">
							<div class="post-author set-bg"
								style="border-radius: 50%; background-color: #d82a4e; text-align: center; color: white; font-size: x-large; font-weight: bolder;"><%=arr.get(key).getFirstname().toUpperCase().charAt(0)%></div>
							<a href="#"><%=arr.get(key).getFirstname() + " " + arr.get(key).getLastname()%></a>
						</div>
					<button class="site-btn readmore" disabled>Accepted</button>
					<button class="site-btn readmore" disabled>Check as Correct Solution</button>
					<br><br><br>
					<h5>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reiciendis ducimus totam, repellat recusandae provident nam modi maxime obcaecati aliquam fugiat! Architecto illum enim eveniet? Quae incidunt quibusdam dolorum autem nihil, quas cupiditate accusantium optio!</h5>
						<div class="blog-meta author">
							<div class="post-author set-bg"
								style="border-radius: 50%; background-color: #d82a4e; text-align: center; color: white; font-size: x-large; font-weight: bolder;"><%=arr.get(key).getFirstname().toUpperCase().charAt(0)%></div>
							<a href="#"><%=arr.get(key).getFirstname() + " " + arr.get(key).getLastname()%></a>
						</div>
					<button class="site-btn readmore" disabled>Accepted</button>
					<button class="site-btn readmore" disabled>Check as Correct Solution</button>	
						
					</div>
					<br><br><br>
					
					</div> --%>
					
					
					
					<%
					if (arr.get(key).getIs_solved().equals("f")) {
					%>
					
					<a class="site-btn readmore" href="ShowParticularQuestionServlet?question_id=<%=arr.get(key).getQuestionid() %>" style="color:white">Details</a>
					<% 
					} else {
					%>
					<a class="site-btn readmore" href="ShowParticularQuestionServlet?question_id=<%=arr.get(key).getQuestionid() %>" style="color:white">Details</a>
					<%
					}
					%>
				</div>
				<div style="border-top: 3px solid #d82a4e;"></div>

				<%
				}
				%>
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
						<a href="#">education</a> <a href="#">courses</a> <a href="#">development</a>
						<a href="#">design</a> <a href="#">on line courses</a> <a href="#">wp</a>
						<a href="#">html5</a> <a href="#">music</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>
<%
}
%>
<!-- Page -->
<section class="realated-courses spad">
	<div class="course-warp">
		<h2 class="rc-title">Realated Courses</h2>
		<div class="rc-slider owl-carousel">
			<!-- course -->
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="img/courses/1.jpg">
					<div class="price">Price: $15</div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5>Art & Crafts</h5>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
						<div class="students">120 Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/1.jpg"></div>
						<p>
							William Parker, <span>Developer</span>
						</p>
					</div>
				</div>
			</div>
			<!-- course -->
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="img/courses/2.jpg">
					<div class="price">Price: $15</div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5>IT Development</h5>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
						<div class="students">120 Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/2.jpg"></div>
						<p>
							William Parker, <span>Developer</span>
						</p>
					</div>
				</div>
			</div>
			<!-- course -->
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="img/courses/3.jpg">
					<div class="price">Price: $15</div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5>Graphic Design</h5>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
						<div class="students">120 Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/3.jpg"></div>
						<p>
							William Parker, <span>Developer</span>
						</p>
					</div>
				</div>
			</div>
			<!-- course -->
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="img/courses/4.jpg">
					<div class="price">Price: $15</div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5>IT Development</h5>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
						<div class="students">120 Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/4.jpg"></div>
						<p>
							William Parker, <span>Developer</span>
						</p>
					</div>
				</div>
			</div>
			<!-- course -->
			<div class="course-item">
				<div class="course-thumb set-bg" data-setbg="img/courses/5.jpg">
					<div class="price">Price: $15</div>
				</div>
				<div class="course-info">
					<div class="course-text">
						<h5>IT Development</h5>
						<p>Lorem ipsum dolor sit amet, consectetur</p>
						<div class="students">120 Students</div>
					</div>
					<div class="course-author">
						<div class="ca-pic set-bg" data-setbg="img/authors/5.jpg"></div>
						<p>
							William Parker, <span>Developer</span>
						</p>
					</div>
				</div>
			</div>
			<!-- course -->
		</div>
	</div>
</section>
<!-- Page end -->

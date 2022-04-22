<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<section class="search-section ss-other-page">
	<div class="container">
		<div class="search-warp">
			<div class="section-title text-white">
				<h2>
					<span>Search your Question</span>
				</h2>
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<!-- search form -->
					<form class="course-search-form" action="SearchServlet">
						<input type="text" class="w-75" placeholder="Search your Question" name="show_question">
						<!-- <input type="text" class="last-m" placeholder="Category"> -->
						<button class="site-btn btn-dark" type="submit">Search Question</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
	<%String is_error=(String)request.getAttribute("show_questionE");%>
	<%if(is_error!=null&&is_error.equals("yes")){ %>
	<h3 class="text-danger text-center ">Please Enter Something.</h3>
	
	<%}else{} %>
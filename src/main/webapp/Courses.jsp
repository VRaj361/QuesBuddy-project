<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Courses</title>
<!-- ALL HEADER INFORMATION  -->

<jsp:include page="TagHead.jsp"></jsp:include>


</head>
<body>
	<!-- LOADING -->

	
	<jsp:include page="PageLoader.jsp" />
	
	
	<!-- HEADER SHOW  -->


	<jsp:include page="HeaderLogin.jsp"/>	


	<!-- WALLPAPER BACK -->
	
	
	<jsp:include page="SectionCoursePhoto.jsp"/>


	<!-- HERO SECTION ASK QUESTION WITH BLACK DARK WALLPAPER PENCIL-->


	<jsp:include page="SearchBarContactAll.jsp" />


	<!-- MAIN SECTION OF COURSE -->
	
	
	<jsp:include page="SectionCourseMain.jsp"/>



	<!-- REGISTER NOW JOIN THE COMMUNITY -->


	<jsp:include page="SectionJoinCommunity.jsp"></jsp:include>


	<!-- FOOTER UPPER -->


	<jsp:include page="SectionFooter.jsp"></jsp:include>


	<!-- ALL SCRIPT TAGS -->


	<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>
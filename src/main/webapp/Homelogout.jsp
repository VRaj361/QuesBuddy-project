<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Without Login</title>


<!-- ALL HEADER INFORMATION  -->

<jsp:include page="TagHead.jsp"></jsp:include>


</head>
<body>
	<!-- LOADING -->
	
	
	<jsp:include page="PageLoader.jsp"/>
	
	
	<!-- HEADER SHOW  -->
	
	
	<jsp:include page="HeaderL.jsp"/>
	
	
	<!-- HERO SECTION ASK QUESTION WITH BLACK DARK WALLPAPER PENCIL-->
	
	
	<jsp:include page="SectionHero.jsp"/>
	
	
	<!-- MOST POPULAR COURSES -->
	
	
	<jsp:include page="SectionCategory.jsp"/>
	
	
	<!-- SEARCH BAR -->
	
	
	<jsp:include page="SectionSearch.jsp"/>
	
	
	<!-- ALL COURSES -->
	
	
	<jsp:include page="SectionAllCourse.jsp"/>
	
	
	<!-- SIGNUP COMMUNITY -->
	
	
	<jsp:include page="SectionSignupCommunity.jsp"/>
	
	
	<!-- REGISTER NOW JOIN THE COMMUNITY -->
	
	
	<jsp:include page="SectionJoinCommunity.jsp"></jsp:include>
	
	
	<!-- FOOTER UPPER -->
	
	
	<jsp:include page="SectionFooter.jsp"></jsp:include>
	
	
	<!-- ALL SCRIPT TAGS -->
	
	
	<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>
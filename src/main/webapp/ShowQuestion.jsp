<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Question</title>
<!-- ALL HEADER INFORMATION  -->

<jsp:include page="TagHead.jsp"></jsp:include>


</head>
<body>	
	<!-- LOADING -->

	
	<jsp:include page="PageLoader.jsp" />
	
	
	<!-- HEADER SHOW  -->


	<jsp:include page="HeaderLogin.jsp"/>	


	<!-- SEARCH SECTION BAR WHERE SEARCH BAR ARE THERE -->


	<jsp:include page="SectionShowQuestionPhoto.jsp" />


	<!-- HERO SECTION ASK QUESTION WITH BLACK DARK WALLPAPER PENCIL-->


	<jsp:include page="SectionSearchbar.jsp" />
	
	
	<!-- MAIN SECTION WHICH CONTAIN ALL TYPE OF SHOW QUESTION -->
	
	
	<jsp:include page="SectionShowQuestionMain.jsp"></jsp:include>
	
	
	<!-- REGISTER NOW JOIN THE COMMUNITY -->


	<jsp:include page="SectionJoinCommunity.jsp"></jsp:include>


	<!-- FOOTER UPPER -->


	<jsp:include page="SectionFooter.jsp"></jsp:include>


	<!-- ALL SCRIPT TAGS -->


	<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>

<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="TagHead.jsp"></jsp:include>
<!-- load for map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWTIlluowDL-X4HbYQt3aDw_oi2JP0Krc&sensor=false"></script>
<script src="js/map.js"></script>

</head>
<body>
	
	<!-- LOADING -->


	<jsp:include page="PageLoader.jsp" />


	<!-- HEADER SHOW  -->


	<jsp:include page="HeaderLogin.jsp" />


	<!-- SEARCH SECTION BAR WHERE SEARCH BAR ARE THERE -->


	<jsp:include page="SectionContactPhoto.jsp" />


	<!-- HERO SECTION ASK QUESTION WITH BLACK DARK WALLPAPER PENCIL-->


	<jsp:include page="SectionSearchbar.jsp" />


	<!-- PAGE CONTACT MAIN WHERE MAP ARE THERE  -->


	<jsp:include page="PageContactMain.jsp" />


	<!-- REGISTER NOW JOIN THE COMMUNITY -->


	<jsp:include page="SectionJoinCommunity.jsp"></jsp:include>


	<!-- FOOTER UPPER -->


	<jsp:include page="SectionFooter.jsp"></jsp:include>


	<!-- ALL SCRIPT TAGS -->


	<jsp:include page="TagScript.jsp"></jsp:include>
</body>
</html>
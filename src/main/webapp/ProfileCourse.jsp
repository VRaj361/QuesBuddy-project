<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.Course"%>
<%@page import="com.dao.QuesBuddyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>enrolled Courses</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <jsp:include page="TagHead.jsp"></jsp:include>
	<link rel="icon" type="image/x-icon" href="img/favicon.png">
  	<jsp:include page="TagHead.jsp"></jsp:include>
</head>
<body style="background-color: #ffc0cb;">
<jsp:include page="PageLoader.jsp"></jsp:include>
<% int userid=(Integer)session.getAttribute("userid");
	
	QuesBuddyDao dao=new QuesBuddyDao();
	ArrayList<Course> arr=new ArrayList<Course>();
	try{
	arr=dao.getCourseDetails(userid);
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	<% 
	if(arr==null){
	

%>


<h1>Do not have any data</h1>

<%}else{ %>
    <section class="vh-100" >
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100 text-white">
            <div class="col" >
                
                <div class="card mb-4 pt-3" style="background-color: #d82a4e;">
                  <p class="text-center" ><span class="h2">Your Courses </span></p>
                <div class="card-body p-4">
      
                  <div class="row align-items-center">
                    
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        <p class="small  mb-4 pb-2 ">Name of Course</p>
                        
                      </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        <p class="small  mb-4 pb-2">Type</p>
                       
                      </div>
                    </div>
                   
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        <p class="small mb-4 pb-2">Price</p>
                       
                      </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        <p class="small  mb-4 pb-2">Invoice Number</p>
                       
                      </div>
                    </div>
                  </div>
                  <%for(Course c:arr){%> 
                  <div class="row align-items-center">
                  
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        
                        <p class="lead fw-normal mb-0"><%=c.getCoursetitle()%></p>
                      </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
                        
                        <p class="lead fw-normal mb-0"><%=c.getType() %></p>
                      </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
	
                        <p class="lead fw-normal mb-0">Rs. <%=c.getPrice() %></p>
                      </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center">
                      <div>
    	
                        <p class="lead fw-normal mb-0"><%=c.getInvoicenum() %></p>
                      </div>
                    </div>
                    
                  </div>
      				<%} %>
                </div>
                
              </div>
      			
              <div class="d-flex justify-content-end " >
                <!-- <a href="HomeLogin.jsp" type="button" class="site-btn header-btn text-capitalize fs-1">Back to Home</a> -->
                <a href="HomeLogin.jsp" style="background-color: #d82a4e; padding: 2%; border-radius: 50%"><div class="btn  rounded-circle"  >
						<span class="fa fa-home text-white fa-2x" ></span>
					</div>
              </div></a>
      
            </div>
          </div>
        </div>
      </section>
      <%} %>
      	<jsp:include page="TagScript.jsp"></jsp:include>
      	
</body>
</html>

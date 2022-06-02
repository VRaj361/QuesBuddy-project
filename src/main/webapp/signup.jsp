<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html  lang="en">
<head>
<meta charset="ISO-8859-1">
 <title>Signup</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/stylelogin.css">
    
    <link rel="icon" type="image/x-icon" href="img/favicon.png">

</head>

	


<body style="background-color: pink;">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    

    <section class="ftco-section hero-section set-bg" >
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10 " >
                    <div class="wrap d-md-flex ">
                        <div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
                            <div class="text w-100">
                                <h2>Welcome to Sign Up</h2>
                                <p>Do you have account?</p>
                                <a href="login.jsp" class="btn btn-white btn-outline-white">Login</a>
                                
                            </div>
                        </div>
                        <div class="login-wrap p-4 p-lg-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">Sign Up</h3>
                                </div>
                                <div class="w-100">
                                    <p class="social-media d-flex justify-content-end">
                                        <a href="#"
                                            class="social-icon d-flex align-items-center justify-content-center"><span
                                                class="fa fa-facebook"></span></a>
                                        <a href="#"
                                            class="social-icon d-flex align-items-center justify-content-center"><span
                                                class="fa fa-twitter"></span></a>
                                        <a href="#"
                                            class="social-icon d-flex align-items-center justify-content-center"><span
                                                class="fa fa-github"></span></a>
                                        <a href="#"
                                            class="social-icon d-flex align-items-center justify-content-center"><span
                                                class="fa fa-google"></span></a>
                                    </p>
                                </div>
                            </div>
                            <form  class="signin-form" action="SignupM" method="post">
                                <div class="form-group mb-3">
                                    <label class="label" for="name">First Name</label>
                                    <input type="text" class="form-control" placeholder="Firstname" name="firstname_s" >
                                    <p class="text-danger"> ${firstnameES }</p>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="password">Last Name</label>
                                    <input type="text" class="form-control" placeholder="Lastame" name="lastname_s" >
                                    <p class="text-danger"> ${lastnameES }</p>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="password">Email</label>
                                    <input type="text" class="form-control" placeholder="Email" name="email_s" >
                                     <p class="text-danger"> ${emailES }</p>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="password">Password</label>
                                    <input type="password" class="form-control" placeholder="Password" name="password_s" >
                                    <p class="text-danger"> ${passwordES }</p>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="Gender">Gender</label><br>
                                    <label class="radio-inline mx-3">
                                        <input type="radio" value="male" name="gender_s" checked>Male
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="female" name="gender_s">Female
                                    </label>

                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Sign
                                        Up</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="js/jquerylogin.min.js"></script>
    <script src="js/popperlogin.js"></script>
    <script src="js/bootstraplogin.min.js"></script>
    <script src="js/mainlogin.js"></script>
    <script src="js/main.js"></script>


	
	
	
	
</body>
</html>
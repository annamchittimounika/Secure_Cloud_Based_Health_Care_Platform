<%-- 
    Document   : index
    Created on : 17 Nov, 2020, 9:46:11 AM
    Author     : Arumalla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

     <title>HealthCares</title>
<!--

Template 2098 Health

http://www.tooplate.com/view/2098-health

-->
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="Tooplate">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" href="css/animate.css">
     <link rel="stylesheet" href="css/owl.carousel.css">
     <link rel="stylesheet" href="css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="css/tooplate-style.css">

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>
               
          </div>
     </section>


     <!-- HEADER -->
     <!--<header>
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-5">
                         <p>Welcome to a Professional Health Care</p>
                    </div>
                         
                    <div class="col-md-8 col-sm-7 text-align-right">
                         <span class="phone-icon"><i class="fa fa-phone"></i> 010-060-0160</span>
                         <span class="date-icon"><i class="fa fa-calendar-plus-o"></i> 6:00 AM - 10:00 PM (Mon-Fri)</span>
                         <span class="email-icon"><i class="fa fa-envelope-o"></i> <a href="#">info@company.com</a></span>
                    </div>

               </div>
          </div>
     </header>-->


     <!-- MENU -->
     <section class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="index.jsp" class="navbar-brand"><i class="fa fa-h-square"></i>ealth Care</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="index.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="patientlogin.jsp" class="smoothScroll">PATIENT</a></li>
                         <li><a href="doctor.jsp" class="smoothScroll">DOCTOR</a></li>
                         <li><a href="cloudlogin.jsp" class="smoothScroll">CLOUD</a></li>
                         
                    </ul>
               </div>

          </div>
     </section>


     <!-- HOME -->
     <section id="home" class="slider" data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">

                         <div class="owl-carousel owl-theme">
                              <div class="item item-first">
                                   <div class="caption">
                                        <div class="col-md-offset-1 col-md-10">
                                             <h3></h3>
                                             <h1>Patient Login</h1>
                                              <form action="patient_login" method="post">
                                    <h5 style="color:black">UserName:&nbsp;&nbsp;<input type="text" required name="name"/></h5><br>
                                    <h5 style="color:black">Password:&nbsp;&nbsp;<input type="password" required name="upass"/></h5><br>
                                    
                                    <h5><input type="reset" value="Reset" style="color: blue"/>&nbsp;&nbsp;
                                        <input type="submit" value="Login" style="color: blue"/><br><br></h5>
                                </form>
                                <%
                                    String msg = request.getParameter("msg");
                                    if (msg != null && msg.equalsIgnoreCase("success")) {
                                        out.println("<font color='green'><b>Login Success</b></font>");
                                    }
                                    if (msg != null && msg.equalsIgnoreCase("waiting")) {
                                        out.println("<font color='Red'><b>You are not Yet Activated,you should be activated by KGC</b></font>");
                                    }
                                    if (msg != null && msg.equalsIgnoreCase("failed")) {
                                        out.println("<font color='Red'><b>Login Failed,please provide correct details..</b></font>");
                                    }
                                    if (msg != null && msg.equalsIgnoreCase("wrongpassword")) {
                                        out.println("<font color='Red'><b>Please Enter Valid Password</b></font>");
                                    }
                                    if (msg != null && msg.equalsIgnoreCase("regsuccess")) {
                                        out.println("<font color='green'><b>Successfully Registered</b></font>");
                                    }


                                %>
                                <ul>
                                    <h5><li><a href="patientreg.jsp" style="color:white">Register here</a></li></h5>
									
                                </ul>
                            
                                        </div>
                                   </div>
                              </div>

                             
                         </div>

               </div>
          </div>
     </section>


    
     <!-- FOOTER -->
     <footer data-stellar-background-ratio="5">
          

                    <div class="col-md-12 col-sm-12 border-top">
                         <div class="col-md-4 col-sm-6">
                              <div class="copyright-text"> 
                                   <p>Copyright &copy; 2020 Your Company 
                                   
                                   alexa</p>
                              </div>
                         </div>
                         
                         <div class="col-md-2 col-sm-2 text-align-center">
                              <div class="angle-up-btn"> 
                                  <a href="#top" class="smoothScroll wow fadeInUp" data-wow-delay="1.2s"><i class="fa fa-angle-up"></i></a>
                              </div>
                         </div>   
                    </div>
                    
               </div>
          </div>
     </footer>

     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.sticky.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/wow.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>
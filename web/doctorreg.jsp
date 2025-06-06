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
 <script>
            function validateForm() {
                var x = document.forms["myForm"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                    alert("Not a valid e-mail address");
                    return false;
                }
            }
        </script>
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
                                             <h1>Doctor Registratio</h1>
                                             <center> <form action="doctor_reg" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
                                    <table>
                                        <tr><td style="color: black">Doctor Name:</td><td style="color: black"><input type="text" required name="name" pattern="[A-Za-z]+" title="Name should not contain integer value"/></tb></tr>
                                        <tr><td style="color: black">Password:</td><td style="color: black"><input type="password" required name="password" pattern="(?=.*\d)(?=.*[a-z]).{8,}" title="Must contain at least one number and lowercase letter, and at least 8 or more characters"/></td></tr>
                                        <tr><td style="color: black">Email Address:</td><td style="color: black"><input type="text"  required  title="Email Must In Email Format" name="email"/></td></tr>
                                        <tr><td style="color: black">Mobile Number:</td><td style="color: black"><input type="text" required name="mobile" pattern="[6789][0-9]{9}" title="Mobile Number Must 10 Digits"/></td></tr>
                                        <tr><td style="color: black">Your Address:</td><td style="color: black"><input type="text" required name="address"/></td></tr>
                                        <tr><td style="color: black">Date of Birth:</td><td style="color: black"><input type="text" required name="dob" title="Date of Birth Required"/></td></tr>
                                        <tr><td style="color: black">Gender:</td><td style="color: black"><input type="text" required name="gender" pattern="[A-Za-z]+"/></td></tr>
                                        <tr><td style="color: black">Enter pincode:</td><td style="color: black"><input type="text" required name="pincode" /></td></tr>
                                        <tr><td style="color: black">Enter Location:</td><td style="color: black"><input type="text" required name="location" pattern="[A-Za-z]+"/></td></tr>
                                        <!--<tr><td style="color: white">Select profile:</td><td><input type="file"   required name="image"/><br><br></td></tr>-->
                                        <tr><td></td><td><input type="submit" value="Register" style="color: blue"/></td></tr>
                                    </table>
          </form></center>
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
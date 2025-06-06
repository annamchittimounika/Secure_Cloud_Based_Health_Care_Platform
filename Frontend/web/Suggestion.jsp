<%-- 
    Document   : index
    Created on : 17 Nov, 2020, 9:46:11 AM
    Author     : Arumalla
--%>
<%@page import="com.app.utility.EncryptionAlgoritham"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
                       <li><a href="doctorhome.jsp" class="smoothScroll">HOME</a></li>
                         <li><a href="patientfiles.jsp" class="smoothScroll">VIEW PATIENTFILES</a></li>
                         
                         <li><a href="logout.jsp" class="smoothScroll">LOGOUT</a></li>
                         
                         
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
                                             <h3>Doctor Suggestion Page</h3>
                                             <center> <table border="1">
                      <thead>
                          <tr>
                              <th>Fields labels</th>
                              <th>Data</th>                        
                             
                          </tr>
                      </thead>
                      <tbody>
                       <%
                       String id =request.getParameter("id");
                       String name = request.getParameter("name");
                       String filename = request.getParameter("filename");
                       String cdate = request.getParameter("cdate");
                       String cfile = request.getParameter("cfile");
                       
                       %>
                      <form action="DoctorSuggestionPatients.jsp" method="post">
                          <tr>
                              <td>ID</td>
                              <td style="color: black"><input type="text" name="id" readonly="" value="<%=id%>"> </td>
                          </tr>
                          <tr>
                              <td>Name</td>
                              <td style="color: black"><input type="text" name="name" readonly="" value="<%=name%>"></td>
                          </tr>
                          <tr>
                              <td>File Name</td>
                              <td style="color: black"><input type="text" name="filename" readonly="" value="<%=filename%>"> </td>
                          </tr>
                          <tr>
                              <td>Date</td>
                              <td style="color: black"><input type="text" name="cdate" readonly="" value="<%=cdate%>"></td>
                          </tr>
                          <tr>
                              <td>File</td>
                              <td style="color: black"><input type="text" name="cfile" readonly="" value="<%=cfile%>"> </td>
                          </tr>
                          <tr>
                              <td>Suggestion</td>
                              <td style="color: black"><input type="text" required="" name="suggestion"/></td>
                          </tr>
                          <tr>
                              <td></td>
                              <td style="color: black"><input type="submit" value="Send"></td>
                          </tr>
                          </form>
                      </tbody>
                                                 </table></center>
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
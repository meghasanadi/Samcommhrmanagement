<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>


<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Career Home</title>
    <link rel="icon" href="http://cdn.mysitemyway.com/etc-mysitemyway/icons/legacy-previews/icons-256/3d-glossy-orange-orbs-icons-alphanumeric/104887-3d-glossy-orange-orb-icon-alphanumeric-letter-s.png" type="image/x-icon">

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${contextPath}/static/css/business-frontpage.css" rel="stylesheet">
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    
    <style type="text/css">
			 .social:hover {
			     -webkit-transform: scale(1.1);
			     -moz-transform: scale(1.1);
			     -o-transform: scale(1.1);
			 }
			 .social {
			     -webkit-transform: scale(0.8);
			     /* Browser Variations: */
			     
			     -moz-transform: scale(0.8);
			     -o-transform: scale(0.8);
			     -webkit-transition-duration: 0.5s;
			     -moz-transition-duration: 0.5s;
			     -o-transition-duration: 0.5s;
			 }
			
			/*
			    Multicoloured Hover Variations
			*/
			 
			 #social-fb:hover {
			     color: #3B5998;
			 }
			 #social-tw:hover {
			     color: #4099FF;
			 }
			 #social-gp:hover {
			     color: #d34836;
			 }
			 #social-em:hover {
			     color: #f39c12;
			 }

    </style>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="href="http://careers.samcomm.com/><img src="http://companies.naukri.com/samcomm-careers/wp-content/uploads/sites/1322/2014/11/logo.png" alt="Samcomm Technologies" title="Samcomm Technologies">
</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
             <!--  <a class="nav-link" href="http://www.samcomm.com">Home -->
              <li class="home"><a href="http://www.samcomm.com"><div class="home-image"><i class="material-icons">home</i></div></a></li>
              
         
           <%--  <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/">Overview</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/jobs/">Current Openings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/contact/">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${contextPath}/login">Admin</a>
            </li> --%>
           
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header with Background Image -->
  <!--   <header class="business-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <h1 class="display-3 text-center text-white mt-4">Growing Innovation Glowing Values</h1>
          </div>
        </div>
      </div>
    </header> -->

    <!-- Page Content -->
    <div class="container">
    
    <br>
    <br>
    

      <div class="row">
        <div class="col-sm-8">
         
         
        
                            <tr>
                              <hr>
                                <td><h6>${app.firstname}${app.lastname}</h6><br></td>
                              <hr>  
                                <%--  <td><h6>Experience in:${app.keyskills}</h6><br></td> --%>
                                <h3>Brief profile</h3>
                                <h6><b>Work experience:</b>${app.experience} years</h6><br>
                                <h6><b>Current company:</b>${app.curcompany}</h6><br>
                                <h6><b>Annual Salary:</b></h6><br>
                                <h6><b>Expecting salary :</b>${app.salary_exp}</h6><br>
                                <h6><b>Highest Degree:</b></h6><br>
                                <h6><b>Current location :</b></h6><br>
                                
                                <h6><b>Gender:</b> ${app.gender}</h6><br>
                                <h6><b>Notice Period:</b> ${app.noticeperiod}</h6><br>
                            </tr>
         <hr>                 
        </div>
        <div class="col-sm-4">
          <h2 class="mt-4">Follow Us</h2>
          <div class="text-center center-block">
           
            <br />
                <a href="https://www.facebook.com/samcomm.technologies"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
			</div>
        </div>
      </div>
      <!-- /.row -->

    
       

      </div>
      <!-- /.row -->


    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright 2017 © Samcomm. All rights reserved.</p>
      </div>
    </footer>

	
    <!-- Bootstrap core JavaScript -->
    <script src="${contextPath}/static/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
 
 <%@page import="com.model.RegisterModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>VTJBC04</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha - v4.9.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

     <br>  <br>  <br> <h2 class="logo me-auto"><a href="index.html">Network Project</a></h2>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

<%if(session.getAttribute("account")==null){%>
				
	  <h1>your session expired</h1>
			<% 	response.sendRedirect("login.jsp");
			}else{
				String active=request.getParameter("userpage");
				if(active==null){
					active="home";
				}
				RegisterModel rm= (RegisterModel)session.getAttribute("account");%>
				    <nav id="navbar" class="navbar">
        <ul>
          
            <%
          if(active.equalsIgnoreCase("home")){
        	  %>
        	  <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
         <%  }else{%> 
           <li><a class="nav-link scrollto" href="index.jsp">Home</a></li>
         <%} %>
          
          <%
          if(active.equalsIgnoreCase("profile")){
        	  %>
        	  <li><a class="nav-link scrollto active" href="profile.jsp?userpage=profile&&userid=<%=rm.getUserid()%>">Profile</a></li>
         <%  }else{%> 
           <li><a class="nav-link scrollto" href="profile.jsp?userpage=profile&&userid=<%=rm.getUserid()%>">Profile</a></li>
         <%} %>
         
          <%
          if(active.equalsIgnoreCase("upload")){
        	  %>
        	  <li><a class="nav-link scrollto active" href="profile.jsp?userpage=upload&&userid=<%=rm.getUserid()%>">Research paper</a></li>
         <%  }else{%> 
            <li><a class="nav-link scrollto" href="profile.jsp?userpage=upload&&userid=<%=rm.getUserid()%>">Research paper</a></li>
         <%} %>
        
          <%
          if(active.equalsIgnoreCase("view")){
        	  %>
        	  <li><a class="nav-link   scrollto active" href="profile.jsp?userpage=view&&userid=<%=rm.getUserid()%>">Uploaded Files</a></li>
         <%  }else{%> 
            <li><a class="nav-link   scrollto" href="profile.jsp?userpage=view&&userid=<%=rm.getUserid()%>">Uploaded Files</a></li>
         <%} %>
         
         
          <li><a class="nav-link scrollto" href="login.jsp?userstatus=logout">Logout</a></li>
          
         
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>	
        
      </nav><!-- .navbar -->
				 
				 
		<% 	}
				%>
			

   
    </div>
  </header><!-- End Header -->
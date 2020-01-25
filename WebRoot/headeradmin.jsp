<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>    
<!DOCTYPE html>
<html lang="en">
<head>
  
    <title> ADMIN </title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Main stylesheet  -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Responsive stylesheet  -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <!-- Favicon -->
    <link href="images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="images/apple-icon.png" rel="icon" type="image/png">

</head>


<body>

    <!-- Main Heder Start -->
    <section class="at-main-herader-sec">
        <!-- Header top start -->
        <div class="at-header-topbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-6 at-full-wd480">
                        <p><i class="icofont icofont-ui-head-phone"></i> +1 202 110 1122</p>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-6 at-full-wd480">
                        <p class="at-respo-right"><i class="icofont icofont-email"></i> <a href="#">info@yourmail.com</a>
                        </p>
                    </div>
                    <div class="col-lg-2 col-lg-offset-3 col-md-3 col-md-offset-1 col-sm-3 col-xs-6 at-full-wd480">
                        <div class="at-sign-in-up clearfix">
      <%
    		  		
    		String str="";
    		if(session.getAttribute("jname")!=null)
    		{
    			str=session.getAttribute("jname").toString();
    	 %>              	
                           <p><i class="icofont icofont-sign-in"></i><a href="profile.jsp"><%=str %></a>
                            </p>
                            <p><i class="icofont icofont-pencil-alt-2"></i> <a href="logoutadmin.jsp">Logout</a>
                            </p>
	<%   		}
    		else
    		{
    			%>
    				<p><i class="icofont icofont-sign-in"></i><a href="adminLoginPage.jsp">sign in</a>
						</p>
                <%
    		}
 
	 %>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 at-full-wd480">
                        <div class="at-social text-right">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header top end -->

        <!-- Header navbar start -->
        <div class="at-navbar fixed-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="adminHomePage.jsp"><img src="images/logo.png" alt="">
                                </a>
                            </div>
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeInUp">
                                <ul class="nav navbar-nav navbar-right">
                                   <!-- 
                                   <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            
                                            </li>
                                        </ul>
                                    </li>
                                     -->
                                    
                                    <li><a href="adminHomePage.jsp">Home</a>
                                    <li><a href="adabout.jsp">About</a>
                                    </li>
                                    <!--
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Properties <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Properties 3 columns</a>
                                            </li>
                                            <li><a href="#">Properties 4 columns</a>
                                            </li>
                                            <li><a href="#">Properties right sidebar</a>
                                            </li>
                                            <li><a href="#">Properties left sidebar</a>
                                            </li>
                                            <li><a href="#">Properties details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    -->
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Agents <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Our agents</a>
                                            </li>
                                            <li><a href="#">agents details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <!--  
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="blog-gird.html">Blog gird</a>
                                            </li>
                                            <li><a href="blog-right-sidebar.html">Blog right sidebar</a>
                                            </li>
                                            <li><a href="blog-left-sidebar.html">Blog left sidebar</a>
                                            </li>
                                            <li><a href="blog-details.html">Blog details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown active">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="testimonials.html">Testimonials</a>
                                            </li>
                                            <li><a href="service.html">Services</a>
                                            </li>
                                            <li><a href="sign-in-up.html">My account</a>
                                            </li>
                                            <li><a href="faq.html">Faq's Page</a>
                                            </li>
                                            <li><a href="error.html">Error page</a>
                                            </li>
                                        </ul>
                                    </li>
                                    -->
                                    <li><a href="adcontact.jsp">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header navbar end -->
    </section>
    <!-- Main Heder End -->
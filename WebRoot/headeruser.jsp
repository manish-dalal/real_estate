<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Real Places</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Main stylesheet  -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Responsive stylesheet  -->
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <!-- Favicon -->
    <link href="images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="images/apple-icon.png" rel="icon" type="image/png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div id="preloader"></div>
    <!-- Main Heder Start -->
    <section class="at-main-herader-sec herader-transparent">
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
    		if(session.getAttribute("jfname")!=null)
    		{
    			str=session.getAttribute("jfname").toString();
    		%> 
    			<p><i class="icofont icofont-sign-in"></i><a href="profile.jsp"><%=str %></a>
                   </p>
                <p><i class="icofont icofont-pencil-alt-2"></i> <a href="logout.jsp">Logout</a>
                   </p>
               <%
    		}
    		else
    		{
    		%>
    			<p><i class="icofont icofont-sign-in"></i><a href="UserRegister.jsp">sign in</a>
                </p>
                <p><i class="icofont icofont-pencil-alt-2"></i> <a href="UserRegister.jsp">sign up</a>
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
                                <a class="navbar-brand" href="home.jsp"><img src="images/logo.png" alt="">
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
                                    
                                    <li><a href="home.jsp">Home</a>
                                    <li><a href="about.jsp">About</a>
                                    </li>
                                    <!--
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Properties <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="properties-col-3.html">Properties 3 columns</a>
                                            </li>
                                            <li><a href="properties-col-4.html">Properties 4 columns</a>
                                            </li>
                                            <li><a href="properties-right-sidebar.html">Properties right sidebar</a>
                                            </li>
                                            <li><a href="properties-left-sidebar.html">Properties left sidebar</a>
                                            </li>
                                            <li><a href="properties-details.html">Properties details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Agents <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="agents.html">Our agents</a>
                                            </li>
                                            <li><a href="agents-details.html">agents details</a>
                                            </li>
                                        </ul>
                                    </li>
                                    -->
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
                                     <li><a href="#">Agents</a>
                                    <li><a href="contact.jsp">Contact</a>
                                    <li><a href="#">DOWNLOAD APP</a>
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
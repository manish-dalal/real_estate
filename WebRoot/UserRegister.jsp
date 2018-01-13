<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
  	Cookie cook=null;
  	Cookie cookies[]=request.getCookies();
  	if(cookies!=null)
  	{
  		int tot=cookies.length;
  		for(int i=0;i<tot; i++)
  		{
  			if(cookies[i].getName().equals("jfnameCook"))
  			{
  				cook=cookies[i];
  				break;
  			}
  		}
  		if(cook!=null)
  		{
  			String strValue=cook.getValue();
  			session.setAttribute("jfname", strValue);
  			response.sendRedirect("home.jsp");
  		
  		}
  	}
  	if(session.getAttribute("jfname")!=null)
    {
    		response.sendRedirect("home.jsp");
    }
 %>
<jsp:include page="headeruser1.jsp"></jsp:include>

 <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>Account</h2>
                        <p><a href="index-one.html">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Account</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <img src="images/title.png" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Inner page heading end -->

    <!-- Account start from here -->
    <section class="at-account-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Sign In</a>
                            </li>
                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Sign Up</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                <form method="post" action="Usercontroller?oper=log">
                                    <input type="text" class="form-control" name="username" placeholder="Username">
                                    <input type="password" class="form-control" name="password" placeholder="Password">
                                    <div class="checkbox clearfix">
                                        <label class="pull-left">
                                            <input type="checkbox" name="check"> Remember Me
                                        </label>
                                        <p class="pull-right"><a href="#">Forgot Your Psassword?</a>
                                        </p>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit">Login</button>
                                    </div>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <form action="Usercontroller?oper=reg" method="post">
                                    <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                    <input type="text" class="form-control" name ="lastname" placeholder="Last Name">
                                    <input type="text" class="form-control" name="mobile"placeholder="Mobile">
                                    <input type="email" class="form-control" name="email" placeholder="Your Email Address">
                                    <input type="text" class="form-control" name="username"placeholder="Username">
                                    <input type="password" class="form-control" name="password" placeholder="Password">
                                    <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit">sign up</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End -->

<jsp:include page="Footer.jsp"></jsp:include>
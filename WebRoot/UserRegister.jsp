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
                        <p><a href="home.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Account</a>
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
                            <li role="presentation" class="active"><a href="#" aria-controls="home" role="tab" data-toggle="tab">Sign In</a>
                            </li>
                            <li role="presentation"><a href="#" aria-controls="profile" role="tab" data-toggle="tab">Sign Up</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                <form method="post" action="Usercontroller?oper=log">
                                <%
								    	if(request.getParameter("msg")!=null)
								    	{
								    		if(request.getParameter("msg").equals("invalid"))
								    		{%>
								    		<div>Invalid Username/Password</div>	
								    		<%}
								    	}
     							%>
                                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" onBlur="return usname()">
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" onBlur="return pword()">
                                    <div class="checkbox clearfix">
                                        <label class="pull-left">
                                            <input type="checkbox" name="rememberCheck"> Remember Me
                                        </label>
                                        <p class="pull-right"><a href="#">Forgot Your Psassword?</a>
                                        </p>
                                    </div>
                                    <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit" onClick="return validin();">Login</button>
                                    </div>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <form action="Usercontroller?oper=reg" method="post">
                                    <input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name" onblur="return fname()">
                                    <input type="text" class="form-control" name ="lastname" id="lastname" placeholder="Last Name" onblur="return lname()">
                                    <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile" onblur="return m()">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email Address" onblur="return cem()">
 									<input type="text" class="form-control" name="username" id="user" placeholder="Username" onBlur="return use()">
                                    <input type="password" class="form-control" name="password" id="pass" placeholder="Password" onBlur="return pa()">
                                    <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit" onClick="return validup();">sign up</button>
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
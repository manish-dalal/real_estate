<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="headeradmin.jsp"></jsp:include>

 <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>Account</h2>
                        <p><a href="adminHomePage.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Account</a>
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
                            
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                <form method="post" action="adminlogin?op=lgn">
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
							              <div class="checkbox clearfix" >
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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End -->

<jsp:include page="Footer.jsp"></jsp:include>
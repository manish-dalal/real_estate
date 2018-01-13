<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<jsp:include page="headeruser1.jsp"></jsp:include>
    <!-- Inner page heading start from here -->
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
                            <li role="presentation" class="active"><a href="#" aria-controls="home" role="tab" data-toggle="tab">Profile</a>
                            </li>
                            <li role="presentation"><a href="#" aria-controls="profile" role="tab" data-toggle="tab">change password</a>
                            </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="home">
 							<%
 							String fname=session.getAttribute("jfname").toString();
 							String mobile=session.getAttribute("jmobile").toString();
 							String email=session.getAttribute("jemail").toString();
 							String username=session.getAttribute("jusername").toString();
 							String lname=session.getAttribute("jlname").toString();
 							%>
                                <form action="Usercontroller?oper=up" method="post">
                                    <input type="text" class="form-control" name="firstname" value="<%=fname %>">
                                    <input type="text" class="form-control" name="lastname" value="<%=lname %>">
                                    <input type="text" class="form-control" name="mobile" value="<%=mobile%>">
                                    <input type="email" class="form-control" name="email" value="<%=email%>">
                                    <input type="text" class="form-control" name="username" value="<%=username%>">
                                    
                                    <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit">Update</button>
                                    </div>
                                </form>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                <form>
                                    <input type="password" class="form-control" placeholder="New Password">
                                    <input type="password" class="form-control" placeholder="Confirm Password">
                             
                                           <div class="text-center">
                                        <button class="btn btn-default hvr-bounce-to-right" type="submit">Change Password</button>
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
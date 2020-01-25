<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionuser.jsp" %>

<jsp:include page="headeruser1.jsp"></jsp:include>

    <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>Contact Us</h2>
                        <p><a href="home.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Contact</a>
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
<%
String propertyId=request.getParameter("id");
 %>

    <!-- Contact Start from here -->
    <section class="at-contact-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-contact-form at-col-default-mar">
                        <div id="form-messages"></div>
                        <form method="post" action="userreq?id=<%=propertyId %>">
                           <input type="text" class="form-control" name="name" id="name" placeholder="Name" onblur="return rename()">
                           <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile" onblur="return m()">
                           <input type="email" class="form-control" name="email" id="email" placeholder="Your Email Address" onblur="return cem()">
                            <button class="btn btn-default hvr-bounce-to-right" type="submit" onClick="return reques();">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        <p>mailaddress@gmail.com</p>
                    </div>
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <p>+0123 (123) 6719900</p>
                    </div>
                    <div class="at-info-box at-col-default-mar">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <p>99, Big Building, Glasgow, United Kingdom.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  Contact end-->

<jsp:include page="Footer.jsp"></jsp:include>
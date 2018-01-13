<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

    <!-- Contact Start from here -->
    <section class="at-contact-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-contact-form at-col-default-mar">
                        <div id="form-messages"></div>
                        <form id="ajax-contact" method="post" action="#">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                            <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
                            <textarea class="form-control" id="message" name="message" rows="5" placeholder="Message" required></textarea>
                            <button class="btn btn-default hvr-bounce-to-right" type="submit">Sent Message</button>
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
                        <p>12th Floor, MSO Building, I. P.Estate, New Delhi</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  Contact end-->

    <div id="googleMap" style="width:100%; height:400px;"></div>
    
    
    <jsp:include page="Footer.jsp"></jsp:include>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionadmin.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="headeradmin.jsp"></jsp:include>

 <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>About</h2>
                        <p><a href="adminHomePage.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">About</a>
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

    <!-- About start from here -->
    <section class="at-about-sec">
        <div class="container">
            <div class="row animatedParent animateOnce">
                <div class="col-lg-7 col-md-12">
                    <div class="at-about-col at-col-default-mar">
                        <div class="at-about-title">
                            <h1>Few description<br> <span>about Real Places</span></h1>
                            <h6>Real Places</h6>
                        </div>
                        <p>A real estate broker or real estate salesperson is a person who acts as an intermediary between sellers and buyers of real estate/real property and attempts to match up sellers who wish to sell and buyers who wish to buy.</p> <br>

                        <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                    </div>
                </div>
                <div class="col-lg-5 hidden-md">
                    <div class="at-about-col animated fadeInRightShort slow delay-250">
                        <img src="images/about/1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About End -->

    <!-- Call start from here -->
    <section class="at-Call-sec jarallax at-over-layer-black">
        <div class="at-Call-both-side clearfix">
            <div class="at-Call-left">
                <div class="at-inside-Call">
                    <h5>BOOK YOUR</h5>
                    <h2>APPARTMENT OR HOUSE</h2>
                </div>
            </div>
            <div class="at-Call-right">
                <div class="at-Call-right-inside">
                    <h2>we are ready to receive your call</h2>
                    <div class="at-short-line"></div>
                    <h3>CALL US : <span>+0412 001 123</span></h3>
                </div>
            </div>
        </div>
    </section>
    <!-- Call End -->

    <!-- Call start from here -->
    <section class="at-plan-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="at-sec-title at-sec-title-left">
                        <h2>Our <span>future plan</span></h2>
                        <div class="at-heading-under-line">
                            <div class="at-heading-inside-line"></div>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum totam et dolores voluptatem porro tempore temporibus ducimus</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="at-plan-box at-col-default-mar">
                        <ul>
                            <li>Adding New entry to Existing Datatbase by user.</li>
                            <li>Use of Framework make the system more reliable.</li>
                            <li>Updating Entry in Existing Datatbase.</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="at-plan-box at-col-default-mar">
                        <ul>
                            <li>Mobile app can also be great feature to raise the Gamut of audiences.</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="at-col-default-mar">
                        <img src="images/meeting.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Call end -->

    <!-- Newsletter start from here -->
    <section class="at-newsletter-sec jarallax at-over-layer-black">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h2>subscribe <span>newsletter</span></h2>
                    <p></p>
                    <form class="input-group">
                        <div class="form-group">
                            <input class="form-control" type="email" placeholder="Enter Your Email">
                        </div>
                        <span class="input-group-btn">
                          <button class="btn btn-default at-sub-btn hvr-bounce-to-right" type="submit">
                            SUBSCRIBE
                          </button>
                        </span>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Newsletter end -->

    <!-- Brand start from here -->
    <section class="at-brand-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="brand-carousel" data-slick='{"slidesToShow": 6, "slidesToScroll": 1}'>
                        <div class="item">
                            <a href="#"><img src="images/brand/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/2.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/3.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/4.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/5.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/6.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/1.jpg" alt="">
                            </a>
                        </div>
                        <div class="item">
                            <a href="#"><img src="images/brand/2.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Brand End -->

<jsp:include page="Footer.jsp"></jsp:include>
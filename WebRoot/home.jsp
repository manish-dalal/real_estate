<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="headeruser.jsp"></jsp:include> 

 <!-- Main Search start from here -->
    <section class="main-search-field main-search-field-two main-search-field-three at-over-layer-black" id="water-animation">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="at-col-default-mar clearfix">
                        <h1 id="text-animation">we are real estate company, find your dream home from here, 
                        we are very helpful, We are very modern, we are very experienced</h1>
                    </div>
                </div>
            </div>
<form action="search.jsp" method="get">
            <div class="at-search-box">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                          
                            <select name="city" id="city" class="form-control">
                                <option value="" >Location</option>
                                <option value="ambala">Ambala</option>
                                <option value="bhiwani">Bhiwani</option>
                                <option value="Bahadurgarh">Bahadurgarh</option>
                                <option value="Faridabad">Faridabad</option>
                                <option value="Fatehabad">Fatehabad</option>
                                <option value="Gurgaon">Gurgaon</option>
                                <option value="Hisar">Hisar</option>
                                <option value="Jhajjar">Jhajjar</option>
                                <option value="Jind">Jind</option>
                                <option value="Kaithal">Kaithal</option>
                                 <option value="karnal">Karnal</option>
                                <option value="kurukshetra">Kurukshetra</option>
                                <option value="Mahendragarh">Mahendragarh</option>
                                <option value="Palwal">Palwal</option>
                                <option value="Panchkula">Panchkula</option>
                                <option value="panipat">Panipat</option>
                                <option value="Rewari">Rewari</option>
                                <option value="Rohtak">Rohtak</option>
                                <option value="Sirsa">Sirsa</option>
                                <option value="Sonipat">Sonipat</option>
                                <option value="yamuna nagar">Yamunanagar</option>
                            </select>
                        </div>
                    </div>
                 <!--    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <select class="div-toggle" data-target=".my-info-1" name="status" id="status" class="form-control">
                                <option value=""  disabled selected>Property Status</option>
                                <option value="for sale" >For Sale</option>
                                <option value="for rent" >For Rent</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <input class="at-input" type="text" name="max-area" id="max-area" placeholder="Squre Fit Max">
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <input class="at-input" type="text" name="min-area" id="min-area" placeholder="Squre Fit Min">
                        </div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <select name="bedroom" id="bedroom" class="form-control">
                                <option value="" disabled selected>Bedroom</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <select name="kitchen" id="kitchen" class="form-control">
                                <option value="" disabled selected>Kitchen</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                    <!--  <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <div class="irs-pricing-range">
                                <div class="my-info-1">
                                    <h4>At first select Property Status</h4>
                                    <div class="acitveon sale hide">
                                        <label>Price : </label>
                                        <input type="text" class="amount at-input-price" readonly>
                                        <div class="slider-range"></div>
                                    </div>
                                    <div class="rent hide">
                                        <label>Price : </label>
                                        <input type="text" class="amount-two at-input-price" readonly>
                                        <div class="slider-range-two"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    --> 
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <input class="at-input" type="text" name="max-price" id="max-price" placeholder="Max price">
                        </div>
                    </div>
					
                    <div class="col-lg-3 col-md-6">
                        <div class="at-col-default-mar">
                            <button class="btn btn-default hvr-bounce-to-right" type="submit">Search</button>
                        </div>
                    </div>
                    
                </div>
            </div>
            </form>
        </div>
    </section>
    <!-- Main Search End -->

    <!-- About start from here -->
    <section class="at-about-sec-two">
        <div class="container">
            <div class="row animatedParent animateOnce">
                <div class="col-lg-6 col-md-12">
                    <div class="at-about-col at-col-default-mar animated fadeInLeftShort slow delay-250">
                        <img src="images/about/2.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="at-about-col at-col-default-mar">
                        <div class="at-about-title">
                            <h1>Few description<br> <span>about Real Places</span></h1>
                            <h6>Real Estate</h6>
                        </div>
                        <p>An electronic version of the real estate industry, internet real estate is the concept of publishing housing estates for sale or rent, and for consumers seeking to buy or rent a property. Often, internet real estate are operated by landlords themselves. However, there are few exceptions where an online real estate agent would exist, still dealing via the web and often stating a flat-fee and not a commission based on percentage of total sales.</p><br>
                        <p>Inventore, distinctio optio? Recusandae necessitatibus odit dolorum exercitationem ut, molestiae reprehenderit laborum inventore ratione eligendi.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the standard dummy text ever since.</p>
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

    <!-- Property start from here -->
    <section class="at-property-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="at-sec-title at-sec-title-left">
                        <h2>Awesome <span>Property</span></h2>
                        <div class="at-heading-under-line">
                            <div class="at-heading-inside-line"></div>
                        </div>
                        <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                      </div>
                </div>
            </div>
            <div class="row animatedParent animateOnce">
            <%
String propertyId="";
String image="";
String area="";
String bedroom="";
String bathroom="";
String kitchen="";
String garage="";
String city="";
String description="";
String price="";
String pool="";
String balcony="";
String address="";
String status="";

try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from property ";
            PreparedStatement ps=con.prepareStatement(quer);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                propertyId=rs.getString(1);
                area=rs.getString(2);
                bedroom=rs.getString(3);
                bathroom=rs.getString(4);
                kitchen=rs.getString(5);
                garage=rs.getString(6);
                city=rs.getString(7);
                description=rs.getString(8);
                price=rs.getString(9);
                balcony=rs.getString(10);
                pool=rs.getString(11);
                status=rs.getString(12);
                address=rs.getString(13);
                image=rs.getString(14);
%>
                <div class="col-md-4 col-sm-6">
                    <div class="at-property-item at-col-default-mar animated fadeInUpShort slow">
                        <div class="at-property-img">
                            <img src="Uimages/<%=image %>" height="2" width="22">
                            <div class="at-property-overlayer"></div>
                            <a class="btn btn-default at-property-btn" href="propertydetails.jsp?id=<%=propertyId %>" role="button">View Details</a>
                            <h4><%=status %></h4>
                            <h5>&#8377; <%=price %></h5>
                        </div>
                        <div class="at-property-dis">
                            <ul>
                                <li><i class="fa fa-object-group" aria-hidden="true"></i> <%=area %> sq ft</li>
                                <li><i class="fa fa-bed" aria-hidden="true"></i> <%=bedroom %></li>
                                <li><i class="fa fa-bath" aria-hidden="true"></i> <%=bathroom %></li>
                            </ul>
                        </div>
                        <div class="at-property-location">
                            <h4><i class="fa fa-home" aria-hidden="true"></i><a href="propertydetails.jsp?id=<%=propertyId %>">Residential Apartment in <%=city %> </a></h4>
                            <p><i class="fa fa-map-marker" aria-hidden="true"></i><%=address %>,<%=city %></p>
                        </div>
                    </div>
                </div>
<%      
            }
            
        }
        catch(Exception e)
        {
            System.out.println("Property jsp : "+e);
        }

 %>
            </div>
        </div>
    </section>
    <!-- Property End -->

    <!-- Agents start from here -->
    <section class="at-agents-sec at-agents-sec-two jarallax  at-over-layer-black">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="at-sec-title">
                        <h2>Our valuable <span>Agents</span></h2>
                        <div class="at-heading-under-line">
                            <div class="at-heading-inside-line"></div>
                        </div>
                       <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                     </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="agent-carousel" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/1.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Martin Guptil</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/2.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Jesica Mile</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/3.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Thomas Jons</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/4.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Cris Jordan</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/5.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Marri Guptil</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                        <div class="at-agent-col">
                            <div class="at-agent-img">
                                <img src="images/agents/6.png" alt="">
                                <div class="at-agent-social">
                                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
                                    <div class="at-agent-call">
                                        <p>+101 4326 0055</p>
                                    </div>
                                </div>
                            </div>
                            <div class="at-agent-info">
                                <h4><a href="#">Martin Mozina</a></h4>
                                <p>sales executive</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Agents End -->

    <!-- Blog start from here -->
    <section class="at-blog-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="at-sec-title at-sec-title-left">
                        <h2>Our <span>Blog</span></h2>
                        <div class="at-heading-under-line">
                            <div class="at-heading-inside-line"></div>
                        </div>
                       <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                      </div>
                </div>
            </div>
            <div class="row animatedParent animateOnce">
                <div class="col-md-4 col-sm-6">
                    <div class="at-blog-box at-col-default-mar animated fadeInUpShort slow">
                        <div class="at-blog-img">
                            <img src="images/blog/1.jpg" alt="">
                            <div class="at-blog-date">
                                <ul>
                                    <li><i class="icofont icofont-businessman"></i><a href="#">Mark Jonson</a>
                                    </li>
                                    <li><i class="icofont icofont-calendar"></i><a href="#">June 28, 2017</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="at-blog-content">
                            <h4><a href="#">latest design of house</a></h4>
                          <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                      <a href="#">Read More <i class="zmdi zmdi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="at-blog-box at-col-default-mar animated fadeInUpShort slow delay-250">
                        <div class="at-blog-img">
                            <img src="images/blog/2.jpg" alt="">
                            <div class="at-blog-date">
                                <ul>
                                    <li><i class="icofont icofont-businessman"></i><a href="#">Thomas Roy</a>
                                    </li>
                                    <li><i class="icofont icofont-calendar"></i><a href="#">June 29, 2017</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="at-blog-content">
                            <h4><a href="#">strong house project</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                            <a href="#">Read More <i class="zmdi zmdi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="at-blog-box at-col-default-mar animated fadeInUpShort slow delay-500">
                        <div class="at-blog-img">
                            <img src="images/blog/3.jpg" alt="">
                            <div class="at-blog-date">
                                <ul>
                                    <li><i class="icofont icofont-businessman"></i><a href="#">Nelson Monika</a>
                                    </li>
                                    <li><i class="icofont icofont-calendar"></i><a href="#">June 30, 2017</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="at-blog-content">
                            <h4><a href="#">popular design of house</a></h4>
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                            <a href="#">Read More <i class="zmdi zmdi-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End -->

    <!-- Newsletter start from here -->
    <section class="at-newsletter-sec jarallax at-over-layer-black">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h2>subscribe <span>newsletter</span></h2>
                    <p>consectetur adipisicing elit. Beatae ducimus in enim quae</p>
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
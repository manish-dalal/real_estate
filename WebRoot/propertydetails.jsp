<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%
    		String str="";
    		if(session.getAttribute("jname")!=null)
    		{
    		%>
					<jsp:include page="headeradmin.jsp"></jsp:include>
			<%
			}
			else
    		{
    		%>
    				<jsp:include page="headeruser1.jsp"></jsp:include>
			 <% 
			 }
			 %>
 <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>PROPERTIES DETAILS</h2>
                        <p><a href="home.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Properties</a>
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
			String quer="select * from property where propertyId=?";
			PreparedStatement ps=con.prepareStatement(quer);
			ps.setString(1,propertyId);
			ResultSet rs=ps.executeQuery();	
			if(rs.next())
			{
				
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
		
			}
			else
			{
				response.sendRedirect("error.jsp?msg=invalid");
			}	
		}
		catch(Exception e)
		{
			System.out.println("Property jsp : "+e);
		}

 %>
    <!-- Property start from here -->
    <section class="at-property-sec at-property-right-sidebar">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="at-property-details-col">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img src="Uimages/<%=image %>" alt="">
                                    <div class="carousel-caption">
                                        <h2>Residential Apartment in <%=city %></h2>
                                    </div>
                                </div>
                                <!-- End Item -->
                                <!-- <div class="item">
                                    <img src="images/slider/slider-2.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h2>nice guest room</h2>
                                    </div>
                                </div>
                                <!-- End Item -->
                               <!--  <div class="item">
                                    <img src="images/slider/slider-3.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h2>Well bathroom</h2>
                                    </div>
                                </div>
                                <!-- End Item -->
                              <!--   <div class="item">
                                    <img src="images/slider/slider-4.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h2>awesome bedroom</h2>
                                    </div>
                                </div>
                                <!-- End Item --> 
                            </div>
                            <!-- End Carousel Inner -->
                            <!-- <ul class="nav nav-pills nav-justified">
                                <li data-target="#myCarousel" data-slide-to="0" class="active">
                                    <a href="#"><img src="images/slider/slider-1.jpg" alt="">
                                    </a>
                                </li>
                                <li data-target="#myCarousel" data-slide-to="1">
                                    <a href="#"><img src="images/slider/slider-2.jpg" alt="">
                                    </a>
                                </li>
                                <li data-target="#myCarousel" data-slide-to="2">
                                    <a href="#"><img src="images/slider/slider-3.jpg" alt="">
                                    </a>
                                </li>
                                <li data-target="#myCarousel" data-slide-to="3">
                                    <a href="#"><img src="images/slider/slider-4.jpg" alt="">
                                    </a>
                                </li>
                            </ul> -->
                        </div>
                        <!-- End Carousel -->
                        <p>A real estate broker or real estate salesperson is a person who acts as an intermediary between sellers and buyers of real estate/real property and attempts to match up sellers who wish to sell and buyers who wish to buy.</p> <br>
							 <div class="at-sec-title at-sec-title-left">
                            <h2>Property <span>Features</span></h2>
                            <div class="at-heading-under-line">
                                <div class="at-heading-inside-line"></div>
                            </div>
                             <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                     </div>
                        <div class="row at-property-features">
                            <div class="col-md-6 clearfix">
                                <ul>
                                    <li>Property ID : <span class="pull-right"><%=propertyId %></span>
                                    </li>
                                    <li>Full Area : <span class="pull-right"><%=area %></span>
                                    </li>
                                    <li>Bedrooms : <span class="pull-right"><%=bedroom %></span>
                                    </li>
                                    <li>Bathrooms : <span class="pull-right"><%=bathroom %></span>
                                    </li>
                                    <li>Garages : <span class="pull-right"><%=garage %></span>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <ul>
                                    <li>Status : <span class="pull-right"><%=status %></span>
                                    </li>
                                    <li>Price : <span class="pull-right"><%=price %></span>
                                    </li>
                                    <li>Kitchen : <span class="pull-right"><%=kitchen %></span>
                                    </li>
                                    <li>Balcony : <span class="pull-right"><%=balcony %></span>
                                    </li>
                                    <li>Pool : <span class="pull-right"><%=pool %></span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <form method="post" action="requestd.jsp?id=<%=propertyId %>">
                            <button class="btn btn-default hvr-bounce-to-right" type="submit">Contact Dealer</button>
                        </form>
            
                       <!--  <div class="row">
                            <div class="col-md-12">
                                <div class="at-comment-row">
                                    <h3><a href="#">Comment(3)</a></h3>
                                    <div class="at-comment-item">
                                        <a class="pull-right" href="#">
                                            <i class="fa fa-reply" aria-hidden="true"></i>
                                        </a>
                                        <img src="images/comment/1.jpg" alt="">
                                        <h5>Alin Max</h5>
                                        <span>3 hours ago</span>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that. </p>
                                    </div>
                                    <div class="at-comment-item">
                                        <a class="pull-right" href="#">
                                            <i class="fa fa-reply" aria-hidden="true"></i>
                                        </a>
                                        <img src="images/comment/2.jpg" alt="">
                                        <h5>Max Julio</h5>
                                        <span>2 hours ago</span>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that. </p>
                                    </div>
                                    <div class="at-comment-item">
                                        <a class="pull-right" href="#">
                                            <i class="fa fa-reply" aria-hidden="true"></i>
                                        </a>
                                        <img src="images/comment/3.jpg" alt="">
                                        <h5>Ross Tailor</h5>
                                        <span>5 hours ago</span>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that. </p>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                       <!--  <div class="row">
                            <div class="at-form-area">
                                <div class="col-md-12">
                                    <form id="contact_form" action="http://awesome-theme.com/tf/projects/homy/contact.php" method="post">
                                        <div class="col-md-6 col-sm-6">
                                            <input class="form-control" type="text" name="name" placeholder="Your name">
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <input class="form-control" type="email" name="email" placeholder="Email">
                                        </div>
                                        <div class="col-md-12 col-sm-12">
                                            <textarea class="form-control" name="message" rows="5" placeholder="Write message here"></textarea>
                                            <button class="btn btn-default hvr-bounce-to-right" type="submit">SUBMIT</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="at-sidebar at-col-default-mar">
                        <div class="at-sidebar-search at-sidebar-mar">
                            <form method="post">
                                <div class="input-group">
                                    <input placeholder="Search Here....." class="form-control" name="search-field" type="text">
                                    <span class="input-group-btn">
                                  <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                  </span>
                                </div>
                            </form>
                        </div>
                        <!-- <div class="at-categories clearfix">
                            <h3 class="at-sedebar-title">categories</h3>
                            <ul>
                                <li><a href="#">new building</a> <span class="pull-right">(10)</span>
                                </li>
                                <li><a href="#">modern design</a> <span class="pull-right">(08)</span>
                                </li>
                                <li><a href="#">best design</a> <span class="pull-right">(29)</span>
                                </li>
                                <li><a href="#">popular design</a> <span class="pull-right">(33)</span>
                                </li>
                                <li><a href="#">strong building</a> <span class="pull-right">(23)</span>
                                </li>
                                <li><a href="#">old design</a> <span class="pull-right">(22)</span>
                                </li>
                                <li><a href="#">popular design</a> <span class="pull-right">(29)</span>
                                </li>
                                <li><a href="#">best design</a> <span class="pull-right">(11)</span>
                                </li>
                            </ul>
                        </div> -->
                        <div class="at-latest-news">
                            <h3 class="at-sedebar-title">latest news</h3>
                            <ul>
                                <li>
                                    <div class="at-news-item">
                                        <img src="images/blog/s1.jpg" alt="">
                                        <h4><a href="#">Popular building design</a></h4>
                                        <p>Almost all of the portals are laser-focused on a simple search experience.</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="at-news-item">
                                        <img src="images/blog/s2.jpg" alt="">
                                        <h4><a href="#">Best building design</a></h4>
                                        <p>All of the portals have links to find agents.</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="at-news-item">
                                        <img src="images/blog/s3.jpg" alt="">
                                        <h4><a href="#">Building in city</a></h4>
                                        <p>Ancillary revenue streams: Lead generation and mortgages.</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        
                        <!-- <div class="at-preview">
                            <h3 class="at-sedebar-title">preview</h3>
                            <img src="images/property/preview.jpg" alt="">
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="Footer.jsp"></jsp:include>

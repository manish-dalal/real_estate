<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
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
                        <h2>Properties</h2>
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

   <!-- Property start from here -->
    <section class="at-property-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="at-sec-title at-sec-title-left">
                        <h2>Awesome <span>Search Property</span></h2>
                        <div class="at-heading-under-line">
                            <div class="at-heading-inside-line"></div>
                        </div>
                        <p>Real estate agents are licensed professionals who represent buyers and sellers in real estate transactions. Most agents work for a real estate broker or Realtor who has additional training and extra certifications.</p>
                      </div>
                </div>
            </div>
            <div class="row animatedParent animateOnce">
            <%

String status="";
String minarea="";
String bedroom="";
String kitchen="";
String propertyId="";
String image="";
String area="";
String bathroom="";
String garage="";
String description="";
String price="";
String pool="";
String balcony="";
String address="";
String city=request.getParameter("city");
String maxprice=request.getParameter("max-price");

if( city !="" && maxprice != "")
{  

try
        {
        	
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from property where city=?  and price<?";
            PreparedStatement ps=con.prepareStatement(quer);
            ps.setString(1,city);
            ps.setString(2,maxprice);
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
}

if( city !="" && maxprice == "")
{  
try
        {
        	
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from property where city=? ";
            PreparedStatement ps=con.prepareStatement(quer);
            ps.setString(1,city);
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
}
if( city=="" && maxprice!= "")
{

try
        {
        	
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from property where price < ?";
            PreparedStatement ps=con.prepareStatement(quer);
            ps.setString(1,maxprice);
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
}

if( city ==null && maxprice==null)
{  
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
}

 %>
                
            </div>
        </div>
    </section>
    <!-- Property End -->
    
    
    
    <jsp:include page="Footer.jsp"></jsp:include>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionadmin.jsp" %>  
<jsp:include page="headeradmin.jsp"></jsp:include>

    <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>CHECK STATUS</h2>
                        <p><a href="adminHomePage.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">Check Status</a>
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
<section class="at-faq-sec">
	<div class="container">
	<table cellpadding="0" cellspacing="" width="100%" border="0" ">
		<tr style="border-bottom: 2px solid black;" align="left">
			<th>S.No</th>
			<th>Property Id</th>
			<th>Area</th>
			<th>Address</th>
			<th>City</th>
			<th>Bedroom</th>
			<th>Bathroom</th>
			<th>Kitchen</th>
			<th>Garage</th>
			<th>Balcony</th>
			<th>Status</th>
			<th>Price</th>
			<th>Operation</th>
		</tr>
<%
String propertyId="";
String area="";
String address="";
String city="";
String bedroom="";
String bathroom="";
String kitchen="";
String garage="";
String balcony="";
String status="";
String price="";


try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from Property";
            PreparedStatement ps=con.prepareStatement(quer);
            ResultSet rs=ps.executeQuery();
            int i=0;
            while(rs.next())
            {
            	i=i+1;
                propertyId=rs.getString(1);
                area=rs.getString(2);
                bedroom=rs.getString(3);
                bathroom=rs.getString(4);
                kitchen=rs.getString(5);
                garage=rs.getString(6);
                city=rs.getString(7);
                price=rs.getString(9);
                balcony=rs.getString(10);
                status=rs.getString(12);
                address=rs.getString(13);
%>
	<tr >
		<td><%=i %></td>
		<td><%=propertyId%></td>
		<td><%=area%></td>
		<td><%=address%></td>
		<td><%=city%></td>
		<td><%=bedroom%></td>
		<td><%=bathroom%></td>
		<td><%=kitchen%></td>
		<td><%=garage%></td>
		<td><%=balcony%></td>
		<td><%=status%></td>
		<td><%=price%></td>
		<td><a class="hvr-bounce-to-right" href="adremove.jsp">REMOVE</a></td>
	</tr>

<%
            }
            
        }
        catch(Exception e)
        {
            System.out.println("Property jsp : "+e);
        }

 %>
 
	</table>
	
	
	
	</div>
</section>

 <jsp:include page="Footer.jsp"></jsp:include>
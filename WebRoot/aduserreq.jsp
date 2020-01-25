<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@ include file="sessionadmin.jsp" %>  
<jsp:include page="headeradmin.jsp"></jsp:include>

    <!-- Inner page heading start from here -->
    <section id="at-inner-title-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="at-inner-title-box">
                        <h2>User Requests</h2>
                        <p><a href="adminHomePage.jsp">Home</a> <i class="fa fa-angle-double-right" aria-hidden="true"></i> <a href="#">User Requests</a>
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
	<table cellpadding="0" cellspacing="" width="100%" border="0">
		<tr style="border-bottom: 2px solid black;">
			<th>S.No</th>
			<th>Property Id</th>
			<th>Name</th>
			<th>Phone Number</th>
			<th>Email</th>
			<th>Operation</th>
		</tr>
<%
String property="";
String name="";
String mobile="";
String email="";

try
        {
        	int i=0;
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            String url= "jdbc:odbc:mydsn";
            Connection con=DriverManager.getConnection(url);
            String quer="select * from userreq ";
            PreparedStatement ps=con.prepareStatement(quer);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            	i++;
                property=rs.getString(1);
                name=rs.getString(2);
                mobile=rs.getString(3);
                email=rs.getString(4);
%>
	<tr>
		<td><%=i %>
		<td><%=property%></td>
		<td><%=name%></td>
		<td><%=mobile%></td>
		<td><%=email%></td>
		<td><a class="hvr-bounce-to-right" href="adrequest.jsp">REMOVE</a></td>
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
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'Logoutadmin.jsp' starting page</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	session.setAttribute("jname","");
    	session.invalidate();
    	Cookie cookie=new Cookie("jnameCook", "");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
    	response.sendRedirect("adminLoginPage.jsp");
     %>
  </body>
</html>

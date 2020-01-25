<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
if(session.getAttribute("jfname") == null)
    		{
    			
    			response.sendRedirect("UserRegister.jsp");
    			return;
    		}
 %>
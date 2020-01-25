<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
 <%
    Cookie cook=null;
  	Cookie cookies[]=request.getCookies();
  	
  	if(cookies!=null)
  	{
  		int tot=cookies.length;
  		for(int i=0;i<tot; i++)
  		{
  			if(cookies[i].getName().equals("jnameCook"))
  			{
  				cook=cookies[i];
  				break;
  			}
  		}
  		if(cook!=null)
  		{
  			String strValue=cook.getValue();
  			session.setAttribute("jname", strValue);
  			
  		
  		}
  	}
  	
  
    if(session.getAttribute("jname") == null)
    		{
    			
    			response.sendRedirect("adminLoginPage.jsp");
    			return;
    		}
 %>
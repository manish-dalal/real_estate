import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class userreq extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public userreq() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		if(request.getParameter("id")!= null)
		{
			
			String strName=request.getParameter("name");
			String strMobile=request.getParameter("mobile");
			String strEmail=request.getParameter("email");
			String propertyId=request.getParameter("id");
			
			
			int i=0;
			
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection con=DriverManager.getConnection("jdbc:odbc:mydsn");
				PreparedStatement ps=con.prepareStatement("insert into userreq values(?,?,?,?)");
				ps.setString(1, propertyId);
				ps.setString(2, strName);
				ps.setString(3, strMobile);
				ps.setString(4, strEmail);
				
				i=ps.executeUpdate();
				if(i>0)
				{
					response.sendRedirect("home.jsp");
				}
				else
				{
					response.sendRedirect("UserRegister.jsp?msg=invalid");
				}
				
			}
			catch(Exception ee)
			{
				System.out.println(ee);
			}
		}
		
		out.flush();
		out.close();
	}


	public void init() throws ServletException {
		// Put your code here
	}

}

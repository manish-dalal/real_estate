import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MyBeans.Admindetail;
import MyModel.*;


public class adminlogin extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public adminlogin() {
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

		doPost(request, response);
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
		DBModel m =new DBModel();
		
		String strattribute=request.getParameter("op");
		if(strattribute.equals("lgn"))
		{
			String strName=request.getParameter("username").trim();
			String strPass=request.getParameter("password").trim();
						
			Admindetail i=m.checkAdminLogin(strName, strPass);
				if(i!=null)
				{
					String strCheck=request.getParameter("rememberCheck");

					if(strCheck!=null)
					{
						//cookie
						Cookie cook=new Cookie("jnameCook", i.getUsername());
						cook.setMaxAge(60*2000);
						response.addCookie(cook);
					}
					HttpSession session=request.getSession();
					session.setAttribute("jname", i.getUsername());

					RequestDispatcher dispatcher=request.getRequestDispatcher("adminHomePage.jsp");
					dispatcher.forward(request, response);	
				}
				else
				{
					response.sendRedirect("adminLoginPage.jsp?msg=invalid");
				}
				
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
			}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}

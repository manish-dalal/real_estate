import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MyBeans.*;
import MyModel.*;

public class Usercontroller extends HttpServlet {

	public Usercontroller() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		DBModel m= new DBModel();
		
		if(request.getParameter("oper").equals("log") )
		{
			String name=request.getParameter("username");
			String password=request.getParameter("password");
				
				UserDetail d=m.checklogin(name, password);
				if(d!=null)
				{
					String strCheck=request.getParameter("rememberCheck");
					if(strCheck!=null)
					{
						Cookie co=new Cookie("jfnameCook",d.getFirstname());
						co.setMaxAge(3600);
						response.addCookie(co);
					}
					HttpSession session=request.getSession();
					session.setAttribute("jid", d.getUserId());
					session.setAttribute("jfname",d.getFirstname());
					session.setAttribute("jlname",d.getLastname());
					session.setAttribute("jmobile", d.getMobile());
					session.setAttribute("jemail",d.getEmail());
					session.setAttribute("jusername",d.getUsername());
					session.setAttribute("jpass",d.getPassword());
			
					RequestDispatcher dispatcher=request.getRequestDispatcher("home.jsp");
					dispatcher.forward (request, response);	
				}
				else
				{
					response.sendRedirect("UserRegister.jsp?msg=invalid");
				}
		}
		if(request.getParameter("oper").equals("reg") )
		{
			String strFirstName=request.getParameter("firstname");
			String strLastName=request.getParameter("lastname");
			String strMobile=request.getParameter("mobile");
			String strEmail=request.getParameter("email");
			String strUsername=request.getParameter("username");
			String strPassword=request.getParameter("password");
			
			UserDetail r=new UserDetail();
			r.setFirstname(strFirstName);
			r.setLastname(strLastName);
			r.setMobile(strMobile);
			r.setEmail(strEmail);
			r.setUsername(strUsername);
			r.setPassword(strPassword);
			int i=m.createuser(r);

				if(i>0)
				{
					HttpSession session=request.getSession();
					session.setAttribute("jid",r.getUserId());
					session.setAttribute("jfname",r.getFirstname());
					session.setAttribute("jlname",r.getLastname());
					session.setAttribute("jmobile",r.getMobile());
					session.setAttribute("jemail",r.getEmail());
					session.setAttribute("jusername",r.getUsername());
					session.setAttribute("jpass", r.getPassword());
					RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
					rd.forward(request, response);
					
				}
				else
				{
					response.sendRedirect("UserRegister.jsp?msg=invalid");
				}
				
		}
		if(request.getParameter("oper").equals("up") )
		{	
			UserDetail u=new UserDetail();
			u.setFirstname(request.getParameter("firstname"));
			u.setLastname(request.getParameter("lastname"));
			u.setMobile(request.getParameter("mobile"));
			u.setEmail(request.getParameter("email"));
			u.setUsername(request.getParameter("username"));
		
			int i=m.updateuser(u);
			
				if(i>0)
				{
					HttpSession session=request.getSession();
					session.setAttribute("jfname", u.getFirstname());
					session.setAttribute("jlname", u.getLastname());
					session.setAttribute("jmobile", u.getMobile());
					session.setAttribute("jemail", u.getEmail());
					session.setAttribute("jusername", u.getUsername());
					RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
					rd.forward(request, response);
					
				}
				else
				{
					response.sendRedirect("profile.jsp?msg=invalid");
				}
		}
		out.flush();
		out.close();
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
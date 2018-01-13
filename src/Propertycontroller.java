import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ImagePath.ImageUpload;
import MyModel.*;
import MyBeans.*;


public class Propertycontroller extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Propertycontroller() {
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

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		PropertyDetail u= new PropertyDetail();
		DBModel m= new DBModel();
		if(request.getParameter("op").equals("add"))
		{
			u.setPropertyid(request.getParameter("propertyid").trim());
			u.setArea(request.getParameter("area").trim());
			u.setBedroom(request.getParameter("bedroom").trim());
			u.setBathroom(request.getParameter("bathroom").trim());
			u.setKitchen(request.getParameter("kitchen").trim());
			u.setGarage(request.getParameter("garage").trim());
			u.setAddress(request.getParameter("address").trim());
			u.setCity(request.getParameter("city").trim());
			u.setDescription(request.getParameter("description").trim());
			u.setPrice(request.getParameter("price").trim());
			u.setStatus(request.getParameter("status").trim());
			u.setBalcony(request.getParameter("balcony").trim());
			u.setPool(request.getParameter("pool").trim());
			
			int i= m.insertProperty(u);
			if (i > 0)
			{
				System.out.print("suces");
				RequestDispatcher dispatcher=request.getRequestDispatcher("succesaddBuilding.jsp");
				dispatcher.forward (request, response);	
			}
			else
			{
				System.out.print("Fail");
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

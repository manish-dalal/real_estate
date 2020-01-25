import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ImagePath.ImageUpload;


public class UploadImageController extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UploadImageController() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
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
		
		String saveFile=null;
		String contentType = request.getContentType();
        if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
        {
        	DataInputStream in = new DataInputStream(request.getInputStream());
        	 int formDataLength = request.getContentLength();
             byte dataBytes[] = new byte[formDataLength];
             
             int byteRead = 0;
             int totalBytesRead = 0;
             //this loop converting the uploaded file into byte code
             while (totalBytesRead < formDataLength) {
                     byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                     totalBytesRead += byteRead;
                     }
             String file = new String(dataBytes);
             saveFile = file.substring(file.indexOf("filename=\"") + 10);
             saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
             saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
             
             int lastIndex = contentType.lastIndexOf("=");
             System.out.println(contentType.length());
             String boundary = contentType.substring(lastIndex + 1, contentType.length());

             int pos;
//             //extracting the index of file 
             pos = file.indexOf("filename=\"");
             pos = file.indexOf("\n", pos) + 1;
             pos = file.indexOf("\n", pos) + 1;
             pos = file.indexOf("\n", pos) + 1;
           
             int boundaryLocation = file.indexOf(boundary, pos) - 4;
             int startPos = ((file.substring(0, pos)).getBytes()).length;
             int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
             //int endPos=formDataLength-boundaryLocation;
           
             FileOutputStream fileOut = new FileOutputStream("E:\\workJ2EE\\real\\WebRoot\\Uimages\\"+saveFile);
             fileOut.write(dataBytes, startPos, dataBytes.length-startPos);
             fileOut.flush();
             fileOut.close();
             System.out.println("File Uploaded Successfully!");
             ImageUpload.path = saveFile;
             
            
    
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

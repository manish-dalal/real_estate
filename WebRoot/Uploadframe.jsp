<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<form method="post" action="UploadImageController" enctype="multipart/form-data">
			<input type="file" name="profilePic" id="profilePic"/><input type="submit" value="Upload"/>
		</form>
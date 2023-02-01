<%@page import="java.io.*"%>
<%@page import="java.io.File"%>
<%@page import="jakarta.servlet.annotation.MultipartConfig"%>
<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<link rel="stylesheet" href="css/adminBimage.css">
<%
FileInputStream fis=null; 
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
//String myloc=request.getParameter("photo");  

try{
	Connection con=ConnectionProvider.getCon();
	//File image= new File(myloc); 
	PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, category);
	ps.setString(4, price);
	ps.setString(5, active);
	//fis=new FileInputStream(image); 
	//ps.setBinaryStream(6, (InputStream) fis, (int) (image.length())); 
	int count = ps.executeUpdate(); 
	if(count>0) 
	{ 
		response.sendRedirect("addNewProduct.jsp?msg=done");
	} 
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=invalid");
}
%>
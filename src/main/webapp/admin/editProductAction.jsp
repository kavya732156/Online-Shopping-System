<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try{
	Connection con=ConnectionProvider.getCon();
	Statement stmt=con.createStatement();
	stmt.executeUpdate("update product set name='"+name+"',category='"+category+"' ,price='"+price+"' ,active='"+active+"' where id='"+id +"'");
	if(active.equals("NO")) // delete all the product where user is added but product is not available
	{
		stmt.executeUpdate("delete from cart where product_id='"+id+"' and addressis NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>
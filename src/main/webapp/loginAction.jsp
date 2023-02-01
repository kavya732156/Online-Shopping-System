<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String u2=request.getParameter("utype");

if("Dinesh@gmail.com".equals(email) && "Dinesh@123".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs1=stmt.executeQuery("select * from users where email='"+email+"' and password ='"+password+"'");		
		while(rs1.next())
		{
			z=1;
		    session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		
		if(z==0) // if user does not exist
		{
			response.sendRedirect("login.jsp?msg=notexist");
		}
	}
	
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
	
}
%>
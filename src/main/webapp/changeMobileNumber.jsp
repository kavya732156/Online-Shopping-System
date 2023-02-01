<%@page import ="project.ConnectionProvider" %>
<%@page import ="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<% 
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>

<%} %>
<% 
if("wrong".equals(msg)){
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
  <input class="input-style" type="text" id="mobileNo " name="mobileNumber"  placeholder="Enter Your New mobile number" maxlength="10" onsubmit="validate()" required> 
 
   <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required> 

<hr>
<script> 
function validate(){
	var mb=document.getElementById("mobileNo").value;
	var mobileexp =  " /^\d{10}$/" ;
	if(mb.match(mobileexp)){
		return true;
	}
	else{
		windows.alert("Invalid mobile number");
		return false;
	}
	
}
</script>
<button class="button" value="submit"> Save <i class='far fa-arrow-alt-circle-right'></i></button>

</body>
<br><br><br>
</html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="css/bimage.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <br>
  <input type="email" name="email" placeholder="enter email" required>
  <input type="number" name="mobileNumber"  placeholder="Enter your mobile number"  maxlength="10" required> 
 
  <select name="securityQuestion">
  		<option values="What was your fav color ">What was your fav color</option>
  		<option values=" fav person ">fav person</option>
  		<option values="your pet name">your pet name</option>
  		<option values=" ur grandfather name ">ur grandfather name</option>
  
  <input type="text" name="answer" placeholder="answer" required>
  
   <input type="password" name="newPassword"  placeholder="Enter your New Password " id="myInput" required>
<input type="checkbox" onclick="myFunction()">Show Password

<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
  <input type="submit" value="Save">
  </select>
  </form>
      <h2><a href="login.jsp">Login</a></h2>
<%
  String msg=request.getParameter("msg");
  if("done".equals(msg)){
	  %>
	  <h4 style="color:red">Password Changed Successfully!</h4>
	   
  <% }%>

  <%
  if("invalid".equals(msg)){
	  %>
		<h4 style="color:red">Some thing Went Wrong! Try Again !</h4>	   
  <% }%>
     </div>
</div>
</body>
</html>
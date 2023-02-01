<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="c
ss/bimage.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <br>
  <input type="email" name="email" placeholder="Enter Your Email" required>
   <input type="text" name="mobileNumber"  placeholder="Enter your mobile number" pattern="[789][0-9]{9}" maxlength="10" required> 
 
  <select name="securityQuestion" required> 
  	<option value="What was your fav color "> Favorite Color</option>
  	<option value="Favorite Dish ">Favorite Dish </option>
  	<option value="your pet name">Your Pet name</option>
  	<option value="Your First School Name ">Enter your School Name</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  
   <input type="password" name="newPassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  placeholder="Enter your New Password " id="myInput" required>
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
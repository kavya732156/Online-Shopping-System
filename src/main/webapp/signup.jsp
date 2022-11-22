<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="css/bimage.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    
      <form action= "signupAction.jsp" method="post">
      <br>
  <input type="text" name="name" placeholder="Enter your name" required> 
  <input type="email" name="email" placeholder="Enter your email" required> 
  <input type="number" name="mobileNumber"  placeholder="Enter your mobile number" maxlength="10" required> 
  <select name="securityQuestion" required> 
  	<option value="What was your fav color ">What was your fav color</option>
  	<option value="Favorite Dish ">Favorite Dish </option>
  	<option value="your pet name">your pet name</option>
  	<option value="Your First School Name ">Enter your School Name</option>
  </select>
  <input type="text" name="answer" placeholder="enter answer" required> 
  <input type="password" name="password"  placeholder="Enter your Password " id="myInput" required>
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
  <input type="submit" value="signup">
   </form>
   <%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h4 color="red"> Successfully Registered !!! </h4>
 <%  } %>
 
<%
if("invalid".equals(msg))
{
%>
<h4 color="red"> Something went wrong , Try again !!! </h4>
 <%  } %>
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  </div>

</body>
</html>
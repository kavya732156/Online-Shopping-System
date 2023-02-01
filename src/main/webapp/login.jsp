
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="css/bimage.css">
<title>Login</title>
</head>
<body>
		<h2  > ONLINE SHOPPING MANAGEMENT SYSTEM </h2>

	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<br> <input type="email" name="email" placeholder="Enter Your Email"
					required> <input type="password" name="password"
					placeholder="Enter Your Password " id="myInput" required> <input
					type="checkbox" onclick="myFunction()">Show Password

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
				<input type="submit" value="login">
			</form>
			<h2>
				<a href="signup.jsp">SignUp</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>

			<%
			String msg = request.getParameter("msg");
			if ("notexist".equals(msg)) {
			%>
			<h4 style="color: red">Incorrect Username or Password</h4>

			<%
			}
			%>

			<%
			if ("invalid".equals(msg)) {
			%>
			<h4 style="color: red">Something Went Wrong! Try Again !</h4>
			<%
			}
			%>
			<br>
			<br>
		</div>
	</div>

</body>
</html>
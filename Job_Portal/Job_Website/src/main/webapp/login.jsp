<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign In Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!-- Main css -->
<link rel="stylesheet" href="all_component/login.css">
</head>
<body>


	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="img/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>

					<c:if test="${not empty succMsg}">
						<h4 class="text-center text-danger">${succMsg}</h4>
						<c:remove var="succMsg"></c:remove>
					</c:if>

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">

							<div class="form-group">
								<input type="text" name="username" id="username"
									placeholder="Enter Your E-Mail" required="required" />
							</div>
							<div class="form-group">
								<input type="password" name="password" id="password"
									placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password?</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Login" />
							</div>
						</form>
						
						
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">


	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			swal("Sorry", "Wrong Username or Password ", "error");
		} else if (status == "invalidEmail") {
			swal("Sorry", "Please Enter Your Email ", "error");
		} else if (status == "invalidPassword") {
			swal("Sorry", "Please Enter Your Password ", "error");
		} else if (status == "resetSuccess") {
			swal("Congrats", "Password Reset Successfully ", "success");
		} else if (status == "resetFailed") {
			swal("Sorry", "Password Reset Failed", "error");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
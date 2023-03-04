
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="all_component/login.css">
</head>
<body  >

	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">


	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>

						<c:if test="${not empty succMsg }">
							<h4 class="text-success">${succMsg }</h4>
							<c:remove var="succMsg"></c:remove>
						</c:if>

						<form method="post" action="register" class="register-form"
							id="register-form">

							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Enter Your Name"
									required="required" />
							</div>

							<div class="form-group">
								<label for="qua"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="qua" id="qua"
									placeholder="Enter Your Qualification" required="required" />
							</div>


							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email"
									placeholder="Enter Your Email" required="required" />
							</div>

							<div class="form-group">
								<label for="pwd"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="password" name="pwd" id="pwd"
									placeholder="Enter Your Password" required="required" />
							</div>





							<div class="form-group">
								<input type="radio" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>


							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>


						</form>
					</div>

					<div class="signup-image">
						<figure>
							<img src="img/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>





</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Career Recurit</title>
<%@ include file="all_component/all_css.jsp"%>

</head>
<body style="background-color: #18122B">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>


	<%@ include file="all_component/navbar.jsp"%>
	
								<br>
								<br>
	

	<div class="container-fluid">
		<div class="row-p4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>

							<h5>Edit Profile</h5>

						</div>
													<br>
						

						<form action="update_profile" method="post">

							<input type="hidden" name="id" value="${userobj.id}">

							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describeby="emailHelp" name="name" value="${userobj.name}">
							</div>
							<br>

							<div class="form-group">
								<label>Enter Qualification</label><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describeby="emailHelp" name="qua"
									value="${userobj.qualification}">
							</div>
								<br>
							
							<div class="form-group">
								<label>Enter Email</label><input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describeby="emailHelp" name="email"
									value="${userobj.email}">
							</div>
							<br>
							

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label><input type="password"
									required="required" class="form-control" id="exampleInputEmail"
									aria-describeby="emailHelp" name="ps"
									value="${userobj.password}">
							</div>
							<br>
							
							<button type="submit" class="btn btn-primary budge-pill btn-block" >Update</button>




						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@ include file="all_component/all_css.jsp"%>

<style>
.back-img {
	background: url('img/admin.jpg');
	width: 100%;
	height: 91vh;
	background-repeat: no-repeat;
	backgroung-size: cover;
}
</style>
</head>
<body>

	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>


	<%@ include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">Welcome Admin</h1>
		</div>
	</div>

</body>
</html>
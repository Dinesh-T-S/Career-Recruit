<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.DB.DBConnect" %>
	<%@page import="java.sql.Connection" %>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career Recruit</title>

<%@ include file="all_component/all_css.jsp"%>


<style>
.back-img{
  background: url('img/bg2.png');
  width:100%;
  height:83.5vh;
  background-repeat: no-repeat;
  backgroung-size:cover;
  }
  
</style>


</head>
<body>
	<%@ include file="all_component/navbar.jsp" %>
	
	
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">
				<i class="fa fa-book" aria-hidden="true"></i>Career Recruit 
			</h1>
		</div>
	</div>

	<%@ include file="all_component/footer.jsp" %>


</body>

</html>

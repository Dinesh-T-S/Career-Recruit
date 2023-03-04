<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.DB.DBConnect" %>
<%@page import="com.entity.jobs" %>
<%@page import="java.util.List" %>
<%@page import="com.dao.jobDAO" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career Recurit</title>
<%@ include file="all_component/all_css.jsp"%>

</head>
<body style="background-color:#18122B">

<c:if test="${ empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>


<%@ include file="all_component/navbar.jsp"%>

<div class="container">
	<div class="row">
		<div class="col-md-12"></div>
		
		<h5 class="text-center text-primary text-white">All Jobs</h5>


	<c:if test="${not empty succMsg }">
			<h4 class="text-center text-danger">${succMsg }</h4>
			<c:remove var="succMsg"></c:remove>
		</c:if>


		<div class="card">
			<div class="card-body">

				<form class="form-inline" action="more_view.jsp" method="get">

					<div class="form-group col-md-5 mt-1">
						<h5>Location</h5>
					</div>
					
					<div class="form-group col-md-4 mt-1">
						<h5>Category</h5>
					</div>

					<div class="form-group col-md-5">

						<select name="Loc" class="custom-select"
							id="inlineFormCustomSelectPref">

							<option selected value="lo">Choose...</option>
							<option value="Madurai">Madurai</option>
							<option value="Chennai">Chennai</option>
							<option value="Banglore">Banglore</option>
							<option value="Delhi">Delhi</option>
							<option value="Hydrabad">Hydrabad</option>
						</select>

					</div>
					
					<br>

					<div class="form-group col-md-5">

						<select name="cat" class="custom-select"
							id="inlineFormCustomSelectPref">

							<option value="ca" selected>Choose...</option>
							<option value="IT">IT</option>
							<option value="Developer">Developer</option>
							<option value="Banking">Banking</option>
							<option value="Engineer">Engineer</option>
							<option value="UIUX">UIUX</option>
						</select>

					</div>
					<br>

					<button class="btn btn-success">Submit</button>

				</form>

			</div>
		</div>

		<%
		jobDAO dao = new jobDAO(DBConnect.getConn());
		List<jobs> list = dao.getAllJobsForUser();
		for(jobs j : list){
			
 		%>

		<div class="card mt-2">
			<div class="card-body">
				<div class="text-center text-primary">
					<i class="far fa-clipboard fa-2x"></i>
				</div>

				<h6><%= j.getTitle() %></h6>
				
				<%
 				if(j.getDescription().length() > 0 && j.getDescription().length() < 120){
 				%>
 				<p><%=j.getDescription() %>.
 				</p>
 				<%
 				}else{
 				%>
 				<p><%=j.getDescription().substring(0,120) %>...
 				</p>
 				<%
 				}
 				%>
 				
 				<br>
 				
 				<div class="form-row">
 					<div class="form-group col-md-3">
 						<input type="text" class="form-control-sm"
 						value="Location:<%=j.getLocation() %>" readonly>
 					</div>
 					<br>
 					<div class="form-group col-md-3">
 						<input type="text" class="form-control-sm"
 						value="Category:<%= j.getCategory() %>" readonly>
 					</div>
 				</div>
 				<br>
 				
 				<h6>Publish Date:<%=j.getPdate().toString()%></h6>
 				
 				<div class="text-center">
 					<a href ="one_view.jsp?id=<%=j.getId()%>"
 					class="btn btn-sm bg-success text-white">View More</a>
 				</div>



			</div>
		</div>

<%
}
%>

	</div>
</div>

</body>
</html>
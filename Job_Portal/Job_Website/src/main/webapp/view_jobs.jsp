<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.jobs"%>
<%@page import="com.dao.jobDAO"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin View Jobs</title>
<%@ include file="all_component/all_css.jsp"%>

</head>
<body style="background-color: #18122B;">

<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@ include file="all_component/navbar.jsp"%>

	<div class="container ">
		<div class="row ">
			<div class="col-md-12">

				<h5 class="text-center text-white">All Jobs</h5>

				<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${ succMsg}</div>
					<c:remove var="succMsg" />
				</c:if>

				<%
				jobDAO dao = new jobDAO(DBConnect.getConn());
				List<jobs> list = dao.getAllJobs();
				for (jobs j : list) {
				%>
				<div class="card mt-2 ">
					<div class="card-body">
						<div class="text-center text-primary"></div>
						<i class="far fa-clipboard fa-2x"></i>
					</div>



					<h6><%=j.getTitle()%></h6>
					<p><%=j.getDescription()%></p>
					<br>

					<div class="form-row">
						<div class="form-group col-md-3 ">
							<input type="text" class="form-control form-control-sm"
								value="Location:<%=j.getLocation()%>" readonly>
						</div>

						<br>

						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Category:<%=j.getCategory()%>" readonly>
						</div>

						<br>


						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Status:<%=j.getStatus()%>" readonly>
						</div>

						<br>

					</div>

					<h6>
						Publish Date:<%=j.getPdate()%></h6>

					<div class="text-center">
						<a href="edit_jobs.jsp?id=<%=j.getId()%>"
							class="btn btn-sm bg-success text-white">Edit</a> <a
							href="delete?id=<%=j.getId()%>"
							class="btn btn-sm bg-danger text-white">Delete</a>
					</div>

				</div>

				<%
				}
				%>


			</div>
		</div>
	</div>

</body>
</html>
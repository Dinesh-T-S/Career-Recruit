<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.jobDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Career Recurit</title>
<%@ include file="all_component/all_css.jsp"%>

</head>
<body style="background-color: #ECF2FF">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@ include file="all_component/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<%
				int id = Integer.parseInt(request.getParameter("id"));
				jobDAO dao = new jobDAO(DBConnect.getConn());
				jobs j = dao.getJobById(id);
				%>

				<div class="card-md-5">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>


						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						. <br>

						<div class="form-row">
							<div class="form-group col-md-3">

								<input type="text" class="form-control form-control-sm"
									value="Location: <%=j.getLocation()%>" readonly>
							</div>
							<br>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category: <%=j.getCategory()%>" readonly>
							</div>
						</div>
						<br>


						<h6>
							Publish Date:<%=j.getPdate().toString()%></h6>

					</div>
					
					<div class="text-center">
						<a href="apply.jsp"
							class="btn btn-sm bg-success text-white">Apply Now</a>
					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>
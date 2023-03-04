
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg " style="background-color: #3A1078;" >
	<a class="navbar-brand text-white" href="#">Career Recurit</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto">
			<li class="nav-item active"><a class="nav-link text-white"
				href="#" >Home <span class="sr-only">(current)</span></a></li>


			<c:if test="${userobj.role eq 'admin'}">
				<li class="nav-item"><a class="nav-link text-white"
					href="add_job.jsp"><i class="fa-solid fa-circle-plus"></i> Post
						Job</a></li>

				<li class="nav-item"><a class="nav-link text-white"
					href="view_jobs.jsp"><i class="fa-solid fa-eye"></i> View Job</a></li>
			</c:if>


		</ul>
		
	
    
 
		 
		
		<form class="form-inline my-2 my-lg-0">

			<c:if test="${userobj.role eq 'admin' }">

				<a href="#" class="btn btn-light mr-1"><i
					class="fa-solid fa-user"></i> Admin</a>
				<a href="Logout" class="btn btn-light"> <i
					class="fa fa-sign-in-alt"></i>Logout
				</a>


			</c:if>

			<c:if test="${userobj.role eq 'user' }">

				<a href="#" class="btn btn-light mr-1" data-bs-toggle="modal"
					data-bs-target="#exampleModal"><i class="fa-solid fa-user"></i>
					${userobj.name}</a>
				<a href="Logout" class="btn btn-light"> <i
					class="fa fa-sign-in-alt"></i>Logout
				</a>

			</c:if>


			<c:if test="${empty userobj }">


				<a href="login.jsp" class="btn btn-light mr-1"><i
					class="fa fa-sign-in-alt"></i> Login</a>
				<a href="registration.jsp" class="btn btn-light"><i
					class="fa-solid fa-user"></i> Signup</a>

			</c:if>


		</form>

	</div>
</nav>




<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Profile</h1>

				<button type="button" class="close" data-dismiss="modal"
					aria-label="close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-user-circle "></i>
						</div>

						<table class="table">

							<tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name}</th>
								</tr>

								<tr>
									<th scope="row">Qualification</th>
									<th>${userobj.qualification}</th>
								</tr>

								<tr>
									<th scope="row">Email</th>
									<th>${userobj.email}</th>
								</tr>

							</tbody>

						</table>

					</div>
				</div>



			</div>

			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
				<a href="edit_Profile.jsp" class="btn btn-primary">Edit</a>
			</div>

		</div>
	</div>
</div>



























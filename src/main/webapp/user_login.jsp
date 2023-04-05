<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Page</title>
<%@include file="component/allcss2.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

/* Add this style to move the login form below the navbar */
.container {
	margin-top: 80px;
}

.btn-create {
	background-color: #6c757d;
	color: #fff;
	border-color: #6c757d;
}
.btn:hover {
    background-color: #138496;
    border-color: #138496;
    color: #fff;
}

.btn-create:hover {
	background-color: #5a6268;
	border-color: #545b62;
}
</style>
</head>
<body>
	<%@include file="component/navbar2.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>

						<div class="text-center pt-4">
							<p class="fs-6">Don't have an account? <a href="signup.jsp" class="text-decoration-none">Create one</a></p>
							<p class="fs-6">Admin site ? <a href="admin_login.jsp" class="text-decoration-none">here</a></p>
							<a href="doctor_login.jsp" class="btn btn-create text-white col-md-12">I am a Doctor</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

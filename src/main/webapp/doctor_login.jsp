<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login Page</title>
<%@include file="component/allcss2.jsp"%>
<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.container {
    margin-top: 80px;
}

.form-control {
    padding: 8px;
    background-color: #f2f2f2;
    border-radius: 4px;
    border: none;
}

.form-control:hover,
.form-control:focus {
    box-shadow: 0 0 4px #bfbfbf;
}

.btn {
    background-color: #17a2b8;
    border-color: #17a2b8;
    color: #fff;
}

.btn:hover {
    background-color: #138496;
    border-color: #138496;
    color: #fff;
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
						<p class="fs-4 text-center">Doctor Login</p>
						
					<c:if test="${not empty succMsg }">
							<p class="text-center text-success fs-3">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						
						<form action="doctorLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn  text-white col-md-12">Login</button>
						</form>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

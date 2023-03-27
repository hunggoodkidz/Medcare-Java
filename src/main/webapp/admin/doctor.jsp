<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnector"%>
<%@page import="com.dao.SpecialistDAO"%>
<%@page import="com.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 ">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Thêm Bác Sĩ</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<form action="../addDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Họ Tên</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Ngày Sinh</label> <input type="date"
									required name="birthday" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Bằng cấp</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Chuyên Khoa</label> <select name="specialist"
									required class="form-control">
									<option>--select--</option>

									<%
									SpecialistDAO dao = new SpecialistDAO(DBConnector.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Số Điện Thoại</label> <input type="text"
									required name="phone" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
			
			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class ="fs-3 text-center">Thông tin bác sĩ</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Họ tên </th>
									<th scope="col">Ngày sinh </th>
									<th scope="col">Bằng cấp </th>
									<th scope="col">Chuyên khoa </th>
									<th scope="col">Email </th>
									<th scope="col">Số điện thoại </th>
									<th scope="col">Action </th>
								</tr>
							</thead>
							<tbody>
								<%
									DoctorDAO dao2 = new DoctorDAO(DBConnector.getConn());
									List<Doctor> list2 = dao2.getAllDoctor();
									for(Doctor d:list2)
									{%>
									<tr>
										<td><%=d.getFullName() %></td> 
										<td><%=d.getBirthday() %></td> 
										<td><%=d.getQualification() %></td> 
										<td><%=d.getSpecialist() %></td> 
										<td><%=d.getEmail() %></td> 
										<td><%=d.getPhone() %></td> 
										<td>
										<a href="edit_doctor.jsp?id=<%=d.getId()%>" 
										class="btn btn-sm btn-primary">Edit</a>
										<a href="#" class="btn btn-sm btn-danger">Delete</a>
										
										</td> 
									</tr>
									<% }
								%>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>

			
		</div>
	</div>
</body>
</html>
<%@page import="com.db.DBConnector"%>
<%@page import="com.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin Panel</title>
  <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="css/helper.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
</head>

<body class="fix-header">

<%@include file="../component/navbaradmin.jsp"%>
  <%@include file="../component/sidebar.jsp"%>

  <div class="page-wrapper">


      <%
		DoctorDAO dao = new DoctorDAO(DBConnector.getConn());
		%>

    <div class="container-fluid">
      <div class="col-lg-12">
        <div class="card card-outline-primary">
          <div class="card-header">
            <h4 class="m-b-0 text-white">Admin Dashboard</h4>
          </div>
          <div class="row">

            <div class="col-md-3">
              <div class="card p-30">
                <div class="media">
                  <div class="media-left meida media-middle">
                    <span><i class="fa fa-user-md fa-3x "></i></span>
                  </div>
                  <div class="media-body media-text-right">
                    <h2>Doctor <br><%=dao.countDoctor()%></h2>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3">
              <div class="card p-30">
                <div class="media">
                  <div class="media-left meida media-middle">
                    <span><i class="fa fa-users f-s-40" aria-hidden="true"></i></span>
                  </div>
                  <div class="media-body media-text-right">
                    <h2>User <br><%=dao.countUSer()%> </h2>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3">
              <div class="card p-30">
                <div class="media">
                  <div class="media-left meida media-middle">
                    <span><i class="fa fa-calendar f-s-40"></i></span>
                  </div>
                  <div class="media-body media-text-right">
                    <h2>Appointment <br><%=dao.countAppointment()%></h2>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-3">
              <div class="card p-30">
                <div class="media">
                  <div class="media-left meida media-middle">
                    <span><i class="fa fa-calendar f-s-40"></i></span>
                  </div>
                  <div class="media-body media-text-right">
                    <h2>Specialist <br><%=dao.countSpecialist()%></h2>
                  </div>
                </div>
              </div>
            </div>


          </div>
        </div>
      </div>
    </div>

    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.slimscroll.js"></script>
    <script src="js/sidebarmenu.js"></script>
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="js/custom.min.js"></script>

</body>

</html>
<?php
}
?>
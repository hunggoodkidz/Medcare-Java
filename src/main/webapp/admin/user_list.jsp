<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnector"%>
<%@page import="com.dao.SpecialistDAO"%>
<%@page import="com.dao.DoctorDAO"%>
<%@ page import="com.dao.UserDAO" %>
<%@ page import="com.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Medcare - Hospital Management System</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/helper.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
    <!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="fix-header fix-sidebar">
<%@include file="../component/navbaradmin.jsp"%>
<%@include file="../component/sidebar.jsp"%>


<!-- End Left Sidebar  -->
<!-- Page wrapper  -->
<div class="page-wrapper">
    <!-- Bread crumb -->
    <c:if test="${not empty errorMsg}">
        <p class="fs-3 text-center text-danger">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
    </c:if>
    <c:if test="${not empty succMsg}">
        <div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
        <c:remove var="succMsg" scope="session" />
    </c:if>
    <!-- End Bread crumb -->
    <!-- Container fluid  -->
    <div class="container-fluid">
        <!-- Start Page Content -->
        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">User Account Information List</h4>
                        <h6 class="card-subtitle">Export data to Copy, CSV, Excel, PDF & Print</h6>

                        <div class="table-responsive m-t-40">
                            <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                <thead >
                                <tr>
                                    <th>Full name</th>
                                    <th>Email</th>
                                    <th>Password</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    UserDAO dao2 = new UserDAO(DBConnector.getConn());
                                    List<User> list2 = dao2.getAllUser();
                                    for(User d : list2)
                                    {%>
                                <tr>
                                    <td><%=d.getFullName() %></td>
                                    <td><%=d.getEmail() %></td>
                                    <td>
                                        <a href="update_user.jsp?id=<%=d.getId()%>"
                                           class="btn btn-sm btn-primary">Edit</a>
                                        <a href="../deleteUser?id=<%=d.getId()%>" class="btn btn-sm btn-danger">Delete</a>

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
    </div>
</div>
</div>
<!-- End PAge Content -->
</div>
<!-- End Container fluid  -->
<!-- footer -->
<footer class="footer"> © 2023 - Team Pixel </footer>
<!-- End footer -->
</div>
<!-- End Page wrapper  -->
</div>
<!-- End Wrapper -->
<!-- All Jquery -->
<script src="js/lib/jquery/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="js/lib/bootstrap/js/popper.min.js"></script>
<script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
<!-- slimscrollbar scrollbar JavaScript -->
<script src="js/jquery.slimscroll.js"></script>
<!--Menu sidebar -->
<script src="js/sidebarmenu.js"></script>
<!--stickey kit -->
<script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
<!--Custom JavaScript -->
<script src="js/custom.min.js"></script>


<script src="js/lib/datatables/datatables.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
<script src="js/lib/datatables/datatables-init.js"></script>
</body>

</html>